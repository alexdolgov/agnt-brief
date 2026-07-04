# Agentic Audit Brief: ZeroSwap

## Project Overview

- Project: ZeroSwap (`zeroswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.888Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 160 unique implementations (161 raw deployments)
- DeFi Llama TVL: $195.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 9 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 169; live-surface contracts included: 161 (1 live, 160 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 160 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 158
- Unique implementations: 160
- Raw deployments: 161
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WorkquestStaking | unknown | ethereum | n/a | [`0x6ce9f9...bca196`](./contracts/ethereum-1/0x6ce9f9e6b011a088ed5bb5b28a97560654bca196/) | ⚠️ Unaudited |
| ZeroSwapToken | token | ethereum | n/a | [`0x2edf09...0dd4c5`](./contracts/ethereum-1/0x2edf094db69d6dcd487f1b3db9febe2eec0dd4c5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (158)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xa4751eaa89c5d6ff61384766268cabf25acd1011) | unknown | ethereum | n/a | 2 deployments: ethereum `0xc8f6d7...04ac63`; ethereum `0xedf822...f17769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01544d...46437a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cf925...8434d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d0060...0f4226` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d2daa...06c31f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d3c21...cdcf32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d83de...124d5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ef0f3...30ab48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f7fc1...1e7ae7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fa2e3...9c125b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11b1df...1f3d08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11c258...0fa736` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12ca64...90d013` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12d9cd...3eb677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x136964...98cae1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14c7c1...d9326f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a0b1d...68b3fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ba9a4...381d07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bbe45...33a2d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ef8ba...cae132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f40ed...bdc3d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x226d61...53bad8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2414ea...918506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x284c59...50c88e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28fc3f...f4fcc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29da2e...0d1af9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a8285...4c3a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b09ce...fa8acb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bdc08...7afc23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bf61d...4deac7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c496a...a194a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cf462...9d418b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32860f...10d5a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37598e...256831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37e457...f8d880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38a5d0...ba6b10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3bc1...f1267d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d6c04...edaf07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ed410...ba5c2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f7c5a...2fbe26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fde81...5e60d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4066f7...66885d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x417229...bd0943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a942...357d60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x444fbc...158878` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4632aa...31d00a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4681f6...3410e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471fe8...a2250b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f7b7...42f076` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48fe9b...4a9d5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x496218...4f6536` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b87df...e9ea79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d5be2...e60571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f6013...70450a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x515684...149d61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545224...b8c354` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54843d...417598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57e952...a96ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x582009...4eb4fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58d316...970244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593b0d...8a9ca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a7125...7a5659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b9327...dcd839` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c2653...28f35b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c346f...e83c45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c442a...7e12b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d9489...b369ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f48f1...2e815f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6048c7...a45c12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62a503...38b5d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63e207...5ff1ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64188b...db5558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x652add...aa820a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6743c6...c65e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b1397...a52b70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c8c01...5c102d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d1228...6f4899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d2dc8...61d9c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e7357...bb415f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f28c0...f474e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ff067...0af690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70fda3...8a1825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71a2c3...94d756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79b81a...450ee6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x814aad...21eeb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x873553...583e75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x877554...e7839c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbae2...da682c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7b9f...6e6433` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x930496...130ed2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x932fd4...38f293` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94343d...b0e820` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x950ff7...338fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9584e8...58db5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x962372...067dee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x969947...bc3019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96be2b...a71043` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a1bd2...796d52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a6dea...fb2035` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ad676...31972d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aec32...aa80a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9afc61...0d9c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b87d4...dfae1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b915a...870483` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d312d...d383c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9da2a9...e67833` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dd357...71f3bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa02313...1feaf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa18382...9f8724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1952a...292a17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3aaf8...a106f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3fae4...1dbc4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa508c6...904f02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6947c...676ee6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8e5b4...b1ad6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8fa65...109957` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9d572...ac3e1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa7653...a79216` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaa513...c20e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf0d6e...d1f8a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafd626...280ede` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafdbe7...7a0c62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb12266...2285e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2a76f...a06ebb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb555d6...c76c7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6bcf1...77abc9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6ccaf...c8632a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb92e40...563fa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9c876...fa81aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba77b7...27058b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe985c...de2e10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfc417...9d39de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc07ed9...d8a9be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc17f8a...718ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1e9ce...6f725b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc63e36...2beb5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc99cc9...e36238` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb6a58...900abb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc7854...252ef0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38f3c...4412dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd701c1...ffbe5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9b301...a59898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda1a4b...ba7368` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdae475...8180e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc0b32...fabcbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd1b74...fb20c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd9ea0...b3a823` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe084a6...4bae7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe424c5...416ae5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5ff6a...d50a5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeadf8a...2250f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebff93...82ad08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d14c...1bb12a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85acd...1ae154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e3f5...908f79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa8d9c...d94bb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfacdfb...a0078e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfda24c...0d88b0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zeroswap.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/October/Zeroswap.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6ce9f9...bca196`](./contracts/ethereum-1/0x6ce9f9e6b011a088ed5bb5b28a97560654bca196/) | WorkquestStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2edf09...0dd4c5`](./contracts/ethereum-1/0x2edf094db69d6dcd487f1b3db9febe2eec0dd4c5/) | ZeroSwapToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 158 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14173] Zeroswap.pdf

Fork inheritance lineage and inherited audits are included when available.
