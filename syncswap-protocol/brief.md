# Agentic Audit Brief: SyncSwap Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 9 (0 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: SyncSwap Protocol (`syncswap-protocol`)
- Website: [https://syncswap.xyz/](https://syncswap.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: linea, scroll, zksync-era
- Contract surface: 248 unique implementations (281 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $7,912,329.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SyncSwap Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across linea, scroll, zksync-era. Structural roles: 7 core, 6 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (7), supporting (6)
- Contract kinds: contract (13)
- Detected standards: ownable (9), ownable2step (5), multicall (3), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (8), permit2 (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 13; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 44 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 204 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 210
- Unique implementations: 248
- Raw deployments: 281
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CryptoView_ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1f74b44f004ef44c86ac1dd3b5cd662b12153a68` | ⚠️ Unaudited |
| FeeManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: linea `0x019f6f1d08d9b76969132aa6e29cb6a5cadc5785`; linea `0x2a1417b23ed682d0afa3c7c835381d8fccb20fe6`; linea `0x4100b81f2f4916e0c25faec13b831054495d8e17`; linea `0x49d982e2e1381a13146447568a8879b786e110a2`; linea `0xa4bc203f0d412ce654ae383063910b79711bd8a1` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8cdf4ec0d5ee197b00467a720660c44480b3ec60` | ⚠️ Unaudited |
| FeeRegistryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x396a9aa50d206f65d3fc0493dafb800eaac3a02b` | ⚠️ Unaudited |
| ForwarderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x35f714e638927c9176a0c9b46bee250ec95d1670`; linea `0x86c3e1b4a9295876f91e3ebc123e7fb7a642f59e` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x19bbe6bb16d9ff3f8c2fbfc5dfa5805dedd9a09d`; linea `0xcc00f934a7541868b9a09f98d7928f727b9e4d75` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x575443cb6b368842f77f6d2054259a4d16fc6783`; linea `0x6c39303a65671252b52c03aa07e45938f10c2994`; linea `0xe357304dc2edd2f9affbc64d69e7e278ef353431`; linea `0xf96d83a26d209ca495de75d131ad2bbcddf76e41` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: linea `0x0d23e88093a7f88aa2cd62b377e2f58db4c1e044`; linea `0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10`; linea `0x20e82b5f2f855eaefdcc8978e0a419fb6666cdf9`; linea `0x78ebfea316bba7f9b8d36b0ea01885eceb04ba5a`; linea `0xeb0fabb9c2e2b2b6bc83696bded97330e63057a7`; linea `0xee424ee3a453b91da9d64a69d4506a2351efa57f` | ⚠️ Unaudited |
| SwapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa328e968906f5c5922accc197d6dcfe2c2776eb4` | ⚠️ Unaudited |
| SyncSwapClassicPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5ec5b1e9b1bd5198343abb6e55fb695d2f7bb308` | ⚠️ Unaudited |
| SyncSwapClassicPoolDelegatedFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | 4 deployments: linea `0x9573994ae6c9b35627976d26fa89e507e71fbaa2`; linea `0xb8abaea25e42da5ac6897c9dab0a8157885fe32b`; linea `0xf9fa7150ca45cf34f499787f32c6f6181a891183`; scroll `0x76f549af692efa64952d02c075226df9878fb54c` | ⚠️ Unaudited |
| SyncSwapClassicPoolFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257922 | `0x37bac764494c8db4e54bde72f6965bea9fa0ac2d` | ⚠️ Unaudited |
| SyncSwapClassicPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x37bac764494c8db4e54bde72f6965bea9fa0ac2d` | ⚠️ Unaudited |
| SyncSwapCryptoBurn_ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf69d317825bf7524131b7c910d10930ac5c5b1f0` | ⚠️ Unaudited |
| SyncSwapCryptoPoolDelegatedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257920 | `0x1080ee857d165186af7f8d63e8ec510c28a6d1ea` | ⚠️ Unaudited |
| SyncSwapCryptoPoolDelegatedFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257917 | `0x87aeb51d606056f48d241c4072f55acd9d937018` | ⚠️ Unaudited |
| SyncSwapCryptoPoolLibrary_ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb2b3755faadaeae8c8fc7f5e107b3153283449d` | ⚠️ Unaudited |
| SyncSwapFeeManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257921 | `0x12af3ec993ec5d5bd789b3e989c9e95a2f6c586d` | ⚠️ Unaudited |
| SyncSwapFeeRecipient | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257927 | `0xa2a09f15c2ec6af1b8f9413c148334b231410bd8` | ⚠️ Unaudited |
| SyncSwapPoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: linea `0x13afc84eed9ab532eab73d9ff5d3df4bf610aad0`; linea `0x16743bed2b7d3a1a6b0a0c6528b66ab60c630cc0`; linea `0x5725d2325e3421c5debc9c943efc2502a4630c2b`; linea `0x619499b2aa7607d6e7b3b23a3590b12aa00e70aa`; linea `0xa56e8467d120825a30cdde789ab05bc236c85d29`; linea `0xbc632b9683a63ac6fa10cace8a48491f065963db` | ⚠️ Unaudited |
| SyncSwapPoolMaster | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257924 | `0x608cb7c3168427091f5994a45baf12083964b4a3` | ⚠️ Unaudited |
| SyncSwapPoolMaster | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257931 | `0xee8790ce315c0871ec612f0a6ebb5471a955b3a0` | ⚠️ Unaudited |
| SyncSwapPoolMaster_ | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257915 | `0x4318a74425e5353a1194cf26138baa87b607657c` | ⚠️ Unaudited |
| SyncSwapRangePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3f9732504c285ef578fa3e3b437eee9eceaaba27` | ⚠️ Unaudited |
| SyncSwapRangePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x1ada4a43e87084bea5787e80e8c5b56543d907ea`; linea `0x35deaf0c5ec85c116c4f16e82cd019a66e5e3c6e`; linea `0xc5916f6cf441c72daa2e2c48afc7ce642eee6690`; linea `0xd17cb65310428f2c5bd61fd98e53e659401ae4f1` | ⚠️ Unaudited |
| SyncSwapRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257926 | `0x80e38291e06339d10aab483c65695d004dbd5c69` | ⚠️ Unaudited |
| SyncSwapRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x60f9b3a705f1fbdcdee1ba2c2331b8aa8f98cf3f` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257928 | `0xc2a1947d2336b2af74d5813dc9ca6e0c3b3e8a1e` | ⚠️ Unaudited |
| SyncSwapRouterV2 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257919 | `0xfd541d0e2773a189450a70f06bc7edd3c1dc9115` | ⚠️ Unaudited |
| SyncSwapRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 6 deployments: linea `0x0b64ba230d4c9d133aa7a52ceff1620178b07c55`; linea `0x3632779e44adefc357b16e033780c0ba3b61fd9d`; linea `0x41706c84bf5e50fab5dc9dffb76ca4cc138c1cf7`; linea `0x60210ab6fd24ad8e602e81fec0980c395fc059e5`; linea `0x62f9d17d596958ed7e6e9f0b791d9b993c16f89f`; linea `0x729680cd8cb117d19fbf385eee86d4c7794755f0` | ⚠️ Unaudited |
| SyncSwapStablePoolDelegatedFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x024a096bab43587d24004c95c3e20fcb7518ad86`; linea `0x5763743b46e7f904b5a84eac734f4d663810f9a9`; linea `0x61abf754fc031c544236053495a193f3518e9101`; scroll `0xa2aca673c00495a184f88de533bba8e1b7f38d00` | ⚠️ Unaudited |
| SyncSwapVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257925 | `0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb86284160348d0727e7fc6b131812082243b4604` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x07507a719e7d040ebcbcf54715d7ce7ce5241c91` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8b49c4cbf805f3252ddbf4de465c34986707c34` | ⚠️ Unaudited |
| WETH9 | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-257930 | `0xe5d7c2a44ffddf6b295a15c148167daaaf5cf34f` | ⚠️ Unaudited |
| WrappedEther | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | scroll | unit-257916 | `0x5300000000000000000000000000000000000004` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (210)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257888 | `0x0754870c1aab00edcfabdf4e6febdd30e90f327d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257889 | `0x0a34fbdf37c246c0b401da5f00abd6529d906193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x0e595bfcafb552f83e25d24e8a383f88c1ab48a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257890 | `0x1b887a14216bdeb7f8204ee6a269bd9ff73a084c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257891 | `0x1fc09ac4b4217602bc34223859783c81310e3791` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257892 | `0x20b28b1e4665fff290650586ad76e977eab90c5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257893 | `0x2da10a1e27bf85cedd8ffb1abbe97e53391c0295` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257894 | `0x31a2c9bde9396222a07d06ed79ef1c9200303978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257895 | `0x432bcc3bc62de9186f9e8763c82d43e418681e6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257896 | `0x582ad7014c3f755fc0d29ecfc02fab4c3a2d5a3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257897 | `0x593f66b2c122bc5741d8db607a5415bdc38c5c55` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | unit-257898 | `0x5aea5775959fbc2557cc8789bc1bf90a239d9a91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257899 | `0x5b9f21d407f35b10cbfddca17d5d84b129356ea3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257900 | `0x621425a1ef6abe91058e9712575dcc4258f8d091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257901 | `0x63ad090242b4399691d3c1e2e9df4c2d88906ebb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257902 | `0x7581a80c84d7488be276e6c7b4c1206f25946502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x80115c708e12edd42e504c1cd52aea96c547c05c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257903 | `0x81251524898774f5f2fcae7e7ae86112cb5c317f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257904 | `0x877b04aa6ee60d39dccc675633157e293f6991e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257905 | `0x9b5def958d0f3b6955cbea4d5b7809b2fb26b059` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257906 | `0x9d63d318143cf14ff05f8aaa7491904a494e6f13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257907 | `0xa757ed0812092e2a8f78e6642a2a3215995a4131` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257908 | `0xbb05918e9b4ba9fe2c8384d223f0844867909ffb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257909 | `0xc6dac3a53d5d6de9d1d05aa6e28b8e9e41722601` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257910 | `0xc8a3d1d834617796cdd8c68709e9719f41cb472e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257911 | `0xecdd1c3dda6253208a0ba9cab373d802b2af58b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257912 | `0xf2dad89f2788a8cd54625c60b55cd3d2d0aca7cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257913 | `0xfd43b4db521da13490e79eb6cfba19c9b012811c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-257914 | `0xfdfe03bae6b8113ee1002d2be453fb71ca5783d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01ca2076d7d4709d53c48fbb2e9fa18bbb756f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x01d5e41d5870ba32b9fb837dcdbaa469a9a00305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d43e9627b22449a555cb4a94fbfbadeb5d4721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0a78cab89a069555a18b78537f09fab24c03decd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ba5303565df95ed65c5e4a33260ce1eafa4e017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1262c2977f07a9f700042ff781132ee79c560098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x155fe01d55b2b447ba6fb15ea1a196e3fa334bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x16c34bf9ac9d919c00571cc633f21099e79c896f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x16ce95438f0e659905157940c5788ef598d9cfd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c86b50d870b8900897d2149962a3a6ee9290172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1cf80294d639e391a98c6d67c5eceda20dc6248c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x222aa0b94e04449996947f22e393a0a0ca6a3a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x24912415fc4d14efc557262610452bdde3247e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x289670c5134bfe4cb2d320081a9369a3bb6640be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2977e576dcb453b523d8ba602701240e7f49e22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2b610aee670a0dd0e08d2e3cf1d1a17a270e8239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x326919c11140efb6dd9c07a9781c510fa45d706c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x32b8ac67ec57713c378c75317dfc6d4d7e4ea895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3307f2106c540d9547463aa02b7d0804f6fe8079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3a46e96ac4c947ba78e7a620df0d5d96c378b5e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3bf15cf7e6ee687cfdeee657cbead4db177ef55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3d7b585a835e1f37df2fe081234da0ca95d88462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4459b14cae5c8416482ecd76cfa66ba1bf8dc4d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257923 | `0x45b3200d691aafd19ebf48208f7daf8401681301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4750ba105cae71ccc5b844346b484c12a4a03dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4ebeaf7f85253b0e191f9da7d19d2b56b1fa9d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50577c64c25de78063270e8f59ba3bc738f12238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50ddda969214b8f08c1d22cc7853ce7683289595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x533d111ab6bdc581e2358eff60f0d2a8b34638ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x53c6e67be00679a960ec259479297594ecf4e5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x59ce60c033f1de2688c67d62b0524616441570f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x59eed39bbafdd619a6dc3ef0a7739e749324a412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5a8c169f23cf1dc0235ebffee1761cbae4bcf854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5baacbad95da6a33a9d0ea0a4448357cfccf9103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5ff877ccac689ea5c0dd0984a9675f827f678ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x626a86e07b9565b94f2f239467b77d70d7964420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c78b8c357287c9cac43ca037d58c1a812a241b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c979acc43792bf6661eb59d2c7132c20009ce61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6d531892364b455b194cfeef565630bcf62afc32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e5509d54c72f994f00d5a48b04822785c74970b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7a31060d8524c21496a352be65549eef1e864fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7c0a3a19354106e565dbe18dab0b7707cc4f9bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7c42a11e205ae0eab8e89687bd9523df8e652029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7f47fef65ae7fbbbae839ef79e2fca44d9be9098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8534839b83a693d470a0a27c59be5cf86c3d1af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x85dfbe5581e789f4b0f7b082a56e29e561903015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8a5ae48949ea653ce121fd460c6409a8d53bc8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8c6551c7f32c74901494ed8db34702d66ee97649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8f5970093d0e1029bf0905b9a09d9c19af3bf292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x91e3d3e51dc93b80a2ffbfdca29ebf33e132d4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x948702164dabb36acc9f4e68d8e373f4dff72b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x95e0179d6b9b9886ea29e1ac23661817d14b17b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x98cd977e2974d974fc1ed470100df839a941b6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa211df3fc0451c640eebe5dd6dbd80b7a2a1d4f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa3e16b40423b17f40c18e57f8c8ee549e6910960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa4bbe8a43bc40b8d7c0e91c632dd43f173dce4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa5541dff3a2ce73c6bd7ecc63b08ad2b2a45bfa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xab40ea4bf95ef509ffe5fe6bff0fd9591f9a3890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xab6994b20ea3a6dacb20b5e99929c90a0e073926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb45365464d8eb23d66ae4b3b16a0dfc7995d6029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb53b8ac57fc331cba0cf198b1bf6faba5960531f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb69cda9dd03ddcca5dd2c918c08754aff6dd1cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba753575c1778950e27e032545229ef9201bf072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbae656f836cb71411cc0817f96d3b61270dcd356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbe87d2faf9863130d60fe0c454b5990863d45bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc062b41186c9550c904a13353d9a06c8d9be86c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc11d558cd181a5a50c54d3677de9390333f87a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24ce2ddec8c788b8a2092041344c3b3095f2dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc3a531104bc8e6ed995839fb492fdeb7867eeb3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc5f3d4a481b7e7a3392a4ccad49ecaeacf82e562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc70a3224de690f1e0c3acf271219cf68a728d8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xccad8636caa2ef248192c7815ed594f6fbb2b8d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xceef5844ce39b0bdd4a8a645b811fb8cacf5f330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcf12b1b34340f998aaac50b11cc5d7d574ecfee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcf18a49a2262447407515e754454d10efce91656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd316032d40f0abcde40b5d9283a8ecf4ac008784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd6422b3754a5ab202a4739b2d959cc1c98d3621e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd96c372817be5c877b79057a6ea7135946f0530d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd21711490b115783be4c36509ca1459bca97261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd9635df9cd540153a6aac343aa67ece35beb58c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-257929 | `0xe4cf807e351b56720b17a59094179e7ed9dd3727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe963e120f818f15420ea3dad0083289261923c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xedbecab0cbca18efebffe39bca55a4b37c152169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xee589e91401066068af129b0005ac3ef69e3fdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf14a2d6898c7b6ff7457c14cc1f10e76003a90f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf274e2b15f9ebc7f0aa14da206fcc42362693889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf3999c8e726ab6b018662b1b19673c7b19edbe1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf5658816b278de2bd0aeca2385cd16c614fea980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf72f6f3ba7d45ebafd1c86bffaa9f3413407b87a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf7df795697d80506a86a595ce6fea3a59fa9c475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf8ad6a7a832677cd79b2e8095ab65df0688b8d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfc107a1ac9ecb840dc5be19bc0e4ad11050af398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfcc130dea7b0210e0725d3e5906804aca071c578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfed898e0d8c4a6dd1f4b8549075a3dd0f08cacd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfede7b77e9277cc556a164b683b9cd914d4d802a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x00fced86afc499616c31116a1eef26a1f2727663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x06a05357a6928940888ad9460ed53bb61f0aef6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0a78cab89a069555a18b78537f09fab24c03decd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0dd628a68be876d48b11627c63a6900aef737b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0e96a13b5caea18c6b74cb3ceb377a9566f5b043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0f927790d0467981eb8272c6a9cfa775b43b990c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x12af3ec993ec5d5bd789b3e989c9e95a2f6c586d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x12b160cbd459023265d9e1978184c45f71851901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x14f91b751c1c824236799ea091aa360deec71c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1ba29f721bd9402537c11542198d829ddfd7aeb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x213ddf5cedec279a7a2d1c1605116b7168d98f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x21d9ad6065f599944cc6c9c57cdffd7dd23d0b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x23001017eb99d57d02775c23c4ac96cf89ab9d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x24912415fc4d14efc557262610452bdde3247e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x24b546a9faee5364e9135e4ad465f8b56d93b275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x29e0c59a242676ae4f82d428c7e509fddc1937e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x326919c11140efb6dd9c07a9781c510fa45d706c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x35f714e638927c9176a0c9b46bee250ec95d1670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x36321a7330ca3575036cbdd119acc902c78f2517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x39d2e9dbd697e135e3d111f7176dbc123d6807ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3b04d4d298eac0fe0291a90fa831f65eb46686ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x435c480aa81e46297a99535b6bb2025d81ea2679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4460f0dcacbf61b1d71cbca70b7167c372b836b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x466eee909b32e20b7ce709327cd821f00048850f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x47fbbb2d199484dbba04080a804e89ec8e0c4754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x482005825f1baceb28bb5d3550134704d51284bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4b0d7cffe00efcbe53735ebe28b319f8106255fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4d6872c884bdd97e63db1022b589f4d7d6e4d29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x534c3a274877bb45483d648ca26c97de9e22ca57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x53c261daf681cabbd5ce3ae855bbe7afca72377d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x54f0e1100b25a75c162c1aa62fa7c6c165595fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5bebda7e264b03bb963cb2418f40c5ffcefb7a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5d686906d5743e08f94d5cca68a541850bae11eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x608cb7c3168427091f5994a45baf12083964b4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6275cb52518217602a1869dbd6e7e8196455e394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x63cbb9c6f7388aece0cb2b8ee03d4ec63cef40af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x693c011f4ca1ec63aa4e57581702a4e27d2b6a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6be9bab76dca64953980b335fc07dfbd176a8654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d32bb0082a3c0acac05f2af79bcd3538d70b377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7384e0f59374678d1f9ceeae0ad37176dd1c132a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x74064449fff546df74da70dcb6a70ba8594b93ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7fe6ac7a286435e7122c749345953c8848daa30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x80e38291e06339d10aab483c65695d004dbd5c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x85237fd21640b414b1101dae5c306e4e126b2709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x87624889b99601c015280e614afa7f62f5d4f203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x88a0e09d40b021c0590cf106b7f87a909b9c508c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8aa3ee6feecda061444bb40d3086f89abec4f86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8cdf4ec0d5ee197b00467a720660c44480b3ec60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8df93ef6440ec1a0e4850ebc97682bc9676bfb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x91509bcfa9a80458857b8f226fab7d7127afd0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x91e3d3e51dc93b80a2ffbfdca29ebf33e132d4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x91fd49d250df94584cfc18a46db7c777105e71b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9724ed1f36bc31563cb34a31af230997d1b38188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9b7ae18b804ee679aa94d0018f12a665d722d62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9c5d09d4a7191b7a1fc21fb1c77b1d82949e286e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9cb2ccaad728da9fa61ee554bd5940917a6e50ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9fdc8809962850271c7d1c480cec64fe0d757ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa033eabccfd9b71543e34dec43935467a230ce2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa2820697707f2ea6fb5065849ff20698cf4b61bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa2a09f15c2ec6af1b8f9413c148334b231410bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa727701bfaa356a3bf2ea64107c1da9ea2080957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa935b03854ef8c20fb10c5a709d30c9969df556b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xaaeabf86d1ffb52b562dfdbdaaef7c042887acf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xab6994b20ea3a6dacb20b5e99929c90a0e073926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xab71ab4397553952512ef3ee4b51c25c31a73f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb11042007e78be92dc1c79da1e7ef499b4b31838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb4bd5debb799eee20c4bbb8a2370641590196f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbc23700a473c90406166caab16c635c6404f28a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbf2c1a99acf82abc4181556626ab901dd76a3844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xce3464a2193e1b11d8b84190d081748f434bd580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd015f213e66c98b1b6f2de7fc61a81183512b4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd6296d3206f00df2466fd73a01cf142f97c29b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdaedecf3f1caf8d9050a0c973b77e40ba8024f69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-257918 | `0xdfb26acd0c1754194b0fbc9bca681c4321132611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe36999d58b054ee670b93c60d4199201b91ec453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe4cf807e351b56720b17a59094179e7ed9dd3727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe93d55bf9ecc788f25491ba09196a7b44eda5236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe963e120f818f15420ea3dad0083289261923c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xea6fe5e577257ca3c939da194bc061b8e9903a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xee589e91401066068af129b0005ac3ef69e3fdb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf836750d5578e5acba4b418e59c76836701b5f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfb35c48001bdb59edd14012dee73f202f53977f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfbae8c1997d528b75896a15aa4840f59258ce4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfd8e9d046dccd1c335c650ab5a37b60dfd743dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xffa89d547b0bcbc88074e3dd0383445e6b39c537` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 227
- Live contracts: 0
- Unknown liveness contracts: 227
- Source-verified contracts: 49
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=5, contamination review=6, exact address book overlap=3, source verified unclassified=36, unverified unclassified=177

Showing first 200 of 227 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| linea | candidate review | SwapLib<br>`0x7f469dd8753f29b6d7690148cbad6a8dd3e2d571` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | candidate review | SyncSwapRangePool<br>`0x3f9732504c285ef578fa3e3b437eee9eceaaba27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | candidate review | SyncSwapRangePoolFactory<br>`0x1ada4a43e87084bea5787e80e8c5b56543d907ea` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | candidate review | SyncSwapRangePoolFactory<br>`0x35deaf0c5ec85c116c4f16e82cd019a66e5e3c6e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | candidate review | SyncSwapRangePoolFactory<br>`0xd17cb65310428f2c5bd61fd98e53e659401ae4f1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | contamination review | CryptoView_<br>`0x1f74b44f004ef44c86ac1dd3b5cd662b12153a68` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | contamination review | FeeRegistryV3<br>`0x396a9aa50d206f65d3fc0493dafb800eaac3a02b` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | contamination review | NonfungibleTokenPositionDescriptorLinea<br>`0x575443cb6b368842f77f6d2054259a4d16fc6783` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | contamination review | NonfungibleTokenPositionDescriptorLinea<br>`0xe357304dc2edd2f9affbc64d69e7e278ef353431` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | contamination review | QuoterV2<br>`0x0d23e88093a7f88aa2cd62b377e2f58db4c1e044` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | exact address book overlap | SyncSwapCryptoPoolDelegatedFactory<br>`0x1080ee857d165186af7f8d63e8ec510c28a6d1ea` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | exact address book overlap | SyncSwapFeeManager<br>`0x12af3ec993ec5d5bd789b3e989c9e95a2f6c586d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | exact address book overlap | UnnamedContract<br>`0xe4cf807e351b56720b17a59094179e7ed9dd3727` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | FeeManagerV3<br>`0x019f6f1d08d9b76969132aa6e29cb6a5cadc5785` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | FeeManagerV3<br>`0x2a1417b23ed682d0afa3c7c835381d8fccb20fe6` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | FeeManagerV3<br>`0x4100b81f2f4916e0c25faec13b831054495d8e17` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | FeeManagerV3<br>`0x49d982e2e1381a13146447568a8879b786e110a2` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | FeeManagerV3<br>`0xa4bc203f0d412ce654ae383063910b79711bd8a1` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | FeeRegistry<br>`0x8cdf4ec0d5ee197b00467a720660c44480b3ec60` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | ForwarderRegistry<br>`0x35f714e638927c9176a0c9b46bee250ec95d1670` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | ForwarderRegistry<br>`0x86c3e1b4a9295876f91e3ebc123e7fb7a642f59e` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | NonfungibleTokenPositionDescriptorLinea<br>`0x6c39303a65671252b52c03aa07e45938f10c2994` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | NonfungibleTokenPositionDescriptorLinea<br>`0xf96d83a26d209ca495de75d131ad2bbcddf76e41` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | QuoterV2<br>`0x20e82b5f2f855eaefdcc8978e0a419fb6666cdf9` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | QuoterV2<br>`0x78ebfea316bba7f9b8d36b0ea01885eceb04ba5a` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | QuoterV2<br>`0xeb0fabb9c2e2b2b6bc83696bded97330e63057a7` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | QuoterV2<br>`0xee424ee3a453b91da9d64a69d4506a2351efa57f` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapClassicPoolDelegatedFactory<br>`0x9573994ae6c9b35627976d26fa89e507e71fbaa2` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapClassicPoolDelegatedFactory<br>`0xf9fa7150ca45cf34f499787f32c6f6181a891183` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapCryptoBurn_<br>`0xf69d317825bf7524131b7c910d10930ac5c5b1f0` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapCryptoPoolLibrary_<br>`0xdb2b3755faadaeae8c8fc7f5e107b3153283449d` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapPoolMaster<br>`0x13afc84eed9ab532eab73d9ff5d3df4bf610aad0` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapPoolMaster<br>`0x16743bed2b7d3a1a6b0a0c6528b66ab60c630cc0` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapPoolMaster<br>`0x5725d2325e3421c5debc9c943efc2502a4630c2b` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapPoolMaster<br>`0x619499b2aa7607d6e7b3b23a3590b12aa00e70aa` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapPoolMaster<br>`0xa56e8467d120825a30cdde789ab05bc236c85d29` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapPoolMaster<br>`0xbc632b9683a63ac6fa10cace8a48491f065963db` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapRouterV2<br>`0x60f9b3a705f1fbdcdee1ba2c2331b8aa8f98cf3f` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapRouterV3<br>`0x3632779e44adefc357b16e033780c0ba3b61fd9d` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapRouterV3<br>`0x41706c84bf5e50fab5dc9dffb76ca4cc138c1cf7` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapRouterV3<br>`0x60210ab6fd24ad8e602e81fec0980c395fc059e5` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapRouterV3<br>`0x729680cd8cb117d19fbf385eee86d4c7794755f0` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapStablePoolDelegatedFactory<br>`0x5763743b46e7f904b5a84eac734f4d663810f9a9` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | source verified unclassified | SyncSwapStablePoolDelegatedFactory<br>`0x61abf754fc031c544236053495a193f3518e9101` | non_address_book | unknown | unknown | verified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x01ca2076d7d4709d53c48fbb2e9fa18bbb756f3d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x01d5e41d5870ba32b9fb837dcdbaa469a9a00305` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x08d43e9627b22449a555cb4a94fbfbadeb5d4721` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x0a78cab89a069555a18b78537f09fab24c03decd` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x0ba5303565df95ed65c5e4a33260ce1eafa4e017` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x1262c2977f07a9f700042ff781132ee79c560098` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x155fe01d55b2b447ba6fb15ea1a196e3fa334bc8` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x16ce95438f0e659905157940c5788ef598d9cfd4` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x1c86b50d870b8900897d2149962a3a6ee9290172` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x222aa0b94e04449996947f22e393a0a0ca6a3a77` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x24912415fc4d14efc557262610452bdde3247e7d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x289670c5134bfe4cb2d320081a9369a3bb6640be` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x2977e576dcb453b523d8ba602701240e7f49e22d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x2b610aee670a0dd0e08d2e3cf1d1a17a270e8239` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x326919c11140efb6dd9c07a9781c510fa45d706c` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x32b8ac67ec57713c378c75317dfc6d4d7e4ea895` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x3307f2106c540d9547463aa02b7d0804f6fe8079` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x3a46e96ac4c947ba78e7a620df0d5d96c378b5e1` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x3bf15cf7e6ee687cfdeee657cbead4db177ef55a` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x3d7b585a835e1f37df2fe081234da0ca95d88462` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x4459b14cae5c8416482ecd76cfa66ba1bf8dc4d1` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x4750ba105cae71ccc5b844346b484c12a4a03dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x4ebeaf7f85253b0e191f9da7d19d2b56b1fa9d27` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x50577c64c25de78063270e8f59ba3bc738f12238` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x50ddda969214b8f08c1d22cc7853ce7683289595` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x533d111ab6bdc581e2358eff60f0d2a8b34638ed` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x53c6e67be00679a960ec259479297594ecf4e5a3` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x59ce60c033f1de2688c67d62b0524616441570f1` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x59eed39bbafdd619a6dc3ef0a7739e749324a412` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x5a8c169f23cf1dc0235ebffee1761cbae4bcf854` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x5baacbad95da6a33a9d0ea0a4448357cfccf9103` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x5ff877ccac689ea5c0dd0984a9675f827f678ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x626a86e07b9565b94f2f239467b77d70d7964420` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x6c78b8c357287c9cac43ca037d58c1a812a241b6` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x6c979acc43792bf6661eb59d2c7132c20009ce61` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x6d531892364b455b194cfeef565630bcf62afc32` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x6e5509d54c72f994f00d5a48b04822785c74970b` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x7a31060d8524c21496a352be65549eef1e864fb0` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x7c0a3a19354106e565dbe18dab0b7707cc4f9bd8` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x7f47fef65ae7fbbbae839ef79e2fca44d9be9098` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x8534839b83a693d470a0a27c59be5cf86c3d1af2` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x85dfbe5581e789f4b0f7b082a56e29e561903015` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x8a5ae48949ea653ce121fd460c6409a8d53bc8c4` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x8c6551c7f32c74901494ed8db34702d66ee97649` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x8f5970093d0e1029bf0905b9a09d9c19af3bf292` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x91e3d3e51dc93b80a2ffbfdca29ebf33e132d4e6` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x948702164dabb36acc9f4e68d8e373f4dff72b0c` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x95e0179d6b9b9886ea29e1ac23661817d14b17b9` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0x98cd977e2974d974fc1ed470100df839a941b6f7` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xa211df3fc0451c640eebe5dd6dbd80b7a2a1d4f3` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xa3e16b40423b17f40c18e57f8c8ee549e6910960` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xa4bbe8a43bc40b8d7c0e91c632dd43f173dce4df` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xa5541dff3a2ce73c6bd7ecc63b08ad2b2a45bfa0` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xab40ea4bf95ef509ffe5fe6bff0fd9591f9a3890` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xab6994b20ea3a6dacb20b5e99929c90a0e073926` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xb45365464d8eb23d66ae4b3b16a0dfc7995d6029` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xb53b8ac57fc331cba0cf198b1bf6faba5960531f` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xba753575c1778950e27e032545229ef9201bf072` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xbae656f836cb71411cc0817f96d3b61270dcd356` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xbe87d2faf9863130d60fe0c454b5990863d45bba` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xc062b41186c9550c904a13353d9a06c8d9be86c9` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xc11d558cd181a5a50c54d3677de9390333f87a09` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xc24ce2ddec8c788b8a2092041344c3b3095f2dd6` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xc5f3d4a481b7e7a3392a4ccad49ecaeacf82e562` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xc70a3224de690f1e0c3acf271219cf68a728d8b4` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xccad8636caa2ef248192c7815ed594f6fbb2b8d8` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xceef5844ce39b0bdd4a8a645b811fb8cacf5f330` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xcf12b1b34340f998aaac50b11cc5d7d574ecfee5` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xcf18a49a2262447407515e754454d10efce91656` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xd316032d40f0abcde40b5d9283a8ecf4ac008784` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xd6422b3754a5ab202a4739b2d959cc1c98d3621e` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xd96c372817be5c877b79057a6ea7135946f0530d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xdd21711490b115783be4c36509ca1459bca97261` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xdd9635df9cd540153a6aac343aa67ece35beb58c` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xe963e120f818f15420ea3dad0083289261923c2e` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xedbecab0cbca18efebffe39bca55a4b37c152169` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xee589e91401066068af129b0005ac3ef69e3fdb4` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xf14a2d6898c7b6ff7457c14cc1f10e76003a90f3` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xf274e2b15f9ebc7f0aa14da206fcc42362693889` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xf3999c8e726ab6b018662b1b19673c7b19edbe1c` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xf72f6f3ba7d45ebafd1c86bffaa9f3413407b87a` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xf7df795697d80506a86a595ce6fea3a59fa9c475` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xf8ad6a7a832677cd79b2e8095ab65df0688b8d25` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xfc107a1ac9ecb840dc5be19bc0e4ad11050af398` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xfcc130dea7b0210e0725d3e5906804aca071c578` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | unverified unclassified | UnnamedContract<br>`0xfed898e0d8c4a6dd1f4b8549075a3dd0f08cacd8` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| linea | contamination review | TickLens<br>`0xb86284160348d0727e7fc6b131812082243b4604` | non_address_book | unknown | unknown | verified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | source verified unclassified | NonfungiblePositionManager<br>`0xcc00f934a7541868b9a09f98d7928f727b9e4d75` | non_address_book | unknown | unknown | verified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | source verified unclassified | QuoterV2<br>`0x1e662e74074465dca2d3c4a1c6e78a1a8f6c0b10` | non_address_book | unknown | unknown | verified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | source verified unclassified | SwapRouter02<br>`0xa328e968906f5c5922accc197d6dcfe2c2776eb4` | non_address_book | unknown | unknown | verified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | source verified unclassified | UniversalRouter<br>`0x07507a719e7d040ebcbcf54715d7ce7ce5241c91` | non_address_book | unknown | unknown | verified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | source verified unclassified | V3Migrator<br>`0xa8b49c4cbf805f3252ddbf4de465c34986707c34` | non_address_book | unknown | unknown | verified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | unverified unclassified | UnnamedContract<br>`0x16c34bf9ac9d919c00571cc633f21099e79c896f` | non_address_book | unknown | unknown | unverified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | unverified unclassified | UnnamedContract<br>`0x7c42a11e205ae0eab8e89687bd9523df8e652029` | non_address_book | unknown | unknown | unverified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | unverified unclassified | UnnamedContract<br>`0xb69cda9dd03ddcca5dd2c918c08754aff6dd1cda` | non_address_book | unknown | unknown | unverified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | unverified unclassified | UnnamedContract<br>`0xc3a531104bc8e6ed995839fb492fdeb7867eeb3a` | non_address_book | unknown | unknown | unverified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | unverified unclassified | UnnamedContract<br>`0xf5658816b278de2bd0aeca2385cd16c614fea980` | non_address_book | unknown | unknown | unverified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| linea | unverified unclassified | UnnamedContract<br>`0xfede7b77e9277cc556a164b683b9cd914d4d802a` | non_address_book | unknown | unknown | unverified | n/a | `0x83fd7b993f408e23d4c146896a951830619a5bc9` |
| scroll | unverified unclassified | UnnamedContract<br>`0x00fced86afc499616c31116a1eef26a1f2727663` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x06a05357a6928940888ad9460ed53bb61f0aef6d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0a78cab89a069555a18b78537f09fab24c03decd` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0dd628a68be876d48b11627c63a6900aef737b42` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0e96a13b5caea18c6b74cb3ceb377a9566f5b043` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x0f927790d0467981eb8272c6a9cfa775b43b990c` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x12af3ec993ec5d5bd789b3e989c9e95a2f6c586d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x12b160cbd459023265d9e1978184c45f71851901` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x14f91b751c1c824236799ea091aa360deec71c8d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x1ba29f721bd9402537c11542198d829ddfd7aeb4` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x213ddf5cedec279a7a2d1c1605116b7168d98f18` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x21d9ad6065f599944cc6c9c57cdffd7dd23d0b3e` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x23001017eb99d57d02775c23c4ac96cf89ab9d43` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x24912415fc4d14efc557262610452bdde3247e7d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x24b546a9faee5364e9135e4ad465f8b56d93b275` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x29e0c59a242676ae4f82d428c7e509fddc1937e7` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x326919c11140efb6dd9c07a9781c510fa45d706c` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x35f714e638927c9176a0c9b46bee250ec95d1670` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x36321a7330ca3575036cbdd119acc902c78f2517` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x39d2e9dbd697e135e3d111f7176dbc123d6807ca` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x3b04d4d298eac0fe0291a90fa831f65eb46686ee` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x435c480aa81e46297a99535b6bb2025d81ea2679` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x4460f0dcacbf61b1d71cbca70b7167c372b836b6` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x466eee909b32e20b7ce709327cd821f00048850f` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x47fbbb2d199484dbba04080a804e89ec8e0c4754` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x482005825f1baceb28bb5d3550134704d51284bb` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x4b0d7cffe00efcbe53735ebe28b319f8106255fe` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x4d6872c884bdd97e63db1022b589f4d7d6e4d29b` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x534c3a274877bb45483d648ca26c97de9e22ca57` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x53c261daf681cabbd5ce3ae855bbe7afca72377d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x54f0e1100b25a75c162c1aa62fa7c6c165595fd1` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x5bebda7e264b03bb963cb2418f40c5ffcefb7a9e` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x5d686906d5743e08f94d5cca68a541850bae11eb` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x608cb7c3168427091f5994a45baf12083964b4a3` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6275cb52518217602a1869dbd6e7e8196455e394` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x63cbb9c6f7388aece0cb2b8ee03d4ec63cef40af` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x693c011f4ca1ec63aa4e57581702a4e27d2b6a00` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6be9bab76dca64953980b335fc07dfbd176a8654` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6d32bb0082a3c0acac05f2af79bcd3538d70b377` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x7384e0f59374678d1f9ceeae0ad37176dd1c132a` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x74064449fff546df74da70dcb6a70ba8594b93ec` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x7fe6ac7a286435e7122c749345953c8848daa30a` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x80e38291e06339d10aab483c65695d004dbd5c69` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x85237fd21640b414b1101dae5c306e4e126b2709` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x87624889b99601c015280e614afa7f62f5d4f203` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x88a0e09d40b021c0590cf106b7f87a909b9c508c` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x8aa3ee6feecda061444bb40d3086f89abec4f86d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x8cdf4ec0d5ee197b00467a720660c44480b3ec60` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x8df93ef6440ec1a0e4850ebc97682bc9676bfb5d` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x91509bcfa9a80458857b8f226fab7d7127afd0e7` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x91e3d3e51dc93b80a2ffbfdca29ebf33e132d4e6` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x91fd49d250df94584cfc18a46db7c777105e71b6` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9724ed1f36bc31563cb34a31af230997d1b38188` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9b7ae18b804ee679aa94d0018f12a665d722d62e` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9c5d09d4a7191b7a1fc21fb1c77b1d82949e286e` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9cb2ccaad728da9fa61ee554bd5940917a6e50ed` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9fdc8809962850271c7d1c480cec64fe0d757ffa` | non_address_book | unknown | unknown | unverified | n/a | `0x000002c34bae6dd7bec72acba6aaac1e01a359de` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SyncSwap-v1.0.pdf](https://github.com/syncswap/reports/blob/main/PeckShield-Audit-Report-SyncSwap-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [SyncSwap - Zellic Audit Report.pdf](https://github.com/syncswap/reports/blob/main/SyncSwap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [MetaScan_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 21 | n/a |
| [MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [MetaScan_Security_Prover_Report_contracts_202304040106.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_contracts_202304040106.pdf) | MetaScan | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf](https://github.com/syncswap/reports/blob/main/MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf) | MetaScan | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202304231022.pdf](https://github.com/syncswap/reports/blob/main/202304231022.pdf) | Unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [reports (GitHub directory)](https://github.com/syncswap/reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf — no match: Scope explicitly lists 5 contracts from file paths; ERC20Permit2 is a contract mentioned as a target in a finding but not in scope list; included as it is audited.
- [2072] SyncSwap - Zellic Audit Report.pdf — no match: No reason recorded
- [2073] MetaScan_Report_core-contracts_202303161916.pdf — no match: No reason recorded
- [2074] MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf — no match: No reason recorded
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf — no match: The report mentions 'contracts' as the project name and codebase path, but no specific contract names are listed in scope. The date is extracted from the header: 'April 4, 2023'.
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf — no match: The report mentions 'core-contracts' as the project name but does not list specific contract names or files in scope. No contracts are explicitly identified.
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf — no match: No scope section or contract names found in the report text.
- [2078] 202304231022.pdf — no match: No explicit scope section; contracts inferred from findings lines references. Audit date from cover page.
- [14423] reports (GitHub directory) — no match: The provided text is a GitHub repository listing with file names but no actual audit report content. No contracts in scope or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapVoter | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapGauge | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | SyncSwapBribe | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | VortexToken | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | VortexDividends | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-SyncSwap-v1.0.pdf | ERC20Permit2 | unmatched — not counted | — | mentioned as target in finding PVE-002 | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| SyncSwap - Zellic Audit Report.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | BasePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ECDSA | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ERC20Permit2 | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ForwarderRegistry | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | IPool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Multicall | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Ownable | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | Pausable | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SignatureChecker | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | StableMath | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapClassicPoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapFeeManager | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapFeeRecipient | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapPoolMaster | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapRouter | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapStablePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| MetaScan_Report_core-contracts_202303161916.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | BasePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ECDSA | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ERC20Permit2 | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ForwarderRegistry | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | IPool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Math | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Multicall | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Ownable | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | Pausable | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SignatureChecker | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | StableMath | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapClassicPool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapClassicPoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapFeeManager | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapFeeRecipient | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapPoolMaster | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapRouter | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapStablePool | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapStablePoolFactory | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | SyncSwapVault | unmatched — not counted | — | — | no |
| MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf | VaultFlashLoans | unmatched — not counted | — | — | no |
| 202304231022.pdf | SyncSwapPadToken | unmatched — not counted | — | mentioned in finding SYNCSWAP-1 lines reference | no |
| 202304231022.pdf | SyncSwapLunchPool | unmatched — not counted | — | mentioned in finding SYNCSWAP-2 lines reference | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 211 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 55 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [2071] PeckShield-Audit-Report-SyncSwap-v1.0.pdf
- [2072] SyncSwap - Zellic Audit Report.pdf
- [2073] MetaScan_Report_core-contracts_202303161916.pdf
- [2074] MetaScan_Security_Analyzer_Report_core-contracts_202303161916.pdf
- [2075] MetaScan_Security_Prover_Report_contracts_202304040106.pdf
- [2076] MetaScan_Security_Prover_Report_core-contracts_202303161916.pdf
- [2077] MetaScan_Open_Source_Analyzer_Report_core-contracts_202303161916.pdf
- [2078] 202304231022.pdf
- [14423] reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
