# Agentic Audit Brief: Arrakis Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Arrakis Finance (`arrakis-finance`)
- Website: [https://www.arrakis.finance](https://www.arrakis.finance)
- Lifecycle: active (Tier 0, 96.4% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, sepolia, unichain
- Contract surface: 250 unique implementations (606 raw deployments)
- Coverage basis: 0/31 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $65,967,661.00
- On-chain TVL (included contracts): $68,860.65
- TVL by chain: Ethereum $68,860.65

## Project Description

This brief describes the observed EVM deployment and audit surface for Arrakis Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, sepolia, unichain. Structural roles: 29 supporting, 11 core. 29 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: supporting (29), core (11)
- Contract kinds: contract (39), abstract (1)
- Detected standards: ownable (23), erc1967proxy (16), pausable (11), erc165 (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (34), openzeppelin-upgradeable (29), uniswap-v3 (9), solady (8), permit2 (3)
- Upgradeable-pattern rows: 29

## Fork Analysis

3 of 51 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a`, chain 8453)
Origin: hybra (`0x32b9da73215255d50d84feb51540b75acc1324c2`)
Containment: 65.6% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- factoryRegistry()
- voter()

Removals (removed from original):
- collectAllProtocolFees()
- collectProtocolFees(address)
- defaultProtocolFee()
- gaugeManager()
- getProtocolFee(address)
- protocolFeeManager()
- protocolFeeModule()
- setGaugeManager(address)
- setMaxFee(uint24)
- setProtocolFeeManager(address)
- setProtocolFeeModule(address)

**CLFactory** (`0xade65c38cd4849adba595a4323a8c7ddfe89716a`, chain 8453)
Origin: arrakis-finance (`0xec2ffcf38bc1df1292d2a9cab72347eabc9cd4d1`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLFactory** (`0xf8f2eb4940cfe7d13603dddd87f123820fc061ef`, chain 8453)
Origin: arrakis-finance (`0xec2ffcf38bc1df1292d2a9cab72347eabc9cd4d1`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x022a0c7dc85fc3ff81f9f8ef65ae2813a062f556`, chain 1)
- UnnamedContract (`0x1cc0adff599f244f036a5c2425f646aef884149d`, chain 1)
- UnnamedContract (`0x413fc8e6f0b95d1f45de01b17e9441ec41ed01ab`, chain 10)
- UnnamedContract (`0xcc8989978668ad377369c0cc720192377a6006e3`, chain 130)
- UnnamedContract (`0xfb4e25800b77bcd09227729ffcc145685797f408`, chain 137)
- UnnamedContract (`0x8dd906ecf9d434a3fbf2d60a14fbf73d14d4ea6e`, chain 8453)
- UnnamedContract (`0x97d42db1b71b1c9a811a73ce3505ac00f9f6e5fb`, chain 8453)
- UnnamedContract (`0xa8098da01acb87c85f8e0094ff23213394150785`, chain 8453)
- UnnamedContract (`0x9a49350f7f65b5ecd805f71d811d5fdf66293345`, chain 9745)
- UnnamedContract (`0xe1a76410dfb11d6c60a43838fa853519f13deef4`, chain 42161)
- AerodromeStandardModulePrivate (`0x0e4afbdab305206465ee48f7766da185157d417e`, chain 8453)
- AerodromeStandardModulePrivate (`0xd9e51fe9f8e0e1a21b444414a89bd8c7ddadefd1`, chain 8453)
- AerodromeStandardModulePrivateFees (`0x06baae482698c8995f7b59f51e3ba021bf7434ee`, chain 8453)
- AerodromeStandardModulePrivateFees (`0x1a52733e4f0af7d01d0927f8d5c45e673b0c33aa`, chain 8453)
- AerodromeStandardModulePrivateFees (`0xe7d57e70f7615eda3d3f3a998f316d303a2b2f43`, chain 8453)
- ArrakisMetaVaultFactory (`0x820fb8127a689327c863de8433278d6181123982`, chain 1)
- ArrakisPublicVaultRouter (`0x72aa2c8e6b14f30131081401fa999fc964a66041`, chain 1)
- Guardian (`0x6f441151b478e0d60588f221f1a35bcc3f7ab981`, chain 1)
- MigrationHelper (`0xd61407b9b63956cfb61341aafefbd7eda1f9b962`, chain 1)
- ModulePrivateRegistry (`0xe278c1944ba3321c1079abf94961e9ff1127a265`, chain 1)
- ModulePublicRegistry (`0x791d75f87a701c3f7dffcec1b6094db22c779603`, chain 1)
- PancakeSwapV3StandardModulePrivate (`0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11`, chain 1)
- PancakeSwapV4StandardModulePrivate (`0x3da00380b4d56101685d058785fde25fe9c53c39`, chain 56)
- Pauser (`0x700a1cda1495c1b34c4962e9742a8a8832aac03a`, chain 1)
- PrivateVaultNFT (`0x44a801e7e2e073bd8bce4bccf653239fa156b762`, chain 1)
- RouterSwapExecutor (`0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6`, chain 1)
- RouterSwapResolver (`0xc6c53369c36d6b4f4a6c195441fe2d33149fb265`, chain 1)
- TimelockController (`0xaf6f9640092cb1236e5db6e517576355b6c40b7f`, chain 1)
- TransparentUpgradeableProxy (`0x2e6e879648293e939aa68ba4c6c129a1be733bda`, chain 1)
- UniswapV3StandardModulePrivate (`0x8c02839babf7788d9d7043614b2f85cdd8ace35e`, chain 1)
- UniV4StandardModulePrivate (`0x04ead25447f9371c5c1e2c33645f32aafeb337dc`, chain 1)
- UnnamedContract (`0xcc8989978668ad377369c0cc720192377a6006e3`, chain 57073)
- UpgradeableBeacon (`0x1436877899273d748eb433efd6c437e37d627255`, chain 1)
- UpgradeableBeacon (`0xdf4975a3515168f8c446ad4a2e974b89c64b6a38`, chain 1)
- UpgradeableBeacon (`0x205e648b2338574afbdfba7c6582895de0796199`, chain 56)
- UpgradeableBeacon (`0x68c0d8ca268f7376c775d2f9ceebdcbe6920f07a`, chain 56)
- UpgradeableBeacon (`0x741d420ee761fd4bd0b4573c916e30950c87e639`, chain 56)
- UpgradeableBeacon (`0xc0b7fac163566a768b4f30d06fd4b08bb6b987f0`, chain 56)
- UpgradeableBeacon (`0x243727c1ffe0ce20a84eeede5451422ab4fa6f9b`, chain 8453)
- UpgradeableBeacon (`0x568336b9630055892b6821fcf2dd3f1da225ac6f`, chain 8453)
- UpgradeableBeacon (`0x618e7da5b86197358144933bfc6e0aac49e59778`, chain 8453)
- UpgradeableBeacon (`0x6b81f199ad74fe1a8c95f58145de72544378df08`, chain 8453)
- UpgradeableBeacon (`0x82c0a11a404e693452a504ca98bdc87f2475067f`, chain 8453)
- UpgradeableBeacon (`0x8b5c390ed177e0e6c17d4df490ddaebe1d1cb82f`, chain 8453)
- UpgradeableBeacon (`0xa8c0b44472b3109d736496781e77555a5745342f`, chain 8453)
- UpgradeableBeacon (`0x1ec500046df08532624a9e246609f35148bd7327`, chain 42161)
- UpgradeableBeacon (`0x28a9a4eb66d763ccd188a34b5aa6a6d7c83cf6cb`, chain 42161)
- WithdrawHelper (`0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 51/53 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/31 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 208 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 113
- Confirmed-live implementations: 41 of 250 unique; 209 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/145
- Verified + Unaudited implementations: 144
- Verified by bytecode match: 1
- Unverified implementations: 105
- Unique implementations: 250
- Raw deployments: 606
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (144)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x288a17459b5d0ecc401f5ecdc166f447ea3da13a`; ethereum `0xa642694bca5798dfc341eed9a0eaf4271e6b1bcc` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x67092ab1c3dac772ff15f823eb48cb63f087b691`; ethereum `0xefe0471ee21d1bea1166938fb5f00b8df8263b25` | ⚠️ Unaudited |
| SovereignPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a406dbc1a301b0d2ed5ba0d9398c4debe68202` | ⚠️ Unaudited |
| ArrakisMetaVaultPublic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x584bd540963d5b084f2a6365b97c7664ded95382`; ethereum `0xe98c7c7d4ba56b239503adc88e0f4090f9074a3d` | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | project_anchor | own_supporting | 0 | base | unit-379804 | `0x0e4afbdab305206465ee48f7766da185157d417e` | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | project_anchor | own_supporting | 0 | base | unit-379818 | `0xd9e51fe9f8e0e1a21b444414a89bd8c7ddadefd1` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379803 | `0x06baae482698c8995f7b59f51e3ba021bf7434ee` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379805 | `0x1a52733e4f0af7d01d0927f8d5c45e673b0c33aa` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | project_anchor | own_supporting | 0 | base | unit-379819 | `0xe7d57e70f7615eda3d3f3a998f316d303a2b2f43` | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea1aff9dbffd1580f6b81a3ad3589e66652db7d9` | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2845c6929d621e32b7596520c8a1e5a37e616f09` | ⚠️ Unaudited |
| ArrakisFactoryV1 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x37265a834e95d11c36527451c7844ef346dc342a` | ⚠️ Unaudited |
| ArrakisMetaVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-379783 | 5 deployments: ethereum `0x820fb8127a689327c863de8433278d6181123982`; bsc `0x820fb8127a689327c863de8433278d6181123982`; base `0x820fb8127a689327c863de8433278d6181123982`; plasma `0x820fb8127a689327c863de8433278d6181123982`; arbitrum `0x820fb8127a689327c863de8433278d6181123982` | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379781 | `0x72aa2c8e6b14f30131081401fa999fc964a66041` | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e890d171290085df317c82a4dbdf000cfa073b0`; ethereum `0xdfe90e218f2a52df8837dcd8fd4f3f81dfbea1ff` | ⚠️ Unaudited |
| ArrakisStandardManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-379822 | `0x2e6e879648293e939aa68ba4c6c129a1be733bda` | ⚠️ Unaudited |
| ArrakisV1RouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdd92062adf9f6edf528babe7f04804fe86424a74`; ethereum `0xe9bf34c829b30647afce41a4b49d947ccc66b472` | ⚠️ Unaudited |
| ArrakisV1RouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x9ce88a56d120300061593ef7ad074a1b710094d5`; optimism `0xc248d6445369ed303e02d42e5375d55da75b05c2` | ⚠️ Unaudited |
| ArrakisV1RouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xc73fb100a995b33f9fa181d420f4c8d74506df66`; polygon `0xe92501273362e1c8f8f317970f390c62260b7472` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; ethereum `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38`; optimism `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; optimism `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38`; polygon `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; polygon `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38`; arbitrum `0x1d91f6d917ec51de53a5789c34fff777a58759b6`; arbitrum `0x7f346f1eb7a65ff83f51b3fd76dcc70979e6df38` | ⚠️ Unaudited |
| ArrakisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x2f389e583f064f94a63b3cca502719f27cd5cf00`; ethereum `0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d`; ethereum `0xb5c3b286dd591282fe87dfab0613488e1b6b09ba`; optimism `0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d`; optimism `0xb5c3b286dd591282fe87dfab0613488e1b6b09ba`; polygon `0x399e3bb2bbd49c570aa6edc6ac390e0d0acbbd5e`; polygon `0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d`; polygon `0xb5c3b286dd591282fe87dfab0613488e1b6b09ba`; arbitrum `0xaf0f96e8702cb1b8160e43c8c020c608cd7b134d`; arbitrum `0xb5c3b286dd591282fe87dfab0613488e1b6b09ba` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3`; optimism `0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3`; polygon `0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3`; arbitrum `0x891e7e4baffef0ef7bc4b1e85d122bdd7363b8b3` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x055b6d3919042be29c5f044a55529933e1273a88`; ethereum `0x453f7d013ca100ade3ab77e007ffcfbdf753857c`; optimism `0x055b6d3919042be29c5f044a55529933e1273a88`; optimism `0x453f7d013ca100ade3ab77e007ffcfbdf753857c`; polygon `0x055b6d3919042be29c5f044a55529933e1273a88`; polygon `0x453f7d013ca100ade3ab77e007ffcfbdf753857c`; arbitrum `0x055b6d3919042be29c5f044a55529933e1273a88`; arbitrum `0x453f7d013ca100ade3ab77e007ffcfbdf753857c` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 8 deployments: ethereum `0x0ffa13e41d1cf3a22ca01d94d27955c3762465e0`; ethereum `0x26673a336a720532ebf1d225bfc7092772b3b775`; optimism `0x26673a336a720532ebf1d225bfc7092772b3b775`; polygon `0x26673a336a720532ebf1d225bfc7092772b3b775`; polygon `0x68f51d2aeb485ca3a65a7ff54e9266dd5ea4c58b`; polygon `0x8d1c480bca1439ae5d5a81a75d53f9bf6ec513f1`; polygon `0xb9e5219766c013e4ff7225a3bc2a08e4abce8aaf`; arbitrum `0x26673a336a720532ebf1d225bfc7092772b3b775` | ⚠️ Unaudited |
| ArrakisV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0xecb8ffcb2369ef188a082a662f496126f66c8288`; ethereum `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d`; optimism `0xecb8ffcb2369ef188a082a662f496126f66c8288`; optimism `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d`; polygon `0xecb8ffcb2369ef188a082a662f496126f66c8288`; polygon `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d`; arbitrum `0xecb8ffcb2369ef188a082a662f496126f66c8288`; arbitrum `0xf90aafabb1a4c0ce318be12da73f0f31fabe865d` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f`; ethereum `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; ethereum `0xbaffbf289d5cc9c7aa89254a30bff837f4bba929`; ethereum `0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c`; optimism `0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f`; optimism `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; optimism `0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c`; polygon `0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f`; polygon `0x7843ea2e3e60b24cc12b56c5627adc7f9f0749d6`; polygon `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; polygon `0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c`; arbitrum `0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f`; arbitrum `0x89e4be1f999e3a58d16096fbe405fc2a1d7f07d6`; arbitrum `0xccee73ea4c7a42491c68fea78b1bddd1a35c8d9c` | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5`; ethereum `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; ethereum `0x7679028d2135c2cd622d71c891941359ac8339c7`; ethereum `0xb11bb8ad710579cc5ed16b1c8587808109c1f193`; optimism `0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5`; optimism `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; optimism `0xb11bb8ad710579cc5ed16b1c8587808109c1f193`; polygon `0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5`; polygon `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; polygon `0xb11bb8ad710579cc5ed16b1c8587808109c1f193`; arbitrum `0x4bc385b1ddf0121cc40a0715cfd3befe52f905f5`; arbitrum `0x535c5fdf31477f799366df6e4899a12a801cc7b8`; arbitrum `0xb11bb8ad710579cc5ed16b1c8587808109c1f193` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; ethereum `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; optimism `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; polygon `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| ArrakisV2Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6ac8bab8b775a03b8b72b2940251432442f61b94`; arbitrum `0xfe3d837317d420e9c40c30dcb49892ad9ef15e3d` | ⚠️ Unaudited |
| AssetListingGUni | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e4ede946b3d76c4c505566eb821a1470507d2d` | ⚠️ Unaudited |
| CErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x41346d3dd4b4688a388b24dac4014d75faeee23b`; ethereum `0x7e232aeed14446d427579b4f77251552b065df00`; ethereum `0xc36681303c7a41b045636af915486b22214b6292` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0f2ab07b9de2b784664f01cceb6ee4705bded9b0`; ethereum `0x60c4a1483b2e4d57268078dbb677816d47109014`; ethereum `0xc508118ae4b442a81c18ce5130b53e5d02957358`; ethereum `0xccd64bf6afcd973dc2cb15314d9fc674f093c7d2`; ethereum `0xea3112bd0e8d78325e1031107e3021f322483044` | ⚠️ Unaudited |
| CLFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x342576bb62afe26c547bfcbd9e94e76d1538a617`; base `0xc6403d7e22ab48bdd43d2473aac9574e881cd165`; base `0xec2ffcf38bc1df1292d2a9cab72347eabc9cd4d1` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379808 | `0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379817 | `0xade65c38cd4849adba595a4323a8c7ddfe89716a` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | base | unit-379820 | `0xf8f2eb4940cfe7d13603dddd87f123820fc061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x11909efd754f01da354f8219391b40b2df7daf22`; base `0x1296a1b532e33f01091cf728706a94268c6025b5`; base `0x434bccab043311a20b16021c137ea81702790f7b`; base `0x7dccb042fac367809f773c3f62e5434d58204b3e`; base `0xc0d2086b6f70c0c40423626167096c6196cfa0c8` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x385293cae378c813f16f0c1334d774adddf56abb`; base `0x3be76d34317f6dba48ddbb2326cf16daf9998529`; base `0xb630227a79707d517320b6c0f885806389dfcbb3`; base `0xd63e8525e3f21bcea2a136f95e99263ba4948adc`; base `0xff8f90bb55292947f84b1386c10f0773258898c2` | ⚠️ Unaudited |
| CLPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x88e336956de7b74627fdfd548656b55501a0471f`; base `0x941b5f2e00c02bb04d0c97ad59d1c7ca0d514306`; base `0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16`; base `0xad95bd62878f12bd74bb1528ad18420999894b48`; base `0xc770898522d2a9c8da7a10d63989b6b58305b665`; base `0xec8e5342b19977b4ef8892e02d8daecfa1315831` | ⚠️ Unaudited |
| CLQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5` | ⚠️ Unaudited |
| CreationCodePrivateVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd10ee185960ce42513bbb652cb24028cb27923f` | ⚠️ Unaudited |
| CreationCodePublicVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9fbe90c39d40157c7d25ba4359354b3f5419ef1` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5264eeeab16037a7a7af15ff69a470af6e2a2223`; base `0xe945ab812a22c02025dfc31d9523158b242a5684` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x0ad08370c76ff426f534bb2affd9b5555338ee68`; base `0x57bffd8deafa66437b8c6e8a49b24bf36db1b058`; base `0xc2cc3256434afbc36bb5e815e1bb2151310a1a0b`; base `0xccc21f4750e8b3e9c095bcb5d2ff59247a2ccd35` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87d8f999bba9343e8099552426775b51c338e8cb` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75830bca247c671a338526f01f47e29384116540` | ⚠️ Unaudited |
| GelatoUniV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x810f9c4613f466f02cc7da671a3ba9a7e8c33c69`; ethereum `0xdcdccb0ed430c8a30e3030663b033e63083f7b56` | ⚠️ Unaudited |
| GelatoUniV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaf0c7de1ea9c654355a10fc3b99a9ffea4bd928c`; ethereum `0xc2d8196dbcc92e8c5f372e58b8dbfdf2ac129057` | ⚠️ Unaudited |
| GelatoUniV3Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dacf7b13bea52df7ba5222983b1ffe146a1e82b` | ⚠️ Unaudited |
| Guardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-379779 | `0x6f441151b478e0d60588f221f1a35bcc3f7ab981` | ⚠️ Unaudited |
| Guardian | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4e25800b77bcd09227729ffcc145685797f408` | ⚠️ Unaudited |
| GUniFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x034a6626eec82e14ac5b0130f04f85a2ea158f9c`; ethereum `0x075d3764edd5cc68193dc4a55baef3640fde7051` | ⚠️ Unaudited |
| GUniFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0x9a999c8835e975bbcd255d5e9e9a11f59cc58f40`; ethereum `0xc974763d2f3dafe8cc91a508a9f048b019065eaf`; ethereum `0xf517263181e468fa958050cd6abfb58a445772ce`; optimism `0xb9bfd9807ef39821beaeab51acdf32e23e195b5d`; polygon `0x33f054051f2cd19fd53eaf33e33f7faad7c15e86` | ⚠️ Unaudited |
| GUniOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0719b21ffc5d7fb46b9f74301149ed035790cc96`; ethereum `0x399e3bb2bbd49c570aa6edc6ac390e0d0acbbd5e`; ethereum `0x50f6141b99fd56e129f66fcc1a08611644069f6b`; ethereum `0x7843ea2e3e60b24cc12b56c5627adc7f9f0749d6` | ⚠️ Unaudited |
| GUniPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x454bb75c7dbca9092981a7d4f641fac02e49665b`; ethereum `0x68c68fdb1d2deaf58295008099e061b1749f94cf`; ethereum `0x6dfc8b880d6c1043bebb6eb2346913185ce1b48b`; ethereum `0xb542d5cb34ef265fb87c170181127332f7797369`; ethereum `0xb54613678c36dd51e75236060060a13d44597d82`; optimism `0x8582bf142be76fef830d23f590a2587f2ad7c216`; polygon `0xd2bb190dd88e7af5df176064ec42f6dfa8672f40` | ⚠️ Unaudited |
| GUniPoolStatic | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0a64a916390f328bc4d7ce4429cb4c5b4ce7c2a7`; ethereum `0x5780bb3a9f579dc181b5fe00d8f56224dd9e04a0`; ethereum `0x9db7be212d8af680ea7e1ace9724e513d4a590d5` | ⚠️ Unaudited |
| GUniResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x3b01f3534c9505fe8e7cf42794a545a0d2ede976`; ethereum `0xc8b92036cf2bfc5ad2116c9b9fb3cee2d3b3dc89`; optimism `0xd2bb190dd88e7af5df176064ec42f6dfa8672f40`; polygon `0x3638fc820c22b9ecd631943bc7d5591c0004c7b2` | ⚠️ Unaudited |
| GUniResolver02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0317650af6f184344d7368ac8bb0beba5edb214a`; ethereum `0x72c321acf29f2b4ccd0cd0d17f42d4e6a2e39ee5` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x513e0a261af2d33b46f98b81fed547608fa2a03d`; ethereum `0x9de3f4847186677e51cc9e39e07d30bd58927f6a` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ca6fa325bc32f86a12cc4964edf1f71655007a7` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x97551ad4c64927ff40f4ccc310d233835a110fc1`; optimism `0xc56f04ec20dad27c0f4701b14977c2dbe85142ba` | ⚠️ Unaudited |
| GUniRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x477e509b9d08862baeb8ab69e901ae72b13efca0`; polygon `0xb42de7247d71d195fc131537e0338d3dcafa7811` | ⚠️ Unaudited |
| GUniRouterStaking | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x6be877dd7136d8864a56a87a577fcfb3ca7fac63`; polygon `0x9c3c16478cde9e5904c4c442ce105ee3a487ca7f` | ⚠️ Unaudited |
| HOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3269994964dfe4aa5f8dd0c99ed40e881562132a`; ethereum `0xf237851d574774e451ee8868314a6ea031c20cde` | ⚠️ Unaudited |
| HOTExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a947a66a15205ed9cd02c3be24cdf5c1d10183` | ⚠️ Unaudited |
| HOTOracleWrapper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xf126798061555cf2778465bb5a001dc8d99356dd`; ethereum `0xf23d83da92844c53ad57e6031c231dc93ec4ee80` | ⚠️ Unaudited |
| Liquidity Gauge v4 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 8 deployments: ethereum `0x18d1bc899a8e9baaadab80f401cb3a6c2b3c7994`; ethereum `0xb378c842521698720b45239d3f7317a46191a2f1`; ethereum `0xc2b92cd8ba2871259083fe7171b3c514899a7174`; ethereum `0xddda52773510b3c8dc9fd70259fe9fcac54dfed0`; optimism `0x232ea11b244b1b36d034ba57b15ad514149aea2e`; optimism `0x6aaee18f61d0a8c94117b927406180e59e285b37`; optimism `0x8c99b6edd92b83cb123c84514ee9ec5f53afc501`; optimism `0xd9723fffda369d119fbd66a15113144bf76e281c` | ⚠️ Unaudited |
| MetaPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8582bf142be76fef830d23f590a2587f2ad7c216` | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379787 | `0xd61407b9b63956cfb61341aafefbd7eda1f9b962` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6`; base `0x393550950616b6931f9fa5f85f1ce695e25d81ad`; base `0x9574e3331964c8b4db516d639eb807709c3ada30`; base `0x9951ff0b830e46ef0e7ce34d9117e3214b1f0b5a` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x49540630a4d2ce67d54450d007d634f4c45b4f4f`; base `0xb4a9e5fc0727bef09d819fcfc5ece8ca9bcf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555` | ⚠️ Unaudited |
| MockCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ca8bc12faccde52d3d4ee21020d63e15714534f` | ⚠️ Unaudited |
| MockWMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe292ef6332474f6568b7a8e9b6ece8576e97ebd4` | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379789 | `0xe278c1944ba3321c1079abf94961e9ff1127a265` | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95e09ebd0b4e36ac14315a483b4bb4647b2bb0c` | ⚠️ Unaudited |
| ModulePublicRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-379782 | `0x791d75f87a701c3f7dffcec1b6094db22c779603` | ⚠️ Unaudited |
| ModulePublicRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x87d10148a6a9a5fce253a8af35a43694bc461f6b`; ethereum `0xd2307bed9a55742febe560b11e090427cea89317` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3`; base `0x7dd33b26bd68e3cb0a749f0cb5e1716a746238d8`; base `0xe702fca0218bfe426b722a5789713e4390928ad0` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x827922686190790b37229fd06084350e74485b72` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa990c6a764b73bf43cee5bb40339c3322fb9d55f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc741beb2156827704a1466575cca1cbf726a1178` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x11b5f9dff0fb1141715b2d549231ce8e07953814`; base `0x3b1ebc29667b5ac08714ac722d51a71e4da579f8`; base `0x48fa0226fce30a5ef1772d3d7cc8adfda5642f34`; base `0xc85c126442bb5b654792a70135805a9778c8e3fe`; base `0xf632031b94d72dee0d99def846c9b6211041337f` | ⚠️ Unaudited |
| PALMfeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 4 deployments: optimism `0x187dbd46e895dc06dda1840eda6d9b01990dede5`; optimism `0x89cfc2d653b092b0cb7b6160156db5262eb51a4c`; polygon `0x46736dabf8c16e0bd8bf1457c5dc4c6f533ae104`; polygon `0x72a6b646d1247e6f06cd5cc7a08723cb0d2edbd2` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; ethereum `0xecf6a02a8bfc046ff75e893d8a5ae993b069c38f`; optimism `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; optimism `0xecf6a02a8bfc046ff75e893d8a5ae993b069c38f`; polygon `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; polygon `0xecf6a02a8bfc046ff75e893d8a5ae993b069c38f`; arbitrum `0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e`; arbitrum `0xecf6a02a8bfc046ff75e893d8a5ae993b069c38f` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5b5157eec5466a926d3979833a16f7f3732c8449`; ethereum `0xf13be532a4c7181772d6ae51572bdf6c56f1f74c` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 10 deployments: ethereum `0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8`; ethereum `0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e`; ethereum `0xf820692338cf37dd8cdcc20f664f531331862a89`; ethereum `0xf90ec87ba0ba9ac92f5374f112740ce291b8877e`; optimism `0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e`; optimism `0xf90ec87ba0ba9ac92f5374f112740ce291b8877e`; polygon `0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e`; polygon `0xf90ec87ba0ba9ac92f5374f112740ce291b8877e`; arbitrum `0x8eebba5f7f433a8afd2794eabd6a7fc9bb92856e`; arbitrum `0xf90ec87ba0ba9ac92f5374f112740ce291b8877e` | ⚠️ Unaudited |
| PALMManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511`; ethereum `0xa39b17ba26fc48d9973fa76ef0219731a841aeab`; ethereum `0xf4dc9d0c12fc1f3f67ca67109e0db315f90405dd`; optimism `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511`; polygon `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511`; polygon `0xf4c59045496a8ac9747e41e2e2155afad0a4f14e`; arbitrum `0x8e0cfa182425ae40774a4a9a25af25bfe5b3d511` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38e6d81100c0221b736e143c7cb1e90f2cc9f005`; ethereum `0xb78b6162815601543d2756aecc052037271c4585` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x50763a665dc24692e25ec8e2c203a79e602d2890`; ethereum `0xbd39e85499944556300b93851e01082ca17ce78e`; optimism `0x50763a665dc24692e25ec8e2c203a79e602d2890`; optimism `0xbd39e85499944556300b93851e01082ca17ce78e`; polygon `0x50763a665dc24692e25ec8e2c203a79e602d2890`; polygon `0xbd39e85499944556300b93851e01082ca17ce78e`; arbitrum `0x50763a665dc24692e25ec8e2c203a79e602d2890`; arbitrum `0xbd39e85499944556300b93851e01082ca17ce78e` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; ethereum `0xb041f628e961598af9874bcf30cc865f67fad3ee`; optimism `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; optimism `0xb041f628e961598af9874bcf30cc865f67fad3ee`; polygon `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; polygon `0xb041f628e961598af9874bcf30cc865f67fad3ee`; arbitrum `0x65b87a8a6c173d9ffde1f4c1d97187820495c515`; arbitrum `0xb041f628e961598af9874bcf30cc865f67fad3ee` | ⚠️ Unaudited |
| PALMTerms | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0x536efd4570dca7c980848d10ea8ab7e502d14716`; ethereum `0xc73fb100a995b33f9fa181d420f4c8d74506df66`; polygon `0x2e7c05e24e96c3f34c5693ba8dedcdcf3530cefc`; polygon `0xbee2b73493f342b1abee4c747be6ad53e02c071e` | ⚠️ Unaudited |
| PancakeSwapV3MulticallHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf029611a16e1a8ca6aad83c08d2b017511dbd2ea` | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379778 | `0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11` | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11` | ⚠️ Unaudited |
| PancakeSwapV4StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | bsc | unit-379798 | `0x3da00380b4d56101685d058785fde25fe9c53c39` | ⚠️ Unaudited |
| PancakeV4Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb`; bsc `0x0748dd2b1bc4eae2c7a8a300dbe69a44b47ebb35`; bsc `0x30c552be876fe28d1e1b609f3d7dc289e7634a98`; bsc `0x31d00ef46a1b4151f5a08985068e3850f6cd360d`; bsc `0x81d4426b9da1dc574f3e37c7b4d35816e9e16bb8`; bsc `0xda26e9790c15bb2be5ccf59419679103b5958abf`; bsc `0xf4e0671a76b1715744a259a0fa0c561eb89e3340` | ⚠️ Unaudited |
| Pauser | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379780 | `0x700a1cda1495c1b34c4962e9742a8a8832aac03a` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x4cd41204aa4c7438374256bd7be850ef9fcfab84`; ethereum `0xca0e1b56007df7d22214aa584678618b3be96a25`; optimism `0x4cd41204aa4c7438374256bd7be850ef9fcfab84`; optimism `0xca0e1b56007df7d22214aa584678618b3be96a25`; polygon `0x4cd41204aa4c7438374256bd7be850ef9fcfab84`; polygon `0xca0e1b56007df7d22214aa584678618b3be96a25`; arbitrum `0x4cd41204aa4c7438374256bd7be850ef9fcfab84`; arbitrum `0xca0e1b56007df7d22214aa584678618b3be96a25` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; ethereum `0xf7cb77c8dcb22a1bb4435932f3515319721faf44`; optimism `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; optimism `0xf7cb77c8dcb22a1bb4435932f3515319721faf44`; polygon `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; polygon `0xf7cb77c8dcb22a1bb4435932f3515319721faf44`; arbitrum `0x8638fbd429b19249bb3bcf3ec72d07a657e49642`; arbitrum `0xf7cb77c8dcb22a1bb4435932f3515319721faf44` | ⚠️ Unaudited |
| PrivateVaultNFT | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379777 | `0x44a801e7e2e073bd8bce4bccf653239fa156b762` | ⚠️ Unaudited |
| ProtocolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09171e8f0768ed5fc48e3945e4ac2027d4cd72f` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 29 deployments: ethereum `0x7d996d214913c6f2192bd52055468872b9a01daf`; ethereum `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; ethereum `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; ethereum `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; ethereum `0xdd8f3561260ffeb5a7690de216f8fc4a061518e7`; ethereum `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; ethereum `0xe1de7bd72a568f66e60ed17570fbd725205b4baf`; ethereum `0xe92501273362e1c8f8f317970f390c62260b7472`; ethereum `0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7`; optimism `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; optimism `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; optimism `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; optimism `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; optimism `0xe1de7bd72a568f66e60ed17570fbd725205b4baf`; optimism `0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7`; optimism `0xf48362d1cccdc05b87556d9bb0e180967f2b47b8`; polygon `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; polygon `0x8ce75231b2c9b09ff1b7f459b2ee845f92670720`; polygon `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; polygon `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; polygon `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; polygon `0xe1de7bd72a568f66e60ed17570fbd725205b4baf`; polygon `0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7`; arbitrum `0x89dc63264dab74a4350d7f44bd62eec3b22c9ca0`; arbitrum `0xc00e8acb7d8caaa1a9338cc42875097c319b7b19`; arbitrum `0xd0db41560276832c78ea7b8fe0620feeea9c0d8a`; arbitrum `0xdf4433a2b8850c49c2ef2cff6447637002d8d8dd`; arbitrum `0xe1de7bd72a568f66e60ed17570fbd725205b4baf`; arbitrum `0xec0634d79e67ce143b71f0dc8ee74cdf798a6fa7` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0`; base `0x3d4c22254f86f64b7ec90ab8f7aec1fbfd271c6c`; base `0x514c8b5f54112481e28028f1166bd78501089259`; base `0x919e53b78c36d442bd23094737def5fa064601fc` | ⚠️ Unaudited |
| RangeOrderResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b057c237fdcc6f480ed0c7ed00866c7f41af51f`; polygon `0xffb6a1433dafe2d13cb645f41e6b4d8b66dc0bcd` | ⚠️ Unaudited |
| Redistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x9e494d8b172531a2e2aba90d5b66addee3c87329`; base `0xd6136862f535275518e6c48ff4de1c4b649a9e80`; base `0xee5b3c7b333e2870b746b3b2b168ef0958e55e15` | ⚠️ Unaudited |
| ReserveMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5e67887272b039670c14b39c4959d8c74e057e` | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379773 | `0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6` | ⚠️ Unaudited |
| RouterSwapExecutor | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96`; ethereum `0x8ef4d048e6d7f8cc3b6a929c2979f15cde2dd04d`; ethereum `0xa552dfc7c9242a8f63a120901aaec76ac2473398`; optimism `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96`; polygon `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96`; arbitrum `0x25e9b0576f92d431882f158bb8fb4ac47bdd7b96` | ⚠️ Unaudited |
| RouterSwapResolver | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ce9e840b69a86c965f4d732e39e389fe69fda51`; optimism `0x2ce9e840b69a86c965f4d732e39e389fe69fda51`; polygon `0x2ce9e840b69a86c965f4d732e39e389fe69fda51`; arbitrum `0x2ce9e840b69a86c965f4d732e39e389fe69fda51` | ⚠️ Unaudited |
| RouterSwapResolver | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379786 | `0xc6c53369c36d6b4f4a6c195441fe2d33149fb265` | ⚠️ Unaudited |
| SimpleManager | governance | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 8 deployments: ethereum `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; ethereum `0x64ab6c28423bd60611199a01c6720a0576d9a9fa`; optimism `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; optimism `0x64ab6c28423bd60611199a01c6720a0576d9a9fa`; polygon `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; polygon `0x64ab6c28423bd60611199a01c6720a0576d9a9fa`; arbitrum `0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1`; arbitrum `0x64ab6c28423bd60611199a01c6720a0576d9a9fa` | ⚠️ Unaudited |
| SimpleTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0260125e9951fcc800d17aaed9a9ab5b4bfc6a40`; ethereum `0x579e01529806b254148d8a95968624a4155d1806` | ⚠️ Unaudited |
| SimpleTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 4 deployments: polygon `0x1d512ba0d9ef12ae68e94f6e3f2c53da8de53d74`; polygon `0xa6e7692c236404b9f3709ca0d444773ba60c013c`; polygon `0xd39977d67519b1297e4a3aab0aa684f35624bb01`; polygon `0xe81e1851f1f0511a7451f4c86f7920e466e12181` | ⚠️ Unaudited |
| SovereignPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x56f0e2c503b32dafbf3bd6482e73c36e7e5c17b6`; ethereum `0xa68d6c59cf3048292dc4ec1f76ed9def8b6f9617`; ethereum `0xf57b45a51a38c8e1814bf3e06d9d5fe121cdaf2f` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91616a7b9cf6d23f8c17845581051ebdc4bcb916` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x698cb2b6dd822994581fea6ea4fc755d1363a92f`; base `0xcbbb8035cac7d4b3ca7abb74cf7bdf900215ce0d` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5` | ⚠️ Unaudited |
| TempProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x741d420ee761fd4bd0b4573c916e30950c87e639`; ethereum `0xd3e822c7d7da4374a0715d6f350684bb1023a60c` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-379785 | `0xaf6f9640092cb1236e5db6e517576355b6c40b7f` | ⚠️ Unaudited |
| Underlying | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; ethereum `0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988`; ethereum `0x4f3f69ab92d414b73a136b31d54ba207a0563021`; ethereum `0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2`; optimism `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; optimism `0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988`; optimism `0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2`; polygon `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; polygon `0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988`; polygon `0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2`; polygon `0xfa872674649f17b1a3747f3b136a519aaf9bc5cd`; arbitrum `0x39b9891ba3c5a8fe69c19f54db2fd90a483b780a`; arbitrum `0x3b8d59e7048c8efe3492d23e4dae1967fbbc0988`; arbitrum `0x92cb4f7e4cb623e73d5ec84a43669adc757c2bd2` | ⚠️ Unaudited |
| UniswapV3StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379784 | `0x8c02839babf7788d9d7043614b2f85cdd8ace35e` | ⚠️ Unaudited |
| UniV4Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xe1ef0c7b9c6d347c90943be4d7342b31c9434f32`; arbitrum `0x173229f540e85376aa180d41928994163ac19ff9` | ⚠️ Unaudited |
| UniV4StandardModulePrivate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379771 | `0x04ead25447f9371c5c1e2c33645f32aafeb337dc` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cb442acf35158d5eda88fe602221b67b400be3e` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | ethereum | unit-379772 | 4 deployments: ethereum `0x1436877899273d748eb433efd6c437e37d627255`; bsc `0x205e648b2338574afbdfba7c6582895de0796199`; base `0x618e7da5b86197358144933bfc6e0aac49e59778`; arbitrum `0x1ec500046df08532624a9e246609f35148bd7327` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | unit-379800 | `0x741d420ee761fd4bd0b4573c916e30950c87e639` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | unit-379801 | `0xc0b7fac163566a768b4f30d06fd4b08bb6b987f0` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | base | unit-379806 | 4 deployments: base `0x243727c1ffe0ce20a84eeede5451422ab4fa6f9b`; base `0x568336b9630055892b6821fcf2dd3f1da225ac6f`; base `0x6b81f199ad74fe1a8c95f58145de72544378df08`; base `0x8b5c390ed177e0e6c17d4df490ddaebe1d1cb82f` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | base | unit-379816 | `0xa8c0b44472b3109d736496781e77555a5745342f` | ⚠️ Unaudited |
| ValantisModulePrivate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e2fc9b2d37ea3e771b6f2375915b87cca9e55bc` | ⚠️ Unaudited |
| ValantisModulePublic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdef855fd1c110887f53045d42aba3f47840252f1` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4974a491f43de6ebcd1b3528aa52383b7692824f`; ethereum `0x83c1aef2d4ce3b7c09930ad1cdda626839f93608` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 13 | optimism | n/a | 14 deployments: optimism `0x1535ec8c7477d38066326189f5b1c695c2846479`; optimism `0x212f71bff67e5b7795952a916598c4b64ba48741`; optimism `0x24c95f333755bbedbae14b461770c9ec3f6e9d0d`; optimism `0x43667563725040febe9bf5164a38b7258105a210`; optimism `0x499b7cbd0f84318fee1edded7b5458f6f4500ab3`; optimism `0x68f51d2aeb485ca3a65a7ff54e9266dd5ea4c58b`; optimism `0x7e232aeed14446d427579b4f77251552b065df00`; optimism `0x8b24d44772a27030353bee0f252844602abbb0f1`; optimism `0x8d1c480bca1439ae5d5a81a75d53f9bf6ec513f1`; optimism `0xaf9707c1c3b513d36002f8d87bdbd10c8414b847`; optimism `0xbee2b73493f342b1abee4c747be6ad53e02c071e`; optimism `0xc36681303c7a41b045636af915486b22214b6292`; optimism `0xdedd02e7da507fe2ac09c509da10b94483e80aa5`; optimism `0xf78daf7a425098d255bd142d71bbdd8dcf43ee6c` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 20 | optimism | n/a | 20 deployments: optimism `0x15a065b0ab032541146fa3ca1cb382a22c94fe3f`; optimism `0x1b6a53991f257ac9dd1d0c061c37e1be36e0a8e6`; optimism `0x2b65ed2400025c48ee77b057b1c1a1fa7cd84dfb`; optimism `0x310b18daa9d351062c6d2ec0f0411d327206b4c3`; optimism `0x367f2dea1632ea767a5e968fefa4c0dd78dea853`; optimism `0x48a151421f9ea0e720e383df14ace1def15189b0`; optimism `0x57a2b0b2bb1e21fcb2df358fc832ae3f9f535b48`; optimism `0x62bdb9544a14dcd8804f7f2cc1479c82fb36c2a6`; optimism `0x7f3013aa21c784793ae6420140d0703aac1b76be`; optimism `0x8044de2e2dd22ac7ff18a4d7c9fff15f12b1569f`; optimism `0x87c7c885365700d157cd0f39a7803320fe86f0f5`; optimism `0xb556f4a5ad53bbe5c6b99c0e7ee9f58bd0feb971`; optimism `0xb8888ea29e2f70ad62a3b69b1a1342720612a00d`; optimism `0xccd64bf6afcd973dc2cb15314d9fc674f093c7d2`; optimism `0xcd0923149a125275d175deef2ee1982b2b095c91`; optimism `0xd3a3fbae792c4ed0aa909ec032d3f14c999b2402`; optimism `0xdf50c6111f45132a1db5ec48bdcd1e8e6c7ce65d`; optimism `0xe140e5def72fde807890d89ee4f987d316c25196`; optimism `0xe49d19c155a8658f5744ed336f18b7c086979c34`; optimism `0xff949c5dcc4f48130b3459dad15a793ab78b698a` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | polygon | n/a | 4 deployments: polygon `0x56c5b00bdeb3cb8adf745650599f9adef3c40275`; polygon `0x5aabe80f1d80842408da860384a05a85e9a64e98`; polygon `0xb76359a71843bcef4cc749f0f0cf1a2672f604ba`; polygon `0xe54e04fe47713fa99d9912ab08c7e72435a5d270` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x5780bb3a9f579dc181b5fe00d8f56224dd9e04a0`; polygon `0x67092ab1c3dac772ff15f823eb48cb63f087b691` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x969681d96549f7f124d3585ffeeb2c05cad4813f` | ⚠️ Unaudited |
| WithdrawHelper | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379776 | `0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3` | ⚠️ Unaudited |
| WrappedFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8b4f2f26077441aaa0a45f957436bc72b7cf74c2`; ethereum `0x99997ffe9ac2223921d8c6d06724cdd87093d662` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UpgradeableBeacon | registry | project_anchor | own_supporting | 0 | bsc | n/a | 27 deployments: ethereum `0x4cc1bbd85cf5980560eda5b24d77c75c1f5b9468`; ethereum `0x98e373368c3934dc220eee8645e62f6558687bc5`; ethereum `0xdf4975a3515168f8c446ad4a2e974b89c64b6a38`; ethereum `0xe42a4b42a72c870728afa874c3c9f60ed4909b72`; ethereum `0xe973cf1e347ecf26232a95dbcc862aa488b0351b`; ethereum `0xff0474792dee71935a0cef1306d93fc1dcf47bd9`; optimism `0xf6b2a73a63ef9223be94c26b0ee7767df8c83dd7`; bsc `0x00057dbd24e1264e9bf2d63dbe428234ebcf6c04`; bsc `0x6028dca5cfc1683061d531e344f5b685c37090c7`; bsc `0x68c0d8ca268f7376c775d2f9ceebdcbe6920f07a`; bsc `0x6aba59e0dc9ad51645b23cc1013fc03a908501b7`; bsc `0x902912e137ddc5f1c0c2a993880c4f68d18d2c75`; bsc `0xb4da34605c26ba152d465deb885889070105bb5f`; bsc `0xb6f7f65a5cc81b5da5e9ab58fb37cb174f4fb3ca`; bsc `0xe137aeed8783d04fba9c9df89aeccee81468ce58`; bsc `0xef770d34d89efe21fc7fb7391af8f23772c2037f`; unichain `0xc164893891d312876c8b0a59811db096f8a740cc`; base `0x82c0a11a404e693452a504ca98bdc87f2475067f`; base `0x998a52b3de47cea5c34b8595031c3ad05c6a0a55`; base `0xd7b40220cf9addf6a713f424a1f113c89cd6b283`; base `0xdf4975a3515168f8c446ad4a2e974b89c64b6a38`; base `0xe2641d52db59dbcad1c32fc8f0ef5edcf7733bb2`; plasma `0x9a49350f7f65b5ecd805f71d811d5fdf66293345`; arbitrum `0x28a9a4eb66d763ccd188a34b5aa6a6d7c83cf6cb`; arbitrum `0x75dd57f9cc6c32af9a319a2cae7b29234e8534e6`; arbitrum `0x9fe203d723c8d216179b3fdc2405aca0cd78ab6f`; arbitrum `0xf8bf2c6cadb9756b907e6dd2075f1a18bdb22a7e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (105)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379770 | `0x022a0c7dc85fc3ff81f9f8ef65ae2813a062f556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0432cdb20753a034d168d12935efc9ab7566f4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13fcef4b532ff776d9f80d1fc2673b41cef54662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e6d67f824c3a7b4329d3228807f8654294e4bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x196e740dcd7f6c9706c33b26be28adc38bfd1c6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379774 | `0x1cc0adff599f244f036a5c2425f646aef884149d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cf45654e28e8012cbc6c1a0e1011efaab6f4406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2482dbd16061b0cd4f44e807d44b32534b3cc924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29939b3b2ad83882174a50dfd80a3b6329c4a603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30496218ad394c677092dabf9ab1cf8406c588ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb789c1a07ecd23efbcd931cda75c9f6603409de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4ae05c8928d4850cdd0f800322108e6b1a8f3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf093f5d9e3fb3e8f96944c87491f38e026496ae5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-379790 | `0x413fc8e6f0b95d1f45de01b17e9441ec41ed01ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x79fc92afa1ce5476010644380156790d2fc52168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x586eb5528e518a7eeb571f1d2149360c249d8a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe2881693b6f203ad60d04fc283e17165b0f2a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc164893891d312876c8b0a59811db096f8a740cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc8989978668ad377369c0cc720192377a6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x4b6fee838b3dadd5f0846a9f2d74081de96e6f73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-379792 | `0xcc8989978668ad377369c0cc720192377a6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15ef18d77b7c7bfa6f224ad18107986a28acb4e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d68278999aff3490820d05e53fbe4a1855d54a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72155b4cea73b000973376cd10bd7607a236a6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d4a0231377a6ca320ff5f084b633a2e6b688107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x800c00f8c67dd089b86a542394b20598296740a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b24d44772a27030353bee0f252844602abbb0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce3be976c7c218c15553a4e258cf8734e64a7296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9c8106bdaf6c9330dbdc6f8d249cb4976979f83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-379793 | `0xfb4e25800b77bcd09227729ffcc145685797f408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x022a0c7dc85fc3ff81f9f8ef65ae2813a062f556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06419faacea3238244e71ababdc42b420a66f7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x122c7cb7038d22ea75ec45bf3de1c1a282f25fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d0c4451311a70379c59a00830e816f4cf5c6916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1dddec1ce817bc771b6339e9de97ae81b3be0da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b1ff675dfaed19edd185ac5cdc699095eb9e3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3025b46a9814a69eaf8699edf905784ee22c3abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32c75a999b210e2f7d4987b4e10bcd639902d4d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6aba59e0dc9ad51645b23cc1013fc03a908501b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x741d420ee761fd4bd0b4573c916e30950c87e639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ca74d9480f48624827c7951bb0d69c4e070dd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x836553bb6cbd35760dee7c9af2ab3d891bd7091a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379813 | `0x8dd906ecf9d434a3fbf2d60a14fbf73d14d4ea6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fdbe9c9e12b329bcf148b41bc75b018271f539d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379814 | `0x97d42db1b71b1c9a811a73ce3505ac00f9f6e5fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2ecdabb771b0bb880c5cf56aba9ca3fd9b99f26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-379815 | `0xa8098da01acb87c85f8e0094ff23213394150785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb789c1a07ecd23efbcd931cda75c9f6603409de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc13a67d7fd0f21eac6e98c4229c109fea425bb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc8989978668ad377369c0cc720192377a6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd8f3561260ffeb5a7690de216f8fc4a061518e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4db6ea3a076ad4cb1795c6517da4bb60fd507f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf23d83da92844c53ad57e6031c231dc93ec4ee80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9b9563a609ba838d5dbcfdcffa83dcebb6621e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x010e088ccde7b73ddcb12771b2100db5a2c7dde9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01e595a0c23432340013d4c7dd4507cbd8e104cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04da2c24552f7a4c395950e47c78b40dc7301355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e4697d331b0f4fb74c6c9ffb8f931bc16b37ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f62fc1627694a25b5a1ec7f92f5fd56a9657e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1548783b909c503a77a2043d46f0dee82504ec38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21e7bde4245679016d567d6cd301c3d6dd2b70b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x248d28ab0d26ddf10cd99b394ed387fd973dbe11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x312c5b27079a401c370ef24c3d17a4e7585106a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x379db4002a8a3058526347b313435c921cab2390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38b413bbfc270c05ba0b905bfd518a0e709101f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4294bb262580516386d28095d620052d3a093cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x450489bb44f976ee26028d63349f0510dc54c6e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ab3e1a51c2099cd22c884a97ed1156a97318e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b4b51c39e38f492880cb429c40d0fa06c9b7af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b6fee838b3dadd5f0846a9f2d74081de96e6f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52637fb1517b7e27a98f6c09175dcc6487e4ca9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6028dca5cfc1683061d531e344f5b685c37090c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d5d34fdc5c0348e68689e21f9303798ac24f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64865e4656660fc6fc2839998d8946e4701479ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64905533304b0ec6d7675d6c783c2865c3532842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fea642e7432201ad2c3efeb412abf6cfc600030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7285b2fe1248212a64afbb3b75c67988a76d27fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89255bc2810d650dd9a08fb5f9f0c9fdf29825dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b4f2f26077441aaa0a45f957436bc72b7cf74c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ef4d048e6d7f8cc3b6a929c2979f15cde2dd04d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x902912e137ddc5f1c0c2a993880c4f68d18d2c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a49350f7f65b5ecd805f71d811d5fdf66293345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b9563a609ba838d5dbcfdcffa83dcebb6621e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0e897f4468e8ebf284d3cd65d7371c1267baef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb259bc9a2909b7f0f419d6f45ef84e11c819c565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbeb59fe03e6057cedfd7b5b4d8fdda61975add2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0b7fac163566a768b4f30d06fd4b08bb6b987f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5a947a66a15205ed9cd02c3be24cdf5c1d10183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc8989978668ad377369c0cc720192377a6006e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3db920d1403a5438a50d73f375b0dff5a6df9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd668a65c796892c9873a2bab1857e7c6f1410637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda4d62149c778984524914de9ca062e866261459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdce48a729f379ed69f7399cdce8d53f9d500819f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddfdfd108c2cd5abe941aab129feca1c6fdae0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde6b495586e8fc5abe420da42f66aee59d66766c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe19ae7e26993bb13d17a2ad7074ad31bc2ce72ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379796 | `0xe1a76410dfb11d6c60a43838fa853519f13deef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe25f763fa58de798af2e454e916f527cdd17e885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4db6ea3a076ad4cb1795c6517da4bb60fd507f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe891b9500391a94ae1888d951cbc5cf5283aff82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4e0671a76b1715744a259a0fa0c561eb89e3340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5488214f5deb15d0964a2593d7e94a4d74e1151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb8c9a0c3f0fa1b05225ecaa4ea4d135c236b8d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-379802 | `0xcc8989978668ad377369c0cc720192377a6006e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379791 | `0xc0b7fac163566a768b4f30d06fd4b08bb6b987f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Arrakis_Audit_Report_Sherlock.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [Arrakis_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/Arrakis_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [REP-Gelato-UNI-2021-07-22.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/REP-Gelato-UNI-2021-07-22.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [WatchPug Audit Report for Gelato G-UNI.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/WatchPug%20Audit%20Report%20for%20Gelato%20G-UNI.pdf) | WatchPug | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Arrakis_Audit_Report.pdf](https://github.com/ArrakisFinance/v2-manager-templates/blob/main/audit/Arrakis_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Chainsecurity Audit Report December 21.pdf](https://github.com/ArrakisFinance/staking-contracts/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5488] Arrakis_Audit_Report_Sherlock.pdf — no match: No reason recorded
- [5489] Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf — no match: No reason recorded
- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf — no match: Extracted contract names from findings and file paths. Audit date from delivery date.
- [5493] REP-Gelato-UNI-2021-07-22.pdf — no match: No reason recorded
- [5494] WatchPug Audit Report for Gelato G-UNI.pdf — no match: No reason recorded
- [5495] Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf — no match: No reason recorded
- [5497] Arrakis_Audit_Report.pdf — no match: No reason recorded
- [5500] Chainsecurity Audit Report December 21.pdf — no match: Extracted 7 contracts from the scope table in section 2.1. Audit date from cover page and final version date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | ChainlinkOraclePivot | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | SimpleManager | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report_Sherlock.pdf | Underlying | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2FactoryStorage | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Resolver | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | FullMath | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IManagerProxyV2 | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | ITransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IUniswapV3Factory | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | IUniswapV3Pool | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | Position | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | PositionHelper | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | SafeCast | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | TickMath | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | Underlying | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | UnderlyingHelper | unmatched — not counted | — | — | no |
| Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf | UniswapV3Amounts | unmatched — not counted | — | — | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IArrakisVaultV1 | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IUniswapV3Pool | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | IArrakisV1RouterStaking | unmatched — not counted | — | mentioned as unused import in AR-N1 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | ArrakisVaultV1 | unmatched — not counted | — | mentioned in AR-N1, AR-N2 | no |
| Arrakis_Finance_Audit_Report_by_WatchPug.pdf | ArrakisVaultV1Storage | unmatched — not counted | — | mentioned in AR-N3, AR-N4 | no |
| REP-Gelato-UNI-2021-07-22.pdf | EIP173Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | EIP173ProxyWithReceive | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | FullMath | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniFactory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniFactoryStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniPool | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | GUniPoolStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Gelatofied | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IEIP173Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IGUniFactory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IGUniPoolStorage | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | IUniswapV3Factory | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | LiquidityAmounts | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | OwnableUninitialized | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Proxied | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | Proxy | unmatched — not counted | — | — | no |
| REP-Gelato-UNI-2021-07-22.pdf | TickMath | unmatched — not counted | — | — | no |
| WatchPug Audit Report for Gelato G-UNI.pdf | GUniFactory | unmatched — not counted | — | — | no |
| WatchPug Audit Report for Gelato G-UNI.pdf | GUniPool | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | FTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | IPALMManager | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | IPALMTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMManager | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMManagerStorage | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMTerms | unmatched — not counted | — | — | no |
| Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf | PALMTermsStorage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2 | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2Router | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ArrakisV2Storage | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | ChainlinkOraclePivot | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | SimpleManager | unmatched — not counted | — | — | no |
| Arrakis_Audit_Report.pdf | Underlying | unmatched — not counted | — | — | no |
| Chainsecurity Audit Report December 21.pdf | BaseSurplusConverter | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterSanTokens | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV2Sushi | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | SurplusConverterUniV3 | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | PoolManager | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | AngleDistributor | unmatched — not counted | — | listed in scope table | no |
| Chainsecurity Audit Report December 21.pdf | LiquidityGaugeV4 | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x0e4afbdab305206465ee48f7766da185157d417e` | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd9e51fe9f8e0e1a21b444414a89bd8c7ddadefd1` | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x06baae482698c8995f7b59f51e3ba021bf7434ee` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1a52733e4f0af7d01d0927f8d5c45e673b0c33aa` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe7d57e70f7615eda3d3f3a998f316d303a2b2f43` | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x820fb8127a689327c863de8433278d6181123982` | ArrakisMetaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72aa2c8e6b14f30131081401fa999fc964a66041` | ArrakisPublicVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xade65c38cd4849adba595a4323a8c7ddfe89716a` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf8f2eb4940cfe7d13603dddd87f123820fc061ef` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f441151b478e0d60588f221f1a35bcc3f7ab981` | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61407b9b63956cfb61341aafefbd7eda1f9b962` | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe278c1944ba3321c1079abf94961e9ff1127a265` | ModulePrivateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x791d75f87a701c3f7dffcec1b6094db22c779603` | ModulePublicRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11` | PancakeSwapV3StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x700a1cda1495c1b34c4962e9742a8a8832aac03a` | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44a801e7e2e073bd8bce4bccf653239fa156b762` | PrivateVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6` | RouterSwapExecutor | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6c53369c36d6b4f4a6c195441fe2d33149fb265` | RouterSwapResolver | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x04ead25447f9371c5c1e2c33645f32aafeb337dc` | UniV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3` | WithdrawHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 88 |
| upstream | 18 |
| standard_library | 30 |
| needs_review | 114 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 69 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [5488] Arrakis_Audit_Report_Sherlock.pdf
- [5489] Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf
- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf
- [5493] REP-Gelato-UNI-2021-07-22.pdf
- [5494] WatchPug Audit Report for Gelato G-UNI.pdf
- [5495] Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf
- [5497] Arrakis_Audit_Report.pdf
- [5500] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
