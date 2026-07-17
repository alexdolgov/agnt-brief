# Agentic Audit Brief: UrDEX Finance

## Project Overview

- Project: UrDEX Finance (`urdex-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.958Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum
- Contract surface: 81 unique implementations (110 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 8 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 121; live-surface contracts included: 110 (4 live, 106 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 3 of 81 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 81
- Raw deployments: 110
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UrdexTimelock | governance | arbitrum | n/a | [`0xa6a68944e222b6e89d51e77ec83acc5fc47d78b0`](./contracts/arbitrum-42161/0xa6a68944e222b6e89d51e77ec83acc5fc47d78b0/) | ✅ Audited |
| UrdToken | token | arbitrum | n/a | [`0x842216e0aa2ae608699f7b1063f26ce6b30c5311`](./contracts/arbitrum-42161/0x842216e0aa2ae608699f7b1063f26ce6b30c5311/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LPToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x3240e018db6e2c751faf689d5292e4a40e7091f7`](./contracts/arbitrum-42161/0x3240e018db6e2c751faf689d5292e4a40e7091f7/); arbitrum `0xeac6b24a2ece55e4f2aabefd622d83c7c0049b42` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidityRouter | unknown | arbitrum | n/a | `0x3b6cf84721113f4efc7a56e3019666de4fcdb804` | ❓ Unverified |
| Proxy (impl: 0x3074750db8e23958d2593118a6f8088eded82429) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x2b703f0576352635e649f88d3ede3a47f834c8c4`; arbitrum `0x3074750db8e23958d2593118a6f8088eded82429` | ❓ Unverified |
| Proxy (impl: 0x431f4425f5f26205a1a05b277b638d9dd253ccf2) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x05cf21c97bc9c5679a748bafd970d975ca02d4c5`; arbitrum `0x431f4425f5f26205a1a05b277b638d9dd253ccf2` | ❓ Unverified |
| Proxy (impl: 0x47829245741e5ab0f71287463a3aa5e9383a168e) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0d71d6986411013bd14bbc7222ec802e561015db`; arbitrum `0x47829245741e5ab0f71287463a3aa5e9383a168e` | ❓ Unverified |
| Proxy (impl: 0x53b5dff3596d709298de0a52978d7971aeef56a5) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0376dbaa4bdeba65894ad720340b602c5899a546`; arbitrum `0x53b5dff3596d709298de0a52978d7971aeef56a5` | ❓ Unverified |
| Proxy (impl: 0x84210482d9cb996799017368e57b34c929100f87) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x335739b7b890e97efdd0618f56426dfaceb4f17a`; arbitrum `0x84210482d9cb996799017368e57b34c929100f87` | ❓ Unverified |
| Proxy (impl: 0x85bbd81a59169303f0891555d7781cdab27117a4) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x4c719657cbc32dcb89756fea2e66beb994b3fbb0`; arbitrum `0x85bbd81a59169303f0891555d7781cdab27117a4` | ❓ Unverified |
| Proxy (impl: 0x864be040699d71680587ad0c69f5076b34bfa00f) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3b0ae42f6391fab77208af2084ec9ea960071eb6`; arbitrum `0x864be040699d71680587ad0c69f5076b34bfa00f` | ❓ Unverified |
| Proxy (impl: 0x97b9429f85637ed53ada512531c67e7ec30c0501) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3a6a4ef2d07da0d70b5c72c5459531211fb18104`; arbitrum `0x97b9429f85637ed53ada512531c67e7ec30c0501` | ❓ Unverified |
| Proxy (impl: 0x9a7e313eff0e51a786fcddc975f816af342c5236) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7b7b1239137f74907be9bbd2880e8a41aa07e21d`; arbitrum `0x9a7e313eff0e51a786fcddc975f816af342c5236` | ❓ Unverified |
| Proxy (impl: 0xa8f3b318d755b8b499ffdce080f1e3c26001eac0) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8a1a748c35bcabd1467eeb5ad4f153a6adbbe66b`; arbitrum `0xa8f3b318d755b8b499ffdce080f1e3c26001eac0` | ❓ Unverified |
| Proxy (impl: 0xcac1e1690ed879c4f9df60bda37bd12e311ad9fc) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xb284c0a82f4f18c152518f4777c1d780c5fdcd59`; arbitrum `0xcac1e1690ed879c4f9df60bda37bd12e311ad9fc` | ❓ Unverified |
| Proxy (impl: 0xd625538ddfdebec3adf5130beb608ff0d21c02de) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xcc40b466047e09fbadf2f7857cd02d90e17b90ed`; arbitrum `0xd625538ddfdebec3adf5130beb608ff0d21c02de` | ❓ Unverified |
| Proxy (impl: 0xd7e74d3a6b5b25c69bd1a4657dd6dac6dfad03ce) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x29dd56cb2141e27fbcf2ac13e9822f03c36634be`; arbitrum `0xd7e74d3a6b5b25c69bd1a4657dd6dac6dfad03ce` | ❓ Unverified |
| Proxy (impl: 0xd8e2ce4d4669b6c18dd20e45c7289c64b1083cd6) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8bb3479c0623156a644d7f17137468cdcde9e993`; arbitrum `0xd8e2ce4d4669b6c18dd20e45c7289c64b1083cd6` | ❓ Unverified |
| Proxy (impl: 0xdcbd7e288476c88942def52424f64437812f9fcf) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x50596a45700a104f4537a21cbdf17d4b94e35edd`; arbitrum `0xdcbd7e288476c88942def52424f64437812f9fcf` | ❓ Unverified |
| Proxy (impl: 0xf1bbf3dc94dba7bb72fe6dd5eab5fbda8959005c) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0af1fb106d5eb70cb1b846fce7e3e714e932bab1`; arbitrum `0xf1bbf3dc94dba7bb72fe6dd5eab5fbda8959005c` | ❓ Unverified |
| Proxy (impl: 0xf969086ad6532a7dd400336bc1b234627e1a26a3) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3a83b045826e0d40d79cc316af7bd7ba5253d68d`; arbitrum `0xf969086ad6532a7dd400336bc1b234627e1a26a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x00f353576297a9c7e6cf4a8450162f7abc784978`; arbitrum `0x95a740f2b934b87ab4cb453ddb945d92de2b2250` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05912539cb6224a5e3d803e4fe90e1b456a4b6a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0773236309f33794017ada3cdc991632d0482dc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0be3b41474eaa89a847eca42a803493b57def6b3`; arbitrum `0xb67300de9d901d10993b7535fa3a925de8ada708` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11342bd35ba5c057f4e2eafb8b8d5bb79c8d4df9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14f41d9912cf0478e5c94cf1e4f2f5de56e19a28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x17c65fa13d94df07daae6bd648203adcdf22f5b6`; arbitrum `0xda734fff7fb0bffd906893776c3bb760b95a14be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x19065e184005d9ccfc90559b96dfaf4a21919a3b`; arbitrum `0xdc086460d5aa0276e0207e42d7e9820401c1910c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1f573fc4f40e944b96916679c6d0a0f4211eade4`; arbitrum `0x7b8016ff4e1bcd751cc65f4551b879fc196e42da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2cef07f0b125e502276ab06a0eaf047b9aa80b23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2df7e86fad898ae2873241780f9c4899b19b2aa0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e68f8738ee357a08addf92961c876213cbdb1fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ecf2f1ed2f34d3aa26873fedbbd06de87efd9b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3132c48c9eec650f58e42ed320e1a54dd62e8326` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31641d125e5392746a592b0018465d14845c2689` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33d21c83005a083437ce6ec8c9a240be4ee7c795` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3767231339004018068998dc471c98c4f058d545` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x384343da8dab14dc106272af3364378a2b93f412` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x39456590cad7240faf016dabe1a9e71de296e828`; arbitrum `0xf13bd91f493b5014e3799b949f2ec43c3b95bbb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x399eae7f3368f09437156e45a40f289a96a3fc96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ca304378aff2a38b31fd5c418bb9f19c7aedd9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3ff26756e350a37cc0436e69b66f37575591f884`; arbitrum `0x6fee5d41cd1452baa5f74efb9e389bcc11ddf4a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45142ab1f9f20796b3b21c487b5c3b690957b15a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4536137c183e82d5ae12aa6322866b0375eae84e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4afd566374f51e6923b36dec3ed418e0c49b24fa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59c62d773a35ba9edd017d9cd5a7907d27259a87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62b3f0906f4fdff0a8165f9de281587f83ebf720` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6481a1f0d0bfedab938ec5d94817aa35316767e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x710728ee790d204f3279ebcc4831a3ba91bcb292` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7308559ddeef556427301c4409706a1b971616f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7486d86eb3d39a490ad7b8b313a7ad49ed92311b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7a1f4a2ce993b4727872ab154969bb683ba1e256`; arbitrum `0xb28b6e70d3eaea0bc3564c6c99ab26d2d24b05f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a323863c5857ea3c396b737dd33a301e8b35bf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80073504d24fd01b2594c90e0e615ab4ba2a41b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92cc1254e5aaf0e214db068c98fc0687d9dee8e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9957c1f71979c80cd8754255de95e71e058cd727` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99f8f559c82b5c35c70ebe1d416c860a7611b2e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f60b69fe588076080eeaf8403ce6f6b1f0fbf49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xa83d7dd8dd1ea6f13698c0b54040f4fdb59dc072`; arbitrum `0xcf40665035f1ac76f97436fb788ac204bd6869ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa6287be6acbe59af9a0cf2b03b403658d4e8575` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa65fecab965fac775c9d9b891d09c5564bf1118` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xadf1b6403e421797c6a258abc6fc429f1b952069` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae143b31292e3644f6d2b408247e1f5a2ff2b8ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb20da16894ca472eb24755062194982c5a4fbfb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6cff571491a0b76eef2893aa8b80ba1477159c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc04f657917562f83d1c5cfec4e647e8c7fb6dd01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2be241bfda5cce3ac6ae12a32b2ba7bfad0f317` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6078d2f1591facc738c415c3ed5c5b2546d523e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xc77951a3b566373434e8811be4e9b607942a65f4`; arbitrum `0xf67d3a53a110a764dca7123b9f3fc5b404566577` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd42e9b1ed591f7d7e55fe75ae68dfff89c164cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1642a44d3c761e36f60b79287020e8878d6e705` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbe0a7dc17fa0aadbbcec2d4d0438332f583dd47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc45c25807d61ca0f1188e4d545823905d7cdf77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xe6b6b9a4870992a870bfbc4730b7a349177a0c5f`; arbitrum `0xfbd498eb9db5b17f199f913227a13c7fc6b916f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea107b1dc31a36d73e59cdf7b9d2b02c2cba9241` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee4ffd2d73d5b0ac6c6fae251d0ab0e47569e7fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf097d413e6e395378fd996fd2072779c382fe65b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc041f609266a06acc32f5847c99f7e5a8ceeb01` | ❓ Unverified |
| UrdMaster | unknown | arbitrum | n/a | `0x235db7afe577a239150160ab7429bc3d6e25fdaa` | ❓ Unverified |
| UrdStake | unknown | arbitrum | n/a | `0xcbcda2b27f04e4315657cf21118c7970f1a0d3d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [urDex Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/0f50d3ad59e14547e816b256c2ede1282f9ab403/urDex%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3240e018db6e2c751faf689d5292e4a40e7091f7`](./contracts/arbitrum-42161/0x3240e018db6e2c751faf689d5292e4a40e7091f7/) | LPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
