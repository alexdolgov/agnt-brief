# Agentic Audit Brief: SyncSwap Protocol

## Project Overview

- Project: SyncSwap Protocol (`syncswap-protocol`)
- Website: [https://syncswap.xyz/](https://syncswap.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.385Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: linea, scroll, zksync-era
- Contract surface: 135 unique implementations (144 raw deployments)
- DeFi Llama TVL: $7,912,329.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 34 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 16 common project-authored base contract(s) (basepoolfactory, v2swaprouter, v3swaprouter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 182; live-surface contracts included: 144 (20 live, 124 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/15 (33.3%)
- Deployed-live implementations: 15 of 135 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/17
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 118
- Unique implementations: 135
- Raw deployments: 144
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MetaScan | Tier 2 | 5 | 29.4% | 2023-04 |
| Zellic | Tier 2 | 1 | 5.9% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SyncSwapClassicPoolFactory | registry | linea | n/a | 2 deployments: linea [`0x37bac764494c8db4e54bde72f6965bea9fa0ac2d`](./contracts/linea-59144/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/); scroll [`0x37bac764494c8db4e54bde72f6965bea9fa0ac2d`](./contracts/scroll-534352/0x37bac764494c8db4e54bde72f6965bea9fa0ac2d/) | ✅ Audited |
| SyncSwapFeeRecipient | operational_periphery | linea | n/a | [`0xa2a09f15c2ec6af1b8f9413c148334b231410bd8`](./contracts/linea-59144/0xa2a09f15c2ec6af1b8f9413c148334b231410bd8/) | ✅ Audited |
| SyncSwapPoolMaster | core_logic | linea | n/a | 2 deployments: linea [`0x608cb7c3168427091f5994a45baf12083964b4a3`](./contracts/linea-59144/0x608cb7c3168427091f5994a45baf12083964b4a3/); linea `0xee8790ce315c0871ec612f0a6ebb5471a955b3a0` | ✅ Audited |
| SyncSwapRouter | adapter | linea | n/a | [`0x80e38291e06339d10aab483c65695d004dbd5c69`](./contracts/linea-59144/0x80e38291e06339d10aab483c65695d004dbd5c69/) | ✅ Audited |
| SyncSwapVault | core_logic | linea | n/a | [`0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b`](./contracts/linea-59144/0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | governance | linea | n/a | [`0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d`](./contracts/linea-59144/0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d/) | ⚠️ Unaudited |
| SwapLib | unknown | linea | n/a | [`0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571`](./contracts/linea-59144/0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571/) | ⚠️ Unaudited |
| SyncSwapClassicPool | core_logic | linea | n/a | [`0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308`](./contracts/linea-59144/0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308/) | ⚠️ Unaudited |
| SyncSwapClassicPoolDelegatedFactory | registry | scroll | n/a | 2 deployments: linea `0xb8abaea25e42da5ac6897c9dab0a8157885fe32b`; scroll [`0x76f549af692efa64952d02c075226df9878fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | ⚠️ Unaudited |
| SyncSwapPoolMaster_ | core_logic | scroll | n/a | [`0x4318a74425e5353a1194cf26138baa87b607657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | ⚠️ Unaudited |
| SyncSwapRangePool | unknown | linea | n/a | [`0x3f9732504c285ef578fa3e3b437eee9eceaaba27`](./contracts/linea-59144/0x3f9732504c285ef578fa3e3b437eee9eceaaba27/) | ⚠️ Unaudited |
| SyncSwapRangePoolFactory | unknown | linea | n/a | 4 deployments: linea [`0x1ada4a43e87084bea5787e80e8c5b56543d907ea`](./contracts/linea-59144/0x1ada4a43e87084bea5787e80e8c5b56543d907ea/); linea `0x35deaf0c5ec85c116c4f16e82cd019a66e5e3c6e`; linea `0xc5916f6cf441c72daa2e2c48afc7ce642eee6690`; linea `0xd17cb65310428f2c5bd61fd98e53e659401ae4f1` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | linea | n/a | 2 deployments: linea [`0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e`](./contracts/linea-59144/0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e/); scroll `0xfd541d0e2773a189450a70f06bc7edd3c1dc9115` | ⚠️ Unaudited |
| SyncSwapRouterV3 | adapter | linea | n/a | 2 deployments: linea [`0x0b64ba230d4c9d133aa7a52ceff1620178b07c55`](./contracts/linea-59144/0x0b64ba230d4c9d133aa7a52ceff1620178b07c55/); linea `0x62f9d17d596958ed7e6e9f0b791d9b993c16f89f` | ⚠️ Unaudited |
| SyncSwapStablePoolDelegatedFactory | registry | linea | n/a | 2 deployments: linea [`0x024a096bab43587d24004c95c3e20fcb7518ad86`](./contracts/linea-59144/0x024a096bab43587d24004c95c3e20fcb7518ad86/); scroll `0xa2aca673c00495a184f88de533bba8e1b7f38d00` | ⚠️ Unaudited |
| WETH9 | token | linea | n/a | [`0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f`](./contracts/linea-59144/0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f/) | ⚠️ Unaudited |
| WrappedEther | unknown | scroll | n/a | [`0x5300000000000000000000000000000000000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (118)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0x0a34fbdf37c246c0b401da5f00abd6529d906193` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0e595bfcafb552f83e25d24e8a383f88c1ab48a4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1b887a14216bdeb7f8204ee6a269bd9ff73a084c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x1fc09ac4b4217602bc34223859783c81310e3791` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x2da10a1e27bf85cedd8ffb1abbe97e53391c0295` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x432bcc3bc62de9186f9e8763c82d43e418681e6c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x582ad7014c3f755fc0d29ecfc02fab4c3a2d5a3d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x593f66b2c122bc5741d8db607a5415bdc38c5c55` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5aea5775959fbc2557cc8789bc1bf90a239d9a91` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x621425a1ef6abe91058e9712575dcc4258f8d091` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x63ad090242b4399691d3c1e2e9df4c2d88906ebb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7581a80c84d7488be276e6c7b4c1206f25946502` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x80115c708e12edd42e504c1cd52aea96c547c05c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9b5def958d0f3b6955cbea4d5b7809b2fb26b059` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9d63d318143cf14ff05f8aaa7491904a494e6f13` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa757ed0812092e2a8f78e6642a2a3215995a4131` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbb05918e9b4ba9fe2c8384d223f0844867909ffb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc6dac3a53d5d6de9d1d05aa6e28b8e9e41722601` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc8a3d1d834617796cdd8c68709e9719f41cb472e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xecdd1c3dda6253208a0ba9cab373d802b2af58b2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf2dad89f2788a8cd54625c60b55cd3d2d0aca7cb` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfdfe03bae6b8113ee1002d2be453fb71ca5783d3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x01ca2076d7d4709d53c48fbb2e9fa18bbb756f3d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x01d5e41d5870ba32b9fb837dcdbaa469a9a00305` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x08d43e9627b22449a555cb4a94fbfbadeb5d4721` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0a78cab89a069555a18b78537f09fab24c03decd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0ba5303565df95ed65c5e4a33260ce1eafa4e017` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1262c2977f07a9f700042ff781132ee79c560098` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x155fe01d55b2b447ba6fb15ea1a196e3fa334bc8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x16c34bf9ac9d919c00571cc633f21099e79c896f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x16ce95438f0e659905157940c5788ef598d9cfd4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1c86b50d870b8900897d2149962a3a6ee9290172` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1cf80294d639e391a98c6d67c5eceda20dc6248c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x222aa0b94e04449996947f22e393a0a0ca6a3a77` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x24912415fc4d14efc557262610452bdde3247e7d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x289670c5134bfe4cb2d320081a9369a3bb6640be` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2977e576dcb453b523d8ba602701240e7f49e22d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2b610aee670a0dd0e08d2e3cf1d1a17a270e8239` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x326919c11140efb6dd9c07a9781c510fa45d706c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x32b8ac67ec57713c378c75317dfc6d4d7e4ea895` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3307f2106c540d9547463aa02b7d0804f6fe8079` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3a46e96ac4c947ba78e7a620df0d5d96c378b5e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3bf15cf7e6ee687cfdeee657cbead4db177ef55a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3d7b585a835e1f37df2fe081234da0ca95d88462` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4459b14cae5c8416482ecd76cfa66ba1bf8dc4d1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x45b3200d691aafd19ebf48208f7daf8401681301` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4750ba105cae71ccc5b844346b484c12a4a03dc6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4ebeaf7f85253b0e191f9da7d19d2b56b1fa9d27` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50577c64c25de78063270e8f59ba3bc738f12238` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50ddda969214b8f08c1d22cc7853ce7683289595` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x533d111ab6bdc581e2358eff60f0d2a8b34638ed` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x53c6e67be00679a960ec259479297594ecf4e5a3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x59ce60c033f1de2688c67d62b0524616441570f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x59eed39bbafdd619a6dc3ef0a7739e749324a412` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5a8c169f23cf1dc0235ebffee1761cbae4bcf854` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5baacbad95da6a33a9d0ea0a4448357cfccf9103` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5ff877ccac689ea5c0dd0984a9675f827f678ab1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x626a86e07b9565b94f2f239467b77d70d7964420` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6c78b8c357287c9cac43ca037d58c1a812a241b6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6c979acc43792bf6661eb59d2c7132c20009ce61` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6d531892364b455b194cfeef565630bcf62afc32` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6e5509d54c72f994f00d5a48b04822785c74970b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7a31060d8524c21496a352be65549eef1e864fb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7c0a3a19354106e565dbe18dab0b7707cc4f9bd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7c42a11e205ae0eab8e89687bd9523df8e652029` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7f47fef65ae7fbbbae839ef79e2fca44d9be9098` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8534839b83a693d470a0a27c59be5cf86c3d1af2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x85dfbe5581e789f4b0f7b082a56e29e561903015` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8a5ae48949ea653ce121fd460c6409a8d53bc8c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8c6551c7f32c74901494ed8db34702d66ee97649` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8f5970093d0e1029bf0905b9a09d9c19af3bf292` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x91e3d3e51dc93b80a2ffbfdca29ebf33e132d4e6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x948702164dabb36acc9f4e68d8e373f4dff72b0c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x95e0179d6b9b9886ea29e1ac23661817d14b17b9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x98cd977e2974d974fc1ed470100df839a941b6f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa211df3fc0451c640eebe5dd6dbd80b7a2a1d4f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa3e16b40423b17f40c18e57f8c8ee549e6910960` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa4bbe8a43bc40b8d7c0e91c632dd43f173dce4df` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa5541dff3a2ce73c6bd7ecc63b08ad2b2a45bfa0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xab40ea4bf95ef509ffe5fe6bff0fd9591f9a3890` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xab6994b20ea3a6dacb20b5e99929c90a0e073926` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb45365464d8eb23d66ae4b3b16a0dfc7995d6029` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb53b8ac57fc331cba0cf198b1bf6faba5960531f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb69cda9dd03ddcca5dd2c918c08754aff6dd1cda` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba753575c1778950e27e032545229ef9201bf072` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbae656f836cb71411cc0817f96d3b61270dcd356` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbe87d2faf9863130d60fe0c454b5990863d45bba` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc062b41186c9550c904a13353d9a06c8d9be86c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc11d558cd181a5a50c54d3677de9390333f87a09` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc24ce2ddec8c788b8a2092041344c3b3095f2dd6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc3a531104bc8e6ed995839fb492fdeb7867eeb3a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc5f3d4a481b7e7a3392a4ccad49ecaeacf82e562` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc70a3224de690f1e0c3acf271219cf68a728d8b4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xccad8636caa2ef248192c7815ed594f6fbb2b8d8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xceef5844ce39b0bdd4a8a645b811fb8cacf5f330` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcf12b1b34340f998aaac50b11cc5d7d574ecfee5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcf18a49a2262447407515e754454d10efce91656` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd316032d40f0abcde40b5d9283a8ecf4ac008784` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd6422b3754a5ab202a4739b2d959cc1c98d3621e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd96c372817be5c877b79057a6ea7135946f0530d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd21711490b115783be4c36509ca1459bca97261` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd9635df9cd540153a6aac343aa67ece35beb58c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe4cf807e351b56720b17a59094179e7ed9dd3727` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe963e120f818f15420ea3dad0083289261923c2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xedbecab0cbca18efebffe39bca55a4b37c152169` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xee589e91401066068af129b0005ac3ef69e3fdb4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf14a2d6898c7b6ff7457c14cc1f10e76003a90f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf274e2b15f9ebc7f0aa14da206fcc42362693889` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf3999c8e726ab6b018662b1b19673c7b19edbe1c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf5658816b278de2bd0aeca2385cd16c614fea980` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf72f6f3ba7d45ebafd1c86bffaa9f3413407b87a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf7df795697d80506a86a595ce6fea3a59fa9c475` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf8ad6a7a832677cd79b2e8095ab65df0688b8d25` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfc107a1ac9ecb840dc5be19bc0e4ad11050af398` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfcc130dea7b0210e0725d3e5906804aca071c578` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfed898e0d8c4a6dd1f4b8549075a3dd0f08cacd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfede7b77e9277cc556a164b683b9cd914d4d802a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xdfb26acd0c1754194b0fbc9bca681c4321132611` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SyncSwap-v1.0.pdf](https://github.com/syncswap/reports/blob/main/PeckShield-Audit-Report-SyncSwap-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [SyncSwap - Zellic Audit Report.pdf](https://github.com/syncswap/reports/blob/main/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [MetaScan_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 5 | n/a |
| [MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | contract_name | 5 | n/a |
| [MetaScan_Security_Prover_Report_contracts_202304040106.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_contracts_202304040106.pdf) | MetaScan | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [202304231022.pdf](https://github.com/syncswap/reports/blob/main/202304231022.pdf) | Unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [reports (GitHub directory)](https://github.com/syncswap/reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d`](./contracts/linea-59144/0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571`](./contracts/linea-59144/0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571/) | SwapLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308`](./contracts/linea-59144/0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308/) | SyncSwapClassicPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x76f549af692efa64952d02c075226df9878fb54c`](./contracts/scroll-534352/0x76f549af692efa64952d02c075226df9878fb54c/) | SyncSwapClassicPoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x4318a74425e5353a1194cf26138baa87b607657c`](./contracts/scroll-534352/0x4318a74425e5353a1194cf26138baa87b607657c/) | SyncSwapPoolMaster_ | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3f9732504c285ef578fa3e3b437eee9eceaaba27`](./contracts/linea-59144/0x3f9732504c285ef578fa3e3b437eee9eceaaba27/) | SyncSwapRangePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1ada4a43e87084bea5787e80e8c5b56543d907ea`](./contracts/linea-59144/0x1ada4a43e87084bea5787e80e8c5b56543d907ea/) | SyncSwapRangePoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e`](./contracts/linea-59144/0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e/) | SyncSwapRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b64ba230d4c9d133aa7a52ceff1620178b07c55`](./contracts/linea-59144/0x0b64ba230d4c9d133aa7a52ceff1620178b07c55/) | SyncSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x024a096bab43587d24004c95c3e20fcb7518ad86`](./contracts/linea-59144/0x024a096bab43587d24004c95c3e20fcb7518ad86/) | SyncSwapStablePoolDelegatedFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f`](./contracts/linea-59144/0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x5300000000000000000000000000000000000004`](./contracts/scroll-534352/0x5300000000000000000000000000000000000004/) | WrappedEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=11

Zero-match audit list:

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf
- [2078] 202304231022.pdf
- [14423] reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
