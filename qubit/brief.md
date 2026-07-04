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
| PriceCalculatorBSC | unknown | bsc | n/a | 6 deployments: bsc [`0x141bc4...9258d0`](./contracts/bsc-56/0x141bc467bbb6cf2b62348eae175cb76b3d9258d0/); bsc `0x32de1c...5d4944`; bsc `0x484764...7496b4`; bsc `0x7281a3...63c36a`; bsc `0x79fc1d...301e65`; bsc `0xf581a5...d050da` | ✅ Audited |
| PriceCalculatorBSC | unknown | bsc | n/a | 2 deployments: bsc [`0x20e5e3...77bce6`](./contracts/bsc-56/0x20e5e35ba29dc3b540a1aee781d0814d5c77bce6/); bsc `0x214554...537d3c` | ✅ Audited |
| QBridgeHandler | unknown | bsc | n/a | [`0x045902...2d1f85`](./contracts/bsc-56/0x04590277257dd6e89ce07aa4673833e8d52d1f85/) | ✅ Audited |
| QDistributor | unknown | bsc | n/a | 11 deployments: bsc [`0x18ef5b...e219e5`](./contracts/bsc-56/0x18ef5bc8a509454b5157e3b22c8a1ce4dce219e5/); bsc `0x310cae...556bbb`; bsc `0x3310a7...affff3`; bsc `0x40a5fd...b761df`; bsc `0x41f337...c8431f`; bsc `0x5aa60e...e8ffdb`; bsc `0x5e44e1...843d89`; bsc `0x6dea4a...db4e3e`; bsc `0xb0406b...ddc5dc`; bsc `0xce5bf3...fb93f5`; bsc `0xde2184...43f7fd` | ✅ Audited |
| QDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x65f189...83350b`](./contracts/bsc-56/0x65f189f49d6310989e82bfa1fcee845acd83350b/); bsc `0x67b806...8117a1` | ✅ Audited |
| QMultiplexer | unknown | bsc | n/a | 5 deployments: bsc [`0x023620...b7fc97`](./contracts/bsc-56/0x0236207f51f016c47feae1fc81898e41e7b7fc97/); bsc `0x40af9a...30e5d1`; bsc `0x744365...beb75c`; bsc `0xaa3a1f...bbdab9`; bsc `0xd820fd...28c6b5` | ✅ Audited |
| QMultiplexer | unknown | bsc | n/a | 2 deployments: bsc [`0x765bbf...c1eedc`](./contracts/bsc-56/0x765bbfedb23594634178e41d528bf106a3c1eedc/); bsc `0x85fb41...aa1092` | ✅ Audited |
| QMultiplexer | unknown | bsc | n/a | 2 deployments: bsc [`0x9446a8...04943b`](./contracts/bsc-56/0x9446a809da7c1a42f0eff18ce3aedac49904943b/); bsc `0xd1de24...7d0ae2` | ✅ Audited |
| Qore | unknown | bsc | n/a | 16 deployments: bsc [`0x00c604...bfe183`](./contracts/bsc-56/0x00c604f1760319cc585f386101c5536d33bfe183/); bsc `0x18f352...ba5e8b`; bsc `0x2e1c7f...6f9121`; bsc `0x334a3d...b452eb`; bsc `0x365e84...4caa4c`; bsc `0x3bc898...c48975`; bsc `0x41e750...bc66cc`; bsc `0x8401ee...6b649c`; bsc `0x88c239...36f8f7`; bsc `0x9055fe...1eb88e`; bsc `0xa4ba35...1b5dfd`; bsc `0xacecec...4ab04c`; bsc `0xb32574...2faafb`; bsc `0xdd04f4...1d430d`; bsc `0xe804db...f636ba`; bsc `0xee91aa...101569` | ✅ Audited |
| Qore | unknown | bsc | n/a | 2 deployments: bsc [`0x481800...e31b54`](./contracts/bsc-56/0x4818003367cfc80aae4611ae4f31af78bee31b54/); bsc `0xf70314...2dcd48` | ✅ Audited |
| QPositionManager | unknown | bsc | n/a | 6 deployments: bsc [`0x3bd57f...91ac07`](./contracts/bsc-56/0x3bd57f7e499cef4a954c7a0bf4447bfad891ac07/); bsc `0x6ada17...36107a`; bsc `0x6c6a5c...e93d4b`; bsc `0x7d415a...c9cff9`; bsc `0x85efc9...d6f286`; bsc `0xf44915...9044b1` | ✅ Audited |
| QPositionManager | unknown | bsc | n/a | 2 deployments: bsc [`0x63a392...5ff634`](./contracts/bsc-56/0x63a3928e4e53de16408ed8340ff54885095ff634/); bsc `0xd21d19...895378` | ✅ Audited |
| QRewardBox | unknown | bsc | n/a | 2 deployments: bsc [`0x6a2444...dfe5fa`](./contracts/bsc-56/0x6a2444ab1ec15fad6cfd1c7e182a25ec40dfe5fa/); bsc `0x70e232...d9cf7f` | ✅ Audited |
| QToken | unknown | bsc | n/a | 11 deployments: bsc [`0x0ec672...4c46ec`](./contracts/bsc-56/0x0ec672cd9645e6affb6b72c4566184e28a4c46ec/); bsc `0x3a783a...c2495c`; bsc `0x7d80d7...e9d619`; bsc `0x93b4c4...834307`; bsc `0xc33908...93dd79`; bsc `0xd0cecf...891665`; bsc `0xd274a1...029f91`; bsc `0xeaf1da...7be278`; bsc `0xed6f54...59681a`; bsc `0xefb620...d0807c`; bsc `0xf30902...cf5690` | ✅ Audited |
| QToken | unknown | bsc | n/a | 10 deployments: bsc [`0x1a67a4...4f0cb5`](./contracts/bsc-56/0x1a67a436104d2ab3b685043926330a715d4f0cb5/); bsc `0x1f6021...6d2bb7`; bsc `0x275ccb...0d9850`; bsc `0x2dfab0...78040e`; bsc `0x837b58...b88efa`; bsc `0x86e8e7...ae9095`; bsc `0x872773...84758b`; bsc `0x97fd26...fe7619`; bsc `0xa2a1c4...668835`; bsc `0xfae4cf...231455` | ✅ Audited |
| QubitPresale | unknown | bsc | n/a | 2 deployments: bsc [`0x1771fe...709f24`](./contracts/bsc-56/0x1771fe35b71bbf5ff7328ef5836e896850709f24/); bsc `0x3178d8...8ec3c3` | ✅ Audited |
| QubitPresale | unknown | bsc | n/a | 4 deployments: bsc [`0x9e980e...238f52`](./contracts/bsc-56/0x9e980e2c702268e6b97400da1ab1ee6ccc238f52/); bsc `0xe2f1b4...462108`; bsc `0xe61124...87110c`; bsc `0xf671d7...d6f769` | ✅ Audited |
| QubitToken | unknown | bsc | n/a | 2 deployments: bsc [`0x17b716...93f526`](./contracts/bsc-56/0x17b7163cf1dbd286e262ddc68b553d899b93f526/); bsc `0xe5fe7f...14405e` | ✅ Audited |
| QubitToken | unknown | bsc | n/a | [`0xc08c67...c5da0e`](./contracts/bsc-56/0xc08c67d35ccf5221852948c6ce90a661f8c5da0e/) | ✅ Audited |

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
| UnnamedContract | unknown | bsc | n/a | `0x07d698...ee247a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x098673...6a30de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09b18d...ff24df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x105a4b...f995ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x124669...0361d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x127075...8c4c64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14fa6a...66f280` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1570cd...ea22b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17466c...dcb09f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18244e...070ac0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23600a...b424d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2534b0...bd86db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27923a...45dfa6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38b921...5b6508` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x419d7e...d01ac4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42a9cc...4f05b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5383f3...00f635` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59595e...93a480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e606f...cd9fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64b4e3...6d0629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71e7ad...1ce158` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d246c...61c7f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e20ed...da1400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e43e5...2711ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93765c...639da1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ebb0...0b9d02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0f054...cf7a9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6034f...623448` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa4eca...ab5a33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab778f...37e224` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac237b...2fda1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac46d2...ce582d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb1bf8...bfc35e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e00e...4b9c26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb539a...619e02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd65e4c...0c78ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd66694...5c58e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb1265...bb8406` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe65a21...20ee62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8facc...d89b2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed61bf...25eea3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf088b5...6e1038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf751c3...c57b91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd8153...b20cea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe7819...ac9b78` | ❓ Unverified |

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
