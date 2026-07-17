# Agentic Audit Brief: Shadow Exchange

## Project Overview

- Project: Shadow Exchange (`shadow-exchange`)
- Website: [https://www.shadow.so](https://www.shadow.so)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.348Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: sonic
- Contract surface: 66 unique implementations (144 raw deployments)
- DeFi Llama TVL: $3,440,156.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 81 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 10 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 20 common project-authored base contract(s) (peripheryimmutablestate, poolinitializer, liquiditymanagement). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 434; live-surface contracts included: 144 (111 live, 33 unknown).
- Excluded by liveness: 290 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/31 (38.7%)
- Deployed-live implementations: 33 of 66 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/33
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 66
- Raw deployments: 144
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 38.7% (Code4rena, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 9 | 27.3% | 2024-10 |
| Spearbit | Tier 1 | 5 | 15.2% | 2025-10 |
| Consensys Diligence | Tier 1 | 4 | 12.1% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeCollector | unknown | sonic | n/a | 6 deployments: sonic [`0x6a4400157291d1ff339188eca407011c7429c9c5`](./contracts/sonic-146/0x6a4400157291d1ff339188eca407011c7429c9c5/); sonic `0x949e7b2f3f66eae761a9397346ddbd719f046c0e`; sonic `0xa3c90f253cf47a946ecc9d7d5e7f395e03bdd8f7`; sonic `0xbf9ab1b18f9e943404e794bdfe9b5aac012fa017`; sonic `0xcc0365f8f453c55ea7471c9f89767928c8f8d27f`; sonic `0xf5228b0cca68c4db05928dd6d6cf3f5836cb38a0` | ✅ Audited |
| GaugeV3 | unknown | sonic | n/a | 2 deployments: sonic [`0x3ff6378aee1b1c580bd345f74d7c2cdcd9fbee12`](./contracts/sonic-146/0x3ff6378aee1b1c580bd345f74d7c2cdcd9fbee12/); sonic `0x553ad129c3312fbd1bb9e09ece6fbeaa151bdb85` | ✅ Audited |
| GaugeV3 | unknown | sonic | n/a | [`0x452f378db86f6ef98731cdeb8344d8c171b6968c`](./contracts/sonic-146/0x452f378db86f6ef98731cdeb8344d8c171b6968c/) | ✅ Audited |
| NonfungiblePositionManager | unknown | sonic | n/a | 13 deployments: sonic [`0x002ee63dfec7bc83a2f5c0049929c04e60b00985`](./contracts/sonic-146/0x002ee63dfec7bc83a2f5c0049929c04e60b00985/); sonic `0x10accea52906c93ab5481168251fde64520bb6d9`; sonic `0x20547b278807c4a6fa0a388422ca77705c5e925a`; sonic `0x3b3699b2d286f1f60d8fb48ba3af646adfcee8ea`; sonic `0x5f477c5dfb9ed6c5e2923414b6a8dc51c976f847`; sonic `0x8850a36a5287ec9a8dcdd225a35e6e423bad7176`; sonic `0xa3f3b8924f1e490917ef69712c7dd546984a5866`; sonic `0xa829e3b6fed5c057c282c0f83aa6ddc0fcc87713`; sonic `0xb3154c2e44abc2aaa6e184cd5615fecbc189f5df`; sonic `0xbca6a21076e5e02cb5555f2b6745aab4743930d7`; sonic `0xd3fdf8eed3d8417eef217161a620457826589f2f`; sonic `0xd7e648256b28135dfcd9ffafe7ef7c10ac91ae8e`; sonic `0xf9f98bcba1b67ceb0bc123d9db73d889b4543874` | ✅ Audited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406`](./contracts/sonic-146/0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406/) | ✅ Audited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0xa57fa38b3fd45922394e9e1077748a2383f1542e`](./contracts/sonic-146/0xa57fa38b3fd45922394e9e1077748a2383f1542e/) | ✅ Audited |
| Position | unknown | sonic | n/a | [`0x324963c267c354c7660ce8ca3f5f167e05649970`](./contracts/sonic-146/0x324963c267c354c7660ce8ca3f5f167e05649970/) | ✅ Audited |
| RamsesV3Factory | unknown | sonic | n/a | 12 deployments: sonic [`0x209345d63c4629b46816d85c9e53f076036c7f75`](./contracts/sonic-146/0x209345d63c4629b46816d85c9e53f076036c7f75/); sonic `0x20b7703ce305366e4dbdad99e3181a58835d1f5a`; sonic `0x6a216eddec4443d57a305e2a2d16925fe7fd09e8`; sonic `0x73e326f39a80beb1a09eb5bdf6d8858fd46297e1`; sonic `0x8368218a93872e90f89abb0bb3c625652990aa5b`; sonic `0x9d2dfb536dd93b168b8b9bff3590bd16e78aeae5`; sonic `0xb2453885176bf8895c5f2b084138256aa3886e87`; sonic `0xbc2c6648d17896b468c50905a884180c257e8f7e`; sonic `0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7`; sonic `0xed147bc254e9f0887365c1c6b7830bbedebb9bef`; sonic `0xed55fa4772cbb9f45ea8118a39cf640df2fdb2dc`; sonic `0xff1a32f42cad6c3c70af3fbceb2f3a24a87d6356` | ✅ Audited |
| RamsesV3Pool | core_logic | sonic | n/a | 2 deployments: sonic [`0x092c0b146201bb16d9a37cfc0a7310b05fc8799b`](./contracts/sonic-146/0x092c0b146201bb16d9a37cfc0a7310b05fc8799b/); sonic `0x9053fe060f412ad5677f934f89e07524343ee8e7` | ✅ Audited |
| RamsesV3PoolDeployer | unknown | sonic | n/a | 12 deployments: sonic [`0x04cad83faa77098a1726fe7702d4b9935e131ab9`](./contracts/sonic-146/0x04cad83faa77098a1726fe7702d4b9935e131ab9/); sonic `0x2207b730d39624bf5733d7ef3a22c8789b0854d7`; sonic `0x310e977af8b6667e763572de01adc0a23da2368c`; sonic `0x32f4171689eba852bb77832ef01a973a577a2344`; sonic `0x4c0a98ef13e29fcf8544256007bdf58c58bea3b6`; sonic `0x737e6e517ce63a77aa0311f339c369c94b3e47da`; sonic `0x8bbdc15759a8ecf99a92e004e0c64ea9a5142d59`; sonic `0x9e0115c2280f4066a903fc6dadc6f12524efe671`; sonic `0xac8928aa7d2058db2b0e8f0fac4058ff45067a84`; sonic `0xc1747e43f2e07c0c146fd070320430c551d77156`; sonic `0xe6e4619b128e55ef21c72d4ba3d012eb1de63d7d`; sonic `0xf04581d79e340f7e944cf3318c832007050db8c8` | ✅ Audited |
| VoteModule | unknown | sonic | n/a | 4 deployments: sonic [`0x1bc0166f81bdfba98aa13493916895e169d10f66`](./contracts/sonic-146/0x1bc0166f81bdfba98aa13493916895e169d10f66/); sonic `0x57f518dc7d37405602f44054ead3c06a25aca0ef`; sonic `0xdcb5a24ec708cc13cee12bfe6799a78a79b666b4`; sonic `0xf7a585932b4e3b121fe1af8edd4773a49313656c` | ✅ Audited |
| Voter | unknown | sonic | n/a | 18 deployments: sonic [`0x005a44fb100ebb756a8a14f439dda3ee465ed32f`](./contracts/sonic-146/0x005a44fb100ebb756a8a14f439dda3ee465ed32f/); sonic `0x03171ac8a281731728ca4d96ccb1b95f8dc644b5`; sonic `0x06d3c0f3b6766b7b2c0323bd43b886b650feca4e`; sonic `0x1172aaaa62644a79c96717112a84bdd4f1af3513`; sonic `0x1996196a9fdee4fb14931adb171ad3be966a320f`; sonic `0x1f4e3711e76d7893231e4e525fbdc2c8a34b9335`; sonic `0x27ffc897ce020fd0547492d4a1f8e4dad0f7fdf3`; sonic `0x348d9bef98af9d08a8c7fd8530d1fa7728de4d6a`; sonic `0x3af1dd7a2755201f8e2d6dcda1a61d9f54838f4f`; sonic `0x3cd2cad04aa6c57e7988e5c45425d9b59f28df5d`; sonic `0x6393c8e3ecb2fde7cf4d434da8c916fd47807eca`; sonic `0x702c1793c43bc8489625967f231c75df0ef53562`; sonic `0x80cde6f58a0fdacb340dd3ea3417df8586a507fb`; sonic `0x8d91c7fd9c4edede9cded6c186f5a2fac96f7777`; sonic `0xa3ce58fac4edec6880b185826c405b57300d7d2d`; sonic `0xcbc6ffea432acdb134f6b2b6c3f05d594f17055d`; sonic `0xccfda40bb384d014152b11a702a177be04c8fdbf`; sonic `0xdafd303cbde4d0e1d2aeb447b1cb4cfe53a5b83c` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClGaugeFactory | unknown | sonic | n/a | 5 deployments: sonic [`0x38bff9205ec1ded237c81110d4d73e814b243470`](./contracts/sonic-146/0x38bff9205ec1ded237c81110d4d73e814b243470/); sonic `0x9b7e6279d221515b51e769280ef1ebb4e62bea1c`; sonic `0x9caf8e8b8a8208d43579de755f394a88be5686e0`; sonic `0xee31682bac383e7463822eb9f15fedfc47160116`; sonic `0xf914cc768040b4268a779c3084a3e9cda6e8a1a8` | ⚠️ Unaudited |
| DustSwapper | unknown | sonic | n/a | 2 deployments: sonic [`0x1817ec37284f7d2104e9c11201d7f4c31cb84965`](./contracts/sonic-146/0x1817ec37284f7d2104e9c11201d7f4c31cb84965/); sonic `0xa8d15f9597259600aa969b9205e2d82b6b60bc9f` | ⚠️ Unaudited |
| EqualizerPerpetualBuyOut | unknown | sonic | n/a | [`0x1d7fdd57840fd2f2692f5d70a36f1b5afe46d5b4`](./contracts/sonic-146/0x1d7fdd57840fd2f2692f5d70a36f1b5afe46d5b4/) | ⚠️ Unaudited |
| Gems | unknown | sonic | n/a | [`0x5555b2733602ded58d47b8d3d989e631cbee5555`](./contracts/sonic-146/0x5555b2733602ded58d47b8d3d989e631cbee5555/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | n/a | 2 deployments: sonic [`0x137f7cb38f125ceafea48004cac24f6514dec218`](./contracts/sonic-146/0x137f7cb38f125ceafea48004cac24f6514dec218/); sonic `0x7fdf763e777a2fe1490efb577f51a528d19f3d22` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | sonic | n/a | [`0xcc83a742af837919641b1c9a540c521976e2cd34`](./contracts/sonic-146/0xcc83a742af837919641b1c9a540c521976e2cd34/) | ⚠️ Unaudited |
| Pair | unknown | sonic | n/a | 2 deployments: sonic [`0x2735e2027d97e944cd7af0d0acbed24188238a7d`](./contracts/sonic-146/0x2735e2027d97e944cd7af0d0acbed24188238a7d/); sonic `0x99982a7af098ff6b1b6f0dc8f45e09db017e00bb` | ⚠️ Unaudited |
| PairFactory | unknown | sonic | n/a | 8 deployments: sonic [`0x292da3cfb2dbcfc2cf1f404a95929d909fa69493`](./contracts/sonic-146/0x292da3cfb2dbcfc2cf1f404a95929d909fa69493/); sonic `0x2da25e7446a70d7be65fd4c053948becaa6374c8`; sonic `0x522f94e60d0d0656f737586a39a94e2a8a146b52`; sonic `0x60b7ec1e79140d1b7ff54ed7c737c8e89b03a8b6`; sonic `0x8d0f45614381cd12a500b1a24f8d8793a6ff5c34`; sonic `0xaccf6805f40f03af4909c9d238be8aea653ee652`; sonic `0xcb3e3ce89c6dad2b8ec0e5a56074539a232be924`; sonic `0xd54aa58eda39230316dc1a949305dd3b4ba8010c` | ⚠️ Unaudited |
| PythOracle | operational_periphery | sonic | n/a | [`0xf0367d2724e3f62fe151fa30e46b4d83253bb4d2`](./contracts/sonic-146/0xf0367d2724e3f62fe151fa30e46b4d83253bb4d2/) | ⚠️ Unaudited |
| Quoter | periphery | sonic | n/a | [`0x3003b4feaff95e09683feb7fc5d11b330cd79dc7`](./contracts/sonic-146/0x3003b4feaff95e09683feb7fc5d11b330cd79dc7/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | n/a | [`0x219b7adebc0935a3ec889a148c6924d51a07535a`](./contracts/sonic-146/0x219b7adebc0935a3ec889a148c6924d51a07535a/) | ⚠️ Unaudited |
| RewardClaimers | unknown | sonic | n/a | [`0x684667de9025329e1c2d3869b2a7631a91ff4082`](./contracts/sonic-146/0x684667de9025329e1c2d3869b2a7631a91ff4082/) | ⚠️ Unaudited |
| RewardClaimers2 | unknown | sonic | n/a | 3 deployments: sonic [`0x1881fcfe62782771c4315fd0a6a087ba6bba11d5`](./contracts/sonic-146/0x1881fcfe62782771c4315fd0a6a087ba6bba11d5/); sonic `0x54e6eccd783ff3cfe10eb157e7b3ffc6d8c84b98`; sonic `0xf996933caed39736559c74cfce0d5ef3b4a8b995` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | [`0x1d368773735ee1e678950b7a97bca2cafb330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/) | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | n/a | 2 deployments: sonic [`0x5be2e859d0c2453c9aa062860ca27711ff553432`](./contracts/sonic-146/0x5be2e859d0c2453c9aa062860ca27711ff553432/); sonic `0x600ad881ace196c27d0cf14e662ad03c6a5b4de8` | ⚠️ Unaudited |
| Shadow | unknown | sonic | n/a | [`0x3333b97138d4b086720b5ae8a7844b1345a33333`](./contracts/sonic-146/0x3333b97138d4b086720b5ae8a7844b1345a33333/) | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | n/a | [`0x5543c6176feb9b4b179078205d7c29eea2e2d695`](./contracts/sonic-146/0x5543c6176feb9b4b179078205d7c29eea2e2d695/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x92643dc4f75c374b689774160cdea09a0704a9c2`](./contracts/sonic-146/0x92643dc4f75c374b689774160cdea09a0704a9c2/) | ⚠️ Unaudited |
| x33 | unknown | sonic | n/a | [`0x3333111a391cc08fa51353e9195526a70b333333`](./contracts/sonic-146/0x3333111a391cc08fa51353e9195526a70b333333/) | ⚠️ Unaudited |
| x33Adapter | adapter | sonic | n/a | [`0x9710e10a8f6fba8c391606fee18614885684548d`](./contracts/sonic-146/0x9710e10a8f6fba8c391606fee18614885684548d/) | ⚠️ Unaudited |
| XShadow | unknown | sonic | n/a | [`0x5050bc082ff4a74fb6b0b04385defddb114b2424`](./contracts/sonic-146/0x5050bc082ff4a74fb6b0b04385defddb114b2424/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x016bcaf1703d09053dcfcd7d792ce20f32483570` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x03547621ccc7f0599c327bc0b35cc27a9d96d773` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x06a18e1cf3edd294949a4b52d5cd827289e099ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x16f78602ed8f9853fbddacee9e66605c315f2829` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ee369827d1b01449b61f229cb7d8df1ff9f7afe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x24ad57227f96d2dc4963374bce033cc4879546b2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x276e9c08eb6e9ed06742cb1f0037cda339ec77dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2940987fce2650655902cb95da6bfbf337a0a39d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d619f07e544826c17feb1cc89ae093f6afc57a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x35456f932a444494d1f75f0ed49e244dc57c46f9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b96c935899c99682e99cde8fffdafe213c9e232` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4ce3647492a3f5b4f9c940a7160652ba6001c4cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e70f2e540389765b006f4b4e120cc3f4147f62d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x508a838449f168f4c08a1f86b1186afb581e0fbd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x62e93a640f88f164a60295d0e9e4c206a1088c29` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6369e8dfad8db8378179d74c187f1d5dea47fa9f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6dc606cb4cc4cb02e89479e00e4b01bc2e92f785` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83489c522fdfb94755481c6bcbc84d4103cdfe5c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x89537725015c11f439b063ff93e2e0fafa128232` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa03dfcccb5c9ce510377bd305a0d42949bc90b56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa5cfbb90816b5f274a9a9ff19e0ac7db057574e6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa47967b198a4d7f7c50f77c450c3585b6816b70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0fceb9f92679272708235971f4c3977d8676085` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb71fb3cd0740a5ebb2f37d378cd8f6e0b7b53ed5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba62b207859d9567263d5312b6d36f10085e8ee6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbfacb50265a3f7d02cca1a6d42e0080446470325` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc1857ea6ff05a0ead8d7588a11878638dcb0155c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc66ca359fe18822a9634365e86e594d0dcb92e67` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9b0c7dfecd44f855e38c0b594b4ddb03d40f160` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcf0d4c40cda481814270b46d59928a943d61dd1e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd558d993bb24874f2658a082bd154824760236da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda4329c7b0a75d8d2954d08e8b4c377a2dd65fad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xede95984a0c9e667bdd805351d449fc83bfbfcbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 5 | n/a |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | 27 | high |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 39 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x38bff9205ec1ded237c81110d4d73e814b243470`](./contracts/sonic-146/0x38bff9205ec1ded237c81110d4d73e814b243470/) | ClGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1817ec37284f7d2104e9c11201d7f4c31cb84965`](./contracts/sonic-146/0x1817ec37284f7d2104e9c11201d7f4c31cb84965/) | DustSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d7fdd57840fd2f2692f5d70a36f1b5afe46d5b4`](./contracts/sonic-146/0x1d7fdd57840fd2f2692f5d70a36f1b5afe46d5b4/) | EqualizerPerpetualBuyOut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5555b2733602ded58d47b8d3d989e631cbee5555`](./contracts/sonic-146/0x5555b2733602ded58d47b8d3d989e631cbee5555/) | Gems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xcc83a742af837919641b1c9a540c521976e2cd34`](./contracts/sonic-146/0xcc83a742af837919641b1c9a540c521976e2cd34/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2735e2027d97e944cd7af0d0acbed24188238a7d`](./contracts/sonic-146/0x2735e2027d97e944cd7af0d0acbed24188238a7d/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x292da3cfb2dbcfc2cf1f404a95929d909fa69493`](./contracts/sonic-146/0x292da3cfb2dbcfc2cf1f404a95929d909fa69493/) | PairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf0367d2724e3f62fe151fa30e46b4d83253bb4d2`](./contracts/sonic-146/0xf0367d2724e3f62fe151fa30e46b4d83253bb4d2/) | PythOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3003b4feaff95e09683feb7fc5d11b330cd79dc7`](./contracts/sonic-146/0x3003b4feaff95e09683feb7fc5d11b330cd79dc7/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x219b7adebc0935a3ec889a148c6924d51a07535a`](./contracts/sonic-146/0x219b7adebc0935a3ec889a148c6924d51a07535a/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x684667de9025329e1c2d3869b2a7631a91ff4082`](./contracts/sonic-146/0x684667de9025329e1c2d3869b2a7631a91ff4082/) | RewardClaimers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1881fcfe62782771c4315fd0a6a087ba6bba11d5`](./contracts/sonic-146/0x1881fcfe62782771c4315fd0a6a087ba6bba11d5/) | RewardClaimers2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d368773735ee1e678950b7a97bca2cafb330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3333b97138d4b086720b5ae8a7844b1345a33333`](./contracts/sonic-146/0x3333b97138d4b086720b5ae8a7844b1345a33333/) | Shadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5543c6176feb9b4b179078205d7c29eea2e2d695`](./contracts/sonic-146/0x5543c6176feb9b4b179078205d7c29eea2e2d695/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x92643dc4f75c374b689774160cdea09a0704a9c2`](./contracts/sonic-146/0x92643dc4f75c374b689774160cdea09a0704a9c2/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3333111a391cc08fa51353e9195526a70b333333`](./contracts/sonic-146/0x3333111a391cc08fa51353e9195526a70b333333/) | x33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9710e10a8f6fba8c391606fee18614885684548d`](./contracts/sonic-146/0x9710e10a8f6fba8c391606fee18614885684548d/) | x33Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5050bc082ff4a74fb6b0b04385defddb114b2424`](./contracts/sonic-146/0x5050bc082ff4a74fb6b0b04385defddb114b2424/) | XShadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=5, extraction_exact=66

Zero-match audit list:

- [2502] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
