# Agentic Audit Brief: Shield

## Project Overview

- Project: Shield (`shield`)
- Website: [https://shieldex.io](https://shieldex.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.092Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 123 unique implementations (123 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 4 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 128; live-surface contracts included: 123 (2 live, 121 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 123 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 123
- Raw deployments: 123
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 50.0% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SLDOption | unknown | bsc | n/a | [`0x9b2801545d58c5167427b2b24188a5cef3dcd6ba`](./contracts/bsc-56/0x9b2801545d58c5167427b2b24188a5cef3dcd6ba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ShieldEX | unknown | bsc | n/a | [`0x1ef6a7e2c966fb7c5403efefde38338b1a95a084`](./contracts/bsc-56/0x1ef6a7e2c966fb7c5403efefde38338b1a95a084/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01d114386e2a73e6acb6085f7b50fc3de516c7b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02988d90059c00cd7850848a5ca16cc338a28877` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x045bb20bf037efec84cc1c70a712ed50ae6a3b39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0832501f04a6cddee2f7b44ae835796c013f4ed8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08648ba3e58b2fc9c7c50780bfbeb7a0605f64b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a59fb7d1508ff7b2ed5346032b3808f358bd2f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bcbd927d24dd8b78fbcb303767ba22b3b619bb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d391273ee4a66a7c455cf678cb463e5dabd6ad1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10045cd41baf9ec8d4ce4e569e19b3f197e74fc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x124b8c2801087df39ccd78184af7a2b7f943fab7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1477d9066fa62f453bff13cfba6939bf8af4f037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14fef4c6e88b02f181f880efb2fcce615aeb61c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17237ced9591ab99e19a4879d39dfe2c545a43d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19d04527cc4f1ea7e473df679e9b1fd171dad3a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a2f454566ae4482ebe17e660ffefd2dd2800700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a8d701048c6c24a72b2842d2c8502c55fb066ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b94014c31d91505a50e619d5d789338c585683b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d13fa94aa6c26122fb8cc7113991b7e3bf852f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eaa8d4e5aabb98da44d50f372bd860203ad0836` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x256c23d77b3122a4edde60023833a7324fd8909c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x257d344d8dfa7360a74049fc508d451f23e90fd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27c1167bb22bc0a659a193e030c5f2ae1748a173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29f7e795f85b081c0dabdfbe93cf912320a30907` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a9f3788bf7103c33f8a8c689354dd2ab21a9d67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b821c287590fb648ef72c821dcec738895068a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c16451916c48408c5e4204d727089c7de49a1dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d8c927b8e81e409ba7877ac6641ddbeff90ea58` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3252f6484b6ee6fa8935dfe54209dd1b62738494` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x363232e6128e9f78c600b0757e39d9c123ba74cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a63d3877a0ab6d645a3425f9d74f12edf93dbea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cdbed1661c5c516f3d4524da4c1525386dc65fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3db7eb86cb0ecdb41f61bf61e25f0abc72cdfba1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x414de259eaf4b6bf8ceff13901f014e9db82c1aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4366b94ffbee751889b9b621377614d71f357001` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44153c483344a3e40dcfe3e479ef335675e1e104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b3f3d431753510b7fc3afd0124846583315006a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ba89d40fe5c3ba4c5aa2d72a20499f675c28dad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f46fa9237d008ecbe0c44a993f6f794fd1b5681` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5150404c61706b6874cf43dc34c9ca88daa5f9e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56e7bcdeb2097e092eabfc37f7a5a15f8602d916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b68369a1c6e2254d4e7378867d85d5eb7c3c9b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c29284dceb2d2aad1648cfc4b5a29b11d6c809e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d45e786c23bfe04fa1129f267578be0ca4fd762` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f6ae5890fb844854431810ecb38e64f60383120` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x620448bd28ccb82e479bcae772137abb2e6ad371` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x647ce282e293c5fb907fe8973f4ec17d999f09f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6891df8de6fd4b20937b8d9d9058646c881036bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69d7af6a3f6bc4b8feecf68906c84862d2f8bfb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69e410efc6581141c397d12aa792269a855fa1b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6af0597ca35d1f8d421f3e58ee21e153cfbf1eb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffbec5d9a642524185031aa0a31da15a1f3463b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x722bab8c798192815f0f953e4b8b29e40ba32ce2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75c5a42f76dcac563e54517134982410a8cd46ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75fc2dce47aaf56cd2e5069df9fa126f8fddc275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b02d473f01008d24612eac6155ef9e2d2b94fde` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ca42338dd4aaa08667ce6c3c0e4128ea9e2437b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d3e934a247ffdf2047c5accdf10fd9c4abffec3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e81d59d9657581f5143bcbfa1303ddfc080260f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x803cfea5b95ba620cd5154782c403f8042eb42a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80611dc2d381d31e137681bb5667ce83bed4003b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82c51a06667ca32b8ef0a0380c9a6423d6b82ae3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x857d4227a0213393e9d29f0b1f9859fbeb0223a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85ddbc4bad6fed0c0be44ffc654a7a29b0d13c34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x860fe56b175c47410c4d763c9f562955d04fb388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x876653e784d3d93ac631b4309135ce6a281efd7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87b627baf6721a590d1b87a0b9def1df758a5afb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87cfa61aaa2f19e9b1e922258cd29bd7250a08c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a2408b95d317064454425a428e4664768deaa2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cf2a8ef9701e3ae3f965385b4dd3eda765e7844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dfd09e9d586afe5572c8fa07715abd5966890f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93de65a553c288d77658c80179a9d7a00cb7b86d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x985993e5eab3cef8b0cacbc8c7356d2464d4d2f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ae66f1cf5c5045eaa1bd4d9a6ae2a63a44edeac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bdcdf6d0f66efe734f23fb8544148524aa2dc59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa13677f693d52959f6ea68da42aec7562843ec02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1c7cd2bd1a064f591c55b2d2af43a00c8ef254e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa51e025fbc102eb5a22b5dd1f46bfba05ede778a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa992d944a3ff02feb026ef279d42df7d777b1668` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab2250f22d495555665d409de7618714b581cfdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab2cc8eba51c9dd60ab9182f9b9e3b1ecbde4400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabb349cc5b279dfe270e3fc3b5b73170594df0aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac16a10aa621f3d848f3675a5954b6b1fad68728` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad46da174d709c297a47ee9641a628f0c58367bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaff68d9f539e36cc87ac979256602a2b217bdc7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb17908c3350035d6d323f55b03517ec6b89e9ed6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2ed378e9b9847536639ec8591656f1e68c9a829` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb52399964f88d64e168faa9778b9552e0f3e3ac0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5379a63b5412beacee41746b44c7dccebc4e587` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb73bfaee23e73871eb57910ad1e5eac641686999` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc093e97b416e947139a028cfc18c233923607796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0b8690abe7b5a16656dd316a20bd843ce62a2b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc15b31e1d576a8dd65b636d629b7b6944fcb1d34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc35f33c883f7b3b3db662137d6ac37e39e3b251d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67f6db4e7d9a33e0f69606d946dde00f1fc458d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7949316fe9ee7743232dca73728612ea1ae8d43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc888ac0938fbe07971b7d4e357f1deb05f24a25a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc98ef4e9217fb9599fc01af0bf0d0ea67529af26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccfb97c9f578d1b3a554def304d57b0c9c7ea160` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd30a4f644eca9f2ab18cf7825e89a9e44318bf0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd32f589e8953c6e1912525f6fc0791587d006206` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd76fdd7d8ea2a97c13b0cb1374669dde091eec0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdad048332ecc923403ace4c8254b32097717ed0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdea2ab02c884fab938aac0b66b16c52138d7db42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe217b196fb7766dc13dd99da73ed7ef2464fe25d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe58b8f75aedde98f6a585787629342a16f61cc62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6e3bda199a914e29d9da67f1fd114caba9a80ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe83890f742125cc542f807339a57206aea361214` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9c6aa3c5c7f29e0d8c305f271f53b885de5d3f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebf4722dec8ed5ad00dcfe0d20f8b5174c67593c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec70721eb4149e262ed0c44eaa4e7fbec16b9ed7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf079000e58747178ba98e90bb259d640128cf9e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf146f76cd1a1b2dcd8cce60e612f91db6e9fba57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3cf3cbfc622a963ea2a93ae6f8531018e666fe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf606e1f749d54d9a5bd392dbd34d554d5841a6f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7bf13b6e8a91970e2a18f46b256edf15485c121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8d56b07e5d09d639adc4831538ad453694ac9d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9690acda4a8ba127c528cda9131aa0cfa17e05f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa4e13efaf2c90d6eaf5033a4f3cb189ee4ef189` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc34f1e683fde619380600994b3e5cb41dbb351b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe06a57a7386f61db46968268f8968e596335957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfee0ba3e99d5125d446f6c162eb1421ba61af735` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Smart Contract Security Audit Report - Shield.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report/Smart%20Contract%20Security%20Audit%20Report%20-%20Shield.pdf) | yAudit | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Shield-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shield-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Shield-v1.0.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Shield-v1.0.1.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [skynet.certik.com/projects/shield-protocol](https://skynet.certik.com/projects/shield-protocol) | CertiK | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Secure3_Shield_SSVault_security_audit_report.pdf](https://github.com/Secure3Audit/Shield_SSVault_Audit_Contest/blob/main/audit_report/Secure3_Shield_SSVault_security_audit_report.pdf) | Secure3 | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Shield_mvault_final_Secure3_Audit_Report.pdf](https://github.com/Secure3Audit/Shield_MVault_Audit_Contest/blob/main/audit_report/Shield_mvault_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1ef6a7e2c966fb7c5403efefde38338b1a95a084`](./contracts/bsc-56/0x1ef6a7e2c966fb7c5403efefde38338b1a95a084/) | ShieldEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 121 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [13829] Smart Contract Security Audit Report - Shield.pdf
- [13830] PeckShield-Audit-Report-Shield-v1.0.pdf
- [13832] skynet.certik.com/projects/shield-protocol
- [13833] Secure3_Shield_SSVault_security_audit_report.pdf
- [13834] Shield_mvault_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
