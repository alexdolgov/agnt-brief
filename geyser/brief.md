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
| Geyser | unknown | ethereum | n/a | [`0x6c1ffd...9ae99f`](./contracts/ethereum-1/0x6c1ffdecc6520571d2c41087726611938a9ae99f/) | ✅ Audited |
| Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x30c0f6...3fb381`](./contracts/ethereum-1/0x30c0f65d9b27ebe2cc2a49cbcb4133230b3fb381/); optimism `0xb9b532...265d68` | ✅ Audited |
| PoolFactory | registry | polygon | n/a | [`0x2f2e7b...2081d1`](./contracts/polygon-137/0x2f2e7b4e12f8a7949919c833f1a49bcb012081d1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GeyserToken | token | ethereum | n/a | [`0xbea98c...c8ccab`](./contracts/ethereum-1/0xbea98c05eeae2f3bc8c3565db7551eb738c8ccab/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x117cfd...087f05`](./contracts/optimism-10/0x117cfd9060525452db4a34d51c0b3b7599087f05/) | ⚠️ Unaudited |
| PoolMetadata | core_logic | polygon | n/a | [`0x7daab8...39c164`](./contracts/polygon-137/0x7daab81668809bd6510177254f0c56e3b739c164/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc48f61...6a168c`](./contracts/polygon-137/0xc48f61a288a08f1b80c2edd74652e1276b6a168c/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x01356d...52eaad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x064939...3bd809` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x087a55...ccf462` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c4453...6051b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x101063...515398` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12ca52...676c83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x180b93...787761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c6b5...ed479d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ab9d4...cd9c78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dfec6...ec5bc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f8152...b9f6d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35b0e0...2230f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e22e9...e641bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41ceae...5246f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42829c...cf8314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e06ae...2b7400` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57123e...b4b224` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c0fe1...930120` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64fe5e...5b90fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6afb74...47d161` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70c65c...b53450` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x764ed8...749062` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aecd7...512780` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7efa9a...ec4b66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x811a23...33e755` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8146ff...2452e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a4258...843eb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95be9b...887702` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa13edb...7e2d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab403b...39e71e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef2a7...69d894` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb59d5e...6f538d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb88492...bb7243` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc020a4...577ae9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc247b0...a36d45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc517a0...049091` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcada34...d0b684` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0713...d87732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd70e3c...00dd6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf539...f7c15f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed3ca5...a77b2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee1bb3...9a2641` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefe16a...055307` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf75bea...9f6952` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7a249...ee2b8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04bfe9...d2e120` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x056006...106667` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0608c8...866133` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c3919...2c7bf4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13da26...1e161a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17d860...f3e4ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17f511...55393c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18b8a1...54b295` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x193b97...0cae43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f0681...39d9cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20c15f...6cb710` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21e8f1...c86d76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x225fbc...1ceb9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x256a8d...1de33f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x263588...d86972` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27403f...69bbdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2865f0...a5e533` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2e86df...60fc45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34b5d2...4b4d73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b902a...9489c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cf692...5b0742` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3edf1f...2fdc00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x429101...5d3ac4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x493953...bf639d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c82db...bf1383` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53590f...fecfbe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5bfef4...a9d95b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cda6f...44b0e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ef1b1...01d845` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6604ed...7095a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x686691...2cb4c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x707c46...008998` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73f28a...0bbc0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7655a8...79a2e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c5e4c...ae6518` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d5b19...0bf706` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ebe76...4a8542` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7febb2...e26937` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x890615...bbe61d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e0b8d...ab788c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x935d8e...f6abee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9613d0...98a782` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x983d4d...27e112` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa17213...3ec1de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa926eb...c5ede0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2e49e...4a8042` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb425ab...3db12e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0baff...557e8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc74c5f...1eb5dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd16046...07177a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb23e5...2ce10b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf33f3b...105493` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [gysr_v1_audit_pessimistic.pdf](https://resources.gysr.io/gysr_v1_audit_pessimistic.pdf) | unknown | Audit | 2020-10 | stale | Direct | contract_name | 1 | n/a |
| [gysr_v2_audit_certik.pdf](https://resources.gysr.io/gysr_v2_audit_certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbea98c...c8ccab`](./contracts/ethereum-1/0xbea98c05eeae2f3bc8c3565db7551eb738c8ccab/) | GeyserToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x117cfd...087f05`](./contracts/optimism-10/0x117cfd9060525452db4a34d51c0b3b7599087f05/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7daab8...39c164`](./contracts/polygon-137/0x7daab81668809bd6510177254f0c56e3b739c164/) | PoolMetadata | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc48f61...6a168c`](./contracts/polygon-137/0xc48f61a288a08f1b80c2edd74652e1276b6a168c/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
