# Agentic Audit Brief: T RIZE

## Project Overview

- Project: T RIZE (`t-rize`)
- Website: [https://www.t-rize.io](https://www.t-rize.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.668Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base
- Contract surface: 19 unique implementations (158 raw deployments)
- DeFi Llama TVL: $23,000,000.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 32 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 15 common project-authored base contract(s) (maturitypools, bondvesting, typeandversioninterface). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **KEEP Network** (`keep-network`) in the CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN subsystem.
8 audits inherited from `keep-network`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 308; live-surface contracts included: 158 (151 live, 7 unknown).
- Excluded by liveness: 150 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/12 (33.3%)
- Deployed-live implementations: 12 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/13
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 19
- Raw deployments: 158
- Audits discovered: 9 (1 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 4 | 30.8% | 2025-04 |
| Thesis Defense | Tier 2 | 4 | 30.8% | 2024-04 |
| unknown | Tier 2 | 4 | 30.8% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommitStore | unknown | base | n/a | 44 deployments: base [`0x0ae3c2c7fb789bd05a450cd3075d11f6c2ca4f77`](./contracts/base-8453/0x0ae3c2c7fb789bd05a450cd3075d11f6c2ca4f77/); base `0x16f72c15165f7c9d74c12fdf188e399d4d3724e4`; base `0x174e3cb44b5ed0b85a874b7207a5f3487a2c3472`; base `0x17891fe60a577c5e1e4a4ddd78e642428a56039f`; base `0x1ccd0d49e283789a73e882b0ed4b5b1163675c3c`; base `0x229890d5d246dfa4b5d223d938158cce4c961292`; base `0x275db63edfc4414a2ce04d69403575652ca8c053`; base `0x282741d803842bab33ce9c18e47fcf3bf0411fc2`; base `0x2d3fc7f8b03718157359266ac06af6373afee2f1`; base `0x327e13f54c7871a2416006b33b4822eaad357916`; base `0x36b3ea37c05f961f736bcacae594deb053bc95cf`; base `0x398d2164a3f61353b4619814a31cc74a7741612e`; base `0x3d4d676fea08738a1f1c090cccff16aeb8cc8a9c`; base `0x452750efb32ad2a5a226e988f6f7070ebd59c1f5`; base `0x4cdca702b014bcd5989953fc2d6337b54ef409ea`; base `0x52b5b4f3cc50e38f736f23897f192430e131ccb8`; base `0x565f70396ff82c23d25dd3e57a9a66367dccdf3b`; base `0x575f920e3ef294ea80efb1a4c815ef4b8a67878f`; base `0x5f2ce9e04f6016c9d66f16d386e4e32a0141d411`; base `0x672dbdc3af7ee37436fe101531d33266d85f33c9`; base `0x69a2f5b53df23b48a9a86758105d4613324aa9bc`; base `0x6fbe67969942cc0654f8ee4aa0408d0a91cc4d98`; base `0x700c6715734111a6d1cf414f46d85627b298b5dd`; base `0x725f05c01f5129d04421f1610b93587c1c1010a4`; base `0x7acda49e8b3ec84b80ed9fdd070b0a3a9a5b50e9`; base `0x862642baa2fee1a247bad12913d1667c9e356f20`; base `0x87e77c47388b8fa3a9412014083fd323d93bf6e1`; base `0x932d6d5c6647e6495ed3473ff0f4e31a6056d837`; base `0x96fc2dd483edd2719b9925a0503e080b4689a1d9`; base `0x98f3dd7e6e3eac9606e6e2bca142a4a5332625ce`; base `0x9ae73644ef42c52cfc19184f041fd323fcb512b7`; base `0x9d55227cd0ade01589608f68abcc699f5c598326`; base `0xa8fa8ae51db9661e7d1c21141d967d07110036cb`; base `0xaedbe55633f74a291f0a43daa0fd719615b78363`; base `0xb40659aacb709d1d54c80fc0d38b15705358ce0b`; base `0xb719616e732581b570232dfb13ca49d27667af9f`; base `0xc4a8b1f1f44b2845acc6d952f818f4b168dd62a4`; base `0xccb2222b459aa96543185b1e958e8daff7ef839a`; base `0xcff74ce766b2886479b7fdb15018bb0f21347985`; base `0xd0b13be4c53a6262b47c5ddd36f0257aa714f562`; base `0xdd2f2f9d9fc3aef672979ac5d3b5f0fd2e56b75b`; base `0xde480ad68a54001beb0274f0e2fbab04e002f2d7`; base `0xf97127e77252284ec9d4bc13c247c9d1a99f72b0`; base `0xfb35d36f2775938baa42d3a2e2f3c3c64826be78` | ✅ Audited |
| EVM2EVMOffRamp | unknown | base | n/a | 46 deployments: base [`0x03ee839151e48cee69f5e4e8d28b35ce2eae0446`](./contracts/base-8453/0x03ee839151e48cee69f5e4e8d28b35ce2eae0446/); base `0x0a44db4366385483cbcc9460fa55a75345553286`; base `0x10ab904e9f423c748577b9cf86dbb9f9814f581e`; base `0x12aaadfed6627174702f20cea9eac6c118eea829`; base `0x15f54fdd37ccc8e5a0b64633c95ef8209fd86401`; base `0x18095fbd53184a50c2bb3929a6c62ca328732062`; base `0x1861edddecc78b7d0c4bf5c6f52e9ea327e1b12b`; base `0x25f8fc7a0917ea9bbf72205b18f4f285d2bf1504`; base `0x260ac27e82166e57e887a497bb22f829bc90da7e`; base `0x300977dba924af14e166b31f4926892b1f310661`; base `0x335581943ef47030e52e4fe921d4b72d15a20ab3`; base `0x391b9b016c3bba61f02e7ddd345130415908b9c7`; base `0x45d524b6fe99c005c52c65c578dc0e02d9751083`; base `0x48a51f5d38be630ddd6417ea2d9052b8efc91a18`; base `0x5204a4c69e0551ffd6376c3558eff24f7ecd1af1`; base `0x53ab03801579793b31edd3afc16fc9a25eddfdab`; base `0x61c3f6d72c80a3d1790b213c4cb58c3d4aafccdf`; base `0x62fae5161e830d75738f38de535ac30233233cca`; base `0x639dc04368006544eba7cbc959f3e4361bfeab0d`; base `0x6d1eef3dfb4e8b6df481a52c8657246942ae1da9`; base `0x73a600f80061627dcc68abc4f33063eb51aa6e96`; base `0x74d574d11977fc8d40f8590c419504cbe178adb7`; base `0x75f29f058b31106f99cafdc17c9b26adfcc7b5d7`; base `0x7d38c6363d5e4dfd500a691bc34878b383f58d93`; base `0x7e2b07909827e458ee58b54765b0d1dd674dfe10`; base `0x8345f2ff67e5a65e85dc955de1414832608e00ad`; base `0x8531e63ae9279a1f0d09eba566cd1b092b95f3d5`; base `0x9001d632834faf4c6ce717c5ccad7e0c4b0803c0`; base `0x90e04b0871ba9781dcd869251b7a6a101d08f13d`; base `0x941f0e2e0556acf60fe0f09972f599d9f8916f01`; base `0x98b7a92f4c92b495f0652862eded7b0af1c8dd9a`; base `0x9c095e52145123afc81641dc5760179ec8497653`; base `0x9c32dfe3237d280dc703ee8d42aae379b7bdea73`; base `0xa24d3bc3a59798a57af58f69c89dc1c8afd78f18`; base `0xaa2805a3b6fc019b2f00e00f09b42e7273cd18e9`; base `0xbd3b19d345124166d64f9145b5dec4f2a0d4a404`; base `0xc18ef0e347cab790debb3bb746511983039f72b6`; base `0xca04169671a81e4fb8768cfad46c347ae65371f1`; base `0xd3680ae2d6b8373c01114d20e2109c3dc657913e`; base `0xd4736362efd058b0d48359bad2034e945a5a907c`; base `0xd8fc838d5a50f9b56a1c01bb4b78c9945eec2926`; base `0xe4e567386e8dc83e81763466b1d0ec4e1b97a4d7`; base `0xec0cfe335a4d53dba70cb650ab56eec32788f0bb`; base `0xeff089f24baed3f84918b6ddb265620b97247d9d`; base `0xf50c0d2a8b6db60f1d93e60f03d0413d56153e4f`; base `0xfc30bfe46b11d4e25c6f7492fd064a70fbf18848` | ✅ Audited |
| EVM2EVMOnRamp | unknown | base | n/a | 50 deployments: base [`0x048f2f9961a93bb87cd5b35a01088343aa85c332`](./contracts/base-8453/0x048f2f9961a93bb87cd5b35a01088343aa85c332/); base `0x064f0960ab66f44a5e6c7d2335b19de4bb75aa0d`; base `0x11897f348736c4a85908db38721014038b8423ef`; base `0x1c179c2c67953478966a6b460ab4873585b2f341`; base `0x1e5ca70d1e7a1b26061125738a880bbea42feb21`; base `0x223953db4e0a4c33bac1b17b0df1c22919984c60`; base `0x2c855798e88e6079e838fe9ff381a961cd0d9a12`; base `0x31389d2162b5829ee73ecf5f00299d95534eac52`; base `0x362e6be957c18e268ad91046ca6b47eb09ad98c1`; base `0x3db8bea142e41ca3633890d0e5640f99a895d6a5`; base `0x4be6e0f97ea849ff80773af7a317356e6c646fd7`; base `0x4db62b3121149dd7319f5b9e788f1583d2dfeed3`; base `0x557540566f7120b4671c1b0e89aed1e7b06b6c1c`; base `0x56b30a0dcd8dc87ec08b80fa09502bab801fa78e`; base `0x588990d1a7a54d23aa1c2586cb9d6f053814a285`; base `0x5d519191f0bc6ac6d8497b41113551d79aa65c9c`; base `0x5de068a87f081ea01932769807ca569265e4f622`; base `0x626accbddd73532df1caedb5628fdc40c5f429ba`; base `0x62e8d138c561a7fce23538c464e9336a08abe3f9`; base `0x757dad0b4017fca8e3399b4b3b23e0a6587723d1`; base `0x75d1a886ecc7404321851f6a5b1f936269f044d6`; base `0x7898d0b2edcf7a79969e2868a708109eb4db287e`; base `0x88ced349c02630b073d9879d30f79d6ed56b9268`; base `0x9292f98469f964c50f91aba09a12f91328ea639a`; base `0x98eecf2ee1b4f0c6efed66be6a85c122981d2790`; base `0x9a59832b85217c20b17a990a45bd5d0f3de36266`; base `0x9d0ffa76c7f82c34be313b5bfc6d42a72da8ca69`; base `0xac58a3a17d61b5d8233d73300a694f5d7a20df4b`; base `0xadfe8e513b594c8429904de68c8c79ecd8224c46`; base `0xb1dddde9c1e88df7751f8f2cf18569b13c8af670`; base `0xbc8e6602aea1fe65dc5656b77360ddabbb52f894`; base `0xbd15d0db16369083fb4ad81be0dc50d6b95c5977`; base `0xbd852e81d7425c00da09b2181bec99703b1a27db`; base `0xbe5a9e336d9614024b4fa10d8112671fc9a42d96`; base `0xbe6b55a0d720c4106bfca7bea3908a77ce3c31a2`; base `0xc06dc9fa031f7eaccb08285aaa632730dd700ce5`; base `0xccc32e2794ead73f0a0a514ac1c78d048968ab81`; base `0xcdd0e963e0708a4e936202396983e458cfa4a363`; base `0xd3bde678bb706cf727a512515c254bcf021dd203`; base `0xd44371bfde87f2db3ea6df242091351a06c2e181`; base `0xd531e3424ced77fe86c78f046508125ca6786d26`; base `0xd952feacdd5919cc5e9454b53bf45d4e73dd6457`; base `0xdcfb24aebcb9edfb6746a045ddcae402381f984b`; base `0xdd4fb402d41beb0eeef6cfb1bf445f50bdc8c981`; base `0xdea286dc0e01cb4755650a6cf8d1076b454ea1cb`; base `0xe5fd5a0ec3657ad58e875518e73f6264e00eb754`; base `0xe96563b8a6b4ea245e7fcefaba813104fc889c6c`; base `0xea20366b66c1fd262eb600cb4c721c39ac5d2c68`; base `0xeb50fc6f57aac6bf060a2dfc6479fed592e6e184`; base `0xf2bf69d4a687d2c38de865eabd611648daccad93` | ✅ Audited |
| RMN | unknown | base | n/a | 2 deployments: base [`0x41ec51afa59b762d1c7698154d7f4d91186f93c7`](./contracts/base-8453/0x41ec51afa59b762d1c7698154d7f4d91186f93c7/); base `0x91cb19e7c4ba9b08cf544cdc9143042150b007c3` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessList | unknown | base | n/a | [`0x136a429bee94a5a02240ff74023b46347cae87c9`](./contracts/base-8453/0x136a429bee94a5a02240ff74023b46347cae87c9/) | ⚠️ Unaudited |
| BaseRizeMintBurnPool | unknown | base | n/a | 2 deployments: base [`0xd3736143ab05224c1edce1b632a8dc1404ac8f43`](./contracts/base-8453/0xd3736143ab05224c1edce1b632a8dc1404ac8f43/); base `0xd4d129df31bf9d9ef7ff030adf984f3d028e16a0` | ⚠️ Unaudited |
| GovernanceBonding | unknown | base | n/a | [`0x5a134098bdbeb05da9eac35439c5624547ed26ee`](./contracts/base-8453/0x5a134098bdbeb05da9eac35439c5624547ed26ee/) | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | base | n/a | [`0x6426fd15a8531bf53d13d74e697e0c0d4c873a98`](./contracts/base-8453/0x6426fd15a8531bf53d13d74e697e0c0d4c873a98/) | ⚠️ Unaudited |
| RizeToken | token | base | n/a | [`0x9818b6c09f5ecc843060927e8587c427c7c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | base | n/a | [`0x6f6c373d09c07425baae72317863d7f6bb731e37`](./contracts/base-8453/0x6f6c373d09c07425baae72317863d7f6bb731e37/) | ⚠️ Unaudited |
| UnallocatedVesting | operational_periphery | base | n/a | [`0xad12b1421d14130633700af043445115d16f5f2d`](./contracts/base-8453/0xad12b1421d14130633700af043445115d16f5f2d/) | ⚠️ Unaudited |
| USDCTokenPool | unknown | base | n/a | [`0x55a5786ca51c31623f3efb8bbfcc8df9a4c61ba9`](./contracts/base-8453/0x55a5786ca51c31623f3efb8bbfcc8df9a4c61ba9/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | base | n/a | [`0x9525df984b7062c7c0fb103bc745467396241e7b`](./contracts/base-8453/0x9525df984b7062c7c0fb103bc745467396241e7b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x054ba10739033d4a552113f5c0dce1dff612c53a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x891e30eaa435a4efc9e1405fac14009bc39b829c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa03bbdac472f65d30e3e014e7c303f0248fc00d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa824db559057ffc05f64c73e044ce64dde73cd0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc94cc207e014ed50e7a3061c63d2aa2471ca9c33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0a6141b1005e91f957ae71db67b90752b0155b9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [hashlock.com/audits/t-rize](https://hashlock.com/audits/t-rize) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x136a429bee94a5a02240ff74023b46347cae87c9`](./contracts/base-8453/0x136a429bee94a5a02240ff74023b46347cae87c9/) | AccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3736143ab05224c1edce1b632a8dc1404ac8f43`](./contracts/base-8453/0xd3736143ab05224c1edce1b632a8dc1404ac8f43/) | BaseRizeMintBurnPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5a134098bdbeb05da9eac35439c5624547ed26ee`](./contracts/base-8453/0x5a134098bdbeb05da9eac35439c5624547ed26ee/) | GovernanceBonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6426fd15a8531bf53d13d74e697e0c0d4c873a98`](./contracts/base-8453/0x6426fd15a8531bf53d13d74e697e0c0d4c873a98/) | MerkleAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9818b6c09f5ecc843060927e8587c427c7c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | RizeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f6c373d09c07425baae72317863d7f6bb731e37`](./contracts/base-8453/0x6f6c373d09c07425baae72317863d7f6bb731e37/) | TokenAdminRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xad12b1421d14130633700af043445115d16f5f2d`](./contracts/base-8453/0xad12b1421d14130633700af043445115d16f5f2d/) | UnallocatedVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x55a5786ca51c31623f3efb8bbfcc8df9a4c61ba9`](./contracts/base-8453/0x55a5786ca51c31623f3efb8bbfcc8df9a4c61ba9/) | USDCTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9525df984b7062c7c0fb103bc745467396241e7b`](./contracts/base-8453/0x9525df984b7062c7c0fb103bc745467396241e7b/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=1136

Zero-match audit list:

- [21130] hashlock.com/audits/t-rize

Fork inheritance lineage and inherited audits are included when available.
