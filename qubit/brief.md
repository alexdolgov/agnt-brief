# Agentic Audit Brief: Qubit

## Project Overview

- Project: Qubit (`qubit`)
- Website: [https://qbt.fi](https://qbt.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.390Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 64 unique implementations (134 raw deployments)
- DeFi Llama TVL: $14,202.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 27 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (whitelistupgradeable, pausableupgradeable, qmarket). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 249; live-surface contracts included: 134 (89 live, 45 unknown).
- Excluded by liveness: 115 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/19 (100.0%)
- Deployed-live implementations: 19 of 64 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/19
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 64
- Raw deployments: 134
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 13 | 68.4% | 2021-12 |
| PeckShield | Tier 2 | 12 | 63.2% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PriceCalculatorBSC | unknown | bsc | n/a | 6 deployments: bsc [`0x141bc467bbb6cf2b62348eae175cb76b3d9258d0`](./contracts/bsc-56/0x141bc467bbb6cf2b62348eae175cb76b3d9258d0/); bsc `0x32de1c6ae58935bf2517e34fdaa0ef57995d4944`; bsc `0x484764608561b4616c2f250f7a1916c98d7496b4`; bsc `0x7281a3e3c963a15178b56bd9e472fc082563c36a`; bsc `0x79fc1d290aa81338f377f6271c499662d6301e65`; bsc `0xf581a57ca87fb4812f9f57918308438cd4d050da` | ✅ Audited |
| PriceCalculatorBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x20e5e35ba29dc3b540a1aee781d0814d5c77bce6`](./contracts/bsc-56/0x20e5e35ba29dc3b540a1aee781d0814d5c77bce6/); bsc `0x2145547f81ad2bbc318323d4600c32f235537d3c` | ✅ Audited |
| QBridgeHandler | unknown | bsc | n/a | [`0x04590277257dd6e89ce07aa4673833e8d52d1f85`](./contracts/bsc-56/0x04590277257dd6e89ce07aa4673833e8d52d1f85/) | ✅ Audited |
| QDistributor | unknown | bsc | n/a | 11 deployments: bsc [`0x18ef5bc8a509454b5157e3b22c8a1ce4dce219e5`](./contracts/bsc-56/0x18ef5bc8a509454b5157e3b22c8a1ce4dce219e5/); bsc `0x310cae15f01e4971d8e40bb66edeabfed6556bbb`; bsc `0x3310a7a05cfc94476b347c8f50323452a4affff3`; bsc `0x40a5fd7d1e230f212f8dbf6bd934b70ce7b761df`; bsc `0x41f33765c92c96df15d6489dc1b4ce2210c8431f`; bsc `0x5aa60eb74e9c3a4440a2452ff51004e097e8ffdb`; bsc `0x5e44e14146e9a66c11fbdbabf17bb66042843d89`; bsc `0x6dea4ae4f9c150aaedf16297d3b25fea6ddb4e3e`; bsc `0xb0406b4c5b37787c77bf335640ffdb12e0ddc5dc`; bsc `0xce5bf3242e487c91263fa115df678f8cdefb93f5`; bsc `0xde218401fc9a2cc86265d592cb720a32fe43f7fd` | ✅ Audited |
| QDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x65f189f49d6310989e82bfa1fcee845acd83350b`](./contracts/bsc-56/0x65f189f49d6310989e82bfa1fcee845acd83350b/); bsc `0x67b806ab830801348ce719e0705cc2f2718117a1` | ✅ Audited |
| QMultiplexer | unknown | bsc | n/a | 5 deployments: bsc [`0x0236207f51f016c47feae1fc81898e41e7b7fc97`](./contracts/bsc-56/0x0236207f51f016c47feae1fc81898e41e7b7fc97/); bsc `0x40af9a11ce01afa32e62e15741ddc252cc30e5d1`; bsc `0x744365a328681fef8f297efee6b3a32380beb75c`; bsc `0xaa3a1f01528db8113d3c3c12ced64b07b4bbdab9`; bsc `0xd820fdfbee07320037a20112fb7071d69d28c6b5` | ✅ Audited |
| QMultiplexer | unknown | bsc | n/a | 2 deployments: bsc [`0x765bbfedb23594634178e41d528bf106a3c1eedc`](./contracts/bsc-56/0x765bbfedb23594634178e41d528bf106a3c1eedc/); bsc `0x85fb415ae8759ee1c3af350c725a9ad361aa1092` | ✅ Audited |
| QMultiplexer | unknown | bsc | n/a | 2 deployments: bsc [`0x9446a809da7c1a42f0eff18ce3aedac49904943b`](./contracts/bsc-56/0x9446a809da7c1a42f0eff18ce3aedac49904943b/); bsc `0xd1de24e5919ce6715e389088345d7765977d0ae2` | ✅ Audited |
| Qore | unknown | bsc | n/a | 16 deployments: bsc [`0x00c604f1760319cc585f386101c5536d33bfe183`](./contracts/bsc-56/0x00c604f1760319cc585f386101c5536d33bfe183/); bsc `0x18f352990e7b2bc8972a8309608529d168ba5e8b`; bsc `0x2e1c7f087f0d893c3f10d0eb5b2be327756f9121`; bsc `0x334a3d00158e1e18378a959e27598d9429b452eb`; bsc `0x365e84c875727b0a428d275f63efbcc55f4caa4c`; bsc `0x3bc898fb690d38ba777523d5ada763ff93c48975`; bsc `0x41e750a0718dfbb2d6a3aa7d478ad0e3c5bc66cc`; bsc `0x8401ee9417e2a713a3fc013b1b8f30e6416b649c`; bsc `0x88c239b73ce71e1a1afd707b9130369c3c36f8f7`; bsc `0x9055fe24e57e3fa46d441ceaa7ab9c09e31eb88e`; bsc `0xa4ba35b38af9448f1d5a260b55fc44f8211b5dfd`; bsc `0xacecec00692f752241e0316e666164755b4ab04c`; bsc `0xb325746b9c2173150ad133903b237009c72faafb`; bsc `0xdd04f40c07d4bef5062216e7c1c862c80d1d430d`; bsc `0xe804db8b9af216f2ca9aa5157ad77aaa10f636ba`; bsc `0xee91aad69027c0bfea233e69a3d26b2455101569` | ✅ Audited |
| Qore | unknown | bsc | n/a | 2 deployments: bsc [`0x4818003367cfc80aae4611ae4f31af78bee31b54`](./contracts/bsc-56/0x4818003367cfc80aae4611ae4f31af78bee31b54/); bsc `0xf70314eb9c7fe7d88e6af5aa7f898b3a162dcd48` | ✅ Audited |
| QPositionManager | unknown | bsc | n/a | 6 deployments: bsc [`0x3bd57f7e499cef4a954c7a0bf4447bfad891ac07`](./contracts/bsc-56/0x3bd57f7e499cef4a954c7a0bf4447bfad891ac07/); bsc `0x6ada17f6e63563407f668c6e3638e9522036107a`; bsc `0x6c6a5cbcc684f04bd97dfadd64d70c0662e93d4b`; bsc `0x7d415aa977acbc67df5054d0660a1a2c39c9cff9`; bsc `0x85efc97598b2956c1b6fa5dfb2a3289ebad6f286`; bsc `0xf449155b58c1acffaa0cb5c3c27885ff509044b1` | ✅ Audited |
| QPositionManager | unknown | bsc | n/a | 2 deployments: bsc [`0x63a3928e4e53de16408ed8340ff54885095ff634`](./contracts/bsc-56/0x63a3928e4e53de16408ed8340ff54885095ff634/); bsc `0xd21d19d8c7ce16916f26e115a5e1b07db4895378` | ✅ Audited |
| QRewardBox | unknown | bsc | n/a | 2 deployments: bsc [`0x6a2444ab1ec15fad6cfd1c7e182a25ec40dfe5fa`](./contracts/bsc-56/0x6a2444ab1ec15fad6cfd1c7e182a25ec40dfe5fa/); bsc `0x70e2320dfbd13ac570789194b1caedc77bd9cf7f` | ✅ Audited |
| QToken | unknown | bsc | n/a | 11 deployments: bsc [`0x0ec672cd9645e6affb6b72c4566184e28a4c46ec`](./contracts/bsc-56/0x0ec672cd9645e6affb6b72c4566184e28a4c46ec/); bsc `0x3a783ace7fd7403584b89fb7979c536b22c2495c`; bsc `0x7d80d724574a1de5d5dfcba4b0abdb7940e9d619`; bsc `0x93b4c48d54f9ccb7ea6032fce0c8bfbd12834307`; bsc `0xc33908b12064538960e9080e32dc8eb98f93dd79`; bsc `0xd0cecf8ca3969178795123d89c3f50c8d2891665`; bsc `0xd274a1b63b96ef7a3e62a988e4fed7beaa029f91`; bsc `0xeaf1da1d139cb5d510f42a28316331e9447be278`; bsc `0xed6f544b495159739676354dcb525a887359681a`; bsc `0xefb6200ff7cb8c7db063677bfdcc5644ecd0807c`; bsc `0xf309025cba96e48205fb00b97520dcc432cf5690` | ✅ Audited |
| QToken | unknown | bsc | n/a | 10 deployments: bsc [`0x1a67a436104d2ab3b685043926330a715d4f0cb5`](./contracts/bsc-56/0x1a67a436104d2ab3b685043926330a715d4f0cb5/); bsc `0x1f6021de57891107f92d46660fb2a2cb946d2bb7`; bsc `0x275ccb2eb9c1839b38779d8147be9711000d9850`; bsc `0x2dfab0eebec0d3deb37c72f3c2ec62116178040e`; bsc `0x837b580db2cfc966777b72cd5bd2205c8db88efa`; bsc `0x86e8e7c985614379947ce09d74cdba7f15ae9095`; bsc `0x872773a7cc30f15ae22b24cacca114e34b84758b`; bsc `0x97fd26e8f185dacb3c7d5e946569a330c6fe7619`; bsc `0xa2a1c4469f7cd1ca1298085aa0c73f69ff668835`; bsc `0xfae4cf4050211b7b7dc309b8944cfe5315231455` | ✅ Audited |
| QubitPresale | unknown | bsc | n/a | 2 deployments: bsc [`0x1771fe35b71bbf5ff7328ef5836e896850709f24`](./contracts/bsc-56/0x1771fe35b71bbf5ff7328ef5836e896850709f24/); bsc `0x3178d862b88d4364792d93232aeba049de8ec3c3` | ✅ Audited |
| QubitPresale | unknown | bsc | n/a | 4 deployments: bsc [`0x9e980e2c702268e6b97400da1ab1ee6ccc238f52`](./contracts/bsc-56/0x9e980e2c702268e6b97400da1ab1ee6ccc238f52/); bsc `0xe2f1b47883e9155a88b6f83d4aea6c380b462108`; bsc `0xe611246cf22d450e2ace23b684fc8063e187110c`; bsc `0xf671d7e1305cb489d3e5239239d16c1d6fd6f769` | ✅ Audited |
| QubitToken | unknown | bsc | n/a | 2 deployments: bsc [`0x17b7163cf1dbd286e262ddc68b553d899b93f526`](./contracts/bsc-56/0x17b7163cf1dbd286e262ddc68b553d899b93f526/); bsc `0xe5fe7f7bb86f704b22280b3f97f0a2712414405e` | ✅ Audited |
| QubitToken | unknown | bsc | n/a | [`0xc08c67d35ccf5221852948c6ce90a661f8c5da0e`](./contracts/bsc-56/0xc08c67d35ccf5221852948c6ce90a661f8c5da0e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | bsc | n/a | `0x07d698f8d3f00688caf5cf17c4b1ca0b17ee247a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x098673cffb249f96c62a419e103ed2720a6a30de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09b18d7e8004e41bb9e1c13ac4c396a0a2ff24df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x105a4b67d0f928c837ec3c3bc255a43e74f995ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x124669399b0387ef32347a93db2e949dde0361d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1270758b83b5ae07d56f8b7dfc8a0bdb308c4c64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14fa6a83a08b763b8a430e1faeafe009d266f280` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1570cdb1ff330ffb4e256f66556287ee11ea22b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17466c6a359018dde50040c6d7367c8e67dcb09f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18244e61cbdc8dd3a88490f50cc3d063d2070ac0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23600aa0e4118b80dab7ec9c9cd1a858abb424d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2534b0dd5e21226c2bf9e6bf6297dfe9b0bd86db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27923a2d237354546c9f3b142d1b976a0b45dfa6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38b921a297e86be72caf69de55d187a87a5b6508` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x419d7ea7059109be0de9ecffacf844c211d01ac4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42a9cc38ed8cabf9fbe1ff4379ed405b5e4f05b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5383f35129a0fe1b5bd1e12a3b9522b9fe00f635` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59595e3a81e18839081e37ea85463522d293a480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e606fc685d6d03f7c3e30a351901d7d25cd9fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64b4e341179307d337f9c45c8dd3736c836d0629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71e7ade388220caee2cc1e5c253d7d69201ce158` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d246c309429af42967e0842f5766df06761c7f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e20edcfd5d37407a8a1e60af697974534da1400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e43e5feca5334ed55ce9101383aedd13b2711ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93765ce14b72dd7cc819386176edd063b8639da1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ebb073ed00f4068a70f05b322a9da7040b9d02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0f054f9237fce957c3f57c212932e4f46cf7a9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6034fb36806f82d19efc2430b37ab72e5623448` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa4eca441810e2903e2fd48da92f9dd187ab5a33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab778fcd9ff2124031fe4744591f20f32537e224` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac237bf4186984391d506b334173a2297e2fda1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac46d27fd51215521f8fc53239689a67f7ce582d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb1bf8a57fb3ae1b08f591717b1b29a512bfc35e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e00ea5d1d0a07f2aca4594208d8e6ec44b9c26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb539a8ba91249e430c5dcb5d9cfe9a292619e02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd65e4cd378913a9ee3ae6ebc3cdb34ccd70c78ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd666940a28f5fc15c3b821621abf4870975c58e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb126581f298a90fb23ca1433ef7791f7bbb8406` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe65a21425d599461646a335679307ecdd620ee62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8faccfd8a177aec289ffa52d71c23d9efd89b2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed61bf26707840f03c1a25472605a062a525eea3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf088b570fc56a35f9a2adc03e4f6b262a96e1038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf751c3d07fb2e0c97dc1ba69fbbe6c6991c57b91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd8153992aa1d12df93fd0c8bcf33fc065b20cea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe781944cf808330b9da3b3233300dbeacac9b78` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Qubit-v1.0.pdf](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/PeckShield-Audit-Report-Qubit-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 69 | high |
| [mound_qubit_audit_rev1.1.pdf](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/mound_qubit_audit_rev1.1.pdf) | yAudit | Audit | 2021-08 | stale | Direct | contract_name | 52 | high |
| [mound_qubit_xChain_audit_rev1.1.pdf](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/mound_qubit_xChain_audit_rev1.1.pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | 40 | high |
| [mound_qubit_xLP_audit_rev1.1.pdf](https://github.com/PancakeBunny-finance/qubit-finance/blob/master/audits/mound_qubit_xLP_audit_rev1.1.pdf) | yAudit | Audit | 2021-12 | stale | Direct | contract_name | 19 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=180

Fork inheritance lineage and inherited audits are included when available.
