# Agentic Audit Brief: Origami Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 27 across 11 audit(s)
- Eligible audit results: 27 (11 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Origami Finance (`origami-finance`)
- Website: [https://origami.finance](https://origami.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, berachain, ethereum, plasma
- Contract surface: 267 unique implementations (267 raw deployments)
- Coverage basis: 11/18 confirmed own live verified implementations (61.1%); conservative 61.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $183,832,403.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Origami Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across arbitrum, berachain, ethereum. Structural roles: 24 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (24)
- Contract kinds: contract (24)
- Detected standards: erc165 (5), erc20 (4), erc20permit (4), multicall (2), erc4626 (1), pausable (1)
- Frameworks: openzeppelin (21), prb-math (13), layerzero (4), aave (2), chainlink (2), openzeppelin-upgradeable (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 110 contracts are derived from known codebases. 110 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4`, chain 1)
- UnnamedContract (`0x117b36e79adadd8ea81fbc53bfc9cd33270d845d`, chain 1)
- UnnamedContract (`0x180f4d73ca3effdaa0f582fd42d9588d14118129`, chain 1)
- UnnamedContract (`0x235e2afeaa56497436987e87bb475d04befc1394`, chain 1)
- UnnamedContract (`0x26df9465964c2cef869281c09a10f7dd7b1321a7`, chain 1)
- UnnamedContract (`0x2ec7777838a49e2c83152d455b3ca753c6d08b79`, chain 1)
- UnnamedContract (`0x2f80ee76e44047e3cbb40fc4c0cc2f7f04fa1709`, chain 1)
- UnnamedContract (`0x3963d8d2d7ac114573c1184f4036d9a12fbdefe6`, chain 1)
- UnnamedContract (`0x42cd294ab9c4abc787109564e9cdb3ec73f5d342`, chain 1)
- UnnamedContract (`0x43947fe908c9c1f9f64857c2429bf2bb1dd0d111`, chain 1)
- UnnamedContract (`0x4e568666ded61d6077eff8979733cee4610a5ea2`, chain 1)
- UnnamedContract (`0x5383bfabbfcf670ceac0c7cad0e5e0a141b23b79`, chain 1)
- UnnamedContract (`0x550433c439f92c2f8068b375d8a4ec8d2dc98299`, chain 1)
- UnnamedContract (`0x68011ef7e1334c917d644abb820df8ff8c361925`, chain 1)
- UnnamedContract (`0x71520ce2db377afa999bc6fdc1af896b21b2f26a`, chain 1)
- UnnamedContract (`0x76cf788606f3d968b93b8a243d0e185c974ee407`, chain 1)
- UnnamedContract (`0x78f3108a8ddf0faae25862d4008de3adf129a8e6`, chain 1)
- UnnamedContract (`0x7d7609bf7c3a3c91d524c718fcbfd93398c76603`, chain 1)
- UnnamedContract (`0x7fc862a47bbcde3812ca772ae851d0a9d1619eda`, chain 1)
- UnnamedContract (`0x9c1f7237480c030cb14375ff6b650606248a5247`, chain 1)
- UnnamedContract (`0x9fa6d162e32a08b323adeae2560f0e44d6dbe53c`, chain 1)
- UnnamedContract (`0xaedddb1e7be3b22f328456479eb8321e3eff212e`, chain 1)
- UnnamedContract (`0xb26631bc6afd6483ac4fdcd5f943e8a788352d96`, chain 1)
- UnnamedContract (`0xb48ac9c5585e5f3c88c63cf9bcbaedc921f76df2`, chain 1)
- UnnamedContract (`0xb9dad3693aeac9025cb24a47afa6930539877187`, chain 1)
- UnnamedContract (`0xbfa722c4fdf41632a8648c5f1ae129242b1a9ce6`, chain 1)
- UnnamedContract (`0xc03c434d8430d27bb16f07658be4352bead17ea5`, chain 1)
- UnnamedContract (`0xc1a2499ffb03ae462242890cb852cc80cb0203cd`, chain 1)
- UnnamedContract (`0xc242487172641eef13626c2c426cb3d41bebc6de`, chain 1)
- UnnamedContract (`0xc65a88a7b7752873a3106bd864bbcd717e35d2e5`, chain 1)
- UnnamedContract (`0xc8a26a2ddc176e02a8fd67cb3c8548aa6c8be32c`, chain 1)
- UnnamedContract (`0xc9632e9cbdee643bc490572dd0750ea394e8e3a9`, chain 1)
- UnnamedContract (`0xe488a643e4b0aaae60e4bdc02045a10d8a323bae`, chain 1)
- UnnamedContract (`0xe567dcf433f97d787df2359bdbf95dfd2b7abf4e`, chain 1)
- UnnamedContract (`0xe6b1f872b1073408a1e619319718e0bce3e48f17`, chain 1)
- UnnamedContract (`0xed95cf020ece657a10793488622ed2f837f1e83c`, chain 1)
- UnnamedContract (`0xefc8edaa7cfd0cf272a0f55de37d62f0adfb7e93`, chain 1)
- UnnamedContract (`0xf7ed9c033f6bf5f9775d4850170db898d0d28cdc`, chain 1)
- UnnamedContract (`0xf919e7a09d6c9dc2db9c3ddd9c667ed5949c322c`, chain 1)
- UnnamedContract (`0x081eb2ea78bd774ff6b8216dd0362df01ae9e7e4`, chain 80094)
- UnnamedContract (`0x0a377e7e3a186f15f24314941b33e0e55ce68b30`, chain 80094)
- UnnamedContract (`0x0f678e24977ff6b2f0992939b0e66d60557ae111`, chain 80094)
- UnnamedContract (`0x252cb44075a48526a77ccfdabcd1fccc94486384`, chain 80094)
- UnnamedContract (`0x294d884acef3d10919dfc707892de6744fce242b`, chain 80094)
- UnnamedContract (`0x2a66de46a705fb5402eafae960c1ca5780110b21`, chain 80094)
- UnnamedContract (`0x3190eefb845fb739293979b2011d02dd7f247b89`, chain 80094)
- UnnamedContract (`0x32bc5e87297e148f70867005ffdc91a9022fc1f6`, chain 80094)
- UnnamedContract (`0x345c3132537647e1e2ae7dcede5f8ff4d437539d`, chain 80094)
- UnnamedContract (`0x3ed86a8b5896be7cccb1acddd785283317af9896`, chain 80094)
- UnnamedContract (`0x50c10fce5c1505ccab903c7acaee4ca1cf727e91`, chain 80094)
- UnnamedContract (`0x537486ca867e94ae663a5e2da22a8b3549ff796f`, chain 80094)
- UnnamedContract (`0x564f0f3ceaf24951ae03a4c8cac8279bd5561999`, chain 80094)
- UnnamedContract (`0x68233f4fd964f90b6026c84a13502902a0e40823`, chain 80094)
- UnnamedContract (`0x6834ff9941fbac16fc14f0b0e6d9829f39c545e6`, chain 80094)
- UnnamedContract (`0x69f1e971257419b1e9c405a553f252c64a29a30a`, chain 80094)
- UnnamedContract (`0x6a3be03028bb8385501df3b25d576c9eb1ed9207`, chain 80094)
- UnnamedContract (`0x7a1bb5e9b7d93229df66bffe97e2854859e03afc`, chain 80094)
- UnnamedContract (`0x7c6e5c5568647b0b90f9f962fcdffc771d7f44c5`, chain 80094)
- UnnamedContract (`0x85714257145747c2182f28212369a1cffe997207`, chain 80094)
- UnnamedContract (`0x87ec883c2a5a539f4397c981ef6ada219bd65237`, chain 80094)
- UnnamedContract (`0x8b21aa57cf09ee46045047b92c82191ec982e305`, chain 80094)
- UnnamedContract (`0x8e008401d7d4788c05a4a746e531b65cf2f5602b`, chain 80094)
- UnnamedContract (`0x90b724e3ab595d1e67ba5660afbb836c0ecec557`, chain 80094)
- UnnamedContract (`0x9e5cbed606d4c4e0c13ee6c94113a9852adf2aa4`, chain 80094)
- UnnamedContract (`0xa109af0f5dfd05b461e14f9ad3ac5a0630c6dd1a`, chain 80094)
- UnnamedContract (`0xa128a16b33d14bb6adc10fce96f56034cfdc5b58`, chain 80094)
- UnnamedContract (`0xa16335f2057c7992931188e9f1e7131b58bab9c2`, chain 80094)
- UnnamedContract (`0xa777152b42d417c27e0cc257944a5bfd5fdccc69`, chain 80094)
- UnnamedContract (`0xaa784efe92a11efa0c14a407d5c6fe230a124387`, chain 80094)
- UnnamedContract (`0xab35a4e4e120b2784d50103fcffc1f3322974ec4`, chain 80094)
- UnnamedContract (`0xb1952ddff59748248cc1c96bf25379eab8d23fb3`, chain 80094)
- UnnamedContract (`0xb9234c17bdf785a8f30f56cd59870fe7c7fef0e1`, chain 80094)
- UnnamedContract (`0xb9c3dc11c11a3862f1cdece2e2fecf46042ec384`, chain 80094)
- UnnamedContract (`0xbd2f1169ec39c240f1a2cbdf9a86b7a5d31afb92`, chain 80094)
- UnnamedContract (`0xbd884d23bac3157ed8d8e79ec6e469f53296d263`, chain 80094)
- UnnamedContract (`0xc6a91dcee8034929a185cb9c578aed07216cac7b`, chain 80094)
- UnnamedContract (`0xcdb967979ab407427c81ec2b0263fd7856f872c8`, chain 80094)
- UnnamedContract (`0xd6d5c6a7a4705c001e515255c6cac23b09edb3bc`, chain 80094)
- UnnamedContract (`0xd7f54c425f64b6cd87b6b39b0a53487bcafffb0c`, chain 80094)
- UnnamedContract (`0xd88dedb9cec3ffa6f3d21e09ab0109f4a4ce3beb`, chain 80094)
- UnnamedContract (`0xd8c27d265b90250f1a20625bd3b0608b1d86e1b9`, chain 80094)
- UnnamedContract (`0xdb15910600700f776ef615dd0906216cc4a7b754`, chain 80094)
- UnnamedContract (`0xdfd2514848c012f0f09c6db33114cedb24af9a60`, chain 80094)
- UnnamedContract (`0xe14182abc1b9d5e78a65a0150e0e2dbeff86d24c`, chain 80094)
- UnnamedContract (`0xe38695b3bd1a4881b5551d998e81238ecb103521`, chain 80094)
- UnnamedContract (`0xe3a2159aafad831b10c1fec9662f407b4ffe7b78`, chain 80094)
- UnnamedContract (`0xe49bc7d8ff2a5b7157c8ea9e2bdfcd18342288fa`, chain 80094)
- UnnamedContract (`0xe7c153b0f3f1f77d155a9df9a0c3043464243a53`, chain 80094)
- UnnamedContract (`0xe8bd0423396ebc16856766da1b0f2865faf3a671`, chain 80094)
- UnnamedContract (`0xee67961a739abff7b48208ab2dcd02f090ac4b72`, chain 80094)
- UnnamedContract (`0xf47aa2517ff9ece0e1df39a893cc238d363bed40`, chain 80094)
- UnnamedContract (`0xfcb6c2a149da114fd3f3d0fdf3f4935840b0df8a`, chain 80094)
- GnosisSafe (`0x781b4c57100738095222bd92d37b07ed034ab696`, chain 1)
- OrigamiAaveV3BorrowAndLend (`0x2432b4767c6c3b4b5cff16acea8f51c013dbb678`, chain 1)
- OrigamiAaveV3FlashLoanProvider (`0x88469316c5f828b4dfd11c4d8529cd9f96b2e006`, chain 1)
- OrigamiAutoStakingToErc4626 (`0x1a0730d90a253ded0177e5a1dbcfd169c5e3f67f`, chain 80094)
- OrigamiCoolerMigrator (`0x6b3441b121cadba4af1e92e9dd9ed3c0aa415e26`, chain 1)
- OrigamiDelegated4626Vault (`0x07c5500359161b81eb0dfff83097d5025d3cf5a2`, chain 1)
- OrigamiDexAggregatorSwapper (`0x5bf1030503107db67c3047a4f05439bcfbb40234`, chain 1)
- OrigamiHOhmManager (`0xe6c5dc8508939b1c417f83b7fed3149ef22cf3ff`, chain 1)
- OrigamiHOhmVault (`0x1db1591540d7a6062be0837ca3c808add28844f6`, chain 1)
- OrigamiInfraredVaultManager (`0x05d3461514e769f657ffe71233d6fc2546457b79`, chain 80094)
- OrigamiLovToken (`0x0059fd16bc019ffe788d37807533edcf4df06c06`, chain 80094)
- OrigamiLovTokenMorphoManager (`0x051dc89b797652ce8e19a9004d10a74eaabb1ec3`, chain 1)
- OrigamiLovTokenMorphoManagerMarketAL (`0x71578e532f30983af51981deeda0a7bba88da22a`, chain 1)
- OrigamiMorphoBorrowAndLend (`0x03401161fc7785c86ee5cd96560711a677533e3b`, chain 1)
- OrigamiSuperSkyManager (`0xc522335fbfe21d7a7d1135eb0e016a89da49dc9e`, chain 1)
- OrigamiSwapperWithCallback (`0x23d774c4d42ead21c345f75af59325903f8c80db`, chain 80094)
- OrigamiSwapperWithLiquidityManagement (`0x1511adab8b8cd255deb6b344751297277c7ceb47`, chain 80094)
- OrigamiTokenTeleporter (`0xce39906a35de2ac81f0fd0ebd18fd3f04383932a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 24; live-surface rows included: 24 (18 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 110/155 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/18 (61.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 110 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 141 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 110 of 267 unique; 157 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/70
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 197
- Unique implementations: 267
- Raw deployments: 267
- Audits discovered: 27 (27 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 5 fresh, 17 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Panprog | Tier 2 | 6 | 8.6% | 2025-12 |
| Electisec | Tier 2 | 5 | 7.1% | 2025-07 |
| Jacopod | Tier 2 | 5 | 7.1% | 2026-02 |
| Nethermind | Tier 2 | 4 | 5.7% | 2025-12 |
| Pyro | Tier 2 | 3 | 4.3% | 2025-03 |
| Zellic | Tier 2 | 1 | 1.4% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrigamiAutoStakingToErc4626 | unknown | project_anchor | own_supporting | 0 | berachain | unit-390599 | `0x1a0730d90a253ded0177e5a1dbcfd169c5e3f67f` | ✅ Audited |
| OrigamiCoolerMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390540 | `0x6b3441b121cadba4af1e92e9dd9ed3c0aa415e26` | ✅ Audited |
| OrigamiDelegated4626Vault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390514 | `0x07c5500359161b81eb0dfff83097d5025d3cf5a2` | ✅ Audited |
| OrigamiHOhmManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390575 | `0xe6c5dc8508939b1c417f83b7fed3149ef22cf3ff` | ✅ Audited |
| OrigamiHOhmVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390520 | `0x1db1591540d7a6062be0837ca3c808add28844f6` | ✅ Audited |
| OrigamiInfraredVaultManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-390594 | `0x05d3461514e769f657ffe71233d6fc2546457b79` | ✅ Audited |
| OrigamiLovToken | unknown | project_anchor | own_supporting | 0 | berachain | unit-390593 | `0x0059fd16bc019ffe788d37807533edcf4df06c06` | ✅ Audited |
| OrigamiLovTokenMorphoManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390513 | `0x051dc89b797652ce8e19a9004d10a74eaabb1ec3` | ✅ Audited |
| OrigamiSuperSkyManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390563 | `0xc522335fbfe21d7a7d1135eb0e016a89da49dc9e` | ✅ Audited |
| OrigamiSwapperWithCallback | unknown | project_anchor | own_supporting | 0 | berachain | unit-390600 | `0x23d774c4d42ead21c345f75af59325903f8c80db` | ✅ Audited |
| OrigamiTokenTeleporter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390569 | `0xce39906a35de2ac81f0fd0ebd18fd3f04383932a` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EzEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ca3c47b1bea4ad7cfd187a522be0f1bfc8652b` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390665 | `0x781b4c57100738095222bd92d37b07ed034ab696` | ⚠️ Unaudited |
| HATVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x998f1b716a5022be026ca6b919c0ddf45ca31abd` | ⚠️ Unaudited |
| OpalAdapterEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8584c96dd161f4a24084668c0f333dfb093d02e` | ⚠️ Unaudited |
| OpalAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cecff54fe6042b05d6959cb20bb7241d802c98d` | ⚠️ Unaudited |
| OpalAdapterSpotAssets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964dd67d903f3927cce5a0ae2f6ebf71ce0dc8e4` | ⚠️ Unaudited |
| OpalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7daf45b580c456c5b4d7366ebd6aab4f0876aa15` | ⚠️ Unaudited |
| OpalPeriphery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430b37b560c12dc591a17aea3c2e985fce88f3cc` | ⚠️ Unaudited |
| OpalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3f4ed11cb5f4c3f08c91c5593cbbcd63fa8b23` | ⚠️ Unaudited |
| OrigamiAaveV3BorrowAndLend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390522 | `0x2432b4767c6c3b4b5cff16acea8f51c013dbb678` | ⚠️ Unaudited |
| OrigamiAaveV3FlashLoanProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390551 | `0x88469316c5f828b4dfd11c4d8529cd9f96b2e006` | ⚠️ Unaudited |
| OrigamiAutoStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc3d19ac9b79a8d89272a7ef88ddc1786fe36d747` | ⚠️ Unaudited |
| OrigamiAutoStakingToErc4626Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5a1e918371e5ec307aa93dda67d500b0e49a2423` | ⚠️ Unaudited |
| OrigamiBorrowLendMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x381d5bdbfb9cdf5d04a29ec6d035fdadbb98b978` | ⚠️ Unaudited |
| OrigamiBoycoUsdcManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcb6d80ac3209626d5bc6cb9291ef6c4c321c82ba` | ⚠️ Unaudited |
| OrigamiBoycoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4` | ⚠️ Unaudited |
| OrigamiBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x346497a2471d39382cc9fda16ee94bec8d3ccb33` | ⚠️ Unaudited |
| OrigamiBundlerPluginEntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x652400eef027e4c8ccae4425b2949ae7773ca1ea` | ⚠️ Unaudited |
| OrigamiBundlerPluginKyberSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759238fb254950d7743f5dab44714c74634e3edd` | ⚠️ Unaudited |
| OrigamiBundlerPluginOhmStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6fe436e0117346b4b014ff4f960e5158a27470` | ⚠️ Unaudited |
| OrigamiBundlerPluginTbsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8ac5953e2b22f8bd4c88219179aee9386d3dd2c` | ⚠️ Unaudited |
| OrigamiBundlerPluginTbsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4c97ebbae7a61b8647fde086b01c3bc1605c15d` | ⚠️ Unaudited |
| OrigamiCowSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b7346b763286b1a975619e13e024eeaffe178f` | ⚠️ Unaudited |
| OrigamiCrossRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075766cb4efcff684feca227c80546f30b8de783` | ⚠️ Unaudited |
| OrigamiDelegated4626VaultDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29648c897ae6fe3858a1181622a39046828c129a` | ⚠️ Unaudited |
| OrigamiDexAggregatorSwapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390538 | `0x5bf1030503107db67c3047a4f05439bcfbb40234` | ⚠️ Unaudited |
| OrigamiErc4626AndDexAggregatorSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302563254a72b59d71dd5bc209e1e91b7a84e262` | ⚠️ Unaudited |
| OrigamiErc4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d162073ba8545154f2e6ef5b73ab0d2b4968955` | ⚠️ Unaudited |
| OrigamiErc4626WithRewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9224f1d852001ba32befdf665543280185eb08c` | ⚠️ Unaudited |
| OrigamiEtherFiEthToEthOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390571 | `0xe0db69920e90ca56e29f71b7f566655de923c32b` | ⚠️ Unaudited |
| OrigamiEulerV2BorrowAndLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x01e52c80eb4f6ba07fa0f61dc80799aabbee0ee2` | ⚠️ Unaudited |
| OrigamiFixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x18a9000d8b947ea3005e61e8baaadaeaea7cceab` | ⚠️ Unaudited |
| OrigamiGlpInvestment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5` | ⚠️ Unaudited |
| OrigamiGmxEarnAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4` | ⚠️ Unaudited |
| OrigamiGmxInvestment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0348ea0fd56f994c93c9ebdf9f2c95e3b5c8824a` | ⚠️ Unaudited |
| OrigamiGmxManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390582 | `0x58833508c3d057fe8901a7a2d89ceccb3449ac24` | ⚠️ Unaudited |
| OrigamiGmxRewardsAggregator | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390583 | `0x643d715a0697c56629a25ec33c9bf5990d08317f` | ⚠️ Unaudited |
| OrigamiHOhmArbBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x593e68eee095326fc2e406709aceb6721ca2330f` | ⚠️ Unaudited |
| OrigamiInfraredVaultManagerDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4a3c19a6f14a112b908f5017b9931c9cad44e7d1` | ⚠️ Unaudited |
| OrigamiInfraredVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2ec7777838a49e2c83152d455b3ca753c6d08b79` | ⚠️ Unaudited |
| OrigamiInvestmentVault | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390586 | `0x7fc862a47bbcde3812ca772ae851d0a9d1619eda` | ⚠️ Unaudited |
| OrigamiLanternOffering | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x727d8fa99d82ed6ce2cf458239d7e22ce88cf3e3` | ⚠️ Unaudited |
| OrigamiLovTokenFlashAndBorrowManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013c5194b3548b1a9d460d6f80bd8d214bac13e2` | ⚠️ Unaudited |
| OrigamiLovTokenMorphoManagerMarketAL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390543 | `0x71578e532f30983af51981deeda0a7bba88da22a` | ⚠️ Unaudited |
| OrigamiMorphoBorrowAndLend | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390511 | `0x03401161fc7785c86ee5cd96560711a677533e3b` | ⚠️ Unaudited |
| OrigamiOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5bad2b7a0a2eee88a4ef05d5470cdedb0ff948ea` | ⚠️ Unaudited |
| OrigamiScaledOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736fdf61d94287ff54266a4027423950c2404cad` | ⚠️ Unaudited |
| OrigamiStableChainlinkOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390519 | `0x1b184454e6c02370927789a3564f9d16368d55e4` | ⚠️ Unaudited |
| OrigamiSuperSavingsUsdsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05654ff0cb3635fa5de00cc11607dbf203435c13` | ⚠️ Unaudited |
| OrigamiSuperSavingsUsdsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f90a6962e86b5587b4c11ba2b9697dc3ba84800` | ⚠️ Unaudited |
| OrigamiSwapperWithLiquidityManagement | unknown | project_anchor | own_supporting | 0 | berachain | unit-390598 | `0x1511adab8b8cd255deb6b344751297277c7ceb47` | ⚠️ Unaudited |
| OrigamiTokenRecovery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cbb5862c662cbdf6d24df2d434c25dcf2534ef6` | ⚠️ Unaudited |
| OrigamiWstEthToEthOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390524 | `0x2848d944eab78c3abf02c89ff97f1652a0fbad77` | ⚠️ Unaudited |
| RsEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac9fc6917c067f763eda63f569e0c6a7dbbcd80` | ⚠️ Unaudited |
| RswEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b18e668ce6326760e3b063f72684fdf2a2d582` | ⚠️ Unaudited |
| SwEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88154f69959e6c2d1a453ab60cec15a8965d06e3` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85a6026bc75a11b77a3a0584aa33ecd98c40bdfb` | ⚠️ Unaudited |
| TokenPrices | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5` | ⚠️ Unaudited |
| WeEthToEthExchangeRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4270e1817576bba4b640466be79a408ef128f828` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (197)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390515 | `0x0b53afe5de9f9df65c3fe8a9da81dc410d14d4d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390517 | `0x117b36e79adadd8ea81fbc53bfc9cd33270d845d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1592ec59f5362d9a095c322de2c3cdab1c9b9c66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390518 | `0x180f4d73ca3effdaa0f582fd42d9588d14118129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390521 | `0x235e2afeaa56497436987e87bb475d04befc1394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24d43755ce2a59c6b31eafd9424f1661ea968dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25dd72cc1de50e963948e464c09aeba0d9312349` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390523 | `0x26df9465964c2cef869281c09a10f7dd7b1321a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390525 | `0x2ec7777838a49e2c83152d455b3ca753c6d08b79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390526 | `0x2f80ee76e44047e3cbb40fc4c0cc2f7f04fa1709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c1556658d928c32393a32d8a375d7dfb1e4c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38898cc445e0a2cd73c557a553aedf9856249911` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390528 | `0x3963d8d2d7ac114573c1184f4036d9a12fbdefe6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390529 | `0x39cfdbefe1e7ccf0665675a3c3f6469b61dd32f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd780f4a4314d3dac3e2a0be9621f5a15d3ea25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x412f3daca3150fb10b5e61ac9cebd63accdd7139` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390531 | `0x42cd294ab9c4abc787109564e9cdb3ec73f5d342` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390532 | `0x43947fe908c9c1f9f64857c2429bf2bb1dd0d111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a3cb2cf5ea2331174c166214302f0c3bba6a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4731a689c5d85130125db32925a176db28c0972e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489dd7f6f57df08871d195e78a0f0e295cf97ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a8fa332276d2ce3fc948d6a680458c18e5c88a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adf07bc012152386f9c73386b16d9c52df1c703` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390534 | `0x4e568666ded61d6077eff8979733cee4610a5ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d67bf47e700dcc4f3d79827fb1369528c48930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390535 | `0x5383bfabbfcf670ceac0c7cad0e5e0a141b23b79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390536 | `0x550433c439f92c2f8068b375d8a4ec8d2dc98299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f84cd659c0c1a6bc225f5ce9016ad591b49ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca7539f4a3d0e5006523c1380898898457e927f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6477cef63d7ccde3f300b2b22d9a4385726be453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65792959dd27e4ee6bdb3a1af6d38592bdb0e81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6616220556c55fcf26f735188ac75c189cdd5241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x669b05610852f5d0fba3920bb8ad4c4c5c3c3d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678728ae869e76c6b1db6fbdcb5e09414e0479bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390539 | `0x68011ef7e1334c917d644abb820df8ff8c361925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x690939cf345793bd7950915f84adbd1aebcfa9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be99363007c0a8be628625476fc5e602b66c2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d74d646d9f1c606e972ce17714c6b4eec5897a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706e9b38fd6dd48abf1445cc3cff2202977bfb45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390542 | `0x71520ce2db377afa999bc6fdc1af896b21b2f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73dca51d16711dbe50212c50e80675b60cadb184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76bb10fa166a53941634ed26f5da0e129cc3433c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390544 | `0x76cf788606f3d968b93b8a243d0e185c974ee407` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-390546 | `0x784f75c39bd7d3ebc377e64991e99178341c831d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390547 | `0x78f3108a8ddf0faae25862d4008de3adf129a8e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390548 | `0x7d7609bf7c3a3c91d524c718fcbfd93398c76603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ed9e2165e74b1cdf3a70aac8742d8e20c963e37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390549 | `0x7fc862a47bbcde3812ca772ae851d0a9d1619eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80b921c724202969295dcf2da2b36e9f052315b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858f4e107eb24fc9f1d2dc0f043265e677c89f3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ce9ef90d7d6ad6cfe64143da396e15043f0e097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x943f1e9de4508e9eb6863a10697b26d3678a2a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958f41534eacb80cdc5160be619bb1409bff7674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d53bb57fdbe260fdf6898f14043057c22a319a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390553 | `0x9c1f7237480c030cb14375ff6b650606248a5247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d492b172ef372c33e63ffd867e7a534ddcd62fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390554 | `0x9fa6d162e32a08b323adeae2560f0e44d6dbe53c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a07863e51d932a71133bde956f3d3b6d4c21e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64a28deaff01cffed21303d0419cee67549e407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7680efe2688d0ad66fede67200c38b78b660ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacde8c62a1939fbf0f33ac1eb6b3d387c6240a39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390555 | `0xaedddb1e7be3b22f328456479eb8321e3eff212e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf5e5f306a7e2029d400dba6c864380555c33ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390556 | `0xb26631bc6afd6483ac4fdcd5f943e8a788352d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb425ebbb62dd04ddc4e9693e47f49e7dc8ebaf46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390557 | `0xb48ac9c5585e5f3c88c63cf9bcbaedc921f76df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50201998b92d2e685432b90331bb5825415926e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390558 | `0xb9dad3693aeac9025cb24a47afa6930539877187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc882b8a51c75229188b8e1abfa1100201acc3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd46abf8999e979c4ec507e8be06b5d4402a0205` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390559 | `0xbfa722c4fdf41632a8648c5f1ae129242b1a9ce6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390560 | `0xc03c434d8430d27bb16f07658be4352bead17ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390561 | `0xc1a2499ffb03ae462242890cb852cc80cb0203cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390562 | `0xc242487172641eef13626c2c426cb3d41bebc6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d80f4777da9d3372132e264d014ee4b29e2c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3979edd2bc308d536964b9515161c8551d0ae3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc582c92c4f7e6af76dab4b376da34ddd3cd3eb41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390564 | `0xc65a88a7b7752873a3106bd864bbcd717e35d2e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc75314d540462be5b275d45d277775f2e574dd93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8462c87f7b7446d99c7f1c2f4915a67d711b2ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390565 | `0xc8a26a2ddc176e02a8fd67cb3c8548aa6c8be32c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390566 | `0xc9632e9cbdee643bc490572dd0750ea394e8e3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca92bcceb7349347bb14bd5748820659e198c632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab062047f8b3e2cecb27206d8399899ec4ad2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce515fef0c9ca64f2fe20bfe2c6e9beb139efbc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf4bf725898cc787e597332c0c5f0843c3e85cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd111e59afcd347eda0b13eaa16e2ac3398b0ef52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3674dc273236213379207ca3ac6b0f292c47dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd414c46ac45e14f3171e857e35ec12d8e38598fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd459c650410e491088d960def50a8f918556ba5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd47d334473ec3e0e2b4bbf60dd41b0e404676362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4b577a6aa856c42d0f70bd36af4d4e34acfc9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c68aac3c46e754ca54a551560ce07cb89dc20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd71df8f4aa216a21fa4994167adb65d866ce9b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd90c7b08ef0583c74890f840510cd8a5fcbf65c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4f1bb3f8c9929aafbe7197e10ffafeeae19b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde6d401e4b651f313edb7da0a11e072eef4ce7be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390572 | `0xe488a643e4b0aaae60e4bdc02045a10d8a323bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4aed2b6d9786c3a8527fdfc0e0aebbf3e2e26e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390573 | `0xe567dcf433f97d787df2359bdbf95dfd2b7abf4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe682946182e5780843d5f6d2c023b8b89765d0fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390574 | `0xe6b1f872b1073408a1e619319718e0bce3e48f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe72df5a35d596b668b22a9a0d4e091a1ce6fb1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f154a43bebdf9ff6dc1dc0b09da94290cce42e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea391aea488fb4788c15c589c80b730456706410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb32f71b700b75ad6bf84c9b0374f388740c266f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec875016b442597d9ad7843b663cec6c12fea233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390577 | `0xed95cf020ece657a10793488622ed2f837f1e83c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390578 | `0xefc8edaa7cfd0cf272a0f55de37d62f0adfb7e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2e2d3e56646500928a7a052b77e208b255d6b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf781bf5baa46e2cca7f922aa8372c37b12699381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390579 | `0xf7ed9c033f6bf5f9775d4850170db898d0d28cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf88b864e25766f247f033495ce40de74fb9553b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390580 | `0xf919e7a09d6c9dc2db9c3ddd9c667ed5949c322c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbd65e8c1c191f697598307d4e907cda3cffe33f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc20b8c73263d989a90b927e9a68e06df6c13242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc50dde4d7df9da9410b93e2cc8d6b4e2d3daad2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff40e8e3ac229f3d61060ebd3806fb1606ceae2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x534fe8c14d291950da1022d25d0f7d38fe057ef4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390584 | `0x73957eef5b6f32208f274d6fea07f60cf53def9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390585 | `0x784f75c39bd7d3ebc377e64991e99178341c831d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390587 | `0x9b517eb5806b41af0ab49992985d35816612134e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390588 | `0xb48ac9c5585e5f3c88c63cf9bcbaedc921f76df2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390589 | `0xc0f9dd64d247f4cb50c07632353896918be79562` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390590 | `0xc3431d389999f2412b2570a66da84ce59e5c2a94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390591 | `0xcb6d80ac3209626d5bc6cb9291ef6c4c321c82ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-390592 | `0xe488a643e4b0aaae60e4bdc02045a10d8a323bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x000b7163b325e147e33ac728d62febad1d67b83d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390595 | `0x081eb2ea78bd774ff6b8216dd0362df01ae9e7e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390596 | `0x0a377e7e3a186f15f24314941b33e0e55ce68b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0e3122638435b65f1cad3ee64291f60014045b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390597 | `0x0f678e24977ff6b2f0992939b0e66d60557ae111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1d9a220377f76805060386765d3130abdc4bb376` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390601 | `0x252cb44075a48526a77ccfdabcd1fccc94486384` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390602 | `0x294d884acef3d10919dfc707892de6744fce242b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390603 | `0x2a66de46a705fb5402eafae960c1ca5780110b21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390604 | `0x3190eefb845fb739293979b2011d02dd7f247b89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390605 | `0x32bc5e87297e148f70867005ffdc91a9022fc1f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390606 | `0x345c3132537647e1e2ae7dcede5f8ff4d437539d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390608 | `0x3ed86a8b5896be7cccb1acddd785283317af9896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4326ab297f9ea30486f99ba4e76d04e1139b2e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x43ed180a2de866eec12c538492bb3103e1a00e82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390611 | `0x50c10fce5c1505ccab903c7acaee4ca1cf727e91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390612 | `0x537486ca867e94ae663a5e2da22a8b3549ff796f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390613 | `0x564f0f3ceaf24951ae03a4c8cac8279bd5561999` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390614 | `0x68233f4fd964f90b6026c84a13502902a0e40823` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390615 | `0x6834ff9941fbac16fc14f0b0e6d9829f39c545e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390616 | `0x69f1e971257419b1e9c405a553f252c64a29a30a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390617 | `0x6a3be03028bb8385501df3b25d576c9eb1ed9207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6c278852b8446367afcbb3f4ffcc75deab20849e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x784f75c39bd7d3ebc377e64991e99178341c831d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390618 | `0x7a1bb5e9b7d93229df66bffe97e2854859e03afc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390619 | `0x7c6e5c5568647b0b90f9f962fcdffc771d7f44c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x84ae05b4ae6fbec6c2b25b7ab3cfbff42fe7e689` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390620 | `0x85714257145747c2182f28212369a1cffe997207` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390621 | `0x87ec883c2a5a539f4397c981ef6ada219bd65237` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390624 | `0x8b21aa57cf09ee46045047b92c82191ec982e305` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390625 | `0x8e008401d7d4788c05a4a746e531b65cf2f5602b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390626 | `0x90b724e3ab595d1e67ba5660afbb836c0ecec557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390629 | `0x9e5cbed606d4c4e0c13ee6c94113a9852adf2aa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390630 | `0xa109af0f5dfd05b461e14f9ad3ac5a0630c6dd1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390631 | `0xa128a16b33d14bb6adc10fce96f56034cfdc5b58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390632 | `0xa16335f2057c7992931188e9f1e7131b58bab9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa2aaefb91499877abc4d489fb4f3f741ccbb6c13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390634 | `0xa777152b42d417c27e0cc257944a5bfd5fdccc69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa863650cbd7f73af300e22b7b68fbfcdc29a443a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390635 | `0xaa784efe92a11efa0c14a407d5c6fe230a124387` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390636 | `0xab35a4e4e120b2784d50103fcffc1f3322974ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaeddad15be7428d8c53a217da6e245701e22d2d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390638 | `0xb1952ddff59748248cc1c96bf25379eab8d23fb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390639 | `0xb9234c17bdf785a8f30f56cd59870fe7c7fef0e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390640 | `0xb9c3dc11c11a3862f1cdece2e2fecf46042ec384` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390641 | `0xbd2f1169ec39c240f1a2cbdf9a86b7a5d31afb92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390642 | `0xbd884d23bac3157ed8d8e79ec6e469f53296d263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc2d80f4777da9d3372132e264d014ee4b29e2c62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390644 | `0xc6a91dcee8034929a185cb9c578aed07216cac7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390646 | `0xcdb967979ab407427c81ec2b0263fd7856f872c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd5d3be5aca26e6ebf594849c4b8d23a96fa32129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390647 | `0xd6d5c6a7a4705c001e515255c6cac23b09edb3bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390648 | `0xd7f54c425f64b6cd87b6b39b0a53487bcafffb0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390649 | `0xd88dedb9cec3ffa6f3d21e09ab0109f4a4ce3beb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390650 | `0xd8c27d265b90250f1a20625bd3b0608b1d86e1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdab4bff8c898cf6b2bb167cd789b1c26981ca065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390651 | `0xdb15910600700f776ef615dd0906216cc4a7b754` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390652 | `0xdfd2514848c012f0f09c6db33114cedb24af9a60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390654 | `0xe14182abc1b9d5e78a65a0150e0e2dbeff86d24c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390655 | `0xe38695b3bd1a4881b5551d998e81238ecb103521` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390656 | `0xe3a2159aafad831b10c1fec9662f407b4ffe7b78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390657 | `0xe49bc7d8ff2a5b7157c8ea9e2bdfcd18342288fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390658 | `0xe7c153b0f3f1f77d155a9df9a0c3043464243a53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390659 | `0xe8bd0423396ebc16856766da1b0f2865faf3a671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe9040b3b92f8abbe781af9c59edb6aa4417d4098` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390660 | `0xee67961a739abff7b48208ab2dcd02f090ac4b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf12a5174f77440e51e0d8e44a41bef7a500f3751` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390661 | `0xf47aa2517ff9ece0e1df39a893cc238d363bed40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-390664 | `0xfcb6c2a149da114fd3f3d0fdf3f4935840b0df8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfe76a8323334288815b40f2424893bec3dae3504` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 95
- Live contracts: 0
- Unknown liveness contracts: 95
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=95

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x534fe8c14d291950da1022d25d0f7d38fe057ef4` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x000b7163b325e147e33ac728d62febad1d67b83d` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0e3122638435b65f1cad3ee64291f60014045b6d` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x1d9a220377f76805060386765d3130abdc4bb376` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x4326ab297f9ea30486f99ba4e76d04e1139b2e0b` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x43ed180a2de866eec12c538492bb3103e1a00e82` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x6c278852b8446367afcbb3f4ffcc75deab20849e` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x784f75c39bd7d3ebc377e64991e99178341c831d` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0x84ae05b4ae6fbec6c2b25b7ab3cfbff42fe7e689` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa2aaefb91499877abc4d489fb4f3f741ccbb6c13` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xa863650cbd7f73af300e22b7b68fbfcdc29a443a` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xaeddad15be7428d8c53a217da6e245701e22d2d1` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xc2d80f4777da9d3372132e264d014ee4b29e2c62` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xd5d3be5aca26e6ebf594849c4b8d23a96fa32129` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xdab4bff8c898cf6b2bb167cd789b1c26981ca065` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xe9040b3b92f8abbe781af9c59edb6aa4417d4098` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xf12a5174f77440e51e0d8e44a41bef7a500f3751` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| berachain | unverified unclassified | UnnamedContract<br>`0xfe76a8323334288815b40f2424893bec3dae3504` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1592ec59f5362d9a095c322de2c3cdab1c9b9c66` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24d43755ce2a59c6b31eafd9424f1661ea968dce` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25dd72cc1de50e963948e464c09aeba0d9312349` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31c1556658d928c32393a32d8a375d7dfb1e4c7a` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38898cc445e0a2cd73c557a553aedf9856249911` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bd780f4a4314d3dac3e2a0be9621f5a15d3ea25` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x412f3daca3150fb10b5e61ac9cebd63accdd7139` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43a3cb2cf5ea2331174c166214302f0c3bba6a85` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4731a689c5d85130125db32925a176db28c0972e` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x489dd7f6f57df08871d195e78a0f0e295cf97ea1` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a8fa332276d2ce3fc948d6a680458c18e5c88a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4adf07bc012152386f9c73386b16d9c52df1c703` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51d67bf47e700dcc4f3d79827fb1369528c48930` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55f84cd659c0c1a6bc225f5ce9016ad591b49ced` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ca7539f4a3d0e5006523c1380898898457e927f` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6477cef63d7ccde3f300b2b22d9a4385726be453` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65792959dd27e4ee6bdb3a1af6d38592bdb0e81f` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6616220556c55fcf26f735188ac75c189cdd5241` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x669b05610852f5d0fba3920bb8ad4c4c5c3c3d59` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x678728ae869e76c6b1db6fbdcb5e09414e0479bd` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x690939cf345793bd7950915f84adbd1aebcfa9a3` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6be99363007c0a8be628625476fc5e602b66c2a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d74d646d9f1c606e972ce17714c6b4eec5897a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x706e9b38fd6dd48abf1445cc3cff2202977bfb45` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73dca51d16711dbe50212c50e80675b60cadb184` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76bb10fa166a53941634ed26f5da0e129cc3433c` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ed9e2165e74b1cdf3a70aac8742d8e20c963e37` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80b921c724202969295dcf2da2b36e9f052315b4` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x858f4e107eb24fc9f1d2dc0f043265e677c89f3a` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ce9ef90d7d6ad6cfe64143da396e15043f0e097` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x943f1e9de4508e9eb6863a10697b26d3678a2a52` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x958f41534eacb80cdc5160be619bb1409bff7674` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99d53bb57fdbe260fdf6898f14043057c22a319a` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d492b172ef372c33e63ffd867e7a534ddcd62fb` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1a07863e51d932a71133bde956f3d3b6d4c21e4` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa64a28deaff01cffed21303d0419cee67549e407` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7680efe2688d0ad66fede67200c38b78b660ef2` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacde8c62a1939fbf0f33ac1eb6b3d387c6240a39` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf5e5f306a7e2029d400dba6c864380555c33ddf` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb425ebbb62dd04ddc4e9693e47f49e7dc8ebaf46` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb50201998b92d2e685432b90331bb5825415926e` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc882b8a51c75229188b8e1abfa1100201acc3a9` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd46abf8999e979c4ec507e8be06b5d4402a0205` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2d80f4777da9d3372132e264d014ee4b29e2c62` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3979edd2bc308d536964b9515161c8551d0ae3a` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc582c92c4f7e6af76dab4b376da34ddd3cd3eb41` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc75314d540462be5b275d45d277775f2e574dd93` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8462c87f7b7446d99c7f1c2f4915a67d711b2ac` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca92bcceb7349347bb14bd5748820659e198c632` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcab062047f8b3e2cecb27206d8399899ec4ad2eb` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce515fef0c9ca64f2fe20bfe2c6e9beb139efbc0` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf4bf725898cc787e597332c0c5f0843c3e85cbb` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd111e59afcd347eda0b13eaa16e2ac3398b0ef52` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3674dc273236213379207ca3ac6b0f292c47dd5` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd414c46ac45e14f3171e857e35ec12d8e38598fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd459c650410e491088d960def50a8f918556ba5f` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd47d334473ec3e0e2b4bbf60dd41b0e404676362` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4b577a6aa856c42d0f70bd36af4d4e34acfc9a5` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6c68aac3c46e754ca54a551560ce07cb89dc20b` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd71df8f4aa216a21fa4994167adb65d866ce9b7f` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd90c7b08ef0583c74890f840510cd8a5fcbf65c0` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb4f1bb3f8c9929aafbe7197e10ffafeeae19b9a` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde6d401e4b651f313edb7da0a11e072eef4ce7be` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4aed2b6d9786c3a8527fdfc0e0aebbf3e2e26e7` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe682946182e5780843d5f6d2c023b8b89765d0fd` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe72df5a35d596b668b22a9a0d4e091a1ce6fb1f4` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8f154a43bebdf9ff6dc1dc0b09da94290cce42e` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea391aea488fb4788c15c589c80b730456706410` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb32f71b700b75ad6bf84c9b0374f388740c266f` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec875016b442597d9ad7843b663cec6c12fea233` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf2e2d3e56646500928a7a052b77e208b255d6b5e` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf781bf5baa46e2cca7f922aa8372c37b12699381` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf88b864e25766f247f033495ce40de74fb9553b7` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbd65e8c1c191f697598307d4e907cda3cffe33f` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc20b8c73263d989a90b927e9a68e06df6c13242` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc50dde4d7df9da9410b93e2cc8d6b4e2d3daad2` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff40e8e3ac229f3d61060ebd3806fb1606ceae2b` | non_address_book | unknown | unknown | unverified | n/a | `0xb20aae0fe007519b7ce6f090a2ab8353b3da5d80` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Jacopod OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/jacopod_opal.pdf) | Jacopod | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Panprog OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/panprog-opal.pdf) | Panprog | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Panprog Bundler Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/panprog-bundler.pdf) | Panprog | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Nethermind OPAL Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/nethermind_opal.pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Nethermind Bundler Report](https://github.com/TempleDAO/origami-public/blob/main/audits/opal/nethermind_bundler.pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Bundler3 Spearbit Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-01-02-bundler3-spearbit.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Bundler3 Updated Spearbit Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-02-17-bundler3-update-spearbit.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Bundler3 Updated Open Zeppelin Report](https://github.com/morpho-org/bundler3/blob/main/audits/2025-02-18-bundler3-with-update-open-zeppelin.pdf) | OpenZeppelin | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [Electisec Report (CowSwapper Re-Audit)](https://github.com/TempleDAO/origami-public/blob/main/audits/cow-swapper/cow-swapper-electisec.pdf) | Electisec | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Jacopod Report (SKY+)](https://github.com/TempleDAO/origami-public/blob/main/audits/SKY%2B/SKY%2B-jacopod.pdf) | Jacopod | Audit | 2025-06 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [SBSecurity Report (sUSDS+)](https://github.com/TempleDAO/origami-public/blob/main/audits/sUSDS%2Bs/sUSDS%2Bs-SBSecurity.pdf) | SBSecurity | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Jacopod Report](https://github.com/TempleDAO/origami-public/blob/main/audits/auto-staking/jacopod-autostaking.pdf) | Jacopod | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Nethermind Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Nethermind_hOHM.pdf) | Nethermind | Audit | 2025-04 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Panprog_hOHM.pdf) | Panprog | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 5 | high |
| [Electisec Report (Migrator)](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Electisec_hOHM_Migrator.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Electisec Report](https://github.com/TempleDAO/origami-public/blob/main/audits/hOHM/Electisec_hOHM.pdf) | Electisec | Audit | 2025-03 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 5 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/eulerBorrowLend/panprog_lovTokenEulerAdapter.pdf) | Panprog | Audit | 2025-04 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [Pyro Report](https://github.com/TempleDAO/origami-public/blob/main/audits/oriBGT/oriBGT-audit-pyro.pdf) | Pyro | Audit | 2025-03 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |
| [Jacopod Report](https://github.com/TempleDAO/origami-public/blob/main/audits/oriBGT/oriBGT-audit-jacopod.pdf) | Jacopod | Audit | 2025-03 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 1 | high |
| [Panprog Report](https://github.com/TempleDAO/origami-public/blob/main/audits/boyco/Panprog_Audit_Report-Origami_Boyco.pdf) | Panprog | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Halborn Report](https://github.com/TempleDAO/origami-public/blob/main/audits/boyco/Halborn_Audit_Report-Origami_Boyco.pdf) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Zellic Report](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v2/Origami%20Finance%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 18 | high |
| [<img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report](https://reports.yaudit.dev/01-2023-TempleDAO-Origami) | yAudit | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [yAudit Report Recheck](https://reports.yaudit.dev/02-2023-TempleDAO-Origami-Recheck) | yAudit | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [morpho-auto-compounder-jacopod.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/morpho-auto-compounder/morpho-auto-compounder-jacopod.pdf) | Jacopod | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 7 | high |
| [01-2023-TempleDao-Origami-yAcademy-Report.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v1/01-2023-TempleDao-Origami-yAcademy-Report.pdf) | yAcademy | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf](https://github.com/TempleDAO/origami-public/blob/main/audits/origami-v1/02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf) | yAcademy | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17892] Jacopod OPAL Report — no match: Scope table lists 6 files; architecture review mentions 2 additional adapters (Euler, Morpho) as main contracts. Audit date from cover page.
- [17893] Panprog OPAL Report — no match: All contracts listed in scope section with file paths. Audit date from cover page: December 2, 2025.
- [17894] Panprog Bundler Report — no match: All contracts listed in scope section of the audit report.
- [17895] Nethermind OPAL Report — no match: All 8 contracts from the Audited Files table are in scope. The audit date is December 01, 2025 from the cover page.
- [17896] Nethermind Bundler Report — no match: All contracts listed in the 'Audited Files' table on page 3 of the report.
- [17897] Bundler3 Spearbit Report — no match: Extracted contract names from findings context and file paths mentioned in the report. No explicit scope section found, but contracts are clearly part of the audited codebase.
- [17898] Bundler3 Updated Spearbit Report — no match: No explicit scope section; contracts inferred from findings and context. Audit date from cover page.
- [17899] Bundler3 Updated Open Zeppelin Report — no match: Extracted all contracts from scope section and fully audited new files. Audit date from cover page: February 18, 2025.
- [17900] Electisec Report (CowSwapper Re-Audit) — no match: Only one contract file was audited: OrigamiCowSwapper.sol. The audit period is given as 2025-07-14 to 2025-07-15, and the review summary states the code review was performed between those dates. The end date 2025-07-15 is used as the audit date.
- [17901] Jacopod Report (SKY+) — matched: All contracts listed in the 'Files in scope' table are extracted. The audit date is from the cover page.
- [17902] SBSecurity Report (sUSDS+) — no match: Scope table lists four contracts: OrigamiErc4626.sol, OrigamiCowSwapper.sol, OrigamiSuperSavingsUsdsManager.sol, OrigamiSuperSavingsUsdsVault.sol. Audit date from title: Oct 5, 2024.
- [17903] Jacopod Report — matched: Extracted 6 contracts from the scope table in the report. Audit date is the mitigation review delivery date (2025-05-14) as the main review end date is 2025-05-13 but the report date is 2025-05-14.
- [17904] Nethermind Report — matched: All 13 contracts from the Audited Files table were extracted. The audit date is April 04, 2025 from the cover page and summary table.
- [17905] Panprog Report — matched: All 9 contracts listed in the scope section with file paths. Audit date is March 7, 2025 (fixes reviewed date).
- [17906] Electisec Report (Migrator) — matched: Only one contract in scope: OrigamiCoolerMigrator. Audit date inferred from review period March 18-19, 2025.
- [17907] Electisec Report — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is the end date of the review period (March 6, 2025).
- [17908] Panprog Report — matched: All four contracts listed in scope section with file paths.
- [17909] Pyro Report — matched: Scope table lists two contracts; system overview mentions two additional contracts that are part of the audited system.
- [17910] Jacopod Report — matched: Extracted 4 contracts from the scope table. Audit date from document header.
- [17911] Panprog Report — no match: All 11 files listed in scope section. Audit date from cover page.
- [17912] Halborn Report — no match: Scope section explicitly lists 5 contracts with file paths. Audit date is the end date of engagement: December 16th, 2024.
- [17913] Zellic Report — matched: Extracted 19 contract names from the scope section and threat model modules. The audit date is January 26, 2024, as stated on the cover page and throughout the document.
- [17914] <img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report — no match: The provided text is a header/footer snippet with no contract names or scope details.
- [17915] yAudit Report Recheck — no match: No scope section or contract names found in the provided text.
- [17916] morpho-auto-compounder-jacopod.pdf — matched: All contracts listed in the 'Files in scope' table (section 6.1) are extracted. The audit date is from the cover page: July 22, 2025.
- [17917] 01-2023-TempleDao-Origami-yAcademy-Report.pdf — no match: Scope defined as files in contracts/investments/* and contracts/common/*. Contract names extracted from findings and file references.
- [17918] 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf — no match: Scope directories: contracts/investments/* and contracts/common/*. Specific contract names extracted from file paths and findings. MintableToken is mentioned but not explicitly in scope table; assumed part of investments. Date from review period end (Feb 26, 2023).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Jacopod OPAL Report | OpalAdapterFactory | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalManager | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalMaxJoinExitLib | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalVault | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalAdapterAaveV3 | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalAdapterBase | unmatched — not counted | — | listed in scope table | no |
| Jacopod OPAL Report | OpalAdapterEuler | unmatched — not counted | — | mentioned in architecture review as main contract | no |
| Jacopod OPAL Report | OpalAdapterMorpho | unmatched — not counted | — | mentioned in architecture review as main contract | no |
| Panprog OPAL Report | OpalVault | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalManager | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterFactory | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterBase | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterSpotAssets | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterAaveV3 | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterMorpho | unmatched — not counted | — | listed in scope | no |
| Panprog OPAL Report | OpalAdapterEuler | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundler | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginCore | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginMultiAccess | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginEntryPoint | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginOhmStaking | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginTbsV1 | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginTbsV2 | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginKyberSwap | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginAaveV3Flash | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginMorphoFlash | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | OrigamiBundlerPluginPendleSwap | unmatched — not counted | — | listed in scope | no |
| Panprog Bundler Report | PendleRouterScalingLib | unmatched — not counted | — | listed in scope | no |
| Nethermind OPAL Report | OpalAdapterFactory | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalVault | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalManager | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterAaveV3 | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterSpotAssets | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterEuler | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterMorpho | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind OPAL Report | OpalAdapterBase | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundler | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginEntryPoint | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginCore | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginTbsV1 | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginTbsV2 | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginKyberSwap | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginMultiAccess | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginAaveV3Flash | unmatched — not counted | — | Listed in Audited Files table | no |
| Nethermind Bundler Report | OrigamiBundlerPluginOhmStaking | unmatched — not counted | — | Listed in Audited Files table | no |
| Bundler3 Spearbit Report | Bundler | unmatched — not counted | — | mentioned in executive summary and findings | no |
| Bundler3 Spearbit Report | EthereumGeneralAdapter1 | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | GeneralAdapter1 | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | ParaswapAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | CoreAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | AaveV2MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | AaveV3MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | CompoundV2MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | CompoundV3MigrationAdapter | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Spearbit Report | BytesLib | unmatched — not counted | — | listed in findings context | no |
| Bundler3 Updated Spearbit Report | GeneralAdapter1 | unmatched — not counted | — | mentioned in findings context | no |
| Bundler3 Updated Spearbit Report | ERC20WrapperAdapter | unmatched — not counted | — | mentioned in recommendation as new standalone adapter | no |
| Bundler3 Updated Spearbit Report | CoreAdapter | unmatched — not counted | — | mentioned in findings context | no |
| Bundler3 Updated Open Zeppelin Report | Bundler | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | CoreAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | EthereumGeneralAdapter1 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | GeneralAdapter1 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | AaveV2MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | AaveV3MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | AaveV3OptimizerMigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | CompoundV2MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | CompoundV3MigrationAdapter | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IAaveV2 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IAaveV3 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IAaveV3Optimizer | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IBundler | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ICEth | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ICToken | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ICompoundV3 | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IComptroller | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IDaiPermit | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IStEth | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IWNative | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | IWstEth | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | BytesLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | MathRayLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | UtilsLib | unmatched — not counted | — | listed in scope | no |
| Bundler3 Updated Open Zeppelin Report | ParaswapAdapter | unmatched — not counted | — | fully audited new file | no |
| Bundler3 Updated Open Zeppelin Report | IParaswapAdapter | unmatched — not counted | — | fully audited new file | no |
| Bundler3 Updated Open Zeppelin Report | IAugustusRegistry | unmatched — not counted | — | fully audited new file | no |
| Electisec Report (CowSwapper Re-Audit) | OrigamiCowSwapper | unmatched — not counted | — | listed in Audited Files section | no |
| Jacopod Report (SKY+) | ISkyLockstakeEngine | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report (SKY+) | ISkyStakingRewards | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report (SKY+) | ISkyVat | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report (SKY+) | OrigamiSuperSkyManager | own contract | OrigamiSuperSkyManager (selected) `0xc522335fbfe21d7a7d1135eb0e016a89da49dc9e` — deployed 2025-06-26 06:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report (SKY+) | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c5500359161b81eb0dfff83097d5025d3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SBSecurity Report (sUSDS+) | OrigamiErc4626 | unmatched — not counted | — | listed in scope table | no |
| SBSecurity Report (sUSDS+) | OrigamiCowSwapper | unmatched — not counted | — | listed in scope table | no |
| SBSecurity Report (sUSDS+) | OrigamiSuperSavingsUsdsManager | unmatched — not counted | — | listed in scope table | no |
| SBSecurity Report (sUSDS+) | OrigamiSuperSavingsUsdsVault | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiAutoStakingFactory | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiAutoStakingToErc4626Deployer | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiSwapperWithCallbackDeployer | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiAutoStakingToErc4626 | own contract | OrigamiAutoStakingToErc4626 (selected) `0x1a0730d90a253ded0177e5a1dbcfd169c5e3f67f` — deployed 2025-05-14 07:05:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report | OrigamiAutoStaking | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | MultiRewards | unmatched — not counted | — | listed in scope table | no |
| Nethermind Report | OlympusCoolerDelegation | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiTokenizedBalanceSheetVault | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774c4d42ead21c345f75af59325903f8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Report | OrigamiElevatedAccess | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | Whitelisted | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiOftElevatedAccess | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiElevatedAccessUpgradeable | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiElevatedAccessBase | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiTokenTeleporter | own contract | OrigamiTokenTeleporter (selected) `0xce39906a35de2ac81f0fd0ebd18fd3f04383932a` — deployed 2025-05-08 02:42:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Report | OrigamiTeleportableToken | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiOFT | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind Report | OrigamiHOhmManager | own contract | OrigamiHOhmManager (selected) `0xe6c5dc8508939b1c417f83b7fed3149ef22cf3ff` — deployed 2025-05-07 11:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind Report | OrigamiHOhmVault | own contract | OrigamiHOhmVault (selected) `0x1db1591540d7a6062be0837ca3c808add28844f6` — deployed 2025-05-07 11:35:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiTokenizedBalanceSheetVault | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiOftElevatedAccess | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiOFT | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiTeleportableToken | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiTokenTeleporter | own contract | OrigamiTokenTeleporter (selected) `0xce39906a35de2ac81f0fd0ebd18fd3f04383932a` — deployed 2025-05-08 02:42:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774c4d42ead21c345f75af59325903f8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiHOhmManager | own contract | OrigamiHOhmManager (selected) `0xe6c5dc8508939b1c417f83b7fed3149ef22cf3ff` — deployed 2025-05-07 11:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiHOhmVault | own contract | OrigamiHOhmVault (selected) `0x1db1591540d7a6062be0837ca3c808add28844f6` — deployed 2025-05-07 11:35:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OlympusCoolerDelegation | unmatched — not counted | — | listed in scope | no |
| Electisec Report (Migrator) | OrigamiCoolerMigrator | own contract | OrigamiCoolerMigrator (selected) `0x6b3441b121cadba4af1e92e9dd9ed3c0aa415e26` — deployed 2025-05-15 05:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiTokenizedBalanceSheetVault | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiOftElevatedAccess | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiOFT | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiTeleportableToken | unmatched — not counted | — | listed in scope | no |
| Electisec Report | OrigamiTokenTeleporter | own contract | OrigamiTokenTeleporter (selected) `0xce39906a35de2ac81f0fd0ebd18fd3f04383932a` — deployed 2025-05-08 02:42:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774c4d42ead21c345f75af59325903f8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiHOhmManager | own contract | OrigamiHOhmManager (selected) `0xe6c5dc8508939b1c417f83b7fed3149ef22cf3ff` — deployed 2025-05-07 11:36:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OrigamiHOhmVault | own contract | OrigamiHOhmVault (selected) `0x1db1591540d7a6062be0837ca3c808add28844f6` — deployed 2025-05-07 11:35:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Electisec Report | OlympusCoolerDelegation | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiEulerV2BorrowAndLend | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiLovToken | own contract | OrigamiLovToken (selected) `0x0059fd16bc019ffe788d37807533edcf4df06c06` — deployed 2025-04-29 02:12:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiAbstractLovTokenManager | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiLovTokenMorphoManager | own contract | OrigamiLovTokenMorphoManager (selected) `0x051dc89b797652ce8e19a9004d10a74eaabb1ec3` — deployed 2024-06-13 03:11:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiInfraredVaultManager | own contract | OrigamiInfraredVaultManager (selected) `0x05d3461514e769f657ffe71233d6fc2546457b79` — deployed 2025-07-17 02:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774c4d42ead21c345f75af59325903f8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c5500359161b81eb0dfff83097d5025d3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pyro Report | OrigamiErc4626vault | unmatched — not counted | — | mentioned in system overview as standard vault inherited by OrigamiDelegated4626Vault | no |
| Jacopod Report | OrigamiSwapperWithCallback | own contract | OrigamiSwapperWithCallback (selected) `0x23d774c4d42ead21c345f75af59325903f8c80db` — deployed 2025-03-17 02:31:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c5500359161b81eb0dfff83097d5025d3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Jacopod Report | OrigamiErc4626 | unmatched — not counted | — | listed in scope table | no |
| Jacopod Report | OrigamiInfraredVaultManager | own contract | OrigamiInfraredVaultManager (selected) `0x05d3461514e769f657ffe71233d6fc2546457b79` — deployed 2025-07-17 02:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Panprog Report | OrigamiBoycoVault | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBoycoUsdcManager | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBeraRewardsVaultProxy | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBeraBgtProxy | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiBalancerComposableStablePoolHelper | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiElevatedAccess | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiElevatedAccessBase | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiElevatedAccessUpgradeable | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiErc4626 | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiManagerPausable | unmatched — not counted | — | listed in scope | no |
| Panprog Report | OrigamiMath | unmatched — not counted | — | listed in scope | no |
| Halborn Report | OrigamiBalancerComposableStablePoolHelper | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBeraBgtProxy | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBeraRewardsVaultProxy | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBoycoHoneyManager | unmatched — not counted | — | listed in scope section | no |
| Halborn Report | OrigamiBoycoHoneyVault | unmatched — not counted | — | listed in scope section | no |
| Zellic Report | LinearWithKinkInterestRateModel | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | MintableToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiAaveV3IdleStrategy | unmatched — not counted | — | Listed in scope under 'Programs' as part of idleStrategy contracts. | no |
| Zellic Report | OrigamiAbstractLovTokenManager | unmatched — not counted | — | Listed in scope under 'Programs' as part of lovToken contracts. | no |
| Zellic Report | OrigamiCircuitBreakerAllUsersPerPeriod | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiCircuitBreakerProxy | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiCrossRateOracle | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiDebtToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiElevatedAccessBase | unmatched — not counted | — | Listed in scope under 'Programs' as part of common contracts. | no |
| Zellic Report | OrigamiIdleStrategyManager | unmatched — not counted | — | Listed in scope under 'Programs' as part of idleStrategy contracts. | no |
| Zellic Report | OrigamiInvestmentVault | unmatched — not counted | — | Listed in scope under 'Programs' as part of investments contracts. | no |
| Zellic Report | OrigamiLendingClerk | unmatched — not counted | — | Listed in scope under 'Programs' as part of lending contracts. | no |
| Zellic Report | OrigamiLendingRewardsMinter | unmatched — not counted | — | Listed in scope under 'Programs' as part of lending contracts. | no |
| Zellic Report | OrigamiLendingSupplyManager | unmatched — not counted | — | Listed in scope under 'Programs' as part of lending contracts. | no |
| Zellic Report | OrigamiLovTokenErc4626Manager | unmatched — not counted | — | Listed in scope under 'Programs' as part of lovToken contracts. | no |
| Zellic Report | OrigamiLovToken | own contract | OrigamiLovToken (selected) `0x0059fd16bc019ffe788d37807533edcf4df06c06` — deployed 2025-04-29 02:12:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zellic Report | OrigamiOToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of investments contracts. | no |
| Zellic Report | RepricingToken | unmatched — not counted | — | Listed in scope under 'Programs' as part of util contracts. | no |
| Zellic Report | TokenPrices | unmatched — not counted | — | Listed in scope under 'Programs' as part of util contracts. | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiErc4626WithRewardsManager | unmatched — not counted | — | listed in scope table with 408 additions | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiVestingReserves | unmatched — not counted | — | listed in scope table with 111 additions | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiErc4626 | unmatched — not counted | — | listed in scope table with 34 lines | no |
| morpho-auto-compounder-jacopod.pdf | OrigamiDelegated4626Vault | own contract | OrigamiDelegated4626Vault (selected) `0x07c5500359161b81eb0dfff83097d5025d3cf5a2` — deployed 2025-06-26 06:02:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| morpho-auto-compounder-jacopod.pdf | OrigamiInfraredVaultManager | own contract | OrigamiInfraredVaultManager (selected) `0x05d3461514e769f657ffe71233d6fc2546457b79` — deployed 2025-07-17 02:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| morpho-auto-compounder-jacopod.pdf | OrigamiBoycoVault | unmatched — not counted | — | listed in scope table with 69 deletions | no |
| morpho-auto-compounder-jacopod.pdf | IOrigamiErc4626WithRewardsManager | unmatched — not counted | — | listed in scope table with 91 additions | no |
| morpho-auto-compounder-jacopod.pdf | IMerklDistributor | unmatched — not counted | — | listed in scope table with 28 additions | no |
| morpho-auto-compounder-jacopod.pdf | IOrigamiVestingReserves | unmatched — not counted | — | listed in scope table with 30 additions | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiGmxEarnAccount | unmatched — not counted | — | mentioned in findings and scope directories | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiGmxInvestment | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiGmxManager | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | MintableToken | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | Operator | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | TokenPrices | unmatched — not counted | — | mentioned in findings | no |
| 01-2023-TempleDao-Origami-yAcademy-Report.pdf | OrigamiInvestment | unmatched — not counted | — | mentioned in findings | no |
| 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf | Governable | unmatched — not counted | — | listed in scope: contracts/common/* | no |
| 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf | GovernableUpgradeable | unmatched — not counted | — | listed in scope: contracts/common/* | no |
| 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf | MintableToken | unmatched — not counted | — | mentioned in informational finding | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2432b4767c6c3b4b5cff16acea8f51c013dbb678` | OrigamiAaveV3BorrowAndLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88469316c5f828b4dfd11c4d8529cd9f96b2e006` | OrigamiAaveV3FlashLoanProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5bf1030503107db67c3047a4f05439bcfbb40234` | OrigamiDexAggregatorSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x71578e532f30983af51981deeda0a7bba88da22a` | OrigamiLovTokenMorphoManagerMarketAL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03401161fc7785c86ee5cd96560711a677533e3b` | OrigamiMorphoBorrowAndLend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x1511adab8b8cd255deb6b344751297277c7ceb47` | OrigamiSwapperWithLiquidityManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 197 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 27 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 173 unmatched
- Matched-own operational status: 27 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23, low=2, medium=2
- Match method counts: unique_name=27

Zero-match audit list:

- [17892] Jacopod OPAL Report
- [17893] Panprog OPAL Report
- [17894] Panprog Bundler Report
- [17895] Nethermind OPAL Report
- [17896] Nethermind Bundler Report
- [17897] Bundler3 Spearbit Report
- [17898] Bundler3 Updated Spearbit Report
- [17899] Bundler3 Updated Open Zeppelin Report
- [17900] Electisec Report (CowSwapper Re-Audit)
- [17902] SBSecurity Report (sUSDS+)
- [17911] Panprog Report
- [17912] Halborn Report
- [17914] <img src="/files/2gef4EG77ADA9eg9jvO9" alt="" data-size="line"> yAudit Report
- [17915] yAudit Report Recheck
- [17917] 01-2023-TempleDao-Origami-yAcademy-Report.pdf
- [17918] 02-2023-TempleDao-Origami-Recheck-yAcademy-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
