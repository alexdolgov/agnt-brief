# Agentic Audit Brief: USDD

## Project Overview

- Project: USDD (`usdd`)
- Website: [https://usdd.io/](https://usdd.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.972Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc, ethereum
- Contract surface: 73 unique implementations (73 raw deployments)
- DeFi Llama TVL: $1,296,039,914.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 73 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (dsauth, dsauthevents). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 73; live-surface contracts included: 73 (73 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 26/72 (36.1%)
- Deployed-live implementations: 73 of 73 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 26/73
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 73
- Raw deployments: 73
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 26 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 36.1% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 26 | 35.6% | 2025-10 |
| REP | Tier 2 | 4 | 5.5% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuthGemJoin | unknown | bsc | n/a | [`0x062a73...edf000`](./contracts/bsc-56/0x062a738465f30ebe6dd06cfad3256ba783edf000/) | ✅ Audited |
| AuthGemJoin5 | unknown | ethereum | n/a | [`0x9a7e1b...d6f519`](./contracts/ethereum-1/0x9a7e1b324060db7342aea08c0dc56f55ced6f519/) | ✅ Audited |
| Dog | unknown | bsc | n/a | [`0x6badab...96280b`](./contracts/bsc-56/0x6badab4336b17e8d0839fd0c046e21b41196280b/) | ✅ Audited |
| DSPause | unknown | bsc | n/a | [`0xc081f7...3c172e`](./contracts/bsc-56/0xc081f712e217672374a9c3db708c6f6c183c172e/) | ✅ Audited |
| DSPauseProxy | unknown | bsc | n/a | [`0xdd5f51...c732dc`](./contracts/bsc-56/0xdd5f51dc0d31823db86df41d46d037bc94c732dc/) | ✅ Audited |
| DssCdpManager | unknown | bsc | n/a | [`0xa41094...c9ba09`](./contracts/bsc-56/0xa4109496a660ebc8d74de991ac3b04c136c9ba09/) | ✅ Audited |
| DssDeploy | unknown | bsc | n/a | [`0x7e8dc4...33ceab`](./contracts/bsc-56/0x7e8dc4aa04b77fd294f0eb3bef5a6b424733ceab/) | ✅ Audited |
| DssProxyActions | unknown | bsc | n/a | [`0x777684...6bcb25`](./contracts/bsc-56/0x777684f6425d095e9166f5f694f50e48a16bcb25/) | ✅ Audited |
| End | unknown | bsc | n/a | [`0x336694...21f6f2`](./contracts/bsc-56/0x3366948fccf56152ad95d914072a80006b21f6f2/) | ✅ Audited |
| EndFab | unknown | bsc | n/a | [`0xa328c1...312e13`](./contracts/bsc-56/0xa328c1a1bd701c70cd1336bca932dda7eb312e13/) | ✅ Audited |
| ESM | unknown | ethereum | n/a | [`0xe4089b...698f55`](./contracts/ethereum-1/0xe4089b868f111ffaf9717d6df8d2c2fe6e698f55/) | ✅ Audited |
| GetCdps | unknown | bsc | n/a | [`0x3a0828...0ea201`](./contracts/bsc-56/0x3a0828e02ff12c2b1bc48f358b5474248c0ea201/) | ✅ Audited |
| GovActionsProxy | unknown | bsc | n/a | [`0x2662e8...29e60f`](./contracts/bsc-56/0x2662e860ea672e4d31df3438114c48511229e60f/) | ✅ Audited |
| Jug | unknown | bsc | n/a | [`0x12a2a2...618e0b`](./contracts/bsc-56/0x12a2a264d6980fb22e5ebb090002bd8f5e618e0b/) | ✅ Audited |
| MedianFab | unknown | bsc | n/a | [`0x0e16a3...c9dd21`](./contracts/bsc-56/0x0e16a31eefbcc94665d6aaca3b7267c6cfc9dd21/) | ✅ Audited |
| OsmMom | unknown | ethereum | n/a | [`0x095d69...bdba75`](./contracts/ethereum-1/0x095d691ac0eade4e3328dffbc1ea422fb6bdba75/) | ✅ Audited |
| ProxyRegistry | unknown | bsc | n/a | [`0x0144fc...41ba73`](./contracts/bsc-56/0x0144fcce201dc3957fcf75269c10c21cca41ba73/) | ✅ Audited |
| ProxyRegistryFab | unknown | bsc | n/a | [`0x2c9d4a...429467`](./contracts/bsc-56/0x2c9d4a688789e64a4889a4bef143481999429467/) | ✅ Audited |
| SavingsUsdd | unknown | bsc | n/a | [`0x8ba9da...48a82d`](./contracts/bsc-56/0x8ba9da757d1d66c58b1ae7e2ed6c04087348a82d/) | ✅ Audited |
| Usdd | unknown | bsc | n/a | [`0x45e51b...5d66ba`](./contracts/bsc-56/0x45e51bc23d592eb2dba86da3985299f7895d66ba/) | ✅ Audited |
| UsddJoinFab | unknown | bsc | n/a | [`0x98e35b...de7201`](./contracts/bsc-56/0x98e35ba98db37a3353165203a23859ed83de7201/) | ✅ Audited |
| UsddPsm | unknown | ethereum | n/a | [`0x12d035...7a3b93`](./contracts/ethereum-1/0x12d0351f68035a41d13fc8324562e2d51b7a3b93/) | ✅ Audited |
| Vat | unknown | ethereum | n/a | [`0xff77f6...32097f`](./contracts/ethereum-1/0xff77f6209239deb2c076179499f2346b0032097f/) | ✅ Audited |
| VatFab | unknown | bsc | n/a | [`0x5e32e1...cf1d22`](./contracts/bsc-56/0x5e32e1c0cea2af712255bafc14a539fa69cf1d22/) | ✅ Audited |
| Vow | unknown | bsc | n/a | [`0x1c9a9d...11c5b7`](./contracts/bsc-56/0x1c9a9d6ee4b5bffdacdad6cfb396a337f311c5b7/) | ✅ Audited |
| VowFab | unknown | bsc | n/a | [`0x2c3d7e...b9e140`](./contracts/bsc-56/0x2c3d7e13e05521a6b0d613cd9d3da22b38b9e140/) | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuthGemJoin7 | unknown | ethereum | n/a | [`0x217e42...1760a3`](./contracts/ethereum-1/0x217e42ceb2eae9ecb788fdf0e31c806c531760a3/) | ⚠️ Unaudited |
| CalcFab | unknown | ethereum | n/a | [`0x29f8fe...45445d`](./contracts/ethereum-1/0x29f8fe56fee5950698a888fe9b754e970b45445d/) | ⚠️ Unaudited |
| ChainLog | unknown | bsc | n/a | [`0x2007a3...2f17bd`](./contracts/bsc-56/0x2007a37dc25c58ae373de3b0d9e9ae231a2f17bd/) | ⚠️ Unaudited |
| ClipFab | unknown | bsc | n/a | [`0x48aba8...3824c0`](./contracts/bsc-56/0x48aba8ff7cba6f0140a259e405be1b0d643824c0/) | ⚠️ Unaudited |
| Clipper | unknown | bsc | n/a | [`0x74a12a...45ac6f`](./contracts/bsc-56/0x74a12a0e8b1127f75372880b7c0aeb5fe045ac6f/) | ⚠️ Unaudited |
| DogFab | unknown | ethereum | n/a | [`0x0b03e0...306c54`](./contracts/ethereum-1/0x0b03e0889522752f5cde1dc195c00eff01306c54/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x2fa68e...aa3e13`](./contracts/ethereum-1/0x2fa68ec89fc0eb83b2ade87bcdc02b9c32aa3e13/) | ⚠️ Unaudited |
| DSValue | unknown | ethereum | n/a | [`0x477930...ff70c5`](./contracts/ethereum-1/0x477930bedb876066fc9a7e1e4ab4fea5ebff70c5/) | ⚠️ Unaudited |
| ESMFab | unknown | ethereum | n/a | [`0xa84bda...fd8211`](./contracts/ethereum-1/0xa84bda768907f07a37ccfae20b2818604afd8211/) | ⚠️ Unaudited |
| ETHASpellBeta | unknown | ethereum | n/a | [`0xd3df89...6ee28e`](./contracts/ethereum-1/0xd3df89c4b1dde13ebab56b5bcec103a3036ee28e/) | ⚠️ Unaudited |
| ETHBSpellBeta | unknown | ethereum | n/a | [`0xb0e57a...6a6be2`](./contracts/ethereum-1/0xb0e57aef623e4d4751fac3c9a4481bd9d06a6be2/) | ⚠️ Unaudited |
| ETHCSpellBeta | unknown | ethereum | n/a | [`0xf4707e...4e70a8`](./contracts/ethereum-1/0xf4707e3aaf541d861532eaa20ed12616244e70a8/) | ⚠️ Unaudited |
| FlapFab | unknown | ethereum | n/a | [`0x7900dd...b7b7e9`](./contracts/ethereum-1/0x7900dd920f64285c4078d5d28864a35fa4b7b7e9/) | ⚠️ Unaudited |
| Flapper | unknown | ethereum | n/a | [`0x0b4adb...f71b03`](./contracts/ethereum-1/0x0b4adb8d896520eb3fd4789b73463614dcf71b03/) | ⚠️ Unaudited |
| FlopFab | unknown | ethereum | n/a | [`0x6acd09...200e8d`](./contracts/ethereum-1/0x6acd09f4a444bce4c20f59eba78cfe32a1200e8d/) | ⚠️ Unaudited |
| Flopper | unknown | bsc | n/a | [`0xd6bd48...1d7de0`](./contracts/bsc-56/0xd6bd489dedf05dbccb680304b3af2df73d1d7de0/) | ⚠️ Unaudited |
| GemJoin5Fab | unknown | ethereum | n/a | [`0xb6b6df...4cc523`](./contracts/ethereum-1/0xb6b6df5ad16fb18acf4427b9c3480d38554cc523/) | ⚠️ Unaudited |
| GemJoinFab | unknown | ethereum | n/a | [`0x683872...bb4b9c`](./contracts/ethereum-1/0x68387214e07b8d68ddee57b1839e3a63bbbb4b9c/) | ⚠️ Unaudited |
| Jar | unknown | ethereum | n/a | [`0x92b179...1abff0`](./contracts/ethereum-1/0x92b179938ed878b59f714e63c430d012251abff0/) | ⚠️ Unaudited |
| JugFab | unknown | ethereum | n/a | [`0xc98369...9845c6`](./contracts/ethereum-1/0xc98369b520a03badbe9868f02820daeeab9845c6/) | ⚠️ Unaudited |
| MedianWbtcFab | unknown | ethereum | n/a | [`0xff5224...dbcc20`](./contracts/ethereum-1/0xff5224e53e7f37409a6d079244de563fb2dbcc20/) | ⚠️ Unaudited |
| OracleFab | unknown | ethereum | n/a | [`0xb75aaf...a955e0`](./contracts/ethereum-1/0xb75aafa8ba8c3026b93df5696e4adb5f9ba955e0/) | ⚠️ Unaudited |
| OracleWbtcFab | unknown | ethereum | n/a | [`0x0ad81b...b07b0b`](./contracts/ethereum-1/0x0ad81b3c387278b7b1f9a62347df086a1bb07b0b/) | ⚠️ Unaudited |
| OsmFab | unknown | ethereum | n/a | [`0x2f19e8...b83626`](./contracts/ethereum-1/0x2f19e8c55694bec4b1f62fdb3e718c53beb83626/) | ⚠️ Unaudited |
| PauseFab | unknown | ethereum | n/a | [`0x0f5193...f24113`](./contracts/ethereum-1/0x0f51939e71dd972a0ed441966cd8f8fad0f24113/) | ⚠️ Unaudited |
| PotFab | unknown | ethereum | n/a | [`0x7c17c5...eb14d6`](./contracts/ethereum-1/0x7c17c524f67e6d080cd4df539486539181eb14d6/) | ⚠️ Unaudited |
| PsmQuoter | unknown | bsc | n/a | [`0x42d451...7342c9`](./contracts/bsc-56/0x42d451a84eea3dba29fae4a12ea52bfd187342c9/) | ⚠️ Unaudited |
| ReplaceFlopSpell | unknown | bsc | n/a | [`0x0612e3...a0a0d6`](./contracts/bsc-56/0x0612e3ff0cfe865120ea8d071d41e1e858a0a0d6/) | ⚠️ Unaudited |
| RwaEthSpellSA001 | unknown | bsc | n/a | [`0xaee4e6...4e8bfa`](./contracts/bsc-56/0xaee4e628290a8c7cd1cea75705e943f40a4e8bfa/) | ⚠️ Unaudited |
| RwaEthSpellSA002 | unknown | ethereum | n/a | [`0x3f4b84...7a5d81`](./contracts/ethereum-1/0x3f4b84e65b3528ae14d8881abdaed131f97a5d81/) | ⚠️ Unaudited |
| RwaJar | unknown | bsc | n/a | [`0x035031...e5e0ad`](./contracts/bsc-56/0x03503147b762017904b10d96f10e194550e5e0ad/) | ⚠️ Unaudited |
| RwaLiquidationOracle | unknown | ethereum | n/a | [`0x6061a3...3a2984`](./contracts/ethereum-1/0x6061a3691c6f5051c9fca11b859d786e663a2984/) | ⚠️ Unaudited |
| RwaSwapInputConduit | unknown | ethereum | n/a | [`0x015632...50bfc8`](./contracts/ethereum-1/0x01563254ced149e63982fb8799757c314050bfc8/) | ⚠️ Unaudited |
| RwaSwapOutputConduit | unknown | bsc | n/a | [`0x458b8f...b557a3`](./contracts/bsc-56/0x458b8fa44a868f87a4fa7b4c6efac3af4eb557a3/) | ⚠️ Unaudited |
| RwaTokenFactory | unknown | bsc | n/a | [`0x1b76cf...df530d`](./contracts/bsc-56/0x1b76cf683c0a381bd6f591c982c7d28972df530d/) | ⚠️ Unaudited |
| RwaUrn2 | unknown | ethereum | n/a | [`0x5bf0c2...481407`](./contracts/ethereum-1/0x5bf0c2de6ce7114efdb5a64e38fef3c43a481407/) | ⚠️ Unaudited |
| RwaUrnCloseHelper | unknown | bsc | n/a | [`0x6749b1...05ea7d`](./contracts/bsc-56/0x6749b19e421486a725c2efc54c0220563d05ea7d/) | ⚠️ Unaudited |
| SpotFab | unknown | ethereum | n/a | [`0x19ba61...553599`](./contracts/ethereum-1/0x19ba61ab898c15c055751c6b4c79dbc652553599/) | ⚠️ Unaudited |
| Spotter | unknown | ethereum | n/a | [`0x8c4c75...13c6b0`](./contracts/ethereum-1/0x8c4c758152da3e04b95b5eaca75585d79013c6b0/) | ⚠️ Unaudited |
| StairstepExponentialDecrease | unknown | bsc | n/a | [`0x1975fb...0f6d02`](./contracts/bsc-56/0x1975fb5fdb0810972df1f22de329c9bafe0f6d02/) | ⚠️ Unaudited |
| UsddFab | unknown | ethereum | n/a | [`0x123530...f057bc`](./contracts/ethereum-1/0x123530c33913f826ed178102d22c9cbaa3f057bc/) | ⚠️ Unaudited |
| UsddJoin | unknown | bsc | n/a | [`0x6b0003...e7edac`](./contracts/bsc-56/0x6b00039d76795fd59baf17e0c9c6d87011e7edac/) | ⚠️ Unaudited |
| UsddPsm7 | unknown | ethereum | n/a | [`0xce3554...5a2897`](./contracts/ethereum-1/0xce355440c00014a229bbec030a2b8f8eb45a2897/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x0eef30...0666c0`](./contracts/ethereum-1/0x0eef30749f8b982f5a8277b013114015460666c0/) | ⚠️ Unaudited |
| WBTCASpellBeta | unknown | ethereum | n/a | [`0x95b7be...b50c7a`](./contracts/ethereum-1/0x95b7be518db7e7835c6f747f088208e4e2b50c7a/) | ⚠️ Unaudited |
| WBTCBSpellBeta | unknown | ethereum | n/a | [`0x613683...d184d7`](./contracts/ethereum-1/0x613683dc8236ac636809eede355144dc42d184d7/) | ⚠️ Unaudited |
| WBTCCSpellBeta | unknown | ethereum | n/a | [`0x33c76a...53953f`](./contracts/ethereum-1/0x33c76ac74b3ec59220716c74fb2aca96be53953f/) | ⚠️ Unaudited |

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
| [www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts](https://www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-5944c53b08b503266c499836474c7b475dc02093/ChainSecurity_Decentralized_USD_USDD_V2_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2Fgit-blob-5944c53b08b503266c499836474c7b475dc02093%2FChainSecurity_Decentralized_USD_USDD_V2_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | 22 | high |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9/ChainSecurity_Decentralized_USD_PSM_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2Fgit-blob-024e7ab5eb7d55225c5ac46c9a4e80c7e7b67be9%2FChainSecurity_Decentralized_USD_PSM_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2Fgit-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf%2FChainSecurity_Decentralized_USD_Exchange_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/U3HlFYyl6SxtZv0PZrQG/REP-final-20250902T100548Z.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2FU3HlFYyl6SxtZv0PZrQG%2FREP-final-20250902T100548Z.pdf) | REP | Audit | 2025-09 | fresh | Direct | contract_name | 4 | high |
| [spaces/ARwMu8GsAubRHTakjdxU/uploads/1wmLxyUpjIpgT6a3IvJP/ChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf](https://114421464-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FARwMu8GsAubRHTakjdxU%2Fuploads%2F1wmLxyUpjIpgT6a3IvJP%2FChainSecurity_Decentralized_USD_USDD_on_Ethereum_and_BSC_audit.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x217e42...1760a3`](./contracts/ethereum-1/0x217e42ceb2eae9ecb788fdf0e31c806c531760a3/) | AuthGemJoin7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29f8fe...45445d`](./contracts/ethereum-1/0x29f8fe56fee5950698a888fe9b754e970b45445d/) | CalcFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2007a3...2f17bd`](./contracts/bsc-56/0x2007a37dc25c58ae373de3b0d9e9ae231a2f17bd/) | ChainLog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48aba8...3824c0`](./contracts/bsc-56/0x48aba8ff7cba6f0140a259e405be1b0d643824c0/) | ClipFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x74a12a...45ac6f`](./contracts/bsc-56/0x74a12a0e8b1127f75372880b7c0aeb5fe045ac6f/) | Clipper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b03e0...306c54`](./contracts/ethereum-1/0x0b03e0889522752f5cde1dc195c00eff01306c54/) | DogFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x477930...ff70c5`](./contracts/ethereum-1/0x477930bedb876066fc9a7e1e4ab4fea5ebff70c5/) | DSValue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa84bda...fd8211`](./contracts/ethereum-1/0xa84bda768907f07a37ccfae20b2818604afd8211/) | ESMFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3df89...6ee28e`](./contracts/ethereum-1/0xd3df89c4b1dde13ebab56b5bcec103a3036ee28e/) | ETHASpellBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0e57a...6a6be2`](./contracts/ethereum-1/0xb0e57aef623e4d4751fac3c9a4481bd9d06a6be2/) | ETHBSpellBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4707e...4e70a8`](./contracts/ethereum-1/0xf4707e3aaf541d861532eaa20ed12616244e70a8/) | ETHCSpellBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7900dd...b7b7e9`](./contracts/ethereum-1/0x7900dd920f64285c4078d5d28864a35fa4b7b7e9/) | FlapFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4adb...f71b03`](./contracts/ethereum-1/0x0b4adb8d896520eb3fd4789b73463614dcf71b03/) | Flapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6acd09...200e8d`](./contracts/ethereum-1/0x6acd09f4a444bce4c20f59eba78cfe32a1200e8d/) | FlopFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd6bd48...1d7de0`](./contracts/bsc-56/0xd6bd489dedf05dbccb680304b3af2df73d1d7de0/) | Flopper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6b6df...4cc523`](./contracts/ethereum-1/0xb6b6df5ad16fb18acf4427b9c3480d38554cc523/) | GemJoin5Fab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x683872...bb4b9c`](./contracts/ethereum-1/0x68387214e07b8d68ddee57b1839e3a63bbbb4b9c/) | GemJoinFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92b179...1abff0`](./contracts/ethereum-1/0x92b179938ed878b59f714e63c430d012251abff0/) | Jar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc98369...9845c6`](./contracts/ethereum-1/0xc98369b520a03badbe9868f02820daeeab9845c6/) | JugFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff5224...dbcc20`](./contracts/ethereum-1/0xff5224e53e7f37409a6d079244de563fb2dbcc20/) | MedianWbtcFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb75aaf...a955e0`](./contracts/ethereum-1/0xb75aafa8ba8c3026b93df5696e4adb5f9ba955e0/) | OracleFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ad81b...b07b0b`](./contracts/ethereum-1/0x0ad81b3c387278b7b1f9a62347df086a1bb07b0b/) | OracleWbtcFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f19e8...b83626`](./contracts/ethereum-1/0x2f19e8c55694bec4b1f62fdb3e718c53beb83626/) | OsmFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f5193...f24113`](./contracts/ethereum-1/0x0f51939e71dd972a0ed441966cd8f8fad0f24113/) | PauseFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c17c5...eb14d6`](./contracts/ethereum-1/0x7c17c524f67e6d080cd4df539486539181eb14d6/) | PotFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42d451...7342c9`](./contracts/bsc-56/0x42d451a84eea3dba29fae4a12ea52bfd187342c9/) | PsmQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0612e3...a0a0d6`](./contracts/bsc-56/0x0612e3ff0cfe865120ea8d071d41e1e858a0a0d6/) | ReplaceFlopSpell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaee4e6...4e8bfa`](./contracts/bsc-56/0xaee4e628290a8c7cd1cea75705e943f40a4e8bfa/) | RwaEthSpellSA001 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f4b84...7a5d81`](./contracts/ethereum-1/0x3f4b84e65b3528ae14d8881abdaed131f97a5d81/) | RwaEthSpellSA002 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x035031...e5e0ad`](./contracts/bsc-56/0x03503147b762017904b10d96f10e194550e5e0ad/) | RwaJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6061a3...3a2984`](./contracts/ethereum-1/0x6061a3691c6f5051c9fca11b859d786e663a2984/) | RwaLiquidationOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015632...50bfc8`](./contracts/ethereum-1/0x01563254ced149e63982fb8799757c314050bfc8/) | RwaSwapInputConduit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x458b8f...b557a3`](./contracts/bsc-56/0x458b8fa44a868f87a4fa7b4c6efac3af4eb557a3/) | RwaSwapOutputConduit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b76cf...df530d`](./contracts/bsc-56/0x1b76cf683c0a381bd6f591c982c7d28972df530d/) | RwaTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5bf0c2...481407`](./contracts/ethereum-1/0x5bf0c2de6ce7114efdb5a64e38fef3c43a481407/) | RwaUrn2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6749b1...05ea7d`](./contracts/bsc-56/0x6749b19e421486a725c2efc54c0220563d05ea7d/) | RwaUrnCloseHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19ba61...553599`](./contracts/ethereum-1/0x19ba61ab898c15c055751c6b4c79dbc652553599/) | SpotFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c4c75...13c6b0`](./contracts/ethereum-1/0x8c4c758152da3e04b95b5eaca75585d79013c6b0/) | Spotter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1975fb...0f6d02`](./contracts/bsc-56/0x1975fb5fdb0810972df1f22de329c9bafe0f6d02/) | StairstepExponentialDecrease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x123530...f057bc`](./contracts/ethereum-1/0x123530c33913f826ed178102d22c9cbaa3f057bc/) | UsddFab | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b0003...e7edac`](./contracts/bsc-56/0x6b00039d76795fd59baf17e0c9c6d87011e7edac/) | UsddJoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce3554...5a2897`](./contracts/ethereum-1/0xce355440c00014a229bbec030a2b8f8eb45a2897/) | UsddPsm7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eef30...0666c0`](./contracts/ethereum-1/0x0eef30749f8b982f5a8277b013114015460666c0/) | WBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95b7be...b50c7a`](./contracts/ethereum-1/0x95b7be518db7e7835c6f747f088208e4e2b50c7a/) | WBTCASpellBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613683...d184d7`](./contracts/ethereum-1/0x613683dc8236ac636809eede355144dc42d184d7/) | WBTCBSpellBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33c76a...53953f`](./contracts/ethereum-1/0x33c76ac74b3ec59220716c74fb2aca96be53953f/) | WBTCCSpellBeta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=33

Zero-match audit list:

- [21193] www.chainsecurity.com/security-audit/usdd-rwa-smart-contracts
- [21196] spaces/ARwMu8GsAubRHTakjdxU/uploads/git-blob-b6b20bf525cdde2b32cb0e90dca11aa1a5ed84bf/ChainSecurity_Decentralized_USD_Exchange_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
