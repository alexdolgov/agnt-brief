# Agentic Audit Brief: Geyser

## Project Overview

- Project: Geyser (`geyser`)
- Website: [https://www.gysr.io](https://www.gysr.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.273Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: ethereum, optimism, polygon
- Contract surface: 104 unique implementations (105 raw deployments)
- DeFi Llama TVL: $72,231.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 7 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (ownercontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 105 (8 live, 97 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/7 (42.9%)
- Deployed-live implementations: 7 of 104 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/7
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 97
- Unique implementations: 104
- Raw deployments: 105
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 28.6% | 2021-06 |
| unknown | Tier 2 | 1 | 14.3% | 2020-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Geyser | unknown | ethereum | n/a | [`0x6c1ffdecc6520571d2c41087726611938a9ae99f`](./contracts/ethereum-1/0x6c1ffdecc6520571d2c41087726611938a9ae99f/) | ✅ Audited |
| Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x30c0f65d9b27ebe2cc2a49cbcb4133230b3fb381`](./contracts/ethereum-1/0x30c0f65d9b27ebe2cc2a49cbcb4133230b3fb381/); optimism `0xb9b532eb6125f71a95ba67a1ef3c94fd5e265d68` | ✅ Audited |
| PoolFactory | registry | polygon | n/a | [`0x2f2e7b4e12f8a7949919c833f1a49bcb012081d1`](./contracts/polygon-137/0x2f2e7b4e12f8a7949919c833f1a49bcb012081d1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GeyserToken | token | ethereum | n/a | [`0xbea98c05eeae2f3bc8c3565db7551eb738c8ccab`](./contracts/ethereum-1/0xbea98c05eeae2f3bc8c3565db7551eb738c8ccab/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x117cfd9060525452db4a34d51c0b3b7599087f05`](./contracts/optimism-10/0x117cfd9060525452db4a34d51c0b3b7599087f05/) | ⚠️ Unaudited |
| PoolMetadata | core_logic | polygon | n/a | [`0x7daab81668809bd6510177254f0c56e3b739c164`](./contracts/polygon-137/0x7daab81668809bd6510177254f0c56e3b739c164/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc48f61a288a08f1b80c2edd74652e1276b6a168c`](./contracts/polygon-137/0xc48f61a288a08f1b80c2edd74652e1276b6a168c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (97)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01356d78c770840166c1654691d19bd33c52eaad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x064939637e27d325529f97c888ee89bbf23bd809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x087a5575bd65133c22b78a830a8dc8f366ccf462` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c4453fce51bc08db7fbdb167ef944aab56051b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x101063f864e91b72a5ce06342afc7ea5d8515398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12ca522ce3220a4f34633ded7064e871ea676c83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x180b934da7b529a1a158ca2c1c6306c568787761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c6b5910bfcb000b6a495dc294fdf11a5ed479d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ab9d4828ecbf1a34e72cb8deab01ecf0acd9c78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dfec6172f860b2fbfbf7e70c4487cf51aec5bc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f8152bba263cb1bcf73b0cb1e6cb4ca40b9f6d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35b0e00e0d6abe19d8ed24a6a3389c347b2230f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e22e9f2d8c4e9c7d6ed7db7fa5576e4eae641bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41ceae393db3720a848103d7769f31457d5246f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42829c9eec25d4be91f047d7df0181435acf8314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e06ae5fa48089a69d4ee4ffee9524b06c2b7400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57123e57b5dd2c9182e43dc2fed25d4769b4b224` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c0fe17473cc907fb532bb83977906716f930120` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64fe5e8f8314106f5d7fdaff2a8e10ff565b90fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6afb74b95125b9f12c99253e844d75be8947d161` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70c65c7b4b52a61d9fe6ee46be0a3d1f23b53450` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x764ed88143d7ddb85512f57d1c10447ba4749062` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aecd735b862d8fd158e0c8e1f6dd2c268512780` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7efa9af2123bd77b9b7dc7b4a0c6671a00ec4b66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x811a2389ae2efaaeaec2f5fca71e7dac7533e755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8146ffdeeac33ee38d9ae68df8b45b19432452e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a42588c64d18411c0afd62cebc237e605843eb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95be9bc8f773d154e1aafdbf9d1ae30b69887702` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa13edbc1ea1751c338e2528f7defd082357e2d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab403b87cff1075392e23eb31c8f7ab20e39e71e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef2a7e4cbeb875475cfb1924867b9374569d894` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb59d5e435927816b40a9300d16c95de9796f538d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb884923766247d566c28e69c2b84a401e5bb7243` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc020a4dc104088ed4d8977dc0e47099744577ae9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc247b09c16311915ed364c06bc2bdcb108a36d45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc517a08aee9ca160a610752e50a6ed8087049091` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcada3423d33259a94c1ed1a7aeecb73b87d0b684` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0713a052e539085756391f985bab61d6d87732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd70e3cf2b54f2f3e34a41d5b8134347bd800dd6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf53929762bb995a476527171d335e3daf7c15f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed3ca5149175ad65d6ee249effc6b9ece9a77b2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee1bb3304028d222d7bbf1411067b6757a9a2641` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefe16a20dee30e61872e30d050ed0ad659055307` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf75beabb45ee2a81686821c3d0bd26856b9f6952` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7a249ba8951979040bbc7f70fd5184c8fee2b8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04bfe9aec490154b3d28b996ed927eae6bd2e120` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x05600655390b98152a7a7c4e242930258c106667` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0608c83c77ef641d78045ce87e2e13450d866133` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c39198ac5242cf59f18aaff6b185847262c7bf4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13da267c0b8b79d34f88f6588180da7ad11e161a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17d860809ef7a95857c23dff597bd79518f3e4ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17f511ec08dd6f5e36acbc73b64306eaec55393c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18b8a143eb78effe25f2882da55897ba8954b295` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x193b97f66f0590e8d9d4fa372fb5bd94f20cae43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f06811a16c8d2d042e6d0bd7c0e7178a939d9cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20c15f92363f17d00dd7a6a57b8d02635b6cb710` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21e8f11e9719be4d91ca2258808d833279c86d76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x225fbc87c44324afe99710a0503ef395c81ceb9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x256a8d78342e50eeb682bc4e83dc6f961d1de33f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2635888884227768bb2e5ff9a334a6070dd86972` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27403fb4be8f1e4d869cd1a888a20933a869bbdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2865f0539a6b12d1ae099f5689d38a1734a5e533` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2e86dff2c140f7169a93018f1366df0d1b60fc45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34b5d2bff47376269e7ee3cc34d0f84e454b4d73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b902a8a1e04f1e6957f589804ed2d8a9f9489c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cf6920b8fcbea07700ce4a7c2f009bb785b0742` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3edf1fe98fd672d03724650a9cc6b2d11b2fdc00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x42910193a54d4d76b1086a0d48e02df5de5d3ac4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4939530837c7e4e883735212622091e049bf639d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c82db64b0d9d682c7e2496d4abe03f0a3bf1383` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53590f017d73bab31a6cbcbf6500a66d92fecfbe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5bfef484455b4c9d9e23ade6bfcd872073a9d95b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cda6f08c1b8e4743699819aa69574ac2644b0e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ef1b1bf27363e3728eb3edef4e0b8a97c01d845` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6604ed95bdcf3446acc4f41175431839b97095a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x68669166d5253bef57817f317aebfed9c82cb4c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x707c4622aaecbff23ed56133b8e19ef940008998` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73f28ae13d96103f7e276b963c4ea40ffe0bbc0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7655a88d9c5902541b48baf979c0c85acb79a2e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c5e4cb8c59e59967e2eac7fe698bdfaf6ae6518` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d5b19267c9c11bc1e32edab073b43ffcf0bf706` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ebe7670f1e6fcbef7ed63f98de57a4ddc4a8542` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7febb2493b60fc631b081ef0436020fa51e26937` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8906151f76948cebc1cdcb556c38cc7d3bbbe61d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e0b8d765159ceca4cdf5f22d0d6478c79ab788c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x935d8ebbfb9a9bf94c986a12e3db54f2fef6abee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9613d0389dbe4f4f3e52b6c38e3980bcf498a782` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x983d4db882bdfb1b1624ed09670535907a27e112` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa172130c60a5fda68be3d67fd841cc0cc43ec1de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa926eb259f8fb1bb32a5803dc9f5a84862c5ede0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2e49ed1e552f087695e18f1fabca052694a8042` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb425ab121d357473259eae4efc038e4b113db12e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0baff6d1544a5731f2b741295948e0510557e8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc74c5fef7b3f97043246002130006804561eb5dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd16046b1f09a6b26b4a6a9ea022e8ec51807177a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb23e59cd33b9711d6da0a51a783c8429d2ce10b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf33f3bfc4f4e86fb857f640831b6c65eb7105493` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [gysr_v1_audit_pessimistic.pdf](https://resources.gysr.io/gysr_v1_audit_pessimistic.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | 1 | n/a |
| [gysr_v2_audit_certik.pdf](https://resources.gysr.io/gysr_v2_audit_certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbea98c05eeae2f3bc8c3565db7551eb738c8ccab`](./contracts/ethereum-1/0xbea98c05eeae2f3bc8c3565db7551eb738c8ccab/) | GeyserToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x117cfd9060525452db4a34d51c0b3b7599087f05`](./contracts/optimism-10/0x117cfd9060525452db4a34d51c0b3b7599087f05/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7daab81668809bd6510177254f0c56e3b739c164`](./contracts/polygon-137/0x7daab81668809bd6510177254f0c56e3b739c164/) | PoolMetadata | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc48f61a288a08f1b80c2edd74652e1276b6a168c`](./contracts/polygon-137/0xc48f61a288a08f1b80c2edd74652e1276b6a168c/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
