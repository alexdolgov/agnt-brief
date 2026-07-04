# Agentic Audit Brief: WOOFi

## Project Overview

- Project: WOOFi (`woofi`)
- Website: [https://woofi.com/en/trade?ref=DEFILLAMA](https://woofi.com/en/trade?ref=DEFILLAMA)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.321Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, linea, optimism, polygon, polygon-zkevm, sonic
- Contract surface: 803 unique implementations (877 raw deployments)
- DeFi Llama TVL: $15,850,769.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 25 project-authored contract(s) across 7 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (baseadminoperation, adminoperation). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 877; live-surface contracts included: 877 (96 live, 781 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/27 (29.6%)
- Deployed-live implementations: 27 of 803 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/27
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 776
- Unique implementations: 803
- Raw deployments: 877
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/woofi/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 7 | 25.9% | 2024-08 |
| PeckShield | Tier 2 | 2 | 7.4% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WooLendingManager | core_logic | polygon | n/a | 10 deployments: polygon [`0x01e42c...63f139`](./contracts/polygon-137/0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139/); polygon `0x697c97...6ffccd`; polygon `0x9f46a7...bff18d`; arbitrum `0x5c7ff2...bb7bc5`; arbitrum `0x6fc2c9...8f3f08`; arbitrum `0x79a545...3be767`; arbitrum `0xfeeced...3ac2d6`; avalanche `0x385e06...b10f73`; avalanche `0x697c97...6ffccd`; avalanche `0xc8ec7f...dd9dc7` | ✅ Audited |
| WooracleV2_2 | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x2a8ede...1a8428`](./contracts/polygon-137/0x2a8ede62d0717c8c92b88639ecf603fdf31a8428/); arbitrum `0xcf4ea1...8934ec` | ✅ Audited |
| WooStakingLocal | unknown | arbitrum | n/a | [`0x2cfa72...b7d8e2`](./contracts/arbitrum-42161/0x2cfa72e7f58dc82b990529450ffa83791db7d8e2/) | ✅ Audited |
| WooStakingManager | governance | arbitrum | n/a | [`0xa9e245...2924fb`](./contracts/arbitrum-42161/0xa9e245c1fa7e17263cc7c896488a3da8072924fb/) | ✅ Audited |
| WooStakingProxy | proxy | avalanche | n/a | 4 deployments: ethereum `0xba91ff...a89b13`; optimism `0xba91ff...a89b13`; polygon `0xba91ff...a89b13`; avalanche [`0x3bd968...1386e3`](./contracts/avalanche-43114/0x3bd96847c40de8b0f20da32568bd15462c1386e3/) | ✅ Audited |
| WooSuperChargerVault | core_logic | polygon | n/a | 7 deployments: polygon [`0x0ba6c3...0ecb9e`](./contracts/polygon-137/0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e/); polygon `0x404b18...a9d503`; polygon `0x8ea0eb...e07a5c`; arbitrum `0x5a6b07...8cad62`; arbitrum `0xba452b...1c2d08`; avalanche `0x86a639...b9abc7`; avalanche `0xfc0e57...e312af` | ✅ Audited |
| WooSuperChargerVaultV2 | core_logic | polygon | n/a | 15 deployments: bsc `0x5cb9ba...fb3158`; bsc `0x7eb8d4...be4cad`; polygon [`0x1109e0...3cf549`](./contracts/polygon-137/0x1109e03516eb25eab2150d0b274b8d4f5f3cf549/); polygon `0x90a2aa...abd085`; polygon `0x9dd5dd...9b0699`; polygon `0xedbb74...1799ac`; base `0x44df09...746cb8`; base `0x8c6030...5736e7`; base `0xb77212...e8cb43`; arbitrum `0x7f3f2a...295bb1`; arbitrum `0xa78043...52f7d8`; arbitrum `0xd2fdab...5b56b1`; avalanche `0x11b29a...da836a`; avalanche `0x1cd7b3...02e6c4`; avalanche `0x866810...c60625` | ✅ Audited |
| WooWithdrawManagerV2 | operational_periphery | avalanche | n/a | 10 deployments: polygon `0x382a9b...150efb`; polygon `0x3fe2c8...48b3b9`; polygon `0x6f09ae...8dfc01`; polygon `0x7f7821...87fd4c`; arbitrum `0xbfe3d2...9f09ac`; arbitrum `0xd05b95...5d03ac`; arbitrum `0xe76c97...53d3fe`; avalanche [`0x1bb2eb...9602c9`](./contracts/avalanche-43114/0x1bb2ebecfbb4f78d83fb0a21cb415383779602c9/); avalanche `0x755e4a...1b56f6`; avalanche `0xa429b4...a59664` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropDistributor | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x968d3b...416b22`](./contracts/arbitrum-42161/0x968d3b4faa87864ab19cf2982510b60c2d416b22/); arbitrum `0xc63c64...58b9cb`; arbitrum `0xff0a28...2a86f6` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | n/a | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | n/a | [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/) | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0x871f2f...a5e527`](./contracts/optimism-10/0x871f2f2ff935fd1ed867842ff2a7bfd051a5e527/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| MpRewarder | unknown | arbitrum | n/a | [`0xa74bb3...a743d7`](./contracts/arbitrum-42161/0xa74bb3643da439e89010743909d0493abca743d7/) | ⚠️ Unaudited |
| MysteryBox | unknown | arbitrum | n/a | [`0x9d9200...90715e`](./contracts/arbitrum-42161/0x9d9200aabc72c681eec86bb8494ab495ca90715e/) | ⚠️ Unaudited |
| NFTBoosterV2 | core_logic | arbitrum | n/a | [`0x2ebca5...3ee90f`](./contracts/arbitrum-42161/0x2ebca56e00e11a4b1f08da6eb9bc97c4bf3ee90f/) | ⚠️ Unaudited |
| QuestTokenRewardManager | governance | arbitrum | n/a | [`0xca8edc...c00b72`](./contracts/arbitrum-42161/0xca8edccf471a213cfd70d73117ac7f49bfc00b72/) | ⚠️ Unaudited |
| RewardBooster | core_logic | arbitrum | n/a | [`0xf26eb5...92747b`](./contracts/arbitrum-42161/0xf26eb53367066cde380cd06a5d1469985b92747b/) | ⚠️ Unaudited |
| RewardCampaignManager | core_logic | arbitrum | n/a | [`0x927f8c...8d4234`](./contracts/arbitrum-42161/0x927f8c16c9e802cb3012989fab79eb8c098d4234/) | ⚠️ Unaudited |
| SimpleRewarder | unknown | arbitrum | n/a | [`0xa6000b...e65bd3`](./contracts/arbitrum-42161/0xa6000b7d3634534266a2ecc4d478f5cdc1e65bd3/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xcafcd8...efd07b`](./contracts/arbitrum-42161/0xcafcd85d8ca7ad1e1c6f82f651fa15e33aefd07b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | ⚠️ Unaudited |
| WooAccessManager | governance | polygon | n/a | 2 deployments: polygon [`0x925afa...5dd965`](./contracts/polygon-137/0x925afa2318825fcac673ef4ef551208b125dd965/); arbitrum `0xd14a99...caa99e` | ⚠️ Unaudited |
| WOOFiVaultV2 | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x0c9044...4be49e`](./contracts/avalanche-43114/0x0c90447b662c2fcb62dc104dfc4563d0dd4be49e/); avalanche `0xc48ab7...e2e112` | ⚠️ Unaudited |
| WooStakingVault | core_logic | arbitrum | n/a | 3 deployments: polygon `0x9bcf8b...9b405b`; arbitrum [`0x932178...3dc99d`](./contracts/arbitrum-42161/0x9321785d257b3f0ef7ff75436a87141c683dc99d/); avalanche `0xcd1b98...e09db0` | ⚠️ Unaudited |
| WootradeNetwork | unknown | ethereum | n/a | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | polygon | n/a | 4 deployments: polygon [`0x39467a...2ec735`](./contracts/polygon-137/0x39467a0debf360a82f83880f13ebdf7f0c2ec735/); polygon `0xcf6ce5...059de5`; arbitrum `0x7de3fc...bca340`; arbitrum `0xe77adf...0ead6a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (776)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0208d7...bf0563` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x047073...2081ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0510e5...fcc53b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0972a0...35aa73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ba6c3...0ecb9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c4d6a...f09a0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c6c19...209cd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13afd5...d8f524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15ad43...03035b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x160020...2062ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1736b8...fcee7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17f377...9b3ef2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a8e01...fe87e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b9182...ae25a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24d48d...0c3027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x269894...a31bb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x286ab1...f4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2caa3e...4e7c7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2df393...4f5208` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f22c3...254d7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30e9cc...f05df9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x360e41...ae0b6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36dbf0...746603` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39373b...cce427` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b7efe...81c7ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3be04d...9db10a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cbb7f...872deb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fe2c8...48b3b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4333f7...fe7fb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x438baa...84463a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44ceb1...4ae316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x468f46...383dd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46d2c7...dc4a5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x479dbc...0a7e45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4926eb...ee7e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x497abd...f3c60f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a7bbb...56c943` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b11b9...ebfd62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f3e0b...f4de98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f4fd4...3e8f06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50f347...d0ecc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53e255...70b59f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59de3b...ab93fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a6b07...8cad62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bf68e...36f34e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d358a...3b21c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5db04b...39b4b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f0002...a38a2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x624b31...f337c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x664195...776d9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x684b71...c409eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b1bca...c3ac72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70f9c8...c6b795` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72dc7f...34bca9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74486b...3c7c73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x747f99...5c4a9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x778098...437b8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79f271...509dae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b46cd...9f3c00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7be78d...6a8f22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d99d2...03e206` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7e5634...df4fd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81004c...9ef439` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86b223...9be24c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x872b6f...ad7049` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x894edf...744158` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c6030...5736e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fa8e3...1d8f90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93d879...6df74b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95360a...f2e6e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x973dbf...c79fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97456b...d25360` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x981296...4a5de1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x997bc3...a4a52c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a6d88...74d4db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9aa935...0a963b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa02e9f...00a996` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1bb8a...8e34e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2f2d3...d4d673` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa94034...cdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa9c15...bcc173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac5cf6...10a81b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac9244...d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaeb948...438e73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf3492...f7c0df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb130a4...5d723f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3bd9c...25417c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8db69...d98f55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb964bb...8775bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc036ba...fb09ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0969b...08705b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc36b03...308907` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc51762...c9a61f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67f09...abdb8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc68fde...f8ee78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7498b...2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7f6fc...5028dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc90bfe...a01294` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbdfa5...c14a3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc96ba...681ee9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdfa96...2efc84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce7cdc...e31342` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcec7e5...3f9636` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd12d23...e31a67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd18d33...82d89a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1d3a7...0e287c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd25650...07127c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2635b...eda899` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3d86c...850ae7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5befe...a0c343` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7a801...4edc3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda442c...091bfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda5e1d...934d5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb1d99...cdfbc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdecc54...a8cf4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdeefc0...0a5d0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe12dc1...61d879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1eb61...fc733c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3222b...f508c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5b3d3...2acbb5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe77adf...0ead6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee7ac4...5ea3b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeff23b...bf3062` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1cf2d...d03def` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf35908...71bb79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf52ddc...0e275e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5d656...fa2ad1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe1787...170ccb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe5f3a...55c89c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffd63b...46b624` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x049989...c882ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x049d48...396e92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x076aff...ab9bdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08357e...93f3fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ad1a3...b7593f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c6c19...209cd5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11b29a...da836a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x12e687...056592` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x154e8b...66c67e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1ce18a...f8bcdb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27021e...4b87bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x28f88a...de014c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2caa3e...4e7c7a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2da7de...520d86` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2e668b...0c0383` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f97e4...6a5147` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31ae60...e2a48e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x337060...e77d5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x35e3fe...e77237` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x376d56...5b482c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3784a4...8f95da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3bb5aa...8adaa8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c5379...79f890` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d605f...ca8a2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e2942...4fc382` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ec979...fcd8d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x409df2...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44df09...746cb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x49d26a...d3614a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a7bbb...56c943` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ab421...af63b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c51d3...128c6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4df34a...617975` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f4abc...d27b95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fe764...c34e66` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53b42b...d54acf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x562003...4ed968` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x574b9c...c008fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c1792...42f9bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cb492...55d406` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6124c9...c77903` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x632626...7d603e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x63b244...b28358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6875eb...00e98f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6de98d...6ae82d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7081a3...887d7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x721483...c18937` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73bd3c...1aca15` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7400b6...78723d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x74486b...3c7c73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ba560...81850d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e8949...627254` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f2571...f950ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7fdf58...e63881` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x817eb4...a39b74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83b904...8d5ea0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84b76e...2b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x887482...07db17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88ef2b...bfa3fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c6030...5736e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8cd11c...14b108` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ec402...fec784` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x913e11...11b390` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9144d5...4c51db` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91d11e...6b93cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x930fa1...c0f9c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x938021...3e0dd5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x96329d...87e15e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x997bc3...a4a52c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99ad6e...a2d230` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d1a92...ca3128` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0d702...e898e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1bb8a...8e34e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2f2d3...d4d673` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa325dd...477bf1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa79e2c...2c97bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaa9c15...bcc173` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb0d84f...5432ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb29de0...ad747b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb54e1d...8853b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb6f776...485354` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb77212...e8cb43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb8db69...d98f55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb964bb...8775bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbae04c...e5f499` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf401e...b57c22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc22fbb...cea2f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2c0e0...a69492` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4abb9...393cca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb342e...a9ae21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcbe2ae...f79cee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce66ab...978bb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5befe...a0c343` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xde1272...91f2da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe33a53...995646` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe56758...b33647` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec0417...f13bb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed6e5c...a64aaf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee8402...e03f20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeff23b...bf3062` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0b4d1...76bd5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf13879...b465a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf2be87...15e94e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6be9c...9ad083` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf95117...0a37dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xffd6e0...1658f3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 6 deployments: fantom `0x1416e1...0703d9`; fantom `0x286ab1...f4f9bf`; fantom `0x2fe5e5...b0f7ec`; fantom `0x6626c4...5e8d8a`; fantom `0x74b238...58c76d`; polygon-zkevm `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03465a...6991d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15ba47...1629c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25d734...0be1d3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27425e...a322e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27820d...d432b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b76b9...853d88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2df393...4f5208` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39467a...2ec735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c5379...79f890` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e2af6...f4a205` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x409df2...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x468f46...383dd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x479dbc...0a7e45` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c51d3...128c6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4df34a...617975` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e04b9...1b808b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f3e0b...f4de98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x505ac7...3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51ae61...066ac2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5994fa...c712a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a958b...3c513f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bf68e...36f34e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5cb492...55d406` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fc6f3...307a53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x721483...c18937` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73bd3c...1aca15` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7a7a3f...781ee0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d8f20...52add3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7db250...ee2d8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81d34d...024044` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82fde5...2db7a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x859cec...0cd99c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x887482...07db17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b4aca...548a87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90a2aa...abd085` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x913e11...11b390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x973dbf...c79fbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9aed3a...629a30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b4196...108237` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d1a92...ca3128` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa02e9f...00a996` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1bb8a...8e34e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2101f...027001` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa79e2c...2c97bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa8701c...442257` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa94034...cdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa3b0d...4abf53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf3492...f7c0df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb130a4...5d723f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb29de0...ad747b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3cd4c...a06349` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4e0bc...82caa9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba3dd3...132a55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2c0e0...a69492` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3d60d...195335` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc4e9b6...6f31b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc50fab...e4641c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc51762...c9a61f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7498b...2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc96ba...681ee9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcced0e...b78611` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xda5e1d...934d5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcd8e9...ea8265` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe33a53...995646` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe61acb...de4ed0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed6e5c...a64aaf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2be87...15e94e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf314fa...d0a096` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf357ec...dc0182` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00daaa...de8ba1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x01c8f6...624ca6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04736d...c707cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0510e5...fcc53b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06b00f...539655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06c7e4...4e336b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x070d5c...5bdb09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0972a0...35aa73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ab13d...2bdc2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0aed81...5c6ba2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ba6c3...0ecb9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cee55...1df408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0d42b2...8aa6a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0feb09...363006` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x106da3...20a6a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10aeb5...550d25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10dcf5...d64c8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1109e0...3cf549` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x113d31...b71a73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x114c36...a77b63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x114ff6...2321af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x121135...67bc55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1349e5...c78636` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x138047...f3804c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13b3c9...14c6e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13d902...ce40b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1553a0...ecacca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15a035...1d0e74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15b11a...65d606` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x15ba47...1629c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x181d8e...423a60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c2998...a957df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ce18a...f8bcdb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d8664...4f830b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ddd22...9c89ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e5bd7...1ea8fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f2868...422778` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f79f8...2df448` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21886d...636103` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21becb...34b032` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x230441...f7d718` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23433a...a38d09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2500ad...955777` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26f33e...1c14f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2711cc...066fa1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2743d7...beb7bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2839d2...626c4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28d2b9...148e40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28f846...0ceb86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28f88a...de014c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x297ad0...24d25b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29ca8b...f52407` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a0fa0...1f31d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a73a5...0f60e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a8ede...1a8428` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2aa18a...823a31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2aaf89...219050` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b76b9...853d88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2cc993...ae2376` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2cf870...688dce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2df393...4f5208` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e14ca...0cd7c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2eeb12...d14bd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f1617...2f6e7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ff261...c303d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x308984...ef8000` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31828f...729f9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31a06d...b1d149` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31ae60...e2a48e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3382c5...f0ea14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3509ff...117b00` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x366e2f...c5aa3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x367f11...233df3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x36a106...6489d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x36dbf0...746603` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x371a25...5d6f91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x371a35...e6c347` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3784a4...8f95da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37e98b...15b034` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38506f...503796` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x38cb87...b63387` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39d361...fb0877` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39ee28...d14577` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3aad22...52ace5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bb5aa...8adaa8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3be04d...9db10a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cd52e...215c26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3dc662...2da2cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x401ff5...aaabcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x409df2...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41c790...71c16e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43054b...1ac44b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x438241...9c098f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44df09...746cb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x452c32...6eff4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x468f46...383dd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x478e7f...ef6f13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48c9ee...7224b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48fd9b...ec8c9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4926eb...ee7e79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x497abd...f3c60f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49e1b5...78ccdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a54e5...c1bdac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ab421...af63b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b9736...522ef9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c51d3...128c6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c7621...0e1668` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d0ec3...06ca57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d7cb5...5d721a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ea3b7...b1262f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f052d...b9a978` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f57cb...ae54d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fbec6...d7996b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x505ac7...3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50c931...332a8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50f347...d0ecc1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52082c...0aefd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x523752...77244e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52dda0...0a5206` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53c660...8d683b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x552f22...508a40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x572605...8e86a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58005b...3f5659` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x581185...65b3b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5994fa...c712a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b4a31...feee74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b87c6...1cc807` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c2db3...d86cb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c3abb...c22c6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x604ff7...3ede52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6124c9...c77903` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6317a2...527b55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x632626...7d603e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x637645...ae6ed6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x640b42...d82fdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64a734...e90f4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65003b...dfd070` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x651040...5f58ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x652e75...af5c7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65f2d7...582172` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x664195...776d9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x666e11...39d04c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66c883...e8c10c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6833e5...cf0bc5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6838b7...537fb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69cbff...50e705` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b31bc...0d61d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b4488...cb12d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b4912...f7aec7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c2d14...0b09da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f09ae...8dfc01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f905b...87cd58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7081a3...887d7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70ea48...226343` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x728eb9...eec6c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x734738...5be0ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73504e...cb3620` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73c364...2d8fe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x747f99...5c4a9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74e20a...8661f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7800bd...9cb8db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79afa5...8d852c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7a7a3f...781ee0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cd5bc...3d0981` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d8f20...52add3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e48f3...899bd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7eb8d4...be4cad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f2571...f950ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x817eb4...a39b74` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81ab34...17075d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81ca6c...2e4775` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81d34d...024044` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82aee0...3fd8fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83108a...817198` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84a0bc...578ee1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8693f9...e39ae0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86b174...6abf0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x872b6f...ad7049` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a532c...6ae4fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b4aca...548a87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b5da2...a68d2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8bd32c...1a0578` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cd11c...14b108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dd7b1...d3c36b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x915ef9...ea90ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x91d11e...6b93cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x925afa...5dd965` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x934bcc...9e9bb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93e63f...ad5a04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x994b05...68d57e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9aed3a...629a30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ca742...076799` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d71a7...3abe15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e999f...a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f46a7...bff18d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa08782...259b08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa08fbd...0014a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa14c57...f05701` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa18655...7ae24a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1a2ed...aafb50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa254ee...669e29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa27116...8d9f7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2e70f...4d02e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa397fb...f43662` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa43305...a75127` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4b686...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa805ed...38291f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8452e...161d5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8887f...7a4ae5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9fecf...3554f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaacf22...cd9198` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac5cf6...10a81b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac9244...d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xadae7a...5fe4c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb130a4...5d723f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb14ec1...3a3962` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb38a05...47ed80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb42a4e...b2adf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4402c...0aa957` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb59b84...8d22f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6d5e7...efda36` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6f776...485354` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba3d62...7d215c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba91ff...a89b13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbae04c...e5f499` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb1566...9be193` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd9044...135166` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc036ba...fb09ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc05a4d...1d5cf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc21a8d...d260ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2c1e8...1d86ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3938e...b4331f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3f15d...d0848f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc410c1...eab62b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc44843...080c04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5e220...2cad88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc930e2...af7db2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb256b...ac1711` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbc141...025903` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc8704...757361` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xccb878...148024` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd1844...4a8a28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce66ab...978bb3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf4a40...ead07b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0db92...751b51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0e03d...503fe3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd12087...a7d815` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd208b6...ff426f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd23944...dcbf17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2635b...eda899` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3d86c...850ae7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd68173...de8898` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6961d...275c59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7d585...ae993a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7efa0...f75db7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9b75e...f23f70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda442c...091bfe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda4b53...4c3438` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd3c56...8548e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde1272...91f2da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdeefc0...0a5d0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf0006...df23e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1eb61...fc733c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2e464...fbee02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe39db5...ae5ac9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe56758...b33647` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe6f03c...75d4bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe74f29...23efd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe96507...87abb2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea6790...28554a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec0417...f13bb8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec3d40...99214a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeccc83...731fd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed8ca3...032694` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xefda56...56c8da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeff23b...bf3062` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0b4d1...76bd5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0cfe8...3ccffc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1eeb7...63b875` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf357ec...dc0182` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3f577...1e3629` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5242e...afde4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf52ddc...0e275e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf702c1...04ee61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf75566...9a2253` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf80475...476f02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa09f1...b8dac2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb59c2...980eaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfba7cd...932c5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfbbfcc...f873bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc190d...e15a14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd7ed9...4d7ccb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe019f...17a5c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00c47d...264165` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0176a4...0d6586` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x020630...2b6ad1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0208d7...bf0563` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x044c08...3534e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06d435...d467c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0add2a...acede9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c4d6a...f09a0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x110155...a70192` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x113d31...b71a73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1331a0...dbdef4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x160020...2062ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1e6bb5...e31e33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f79f8...2df448` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x218864...12c538` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22d2ad...bde99c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26c37d...6f790f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2711cc...066fa1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2cc993...ae2376` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f22c3...254d7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f97e4...6a5147` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ff261...c303d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x305f06...66de4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34c384...0ebcde` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3645dd...22baf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x371a35...e6c347` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3cda15...2428ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d06b3...026661` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3e2af6...f4a205` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ff0a5...6987ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x40c90c...632219` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x43054b...1ac44b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44d92d...57001e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47037d...e19e71` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x479dbc...0a7e45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49d26a...d3614a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a4f63...f98a9e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ab421...af63b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c1987...1b634f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4df8d3...cd0cfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ea3b7...b1262f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f16a1...cea69d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f4abc...d27b95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x505ac7...3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x518f6a...e79066` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x51af49...18dae8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x523ca9...9edc2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x53b42b...d54acf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x542fd4...9df49d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5db04b...39b4b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fca0c...3885b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x615571...2ff09d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x636230...82f4f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65003b...dfd070` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68ece3...737267` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68f1ec...cf9700` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ba5b4...a23f9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6cb1bc...70f169` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6dbef5...17b4b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6de98d...6ae82d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6eeb59...b6a65a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f7e84...6814e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7081a3...887d7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71a862...d3a375` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x734738...5be0ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73c364...2d8fe2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7400b6...78723d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x758640...6307b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x764f5d...682744` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x76e177...df5d05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x778098...437b8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b2e29...ba08dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7bcb0c...9855c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7de3fc...bca340` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e8949...627254` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8116b1...96ae34` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x845952...5b1d89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x84b76e...2b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x860746...c417dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86b174...6abf0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x872b6f...ad7049` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8840e2...3cbf04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x891aae...5e8b5b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x919219...fa61eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x927f8c...8d4234` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x928e11...6a9487` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x930fa1...c0f9c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x932178...3dc99d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x938021...3e0dd5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x947e89...cd0499` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x95414f...1f4417` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a6d88...74d4db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9aca55...bf8000` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b4196...108237` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e999f...a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2101f...027001` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa50258...5a9dc1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa5e994...8a4af3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa71f67...a158d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa94034...cdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaaa945...bdf74b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab014a...9d5cf6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab7c09...ee65c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabea7e...11431c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac9244...d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xacdf57...11dcf8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb07683...07e927` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb0e923...3b5007` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb19093...ab1e73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb29de0...ad747b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb4e0bc...82caa9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5b3c7...ab2f2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb9ff58...bdf8d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xba91ff...a89b13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb6b08...4f2695` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbdeea8...f580a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf401e...b57c22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc05a4d...1d5cf9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc13843...173d19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc22fbb...cea2f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc44843...080c04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc4abb9...393cca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc57b3e...f745b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7498b...2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbc141...025903` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbe2ae...f79cee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc96ba...681ee9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcdc155...f20578` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf4a40...ead07b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd14a99...caa99e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd18d33...82d89a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd293d5...126650` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6961d...275c59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd7efa0...f75db7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda442c...091bfe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda4b53...4c3438` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdd7f14...bd79cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xde87b5...ea92e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdecc54...a8cf4b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf37f7...669b7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3222b...f508c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe56758...b33647` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec0417...f13bb8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeccc83...731fd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee4338...1c44ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee5134...a66749` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeed179...ca7790` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf13879...b465a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf2be87...15e94e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf357ec...dc0182` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf5d656...fa2ad1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf60d27...46115d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf702c1...04ee61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf8ad4e...6ac63a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf8ee71...ba81a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfba7cd...932c5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd7ed9...4d7ccb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes](https://audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes) | Sherlock | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/277](https://audits.sherlock.xyz/contests/277) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/woofiswap](https://skynet.certik.com/projects/woofiswap) | CertiK | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [hackmd.io/@verilog/woofi-swap](https://hackmd.io/@verilog/woofi-swap) | Verilog | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [WOOFI Stake - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFI%20Stake%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-08 | aging | Direct | contract_name | 6 | n/a |
| [WOOFi Swap - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFi%20Swap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [immunefi.com/bug-bounty/woofi/information](https://immunefi.com/bug-bounty/woofi/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [publications (GitHub directory)](https://github.com/Zellic/publications) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WooFiEarn-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WooFiEarn-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x968d3b...416b22`](./contracts/arbitrum-42161/0x968d3b4faa87864ab19cf2982510b60c2d416b22/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/) | CustomBridgedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x871f2f...a5e527`](./contracts/optimism-10/0x871f2f2ff935fd1ed867842ff2a7bfd051a5e527/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa74bb3...a743d7`](./contracts/arbitrum-42161/0xa74bb3643da439e89010743909d0493abca743d7/) | MpRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9d9200...90715e`](./contracts/arbitrum-42161/0x9d9200aabc72c681eec86bb8494ab495ca90715e/) | MysteryBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ebca5...3ee90f`](./contracts/arbitrum-42161/0x2ebca56e00e11a4b1f08da6eb9bc97c4bf3ee90f/) | NFTBoosterV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xca8edc...c00b72`](./contracts/arbitrum-42161/0xca8edccf471a213cfd70d73117ac7f49bfc00b72/) | QuestTokenRewardManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf26eb5...92747b`](./contracts/arbitrum-42161/0xf26eb53367066cde380cd06a5d1469985b92747b/) | RewardBooster | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x927f8c...8d4234`](./contracts/arbitrum-42161/0x927f8c16c9e802cb3012989fab79eb8c098d4234/) | RewardCampaignManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa6000b...e65bd3`](./contracts/arbitrum-42161/0xa6000b7d3634534266a2ecc4d478f5cdc1e65bd3/) | SimpleRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcafcd8...efd07b`](./contracts/arbitrum-42161/0xcafcd85d8ca7ad1e1c6f82f651fa15e33aefd07b/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1b815d...a8c603`](./contracts/polygon-137/0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x925afa...5dd965`](./contracts/polygon-137/0x925afa2318825fcac673ef4ef551208b125dd965/) | WooAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0c9044...4be49e`](./contracts/avalanche-43114/0x0c90447b662c2fcb62dc104dfc4563d0dd4be49e/) | WOOFiVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x932178...3dc99d`](./contracts/arbitrum-42161/0x9321785d257b3f0ef7ff75436a87141c683dc99d/) | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469193...945d4b`](./contracts/ethereum-1/0x4691937a7508860f876c9c0a2a617e7d9e945d4b/) | WootradeNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39467a...2ec735`](./contracts/polygon-137/0x39467a0debf360a82f83880f13ebdf7f0c2ec735/) | WooWithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 776 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Zero-match audit list:

- [3828] audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes
- [3830] audits.sherlock.xyz/contests/277
- [3831] skynet.certik.com/projects/woofiswap
- [3832] hackmd.io/@verilog/woofi-swap
- [15004] publications (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
