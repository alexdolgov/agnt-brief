# Agentic Audit Brief: BunnyPark

## Project Overview

- Project: BunnyPark (`bunnypark`)
- Website: [https://www.bunnypark.com/](https://www.bunnypark.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.994Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 97 unique implementations (102 raw deployments)
- DeFi Llama TVL: $0.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 106; live-surface contracts included: 102 (4 live, 98 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 94
- Unique implementations: 97
- Raw deployments: 102
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 33.3% | 2021-08 |
| SlowMist | Tier 1 | 1 | 33.3% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BPToken | token | bsc | n/a | 2 deployments: bsc [`0x36f95616619e2d40132fe459fc2e7826fdaa5a7c`](./contracts/bsc-56/0x36f95616619e2d40132fe459fc2e7826fdaa5a7c/); bsc `0xacb8f52dc63bb752a51186d1c55868adbffee9c1` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BunnyParkMasterChefV2 | unknown | bsc | n/a | [`0x6148104d39924f071df05eeb2f6aeb53f7b2efe7`](./contracts/bsc-56/0x6148104d39924f071df05eeb2f6aeb53f7b2efe7/) | ⚠️ Unaudited |
| Timelock | governance | bsc | n/a | [`0x88b048191b071ed1bcd1ff7c7c21a697ec86811c`](./contracts/bsc-56/0x88b048191b071ed1bcd1ff7c7c21a697ec86811c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (94)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x8a9ac1335b04b77dd06323c12e9c460d956a6765) | unknown | bsc | n/a | 2 deployments: bsc `0x2ab35ade56f20a23a4f74865b7bab18d4822552d`; bsc `0x8a9ac1335b04b77dd06323c12e9c460d956a6765` | ❓ Unverified |
| Proxy (impl: 0xca1b7f1871abad569d067d0b1c7b6654f76cd23a) | unknown | bsc | n/a | 2 deployments: bsc `0x5128df27c5f74e9ac0b09b887a7d65b41ccf2843`; bsc `0xca1b7f1871abad569d067d0b1c7b6654f76cd23a` | ❓ Unverified |
| Proxy (impl: 0xd4e3bea7ce5cc28560a24afc16810538b771d518) | unknown | bsc | n/a | 2 deployments: bsc `0x8a8389d174081e585983dab7189ea1cf18f11896`; bsc `0xd4e3bea7ce5cc28560a24afc16810538b771d518` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x003abbbfde1c6b9908d69402bb342bf3ac47d050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01002b08e50095b96d474b0eb777ad852abbfbb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0288dda09e7d2e68edce896de4a045c1f8176fee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02b978a71a79f93182b6b6407d189d74eea6a8a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03a40aba6865ba5045d80137dedf46fb3312a4ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04cb93c02f993c43be1115b0c8bc13b834385433` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x068b1c8732324d912d1df75f62d794c57af06318` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d9612070138333a52f829a9137a2c2c6c55f4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x093dec88c054092c5269fbf654065cec2adbd1d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09d27089634a046cbdf2451a3b456c5d6bc97d45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c98dc97f0fcbe794d57967c388dc6938caff496` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ee54cd9e3a72fb9ae2f7ac57e91dfddacd96d6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1272faddcb43f3aab52de820f86da6057ceadf2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12cf2ac4ced33965a98ddd150b1db6aaa7e2c12f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13ddd28adefc0ace82b06673407a2aca0fc70cd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x177dca1386966b82e2eea4a5522ce87ec6fbfff0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bae0af7d72467912c9489a052d228e118570bad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d4b0aade53a3d3cfa9fbf59c0523e6ee49bef27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d8bc461ab894fccb5ca813d933923186df0cac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x239a0c58209a88414e582db0667bc6897c2d2c24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2565d813e53be95f9353410127eb422b6911e9e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c4db5b1ecf7f044c7d454064a5b9a5ce1fa0531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35fa37ebd2ee269352817657b848a28fa9190a79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b0969c3f03bc0ab35ff9b8784904de6c381250a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x409dba909e0fdf193d6fd5fa855cf627802ffdf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41ee62320eb2fe81bec28c997e2fe4ce1aebfd61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x465beb6919e629d10176ee0db0a60fbc7e44d266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x498620c3c07954f65fee744b07f47e98f6208eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5135e2f58d5d8fb85019990fee72951b63ac6524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51d836426ea8036a6b86e40ed75f614b7d21547a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52299a3c387ebf64385cd852200444d87263f762` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x545c67589f39e2fa2f97d8697fb678ae5f60bfbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x563936b69f56da8078f1d07fabd4406c3f01f69c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58a67a8e7a4bbd2763d1dcdb874ef3bfe292e304` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a11042d532ffb58a959e3383c00ee3410d4b185` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fafafd6768fbd4b7bfc6dd8bdd542b07ffca56f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60a58ca2890b1afbdf0045096754d21930e82c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64bb9a7c2914765a625a6bdaec129b7bc7b21fb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x651e05daee40786445e7e2fcfadb56bc99d25dcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a834f83b226c84f7741a000c9c698257f3b9194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c126d64528f52c887a7062afe4b9c2613c634b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7001f9419c4643409f26ae59cf6f27989ff70031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x713ddddabb134f5ab50b090d8d1888f4837e9632` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7450e2975dda16a7e44b6299a941ddb22c8ec351` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x752238a3a9feaa8db29b79dcf8f70a0e22a070ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x756d4c062b89cab19e4af85f77e6a0d8b8eb4f79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fce946b5a3167f5d123754912dab043e526596d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82d092cd6a495ba7ccf514cca4bc17c7511672f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x851b59d619e3336e372f7e150100807c16228cf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85483b73ba152ae366e1895d439235ef91d7a9c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87055d062cded811abfa0a4493dde7e1d5f9e6c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8949caef3b9fe3c1c5a46968aa74f9e40909565c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8959b3ecc51df30fd8677674e5bde094b2297980` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a465650954285b7374021c306a5e3e0d30c8393` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ae187c2877edf2c2d510658ef9037d10f23977d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b91e1bbdfd3e0cc5ee363dab0f0daec04518cce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c6eb2a028da86317bace74ff8515a6c5705c7ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x913e79af953159792dcea239e45311836e6a374b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94a3eada24f5353641cafcce9482c084ef632ae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9743d51831678a574ec26864a84e1e01e8d788f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b120ce24e9715b7ba1fb9ed59d399cf2f8341e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b72a56b4963293954e2c79bbb0efcb237df818b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cf7f54e3061968ddb68791d11a743f25d290aa2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e0ce508a53a44da0ece1d0f678a806ee98397c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f1f56464710a97cad4db03ebe0e381c1b4f959e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1f1a9ef0045620601a0ed69242535aae3def7b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5cda9bc1dc148bc7606cf20ba5e5b1037977602` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7900981574e60017ae6883e88e9a4e02c914baf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa79cf952b4549dfc7ded6febdcd35704d55ae551` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaa5d7c8a48955f93949c90c9bc443d5e46877d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf59c2ba47d3db1a74ffa158851136702861bc38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb780d94fc44e1a6b9e3d945502cfdf2aa9cb0b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0xb83e77ba150422ac51b0b6fcb6e3a0a0d8e96f05`; bsc `0xe051c61baba59fd9d184a26f15be4361027c9916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc2f4d83e3224872b6155398d62c6a9ef8c652b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe815582c805e5b1eacd4431fc8410db42cc885f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea9f742ab294a150a0519ca25862d996b966338` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfdd98cfaa4541b781e9c0e02decfde2cf2dcfc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3687136e20c8e47da39a1ee30d09d76efe65fa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc39e113788a5d003ed4b37f3abe54ed90aba5c6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc45803b8d5c9d37cdf4979cf44a8c607fdfd259b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcae367de5eabab390774c9c0dcb6a83066009bc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6fb1f423c874b01a3296758ec831fe0c279bf73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7f19ab26183711f4cc61d60cb91f88233ebb61b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd991537678236b9b1cbb8380cf6fdab944c61d3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbbece9945ce92b14f4480f0aa637ea15e2c1837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5631ff5f1b639d36999fa70000b9c2bd6a92b71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb5b961d84c781f87e4a286a4b2c7a2a349fde5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec0fe6ec1f538b1a99e3276eda7324b511986a5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeece9b2374d885592e87220153ed3010034f2c8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3a8943fbe20c24fcc278df6504ef6de6830ca71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf50242448c9246f14522b64c2c2bc7e0c00408ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMistAuditReportBunnyPark-en.pdf](https://static.bunnypark.com/image/BunnyPark/pdf/SlowMistAuditReportBunnyPark-en.pdf) | SlowMist | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [skynet.certik.com/projects/bunnypark](https://skynet.certik.com/projects/bunnypark) | CertiK | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-ERC20-BP-v1.0.pdf](https://static.bunnypark.com/image/BunnyPark/pdf/PeckShield-Audit-Report-ERC20-BP-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x6148104d39924f071df05eeb2f6aeb53f7b2efe7`](./contracts/bsc-56/0x6148104d39924f071df05eeb2f6aeb53f7b2efe7/) | BunnyParkMasterChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x88b048191b071ed1bcd1ff7c7c21a697ec86811c`](./contracts/bsc-56/0x88b048191b071ed1bcd1ff7c7c21a697ec86811c/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [12869] skynet.certik.com/projects/bunnypark

Fork inheritance lineage and inherited audits are included when available.
