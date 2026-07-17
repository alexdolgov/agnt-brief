# Agentic Audit Brief: Pangea Swap

## Project Overview

- Project: Pangea Swap (`pangea-swap`)
- Website: [https://pangeaswap.com](https://pangeaswap.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.923Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: chain-1001, chain-31337, klaytn
- Contract surface: 1 unique implementations (200 raw deployments)
- DeFi Llama TVL: $6,349.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 200; live-surface contracts included: 200 (0 live, 200 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 200
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | klaytn | n/a | 200 deployments: chain-1001 `0x0339d5eb6d195ba90b13ed1bceaa97ebd198b106`; chain-1001 `0x06d18f1b8747a4e33aa112c15d4657313f7367a5`; chain-1001 `0x1f7d55f06a6feb2ba06c614b49896547d16c2ca8`; chain-1001 `0x205f1095a77d9ddb8c4e708d11d126781506868e`; chain-1001 `0x2569e9a2da49d7b3ef955d05407ac3ff0479c555`; chain-1001 `0x288c464e86c620ca2cf2ddd91a70f706bac361f4`; chain-1001 `0x2be2c91cca2df52b41a9e42723c46fd029359c95`; chain-1001 `0x3135bb8273107bae6297df80fe0a8bd77a34c7e4`; chain-1001 `0x37754c81eb7632edac7104a51a8be4223a41a628`; chain-1001 `0x3e0c0b0737b57d5e7d6f6b10c0e945383beba82c`; chain-1001 `0x42271971dbf42fbfeaf7f428604a86760300cb5b`; chain-1001 `0x42ae0c408c585d34b09c986a9340bb67064ebdf7`; chain-1001 `0x44e5b92e3aa66026a933da74b0471ad7eaee9471`; chain-1001 `0x480bd347f926dc0ac8d0a551e6f9bf29eb19bcff`; chain-1001 `0x4fa1edfaf1c5850a52b1c620af6f9e29c369a86f`; chain-1001 `0x5385b03d734928735fc80f666f8d05da66fad107`; chain-1001 `0x56a0ef88157e35151223b16e253620e80955f2e2`; chain-1001 `0x6e66d3adfc2902b9e0a46c80d2803642596cc5f6`; chain-1001 `0x71bcb582c41dfb062394dc4dc738856bbb2a5c6c`; chain-1001 `0x7561dbc7b63af7e9ea450c6ed8be47b9c29d64bd`; chain-1001 `0x7b1c9d6b63bcbe44a75043ab2ad243781a19d7c8`; chain-1001 `0x7bac700f57f85e6c09038d1862e81188c57600ae`; chain-1001 `0x7e5f6aae6e148df2f924ef46198b3e773fdb78b2`; chain-1001 `0x899d8ff3d3bd16dbe4eff245bda27ef96c01044b`; chain-1001 `0x8c4efec2ec4807bfbe4e0c37a3f671051836ee12`; chain-1001 `0x925e51d7abb9187d5d1568a16bf357528715c8f2`; chain-1001 `0x9503cefa0aed026c7d580b6707726489864085f1`; chain-1001 `0x9a909d11627d7044aca959c9e97dec9f84582277`; chain-1001 `0x9dbff83b52e584debf5593b6b8b9c6aa3beeb116`; chain-1001 `0xa082395f3724343480637693533e2c8258854cae`; chain-1001 `0xa1c559400fb27673023224a609843b60e674855f`; chain-1001 `0xa617e4b8aecf225d0b532bc9f6e6c4120ebb1df4`; chain-1001 `0xabaf9fed5d9fc75c379f5811de61ed944b537375`; chain-1001 `0xb84f4c616a5134c246f09cc126731c68f8e0f80a`; chain-1001 `0xba01d0ef97955524452c4c796edef4ac569f53e8`; chain-1001 `0xc0c4eb333b202fd20821bc74dd182ce1df8956ee`; chain-1001 `0xc6373f0e72a3ea9fc405af928723c86c244e5e79`; chain-1001 `0xc94ba1b4e441dccc846597e0518fa39b5ef90c3f`; chain-1001 `0xcf8d8433b749c06f5d84d133224dfeeb8db58515`; chain-1001 `0xd0e60040da09c4c30aba6574c785ebd0db9e06dc`; chain-1001 `0xd428f47575092b9dee070f8d56dfa632ad790034`; chain-1001 `0xdea0c43982f01de8c7d73ec4ae608f001af55c35`; chain-1001 `0xe45fdcd3e7f7bbd597feca1ac45c879e6a04f197`; chain-1001 `0xedd00ee204c6db3bd5bb207dd7cc91003309d6db`; chain-1001 `0xf509cbbd39c4593c7fc7c054b20df730a2169e33`; chain-1001 `0xfd461b92b98217c46fb5c8160ac8b114e84251cf`; chain-1001 `0xff8e5bdf54d5ab74d2e56ca0e575348a52b95b3d`; klaytn `0x002a422533ccceea9abf9e56e2a25d72672891bc`; klaytn `0x0165878a594ca255338adfa4d48449f69242eb8f`; klaytn `0x02d9bf2d4f5cea981cb8a8b77a56b498c5da7eb0`; klaytn `0x0339d5eb6d195ba90b13ed1bceaa97ebd198b106`; klaytn `0x09635f643e140090a9a8dcd712ed6285858cebef`; klaytn `0x09d51b85c46fc70e18786350f81011c02e9f4327`; klaytn `0x0b306bf915c4d645ff596e518faf3f9669b97016`; klaytn `0x0dcd1bf9a1b36ce34237eeafef220932846bcd82`; klaytn `0x10cc453ea2d3d8c89efb9edf1df7c237cc9b25da`; klaytn `0x1613beb3b2c4f22ee086b2b38c1476a3ce7f78e8`; klaytn `0x17ac28a29670e637c8a6e1ec32b38fc301303e34`; klaytn `0x185f0e25e0e540b3904a520971ebe914ee76e9b2`; klaytn `0x1a293190fa8d3e61f8236e251afcd8725fa768c1`; klaytn `0x1d246b39fd5018b16270e4374fe5dd2a9870aca6`; klaytn `0x1f7d55f06a6feb2ba06c614b49896547d16c2ca8`; klaytn `0x2279b7a0a67db372996a5fab50d91eaa73d2ebe6`; klaytn `0x25df6a0cb4506305a58e523e556ed1e75b33dcc3`; klaytn `0x27ac25f84526b90560fab73203fea763630c9048`; klaytn `0x29f80e9152cc0e5058574d48f371c0b46a6a4c5d`; klaytn `0x2add2b886ba688d1d49b4d641fbfa97648b15566`; klaytn `0x2be2c91cca2df52b41a9e42723c46fd029359c95`; klaytn `0x322813fd9a801c5507c9de605d63cea4f2ce6c44`; klaytn `0x331617c2a63bdc6cc518fdd899a53f7effc771fa`; klaytn `0x34ec60fd6138110b4258f8fef155a41e37309e9f`; klaytn `0x3aa5ebb10dc797cac828524e59a333d0a371443c`; klaytn `0x3aade2dcd2df6a8cac689ee797591b2913658659`; klaytn `0x3d94b5e3b83cbd52b9616930d33515613adfad67`; klaytn `0x42271971dbf42fbfeaf7f428604a86760300cb5b`; klaytn `0x435f8997db921af9ca7c4ef054e2e64e3ee8617d`; klaytn `0x4a679253410272dd5232b3ff7cf5dbb88f295319`; klaytn `0x4ed7c70f96b99c776995fb64377f0d4ab3b0e1c1`; klaytn `0x50af1d779c2cd50f9472eba6383bf37a0f3a7cac`; klaytn `0x5123f8dc158ab9ad981fb7b12b19289a04582321`; klaytn `0x519f88ae1bab2f89c6ffe6e54141a2804503318e`; klaytn `0x51a0157237599ac1bbfb465dc77f9f96e719cd5a`; klaytn `0x56e4f87d487c50cff4e0bd9f3d63261ce25b398a`; klaytn `0x59b670e9fa9d0a427751af201d676719a970857b`; klaytn `0x5c74bafa8cfd8cb120123d5803b74a2c02c41cf4`; klaytn `0x5d5cc76396742c6e4a7a21ff352e04957eae5304`; klaytn `0x5fbdb2315678afecb367f032d93f642f64180aa3`; klaytn `0x5fc8d32690cc91d4c39d9d3abcbd16989f875707`; klaytn `0x610178da211fef7d417bc0e6fed39f05609ad788`; klaytn `0x67d269191c92caf3cd7723f116c85e6e9bf55933`; klaytn `0x68b1d87f95878fe05b998f19b66f4baba5de1aed`; klaytn `0x69ae78c0eeb320900a720d9dfe24ab9c6d207e79`; klaytn `0x6a0d6cef3f2305e7c8276a473f6d90d0d694e258`; klaytn `0x6c7fc36c3f2792faf12a5ba8aa12379c5d01986d`; klaytn `0x6cc6197fe218e6e008f360b9b22240010e7ba0d9`; klaytn `0x6db1c7a3c18d6649f7654bbdd4f10d4bfb255752`; klaytn `0x6e1832b4791e195939c10c2a00b5a9456e337da2`; klaytn `0x6e62ef5cfa609256d885e128b17cc4c7f26a1be2`; klaytn `0x6e66d3adfc2902b9e0a46c80d2803642596cc5f6`; klaytn `0x743500af9a12854214201516eb58fe97ad020eb4`; klaytn `0x74720ec505f4c0ff2fc1d5dd79c8a1c45e63dba2`; klaytn `0x789f57db00138951a0fb3ec8279a748fa112a315`; klaytn `0x7a2088a1bfc9d81c55368ae168c2c02570cb814f`; klaytn `0x7a6f82431af2fb13f30a3194980ca5b395497ff4`; klaytn `0x7b4a0dccdcae601c61e66c64cfa01ff951e465e5`; klaytn `0x7ee422bb110c136578ef34842f2213fa5ae5f9a8`; klaytn `0x7f91f33c4823dd5188c02377899410614583a558`; klaytn `0x840173570e27732787a16ebc4498f96fb97fb038`; klaytn `0x842c3839f7e0d26fac482064d38b5487bd078f11`; klaytn `0x851356ae760d987e095750cceb3bc6014560891c`; klaytn `0x888b075cd92692761acb649da39988cd73966732`; klaytn `0x899d8ff3d3bd16dbe4eff245bda27ef96c01044b`; klaytn `0x8a791620dd6260079bf849dc5567adc3f2fdc318`; klaytn `0x8d8afb64a854a0f021d410d660ba549b0d8f04ca`; klaytn `0x94134fbfbcf3644eaa795ebf2613e3e039693a73`; klaytn `0x95401dc811bb5740090279ba06cfa8fcf6113778`; klaytn `0x959922be3caee4b8cd9a407cc3ac1c251c2007b1`; klaytn `0x998abeb3e57409262ae5b751f60747921b33613e`; klaytn `0x9a676e781a523b5d0c0e43731313a708cb607508`; klaytn `0x9a9f2ccfde556a7e9ff0848998aa4a0cfd8863ae`; klaytn `0x9db74c5e5b0237037940e395e8e71e4dec2c07ca`; klaytn `0x9e545e3c0baab3e08cdfd552c960a1050f373042`; klaytn `0x9fe46736679d2d9a65f0992f2272de9f3c7fa6e0`; klaytn `0xa082395f3724343480637693533e2c8258854cae`; klaytn `0xa1376f792eae31db79df067040d047015ca44621`; klaytn `0xa1c559400fb27673023224a609843b60e674855f`; klaytn `0xa51c1fc2f0d1a1b8494ed1fe312d7c3a78ed91c0`; klaytn `0xa82ff9afd8f496c3d6ac40e2a0f282e47488cfc9`; klaytn `0xa88955cd70c363a617465cbcf844d1dea22177fe`; klaytn `0xabaf9fed5d9fc75c379f5811de61ed944b537375`; klaytn `0xacc9af149d4e4b75304eb865b3120af152b3652c`; klaytn `0xb49e754228bc716129e63b1a7b0b6cf27299979e`; klaytn `0xb7f8bc63bbcad18155201308c8f3540b07f84f5e`; klaytn `0xba63e82c2c29190c96998ad40b4db580a56e52bf`; klaytn `0xbb7104d6f03b503bd519818037746945e73eec17`; klaytn `0xbc2c322ad20d16993e635d68cdaaec4ea24d382c`; klaytn `0xc3e53f4d16ae77db1c982e75a937b9f60fe63690`; klaytn `0xc5a5c42992decbae36851359345fe25997f5c42d`; klaytn `0xc6e7df5e7b4f2a278906862b61205850344d4e7d`; klaytn `0xc88b22c1824781cba35c73772777b4aaa1558997`; klaytn `0xcf8d8433b749c06f5d84d133224dfeeb8db58515`; klaytn `0xd0a8eb74f8d7ceca05628450ccd096080ac6575f`; klaytn `0xd32aef55e87c8223752fcaedee1b94d363282b96`; klaytn `0xe45fdcd3e7f7bbd597feca1ac45c879e6a04f197`; klaytn `0xe6e340d132b5f46d1e472debcd681b2abc16e57e`; klaytn `0xe7f1725e7734ce288f8367e1bb143e90bb3f0512`; klaytn `0xe80fe14d4c67598a2a8f107f1b95fecc2bb08e7d`; klaytn `0xeb4b1ce03bb947ce23abd1403df7c9b86004178d`; klaytn `0xed52bd01b0608a6b6d4f4e03affce16c1ff19c23`; klaytn `0xedd00ee204c6db3bd5bb207dd7cc91003309d6db`; klaytn `0xf45222db6e853cd26ca5181ab36b5b1bc8461ffb`; klaytn `0xf5059a5d33d5853360d16c683c16e67980206f36`; klaytn `0xfca13dc9e68b6c3f78ff2027d4e5ce8a3ef0bcef`; klaytn `0xff3e7cf0c007f919807b32b30a4a9e7bd7bc4121`; klaytn `0xffa7ca1aeeebbc30c874d32c7e22f052bbea0429`; chain-31337 `0x0165878a594ca255338adfa4d48449f69242eb8f`; chain-31337 `0x09635f643e140090a9a8dcd712ed6285858cebef`; chain-31337 `0x09d51b85c46fc70e18786350f81011c02e9f4327`; chain-31337 `0x0b306bf915c4d645ff596e518faf3f9669b97016`; chain-31337 `0x0dcd1bf9a1b36ce34237eeafef220932846bcd82`; chain-31337 `0x10cc453ea2d3d8c89efb9edf1df7c237cc9b25da`; chain-31337 `0x1613beb3b2c4f22ee086b2b38c1476a3ce7f78e8`; chain-31337 `0x2279b7a0a67db372996a5fab50d91eaa73d2ebe6`; chain-31337 `0x322813fd9a801c5507c9de605d63cea4f2ce6c44`; chain-31337 `0x331617c2a63bdc6cc518fdd899a53f7effc771fa`; chain-31337 `0x3aa5ebb10dc797cac828524e59a333d0a371443c`; chain-31337 `0x3aade2dcd2df6a8cac689ee797591b2913658659`; chain-31337 `0x4a679253410272dd5232b3ff7cf5dbb88f295319`; chain-31337 `0x4ed7c70f96b99c776995fb64377f0d4ab3b0e1c1`; chain-31337 `0x51a0157237599ac1bbfb465dc77f9f96e719cd5a`; chain-31337 `0x56e4f87d487c50cff4e0bd9f3d63261ce25b398a`; chain-31337 `0x59b670e9fa9d0a427751af201d676719a970857b`; chain-31337 `0x5fbdb2315678afecb367f032d93f642f64180aa3`; chain-31337 `0x5fc8d32690cc91d4c39d9d3abcbd16989f875707`; chain-31337 `0x610178da211fef7d417bc0e6fed39f05609ad788`; chain-31337 `0x67d269191c92caf3cd7723f116c85e6e9bf55933`; chain-31337 `0x68b1d87f95878fe05b998f19b66f4baba5de1aed`; chain-31337 `0x7a2088a1bfc9d81c55368ae168c2c02570cb814f`; chain-31337 `0x7b4a0dccdcae601c61e66c64cfa01ff951e465e5`; chain-31337 `0x851356ae760d987e095750cceb3bc6014560891c`; chain-31337 `0x8a791620dd6260079bf849dc5567adc3f2fdc318`; chain-31337 `0x95401dc811bb5740090279ba06cfa8fcf6113778`; chain-31337 `0x959922be3caee4b8cd9a407cc3ac1c251c2007b1`; chain-31337 `0x998abeb3e57409262ae5b751f60747921b33613e`; chain-31337 `0x9a676e781a523b5d0c0e43731313a708cb607508`; chain-31337 `0x9a9f2ccfde556a7e9ff0848998aa4a0cfd8863ae`; chain-31337 `0x9e545e3c0baab3e08cdfd552c960a1050f373042`; chain-31337 `0x9fe46736679d2d9a65f0992f2272de9f3c7fa6e0`; chain-31337 `0xa1376f792eae31db79df067040d047015ca44621`; chain-31337 `0xa51c1fc2f0d1a1b8494ed1fe312d7c3a78ed91c0`; chain-31337 `0xa82ff9afd8f496c3d6ac40e2a0f282e47488cfc9`; chain-31337 `0xb7f8bc63bbcad18155201308c8f3540b07f84f5e`; chain-31337 `0xc3e53f4d16ae77db1c982e75a937b9f60fe63690`; chain-31337 `0xc5a5c42992decbae36851359345fe25997f5c42d`; chain-31337 `0xc6e7df5e7b4f2a278906862b61205850344d4e7d`; chain-31337 `0xe6e340d132b5f46d1e472debcd681b2abc16e57e`; chain-31337 `0xe7f1725e7734ce288f8367e1bb143e90bb3f0512`; chain-31337 `0xf5059a5d33d5853360d16c683c16e67980206f36`; chain-31337 `0xfca13dc9e68b6c3f78ff2027d4e5ce8a3ef0bcef`; chain-31337 `0xffa7ca1aeeebbc30c874d32c7e22f052bbea0429` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[HAECHI AUDIT] Smart Contract Audit Reports for Pangea.pdf](https://github.com/pangea-protocol/pangea-core/blob/main/audits/%5BHAECHI%20AUDIT%5D%20Smart%20Contract%20Audit%20Reports%20for%20Pangea.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [audit.md](https://pangeaswap.gitbook.io/pangeaswap/audit.md) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13659] [HAECHI AUDIT] Smart Contract Audit Reports for Pangea.pdf
- [13660] audit.md

Fork inheritance lineage and inherited audits are included when available.
