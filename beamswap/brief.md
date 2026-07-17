# Agentic Audit Brief: BeamSwap

⚠️ Lifecycle status: DEAD - TVL dropped 22.3% over 90 days

## Project Overview

- Project: BeamSwap (`beamswap`)
- Website: [https://beamswap.io](https://beamswap.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:05.344Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: moonbeam
- Contract surface: 144 unique implementations (147 raw deployments)
- DeFi Llama TVL: $40,774.00
- On-chain TVL (included contracts): $37,505.06
- TVL by chain: Moonbeam $37,505.06

## Project Description

Structural profile: 77 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (governable, peripheryimmutablestate, beamswaptypes). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 211; live-surface contracts included: 147 (31 live, 116 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/27 (29.6%)
- Deployed-live implementations: 28 of 144 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/28
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 116
- Unique implementations: 144
- Raw deployments: 147
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $37,505.06
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $37,505.06 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 6 | 21.4% | 2024-01 |
| PeckShield | Tier 2 | 3 | 10.7% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmplificationUtils | unknown | moonbeam | n/a | [`0x3708eb3803b43829d542d83cfc770d9389b00dd9`](./contracts/moonbeam-1284/0x3708eb3803b43829d542d83cfc770d9389b00dd9/) | ✅ Audited |
| BeamChefV2 | unknown | moonbeam | n/a | [`0x9d48141b234bb9528090e915085e0e6af5aad42c`](./contracts/moonbeam-1284/0x9d48141b234bb9528090e915085e0e6af5aad42c/) | ✅ Audited |
| BeamChefV3 | unknown | moonbeam | n/a | [`0x26b22e286f08e5e0ea9ec819ede70bbddb75e0e1`](./contracts/moonbeam-1284/0x26b22e286f08e5e0ea9ec819ede70bbddb75e0e1/) | ✅ Audited |
| BeamShare | unknown | moonbeam | n/a | [`0x4204cad97732282d261fbb7088e07557810a6408`](./contracts/moonbeam-1284/0x4204cad97732282d261fbb7088e07557810a6408/) | ✅ Audited |
| BeamswapV3Factory | unknown | moonbeam | n/a | [`0xd118fa707147c54387b738f54838ea5dd4196e71`](./contracts/moonbeam-1284/0xd118fa707147c54387b738f54838ea5dd4196e71/) | ✅ Audited |
| BeamswapV3PoolDeployer | unknown | moonbeam | n/a | [`0x99bf59eb23c1b3594764662ad052f5c42bfd681e`](./contracts/moonbeam-1284/0x99bf59eb23c1b3594764662ad052f5c42bfd681e/) | ✅ Audited |
| SwapUtils | unknown | moonbeam | n/a | [`0xbe161d04498b9b93b74d474421e292f3d0060a0b`](./contracts/moonbeam-1284/0xbe161d04498b9b93b74d474421e292f3d0060a0b/) | ✅ Audited |
| Timelock | governance | moonbeam | n/a | [`0x5d3b3f2e28eb08a578f11fb31a433956c4efb9df`](./contracts/moonbeam-1284/0x5d3b3f2e28eb08a578f11fb31a433956c4efb9df/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeamSwapToken | token | moonbeam | n/a | [`0xcd3b51d98478d53f4515a306be565c6eebef1d58`](./contracts/moonbeam-1284/0xcd3b51d98478d53f4515a306be565c6eebef1d58/) | ⚠️ Unaudited |
| BeamChef | unknown | moonbeam | n/a | [`0xc6ca172fc8bdb803c5e12731109744fb0200587b`](./contracts/moonbeam-1284/0xc6ca172fc8bdb803c5e12731109744fb0200587b/) | ⚠️ Unaudited |
| BeamLocker | unknown | moonbeam | n/a | [`0xe31a3b6c62ebe9db3b991661530fa9871584cc85`](./contracts/moonbeam-1284/0xe31a3b6c62ebe9db3b991661530fa9871584cc85/) | ⚠️ Unaudited |
| BeamSplitter | operational_periphery | moonbeam | n/a | [`0xcf8afa5be7daa15fd8bb2a3cc6203db25d764eca`](./contracts/moonbeam-1284/0xcf8afa5be7daa15fd8bb2a3cc6203db25d764eca/) | ⚠️ Unaudited |
| BeamSwapFactory | registry | moonbeam | n/a | [`0x985bca32293a7a496300a48081947321177a86fd`](./contracts/moonbeam-1284/0x985bca32293a7a496300a48081947321177a86fd/) | ⚠️ Unaudited |
| BeamswapHybridRouter | adapter | moonbeam | n/a | [`0x9f52f5370d38877e01579cd6e028bc263898877c`](./contracts/moonbeam-1284/0x9f52f5370d38877e01579cd6e028bc263898877c/) | ⚠️ Unaudited |
| BeamSwapRouter | adapter | moonbeam | n/a | [`0x96b244391d98b62d19ae89b1a4dccf0fc56970c7`](./contracts/moonbeam-1284/0x96b244391d98b62d19ae89b1a4dccf0fc56970c7/) | ⚠️ Unaudited |
| BLP | unknown | moonbeam | n/a | [`0x0e6580f2f84c8191d36043fb340ad9c0982dde92`](./contracts/moonbeam-1284/0x0e6580f2f84c8191d36043fb340ad9c0982dde92/) | ⚠️ Unaudited |
| BlpManager | governance | moonbeam | n/a | [`0xc9d9e5a2fdbb64947ab158f48eff9be9d75145ed`](./contracts/moonbeam-1284/0xc9d9e5a2fdbb64947ab158f48eff9be9d75145ed/) | ⚠️ Unaudited |
| EarnBLP | unknown | moonbeam | n/a | [`0x3deccefd66b34b64b8830b036843c9568504e217`](./contracts/moonbeam-1284/0x3deccefd66b34b64b8830b036843c9568504e217/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | moonbeam | n/a | [`0x7baadbcf1428fb217dec3e5e917c126a5258d4dc`](./contracts/moonbeam-1284/0x7baadbcf1428fb217dec3e5e917c126a5258d4dc/) | ⚠️ Unaudited |
| FeeLessSwap | unknown | moonbeam | n/a | [`0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb`](./contracts/moonbeam-1284/0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb/) | ⚠️ Unaudited |
| LPToken | unknown | moonbeam | n/a | [`0xb36a647418b4d1279f61ec84cb7f87c467d723ce`](./contracts/moonbeam-1284/0xb36a647418b4d1279f61ec84cb7f87c467d723ce/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | moonbeam | n/a | [`0x909b62deb98ea8b46f7af0f4494c2c1d119aef70`](./contracts/moonbeam-1284/0x909b62deb98ea8b46f7af0f4494c2c1d119aef70/) | ⚠️ Unaudited |
| Router | adapter | moonbeam | n/a | [`0xa206820ec04bf892f800e5fde8a0a69624a9c072`](./contracts/moonbeam-1284/0xa206820ec04bf892f800e5fde8a0a69624a9c072/) | ⚠️ Unaudited |
| ShareFarm | unknown | moonbeam | n/a | [`0xb6b3390b334fa2d35951e5700982d42a9e1e5771`](./contracts/moonbeam-1284/0xb6b3390b334fa2d35951e5700982d42a9e1e5771/) | ⚠️ Unaudited |
| StakedGlint | token | moonbeam | n/a | [`0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697`](./contracts/moonbeam-1284/0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697/) | ⚠️ Unaudited |
| Staking | unknown | moonbeam | n/a | [`0x54825778d33140fe9011dcfbbbd50b924e368fa9`](./contracts/moonbeam-1284/0x54825778d33140fe9011dcfbbbd50b924e368fa9/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x2fc63231f734850c4b8c6b80c275fdb66983846f`](./contracts/moonbeam-1284/0x2fc63231f734850c4b8c6b80c275fdb66983846f/); moonbeam `0xe3f59ab3c37c33b6368cdf4f8ac79644011e402c` | ⚠️ Unaudited |
| Vesting | operational_periphery | moonbeam | n/a | 3 deployments: moonbeam [`0x806f16c24e28a23fe597a794f1487274a79d20f5`](./contracts/moonbeam-1284/0x806f16c24e28a23fe597a794f1487274a79d20f5/); moonbeam `0xac7c023ee92f3d430aaeed835e7f25050fe231cc`; moonbeam `0xbb23b67168f00621df1fe253b955d4cdf5a8ce33` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (116)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x067fc259e6d1a52153744b85eb7e9811b7ee6df7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x07f614b882e54df59911068f6f0bfb9dfd51e1b1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0bd8f33b5a245ff61b8227e6eea8c48beffb4c98` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0c6fb8506cd1d7fc35d29fa5b98c2ca21eda0010` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0edf7990687db2bb8f0b1c1042b396771c27853b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x154e71eed5344fc815b159f1a9500c97a3c39b4c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x1726dafcf02545557a82dda4dc723b9d4cfc60dc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x19182f9b73ec281e80a507f728fb54f2fbc7755d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x1fd344872f0ed4c15652d4b44cca5ea1e4eca1f6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2057ff8517858348fd87d29f031b60c0ce633840` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2493ab287a985ad66502148b69649a9c3f3c040b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2e2a6035d72d430d52580ee3914051af5d236061` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2fcad225517b55e82a025196ee8d8aa8309bf8a0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x303e7b1b84676b083ff4ad7d4a2625c1db5127b0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x324e00ffca960b30efef9c8915a863e121c867d4` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x33aa70383d24f2e16f303ca0141880ed1930e448` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x34eea462bbaf578745e4da6f87d3b34dc33b8392` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3647852b615c97ca23e2a3b78297f6b0ba26f81f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x38bf8afd3b9460c18d6107ac55ea07141af70491` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3965e7e5b84f0c0dfcc6f59e2de9960d4ce2df07` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3e33035e0266f8769457535f97f4045c00242cd3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3fe158fae70ad5347e801db9b2016f4a3130adcc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x431c1ce9c7798bda09e520c35ce265a0f2c98b91` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4652b03dc242cf899fff53d52aad51b70fe7a134` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x46b1a655ba0bbc02c77d933068eebe883a67e0cb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4802401beb410e4cf1fda666dbeef1176c509933` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x49e1dc7709b378f8260e4fe09f45f1997345bb60` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4d5a919e3953b39784932fa075f37230edd07ddb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4de1b68c19060db4f66de4bc6520f82997718943` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4e3413c74978a98a27fd69a8126f66ecd095b5df` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x531fcbe5623abcfcc02cabbabf4854aab7add3fd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x5412af14d12594ae8ab19c5149d26756a2314f98` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x56b0559360a714977adac28d1ce4ea30af25c9b8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x589a9d61aa51d02859a5690a554c15d2e38e510e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x59d9259f15ce7654252d782fb26fc279d431919f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x5f634292daf25eb2c9fb3babb17b066207ba2a19` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x5fc9e46907c0283e58a1a9323b3f7c2a46ac9d23` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x62014564b3b496f3e7d56037d957a2713cc21955` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x663c3c27604a62fbc63537f7f3bf25790db4f163` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6a80219197c25931618b84501f74d6e26334799a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6e7ded23805193689428f67805199c6fc1664c81` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6ed4d6785b73d6b67f9d408947e48fa0288fcb07` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x70c10437bd11287e830b796ef09267c50b2d3698` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7189f22c758ebd816856fc293d5f152493795003` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x722f36f68a18d3c35aa62644d565072f62c2b764` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7563370469a10d726ab6ba876aecb45bab8d412b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x761851ca0c37d8a16bb3ebe160c9721106058d40` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7841b18f99eb096c78db2f4ebfbfc97579631589` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7de6d23868cc6012fa1f6c262edf6dc17e93b3a7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7efbcf77f2ad71a290496136418a8a1cd679bfd1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x81adc045e0f53beb1cd074bec2ae521f96420db2` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x83fda93eb1e3a296bed7783058806983f07fed5b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x88163831e80c17e7b06e2a518cc0fa1f96d04f6e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x888ff94a36733883441d3e60a403cf44e2877c39` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8c18b6cc892e0ffa4a302d7eb164c4fc0807e8aa` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8d264e4f1f1b85f3f966915270b48925ce7ebc41` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8d56b3e5c8a756cfe46c43a7c86c56c0b463c161` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8d804ea422c2adf543154437a289d4fbc343e1cd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8ecadf2f928580ba11b420a17e116afe658a6f7e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8f83dca27d75f55755a2daaf62b9d4523042fb96` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x91d119b90d56526fa3dd339911dc4b8b906e8801` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x96947ad15cd1c205c1531d781f364785591f6393` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x979a7ebf18948c587cc21988d1d5322b41b928fc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x98029ee227655f00c623553f0d93037739545ed1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9be9b6d1faed94de1a17756821c875c3235e67c6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9ff22da1e500ae44290f606cf8c921887d83a0ff` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa016cb06fe17d3df2474745ff0bdd7b3c6350c3c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa3bf673b7bc8db4ef0bff731e7cef5f783631350` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa4f8171bb16f70984e6926edb7ceeaee9d3f3972` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa53258be67977ab2ee042b1a8d7c30d59ca74d74` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa67b2ebb287f6e669ee68a2421a63c74ed715393` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xaa6d16fce75c0f145d198d7aa105a809132956ab` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xab33c066b686d01c175d00d1674e0eb532e58360` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xad7dd9bb3b64066568f78a131091e031aecf7602` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xaf28db56ef0d590d9aea3f2ff026ff6f92b3487a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb731b5a2f10940d1177c798dde75ce017bbf637e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb925c4c1489a26343058a943db095118612458c6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xbd1336097d2ab21851d771adffca915ac0d8eb78` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc18d0077f34f73af33d2160532e7c2442b1d0676` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc52f3240203b732de9f0b8e35e189eec0635f7df` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc6ef67b999b4cc9b2b74bc4cc146cf1bbe7f9f3a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc7d01554cd42f2269819e743a1514889635462e4` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc814ed488802bd5ad7679a68e49b4ee889293cda` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcb54f9306ab3116d17710af9d235d528ea0ed06a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcdd520592d0f80ced379ed487670ee0ee04a0eb7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd21e2b2fe4a785d41647e172f22aa4fc33fcdf7c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd2814609b11dcfa4317e3fe8a99d413bb8d34ef5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd47eab44d464e9388d2ba99a254d0e79e23ece6c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd56094874e846f85912e9eb1b2baabfed1994c3d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd57e766855506d4798b11fd1f064e66fd20fe756` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd6a42278de1690248947ad5e8e7cde6420b6326f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd6dbf51a03c814d7b6188a197ace4d7d7510bbdc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd75f9557a7c082024b9cdf31f59291532e816e31` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd7a5088f236fed7c2cf4b9fac27a0f763caf4498` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd913b7dcb9cf77130e091548ad37f507d179d687` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd968c72785a5a593248768b5bfe2d0e54fe2759a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd9c4d905b6e6cadf5c28ce61ddf8ff4357db2fd6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdd7c3c3bea762288b291036a7b1319c3c0e195c5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdd9ccc95fbc59cfe94a43a28e8df2539cd13fbeb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdde448cdf2413d65283fb3fa8eec31d1ed624398` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe1da288ca72e16663c5042f1b7b9ba7f4b8e84a3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe6a40ed59b9f24063f47d1e1c6e43f6b70713625` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe7e89dfba3ae3ab417c56a5b15b51d823713891f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xeb3682939c45f5b38b8aa434c92d987ce2d90de2` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xecfeb199d52bc5ceeb5c274713ca619ac8ffd6ad` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf20579c8393d6254e7c49718109f8be3124ab8f3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf3a6ffe09ee611537f632187887b7e5e170a8759` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf3e0c90d6b2cc468fd6cff658f4779328f26c63c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf42919e35bc7b40228f93ae16a3e35552f5316bc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf43ae317d80f77b0f6551a37033debea48c352a8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf5f753ec9598d3eb903243c24f6b27fe9ad24373` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf7e25c0516ae87df1fb124c28e79b6535b4d960e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf7f4d2290c81727118425b234a659714ffe21d2d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf8fe717a9f2ada6d221e840ce5956ee2b8cd8df6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xfb0321ee696b8ac310ed88426b17b3c50d16e816` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xfb9fb62921ff6912da694dcf22361056274ef0d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BeamEx-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-BeamEx-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Beamswap-v1.0.pdf](https://raw.githubusercontent.com/peckshield/publications/65be3a3b651bba87c4a9c024ca4306adbadba040/audit_reports/PeckShield-Audit-Report-Beamswap-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |
| [sourcehat.com/audits/BeamSwap](https://sourcehat.com/audits/BeamSwap) | SourceHat | Audit | 2022-01 | stale | Direct | contract_name | 2 | n/a |
| [sourcehat.com/audits/BeamswapV3](https://sourcehat.com/audits/BeamswapV3) | SourceHat | Audit | 2023-05 | stale | Direct | contract_name | 2 | high |
| [sourcehat.com/audits/BeamSwapStaking](https://sourcehat.com/audits/BeamSwapStaking) | SourceHat | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [sourcehat.com/audits/BeamChefV3](https://sourcehat.com/audits/BeamChefV3) | SourceHat | Audit | 2024-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0xcd3b51d98478d53f4515a306be565c6eebef1d58`](./contracts/moonbeam-1284/0xcd3b51d98478d53f4515a306be565c6eebef1d58/) | BeamSwapToken | token | $37,505.06 | Verified native implementation with $37,505.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xc6ca172fc8bdb803c5e12731109744fb0200587b`](./contracts/moonbeam-1284/0xc6ca172fc8bdb803c5e12731109744fb0200587b/) | BeamChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xe31a3b6c62ebe9db3b991661530fa9871584cc85`](./contracts/moonbeam-1284/0xe31a3b6c62ebe9db3b991661530fa9871584cc85/) | BeamLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xcf8afa5be7daa15fd8bb2a3cc6203db25d764eca`](./contracts/moonbeam-1284/0xcf8afa5be7daa15fd8bb2a3cc6203db25d764eca/) | BeamSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x985bca32293a7a496300a48081947321177a86fd`](./contracts/moonbeam-1284/0x985bca32293a7a496300a48081947321177a86fd/) | BeamSwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x9f52f5370d38877e01579cd6e028bc263898877c`](./contracts/moonbeam-1284/0x9f52f5370d38877e01579cd6e028bc263898877c/) | BeamswapHybridRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x96b244391d98b62d19ae89b1a4dccf0fc56970c7`](./contracts/moonbeam-1284/0x96b244391d98b62d19ae89b1a4dccf0fc56970c7/) | BeamSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0e6580f2f84c8191d36043fb340ad9c0982dde92`](./contracts/moonbeam-1284/0x0e6580f2f84c8191d36043fb340ad9c0982dde92/) | BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xc9d9e5a2fdbb64947ab158f48eff9be9d75145ed`](./contracts/moonbeam-1284/0xc9d9e5a2fdbb64947ab158f48eff9be9d75145ed/) | BlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3deccefd66b34b64b8830b036843c9568504e217`](./contracts/moonbeam-1284/0x3deccefd66b34b64b8830b036843c9568504e217/) | EarnBLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x7baadbcf1428fb217dec3e5e917c126a5258d4dc`](./contracts/moonbeam-1284/0x7baadbcf1428fb217dec3e5e917c126a5258d4dc/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb`](./contracts/moonbeam-1284/0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb/) | FeeLessSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xb36a647418b4d1279f61ec84cb7f87c467d723ce`](./contracts/moonbeam-1284/0xb36a647418b4d1279f61ec84cb7f87c467d723ce/) | LPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa206820ec04bf892f800e5fde8a0a69624a9c072`](./contracts/moonbeam-1284/0xa206820ec04bf892f800e5fde8a0a69624a9c072/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xb6b3390b334fa2d35951e5700982d42a9e1e5771`](./contracts/moonbeam-1284/0xb6b3390b334fa2d35951e5700982d42a9e1e5771/) | ShareFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697`](./contracts/moonbeam-1284/0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697/) | StakedGlint | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x54825778d33140fe9011dcfbbbd50b924e368fa9`](./contracts/moonbeam-1284/0x54825778d33140fe9011dcfbbbd50b924e368fa9/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x2fc63231f734850c4b8c6b80c275fdb66983846f`](./contracts/moonbeam-1284/0x2fc63231f734850c4b8c6b80c275fdb66983846f/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x806f16c24e28a23fe597a794f1487274a79d20f5`](./contracts/moonbeam-1284/0x806f16c24e28a23fe597a794f1487274a79d20f5/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=4, extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
