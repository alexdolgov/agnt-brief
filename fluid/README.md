# Agentic Audit Brief: Fluid

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 16 (0 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Fluid (`fluid`)
- Website: [https://fluid.io/](https://fluid.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, plasma, polygon
- Contract surface: 415 unique implementations (418 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,115,045,985.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Fluid. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, ethereum. Structural roles: 1 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe16ccc91a8134d428e7b6240177f9e2b227b9743`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- FluidLiteVaultProxy (`0x273da948aca9261043fbdb2a857bc255ecc29012`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 413 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 2 of 415 unique; 413 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/261
- Verified + Unaudited implementations: 261
- Verified by bytecode match: 0
- Unverified implementations: 154
- Unique implementations: 415
- Raw deployments: 418
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (261)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9b0a619cb2c81f8ceab2af606be58f89396cff` | ⚠️ Unaudited |
| BatchMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x008f8e5cb02a2f6f79fc91ed2ca3a6fe0ff87f74` | ⚠️ Unaudited |
| BoringVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88` | ⚠️ Unaudited |
| ConnectAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4b452225df22fc1e449bda0202f7162a71de62` | ⚠️ Unaudited |
| ConnectAaveIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f1e38c53af7bd2b2be01b9580911b7cca504f1b` | ⚠️ Unaudited |
| ConnectAaveStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa96b2f679fb935ba279ea9395402ca4696d64d78` | ⚠️ Unaudited |
| ConnectAaveV2PolygonMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9686ce6ad5c3f7b212caf401b928c4bb3422e7ba` | ⚠️ Unaudited |
| ConnectCOMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaac5739eb532110431b14d01017506dba8f7b07` | ⚠️ Unaudited |
| ConnectCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4c77f9a56bb841952b452cf504ebd614368e6fa` | ⚠️ Unaudited |
| ConnectInstaPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a26228e607ffd2ab2bd3aa49cbae0edc6469bf8` | ⚠️ Unaudited |
| ConnectMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fca8d826fefd6cfac2a1ad33ff46b3a06069984` | ⚠️ Unaudited |
| ConnectMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f774c123d012a6cfd5918b7f4ce7d3386ca727d` | ⚠️ Unaudited |
| ConnectOne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x996b5247ff7fa67cdea16e5de29b8bfeef557a29` | ⚠️ Unaudited |
| ConnectPolygonBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62659fe13c254100eb354ad2226a8fdddbc6dac6` | ⚠️ Unaudited |
| ConnectV2AaveImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8358a92707824476f0d788075d53b627e85490a7` | ⚠️ Unaudited |
| ConnectV2AaveIncentives | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x611c1fa59aa1d6352c4c8bd44882063c6aee85e0` | ⚠️ Unaudited |
| ConnectV2AaveStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf73c94402bc24148b744083ed02654eec2c37d5b` | ⚠️ Unaudited |
| ConnectV2AaveV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612c5ca43230d9f97a0ac87e4420f66b8df97e9d` | ⚠️ Unaudited |
| ConnectV2AaveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497bc53507df17e60f731e9534cff74e8bc9dbb8` | ⚠️ Unaudited |
| ConnectV2AaveV2Import | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89305678cc853a929428fa6a97ab35bd864e3f14` | ⚠️ Unaudited |
| ConnectV2AaveV2ImportPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a26a54ce43affff8c54d2af709b0a388974a38` | ⚠️ Unaudited |
| ConnectV2AaveV2MerkleImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335ddc96779eff7390d251812519e4aeacef7e09` | ⚠️ Unaudited |
| ConnectV2Auth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x351bb32e90c35647df7a584f3c1a3a0c38f31c68` | ⚠️ Unaudited |
| ConnectV2Basic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9926955e0dd681dc303370c52f4ad0a4dd061687` | ⚠️ Unaudited |
| ConnectV2BasicERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ecbf5a77d65f857c66fe729cb3cd7835369c42b` | ⚠️ Unaudited |
| ConnectV2BasicERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dfa1780ae85f0ec7197c61ffe533c7dc84f15e9` | ⚠️ Unaudited |
| ConnectV2BCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3eefdc2de9dfa59968becff3e15b53e6162460f` | ⚠️ Unaudited |
| ConnectV2BMakerDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a1f10feefecf25064ce7cdf0a65042f7de7bf0` | ⚠️ Unaudited |
| ConnectV2COMP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fef4d2b513c9f69e34b2f93ef707fa9ff60109` | ⚠️ Unaudited |
| ConnectV2Compound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b1eacaa31abbe544117073f6f8f658a56a3ae25` | ⚠️ Unaudited |
| ConnectV2CompoundImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bd20b89183cf797a4efea1966892147a29e8b4` | ⚠️ Unaudited |
| ConnectV2CompoundMerkleImport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda101870ca6136539628f28041e1b55baf4eb6c0` | ⚠️ Unaudited |
| ConnectV2InstaLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5b9003e1674e15aa6a201b7b353c872c1ea791` | ⚠️ Unaudited |
| ConnectV2InstaPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a00d6f4bec7cdaa4f6d8284ce05e3785fc9780` | ⚠️ Unaudited |
| ConnectV2InstaPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08bae28d448d1aacac2eaa850e9098274f0c7222` | ⚠️ Unaudited |
| ConnectV2Interop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56230c05368af25842dc4370da8bb8a2b61ed7bf` | ⚠️ Unaudited |
| ConnectV2Liquity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3643ba40b8e2bd8f77233bdb6abe38c218f31bfe` | ⚠️ Unaudited |
| ConnectV2LMClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4ea1a66b31037b4ae3495ad2d86ea20622d9d1` | ⚠️ Unaudited |
| ConnectV2Maker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x839c2d3ade63df5b0b8f3e57d5e145057ab41556` | ⚠️ Unaudited |
| ConnectV2MakerDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4049db23c605b197f764072569b8db2464653ef6` | ⚠️ Unaudited |
| ConnectV2MakerDAOClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8cbe650af98602a215b6482f2ad60893c5a4e8` | ⚠️ Unaudited |
| ConnectV2Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a00684bfab9717c21271e0751bccb7d2d763c88` | ⚠️ Unaudited |
| ConnectV2OneInch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x235fca310ac7be45c7ad45f111203468743e4b7c` | ⚠️ Unaudited |
| ConnectV2OneProto | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabac3dcf164ed827eafda8e05ecc8208d6bc5e04` | ⚠️ Unaudited |
| ConnectV2PolygonBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b79b302132370b434fb7807b36cb72fb0510ad5` | ⚠️ Unaudited |
| ConnectV2Refinance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f22931423e8ffc8d51f6e5af73118fc64b27856` | ⚠️ Unaudited |
| ConnectV2Reflexer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6dc28a6251f49bbe5755e630107dccde9ae2c8` | ⚠️ Unaudited |
| connectV2StakeGUNI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e9ef2a085671858d923aa947cb93b88714d2f8` | ⚠️ Unaudited |
| ConnectV2UniswapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5ce41bdb653734445fec3553b61febddafc43c` | ⚠️ Unaudited |
| ConnectV2UniswapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b0c76de86c3457b9b8b9ee3775f5a7b8d4c475` | ⚠️ Unaudited |
| ConnectV2UniswapV3Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917de7305e73a4175192d9c895c34a174edbe414` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21bee1486d42fbc3904413c604c35e1e584dd901` | ⚠️ Unaudited |
| EthRateExecuteUpdate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49e4db0a4d63c73bae75747ee12ab63bbdda3207` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386497 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FluidDexResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1de42938de444d376ebc298e15d21f409b946e6d` | ⚠️ Unaudited |
| FluidLiquidityDummyImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x52aa899454998be5b000ad077a46bbe360f4e497` | ⚠️ Unaudited |
| FluidLiquidityResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35a915336e2b3349fa94c133491b915ed3d3b0cd` | ⚠️ Unaudited |
| FluidLiteVaultProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386498 | 2 deployments: ethereum `0x273da948aca9261043fbdb2a857bc255ecc29012`; ethereum `0xe16ccc91a8134d428e7b6240177f9e2b227b9743` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca07484c20db8b8949b30596e411f0f516ad53a` | ⚠️ Unaudited |
| GUD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f9e1d9630e7a3eb6c654b256dc7845a9d08713` | ⚠️ Unaudited |
| IDAIPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a448a8fa94f422d72be53d32c76c26d808a882` | ⚠️ Unaudited |
| IETHPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce5b90bf5f68b91dd9628fad5dc942f0d9271cc9` | ⚠️ Unaudited |
| IEthRebalancerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfcdb64a551478e07bd07d17cf1525f740173a35` | ⚠️ Unaudited |
| IEthSupplyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8140725f7bda9484e20a86b9ed76cd39748824d6` | ⚠️ Unaudited |
| InstaAaveV2MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba631331503f0486538cb707c6685cbc6b28944` | ⚠️ Unaudited |
| InstaAaveV2MigratorSenderImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cd0727d7bbbb6a5eadbdc72349370a7eb599301` | ⚠️ Unaudited |
| InstaAaveV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3a1d56ed56f046721b9aca749895100754578b` | ⚠️ Unaudited |
| InstaAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb208cdf8e1c319d0019397dcec8e0ba3fb9a149f` | ⚠️ Unaudited |
| InstaAdminProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12d7d18c5ad9f56ff323840a1c26c2ab1a99e65b` | ⚠️ Unaudited |
| InstaChiefTimelockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3e586bce929312e8b0685e2c12c1d6dbbcdc370` | ⚠️ Unaudited |
| InstaCompoundMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a85d0addb972a4f0a4e57b698b37f171519e88` | ⚠️ Unaudited |
| InstaCompoundMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6300080a77ffff563b542978555d121ded05b896` | ⚠️ Unaudited |
| InstaCompoundResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccaa4b1b3931749b8b6ef19c6b0b2c496703321b` | ⚠️ Unaudited |
| InstaConnectorsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b0b3a8bdefe8cb9563a3c610019ad10db8ad11` | ⚠️ Unaudited |
| InstaDefaultImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60faeec73299cbe55d4e5736ebdf432a1d2117b3` | ⚠️ Unaudited |
| InstaDelegateClone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6658173f1b8ba88ef82452295c60fa6843a74196` | ⚠️ Unaudited |
| InstaDelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43e4442b14badedbeea99afbbd970be2cdc056c9` | ⚠️ Unaudited |
| InstaDSProxyMakerDAOClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49fad24bec517822e5d3402dd510fdc54e834649` | ⚠️ Unaudited |
| InstaEmptyImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a090897f47993c2504144419751d6a91d79abf4` | ⚠️ Unaudited |
| InstaFlashAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb436cafac369dbe34876e46d8630dc115074cef0` | ⚠️ Unaudited |
| InstaFlashResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c7b513b7d37f40bdbce77183b9112ec35caec1` | ⚠️ Unaudited |
| InstaGovernanceAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d07ec0e61b60ca997e44ec14ea0114aaeb1cf6a` | ⚠️ Unaudited |
| InstaGovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00613f7e762124711c7647f9eab5c8a88632ee47` | ⚠️ Unaudited |
| InstaGUNIV3PoolResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729bf02a9a786529fc80498f8fd0051116061b13` | ⚠️ Unaudited |
| InstaImplementationM1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3462a50e1a9fe8c9e7d9023cacbd9a98d90021` | ⚠️ Unaudited |
| InstaImplementationM2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fbff3219bc845350edb335c83d933dcf70aa814` | ⚠️ Unaudited |
| InstaLiquityResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc5fc20c91b1bbc8ef6c36a6173314ba9ba92ea` | ⚠️ Unaudited |
| InstaMakerDAOMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac838332afc2937fded89c16a59b2ed8e8e2743c` | ⚠️ Unaudited |
| InstaMappingController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd075d5e1024901e4038461e1e4bbc3a48a08d4` | ⚠️ Unaudited |
| InstaMasterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa471d83e526b6b5d6c876088d34834b44d4064ff` | ⚠️ Unaudited |
| InstaMasterSigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e03e95bb7cfe31c7079d71bd3a7edfab7e4815` | ⚠️ Unaudited |
| InstaMerkleDistributorLM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b9ae61b9feacba6c2f58d73aa484d671900bfb4` | ⚠️ Unaudited |
| InstaPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7e8e6f5decc5642b77a5dd0e445965b128a585d` | ⚠️ Unaudited |
| InstaPoolCompoundMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x309effce30436c50a872fd9d2b431d7a77341f4c` | ⚠️ Unaudited |
| InstaPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf19ee38397ca9cf8715197f428e02c031efe418` | ⚠️ Unaudited |
| InstaPoolV2Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a1739d7f07d40e76852ca8f0d82275aa087992f`; ethereum `0xaeace9781f7354080f09818dc639584758e6768e` | ⚠️ Unaudited |
| InstaPoolV2ImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x276b88d057b368179480cb707366d497dfc79726`; ethereum `0x7d61949f97ed191755386639a3f318005a1d6fd8` | ⚠️ Unaudited |
| InstaReflexerGebMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573e5132693c046d1a9f75bac683889164ba41b4` | ⚠️ Unaudited |
| InstaTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2386dc45added673317ef068992f19421b481f4c` | ⚠️ Unaudited |
| InstaTimelockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68206e807c44216b606493e4415dc78e0db25a18` | ⚠️ Unaudited |
| InstaTokenDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31de2088f38ed7f8a4231de03973814eda1f8773` | ⚠️ Unaudited |
| InstaTokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d9210496afe9763f5d8ceb8deffba817232a9e` | ⚠️ Unaudited |
| InstaUniswapStakerResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a96af80ed8753a77e23074de78480675049a3c9` | ⚠️ Unaudited |
| InstaUniswapV3Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465ac38b1ba01867bd06f20cdbf471f8805717e3` | ⚠️ Unaudited |
| InstaVaultImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03948802c3041219a6fcec3e19aeabe6f859a703` | ⚠️ Unaudited |
| InstaVaultResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d1142019504f034be9f90e0cfc4eb9dd91c27a` | ⚠️ Unaudited |
| InstaVaultUIResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ada30f3612b4716a23a3b0a2069fbeafbbfa7b3` | ⚠️ Unaudited |
| InstaVaultWrapperImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x012c218f9e0123041a3e24008df04baf56a4a95e` | ⚠️ Unaudited |
| InstaVestingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3730d9b06bc23fd2e2f84f1202a7e80815dd054a` | ⚠️ Unaudited |
| InteropAaveResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90478cf152f6a6ce8ece5dc0b66c8a2c22863e06` | ⚠️ Unaudited |
| InteropBetaImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ef957d078941ea6d37a3670a63977869a12dca` | ⚠️ Unaudited |
| IUSDCPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a95d64c16e157eea271d36197838d3a45f4b7c` | ⚠️ Unaudited |
| IWBTCPriceResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85f8b080942baa0e4d685006418765f498e09d44` | ⚠️ Unaudited |
| LeverageModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e35bab10e336bf58351d54b93e4e742a3a784` | ⚠️ Unaudited |
| LiquidityQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc15adb22ecf004a9d5f2e87f82471090014a2904` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| PayloadIGP10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe935e8db4efcf160106b5f476745f06fe79556d0` | ⚠️ Unaudited |
| PayloadIGP100 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee1e9a6d9b9a7394baf2417469f3935321b6b8c0` | ⚠️ Unaudited |
| PayloadIGP101 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64fb3fc4307d9be806b38671d1725a90251fc569` | ⚠️ Unaudited |
| PayloadIGP102 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35148e3a7cede2959a6660690a555a3b18e2c8d0` | ⚠️ Unaudited |
| PayloadIGP103 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe2cefcc9ecf356b3da8674f76433e442718ebe` | ⚠️ Unaudited |
| PayloadIGP104 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb7466e0417802c4a59e8e67335311465967af2` | ⚠️ Unaudited |
| PayloadIGP105 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87532d5383ee08ef815af84c0383e2457bbf6525` | ⚠️ Unaudited |
| PayloadIGP106 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96c23b84a6475c2ef81dd7a3d45a41e788d5ff15` | ⚠️ Unaudited |
| PayloadIGP107 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26f40b8ad86c44fda4295c7d792022a521641fe6` | ⚠️ Unaudited |
| PayloadIGP108 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x462b53b6e6d124a298997e15ecff5dc44c58b097` | ⚠️ Unaudited |
| PayloadIGP109 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f65c062e083b287b6981e568525359c0de55e49` | ⚠️ Unaudited |
| PayloadIGP11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed69c9bb4f072bb1614188eba0417617c6a59a1` | ⚠️ Unaudited |
| PayloadIGP110 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31063879968c51df94ee435a3b329b4086a06db9` | ⚠️ Unaudited |
| PayloadIGP111 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ebc467c389195d8fae1a0b2de73005409d0aae` | ⚠️ Unaudited |
| PayloadIGP112 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b35f2016194350901909df4935692f9ac306deb` | ⚠️ Unaudited |
| PayloadIGP113 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38693ae30a4d0874a689bfb15b29dbeded1f4a5e` | ⚠️ Unaudited |
| PayloadIGP114 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3359bfa2aa7260fdfbcdc33d3c794b99cdfb8d` | ⚠️ Unaudited |
| PayloadIGP115 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8f66fffd70945f137a451abd3591d07a8b7709b` | ⚠️ Unaudited |
| PayloadIGP116 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7003f5cc7179d1cf2569843c2ea9f13dafea25b` | ⚠️ Unaudited |
| PayloadIGP117 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41edb8816891cfe2859c2379ff242a24fa5d42fa` | ⚠️ Unaudited |
| PayloadIGP118 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ad0f4cf8d3d33c0bb9de162a43fa369c3b13478` | ⚠️ Unaudited |
| PayloadIGP119 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dcc1f84f23678454dbff89d5298ae0022a1d30a` | ⚠️ Unaudited |
| PayloadIGP12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe83188f97b3e22892c543731d124e44ba6c93dcd` | ⚠️ Unaudited |
| PayloadIGP120 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9547909722f32016cfa24074c5f6448c3295069a` | ⚠️ Unaudited |
| PayloadIGP121 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3caf9b00d5a9163fbe6d9b2e18392c19d4457a2` | ⚠️ Unaudited |
| PayloadIGP122 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78b7f59f062154f13f20e5b5a43c96e41662968b` | ⚠️ Unaudited |
| PayloadIGP123 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc2157838bd1df329b3fe2f07748477f5d917f2` | ⚠️ Unaudited |
| PayloadIGP124 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28806bfd9e367b990b72e7477fceae3f6a6de3d8` | ⚠️ Unaudited |
| PayloadIGP125 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0aeb50bcff133abb4080195e483f9aed9829d77` | ⚠️ Unaudited |
| PayloadIGP126 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987cb30d3a92982e0080ff7f59793899232a4f32` | ⚠️ Unaudited |
| PayloadIGP127 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9823cbde8d3ca725775c0cbb7a1b1a185d25458` | ⚠️ Unaudited |
| PayloadIGP128 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a5e795b43542e5adab793c239214cc79bb4e63` | ⚠️ Unaudited |
| PayloadIGP129 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21d8f1393146b6926b486e91aa6bbcc6aaf2b30e` | ⚠️ Unaudited |
| PayloadIGP13 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee255113d790a90145c98334c958599d1d8693a9` | ⚠️ Unaudited |
| PayloadIGP130 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd054f9340fad3b4e363b6e750c7ee64858e0e89` | ⚠️ Unaudited |
| PayloadIGP131 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5558354087680f4f0d24ecd49716444c4b5f743` | ⚠️ Unaudited |
| PayloadIGP132 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07914557cab20c637fbf84e1fd70257883c8c960` | ⚠️ Unaudited |
| PayloadIGP133 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4fb19bc9c861d3ad9854d5346e92897c883757` | ⚠️ Unaudited |
| PayloadIGP134 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcca061b8f5ed2b6065c96910d53df056aac9f7d3` | ⚠️ Unaudited |
| PayloadIGP135 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf909b5dd09be35aa8d9e6c1d22cee3ebcf17d11` | ⚠️ Unaudited |
| PayloadIGP14 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c5f9e5987ebc5cb589215d6ce9af8fe72560ae8` | ⚠️ Unaudited |
| PayloadIGP15 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43b57c84abd7b3558e4e23d54c2e44de0a7df982` | ⚠️ Unaudited |
| PayloadIGP16 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47483e09b4f5cbc3c06b2ae736e00a1df7edc15c` | ⚠️ Unaudited |
| PayloadIGP17 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd6781820ffc72fa78b364612c96c0050d88022d` | ⚠️ Unaudited |
| PayloadIGP18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cbe013f1ad60d7183cf87ee1250b1729491d408` | ⚠️ Unaudited |
| PayloadIGP19 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23cf324cf16b04af6dbc077bbd8b30c004dded71` | ⚠️ Unaudited |
| PayloadIGP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6bcc36463877cd1636be5959641d3f4c2881889` | ⚠️ Unaudited |
| PayloadIGP21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6f441858d6c0c66546804fe62e40eb6af83635d` | ⚠️ Unaudited |
| PayloadIGP22 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93554b0bc722d9e48c9ad4a518195042fd14eb69` | ⚠️ Unaudited |
| PayloadIGP23 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa7f388f8739ad1af7b8f0f3093dee47211ca9f` | ⚠️ Unaudited |
| PayloadIGP24 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaab305031336580610b00ee64eba657f632cdac8` | ⚠️ Unaudited |
| PayloadIGP25 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba28202f6e734bf4f469f441a4f7882c735dd636` | ⚠️ Unaudited |
| PayloadIGP26 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c2b4046cf4934884e03cfe1ef6d796b6c4024a1` | ⚠️ Unaudited |
| PayloadIGP27 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47fd983463206c49b5a05b7da4f5410588167bc` | ⚠️ Unaudited |
| PayloadIGP28 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8401554a7fc881cea845537b51bcd79ab91429a5` | ⚠️ Unaudited |
| PayloadIGP29 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceb70946010ee662c05f5a30b53784e4012e12c9` | ⚠️ Unaudited |
| PayloadIGP30 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b7269044070f085ca3397bc07b412d87c7e8e75` | ⚠️ Unaudited |
| PayloadIGP31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14fc2789524d8812983d91e0738ba4c1db457ab1` | ⚠️ Unaudited |
| PayloadIGP32 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a8d2aa34ec36a42e62376213e2598249da2e30e` | ⚠️ Unaudited |
| PayloadIGP33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0a2bde873c8f1c05f7d752a3f9de2e6075acdb3` | ⚠️ Unaudited |
| PayloadIGP34 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8277469e5f206308cf1e0afdffcc5586e1659c00` | ⚠️ Unaudited |
| PayloadIGP35 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea0896bb75e4773661e0e439f33638515e882ce4` | ⚠️ Unaudited |
| PayloadIGP36 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ee4f8e09789992cc133431816fe7d456d2e154` | ⚠️ Unaudited |
| PayloadIGP37 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81fe88ce9c059ac18d22f932eeb5773debcdfe24` | ⚠️ Unaudited |
| PayloadIGP38 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x316423933b6cefc9846ae847291e2ecfeeef92a3` | ⚠️ Unaudited |
| PayloadIGP39 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5e1ffd6d0e51fa34e03370fb0204daeff1c6ac` | ⚠️ Unaudited |
| PayloadIGP40 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c571b5b6668daa279e9965c0239c46218e7430b` | ⚠️ Unaudited |
| PayloadIGP41 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe517fbbbac0858ce97cb6ad2ec5b4c9943ef5dd9` | ⚠️ Unaudited |
| PayloadIGP42 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x589cff8ef47308cd463a557c36c2d2c7900940fc` | ⚠️ Unaudited |
| PayloadIGP43 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0476b7a0f682542f17f2edf3499933e84bb73fc0` | ⚠️ Unaudited |
| PayloadIGP44 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62692b02c265e3f4bd9c7482bac3edd6b56f49b2` | ⚠️ Unaudited |
| PayloadIGP45 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x748b66de7800b3d0c6fd0f565bc6c74a9a9a8470` | ⚠️ Unaudited |
| PayloadIGP46 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212e6cfe636527d2aa0e5eabb40f962679086cdf` | ⚠️ Unaudited |
| PayloadIGP47 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb77ffa37c97e43e9df1d61cfefa7a82d3952f54` | ⚠️ Unaudited |
| PayloadIGP48 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x038642fe64cdbd4de681dfa86652890bfc740b96` | ⚠️ Unaudited |
| PayloadIGP49 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32088266ba4494fe9846c7c42f33025bcdd23de1` | ⚠️ Unaudited |
| PayloadIGP50 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaf7ad6154a4e3fa0095a0ade3dff3189ee691e3` | ⚠️ Unaudited |
| PayloadIGP51 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6ca71a91d7af3ea0f348dd566ccac0366f470e1` | ⚠️ Unaudited |
| PayloadIGP52 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x594743b9c491ee757dd324ca61bb199da1af36da` | ⚠️ Unaudited |
| PayloadIGP53 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178c23017eb63cc98e949a3f38ba4933eede2186` | ⚠️ Unaudited |
| PayloadIGP54 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a96215b21e918fb5514c10002c07a67728b50e` | ⚠️ Unaudited |
| PayloadIGP55 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd05fd0cb88575dbbc2afd64775c71b27782990` | ⚠️ Unaudited |
| PayloadIGP56 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31110cc2ce436999936fd57cd6ce6c0de2a07018` | ⚠️ Unaudited |
| PayloadIGP57 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc650062b2e69d21d6b19fffef9f17d6c250c5225` | ⚠️ Unaudited |
| PayloadIGP58 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92019a0c45d93eb7d7bb63aa5728ffc570f5d65b` | ⚠️ Unaudited |
| PayloadIGP59 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ff7b11fa918d27280a3eb272c98b828271b57e3` | ⚠️ Unaudited |
| PayloadIGP60 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8cbe99c87ff746fe05d48fdf6471cf4f006460` | ⚠️ Unaudited |
| PayloadIGP61 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53a7cc138dee77d34642d716beba78f012740606` | ⚠️ Unaudited |
| PayloadIGP62 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd79b0ac03c9bf31651ed426f38bc78081074355` | ⚠️ Unaudited |
| PayloadIGP63 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b4a6982d334cf1bb4d5462b58d372831bc28bb` | ⚠️ Unaudited |
| PayloadIGP64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf472c6252bb2872dd0cd06019fb344cee61e6959` | ⚠️ Unaudited |
| PayloadIGP65 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee1f5b8e7bf4f0c1aa689a6ac18b04027ed3a7f` | ⚠️ Unaudited |
| PayloadIGP66 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2cd2a40b6b8e2fd55a9c4d7f0f06a1ddad0b195` | ⚠️ Unaudited |
| PayloadIGP67 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5636209362a058f9aadd6da3e65d783065579d8c` | ⚠️ Unaudited |
| PayloadIGP68 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c174a366dffa0c2c06223362e4b1274955afc7` | ⚠️ Unaudited |
| PayloadIGP69 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3290b76ea44b68297500c76a6db2e79b6f5df948` | ⚠️ Unaudited |
| PayloadIGP7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d14861450b742d7892a227cefca47006ac04b3` | ⚠️ Unaudited |
| PayloadIGP70 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xada8b72304b5cac6394dc781a0fd198c80233508` | ⚠️ Unaudited |
| PayloadIGP71 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1dc0f05959000b101cab1859a0cb69d8a2a9fc` | ⚠️ Unaudited |
| PayloadIGP72 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f633e7529de83b3aa891eb45b545c70ace4d943` | ⚠️ Unaudited |
| PayloadIGP73 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b366b9517cf8791e38b18adf404e538e63979ad` | ⚠️ Unaudited |
| PayloadIGP74 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39ccfcd2fabe87e64c79e86b85a96ee9bdc0669` | ⚠️ Unaudited |
| PayloadIGP75 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33253a73bf143c587d9ad6984ccea488755f60b9` | ⚠️ Unaudited |
| PayloadIGP76 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64c379735f894069d3770e45ac7fb6fe6adf842` | ⚠️ Unaudited |
| PayloadIGP77 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ce811ec5b5c33e47b798e45b727e57e77d819d` | ⚠️ Unaudited |
| PayloadIGP78 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d3c9e67552c85255e9b26a0e63a54c93874820` | ⚠️ Unaudited |
| PayloadIGP79 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f70456ce06a300841b81a9befadb8ce9e656d6a` | ⚠️ Unaudited |
| PayloadIGP8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15640e3fac43e586c3396aa2d10df2cb4c87eaea` | ⚠️ Unaudited |
| PayloadIGP80 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3100c0216092ac0850f208da09c8dba26ee35b` | ⚠️ Unaudited |
| PayloadIGP81 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256a1cc2cbc620b3cbd167aba36b7a9e7e788beb` | ⚠️ Unaudited |
| PayloadIGP82 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c59b44b58e39dd3eb7ffadc1c6464885a1f48e7` | ⚠️ Unaudited |
| PayloadIGP83 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x396e102b9b3b0342c55dc23c3fc607ea766d3254` | ⚠️ Unaudited |
| PayloadIGP84 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ffdc52c928573a042cfe1c0e3f67e5cf03c4da6` | ⚠️ Unaudited |
| PayloadIGP85 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e0684a0c6b0d749756c6f4d58f576b7fbebf189` | ⚠️ Unaudited |
| PayloadIGP86 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a889c0b458ea4e97780784a3b17f659a06a7732` | ⚠️ Unaudited |
| PayloadIGP87 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0856f1049154190169ff21b4cf8587cf7344e8b7` | ⚠️ Unaudited |
| PayloadIGP88 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e819c717dc8f9485991b75657a09410adc6310` | ⚠️ Unaudited |
| PayloadIGP89 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c43567ced5ffa1b3c81a4f357446a4ae642695a` | ⚠️ Unaudited |
| PayloadIGP9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdca36a27e05c32f20fa3a2a090f9c3c0142a6cdd` | ⚠️ Unaudited |
| PayloadIGP90 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60efbe6e23f516045f74259a097d585cb067953` | ⚠️ Unaudited |
| PayloadIGP91 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6195c21d7d2359ed87811120aee52adddb73ab48` | ⚠️ Unaudited |
| PayloadIGP92 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee6790c6432eb303bf2d7c5e84d2ffbf36656a06` | ⚠️ Unaudited |
| PayloadIGP93 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd30c16334269193cea74e10ac70553548b307d98` | ⚠️ Unaudited |
| PayloadIGP94 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf79ee649a2bdbab771384b71453e8706357ad572` | ⚠️ Unaudited |
| PayloadIGP95 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f585a19e6582ea9aa7f084761f913f22b2db55b` | ⚠️ Unaudited |
| PayloadIGP96 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0eba1613cbe1d9b5e352a32cd6299d6bdc8015` | ⚠️ Unaudited |
| PayloadIGP97 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6c6f8a8c00f0411089151d430237a741ac0609` | ⚠️ Unaudited |
| PayloadIGP98 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb02ce6d457867b80bf8dbccb8f6f9e430d97f956` | ⚠️ Unaudited |
| PayloadIGP99 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90266b7f09e67acd254381c5bba60832307e22d` | ⚠️ Unaudited |
| ReadModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3301a8c3f26f100c5426771e45aa5ec1680b6435` | ⚠️ Unaudited |
| RebalancerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24855b5694139a43b68786b14245aff182092004` | ⚠️ Unaudited |
| RefinanceModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f885fe8f1351a8f1755e7e79bd831d108ff10b4` | ⚠️ Unaudited |
| SecurityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dfec70632fb5ec3a867db4bf08acd643fa469c` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d7945bf14c2cbdb1ca5464455c5cba66f374bab` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c4deafba1054ffc0dffc3993758261ee91a8f5` | ⚠️ Unaudited |
| TransferAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93c4b8d10d8886e797c50c58b8c4e1d231ef13ee` | ⚠️ Unaudited |
| UserModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x153ac773cdba3a30a41571d787336dd20346d48b` | ⚠️ Unaudited |
| VaultDummyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121be6935279627ed849e186bfcf8a5300a6be5b` | ⚠️ Unaudited |
| VaultResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1951deae43cac1613b622d985bd09abad641a06f` | ⚠️ Unaudited |
| ZtakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221c2b6ee63dcede31ea703898ae15d889d881f0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (154)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0204cd037b2ec03605cfdfe482d8e257c765fa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d5627503d2e5fa62f8c505df46c00ba2b7051a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0913dba36d2f4d6c0235a910022a9f1ac40ed8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106d8806d64d30e5d248f8b08f3f2861cf01c276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11ca5f5cddef485eccbc05f1a2308697410503bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x127df65a358f63035cc791662a1bf03c98ca14a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x171aeb3ba7f12e67d3d3e2f523e6c02e1670cd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee01058bf39c1daae1ded16da06c007117a9e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20fd0312edfe3954ec96039b9c644a8074c07f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2638c8950e04ef002d083f62aeaa10ee32f1ae60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x263b47e73c660e967e695b6a78bdc4dd6670459e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2766dc21ac3c0b15a2445e5e8033a47304f91fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27933eba9fa1914485af9a136dcd43eca27159e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297e8624314c657979175ee21a89ea053800cca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29c1b50088f6a88f6aa875ed10a7040534931ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6d6d4ee84015f7d64b4d1f66a409ba3f2bac00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b9a9d25393ae4bf7f25fa2b2966cbac3d54f337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bb0af04d6e24012b5adfc64b753bf3df8c8eb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c3faf7c1fe1961e2009bbdcf1fb8d70554ae6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd808929a481a6cddbabb980836bb5b5e2e9a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x305dae828b4b141fd5d26e9ac8f915f7e9aa222d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ad9897cafeb0be68e087ef0dda06be35ac2eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36dcfa6c8bedc605e1214ffddd34ddbf10c9cffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383fa8c4683d7438199ade8e66339af9f02f1728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b05a5295aa749d78858e33ece3b97bb3ef4f029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a9d39aa50871df092538c5999b107f34409061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41bca134b097bd27f3a32eb3c8a8a78d6323d9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ff086fc660917019e26df2c4dc017012fbd2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445490bfbdb38ae6f1f95ad0c011848b4a4ce881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aec8c5b1cf3498bef061e13d8e7f646feeb7029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bcecba95c4c1ec8996c32837a7d77ef07edf63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9318a063d3888dc64f6b4e371b05e0c7e108ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5371f063ef419fb0dc75885b059fdfa3148f408f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5712cd2a31b88f6f5b01446ffc7f7aac63f2bbcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5806af7ab22e2916fa582ff05731bf7c682387b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58a6a120ae99f56f0238ec8874ca36c9951dd447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ad22ec3d7614ac2f96bf71dd398886476099ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4699d4b5805818d85a4fb91b1577efc587330f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5558f9ac2c266ad1b2d39a3d14a395f1727fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e6e406410e2beb6a68695e81bde96d678990b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f2f4a300dfbcf3f1a58e660a24558feb307a6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6210139235178a02617cf2a8f5f5b69c6dcdaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63c31954559972ee8252f1b5ce23d15d6f86f2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6441493a8f3d7a03480740d9cc21356ce2a3bc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646980caba049b924d68bf85eb54eb237a88d712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697860cee594c577f18f71caf3d8b68d913c7366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7256cf7c003dd85683339f75dde9971f98f2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ce3e607c808b4f4c26b7f6adaeb619e49cabb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5cffc4314a2ac4183c9d7bd285ea8062a4c23e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8aa313f2daead52ca12b3cf2333e2649e9ae1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f12a31d0421367e5ff6f563f04c93468124b3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f40d4a6237c257fff2db00fa0510deeecd303eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71a990035d6126e520bbb939ea00dbf455a912e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7242344ccb9af462ffdafa80719855f10d053b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73814362aa447347f6437a967656eca881589778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x739c30f2af180b43aca064ff08eb704639d21cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74b4e3e64ef0b61ab48bf965b9a9d5795d32422b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7543b57142ebb6efa7c0a8d1bad2c0364fdfde02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766aea38d9bf8207b3dcc1b8a64418c1a7604dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b2d8a03ada1b767974aa6af20c86737eb3e103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a043f68547dff57f4f5f30115d76bf01e8fdfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3387ae70e1b4b8edb0a6883de56cf5a1565adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d59efe32b15009ee6c8a11e559eb252d4570c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dc82dd033d50d5dce6c0ccefab02eaee76aa557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fd477d88a8bcbe1a81083bdef4cbd9fc50dabde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81a91c45771be5265410edffb18f69dd0cab67b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b5bb99e2a8133d51be2338d654d64528263100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83428272ff251b7640ff84731b2aae3c58c82ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86919315e6f75ca20361a0c53fa2aecc6d274219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x871a1e08845d274c8b52880596180a907b102b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x875081b994473a592decaf0906bb4bbb81f48507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89749e04b6f308e3670ecead832105be7379f36b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89fc5f16ed5bc783fcf679d5691c4e0f91281b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a17b5a0cbeb999117d215656ffff7f010f824f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9c57da5cfe05f7d92b0d66d05e551aac939695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2abca0fc819292773f3f730602e37bff158876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ec26bee02fbcf27d3b9d6c37806f6293fcb1674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4a8675ea3a069d1d8280bd19b802430f8f53be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901ebc75a0c2161b944d5c76e0769a2eabb85542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x907f0c8c99b08606ee0a51ec5bc3dfdbfc2d92f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ba95b3119c1e7a6a7f8d1f76bbaa18239c3577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95f7015e9e11baa947329f2ad24ef437a4b11099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99369e4163af2e8763416ac83a01756365d44dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b5bf719e97399fc31c53071f07f43623c367716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea34be6da51aa9f6408fea79c946fdcfa424442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa027720b69220dd9f80f785a2ad2133590aba6e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23b171eb2a5179c0cce605dcf052466543f1e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa32346bfcaaab83edb19d568fcc9dc1a40b626ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6978cba39f86491ae5dca53f4cdefcb100e3e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7c805e4ad4e7b51d2a1eb442b2014a9b63d3703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5362756c40e904a6ef14270c9e2356c5539fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac500248a73265dc3d7e06c1595871adb2e1069d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08fbdcea6a42350f0e076237594e2978ba85cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0f2b5478f0f40ead52195d2e139bd73093c438d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb242a404ec04e1d39f417f9599b289a263cb0b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2e91ea3d8fccee46336fee2dfc1c529b924143c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb35cb232a8ca38eb1a42dca9dc82a307119625ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3864f90ed478b08a0ed8114c51017325d670464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb446e325d44c52b93ec122bf76301f235f90b9c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e6ef3a34fdb74af371d1714d0cdb2e1c48a1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5fc467943dc425e6d80800c02eca71567ade0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a15e7dd81999792353119014a018378e104121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb75984ec0d81a163b2925ae3ec6797a85bc45553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8266d0afdd49dd8a4283e9ff601ec7743041048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbd4b9a2c451794e03978bc5ee5f7c0ece6fb6b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc662c2e6222b314bd135efb4e57cb3b9f3ac743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbda71d21520db438906443a93124e80a6b61e767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf5a32458a2b2e8d2a1ffb751bb38d1030cad65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe60081a617e78ceafcdf4c0921f519f3cda8d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b476ccd4a96cbcba8cc2aa65db8c385e7b9828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc17d822983c297d10b32d4529ce6a43190e18eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2bf51b1cbcb5a03b2103296895daec1818fe02a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc383a3833a87009fd9597f8184979af5edfad019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c6dfe03c70247651b005dd1f7df8a6f8e6e058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc46cb11b768cd6c1395cfe8107f54291e98c2c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc46e8ddb77f2bf00a443b74fdc82988264f2c5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc496dca635f04f7f1a8bc42b5346a88d997f6d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc53a66e45d3aa5558ff322d18c4227fd63e2c8e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57389d7213cb8eaface042e6970eb361bc2c4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6eb4aae772372cc624d6c94895daa238948b9c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7ba3421642503c9eeebbe6a097e8920fb7dfd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7cb1de2721bfc0e0da1b9d526bcdc54ef1c0efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc82fe400c88df89896d2b46d1fe157737f6046c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8368977fde3d278914d6d5b90f9ccd0d1802eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8871267e07408b89aa5aecc58adca5e574557f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceb90a2388cc0773f8fcde01e3e97fe91a97fd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd070fdef5d65fcbcd00473ffbc3d1fec867a3968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1af3ee5d22025c2070c10bb826d5efb9aae1c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd21a73e8311440cfbb3e629977004f890fb2a2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd415a6932b7f29d49e045329141357a454be65ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4cb284ce171ecf70a3452172adda684f077c15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd645f006b8cb69e0ef2d5e8e741bbcffd80d24d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6a1b42519f52bd3b98d6850e12c851e86942ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99eb7c6aaf8635628fc1e968ed514ec2507b897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf2a39503463b0f41f899edd82213b3c96b6cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf7318717681cc83e28755fca56bd7ef23ac727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde014e370ad79f36778b942b2ad8953e4de6a83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff6336d6cecc7e609ca79c7a578c4575a97ff1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6f6db7bc41aaef52d18f66630a0ed3a823063b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8587e49b1400650117bec5cd662a28da2d9a85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4d1fa1ea305f33e266ad3b484d57c3f7cd31d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec363faa5c4dd0e51f3d9b5d0101263760e7cdeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec368d82cb2ad9fc5efaf823b115a622b52bcd5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee619922b3a1334c798b0b756dd19077e34822c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee6eb9fdf4eeb422b09b503abdfd67ca51da34f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d44d4b5541d312ca7dd3f80e7e9bd93379cc8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf23e458f141e2da2f8668e3483c6b96a65e4f9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a7aa06413f2555ff90f64eeb7a97474a0f9046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70fe590f1c47e327302bd13e615fe7d9608fae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf77a5935f35add4c2f524788805293ef86b87560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb6fbb89502060b63c40a948a2c37945e6106fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb80e0acb3ba7abbfe46e4f9af8c77f2e4b87749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb8a92e017e3416c0f63c28c53195337ebdeba2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfea004aef10f4a08f8c7636f1cbfb7965be5db01` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 156
- Live contracts: 0
- Unknown liveness contracts: 156
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=156

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x0913dba36d2f4d6c0235a910022a9f1ac40ed8cc` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x263b47e73c660e967e695b6a78bdc4dd6670459e` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2766dc21ac3c0b15a2445e5e8033a47304f91fdf` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27933eba9fa1914485af9a136dcd43eca27159e2` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x297e8624314c657979175ee21a89ea053800cca6` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b9a9d25393ae4bf7f25fa2b2966cbac3d54f337` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bb0af04d6e24012b5adfc64b753bf3df8c8eb69` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c3faf7c1fe1961e2009bbdcf1fb8d70554ae6cd` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2dd808929a481a6cddbabb980836bb5b5e2e9a35` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34ad9897cafeb0be68e087ef0dda06be35ac2eef` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40a9d39aa50871df092538c5999b107f34409061` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41bca134b097bd27f3a32eb3c8a8a78d6323d9c8` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41ff086fc660917019e26df2c4dc017012fbd2e6` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5371f063ef419fb0dc75885b059fdfa3148f408f` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b4699d4b5805818d85a4fb91b1577efc587330f` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e5558f9ac2c266ad1b2d39a3d14a395f1727fbc` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e6e406410e2beb6a68695e81bde96d678990b43` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f6210139235178a02617cf2a8f5f5b69c6dcdaf` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63c31954559972ee8252f1b5ce23d15d6f86f2a8` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71a990035d6126e520bbb939ea00dbf455a912e6` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7242344ccb9af462ffdafa80719855f10d053b24` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x739c30f2af180b43aca064ff08eb704639d21cce` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74b4e3e64ef0b61ab48bf965b9a9d5795d32422b` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76b2d8a03ada1b767974aa6af20c86737eb3e103` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79a043f68547dff57f4f5f30115d76bf01e8fdfc` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c3387ae70e1b4b8edb0a6883de56cf5a1565adc` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7dc82dd033d50d5dce6c0ccefab02eaee76aa557` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82b5bb99e2a8133d51be2338d654d64528263100` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86919315e6f75ca20361a0c53fa2aecc6d274219` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a17b5a0cbeb999117d215656ffff7f010f824f7` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x901ebc75a0c2161b944d5c76e0769a2eabb85542` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90ba95b3119c1e7a6a7f8d1f76bbaa18239c3577` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95f7015e9e11baa947329f2ad24ef437a4b11099` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa027720b69220dd9f80f785a2ad2133590aba6e1` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa32346bfcaaab83edb19d568fcc9dc1a40b626ac` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6978cba39f86491ae5dca53f4cdefcb100e3e3d` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab5362756c40e904a6ef14270c9e2356c5539fee` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb08fbdcea6a42350f0e076237594e2978ba85cda` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0f2b5478f0f40ead52195d2e139bd73093c438d` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb242a404ec04e1d39f417f9599b289a263cb0b93` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb35cb232a8ca38eb1a42dca9dc82a307119625ab` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5fc467943dc425e6d80800c02eca71567ade0d4` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2bf51b1cbcb5a03b2103296895daec1818fe02a` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc383a3833a87009fd9597f8184979af5edfad019` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc46cb11b768cd6c1395cfe8107f54291e98c2c33` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6eb4aae772372cc624d6c94895daa238948b9c0` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7ba3421642503c9eeebbe6a097e8920fb7dfd1d` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8871267e07408b89aa5aecc58adca5e574557f8` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1af3ee5d22025c2070c10bb826d5efb9aae1c53` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd21a73e8311440cfbb3e629977004f890fb2a2d1` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd415a6932b7f29d49e045329141357a454be65ca` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4cb284ce171ecf70a3452172adda684f077c15e` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd99eb7c6aaf8635628fc1e968ed514ec2507b897` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8587e49b1400650117bec5cd662a28da2d9a85f` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb4d1fa1ea305f33e266ad3b484d57c3f7cd31d8` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec363faa5c4dd0e51f3d9b5d0101263760e7cdeb` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec368d82cb2ad9fc5efaf823b115a622b52bcd5f` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0d44d4b5541d312ca7dd3f80e7e9bd93379cc8c` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4a7aa06413f2555ff90f64eeb7a97474a0f9046` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb80e0acb3ba7abbfe46e4f9af8c77f2e4b87749` | non_address_book | unknown | unknown | unverified | n/a | `0x85b40eb65e49eb61de78a3a989752249f8837fc5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0204cd037b2ec03605cfdfe482d8e257c765fa1b` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04d5627503d2e5fa62f8c505df46c00ba2b7051a` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x106d8806d64d30e5d248f8b08f3f2861cf01c276` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11ca5f5cddef485eccbc05f1a2308697410503bd` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x127df65a358f63035cc791662a1bf03c98ca14a9` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x171aeb3ba7f12e67d3d3e2f523e6c02e1670cd33` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ee01058bf39c1daae1ded16da06c007117a9e5c` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x20fd0312edfe3954ec96039b9c644a8074c07f33` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2638c8950e04ef002d083f62aeaa10ee32f1ae60` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29c1b50088f6a88f6aa875ed10a7040534931ca6` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a6d6d4ee84015f7d64b4d1f66a409ba3f2bac00` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x305dae828b4b141fd5d26e9ac8f915f7e9aa222d` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36dcfa6c8bedc605e1214ffddd34ddbf10c9cffd` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x383fa8c4683d7438199ade8e66339af9f02f1728` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b05a5295aa749d78858e33ece3b97bb3ef4f029` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x445490bfbdb38ae6f1f95ad0c011848b4a4ce881` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4aec8c5b1cf3498bef061e13d8e7f646feeb7029` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bcecba95c4c1ec8996c32837a7d77ef07edf63a` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f9318a063d3888dc64f6b4e371b05e0c7e108ab` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5712cd2a31b88f6f5b01446ffc7f7aac63f2bbcf` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5806af7ab22e2916fa582ff05731bf7c682387b2` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58a6a120ae99f56f0238ec8874ca36c9951dd447` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59ad22ec3d7614ac2f96bf71dd398886476099ab` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f2f4a300dfbcf3f1a58e660a24558feb307a6ce` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6441493a8f3d7a03480740d9cc21356ce2a3bc09` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x646980caba049b924d68bf85eb54eb237a88d712` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x697860cee594c577f18f71caf3d8b68d913c7366` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c7256cf7c003dd85683339f75dde9971f98f2fd` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ce3e607c808b4f4c26b7f6adaeb619e49cabb25` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d5cffc4314a2ac4183c9d7bd285ea8062a4c23e` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e8aa313f2daead52ca12b3cf2333e2649e9ae1c` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f12a31d0421367e5ff6f563f04c93468124b3c4` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f40d4a6237c257fff2db00fa0510deeecd303eb` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73814362aa447347f6437a967656eca881589778` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7543b57142ebb6efa7c0a8d1bad2c0364fdfde02` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x766aea38d9bf8207b3dcc1b8a64418c1a7604dd4` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d59efe32b15009ee6c8a11e559eb252d4570c5e` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d61949f97ed191755386639a3f318005a1d6fd8` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7fd477d88a8bcbe1a81083bdef4cbd9fc50dabde` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81a91c45771be5265410edffb18f69dd0cab67b3` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83428272ff251b7640ff84731b2aae3c58c82ccc` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x871a1e08845d274c8b52880596180a907b102b67` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x875081b994473a592decaf0906bb4bbb81f48507` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89749e04b6f308e3670ecead832105be7379f36b` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89fc5f16ed5bc783fcf679d5691c4e0f91281b31` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b9c57da5cfe05f7d92b0d66d05e551aac939695` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e2abca0fc819292773f3f730602e37bff158876` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ec26bee02fbcf27d3b9d6c37806f6293fcb1674` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f4a8675ea3a069d1d8280bd19b802430f8f53be` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x907f0c8c99b08606ee0a51ec5bc3dfdbfc2d92f3` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99369e4163af2e8763416ac83a01756365d44dad` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b5bf719e97399fc31c53071f07f43623c367716` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ea34be6da51aa9f6408fea79c946fdcfa424442` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa23b171eb2a5179c0cce605dcf052466543f1e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7c805e4ad4e7b51d2a1eb442b2014a9b63d3703` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac500248a73265dc3d7e06c1595871adb2e1069d` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaeace9781f7354080f09818dc639584758e6768e` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2e91ea3d8fccee46336fee2dfc1c529b924143c` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3864f90ed478b08a0ed8114c51017325d670464` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb446e325d44c52b93ec122bf76301f235f90b9c9` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4e6ef3a34fdb74af371d1714d0cdb2e1c48a1b9` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6a15e7dd81999792353119014a018378e104121` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb75984ec0d81a163b2925ae3ec6797a85bc45553` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8266d0afdd49dd8a4283e9ff601ec7743041048` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbd4b9a2c451794e03978bc5ee5f7c0ece6fb6b8` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc662c2e6222b314bd135efb4e57cb3b9f3ac743` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbda71d21520db438906443a93124e80a6b61e767` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbdf5a32458a2b2e8d2a1ffb751bb38d1030cad65` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe60081a617e78ceafcdf4c0921f519f3cda8d2e` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0b476ccd4a96cbcba8cc2aa65db8c385e7b9828` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc17d822983c297d10b32d4529ce6a43190e18eb0` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3c6dfe03c70247651b005dd1f7df8a6f8e6e058` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc46e8ddb77f2bf00a443b74fdc82988264f2c5df` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc496dca635f04f7f1a8bc42b5346a88d997f6d72` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc53a66e45d3aa5558ff322d18c4227fd63e2c8e2` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc57389d7213cb8eaface042e6970eb361bc2c4a3` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7cb1de2721bfc0e0da1b9d526bcdc54ef1c0efc` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc82fe400c88df89896d2b46d1fe157737f6046c3` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8368977fde3d278914d6d5b90f9ccd0d1802eab` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xceb90a2388cc0773f8fcde01e3e97fe91a97fd8f` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd070fdef5d65fcbcd00473ffbc3d1fec867a3968` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd645f006b8cb69e0ef2d5e8e741bbcffd80d24d2` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6a1b42519f52bd3b98d6850e12c851e86942ba7` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdaf2a39503463b0f41f899edd82213b3c96b6cf8` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbf7318717681cc83e28755fca56bd7ef23ac727` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde014e370ad79f36778b942b2ad8953e4de6a83e` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdff6336d6cecc7e609ca79c7a578c4575a97ff1e` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6f6db7bc41aaef52d18f66630a0ed3a823063b1` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee619922b3a1334c798b0b756dd19077e34822c9` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee6eb9fdf4eeb422b09b503abdfd67ca51da34f2` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf23e458f141e2da2f8668e3483c6b96a65e4f9b1` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf70fe590f1c47e327302bd13e615fe7d9608fae9` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf77a5935f35add4c2f524788805293ef86b87560` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb6fbb89502060b63c40a948a2c37945e6106fa7` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb8a92e017e3416c0f63c28c53195337ebdeba2e` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfea004aef10f4a08f8c7636f1cbfb7965be5db01` | non_address_book | unknown | unknown | unverified | n/a | `0xf6839085f692bde6a8062573e3da35e7e947c21e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://docs.fluid.instadapp.io/audits-and-security.html) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Peckshield_Fluid_Audit.pdf) | PeckShield | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Statemind_Fluid_Audit.pdf) | Statemind | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 48 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Mixbytes_Fluid_Vault_Protocol_Audit.pdf) | MixBytes | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/cantina-audit-dex.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Mixbytes_Fluid_Dex_Audit.pdf) | MixBytes | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/MixBytes_Fluid_Liquidity_Audit.pdf) | MixBytes | Audit | 2025-12 | fresh | Direct | address | no match | 0 | 0 | 0 | 16 | high |
| [See here (also discovered via alternate URL)](https://docs.fluid.instadapp.io/Statemind_Fluid_Liquidity_Updates_Audit.pdf) | Statemind | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [/URI ()](https://github.com/mixbytes/audits_public) | MixBytes | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20308] DL audit link — no match: The document is a summary page listing audit reports for Fluid protocol components (Vault, Dex, Liquidity Layer) but does not provide specific contract names, file paths, or scope details. No individual contracts are named.
- [20309] See here — no match: Extracted contract names from findings targets and referenced contracts. Audit date from cover page and table.
- [20310] See here — no match: Extracted contract names from the 'Project Scope' section listing files and from findings that explicitly mention contract names as audited targets. The audit date is the end date of the timeline '30-10-2023 - 29-12-2023'.
- [20311] See here — no match: Extracted contract names from scope table and project overview. Audit date from cover page.
- [20312] See here — no match: No explicit scope section or contract listing found. The report mentions 'instadapp-fluid' and 'Fluid DEX' but does not list specific contract names or files in scope.
- [20313] See here — no match: Scope table lists 14 Solidity files. Deployments table lists deployed instances of colOperations, debtOperations, perfectOperationsAndSwapOut for multiple pools, but those are deployments, not separate contracts in scope. The audit date is from the cover page.
- [20314] See here — no match: Extracted 16 contract/library names from the scope table. Audit date from cover page: DECEMBER 10, 2025.
- [20315] See here — no match: Scope section lists 15 files (some duplicates due to same name in different directories). Audit date from timeline: 14-10-2025.
- [20323] /URI () — no match: The provided text is a GitHub repository listing of audit reports, not an actual audit report. No specific contracts in scope or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| See here | VaultAdmin | unmatched — not counted | — | Target in finding PVE-001 | no |
| See here | ChainlinkOracleImpl | unmatched — not counted | — | Target in finding PVE-002 | no |
| See here | LiquidityCalcs | unmatched — not counted | — | Target in finding PVE-003 | no |
| See here | VaultT1 | unmatched — not counted | — | Target in findings PVE-004, PVE-009, PVE-010, PVE-011, PVE-012 | no |
| See here | AuthModule | unmatched — not counted | — | Target in finding PVE-005 | no |
| See here | iTokenCore | unmatched — not counted | — | Target in finding PVE-006 | no |
| See here | iTokenEIP2612Deposits | unmatched — not counted | — | Target in finding PVE-007 | no |
| See here | VaultT1Factory | unmatched — not counted | — | Target in finding PVE-008 | no |
| See here | ERC721 | unmatched — not counted | — | Referenced in finding PVE-008 as internal contract | no |
| See here | GovernanceModule | unmatched — not counted | — | Referenced in finding PVE-013 as example of privileged operations | no |
| See here | uniV3TWAP3Chainlink1Oracle | unmatched — not counted | — | listed in scope | no |
| See here | errorTypes | unmatched — not counted | — | listed in scope | no |
| See here | wstETHChainlink2HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | chainlink3HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | fluidOracle | unmatched — not counted | — | listed in scope | no |
| See here | wstETHOracle | unmatched — not counted | — | listed in scope | no |
| See here | chainlink2HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | chainlink1HopOracle | unmatched — not counted | — | listed in scope | no |
| See here | error | unmatched — not counted | — | listed in scope | no |
| See here | chainlink3HopOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | wstETHOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | chainlink2HopOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | uniV3OracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | chainlinkOracleImpl | unmatched — not counted | — | listed in scope | no |
| See here | TickMath | unmatched — not counted | — | listed in scope | no |
| See here | FullMath | unmatched — not counted | — | listed in scope | no |
| See here | storageRead | unmatched — not counted | — | listed in scope | no |
| See here | liquiditySlotsLink | unmatched — not counted | — | listed in scope | no |
| See here | liquidityCalcs | unmatched — not counted | — | listed in scope | no |
| See here | bigMath | unmatched — not counted | — | listed in scope | no |
| See here | events | unmatched — not counted | — | listed in scope | no |
| See here | proxy | unmatched — not counted | — | listed in scope | no |
| See here | main | unmatched — not counted | — | listed in scope | no |
| See here | constantVariables | unmatched — not counted | — | listed in scope | no |
| See here | helpers | unmatched — not counted | — | listed in scope | no |
| See here | IVault | unmatched — not counted | — | listed in scope | no |
| See here | variables | unmatched — not counted | — | listed in scope | no |
| See here | lendingRewardsRateModel | unmatched — not counted | — | listed in scope | no |
| See here | iTokenNativeUnderlying | unmatched — not counted | — | listed in scope | no |
| See here | iTokenEIP2612Deposits | unmatched — not counted | — | listed in scope | no |
| See here | iTokenPermit2Deposits | unmatched — not counted | — | listed in scope | no |
| See here | lendingFactory | unmatched — not counted | — | listed in scope | no |
| See here | vaultFactory | unmatched — not counted | — | mentioned in finding INFORMATIONAL-30 | no |
| See here | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| See here | vaultT1Logic | unmatched — not counted | — | listed in scope | no |
| See here | ERC721 | unmatched — not counted | — | listed in scope | no |
| See here | structs | unmatched — not counted | — | listed in scope | no |
| See here | dummyImpl | unmatched — not counted | — | listed in scope | no |
| See here | BigMathVault | unmatched — not counted | — | mentioned in finding CRITICAL-02 | no |
| See here | LendingRewardRateModel | unmatched — not counted | — | mentioned in finding CRITICAL-01 | no |
| See here | StETHQueue | unmatched — not counted | — | mentioned in findings HIGH-07, MEDIUM-12, MEDIUM-13, INFORMATIONAL-32 | no |
| See here | UniV3CheckFallbackCLRSOracle | unmatched — not counted | — | mentioned in finding HIGH-08 | no |
| See here | AdminModule | unmatched — not counted | — | mentioned in findings HIGH-03, INFORMATIONAL-13, INFORMATIONAL-14 | no |
| See here | UserModule | unmatched — not counted | — | mentioned in findings HIGH-03, MEDIUM-03 | no |
| See here | GovernanceModule | unmatched — not counted | — | mentioned in finding INFORMATIONAL-03 | no |
| See here | Liquidity | unmatched — not counted | — | mentioned in findings HIGH-03, HIGH-04, HIGH-07, MEDIUM-05, INFORMATIONAL-18, INFORMATIONAL-20 | no |
| See here | Vault | unmatched — not counted | — | mentioned in findings INFORMATIONAL-28, INFORMATIONAL-37 | no |
| See here | iToken | unmatched — not counted | — | mentioned in findings HIGH-05, MEDIUM-05, MEDIUM-06, MEDIUM-07, MEDIUM-08, INFORMATIONAL-22, INFORMATIONAL-23 | no |
| See here | FluidVaultT1 | unmatched — not counted | — | Listed in scope table and findings | no |
| See here | VaultT1 | unmatched — not counted | — | Mentioned as core component in project overview | no |
| See here | VaultT1AdminModule | unmatched — not counted | — | Listed in scope table | no |
| See here | FluidVaultT1Secondary | unmatched — not counted | — | Mentioned in project overview | no |
| See here | VaultFactory | unmatched — not counted | — | Mentioned in project overview | no |
| See here | Liquidity | unmatched — not counted | — | Mentioned as central contract in project overview and findings | no |
| See here | variables.sol | unmatched — not counted | — | listed in scope table | no |
| See here | constantVariables.sol | unmatched — not counted | — | listed in scope table | no |
| See here | userHelpers.sol | unmatched — not counted | — | listed in scope table | no |
| See here | coreHelpers.sol | unmatched — not counted | — | listed in scope table | no |
| See here | secondaryHelpers.sol | unmatched — not counted | — | listed in scope table | no |
| See here | events.sol | unmatched — not counted | — | listed in scope table | no |
| See here | immutableVariables.sol | unmatched — not counted | — | listed in scope table | no |
| See here | interfaces.sol | unmatched — not counted | — | listed in scope table | no |
| See here | structs.sol | unmatched — not counted | — | listed in scope table | no |
| See here | perfectOperationsAndSwapOut.sol | unmatched — not counted | — | listed in scope table | no |
| See here | shift.sol | unmatched — not counted | — | listed in scope table | no |
| See here | main.sol | unmatched — not counted | — | listed in scope table | no |
| See here | colOperations.sol | unmatched — not counted | — | listed in scope table | no |
| See here | debtOperations.sol | unmatched — not counted | — | listed in scope table | no |
| See here | bigMathMinified | unmatched — not counted | — | listed in scope table | no |
| See here | liquidityCalcs | unmatched — not counted | — | listed in scope table | no |
| See here | liquiditySlotsLink | unmatched — not counted | — | listed in scope table | no |
| See here | safeTransfer | unmatched — not counted | — | listed in scope table | no |
| See here | main (adminModule) | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See here | structs (adminModule) | unmatched — not counted | — | listed in scope table | no |
| See here | events (adminModule) | unmatched — not counted | — | listed in scope table | no |
| See here | variables (common) | unmatched — not counted | — | listed in scope table | no |
| See here | helpers (common) | unmatched — not counted | — | listed in scope table | no |
| See here | main (userModule) | unmatched — not counted | — | listed in scope table and mainnet deployments | no |
| See here | events (userModule) | unmatched — not counted | — | listed in scope table | no |
| See here | errorTypes | unmatched — not counted | — | listed in scope table | no |
| See here | proxy | unmatched — not counted | — | listed in scope table | no |
| See here | dummyImpl | unmatched — not counted | — | listed in scope table | no |
| See here | error | unmatched — not counted | — | listed in scope table | no |
| See here | iLiquidity | unmatched — not counted | — | listed in scope table | no |
| See here | bigMathMinified | unmatched — not counted | — | listed in scope | no |
| See here | liquidityCalcs | unmatched — not counted | — | listed in scope | no |
| See here | liquiditySlotsLink | unmatched — not counted | — | listed in scope | no |
| See here | safeTransfer | unmatched — not counted | — | listed in scope | no |
| See here | main | unmatched — not counted | — | listed in scope (two occurrences) | no |
| See here | variables | unmatched — not counted | — | listed in scope | no |
| See here | structs | unmatched — not counted | — | listed in scope | no |
| See here | errorTypes | unmatched — not counted | — | listed in scope | no |
| See here | dummyImpl | unmatched — not counted | — | listed in scope | no |
| See here | helpers | unmatched — not counted | — | listed in scope | no |
| See here | events | unmatched — not counted | — | listed in scope (two occurrences) | no |
| See here | proxy | unmatched — not counted | — | listed in scope | no |
| See here | error | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x273da948aca9261043fbdb2a857bc255ecc29012` | FluidLiteVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 260 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 154 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 107 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=3
- Match method counts: n/a

Zero-match audit list:

- [20308] DL audit link
- [20309] See here
- [20310] See here
- [20311] See here
- [20312] See here
- [20313] See here
- [20314] See here
- [20315] See here
- [20323] /URI ()

Fork inheritance lineage and inherited audits are included when available.
