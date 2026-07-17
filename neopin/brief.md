# Agentic Audit Brief: NEOPIN

## Project Overview

- Project: NEOPIN (`neopin`)
- Website: [https://neopin.io](https://neopin.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.628Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum, klaytn, polygon
- Contract surface: 84 unique implementations (103 raw deployments)
- DeFi Llama TVL: $41,980,360.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 1 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 104; live-surface contracts included: 103 (0 live, 103 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 84 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 84
- Unique implementations: 84
- Raw deployments: 103
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (84)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x1312e1149df72e85c18adcc79c151812ce7ab652) | proxy | polygon | n/a | `0xbc57a9acfbccfa8338bcae4bacd32ed835413917` | ❓ Unverified |
| Proxy (impl: 0x1560f0ffde7baa1fee9ba4118c2799beb4c55507) | proxy | ethereum | n/a | `0xc1e718674d3a366f8432bb1b4b40fb619e22566f` | ❓ Unverified |
| Proxy (impl: 0x6e6c6cf18e1dda9c429da782f76a738333ed9df1) | unknown | polygon | n/a | 2 deployments: polygon `0x3afc4f10eee95d1e0aa886eae89f028b3c23f036`; polygon `0x6e6c6cf18e1dda9c429da782f76a738333ed9df1` | ❓ Unverified |
| Proxy (impl: 0x73d481324cd2fc13a277391d719905db974c76fe) | proxy | polygon | n/a | `0x1cf9e9428e3f627783bf8aca6ab4b8f5082e7513` | ❓ Unverified |
| Proxy (impl: 0x964fddd7623f6e7d8a0532f8bd823ac1c5c4246e) | unknown | polygon | n/a | 2 deployments: polygon `0x6f051c4b20131aa721bc4c8a1397057e48d12718`; polygon `0x964fddd7623f6e7d8a0532f8bd823ac1c5c4246e` | ❓ Unverified |
| Proxy (impl: 0x9817ab9947e4b2afbf9a58fc6aa97c7d19df5739) | unknown | polygon | n/a | 2 deployments: polygon `0x6fd0886bef1ddaa1ca462b3ea3c95e9c29a139c0`; polygon `0x9817ab9947e4b2afbf9a58fc6aa97c7d19df5739` | ❓ Unverified |
| Proxy (impl: 0xca22e41274cc16ec02a03eb295d93adbbb6f88df) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0807ae1a763575f3ef6f4232fc100fc344d9fec0`; ethereum `0xca22e41274cc16ec02a03eb295d93adbbb6f88df` | ❓ Unverified |
| Proxy (impl: 0xca4e15131c415a163052c330453435879b4f9239) | proxy | ethereum | n/a | `0x5d25bca128d7b35bfdcd697106d8470221d382a0` | ❓ Unverified |
| Proxy (impl: 0xdd1129db859ab25123d6c11aec19a8dec24a8b28) | unknown | ethereum | n/a | 2 deployments: ethereum `0x2726a3228a71855faf35493507132c2c7c569106`; ethereum `0xdd1129db859ab25123d6c11aec19a8dec24a8b28` | ❓ Unverified |
| Proxy (impl: 0xe0b469cb3eda0ece9e425cfeda4df986a55ea9f8) | unknown | polygon | n/a | 2 deployments: polygon `0x2d723f60ad8da76286b2ac120498a5ea6babc792`; polygon `0xe0b469cb3eda0ece9e425cfeda4df986a55ea9f8` | ❓ Unverified |
| Proxy (impl: 0xebf597bb0e3fd63381a55c5e2c754df744f5417e) | unknown | polygon | n/a | 2 deployments: polygon `0x5d25bca128d7b35bfdcd697106d8470221d382a0`; polygon `0xebf597bb0e3fd63381a55c5e2c754df744f5417e` | ❓ Unverified |
| Proxy (impl: 0xf93623657af14dd2766decdbd2e050fbf1d539fd) | unknown | polygon | n/a | 2 deployments: polygon `0xa6bab6b6bcd68d97ac23633cc9b5d01a0b10a301`; polygon `0xf93623657af14dd2766decdbd2e050fbf1d539fd` | ❓ Unverified |
| Proxy (impl: 0xfce5ea678c76fbe03c080c240796f5a9c7f0829b) | unknown | ethereum | n/a | 2 deployments: ethereum `0x841d3b6660663ed4b0d9b9edaee6642e05a4e182`; ethereum `0xfce5ea678c76fbe03c080c240796f5a9c7f0829b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x006fc95b4c9200191df563511a542ebb62fc4603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x006fd27f11b7f081ef36f95fa9695061d7ae0f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02b3ea73bd3535431453619815d0cffd8dd3b4b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x0464786780545b67e0fe7a384993592764e207e9`; ethereum `0x46e58157def67e9995a84abecd97a0b47a0040d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09dc8a4c7c9f9bf198ce7bf80059aae792995bb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c6c0b63b0d03f033c5c33c976978b299a14be59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x19a16aa7c987fbda7dae021b05c1eb06524c7893`; ethereum `0x73eb5e2f953ff5b22a057bd32338d06e0b6382c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19cf258abe23b87bb48e6957147df7734db25f86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ef8e0967927178e88c32c0b18ece4685efeee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d723f60ad8da76286b2ac120498a5ea6babc792` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30fad668dfaf5f23a8c053abea7205e081748f66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a1d813ef7bdc8bde100242d415f67b46c2b8f34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e4a231e864219704ccc1acd81043129157c1901` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x511c180a2e69ca700cea66f609b8a2357f5980ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ccb3b4c4ac2937187dc9478d52cbc3f0255a7e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e277f3239488c379e4b2e3c33bf60bbf5a6f076` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72a0b5ca437e2f161ae02c7013d8dd61d5401749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f17063a1637d4bcf7648b467babd530446a61e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829dcefbae6b4e8e48eb1c3d208e24c7d771bdae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fedbbffa6fea46df5a964cce5930b2298aa71b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa483ec6793e330793debc28449380620b93e9e93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f65985cbea903ba4f346b2be8dc7a3c2dbdccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae65d6687c327eb2c3bb8d3022d0b5c4a4044595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0df2d24e04717ac96f96107d63ecb5549a52f33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1157ad83fd1b1cf51b276d9ade7f9f0821979ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5b5cd3802ca84b7a02952f9880748c938a72ead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6a0295bd3cef4b39f17d551426b72d99d6a27f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7356ebe2188976f8368acbf7c15b7aedace4fe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc356f0dc3ba1366e6def86813e4063d6ffc75f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc57a9acfbccfa8338bcae4bacd32ed835413917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf1ec7dd15eec616db6122faf06300c9ac79b87c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd23b1b1577e9c5b80462310edc68175ad9874dd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda33d589273242867867f306ac4474a10674fd5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc747647f417c7e732948df9c122cad28d1c941f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde205b2165d55bf6d86da6ff72d88a9608261fe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0b469cb3eda0ece9e425cfeda4df986a55ea9f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe17d9b19810ad9038211865b2c33745031f07a06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebf597bb0e3fd63381a55c5e2c754df744f5417e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0xef994468c11d88d91b063efe82f425e193471cce`; ethereum `0xf5a0f6183dc9c8b1ff9baf0e39e9285af759e13a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf03539ba1e235178005095546a55a13b70325292` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd5948070e8a9ea30de7877fc955ba237f931e0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfdc823c441696a675c5b508d7b7b17ec0e5f1884` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x06256572f7dd5a07561d934c41315a3a4278dc14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x09dc8a4c7c9f9bf198ce7bf80059aae792995bb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x117ad9fb519632466a38b293a864341d8a15fda4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1289ae78422b94414c1f827c534a1fe8e31e71aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19cb27fbe4df38df82548402431df1b571105968` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a1f14ec33bf8c2e66731f46d0a706e8025b43e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f772c21d7155492e808e677ed360d51411fb0df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x511c180a2e69ca700cea66f609b8a2357f5980ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57d1a61e4fd09fbf16e35b04959e94dcf2032974` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59a7548b5c40c9e2a531ee49081c58989437071e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e809184586e6a12772b4fb40328dd8aabec3e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6e277f3239488c379e4b2e3c33bf60bbf5a6f076` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x72a0b5ca437e2f161ae02c7013d8dd61d5401749` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x74f16c6f24e0aaa9469b88d0f97ab0bfb55fceee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x778b6d59678bb5ac8b60b99d0c5d028890ac9dcf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78fefc1b286f3484a86cc320e74e1b65ebefb404` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f17063a1637d4bcf7648b467babd530446a61e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8331ce96ff020968b0040da907a9cccfce7fd848` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95bcd06f3ad31369b0679eb3a3b2cc496adfd0fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | 2 deployments: polygon `0xa483ec6793e330793debc28449380620b93e9e93`; polygon `0xc1e718674d3a366f8432bb1b4b40fb619e22566f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae65d6687c327eb2c3bb8d3022d0b5c4a4044595` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xceb63b55b7fed3b266e56400000d6e98f637012b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf5e73459f5e28d771793dd410061d8aae35da8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xde205b2165d55bf6d86da6ff72d88a9608261fe1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec8236ad3334a98d465d68db1d7a44c9654affc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef994468c11d88d91b063efe82f425e193471cce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4ac086f057d5a7c8487002cf11f8bba623ccb88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfd28c7cea3c50a060cb4c0059e453c6d4dd9829d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | 7 deployments: klaytn `0x184e039d35cce96511e32c1af85907664fb0e646`; klaytn `0x1a1f14ec33bf8c2e66731f46d0a706e8025b43e9`; klaytn `0x306ee01a6ba3b4a8e993fa2c1adc7ea24462000c`; klaytn `0x489d6d679f1ca4cfe6976c55b54427d1aadb8057`; klaytn `0xe06597d02a2c3aa7a9708de2cfa587b128bd3815`; klaytn `0xf20816c9bdcb25da3ba79b206e9b7107ae02ae10`; klaytn `0xf9d92bad7b1410dffb0a204b7aa418c9fd5a898f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf) | SlowMist | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit_Report_Verification_NPT_SlowMist.pdf](https://github.com/Neopin/neopin-audits/blob/master/Audit_Report_Verification_NPT_SlowMist.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 84 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [4694] Audit_Report_20220627_NPT_Staking_And_DEX_Swap_SlowMist.pdf
- [4695] Audit_Report_20220629_Easy_DEX_And_Farm_SlowMist.pdf
- [4696] Audit_Report_Verification_NPT_SlowMist.pdf

Fork inheritance lineage and inherited audits are included when available.
