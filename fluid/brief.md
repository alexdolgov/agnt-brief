# Agentic Audit Brief: Fluid

## Project Overview

- Project: Fluid (`fluid`)
- Website: [https://fluid.io/](https://fluid.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.408Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, base, ethereum
- Contract surface: 261 unique implementations (261 raw deployments)
- DeFi Llama TVL: $2,115,045,985.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 261 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 15 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 24 common project-authored base contract(s) (events, variables, constantvariables). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 261; live-surface contracts included: 261 (260 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/259 (5.8%)
- Deployed-live implementations: 260 of 261 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/261
- Verified + Unaudited implementations: 246
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 261
- Raw deployments: 261
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.4% (MixBytes, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Statemind | Tier 2 | 15 | 5.7% | 2025-10 |
| MixBytes | Tier 1 | 14 | 5.4% | 2025-12 |
| Spearbit | Tier 1 | 14 | 5.4% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminModule | unknown | ethereum | n/a | [`0x0f9b0a...396cff`](./contracts/ethereum-1/0x0f9b0a619cb2c81f8ceab2af606be58f89396cff/) | ✅ Audited |
| ConnectV2Interop | unknown | ethereum | n/a | [`0x56230c...1ed7bf`](./contracts/ethereum-1/0x56230c05368af25842dc4370da8bb8a2b61ed7bf/) | ✅ Audited |
| IEthRebalancerModule | unknown | ethereum | n/a | [`0xcfcdb6...173a35`](./contracts/ethereum-1/0xcfcdb64a551478e07bd07d17cf1525f740173a35/) | ✅ Audited |
| InstaCompoundMapping | unknown | ethereum | n/a | [`0xe7a85d...519e88`](./contracts/ethereum-1/0xe7a85d0addb972a4f0a4e57b698b37f171519e88/) | ✅ Audited |
| InstaPoolCompoundMapping | unknown | ethereum | n/a | [`0x309eff...341f4c`](./contracts/ethereum-1/0x309effce30436c50a872fd9d2b431d7a77341f4c/) | ✅ Audited |
| InstaReflexerGebMapping | unknown | ethereum | n/a | [`0x573e51...ba41b4`](./contracts/ethereum-1/0x573e5132693c046d1a9f75bac683889164ba41b4/) | ✅ Audited |
| InstaUniswapV3Resolver | unknown | ethereum | n/a | [`0x465ac3...5717e3`](./contracts/ethereum-1/0x465ac38b1ba01867bd06f20cdbf471f8805717e3/) | ✅ Audited |
| InstaVaultResolver | unknown | ethereum | n/a | [`0x17d114...91c27a`](./contracts/ethereum-1/0x17d1142019504f034be9f90e0cfc4eb9dd91c27a/) | ✅ Audited |
| InstaVaultUIResolver | unknown | ethereum | n/a | [`0x2ada30...bfa7b3`](./contracts/ethereum-1/0x2ada30f3612b4716a23a3b0a2069fbeafbbfa7b3/) | ✅ Audited |
| InstaVaultWrapperImplementation | unknown | ethereum | n/a | [`0x012c21...a4a95e`](./contracts/ethereum-1/0x012c218f9e0123041a3e24008df04baf56a4a95e/) | ✅ Audited |
| InteropAaveResolver | unknown | ethereum | n/a | [`0x90478c...863e06`](./contracts/ethereum-1/0x90478cf152f6a6ce8ece5dc0b66c8a2c22863e06/) | ✅ Audited |
| LeverageModule | unknown | ethereum | n/a | [`0x1d9e35...a3a784`](./contracts/ethereum-1/0x1d9e35bab10e336bf58351d54b93e4e742a3a784/) | ✅ Audited |
| RebalancerModule | unknown | ethereum | n/a | [`0x24855b...092004`](./contracts/ethereum-1/0x24855b5694139a43b68786b14245aff182092004/) | ✅ Audited |
| RefinanceModule | unknown | ethereum | n/a | [`0x0f885f...ff10b4`](./contracts/ethereum-1/0x0f885fe8f1351a8f1755e7e79bd831d108ff10b4/) | ✅ Audited |
| UserModule | unknown | ethereum | n/a | [`0x153ac7...46d48b`](./contracts/ethereum-1/0x153ac773cdba3a30a41571d787336dd20346d48b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (246)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchMigrator | unknown | ethereum | n/a | [`0x008f8e...f87f74`](./contracts/ethereum-1/0x008f8e5cb02a2f6f79fc91ed2ca3a6fe0ff87f74/) | ⚠️ Unaudited |
| BoringVault | unknown | ethereum | n/a | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| ConnectAave | unknown | ethereum | n/a | [`0x8f4b45...71de62`](./contracts/ethereum-1/0x8f4b452225df22fc1e449bda0202f7162a71de62/) | ⚠️ Unaudited |
| ConnectAaveIncentives | unknown | ethereum | n/a | [`0x8f1e38...504f1b`](./contracts/ethereum-1/0x8f1e38c53af7bd2b2be01b9580911b7cca504f1b/) | ⚠️ Unaudited |
| ConnectAaveStake | unknown | ethereum | n/a | [`0xa96b2f...d64d78`](./contracts/ethereum-1/0xa96b2f679fb935ba279ea9395402ca4696d64d78/) | ⚠️ Unaudited |
| ConnectAaveV2PolygonMigrator | unknown | ethereum | n/a | [`0x9686ce...22e7ba`](./contracts/ethereum-1/0x9686ce6ad5c3f7b212caf401b928c4bb3422e7ba/) | ⚠️ Unaudited |
| ConnectCOMP | unknown | ethereum | n/a | [`0xeaac57...8f7b07`](./contracts/ethereum-1/0xeaac5739eb532110431b14d01017506dba8f7b07/) | ⚠️ Unaudited |
| ConnectCompound | unknown | ethereum | n/a | [`0xc4c77f...68e6fa`](./contracts/ethereum-1/0xc4c77f9a56bb841952b452cf504ebd614368e6fa/) | ⚠️ Unaudited |
| ConnectInstaPool | unknown | ethereum | n/a | [`0x2a2622...469bf8`](./contracts/ethereum-1/0x2a26228e607ffd2ab2bd3aa49cbae0edc6469bf8/) | ⚠️ Unaudited |
| ConnectMaker | unknown | ethereum | n/a | [`0x6fca8d...069984`](./contracts/ethereum-1/0x6fca8d826fefd6cfac2a1ad33ff46b3a06069984/) | ⚠️ Unaudited |
| ConnectMigrate | unknown | ethereum | n/a | [`0x4f774c...ca727d`](./contracts/ethereum-1/0x4f774c123d012a6cfd5918b7f4ce7d3386ca727d/) | ⚠️ Unaudited |
| ConnectOne | unknown | ethereum | n/a | [`0x996b52...557a29`](./contracts/ethereum-1/0x996b5247ff7fa67cdea16e5de29b8bfeef557a29/) | ⚠️ Unaudited |
| ConnectPolygonBridge | unknown | ethereum | n/a | [`0x62659f...c6dac6`](./contracts/ethereum-1/0x62659fe13c254100eb354ad2226a8fdddbc6dac6/) | ⚠️ Unaudited |
| ConnectV2AaveImport | unknown | ethereum | n/a | [`0x8358a9...5490a7`](./contracts/ethereum-1/0x8358a92707824476f0d788075d53b627e85490a7/) | ⚠️ Unaudited |
| ConnectV2AaveIncentives | unknown | ethereum | n/a | [`0x611c1f...ee85e0`](./contracts/ethereum-1/0x611c1fa59aa1d6352c4c8bd44882063c6aee85e0/) | ⚠️ Unaudited |
| ConnectV2AaveStake | unknown | ethereum | n/a | [`0xf73c94...c37d5b`](./contracts/ethereum-1/0xf73c94402bc24148b744083ed02654eec2c37d5b/) | ⚠️ Unaudited |
| ConnectV2AaveV1 | unknown | ethereum | n/a | [`0x612c5c...f97e9d`](./contracts/ethereum-1/0x612c5ca43230d9f97a0ac87e4420f66b8df97e9d/) | ⚠️ Unaudited |
| ConnectV2AaveV2 | unknown | ethereum | n/a | [`0x497bc5...c9dbb8`](./contracts/ethereum-1/0x497bc53507df17e60f731e9534cff74e8bc9dbb8/) | ⚠️ Unaudited |
| ConnectV2AaveV2Import | unknown | ethereum | n/a | [`0x893056...4e3f14`](./contracts/ethereum-1/0x89305678cc853a929428fa6a97ab35bd864e3f14/) | ⚠️ Unaudited |
| ConnectV2AaveV2ImportPolygon | unknown | ethereum | n/a | [`0x16a26a...974a38`](./contracts/ethereum-1/0x16a26a54ce43affff8c54d2af709b0a388974a38/) | ⚠️ Unaudited |
| ConnectV2AaveV2MerkleImport | unknown | ethereum | n/a | [`0x335ddc...ef7e09`](./contracts/ethereum-1/0x335ddc96779eff7390d251812519e4aeacef7e09/) | ⚠️ Unaudited |
| ConnectV2Auth | unknown | ethereum | n/a | [`0x351bb3...f31c68`](./contracts/ethereum-1/0x351bb32e90c35647df7a584f3c1a3a0c38f31c68/) | ⚠️ Unaudited |
| ConnectV2Basic | unknown | ethereum | n/a | [`0x992695...061687`](./contracts/ethereum-1/0x9926955e0dd681dc303370c52f4ad0a4dd061687/) | ⚠️ Unaudited |
| ConnectV2BasicERC1155 | unknown | ethereum | n/a | [`0x6ecbf5...69c42b`](./contracts/ethereum-1/0x6ecbf5a77d65f857c66fe729cb3cd7835369c42b/) | ⚠️ Unaudited |
| ConnectV2BasicERC721 | unknown | ethereum | n/a | [`0x4dfa17...4f15e9`](./contracts/ethereum-1/0x4dfa1780ae85f0ec7197c61ffe533c7dc84f15e9/) | ⚠️ Unaudited |
| ConnectV2BCompound | unknown | ethereum | n/a | [`0xa3eefd...62460f`](./contracts/ethereum-1/0xa3eefdc2de9dfa59968becff3e15b53e6162460f/) | ⚠️ Unaudited |
| ConnectV2BMakerDAO | unknown | ethereum | n/a | [`0xb0a1f1...de7bf0`](./contracts/ethereum-1/0xb0a1f10feefecf25064ce7cdf0a65042f7de7bf0/) | ⚠️ Unaudited |
| ConnectV2COMP | unknown | ethereum | n/a | [`0x01fef4...f60109`](./contracts/ethereum-1/0x01fef4d2b513c9f69e34b2f93ef707fa9ff60109/) | ⚠️ Unaudited |
| ConnectV2Compound | unknown | ethereum | n/a | [`0x1b1eac...a3ae25`](./contracts/ethereum-1/0x1b1eacaa31abbe544117073f6f8f658a56a3ae25/) | ⚠️ Unaudited |
| ConnectV2CompoundImport | unknown | ethereum | n/a | [`0x24bd20...29e8b4`](./contracts/ethereum-1/0x24bd20b89183cf797a4efea1966892147a29e8b4/) | ⚠️ Unaudited |
| ConnectV2CompoundMerkleImport | unknown | ethereum | n/a | [`0xda1018...4eb6c0`](./contracts/ethereum-1/0xda101870ca6136539628f28041e1b55baf4eb6c0/) | ⚠️ Unaudited |
| ConnectV2InstaLite | unknown | ethereum | n/a | [`0x3e5b90...1ea791`](./contracts/ethereum-1/0x3e5b9003e1674e15aa6a201b7b353c872c1ea791/) | ⚠️ Unaudited |
| ConnectV2InstaPool | unknown | ethereum | n/a | [`0x01a00d...fc9780`](./contracts/ethereum-1/0x01a00d6f4bec7cdaa4f6d8284ce05e3785fc9780/) | ⚠️ Unaudited |
| ConnectV2InstaPoolV3 | unknown | ethereum | n/a | [`0x08bae2...0c7222`](./contracts/ethereum-1/0x08bae28d448d1aacac2eaa850e9098274f0c7222/) | ⚠️ Unaudited |
| ConnectV2Liquity | unknown | ethereum | n/a | [`0x3643ba...f31bfe`](./contracts/ethereum-1/0x3643ba40b8e2bd8f77233bdb6abe38c218f31bfe/) | ⚠️ Unaudited |
| ConnectV2LMClaimer | unknown | ethereum | n/a | [`0xbe4ea1...22d9d1`](./contracts/ethereum-1/0xbe4ea1a66b31037b4ae3495ad2d86ea20622d9d1/) | ⚠️ Unaudited |
| ConnectV2Maker | unknown | ethereum | n/a | [`0x839c2d...b41556`](./contracts/ethereum-1/0x839c2d3ade63df5b0b8f3e57d5e145057ab41556/) | ⚠️ Unaudited |
| ConnectV2MakerDAO | unknown | ethereum | n/a | [`0x4049db...653ef6`](./contracts/ethereum-1/0x4049db23c605b197f764072569b8db2464653ef6/) | ⚠️ Unaudited |
| ConnectV2MakerDAOClaimer | unknown | ethereum | n/a | [`0x2f8cbe...c5a4e8`](./contracts/ethereum-1/0x2f8cbe650af98602a215b6482f2ad60893c5a4e8/) | ⚠️ Unaudited |
| ConnectV2Migrate | unknown | ethereum | n/a | [`0x2a0068...763c88`](./contracts/ethereum-1/0x2a00684bfab9717c21271e0751bccb7d2d763c88/) | ⚠️ Unaudited |
| ConnectV2OneInch | unknown | ethereum | n/a | [`0x235fca...3e4b7c`](./contracts/ethereum-1/0x235fca310ac7be45c7ad45f111203468743e4b7c/) | ⚠️ Unaudited |
| ConnectV2OneProto | unknown | ethereum | n/a | [`0xabac3d...bc5e04`](./contracts/ethereum-1/0xabac3dcf164ed827eafda8e05ecc8208d6bc5e04/) | ⚠️ Unaudited |
| ConnectV2PolygonBridge | unknown | ethereum | n/a | [`0x1b79b3...510ad5`](./contracts/ethereum-1/0x1b79b302132370b434fb7807b36cb72fb0510ad5/) | ⚠️ Unaudited |
| ConnectV2Refinance | unknown | ethereum | n/a | [`0x6f2293...b27856`](./contracts/ethereum-1/0x6f22931423e8ffc8d51f6e5af73118fc64b27856/) | ⚠️ Unaudited |
| ConnectV2Reflexer | unknown | ethereum | n/a | [`0xac6dc2...9ae2c8`](./contracts/ethereum-1/0xac6dc28a6251f49bbe5755e630107dccde9ae2c8/) | ⚠️ Unaudited |
| connectV2StakeGUNI | unknown | ethereum | n/a | [`0xb8e9ef...14d2f8`](./contracts/ethereum-1/0xb8e9ef2a085671858d923aa947cb93b88714d2f8/) | ⚠️ Unaudited |
| ConnectV2UniswapV2 | unknown | ethereum | n/a | [`0x1e5ce4...afc43c`](./contracts/ethereum-1/0x1e5ce41bdb653734445fec3553b61febddafc43c/) | ⚠️ Unaudited |
| ConnectV2UniswapV3 | unknown | ethereum | n/a | [`0x25b0c7...d4c475`](./contracts/ethereum-1/0x25b0c76de86c3457b9b8b9ee3775f5a7b8d4c475/) | ⚠️ Unaudited |
| ConnectV2UniswapV3Staker | unknown | ethereum | n/a | [`0x917de7...dbe414`](./contracts/ethereum-1/0x917de7305e73a4175192d9c895c34a174edbe414/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | ethereum | n/a | [`0x21bee1...4dd901`](./contracts/ethereum-1/0x21bee1486d42fbc3904413c604c35e1e584dd901/) | ⚠️ Unaudited |
| EthRateExecuteUpdate | unknown | ethereum | n/a | [`0x49e4db...da3207`](./contracts/ethereum-1/0x49e4db0a4d63c73bae75747ee12ab63bbdda3207/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FluidDexResolver | unknown | arbitrum | n/a | [`0x1de429...946e6d`](./contracts/arbitrum-42161/0x1de42938de444d376ebc298e15d21f409b946e6d/) | ⚠️ Unaudited |
| FluidLiquidityDummyImpl | unknown | ethereum | n/a | [`0x52aa89...f4e497`](./contracts/ethereum-1/0x52aa899454998be5b000ad077a46bbe360f4e497/) | ⚠️ Unaudited |
| FluidLiquidityResolver | unknown | base | n/a | [`0x35a915...d3b0cd`](./contracts/base-8453/0x35a915336e2b3349fa94c133491b915ed3d3b0cd/) | ⚠️ Unaudited |
| FluidLiteVaultProxy | unknown | ethereum | n/a | [`0x273da9...c29012`](./contracts/ethereum-1/0x273da948aca9261043fbdb2a857bc255ecc29012/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | ethereum | n/a | [`0x9ca074...6ad53a`](./contracts/ethereum-1/0x9ca07484c20db8b8949b30596e411f0f516ad53a/) | ⚠️ Unaudited |
| GUD | unknown | ethereum | n/a | [`0xa8f9e1...d08713`](./contracts/ethereum-1/0xa8f9e1d9630e7a3eb6c654b256dc7845a9d08713/) | ⚠️ Unaudited |
| IDAIPriceResolver | unknown | ethereum | n/a | [`0x37a448...08a882`](./contracts/ethereum-1/0x37a448a8fa94f422d72be53d32c76c26d808a882/) | ⚠️ Unaudited |
| IETHPriceResolver | unknown | ethereum | n/a | [`0xce5b90...271cc9`](./contracts/ethereum-1/0xce5b90bf5f68b91dd9628fad5dc942f0d9271cc9/) | ⚠️ Unaudited |
| IEthSupplyWrapper | unknown | ethereum | n/a | [`0x814072...8824d6`](./contracts/ethereum-1/0x8140725f7bda9484e20a86b9ed76cd39748824d6/) | ⚠️ Unaudited |
| InstaAaveV2MerkleDistributor | unknown | ethereum | n/a | [`0x1ba631...b28944`](./contracts/ethereum-1/0x1ba631331503f0486538cb707c6685cbc6b28944/) | ⚠️ Unaudited |
| InstaAaveV2MigratorSenderImplementation | unknown | ethereum | n/a | [`0x3cd072...599301`](./contracts/ethereum-1/0x3cd0727d7bbbb6a5eadbdc72349370a7eb599301/) | ⚠️ Unaudited |
| InstaAaveV2Resolver | unknown | ethereum | n/a | [`0xfb3a1d...54578b`](./contracts/ethereum-1/0xfb3a1d56ed56f046721b9aca749895100754578b/) | ⚠️ Unaudited |
| InstaAdmin | unknown | ethereum | n/a | [`0xb208cd...9a149f`](./contracts/ethereum-1/0xb208cdf8e1c319d0019397dcec8e0ba3fb9a149f/) | ⚠️ Unaudited |
| InstaAdminProxy | unknown | ethereum | n/a | [`0x12d7d1...99e65b`](./contracts/ethereum-1/0x12d7d18c5ad9f56ff323840a1c26c2ab1a99e65b/) | ⚠️ Unaudited |
| InstaChiefTimelockContract | unknown | ethereum | n/a | [`0xb3e586...cdc370`](./contracts/ethereum-1/0xb3e586bce929312e8b0685e2c12c1d6dbbcdc370/) | ⚠️ Unaudited |
| InstaCompoundMerkleDistributor | unknown | ethereum | n/a | [`0x630008...05b896`](./contracts/ethereum-1/0x6300080a77ffff563b542978555d121ded05b896/) | ⚠️ Unaudited |
| InstaCompoundResolver | unknown | ethereum | n/a | [`0xccaa4b...03321b`](./contracts/ethereum-1/0xccaa4b1b3931749b8b6ef19c6b0b2c496703321b/) | ⚠️ Unaudited |
| InstaConnectorsV2 | unknown | ethereum | n/a | [`0x97b0b3...b8ad11`](./contracts/ethereum-1/0x97b0b3a8bdefe8cb9563a3c610019ad10db8ad11/) | ⚠️ Unaudited |
| InstaDefaultImplementation | unknown | ethereum | n/a | [`0x60faee...2117b3`](./contracts/ethereum-1/0x60faeec73299cbe55d4e5736ebdf432a1d2117b3/) | ⚠️ Unaudited |
| InstaDelegateClone | unknown | ethereum | n/a | [`0x665817...a74196`](./contracts/ethereum-1/0x6658173f1b8ba88ef82452295c60fa6843a74196/) | ⚠️ Unaudited |
| InstaDelegateFactory | unknown | ethereum | n/a | [`0x43e444...c056c9`](./contracts/ethereum-1/0x43e4442b14badedbeea99afbbd970be2cdc056c9/) | ⚠️ Unaudited |
| InstaDSProxyMakerDAOClaimer | unknown | ethereum | n/a | [`0x49fad2...834649`](./contracts/ethereum-1/0x49fad24bec517822e5d3402dd510fdc54e834649/) | ⚠️ Unaudited |
| InstaEmptyImpl | unknown | ethereum | n/a | [`0x4a0908...79abf4`](./contracts/ethereum-1/0x4a090897f47993c2504144419751d6a91d79abf4/) | ⚠️ Unaudited |
| InstaFlashAggregator | unknown | ethereum | n/a | [`0xb436ca...74cef0`](./contracts/ethereum-1/0xb436cafac369dbe34876e46d8630dc115074cef0/) | ⚠️ Unaudited |
| InstaFlashResolver | unknown | ethereum | n/a | [`0x10c7b5...5caec1`](./contracts/ethereum-1/0x10c7b513b7d37f40bdbce77183b9112ec35caec1/) | ⚠️ Unaudited |
| InstaGovernanceAdmin | unknown | ethereum | n/a | [`0x4d07ec...b1cf6a`](./contracts/ethereum-1/0x4d07ec0e61b60ca997e44ec14ea0114aaeb1cf6a/) | ⚠️ Unaudited |
| InstaGovernorBravoDelegate | unknown | ethereum | n/a | [`0x00613f...32ee47`](./contracts/ethereum-1/0x00613f7e762124711c7647f9eab5c8a88632ee47/) | ⚠️ Unaudited |
| InstaGUNIV3PoolResolver | unknown | ethereum | n/a | [`0x729bf0...061b13`](./contracts/ethereum-1/0x729bf02a9a786529fc80498f8fd0051116061b13/) | ⚠️ Unaudited |
| InstaImplementationM1 | unknown | ethereum | n/a | [`0x8a3462...d90021`](./contracts/ethereum-1/0x8a3462a50e1a9fe8c9e7d9023cacbd9a98d90021/) | ⚠️ Unaudited |
| InstaImplementationM2 | unknown | ethereum | n/a | [`0x8fbff3...0aa814`](./contracts/ethereum-1/0x8fbff3219bc845350edb335c83d933dcf70aa814/) | ⚠️ Unaudited |
| InstaLiquityResolver | unknown | ethereum | n/a | [`0x9dc5fc...ba92ea`](./contracts/ethereum-1/0x9dc5fc20c91b1bbc8ef6c36a6173314ba9ba92ea/) | ⚠️ Unaudited |
| InstaMakerDAOMerkleDistributor | unknown | ethereum | n/a | [`0xac8383...e2743c`](./contracts/ethereum-1/0xac838332afc2937fded89c16a59b2ed8e8e2743c/) | ⚠️ Unaudited |
| InstaMappingController | unknown | ethereum | n/a | [`0xddd075...8a08d4`](./contracts/ethereum-1/0xddd075d5e1024901e4038461e1e4bbc3a48a08d4/) | ⚠️ Unaudited |
| InstaMasterProxy | unknown | ethereum | n/a | [`0xa471d8...4064ff`](./contracts/ethereum-1/0xa471d83e526b6b5d6c876088d34834b44d4064ff/) | ⚠️ Unaudited |
| InstaMasterSigProxy | unknown | ethereum | n/a | [`0xa0e03e...7e4815`](./contracts/ethereum-1/0xa0e03e95bb7cfe31c7079d71bd3a7edfab7e4815/) | ⚠️ Unaudited |
| InstaMerkleDistributorLM | unknown | ethereum | n/a | [`0x3b9ae6...00bfb4`](./contracts/ethereum-1/0x3b9ae61b9feacba6c2f58d73aa484d671900bfb4/) | ⚠️ Unaudited |
| InstaPool | unknown | ethereum | n/a | [`0xd7e8e6...8a585d`](./contracts/ethereum-1/0xd7e8e6f5decc5642b77a5dd0e445965b128a585d/) | ⚠️ Unaudited |
| InstaPoolV2 | unknown | ethereum | n/a | [`0xaf19ee...efe418`](./contracts/ethereum-1/0xaf19ee38397ca9cf8715197f428e02c031efe418/) | ⚠️ Unaudited |
| InstaPoolV2Implementation | unknown | ethereum | n/a | [`0x2a1739...87992f`](./contracts/ethereum-1/0x2a1739d7f07d40e76852ca8f0d82275aa087992f/) | ⚠️ Unaudited |
| InstaPoolV2ImplementationV2 | unknown | ethereum | n/a | [`0x276b88...c79726`](./contracts/ethereum-1/0x276b88d057b368179480cb707366d497dfc79726/) | ⚠️ Unaudited |
| InstaTimelock | unknown | ethereum | n/a | [`0x2386dc...481f4c`](./contracts/ethereum-1/0x2386dc45added673317ef068992f19421b481f4c/) | ⚠️ Unaudited |
| InstaTimelockContract | unknown | ethereum | n/a | [`0x68206e...b25a18`](./contracts/ethereum-1/0x68206e807c44216b606493e4415dc78e0db25a18/) | ⚠️ Unaudited |
| InstaTokenDelegate | unknown | ethereum | n/a | [`0x31de20...1f8773`](./contracts/ethereum-1/0x31de2088f38ed7f8a4231de03973814eda1f8773/) | ⚠️ Unaudited |
| InstaTokenVesting | unknown | ethereum | n/a | [`0xc0d921...232a9e`](./contracts/ethereum-1/0xc0d9210496afe9763f5d8ceb8deffba817232a9e/) | ⚠️ Unaudited |
| InstaUniswapStakerResolver | unknown | ethereum | n/a | [`0x1a96af...49a3c9`](./contracts/ethereum-1/0x1a96af80ed8753a77e23074de78480675049a3c9/) | ⚠️ Unaudited |
| InstaVaultImplementation | unknown | ethereum | n/a | [`0x039488...59a703`](./contracts/ethereum-1/0x03948802c3041219a6fcec3e19aeabe6f859a703/) | ⚠️ Unaudited |
| InstaVestingFactory | unknown | ethereum | n/a | [`0x3730d9...dd054a`](./contracts/ethereum-1/0x3730d9b06bc23fd2e2f84f1202a7e80815dd054a/) | ⚠️ Unaudited |
| InteropBetaImplementation | unknown | ethereum | n/a | [`0x25ef95...a12dca`](./contracts/ethereum-1/0x25ef957d078941ea6d37a3670a63977869a12dca/) | ⚠️ Unaudited |
| IUSDCPriceResolver | unknown | ethereum | n/a | [`0xc5a95d...5f4b7c`](./contracts/ethereum-1/0xc5a95d64c16e157eea271d36197838d3a45f4b7c/) | ⚠️ Unaudited |
| IWBTCPriceResolver | unknown | ethereum | n/a | [`0x85f8b0...e09d44`](./contracts/ethereum-1/0x85f8b080942baa0e4d685006418765f498e09d44/) | ⚠️ Unaudited |
| LiquidityQuoter | unknown | ethereum | n/a | [`0xc15adb...4a2904`](./contracts/ethereum-1/0xc15adb22ecf004a9d5f2e87f82471090014a2904/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| PayloadIGP10 | unknown | ethereum | n/a | [`0xe935e8...9556d0`](./contracts/ethereum-1/0xe935e8db4efcf160106b5f476745f06fe79556d0/) | ⚠️ Unaudited |
| PayloadIGP100 | unknown | ethereum | n/a | [`0xee1e9a...b6b8c0`](./contracts/ethereum-1/0xee1e9a6d9b9a7394baf2417469f3935321b6b8c0/) | ⚠️ Unaudited |
| PayloadIGP101 | unknown | ethereum | n/a | [`0x64fb3f...1fc569`](./contracts/ethereum-1/0x64fb3fc4307d9be806b38671d1725a90251fc569/) | ⚠️ Unaudited |
| PayloadIGP102 | unknown | ethereum | n/a | [`0x35148e...e2c8d0`](./contracts/ethereum-1/0x35148e3a7cede2959a6660690a555a3b18e2c8d0/) | ⚠️ Unaudited |
| PayloadIGP103 | unknown | ethereum | n/a | [`0xcfe2ce...718ebe`](./contracts/ethereum-1/0xcfe2cefcc9ecf356b3da8674f76433e442718ebe/) | ⚠️ Unaudited |
| PayloadIGP104 | unknown | ethereum | n/a | [`0x0eb746...967af2`](./contracts/ethereum-1/0x0eb7466e0417802c4a59e8e67335311465967af2/) | ⚠️ Unaudited |
| PayloadIGP105 | unknown | ethereum | n/a | [`0x87532d...bf6525`](./contracts/ethereum-1/0x87532d5383ee08ef815af84c0383e2457bbf6525/) | ⚠️ Unaudited |
| PayloadIGP106 | unknown | ethereum | n/a | [`0x96c23b...d5ff15`](./contracts/ethereum-1/0x96c23b84a6475c2ef81dd7a3d45a41e788d5ff15/) | ⚠️ Unaudited |
| PayloadIGP107 | unknown | ethereum | n/a | [`0x26f40b...641fe6`](./contracts/ethereum-1/0x26f40b8ad86c44fda4295c7d792022a521641fe6/) | ⚠️ Unaudited |
| PayloadIGP108 | unknown | ethereum | n/a | [`0x462b53...58b097`](./contracts/ethereum-1/0x462b53b6e6d124a298997e15ecff5dc44c58b097/) | ⚠️ Unaudited |
| PayloadIGP109 | unknown | ethereum | n/a | [`0x7f65c0...e55e49`](./contracts/ethereum-1/0x7f65c062e083b287b6981e568525359c0de55e49/) | ⚠️ Unaudited |
| PayloadIGP11 | unknown | ethereum | n/a | [`0xaed69c...6a59a1`](./contracts/ethereum-1/0xaed69c9bb4f072bb1614188eba0417617c6a59a1/) | ⚠️ Unaudited |
| PayloadIGP110 | unknown | ethereum | n/a | [`0x310638...a06db9`](./contracts/ethereum-1/0x31063879968c51df94ee435a3b329b4086a06db9/) | ⚠️ Unaudited |
| PayloadIGP111 | unknown | ethereum | n/a | [`0x59ebc4...9d0aae`](./contracts/ethereum-1/0x59ebc467c389195d8fae1a0b2de73005409d0aae/) | ⚠️ Unaudited |
| PayloadIGP112 | unknown | ethereum | n/a | [`0x3b35f2...306deb`](./contracts/ethereum-1/0x3b35f2016194350901909df4935692f9ac306deb/) | ⚠️ Unaudited |
| PayloadIGP113 | unknown | ethereum | n/a | [`0x38693a...1f4a5e`](./contracts/ethereum-1/0x38693ae30a4d0874a689bfb15b29dbeded1f4a5e/) | ⚠️ Unaudited |
| PayloadIGP114 | unknown | ethereum | n/a | [`0xfb3359...cdfb8d`](./contracts/ethereum-1/0xfb3359bfa2aa7260fdfbcdc33d3c794b99cdfb8d/) | ⚠️ Unaudited |
| PayloadIGP115 | unknown | ethereum | n/a | [`0xb8f66f...b7709b`](./contracts/ethereum-1/0xb8f66fffd70945f137a451abd3591d07a8b7709b/) | ⚠️ Unaudited |
| PayloadIGP116 | unknown | ethereum | n/a | [`0xc7003f...fea25b`](./contracts/ethereum-1/0xc7003f5cc7179d1cf2569843c2ea9f13dafea25b/) | ⚠️ Unaudited |
| PayloadIGP117 | unknown | ethereum | n/a | [`0x41edb8...5d42fa`](./contracts/ethereum-1/0x41edb8816891cfe2859c2379ff242a24fa5d42fa/) | ⚠️ Unaudited |
| PayloadIGP118 | unknown | ethereum | n/a | [`0x8ad0f4...b13478`](./contracts/ethereum-1/0x8ad0f4cf8d3d33c0bb9de162a43fa369c3b13478/) | ⚠️ Unaudited |
| PayloadIGP119 | unknown | ethereum | n/a | [`0x3dcc1f...a1d30a`](./contracts/ethereum-1/0x3dcc1f84f23678454dbff89d5298ae0022a1d30a/) | ⚠️ Unaudited |
| PayloadIGP12 | unknown | ethereum | n/a | [`0xe83188...c93dcd`](./contracts/ethereum-1/0xe83188f97b3e22892c543731d124e44ba6c93dcd/) | ⚠️ Unaudited |
| PayloadIGP120 | unknown | ethereum | n/a | [`0x954790...95069a`](./contracts/ethereum-1/0x9547909722f32016cfa24074c5f6448c3295069a/) | ⚠️ Unaudited |
| PayloadIGP121 | unknown | ethereum | n/a | [`0xd3caf9...4457a2`](./contracts/ethereum-1/0xd3caf9b00d5a9163fbe6d9b2e18392c19d4457a2/) | ⚠️ Unaudited |
| PayloadIGP122 | unknown | ethereum | n/a | [`0x78b7f5...62968b`](./contracts/ethereum-1/0x78b7f59f062154f13f20e5b5a43c96e41662968b/) | ⚠️ Unaudited |
| PayloadIGP123 | unknown | ethereum | n/a | [`0x9fc215...d917f2`](./contracts/ethereum-1/0x9fc2157838bd1df329b3fe2f07748477f5d917f2/) | ⚠️ Unaudited |
| PayloadIGP124 | unknown | ethereum | n/a | [`0x28806b...6de3d8`](./contracts/ethereum-1/0x28806bfd9e367b990b72e7477fceae3f6a6de3d8/) | ⚠️ Unaudited |
| PayloadIGP125 | unknown | ethereum | n/a | [`0xe0aeb5...829d77`](./contracts/ethereum-1/0xe0aeb50bcff133abb4080195e483f9aed9829d77/) | ⚠️ Unaudited |
| PayloadIGP126 | unknown | ethereum | n/a | [`0x987cb3...2a4f32`](./contracts/ethereum-1/0x987cb30d3a92982e0080ff7f59793899232a4f32/) | ⚠️ Unaudited |
| PayloadIGP127 | unknown | ethereum | n/a | [`0xf9823c...d25458`](./contracts/ethereum-1/0xf9823cbde8d3ca725775c0cbb7a1b1a185d25458/) | ⚠️ Unaudited |
| PayloadIGP128 | unknown | ethereum | n/a | [`0x43a5e7...bb4e63`](./contracts/ethereum-1/0x43a5e795b43542e5adab793c239214cc79bb4e63/) | ⚠️ Unaudited |
| PayloadIGP129 | unknown | ethereum | n/a | [`0x21d8f1...f2b30e`](./contracts/ethereum-1/0x21d8f1393146b6926b486e91aa6bbcc6aaf2b30e/) | ⚠️ Unaudited |
| PayloadIGP13 | unknown | ethereum | n/a | [`0xee2551...8693a9`](./contracts/ethereum-1/0xee255113d790a90145c98334c958599d1d8693a9/) | ⚠️ Unaudited |
| PayloadIGP130 | unknown | ethereum | n/a | [`0xfd054f...8e0e89`](./contracts/ethereum-1/0xfd054f9340fad3b4e363b6e750c7ee64858e0e89/) | ⚠️ Unaudited |
| PayloadIGP131 | unknown | ethereum | n/a | [`0xd55583...b5f743`](./contracts/ethereum-1/0xd5558354087680f4f0d24ecd49716444c4b5f743/) | ⚠️ Unaudited |
| PayloadIGP132 | unknown | ethereum | n/a | [`0x079145...c8c960`](./contracts/ethereum-1/0x07914557cab20c637fbf84e1fd70257883c8c960/) | ⚠️ Unaudited |
| PayloadIGP133 | unknown | ethereum | n/a | [`0xac4fb1...883757`](./contracts/ethereum-1/0xac4fb19bc9c861d3ad9854d5346e92897c883757/) | ⚠️ Unaudited |
| PayloadIGP134 | unknown | ethereum | n/a | [`0xcca061...c9f7d3`](./contracts/ethereum-1/0xcca061b8f5ed2b6065c96910d53df056aac9f7d3/) | ⚠️ Unaudited |
| PayloadIGP135 | unknown | ethereum | n/a | [`0xdf909b...f17d11`](./contracts/ethereum-1/0xdf909b5dd09be35aa8d9e6c1d22cee3ebcf17d11/) | ⚠️ Unaudited |
| PayloadIGP14 | unknown | ethereum | n/a | [`0x9c5f9e...560ae8`](./contracts/ethereum-1/0x9c5f9e5987ebc5cb589215d6ce9af8fe72560ae8/) | ⚠️ Unaudited |
| PayloadIGP15 | unknown | ethereum | n/a | [`0x43b57c...7df982`](./contracts/ethereum-1/0x43b57c84abd7b3558e4e23d54c2e44de0a7df982/) | ⚠️ Unaudited |
| PayloadIGP16 | unknown | ethereum | n/a | [`0x47483e...edc15c`](./contracts/ethereum-1/0x47483e09b4f5cbc3c06b2ae736e00a1df7edc15c/) | ⚠️ Unaudited |
| PayloadIGP17 | unknown | ethereum | n/a | [`0xcd6781...88022d`](./contracts/ethereum-1/0xcd6781820ffc72fa78b364612c96c0050d88022d/) | ⚠️ Unaudited |
| PayloadIGP18 | unknown | ethereum | n/a | [`0x3cbe01...91d408`](./contracts/ethereum-1/0x3cbe013f1ad60d7183cf87ee1250b1729491d408/) | ⚠️ Unaudited |
| PayloadIGP19 | unknown | ethereum | n/a | [`0x23cf32...dded71`](./contracts/ethereum-1/0x23cf324cf16b04af6dbc077bbd8b30c004dded71/) | ⚠️ Unaudited |
| PayloadIGP20 | unknown | ethereum | n/a | [`0xb6bcc3...881889`](./contracts/ethereum-1/0xb6bcc36463877cd1636be5959641d3f4c2881889/) | ⚠️ Unaudited |
| PayloadIGP21 | unknown | ethereum | n/a | [`0xe6f441...83635d`](./contracts/ethereum-1/0xe6f441858d6c0c66546804fe62e40eb6af83635d/) | ⚠️ Unaudited |
| PayloadIGP22 | unknown | ethereum | n/a | [`0x93554b...14eb69`](./contracts/ethereum-1/0x93554b0bc722d9e48c9ad4a518195042fd14eb69/) | ⚠️ Unaudited |
| PayloadIGP23 | unknown | ethereum | n/a | [`0x5aa7f3...11ca9f`](./contracts/ethereum-1/0x5aa7f388f8739ad1af7b8f0f3093dee47211ca9f/) | ⚠️ Unaudited |
| PayloadIGP24 | unknown | ethereum | n/a | [`0xaab305...2cdac8`](./contracts/ethereum-1/0xaab305031336580610b00ee64eba657f632cdac8/) | ⚠️ Unaudited |
| PayloadIGP25 | unknown | ethereum | n/a | [`0xba2820...5dd636`](./contracts/ethereum-1/0xba28202f6e734bf4f469f441a4f7882c735dd636/) | ⚠️ Unaudited |
| PayloadIGP26 | unknown | ethereum | n/a | [`0x1c2b40...4024a1`](./contracts/ethereum-1/0x1c2b4046cf4934884e03cfe1ef6d796b6c4024a1/) | ⚠️ Unaudited |
| PayloadIGP27 | unknown | ethereum | n/a | [`0xa47fd9...8167bc`](./contracts/ethereum-1/0xa47fd983463206c49b5a05b7da4f5410588167bc/) | ⚠️ Unaudited |
| PayloadIGP28 | unknown | ethereum | n/a | [`0x840155...1429a5`](./contracts/ethereum-1/0x8401554a7fc881cea845537b51bcd79ab91429a5/) | ⚠️ Unaudited |
| PayloadIGP29 | unknown | ethereum | n/a | [`0xceb709...2e12c9`](./contracts/ethereum-1/0xceb70946010ee662c05f5a30b53784e4012e12c9/) | ⚠️ Unaudited |
| PayloadIGP30 | unknown | ethereum | n/a | [`0x3b7269...7e8e75`](./contracts/ethereum-1/0x3b7269044070f085ca3397bc07b412d87c7e8e75/) | ⚠️ Unaudited |
| PayloadIGP31 | unknown | ethereum | n/a | [`0x14fc27...457ab1`](./contracts/ethereum-1/0x14fc2789524d8812983d91e0738ba4c1db457ab1/) | ⚠️ Unaudited |
| PayloadIGP32 | unknown | ethereum | n/a | [`0x7a8d2a...a2e30e`](./contracts/ethereum-1/0x7a8d2aa34ec36a42e62376213e2598249da2e30e/) | ⚠️ Unaudited |
| PayloadIGP33 | unknown | ethereum | n/a | [`0xc0a2bd...5acdb3`](./contracts/ethereum-1/0xc0a2bde873c8f1c05f7d752a3f9de2e6075acdb3/) | ⚠️ Unaudited |
| PayloadIGP34 | unknown | ethereum | n/a | [`0x827746...659c00`](./contracts/ethereum-1/0x8277469e5f206308cf1e0afdffcc5586e1659c00/) | ⚠️ Unaudited |
| PayloadIGP35 | unknown | ethereum | n/a | [`0xea0896...882ce4`](./contracts/ethereum-1/0xea0896bb75e4773661e0e439f33638515e882ce4/) | ⚠️ Unaudited |
| PayloadIGP36 | unknown | ethereum | n/a | [`0x25ee4f...d2e154`](./contracts/ethereum-1/0x25ee4f8e09789992cc133431816fe7d456d2e154/) | ⚠️ Unaudited |
| PayloadIGP37 | unknown | ethereum | n/a | [`0x81fe88...cdfe24`](./contracts/ethereum-1/0x81fe88ce9c059ac18d22f932eeb5773debcdfe24/) | ⚠️ Unaudited |
| PayloadIGP38 | unknown | ethereum | n/a | [`0x316423...ef92a3`](./contracts/ethereum-1/0x316423933b6cefc9846ae847291e2ecfeeef92a3/) | ⚠️ Unaudited |
| PayloadIGP39 | unknown | ethereum | n/a | [`0x7c5e1f...f1c6ac`](./contracts/ethereum-1/0x7c5e1ffd6d0e51fa34e03370fb0204daeff1c6ac/) | ⚠️ Unaudited |
| PayloadIGP40 | unknown | ethereum | n/a | [`0x9c571b...e7430b`](./contracts/ethereum-1/0x9c571b5b6668daa279e9965c0239c46218e7430b/) | ⚠️ Unaudited |
| PayloadIGP41 | unknown | ethereum | n/a | [`0xe517fb...ef5dd9`](./contracts/ethereum-1/0xe517fbbbac0858ce97cb6ad2ec5b4c9943ef5dd9/) | ⚠️ Unaudited |
| PayloadIGP42 | unknown | ethereum | n/a | [`0x589cff...0940fc`](./contracts/ethereum-1/0x589cff8ef47308cd463a557c36c2d2c7900940fc/) | ⚠️ Unaudited |
| PayloadIGP43 | unknown | ethereum | n/a | [`0x0476b7...b73fc0`](./contracts/ethereum-1/0x0476b7a0f682542f17f2edf3499933e84bb73fc0/) | ⚠️ Unaudited |
| PayloadIGP44 | unknown | ethereum | n/a | [`0x62692b...6f49b2`](./contracts/ethereum-1/0x62692b02c265e3f4bd9c7482bac3edd6b56f49b2/) | ⚠️ Unaudited |
| PayloadIGP45 | unknown | ethereum | n/a | [`0x748b66...9a8470`](./contracts/ethereum-1/0x748b66de7800b3d0c6fd0f565bc6c74a9a9a8470/) | ⚠️ Unaudited |
| PayloadIGP46 | unknown | ethereum | n/a | [`0x212e6c...086cdf`](./contracts/ethereum-1/0x212e6cfe636527d2aa0e5eabb40f962679086cdf/) | ⚠️ Unaudited |
| PayloadIGP47 | unknown | ethereum | n/a | [`0xbb77ff...952f54`](./contracts/ethereum-1/0xbb77ffa37c97e43e9df1d61cfefa7a82d3952f54/) | ⚠️ Unaudited |
| PayloadIGP48 | unknown | ethereum | n/a | [`0x038642...740b96`](./contracts/ethereum-1/0x038642fe64cdbd4de681dfa86652890bfc740b96/) | ⚠️ Unaudited |
| PayloadIGP49 | unknown | ethereum | n/a | [`0x320882...d23de1`](./contracts/ethereum-1/0x32088266ba4494fe9846c7c42f33025bcdd23de1/) | ⚠️ Unaudited |
| PayloadIGP50 | unknown | ethereum | n/a | [`0xcaf7ad...e691e3`](./contracts/ethereum-1/0xcaf7ad6154a4e3fa0095a0ade3dff3189ee691e3/) | ⚠️ Unaudited |
| PayloadIGP51 | unknown | ethereum | n/a | [`0xf6ca71...f470e1`](./contracts/ethereum-1/0xf6ca71a91d7af3ea0f348dd566ccac0366f470e1/) | ⚠️ Unaudited |
| PayloadIGP52 | unknown | ethereum | n/a | [`0x594743...af36da`](./contracts/ethereum-1/0x594743b9c491ee757dd324ca61bb199da1af36da/) | ⚠️ Unaudited |
| PayloadIGP53 | unknown | ethereum | n/a | [`0x178c23...de2186`](./contracts/ethereum-1/0x178c23017eb63cc98e949a3f38ba4933eede2186/) | ⚠️ Unaudited |
| PayloadIGP54 | unknown | ethereum | n/a | [`0x90a962...28b50e`](./contracts/ethereum-1/0x90a96215b21e918fb5514c10002c07a67728b50e/) | ⚠️ Unaudited |
| PayloadIGP55 | unknown | ethereum | n/a | [`0xadd05f...782990`](./contracts/ethereum-1/0xadd05fd0cb88575dbbc2afd64775c71b27782990/) | ⚠️ Unaudited |
| PayloadIGP56 | unknown | ethereum | n/a | [`0x31110c...a07018`](./contracts/ethereum-1/0x31110cc2ce436999936fd57cd6ce6c0de2a07018/) | ⚠️ Unaudited |
| PayloadIGP57 | unknown | ethereum | n/a | [`0xc65006...0c5225`](./contracts/ethereum-1/0xc650062b2e69d21d6b19fffef9f17d6c250c5225/) | ⚠️ Unaudited |
| PayloadIGP58 | unknown | ethereum | n/a | [`0x92019a...f5d65b`](./contracts/ethereum-1/0x92019a0c45d93eb7d7bb63aa5728ffc570f5d65b/) | ⚠️ Unaudited |
| PayloadIGP59 | unknown | ethereum | n/a | [`0x3ff7b1...1b57e3`](./contracts/ethereum-1/0x3ff7b11fa918d27280a3eb272c98b828271b57e3/) | ⚠️ Unaudited |
| PayloadIGP60 | unknown | ethereum | n/a | [`0x3e8cbe...006460`](./contracts/ethereum-1/0x3e8cbe99c87ff746fe05d48fdf6471cf4f006460/) | ⚠️ Unaudited |
| PayloadIGP61 | unknown | ethereum | n/a | [`0x53a7cc...740606`](./contracts/ethereum-1/0x53a7cc138dee77d34642d716beba78f012740606/) | ⚠️ Unaudited |
| PayloadIGP62 | unknown | ethereum | n/a | [`0xdd79b0...074355`](./contracts/ethereum-1/0xdd79b0ac03c9bf31651ed426f38bc78081074355/) | ⚠️ Unaudited |
| PayloadIGP63 | unknown | ethereum | n/a | [`0x47b4a6...bc28bb`](./contracts/ethereum-1/0x47b4a6982d334cf1bb4d5462b58d372831bc28bb/) | ⚠️ Unaudited |
| PayloadIGP64 | unknown | ethereum | n/a | [`0xf472c6...1e6959`](./contracts/ethereum-1/0xf472c6252bb2872dd0cd06019fb344cee61e6959/) | ⚠️ Unaudited |
| PayloadIGP65 | unknown | ethereum | n/a | [`0x8ee1f5...ed3a7f`](./contracts/ethereum-1/0x8ee1f5b8e7bf4f0c1aa689a6ac18b04027ed3a7f/) | ⚠️ Unaudited |
| PayloadIGP66 | unknown | ethereum | n/a | [`0xc2cd2a...d0b195`](./contracts/ethereum-1/0xc2cd2a40b6b8e2fd55a9c4d7f0f06a1ddad0b195/) | ⚠️ Unaudited |
| PayloadIGP67 | unknown | ethereum | n/a | [`0x563620...579d8c`](./contracts/ethereum-1/0x5636209362a058f9aadd6da3e65d783065579d8c/) | ⚠️ Unaudited |
| PayloadIGP68 | unknown | ethereum | n/a | [`0x99c174...55afc7`](./contracts/ethereum-1/0x99c174a366dffa0c2c06223362e4b1274955afc7/) | ⚠️ Unaudited |
| PayloadIGP69 | unknown | ethereum | n/a | [`0x3290b7...5df948`](./contracts/ethereum-1/0x3290b76ea44b68297500c76a6db2e79b6f5df948/) | ⚠️ Unaudited |
| PayloadIGP7 | unknown | ethereum | n/a | [`0x77d148...ac04b3`](./contracts/ethereum-1/0x77d14861450b742d7892a227cefca47006ac04b3/) | ⚠️ Unaudited |
| PayloadIGP70 | unknown | ethereum | n/a | [`0xada8b7...233508`](./contracts/ethereum-1/0xada8b72304b5cac6394dc781a0fd198c80233508/) | ⚠️ Unaudited |
| PayloadIGP71 | unknown | ethereum | n/a | [`0x5f1dc0...a2a9fc`](./contracts/ethereum-1/0x5f1dc0f05959000b101cab1859a0cb69d8a2a9fc/) | ⚠️ Unaudited |
| PayloadIGP72 | unknown | ethereum | n/a | [`0x2f633e...e4d943`](./contracts/ethereum-1/0x2f633e7529de83b3aa891eb45b545c70ace4d943/) | ⚠️ Unaudited |
| PayloadIGP73 | unknown | ethereum | n/a | [`0x8b366b...3979ad`](./contracts/ethereum-1/0x8b366b9517cf8791e38b18adf404e538e63979ad/) | ⚠️ Unaudited |
| PayloadIGP74 | unknown | ethereum | n/a | [`0xd39ccf...dc0669`](./contracts/ethereum-1/0xd39ccfcd2fabe87e64c79e86b85a96ee9bdc0669/) | ⚠️ Unaudited |
| PayloadIGP75 | unknown | ethereum | n/a | [`0x33253a...5f60b9`](./contracts/ethereum-1/0x33253a73bf143c587d9ad6984ccea488755f60b9/) | ⚠️ Unaudited |
| PayloadIGP76 | unknown | ethereum | n/a | [`0xa64c37...adf842`](./contracts/ethereum-1/0xa64c379735f894069d3770e45ac7fb6fe6adf842/) | ⚠️ Unaudited |
| PayloadIGP77 | unknown | ethereum | n/a | [`0x52ce81...7d819d`](./contracts/ethereum-1/0x52ce811ec5b5c33e47b798e45b727e57e77d819d/) | ⚠️ Unaudited |
| PayloadIGP78 | unknown | ethereum | n/a | [`0x48d3c9...874820`](./contracts/ethereum-1/0x48d3c9e67552c85255e9b26a0e63a54c93874820/) | ⚠️ Unaudited |
| PayloadIGP79 | unknown | ethereum | n/a | [`0x3f7045...656d6a`](./contracts/ethereum-1/0x3f70456ce06a300841b81a9befadb8ce9e656d6a/) | ⚠️ Unaudited |
| PayloadIGP8 | unknown | ethereum | n/a | [`0x15640e...87eaea`](./contracts/ethereum-1/0x15640e3fac43e586c3396aa2d10df2cb4c87eaea/) | ⚠️ Unaudited |
| PayloadIGP80 | unknown | ethereum | n/a | [`0xfa3100...6ee35b`](./contracts/ethereum-1/0xfa3100c0216092ac0850f208da09c8dba26ee35b/) | ⚠️ Unaudited |
| PayloadIGP81 | unknown | ethereum | n/a | [`0x256a1c...788beb`](./contracts/ethereum-1/0x256a1cc2cbc620b3cbd167aba36b7a9e7e788beb/) | ⚠️ Unaudited |
| PayloadIGP82 | unknown | ethereum | n/a | [`0x0c59b4...1f48e7`](./contracts/ethereum-1/0x0c59b44b58e39dd3eb7ffadc1c6464885a1f48e7/) | ⚠️ Unaudited |
| PayloadIGP83 | unknown | ethereum | n/a | [`0x396e10...6d3254`](./contracts/ethereum-1/0x396e102b9b3b0342c55dc23c3fc607ea766d3254/) | ⚠️ Unaudited |
| PayloadIGP84 | unknown | ethereum | n/a | [`0x3ffdc5...3c4da6`](./contracts/ethereum-1/0x3ffdc52c928573a042cfe1c0e3f67e5cf03c4da6/) | ⚠️ Unaudited |
| PayloadIGP85 | unknown | ethereum | n/a | [`0x4e0684...ebf189`](./contracts/ethereum-1/0x4e0684a0c6b0d749756c6f4d58f576b7fbebf189/) | ⚠️ Unaudited |
| PayloadIGP86 | unknown | ethereum | n/a | [`0x0a889c...6a7732`](./contracts/ethereum-1/0x0a889c0b458ea4e97780784a3b17f659a06a7732/) | ⚠️ Unaudited |
| PayloadIGP87 | unknown | ethereum | n/a | [`0x0856f1...44e8b7`](./contracts/ethereum-1/0x0856f1049154190169ff21b4cf8587cf7344e8b7/) | ⚠️ Unaudited |
| PayloadIGP88 | unknown | ethereum | n/a | [`0x54e819...dc6310`](./contracts/ethereum-1/0x54e819c717dc8f9485991b75657a09410adc6310/) | ⚠️ Unaudited |
| PayloadIGP89 | unknown | ethereum | n/a | [`0x4c4356...42695a`](./contracts/ethereum-1/0x4c43567ced5ffa1b3c81a4f357446a4ae642695a/) | ⚠️ Unaudited |
| PayloadIGP9 | unknown | ethereum | n/a | [`0xdca36a...2a6cdd`](./contracts/ethereum-1/0xdca36a27e05c32f20fa3a2a090f9c3c0142a6cdd/) | ⚠️ Unaudited |
| PayloadIGP90 | unknown | ethereum | n/a | [`0xd60efb...067953`](./contracts/ethereum-1/0xd60efbe6e23f516045f74259a097d585cb067953/) | ⚠️ Unaudited |
| PayloadIGP91 | unknown | ethereum | n/a | [`0x6195c2...73ab48`](./contracts/ethereum-1/0x6195c21d7d2359ed87811120aee52adddb73ab48/) | ⚠️ Unaudited |
| PayloadIGP92 | unknown | ethereum | n/a | [`0xee6790...656a06`](./contracts/ethereum-1/0xee6790c6432eb303bf2d7c5e84d2ffbf36656a06/) | ⚠️ Unaudited |
| PayloadIGP93 | unknown | ethereum | n/a | [`0xd30c16...307d98`](./contracts/ethereum-1/0xd30c16334269193cea74e10ac70553548b307d98/) | ⚠️ Unaudited |
| PayloadIGP94 | unknown | ethereum | n/a | [`0xf79ee6...7ad572`](./contracts/ethereum-1/0xf79ee649a2bdbab771384b71453e8706357ad572/) | ⚠️ Unaudited |
| PayloadIGP95 | unknown | ethereum | n/a | [`0x3f585a...2db55b`](./contracts/ethereum-1/0x3f585a19e6582ea9aa7f084761f913f22b2db55b/) | ⚠️ Unaudited |
| PayloadIGP96 | unknown | ethereum | n/a | [`0x0e0eba...dc8015`](./contracts/ethereum-1/0x0e0eba1613cbe1d9b5e352a32cd6299d6bdc8015/) | ⚠️ Unaudited |
| PayloadIGP97 | unknown | ethereum | n/a | [`0xef6c6f...ac0609`](./contracts/ethereum-1/0xef6c6f8a8c00f0411089151d430237a741ac0609/) | ⚠️ Unaudited |
| PayloadIGP98 | unknown | ethereum | n/a | [`0xb02ce6...97f956`](./contracts/ethereum-1/0xb02ce6d457867b80bf8dbccb8f6f9e430d97f956/) | ⚠️ Unaudited |
| PayloadIGP99 | unknown | ethereum | n/a | [`0xe90266...07e22d`](./contracts/ethereum-1/0xe90266b7f09e67acd254381c5bba60832307e22d/) | ⚠️ Unaudited |
| ReadModule | unknown | ethereum | n/a | [`0x3301a8...0b6435`](./contracts/ethereum-1/0x3301a8c3f26f100c5426771e45aa5ec1680b6435/) | ⚠️ Unaudited |
| SecurityModule | unknown | ethereum | n/a | [`0xc0dfec...fa469c`](./contracts/ethereum-1/0xc0dfec70632fb5ec3a867db4bf08acd643fa469c/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x8d7945...374bab`](./contracts/ethereum-1/0x8d7945bf14c2cbdb1ca5464455c5cba66f374bab/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0x53c4de...91a8f5`](./contracts/ethereum-1/0x53c4deafba1054ffc0dffc3993758261ee91a8f5/) | ⚠️ Unaudited |
| TransferAssets | unknown | ethereum | n/a | [`0x93c4b8...ef13ee`](./contracts/ethereum-1/0x93c4b8d10d8886e797c50c58b8c4e1d231ef13ee/) | ⚠️ Unaudited |
| VaultDummyImplementation | unknown | ethereum | n/a | [`0x121be6...a6be5b`](./contracts/ethereum-1/0x121be6935279627ed849e186bfcf8a5300a6be5b/) | ⚠️ Unaudited |
| VaultResolver | unknown | ethereum | n/a | [`0x1951de...41a06f`](./contracts/ethereum-1/0x1951deae43cac1613b622d985bd09abad641a06f/) | ⚠️ Unaudited |
| ZtakingPool | unknown | ethereum | n/a | [`0x221c2b...d881f0`](./contracts/ethereum-1/0x221c2b6ee63dcede31ea703898ae15d889d881f0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://docs.fluid.instadapp.io/audits-and-security.html) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Peckshield_Fluid_Audit.pdf) | PeckShield | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Statemind_Fluid_Audit.pdf) | Statemind | Audit | 2023-12 | stale | Direct | contract_name | 15 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/cantina-audit-dex.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | 14 | low|medium |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Mixbytes_Fluid_Dex_Audit.pdf) | MixBytes | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/MixBytes_Fluid_Liquidity_Audit.pdf) | MixBytes | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Statemind_Fluid_Liquidity_Updates_Audit.pdf) | Statemind | Audit | 2025-10 | fresh | Direct | contract_name | 14 | high |
| [Mixbytes_Fluid_Vault_Protocol_Audit.pdf (also discovered via alternate URL)](https://docs.fluid.io/Mixbytes_Fluid_Vault_Protocol_Audit.pdf) | MixBytes | Audit | 2024-06 | stale | Direct | contract_name|n/a | 14 | high |
| [/URI ()](https://github.com/mixbytes/audits_public) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x008f8e...f87f74`](./contracts/ethereum-1/0x008f8e5cb02a2f6f79fc91ed2ca3a6fe0ff87f74/) | BatchMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | BoringVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f4b45...71de62`](./contracts/ethereum-1/0x8f4b452225df22fc1e449bda0202f7162a71de62/) | ConnectAave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f1e38...504f1b`](./contracts/ethereum-1/0x8f1e38c53af7bd2b2be01b9580911b7cca504f1b/) | ConnectAaveIncentives | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa96b2f...d64d78`](./contracts/ethereum-1/0xa96b2f679fb935ba279ea9395402ca4696d64d78/) | ConnectAaveStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9686ce...22e7ba`](./contracts/ethereum-1/0x9686ce6ad5c3f7b212caf401b928c4bb3422e7ba/) | ConnectAaveV2PolygonMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeaac57...8f7b07`](./contracts/ethereum-1/0xeaac5739eb532110431b14d01017506dba8f7b07/) | ConnectCOMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4c77f...68e6fa`](./contracts/ethereum-1/0xc4c77f9a56bb841952b452cf504ebd614368e6fa/) | ConnectCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a2622...469bf8`](./contracts/ethereum-1/0x2a26228e607ffd2ab2bd3aa49cbae0edc6469bf8/) | ConnectInstaPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fca8d...069984`](./contracts/ethereum-1/0x6fca8d826fefd6cfac2a1ad33ff46b3a06069984/) | ConnectMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f774c...ca727d`](./contracts/ethereum-1/0x4f774c123d012a6cfd5918b7f4ce7d3386ca727d/) | ConnectMigrate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x996b52...557a29`](./contracts/ethereum-1/0x996b5247ff7fa67cdea16e5de29b8bfeef557a29/) | ConnectOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62659f...c6dac6`](./contracts/ethereum-1/0x62659fe13c254100eb354ad2226a8fdddbc6dac6/) | ConnectPolygonBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8358a9...5490a7`](./contracts/ethereum-1/0x8358a92707824476f0d788075d53b627e85490a7/) | ConnectV2AaveImport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x611c1f...ee85e0`](./contracts/ethereum-1/0x611c1fa59aa1d6352c4c8bd44882063c6aee85e0/) | ConnectV2AaveIncentives | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf73c94...c37d5b`](./contracts/ethereum-1/0xf73c94402bc24148b744083ed02654eec2c37d5b/) | ConnectV2AaveStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x612c5c...f97e9d`](./contracts/ethereum-1/0x612c5ca43230d9f97a0ac87e4420f66b8df97e9d/) | ConnectV2AaveV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x497bc5...c9dbb8`](./contracts/ethereum-1/0x497bc53507df17e60f731e9534cff74e8bc9dbb8/) | ConnectV2AaveV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x893056...4e3f14`](./contracts/ethereum-1/0x89305678cc853a929428fa6a97ab35bd864e3f14/) | ConnectV2AaveV2Import | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16a26a...974a38`](./contracts/ethereum-1/0x16a26a54ce43affff8c54d2af709b0a388974a38/) | ConnectV2AaveV2ImportPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x335ddc...ef7e09`](./contracts/ethereum-1/0x335ddc96779eff7390d251812519e4aeacef7e09/) | ConnectV2AaveV2MerkleImport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x351bb3...f31c68`](./contracts/ethereum-1/0x351bb32e90c35647df7a584f3c1a3a0c38f31c68/) | ConnectV2Auth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x992695...061687`](./contracts/ethereum-1/0x9926955e0dd681dc303370c52f4ad0a4dd061687/) | ConnectV2Basic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ecbf5...69c42b`](./contracts/ethereum-1/0x6ecbf5a77d65f857c66fe729cb3cd7835369c42b/) | ConnectV2BasicERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfa17...4f15e9`](./contracts/ethereum-1/0x4dfa1780ae85f0ec7197c61ffe533c7dc84f15e9/) | ConnectV2BasicERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3eefd...62460f`](./contracts/ethereum-1/0xa3eefdc2de9dfa59968becff3e15b53e6162460f/) | ConnectV2BCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0a1f1...de7bf0`](./contracts/ethereum-1/0xb0a1f10feefecf25064ce7cdf0a65042f7de7bf0/) | ConnectV2BMakerDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01fef4...f60109`](./contracts/ethereum-1/0x01fef4d2b513c9f69e34b2f93ef707fa9ff60109/) | ConnectV2COMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b1eac...a3ae25`](./contracts/ethereum-1/0x1b1eacaa31abbe544117073f6f8f658a56a3ae25/) | ConnectV2Compound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24bd20...29e8b4`](./contracts/ethereum-1/0x24bd20b89183cf797a4efea1966892147a29e8b4/) | ConnectV2CompoundImport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda1018...4eb6c0`](./contracts/ethereum-1/0xda101870ca6136539628f28041e1b55baf4eb6c0/) | ConnectV2CompoundMerkleImport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e5b90...1ea791`](./contracts/ethereum-1/0x3e5b9003e1674e15aa6a201b7b353c872c1ea791/) | ConnectV2InstaLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01a00d...fc9780`](./contracts/ethereum-1/0x01a00d6f4bec7cdaa4f6d8284ce05e3785fc9780/) | ConnectV2InstaPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08bae2...0c7222`](./contracts/ethereum-1/0x08bae28d448d1aacac2eaa850e9098274f0c7222/) | ConnectV2InstaPoolV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3643ba...f31bfe`](./contracts/ethereum-1/0x3643ba40b8e2bd8f77233bdb6abe38c218f31bfe/) | ConnectV2Liquity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe4ea1...22d9d1`](./contracts/ethereum-1/0xbe4ea1a66b31037b4ae3495ad2d86ea20622d9d1/) | ConnectV2LMClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x839c2d...b41556`](./contracts/ethereum-1/0x839c2d3ade63df5b0b8f3e57d5e145057ab41556/) | ConnectV2Maker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4049db...653ef6`](./contracts/ethereum-1/0x4049db23c605b197f764072569b8db2464653ef6/) | ConnectV2MakerDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f8cbe...c5a4e8`](./contracts/ethereum-1/0x2f8cbe650af98602a215b6482f2ad60893c5a4e8/) | ConnectV2MakerDAOClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a0068...763c88`](./contracts/ethereum-1/0x2a00684bfab9717c21271e0751bccb7d2d763c88/) | ConnectV2Migrate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x235fca...3e4b7c`](./contracts/ethereum-1/0x235fca310ac7be45c7ad45f111203468743e4b7c/) | ConnectV2OneInch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabac3d...bc5e04`](./contracts/ethereum-1/0xabac3dcf164ed827eafda8e05ecc8208d6bc5e04/) | ConnectV2OneProto | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b79b3...510ad5`](./contracts/ethereum-1/0x1b79b302132370b434fb7807b36cb72fb0510ad5/) | ConnectV2PolygonBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f2293...b27856`](./contracts/ethereum-1/0x6f22931423e8ffc8d51f6e5af73118fc64b27856/) | ConnectV2Refinance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac6dc2...9ae2c8`](./contracts/ethereum-1/0xac6dc28a6251f49bbe5755e630107dccde9ae2c8/) | ConnectV2Reflexer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8e9ef...14d2f8`](./contracts/ethereum-1/0xb8e9ef2a085671858d923aa947cb93b88714d2f8/) | connectV2StakeGUNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5ce4...afc43c`](./contracts/ethereum-1/0x1e5ce41bdb653734445fec3553b61febddafc43c/) | ConnectV2UniswapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25b0c7...d4c475`](./contracts/ethereum-1/0x25b0c76de86c3457b9b8b9ee3775f5a7b8d4c475/) | ConnectV2UniswapV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x917de7...dbe414`](./contracts/ethereum-1/0x917de7305e73a4175192d9c895c34a174edbe414/) | ConnectV2UniswapV3Staker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21bee1...4dd901`](./contracts/ethereum-1/0x21bee1486d42fbc3904413c604c35e1e584dd901/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49e4db...da3207`](./contracts/ethereum-1/0x49e4db0a4d63c73bae75747ee12ab63bbdda3207/) | EthRateExecuteUpdate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | FiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | FiatTokenUtil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | FiatTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1de429...946e6d`](./contracts/arbitrum-42161/0x1de42938de444d376ebc298e15d21f409b946e6d/) | FluidDexResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52aa89...f4e497`](./contracts/ethereum-1/0x52aa899454998be5b000ad077a46bbe360f4e497/) | FluidLiquidityDummyImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35a915...d3b0cd`](./contracts/base-8453/0x35a915336e2b3349fa94c133491b915ed3d3b0cd/) | FluidLiquidityResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x273da9...c29012`](./contracts/ethereum-1/0x273da948aca9261043fbdb2a857bc255ecc29012/) | FluidLiteVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f9e1...d08713`](./contracts/ethereum-1/0xa8f9e1d9630e7a3eb6c654b256dc7845a9d08713/) | GUD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a448...08a882`](./contracts/ethereum-1/0x37a448a8fa94f422d72be53d32c76c26d808a882/) | IDAIPriceResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce5b90...271cc9`](./contracts/ethereum-1/0xce5b90bf5f68b91dd9628fad5dc942f0d9271cc9/) | IETHPriceResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x814072...8824d6`](./contracts/ethereum-1/0x8140725f7bda9484e20a86b9ed76cd39748824d6/) | IEthSupplyWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba631...b28944`](./contracts/ethereum-1/0x1ba631331503f0486538cb707c6685cbc6b28944/) | InstaAaveV2MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cd072...599301`](./contracts/ethereum-1/0x3cd0727d7bbbb6a5eadbdc72349370a7eb599301/) | InstaAaveV2MigratorSenderImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb3a1d...54578b`](./contracts/ethereum-1/0xfb3a1d56ed56f046721b9aca749895100754578b/) | InstaAaveV2Resolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb208cd...9a149f`](./contracts/ethereum-1/0xb208cdf8e1c319d0019397dcec8e0ba3fb9a149f/) | InstaAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12d7d1...99e65b`](./contracts/ethereum-1/0x12d7d18c5ad9f56ff323840a1c26c2ab1a99e65b/) | InstaAdminProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3e586...cdc370`](./contracts/ethereum-1/0xb3e586bce929312e8b0685e2c12c1d6dbbcdc370/) | InstaChiefTimelockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x630008...05b896`](./contracts/ethereum-1/0x6300080a77ffff563b542978555d121ded05b896/) | InstaCompoundMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xccaa4b...03321b`](./contracts/ethereum-1/0xccaa4b1b3931749b8b6ef19c6b0b2c496703321b/) | InstaCompoundResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97b0b3...b8ad11`](./contracts/ethereum-1/0x97b0b3a8bdefe8cb9563a3c610019ad10db8ad11/) | InstaConnectorsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60faee...2117b3`](./contracts/ethereum-1/0x60faeec73299cbe55d4e5736ebdf432a1d2117b3/) | InstaDefaultImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x665817...a74196`](./contracts/ethereum-1/0x6658173f1b8ba88ef82452295c60fa6843a74196/) | InstaDelegateClone | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43e444...c056c9`](./contracts/ethereum-1/0x43e4442b14badedbeea99afbbd970be2cdc056c9/) | InstaDelegateFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49fad2...834649`](./contracts/ethereum-1/0x49fad24bec517822e5d3402dd510fdc54e834649/) | InstaDSProxyMakerDAOClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a0908...79abf4`](./contracts/ethereum-1/0x4a090897f47993c2504144419751d6a91d79abf4/) | InstaEmptyImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb436ca...74cef0`](./contracts/ethereum-1/0xb436cafac369dbe34876e46d8630dc115074cef0/) | InstaFlashAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10c7b5...5caec1`](./contracts/ethereum-1/0x10c7b513b7d37f40bdbce77183b9112ec35caec1/) | InstaFlashResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d07ec...b1cf6a`](./contracts/ethereum-1/0x4d07ec0e61b60ca997e44ec14ea0114aaeb1cf6a/) | InstaGovernanceAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00613f...32ee47`](./contracts/ethereum-1/0x00613f7e762124711c7647f9eab5c8a88632ee47/) | InstaGovernorBravoDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x729bf0...061b13`](./contracts/ethereum-1/0x729bf02a9a786529fc80498f8fd0051116061b13/) | InstaGUNIV3PoolResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a3462...d90021`](./contracts/ethereum-1/0x8a3462a50e1a9fe8c9e7d9023cacbd9a98d90021/) | InstaImplementationM1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fbff3...0aa814`](./contracts/ethereum-1/0x8fbff3219bc845350edb335c83d933dcf70aa814/) | InstaImplementationM2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc5fc...ba92ea`](./contracts/ethereum-1/0x9dc5fc20c91b1bbc8ef6c36a6173314ba9ba92ea/) | InstaLiquityResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac8383...e2743c`](./contracts/ethereum-1/0xac838332afc2937fded89c16a59b2ed8e8e2743c/) | InstaMakerDAOMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xddd075...8a08d4`](./contracts/ethereum-1/0xddd075d5e1024901e4038461e1e4bbc3a48a08d4/) | InstaMappingController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa471d8...4064ff`](./contracts/ethereum-1/0xa471d83e526b6b5d6c876088d34834b44d4064ff/) | InstaMasterProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0e03e...7e4815`](./contracts/ethereum-1/0xa0e03e95bb7cfe31c7079d71bd3a7edfab7e4815/) | InstaMasterSigProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b9ae6...00bfb4`](./contracts/ethereum-1/0x3b9ae61b9feacba6c2f58d73aa484d671900bfb4/) | InstaMerkleDistributorLM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7e8e6...8a585d`](./contracts/ethereum-1/0xd7e8e6f5decc5642b77a5dd0e445965b128a585d/) | InstaPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf19ee...efe418`](./contracts/ethereum-1/0xaf19ee38397ca9cf8715197f428e02c031efe418/) | InstaPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a1739...87992f`](./contracts/ethereum-1/0x2a1739d7f07d40e76852ca8f0d82275aa087992f/) | InstaPoolV2Implementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x276b88...c79726`](./contracts/ethereum-1/0x276b88d057b368179480cb707366d497dfc79726/) | InstaPoolV2ImplementationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2386dc...481f4c`](./contracts/ethereum-1/0x2386dc45added673317ef068992f19421b481f4c/) | InstaTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68206e...b25a18`](./contracts/ethereum-1/0x68206e807c44216b606493e4415dc78e0db25a18/) | InstaTimelockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31de20...1f8773`](./contracts/ethereum-1/0x31de2088f38ed7f8a4231de03973814eda1f8773/) | InstaTokenDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0d921...232a9e`](./contracts/ethereum-1/0xc0d9210496afe9763f5d8ceb8deffba817232a9e/) | InstaTokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a96af...49a3c9`](./contracts/ethereum-1/0x1a96af80ed8753a77e23074de78480675049a3c9/) | InstaUniswapStakerResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039488...59a703`](./contracts/ethereum-1/0x03948802c3041219a6fcec3e19aeabe6f859a703/) | InstaVaultImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3730d9...dd054a`](./contracts/ethereum-1/0x3730d9b06bc23fd2e2f84f1202a7e80815dd054a/) | InstaVestingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ef95...a12dca`](./contracts/ethereum-1/0x25ef957d078941ea6d37a3670a63977869a12dca/) | InteropBetaImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5a95d...5f4b7c`](./contracts/ethereum-1/0xc5a95d64c16e157eea271d36197838d3a45f4b7c/) | IUSDCPriceResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85f8b0...e09d44`](./contracts/ethereum-1/0x85f8b080942baa0e4d685006418765f498e09d44/) | IWBTCPriceResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc15adb...4a2904`](./contracts/ethereum-1/0xc15adb22ecf004a9d5f2e87f82471090014a2904/) | LiquidityQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe935e8...9556d0`](./contracts/ethereum-1/0xe935e8db4efcf160106b5f476745f06fe79556d0/) | PayloadIGP10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee1e9a...b6b8c0`](./contracts/ethereum-1/0xee1e9a6d9b9a7394baf2417469f3935321b6b8c0/) | PayloadIGP100 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64fb3f...1fc569`](./contracts/ethereum-1/0x64fb3fc4307d9be806b38671d1725a90251fc569/) | PayloadIGP101 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35148e...e2c8d0`](./contracts/ethereum-1/0x35148e3a7cede2959a6660690a555a3b18e2c8d0/) | PayloadIGP102 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfe2ce...718ebe`](./contracts/ethereum-1/0xcfe2cefcc9ecf356b3da8674f76433e442718ebe/) | PayloadIGP103 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eb746...967af2`](./contracts/ethereum-1/0x0eb7466e0417802c4a59e8e67335311465967af2/) | PayloadIGP104 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87532d...bf6525`](./contracts/ethereum-1/0x87532d5383ee08ef815af84c0383e2457bbf6525/) | PayloadIGP105 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96c23b...d5ff15`](./contracts/ethereum-1/0x96c23b84a6475c2ef81dd7a3d45a41e788d5ff15/) | PayloadIGP106 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26f40b...641fe6`](./contracts/ethereum-1/0x26f40b8ad86c44fda4295c7d792022a521641fe6/) | PayloadIGP107 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x462b53...58b097`](./contracts/ethereum-1/0x462b53b6e6d124a298997e15ecff5dc44c58b097/) | PayloadIGP108 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f65c0...e55e49`](./contracts/ethereum-1/0x7f65c062e083b287b6981e568525359c0de55e49/) | PayloadIGP109 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaed69c...6a59a1`](./contracts/ethereum-1/0xaed69c9bb4f072bb1614188eba0417617c6a59a1/) | PayloadIGP11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x310638...a06db9`](./contracts/ethereum-1/0x31063879968c51df94ee435a3b329b4086a06db9/) | PayloadIGP110 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59ebc4...9d0aae`](./contracts/ethereum-1/0x59ebc467c389195d8fae1a0b2de73005409d0aae/) | PayloadIGP111 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b35f2...306deb`](./contracts/ethereum-1/0x3b35f2016194350901909df4935692f9ac306deb/) | PayloadIGP112 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38693a...1f4a5e`](./contracts/ethereum-1/0x38693ae30a4d0874a689bfb15b29dbeded1f4a5e/) | PayloadIGP113 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb3359...cdfb8d`](./contracts/ethereum-1/0xfb3359bfa2aa7260fdfbcdc33d3c794b99cdfb8d/) | PayloadIGP114 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8f66f...b7709b`](./contracts/ethereum-1/0xb8f66fffd70945f137a451abd3591d07a8b7709b/) | PayloadIGP115 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7003f...fea25b`](./contracts/ethereum-1/0xc7003f5cc7179d1cf2569843c2ea9f13dafea25b/) | PayloadIGP116 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41edb8...5d42fa`](./contracts/ethereum-1/0x41edb8816891cfe2859c2379ff242a24fa5d42fa/) | PayloadIGP117 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ad0f4...b13478`](./contracts/ethereum-1/0x8ad0f4cf8d3d33c0bb9de162a43fa369c3b13478/) | PayloadIGP118 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dcc1f...a1d30a`](./contracts/ethereum-1/0x3dcc1f84f23678454dbff89d5298ae0022a1d30a/) | PayloadIGP119 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe83188...c93dcd`](./contracts/ethereum-1/0xe83188f97b3e22892c543731d124e44ba6c93dcd/) | PayloadIGP12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x954790...95069a`](./contracts/ethereum-1/0x9547909722f32016cfa24074c5f6448c3295069a/) | PayloadIGP120 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3caf9...4457a2`](./contracts/ethereum-1/0xd3caf9b00d5a9163fbe6d9b2e18392c19d4457a2/) | PayloadIGP121 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78b7f5...62968b`](./contracts/ethereum-1/0x78b7f59f062154f13f20e5b5a43c96e41662968b/) | PayloadIGP122 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fc215...d917f2`](./contracts/ethereum-1/0x9fc2157838bd1df329b3fe2f07748477f5d917f2/) | PayloadIGP123 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28806b...6de3d8`](./contracts/ethereum-1/0x28806bfd9e367b990b72e7477fceae3f6a6de3d8/) | PayloadIGP124 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0aeb5...829d77`](./contracts/ethereum-1/0xe0aeb50bcff133abb4080195e483f9aed9829d77/) | PayloadIGP125 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x987cb3...2a4f32`](./contracts/ethereum-1/0x987cb30d3a92982e0080ff7f59793899232a4f32/) | PayloadIGP126 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9823c...d25458`](./contracts/ethereum-1/0xf9823cbde8d3ca725775c0cbb7a1b1a185d25458/) | PayloadIGP127 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43a5e7...bb4e63`](./contracts/ethereum-1/0x43a5e795b43542e5adab793c239214cc79bb4e63/) | PayloadIGP128 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21d8f1...f2b30e`](./contracts/ethereum-1/0x21d8f1393146b6926b486e91aa6bbcc6aaf2b30e/) | PayloadIGP129 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee2551...8693a9`](./contracts/ethereum-1/0xee255113d790a90145c98334c958599d1d8693a9/) | PayloadIGP13 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd054f...8e0e89`](./contracts/ethereum-1/0xfd054f9340fad3b4e363b6e750c7ee64858e0e89/) | PayloadIGP130 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd55583...b5f743`](./contracts/ethereum-1/0xd5558354087680f4f0d24ecd49716444c4b5f743/) | PayloadIGP131 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x079145...c8c960`](./contracts/ethereum-1/0x07914557cab20c637fbf84e1fd70257883c8c960/) | PayloadIGP132 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac4fb1...883757`](./contracts/ethereum-1/0xac4fb19bc9c861d3ad9854d5346e92897c883757/) | PayloadIGP133 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcca061...c9f7d3`](./contracts/ethereum-1/0xcca061b8f5ed2b6065c96910d53df056aac9f7d3/) | PayloadIGP134 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf909b...f17d11`](./contracts/ethereum-1/0xdf909b5dd09be35aa8d9e6c1d22cee3ebcf17d11/) | PayloadIGP135 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c5f9e...560ae8`](./contracts/ethereum-1/0x9c5f9e5987ebc5cb589215d6ce9af8fe72560ae8/) | PayloadIGP14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43b57c...7df982`](./contracts/ethereum-1/0x43b57c84abd7b3558e4e23d54c2e44de0a7df982/) | PayloadIGP15 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47483e...edc15c`](./contracts/ethereum-1/0x47483e09b4f5cbc3c06b2ae736e00a1df7edc15c/) | PayloadIGP16 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd6781...88022d`](./contracts/ethereum-1/0xcd6781820ffc72fa78b364612c96c0050d88022d/) | PayloadIGP17 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3cbe01...91d408`](./contracts/ethereum-1/0x3cbe013f1ad60d7183cf87ee1250b1729491d408/) | PayloadIGP18 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cf32...dded71`](./contracts/ethereum-1/0x23cf324cf16b04af6dbc077bbd8b30c004dded71/) | PayloadIGP19 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6bcc3...881889`](./contracts/ethereum-1/0xb6bcc36463877cd1636be5959641d3f4c2881889/) | PayloadIGP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6f441...83635d`](./contracts/ethereum-1/0xe6f441858d6c0c66546804fe62e40eb6af83635d/) | PayloadIGP21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93554b...14eb69`](./contracts/ethereum-1/0x93554b0bc722d9e48c9ad4a518195042fd14eb69/) | PayloadIGP22 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5aa7f3...11ca9f`](./contracts/ethereum-1/0x5aa7f388f8739ad1af7b8f0f3093dee47211ca9f/) | PayloadIGP23 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaab305...2cdac8`](./contracts/ethereum-1/0xaab305031336580610b00ee64eba657f632cdac8/) | PayloadIGP24 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba2820...5dd636`](./contracts/ethereum-1/0xba28202f6e734bf4f469f441a4f7882c735dd636/) | PayloadIGP25 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c2b40...4024a1`](./contracts/ethereum-1/0x1c2b4046cf4934884e03cfe1ef6d796b6c4024a1/) | PayloadIGP26 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa47fd9...8167bc`](./contracts/ethereum-1/0xa47fd983463206c49b5a05b7da4f5410588167bc/) | PayloadIGP27 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x840155...1429a5`](./contracts/ethereum-1/0x8401554a7fc881cea845537b51bcd79ab91429a5/) | PayloadIGP28 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xceb709...2e12c9`](./contracts/ethereum-1/0xceb70946010ee662c05f5a30b53784e4012e12c9/) | PayloadIGP29 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b7269...7e8e75`](./contracts/ethereum-1/0x3b7269044070f085ca3397bc07b412d87c7e8e75/) | PayloadIGP30 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14fc27...457ab1`](./contracts/ethereum-1/0x14fc2789524d8812983d91e0738ba4c1db457ab1/) | PayloadIGP31 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a8d2a...a2e30e`](./contracts/ethereum-1/0x7a8d2aa34ec36a42e62376213e2598249da2e30e/) | PayloadIGP32 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0a2bd...5acdb3`](./contracts/ethereum-1/0xc0a2bde873c8f1c05f7d752a3f9de2e6075acdb3/) | PayloadIGP33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x827746...659c00`](./contracts/ethereum-1/0x8277469e5f206308cf1e0afdffcc5586e1659c00/) | PayloadIGP34 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea0896...882ce4`](./contracts/ethereum-1/0xea0896bb75e4773661e0e439f33638515e882ce4/) | PayloadIGP35 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ee4f...d2e154`](./contracts/ethereum-1/0x25ee4f8e09789992cc133431816fe7d456d2e154/) | PayloadIGP36 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81fe88...cdfe24`](./contracts/ethereum-1/0x81fe88ce9c059ac18d22f932eeb5773debcdfe24/) | PayloadIGP37 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316423...ef92a3`](./contracts/ethereum-1/0x316423933b6cefc9846ae847291e2ecfeeef92a3/) | PayloadIGP38 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c5e1f...f1c6ac`](./contracts/ethereum-1/0x7c5e1ffd6d0e51fa34e03370fb0204daeff1c6ac/) | PayloadIGP39 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c571b...e7430b`](./contracts/ethereum-1/0x9c571b5b6668daa279e9965c0239c46218e7430b/) | PayloadIGP40 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe517fb...ef5dd9`](./contracts/ethereum-1/0xe517fbbbac0858ce97cb6ad2ec5b4c9943ef5dd9/) | PayloadIGP41 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x589cff...0940fc`](./contracts/ethereum-1/0x589cff8ef47308cd463a557c36c2d2c7900940fc/) | PayloadIGP42 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0476b7...b73fc0`](./contracts/ethereum-1/0x0476b7a0f682542f17f2edf3499933e84bb73fc0/) | PayloadIGP43 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62692b...6f49b2`](./contracts/ethereum-1/0x62692b02c265e3f4bd9c7482bac3edd6b56f49b2/) | PayloadIGP44 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x748b66...9a8470`](./contracts/ethereum-1/0x748b66de7800b3d0c6fd0f565bc6c74a9a9a8470/) | PayloadIGP45 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212e6c...086cdf`](./contracts/ethereum-1/0x212e6cfe636527d2aa0e5eabb40f962679086cdf/) | PayloadIGP46 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb77ff...952f54`](./contracts/ethereum-1/0xbb77ffa37c97e43e9df1d61cfefa7a82d3952f54/) | PayloadIGP47 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038642...740b96`](./contracts/ethereum-1/0x038642fe64cdbd4de681dfa86652890bfc740b96/) | PayloadIGP48 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x320882...d23de1`](./contracts/ethereum-1/0x32088266ba4494fe9846c7c42f33025bcdd23de1/) | PayloadIGP49 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcaf7ad...e691e3`](./contracts/ethereum-1/0xcaf7ad6154a4e3fa0095a0ade3dff3189ee691e3/) | PayloadIGP50 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6ca71...f470e1`](./contracts/ethereum-1/0xf6ca71a91d7af3ea0f348dd566ccac0366f470e1/) | PayloadIGP51 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x594743...af36da`](./contracts/ethereum-1/0x594743b9c491ee757dd324ca61bb199da1af36da/) | PayloadIGP52 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178c23...de2186`](./contracts/ethereum-1/0x178c23017eb63cc98e949a3f38ba4933eede2186/) | PayloadIGP53 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90a962...28b50e`](./contracts/ethereum-1/0x90a96215b21e918fb5514c10002c07a67728b50e/) | PayloadIGP54 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd05f...782990`](./contracts/ethereum-1/0xadd05fd0cb88575dbbc2afd64775c71b27782990/) | PayloadIGP55 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31110c...a07018`](./contracts/ethereum-1/0x31110cc2ce436999936fd57cd6ce6c0de2a07018/) | PayloadIGP56 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc65006...0c5225`](./contracts/ethereum-1/0xc650062b2e69d21d6b19fffef9f17d6c250c5225/) | PayloadIGP57 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92019a...f5d65b`](./contracts/ethereum-1/0x92019a0c45d93eb7d7bb63aa5728ffc570f5d65b/) | PayloadIGP58 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ff7b1...1b57e3`](./contracts/ethereum-1/0x3ff7b11fa918d27280a3eb272c98b828271b57e3/) | PayloadIGP59 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e8cbe...006460`](./contracts/ethereum-1/0x3e8cbe99c87ff746fe05d48fdf6471cf4f006460/) | PayloadIGP60 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53a7cc...740606`](./contracts/ethereum-1/0x53a7cc138dee77d34642d716beba78f012740606/) | PayloadIGP61 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd79b0...074355`](./contracts/ethereum-1/0xdd79b0ac03c9bf31651ed426f38bc78081074355/) | PayloadIGP62 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47b4a6...bc28bb`](./contracts/ethereum-1/0x47b4a6982d334cf1bb4d5462b58d372831bc28bb/) | PayloadIGP63 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf472c6...1e6959`](./contracts/ethereum-1/0xf472c6252bb2872dd0cd06019fb344cee61e6959/) | PayloadIGP64 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ee1f5...ed3a7f`](./contracts/ethereum-1/0x8ee1f5b8e7bf4f0c1aa689a6ac18b04027ed3a7f/) | PayloadIGP65 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2cd2a...d0b195`](./contracts/ethereum-1/0xc2cd2a40b6b8e2fd55a9c4d7f0f06a1ddad0b195/) | PayloadIGP66 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x563620...579d8c`](./contracts/ethereum-1/0x5636209362a058f9aadd6da3e65d783065579d8c/) | PayloadIGP67 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99c174...55afc7`](./contracts/ethereum-1/0x99c174a366dffa0c2c06223362e4b1274955afc7/) | PayloadIGP68 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3290b7...5df948`](./contracts/ethereum-1/0x3290b76ea44b68297500c76a6db2e79b6f5df948/) | PayloadIGP69 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77d148...ac04b3`](./contracts/ethereum-1/0x77d14861450b742d7892a227cefca47006ac04b3/) | PayloadIGP7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xada8b7...233508`](./contracts/ethereum-1/0xada8b72304b5cac6394dc781a0fd198c80233508/) | PayloadIGP70 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f1dc0...a2a9fc`](./contracts/ethereum-1/0x5f1dc0f05959000b101cab1859a0cb69d8a2a9fc/) | PayloadIGP71 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f633e...e4d943`](./contracts/ethereum-1/0x2f633e7529de83b3aa891eb45b545c70ace4d943/) | PayloadIGP72 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b366b...3979ad`](./contracts/ethereum-1/0x8b366b9517cf8791e38b18adf404e538e63979ad/) | PayloadIGP73 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd39ccf...dc0669`](./contracts/ethereum-1/0xd39ccfcd2fabe87e64c79e86b85a96ee9bdc0669/) | PayloadIGP74 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33253a...5f60b9`](./contracts/ethereum-1/0x33253a73bf143c587d9ad6984ccea488755f60b9/) | PayloadIGP75 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa64c37...adf842`](./contracts/ethereum-1/0xa64c379735f894069d3770e45ac7fb6fe6adf842/) | PayloadIGP76 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52ce81...7d819d`](./contracts/ethereum-1/0x52ce811ec5b5c33e47b798e45b727e57e77d819d/) | PayloadIGP77 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d3c9...874820`](./contracts/ethereum-1/0x48d3c9e67552c85255e9b26a0e63a54c93874820/) | PayloadIGP78 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f7045...656d6a`](./contracts/ethereum-1/0x3f70456ce06a300841b81a9befadb8ce9e656d6a/) | PayloadIGP79 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15640e...87eaea`](./contracts/ethereum-1/0x15640e3fac43e586c3396aa2d10df2cb4c87eaea/) | PayloadIGP8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa3100...6ee35b`](./contracts/ethereum-1/0xfa3100c0216092ac0850f208da09c8dba26ee35b/) | PayloadIGP80 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256a1c...788beb`](./contracts/ethereum-1/0x256a1cc2cbc620b3cbd167aba36b7a9e7e788beb/) | PayloadIGP81 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c59b4...1f48e7`](./contracts/ethereum-1/0x0c59b44b58e39dd3eb7ffadc1c6464885a1f48e7/) | PayloadIGP82 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x396e10...6d3254`](./contracts/ethereum-1/0x396e102b9b3b0342c55dc23c3fc607ea766d3254/) | PayloadIGP83 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ffdc5...3c4da6`](./contracts/ethereum-1/0x3ffdc52c928573a042cfe1c0e3f67e5cf03c4da6/) | PayloadIGP84 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e0684...ebf189`](./contracts/ethereum-1/0x4e0684a0c6b0d749756c6f4d58f576b7fbebf189/) | PayloadIGP85 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a889c...6a7732`](./contracts/ethereum-1/0x0a889c0b458ea4e97780784a3b17f659a06a7732/) | PayloadIGP86 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0856f1...44e8b7`](./contracts/ethereum-1/0x0856f1049154190169ff21b4cf8587cf7344e8b7/) | PayloadIGP87 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54e819...dc6310`](./contracts/ethereum-1/0x54e819c717dc8f9485991b75657a09410adc6310/) | PayloadIGP88 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c4356...42695a`](./contracts/ethereum-1/0x4c43567ced5ffa1b3c81a4f357446a4ae642695a/) | PayloadIGP89 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdca36a...2a6cdd`](./contracts/ethereum-1/0xdca36a27e05c32f20fa3a2a090f9c3c0142a6cdd/) | PayloadIGP9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd60efb...067953`](./contracts/ethereum-1/0xd60efbe6e23f516045f74259a097d585cb067953/) | PayloadIGP90 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6195c2...73ab48`](./contracts/ethereum-1/0x6195c21d7d2359ed87811120aee52adddb73ab48/) | PayloadIGP91 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee6790...656a06`](./contracts/ethereum-1/0xee6790c6432eb303bf2d7c5e84d2ffbf36656a06/) | PayloadIGP92 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd30c16...307d98`](./contracts/ethereum-1/0xd30c16334269193cea74e10ac70553548b307d98/) | PayloadIGP93 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf79ee6...7ad572`](./contracts/ethereum-1/0xf79ee649a2bdbab771384b71453e8706357ad572/) | PayloadIGP94 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f585a...2db55b`](./contracts/ethereum-1/0x3f585a19e6582ea9aa7f084761f913f22b2db55b/) | PayloadIGP95 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e0eba...dc8015`](./contracts/ethereum-1/0x0e0eba1613cbe1d9b5e352a32cd6299d6bdc8015/) | PayloadIGP96 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef6c6f...ac0609`](./contracts/ethereum-1/0xef6c6f8a8c00f0411089151d430237a741ac0609/) | PayloadIGP97 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb02ce6...97f956`](./contracts/ethereum-1/0xb02ce6d457867b80bf8dbccb8f6f9e430d97f956/) | PayloadIGP98 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe90266...07e22d`](./contracts/ethereum-1/0xe90266b7f09e67acd254381c5bba60832307e22d/) | PayloadIGP99 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3301a8...0b6435`](./contracts/ethereum-1/0x3301a8c3f26f100c5426771e45aa5ec1680b6435/) | ReadModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0dfec...fa469c`](./contracts/ethereum-1/0xc0dfec70632fb5ec3a867db4bf08acd643fa469c/) | SecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d7945...374bab`](./contracts/ethereum-1/0x8d7945bf14c2cbdb1ca5464455c5cba66f374bab/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c4de...91a8f5`](./contracts/ethereum-1/0x53c4deafba1054ffc0dffc3993758261ee91a8f5/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93c4b8...ef13ee`](./contracts/ethereum-1/0x93c4b8d10d8886e797c50c58b8c4e1d231ef13ee/) | TransferAssets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x121be6...a6be5b`](./contracts/ethereum-1/0x121be6935279627ed849e186bfcf8a5300a6be5b/) | VaultDummyImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1951de...41a06f`](./contracts/ethereum-1/0x1951deae43cac1613b622d985bd09abad641a06f/) | VaultResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x221c2b...d881f0`](./contracts/ethereum-1/0x221c2b6ee63dcede31ea703898ae15d889d881f0/) | ZtakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 260 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, low=1, medium=1
- Match method counts: extraction_exact=100

Zero-match audit list:

- [20308] DL audit link
- [20309] See here
- [20313] See here
- [20314] See here
- [20323] /URI ()

Fork inheritance lineage and inherited audits are included when available.
