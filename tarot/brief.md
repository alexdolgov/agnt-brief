# Agentic Audit Brief: Tarot

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.790Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon
- Contract surface: 51 unique implementations (128 raw deployments)
- DeFi Llama TVL: $953,039.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 53 project-authored contract(s) across 8 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (distributor, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 269; live-surface contracts included: 128 (30 live, 98 unknown).
- Excluded by liveness: 141 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 9 of 51 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 51
- Raw deployments: 128
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV6ERC20 | token | optimism | n/a | [`0x375488f097176507e39b9653b88fdc52cde736bf`](./contracts/optimism-10/0x375488f097176507e39b9653b88fdc52cde736bf/) | ⚠️ Unaudited |
| ClaimAggregator | unknown | optimism | n/a | [`0xa782b2a4fb8b329f257e58122cda55310d7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ⚠️ Unaudited |
| Router02 | adapter | arbitrum | n/a | 4 deployments: optimism `0xa516b9c7378799799e6dfadbdabf45d5b584405f`; bsc `0x1cafcb9f3b5a152b1553bc2c688ba6a18054b653`; arbitrum [`0x0022358ebfd5261c325f8160c7c17bc8671d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/); arbitrum `0x19283dd283c31bf3920f7a530aa3a81a2792dc52` | ⚠️ Unaudited |
| Router03 | adapter | arbitrum | n/a | 7 deployments: ethereum `0x3b47f0e57a6c537ecc198833728ccd5d02e29771`; optimism `0x9761d46ef36e07131e8c56af06e35cac23b9a91e`; bsc `0x8184fa7dd835efd2ddf90a3072efff4928405990`; base `0xd7cabef2c1fd77a31c5ba97c724b82d3e25fc83c`; arbitrum [`0x11876c56204b2e1e9763a802b7f15fc942ebf1ac`](./contracts/arbitrum-42161/0x11876c56204b2e1e9763a802b7f15fc942ebf1ac/); avalanche `0x6108feaa628155b073150f408d0b390ec3121834`; linea `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | ⚠️ Unaudited |
| SupplyVaultRouter01 | adapter | optimism | n/a | [`0x539fcd9adbe7473768beb87bed88988b532b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | ⚠️ Unaudited |
| SupplyVaultV2 | core_logic | optimism | n/a | 4 deployments: optimism [`0x4ac8af23f3ef7ededb3dc45c091406aeee8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/); optimism `0x550d17a65a2a78cac3408cdf5ca0eaa5b1a0465d`; optimism `0x811c2771fd1e1b49d1e0addb96507434c8cdd744`; optimism `0x8d3474ff61b1fed1b5f4b1267e51bf7a18cd03f8` | ⚠️ Unaudited |
| TarotOFT | unknown | arbitrum | n/a | 7 deployments: ethereum `0xa10bf0aba0c7953f279c4cb8192d3b5de5ea56e8`; optimism `0x1f514a61bcde34f94bc39731235690ab9da737f7`; bsc `0x982e609643794a31a07f5c5b142dd3a9cf0690be`; polygon `0xb092e1bf50f518b3ebf7ed26a40015183ae36ac2`; base `0xf544251d25f3d243a36b07e7e7962a678f952691`; arbitrum [`0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/); avalanche `0x5ecfec22aa950cb5a3b4fd7249dc30b2bd160f18` | ⚠️ Unaudited |
| TowerLongPoolFactory | registry | optimism | n/a | [`0x8d92b5f12c1beba3583861e9c3067d088bc2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | ⚠️ Unaudited |
| TowerPoolFactory | registry | arbitrum | n/a | 4 deployments: optimism `0x8f530176932feb8f9520ec6b4c4051a9b47dfe50`; base `0xb0d74d24ae94985c614a52d79d1bdec0a6f57bee`; arbitrum [`0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/); linea `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x0348e04b4b7c3133bdbb6415493b41692459b13c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b90317de36eaa44e8e677c4cdb8b37bc603b0b0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x16a0c272fe8af1b4768e288467f9ac771b1c2b0d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x232e84eaa8938676289d9ee651e80ed369609a66` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3b47f0e57a6c537ecc198833728ccd5d02e29771` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x40e6251d130dd1d11a188228ff2073a0b4f4deea` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4959f80b513f9f7046e9ef1270493540a8506ee9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5634c471805c1a41a0886ad7e3b0e44107c7d061` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5ed664e2e54badf5469e4e5366cb99d6ea2f08dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6237b5fe025ab6477f19fbe5e90515b4d77357ad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6e4c88ca7b80dd8fcd629eb720c3ea33ecc08d9d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x76d553faa56e1d9d09927bfc23fbf3d4a4d0cd01` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7c00dac770e0644ab16d85670215c1d96ba155e9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x82b3413d575aa93806308a04b53c78ae2037da11` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x875f4ed8cb5f30c87c708d04d4fb9dc560738bb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8a5226cc1ed9645bb2f90a9ef4cf889fe8e97615` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8df7da49a0344fe656b7f34b5767e6eadb568ad7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9ec30a5a8290623861d16fc07f0ea21d20516863` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc20099a3f0728634c1136489074508be7b406d3a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe0374614ca02012963f22807d374a39c49dea803` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfe9cc1de5011a14ae61368f59c9daa8d27f49fa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2973c9d7b6d1ce2aa9abbde9670a5f431e58d21c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e4c7bf66d0484e44fea0ec273b85a00af92b2e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda0428e5081b2672f2fdd95134f4f3bbd0267a0e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 57 deployments: fantom `0x04d04f9a200d63d8ff5d2dc1f59bff49410c565a`; fantom `0x075b7f7e2960d49c67c5a44134928e5e2896283a`; fantom `0x0defef0c977809db8c1a3f13fd8dacbd565d968e`; fantom `0x17235bb61f7a8c3e93a8ad2b1b12802e00121c35`; fantom `0x1a8c7d27abb6c2976e35a42299674d62e775dd4d`; fantom `0x1f7a54df8b04ca31ac875cef5acaa247c87420ed`; fantom `0x1f8e600303a7c85166467b0e5921ab394dc5cdb7`; fantom `0x20aa24369659249f8d65faae175f240740f9754d`; fantom `0x2217aec3440e8fd6d49a118b1502e539f88dba55`; fantom `0x26b21e8cd033ec68e4180dc5fc14446905e94572`; fantom `0x283e62cfe14b352db8e30a9575481dcbf589ad98`; fantom `0x2f71345a63f9c32d51b169b32142b18ff8b36558`; fantom `0x3303a565741d0d41d026c12259ff2d4772d3622e`; fantom `0x35c052bbf8338b06351782a565aa9aad173432ea`; fantom `0x36df0a76a124d8b2205fa11766ec2eff8ce38a35`; fantom `0x3e9d8f9923e1b3de55743d494810120cbb3341a4`; fantom `0x3e9f34309b2f046f4f43c0376efe2fdc27a10251`; fantom `0x3f7e61c5dd29f9380b270551e438b65c29183a7c`; fantom `0x449eadd544cb6de7e12dbc0b522ee518a7641561`; fantom `0x44f7688aba71e462ac44fb2424b6e0cd83e0d47d`; fantom `0x466ebd9ec2027776fa11a982e9bbe4f67aa6e86b`; fantom `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30`; fantom `0x4c093134657904a7c3f1e47a6d9a38955094ebef`; fantom `0x4f56f5e76c91e3676e806eb1b2e00e1d18f8f897`; fantom `0x51d49f3731a9591d6eb4fe79523f20ae5e560ba7`; fantom `0x5494b29f78714397e96086ba7542e364842a74df`; fantom `0x5b0390bccca1f040d8993eb6e4ce8ded93721765`; fantom `0x63d5554b748598c191ab0cbd0e0e1c638ffebee6`; fantom `0x68d211bc1e66814575d89bbe4f352b4cdbdacdfb`; fantom `0x6caa3e5feba1f83ec1d80ea2eaca37c3421c33a8`; fantom `0x74d1d2a851e339b8cb953716445be7e8abdf92f4`; fantom `0x7e5f7da8b5d70b40397487780fdf89384cfebb9a`; fantom `0x80d7413331afb37b30bc0ef6ae9d11a40bcf014b`; fantom `0x80fe671e580cd1d95b2dcd8ea09233df06c81c7b`; fantom `0x87d05774362ff39af4944f949a34399baeb64a35`; fantom `0x9189a6c06a33dea7ad82201e37b73fe2adc595ed`; fantom `0x93d01402fc51dd906bbaadb2431ddc2ff535eaac`; fantom `0xa45776cd3bd348c330bce66bf9dba149d8c3d452`; fantom `0xa90092a6bfc100e32777b257af46b3ec2675d876`; fantom `0xb7c2ddb1ebac1056231ef22c1b0a13988537a274`; fantom `0xbf76f858b42bb9b196a87e43235c2f0058cf7322`; fantom `0xc2218e377caff2cc005093124c31120aa5c902d1`; fantom `0xc5e2b037d30a390e62180970b3aa4e91868764cd`; fantom `0xcf8660e267d44cc804ddbee6b1ce44f9ed564889`; fantom `0xd204e3dc1937d3a30fc6f20abc48ac5506c94d1e`; fantom `0xd4fcd1d1252bf4a3134e0e848479ad90a60979ef`; fantom `0xdcaeee2731b488328e43693d8b8f948e56c2eaed`; fantom `0xe034c865299da16a429dad26bff5468c2689f7d8`; fantom `0xe1fe8b5c3f5b592613305fc6ff551c67cbe40e17`; fantom `0xe21ca4536e447c13c79b807c0df4f511a21db6c7`; fantom `0xe62745519c1d2af846387b8abd142a2d2583c275`; fantom `0xf62fafc9b31b016484dcb779d8c3a0b26e9815a6`; fantom `0xf6d943c8904195d0f69ba03d97c0baf5bbdcd01b`; kava `0x54950cae3d8513ea041066f31697903de5909f57`; kava `0x82b3413d575aa93806308a04b53c78ae2037da11`; canto `0x82b3413d575aa93806308a04b53c78ae2037da11`; canto `0xb6193df61351736e5190bf1deb2e4f0769bd1bf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0998d0bfe219222816e7ea50997cf7cf663c94d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b47f0e57a6c537ecc198833728ccd5d02e29771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54950cae3d8513ea041066f31697903de5909f57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bcd6ceb876cf0b2b6bb5adbae71e5e72b746916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bd75e6e9ce517f579210d8f969460030924e97f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63f2a142a6e7a8e27d0e569b87c72e59d6ae8bbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8184fa7dd835efd2ddf90a3072efff4928405990` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x991b6b5359a12cf0196825b7424dbd29ffa2354f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa70d7ec08e297d89e606884de0563bf54a9ad89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4b56743269fcbbacaf7dacdfe81a740eb40b62e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6ed26b8551dfa864cd565cd28027af22ca97131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbecbd5a14eff9dca01d45237401006f79b3d10a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc2587de9ff8dd747772b859d491fb6f52d856bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd91a468b8a2275cb50698edf65c0579630cad8c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x35c052bbf8338b06351782a565aa9aad173432ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xa782b2a4fb8b329f257e58122cda55310d7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ClaimAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0022358ebfd5261c325f8160c7c17bc8671d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11876c56204b2e1e9763a802b7f15fc942ebf1ac`](./contracts/arbitrum-42161/0x11876c56204b2e1e9763a802b7f15fc942ebf1ac/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x539fcd9adbe7473768beb87bed88988b532b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | SupplyVaultRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4ac8af23f3ef7ededb3dc45c091406aeee8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/) | SupplyVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/) | TarotOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8d92b5f12c1beba3583861e9c3067d088bc2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | TowerLongPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/) | TowerPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3202] skynet.certik.com/projects/tarot

Fork inheritance lineage and inherited audits are included when available.
