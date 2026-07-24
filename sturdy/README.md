# Agentic Audit Brief: Sturdy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sturdy (`sturdy`)
- Website: [https://sturdy.finance/](https://sturdy.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, fantom, linea, mode, optimism, sei
- Contract surface: 187 unique implementations (326 raw deployments)
- Coverage basis: 0/38 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $364,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sturdy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 46 contract row(s) across ethereum, linea, mode, optimism, sei. Structural roles: 26 unclassified, 12 core, 6 supporting, 2 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 46
- Structural roles: unclassified (26), core (12), supporting (6), infra (2)
- Contract kinds: contract (35), abstract (8), unclassified (3)
- Detected standards: ownable (4), erc20permit (1)
- Frameworks: openzeppelin (19), chainlink (2), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 55 contracts are derived from known codebases. 55 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x28bba0e8f1201f14bccf31c37904a25629097966`, chain 1)
- UnnamedContract (`0x2ca52c78d7932e285f2ea5928fb7251baec3f166`, chain 1)
- UnnamedContract (`0x4235599f79cf269db68cdc1de01c242459f6f318`, chain 1)
- UnnamedContract (`0x5630d6564ba2154c324d80e0c12d1445e7f469fb`, chain 1)
- UnnamedContract (`0x72d6b10b50a3b324fef712e543c4d296c932958a`, chain 1)
- UnnamedContract (`0x73e4c11b670ef9c025a030a20b72cb9150e54523`, chain 1)
- UnnamedContract (`0x7578f31cc44fdf2f123a6f84c42f702f9c990091`, chain 1)
- UnnamedContract (`0x9a81759333948ab6e6036cb0f35711028b8af1c2`, chain 1)
- UnnamedContract (`0x9b0afda3acaf3bfa3e49cb0af1fc0375df290b99`, chain 1)
- UnnamedContract (`0x9c1737dd00927e6184d8e00168a68dbdf9dae537`, chain 1)
- UnnamedContract (`0x9c7e7d0c1d8e17643ad16717ff77cc522eb0804f`, chain 1)
- UnnamedContract (`0xa25f4cce877159f902869e501bfcd503602ef11f`, chain 1)
- UnnamedContract (`0xacdbcde220c7155feac574cd04ccd363a1b26b76`, chain 1)
- UnnamedContract (`0xbd1290671ac658f8effbf488a420c7f6662005f1`, chain 1)
- UnnamedContract (`0xbd564bfe6f2366336ecd707862eda79b97bce383`, chain 1)
- UnnamedContract (`0xbf91fb39d56f2d6822930f5f940062f978a9877d`, chain 1)
- UnnamedContract (`0xc7a65e66ccba7499b3ced993195f3670dead97dd`, chain 1)
- UnnamedContract (`0xcfb23d05f32ea0be0dbb5078d189cca89688945e`, chain 1)
- UnnamedContract (`0xd1eed9475ec923cff04028d5920766784ae65006`, chain 1)
- UnnamedContract (`0xef9e51d2ada9a4b1a2a7de9fff46465653ef7d53`, chain 1)
- AggregatorDataProvider (`0x69764e3e0671747a7768a1c1afb7c0c39868cc9e`, chain 1)
- AggregatorFactory (`0x7520aa7f8dfa6c2f5024f419b33c7c221a647c51`, chain 1)
- AprOracle (`0xf7be7370005896c720c2a84da870e041acf41a4d`, chain 1)
- BalancerswapAdapter (`0xdad951530ef3a823d835ef34367a96f5b9077cdb`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0x680f851a3796ab1aa1204ca8dd2214ef170d1a2d`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0x6f7c66f09922c04218b54a04261fca2310c76adc`, chain 1)
- CrvUSDYv3CRVCrvUSDOracle (`0xa460cc3dc111e42939512b29390e576f8506d213`, chain 1)
- CrvUSDYvMkUSDCrvUSDOracle (`0xe0dd70c18976ad7334354234c73ce2a4b749f5f0`, chain 1)
- CurveswapAdapter (`0x4827b1bb7fac4bef01273cde0abab695c32402a7`, chain 1)
- ERC4626Oracle (`0x3723d77a72e829cb367b4f0cdf35b9b95dc3e57d`, chain 1)
- ERC4626Oracle (`0xa34fe4d13ca737d0b1f8d9c169cbd044c56f17ad`, chain 1)
- IncentiveDistributor (`0x94c1201e12d5773410c35fe509dd0f4bb440d39d`, chain 1)
- RewardConfig (`0x169a808d414d18f0e5482213b7c77f5b348fc05a`, chain 1)
- SturdyPairDeployer (`0x797b173a2c31fd34b0bebf5f0c64ec70372b2d2f`, chain 1)
- SturdyPairRegistry (`0xd577429db653cd20effcd4977b2b41a6fd794a3b`, chain 1)
- SturdySiloAprOracle (`0x1b05ce15c459e257a82ca5ea57c36dd8d148fbad`, chain 1)
- SturdySiloStrategy (`0x0669091f451142b3228171ae6ad794cf98288124`, chain 1)
- SturdySiloStrategy (`0x076d2be066d5042f21d8512722209e5c54783cab`, chain 1)
- SturdySiloStrategy (`0x0dd49c449c788285f50b529145d6e6e76f02fd8f`, chain 1)
- SturdySiloStrategy (`0x200723063111f9f8f1d44c0f30afadf0c0b1a04b`, chain 1)
- SturdySiloStrategy (`0x26fe402a57d52c8a323bb6e09f06489c8216ac88`, chain 1)
- SturdySiloStrategy (`0x4e72fcb2517ed90a3976dd8f50a387811ac4d883`, chain 1)
- SturdySiloStrategy (`0x6311ff24fb15310ed3d2180d3d0507a21a8e5227`, chain 1)
- SturdySiloStrategy (`0x8dde9a50a91cc0a5dabdc5d3931c1af60408c84d`, chain 1)
- SturdySiloStrategy (`0xd002dc1c05fd7ff28c55eea3ddcb9051b2b81bd2`, chain 1)
- SturdyWhitelist (`0xf0382a9eca5276d7b4bbcc503e4159c046c120ec`, chain 1)
- Token (`0xaeb3607ec434454ceb308f5cd540875efb54309a`, chain 1)
- UniswapAdapter (`0xd23bfa060c2dcb70d4aeb78ebd2ee9a172cf5818`, chain 1)
- VariableInterestRate (`0x1f081b4b351e7bd2bfb5b097742127c9314cdf24`, chain 1)
- VariableInterestRate (`0x31993d7b2620b77d410ff185e54535fd713459f3`, chain 1)
- VariableInterestRate (`0x7e485966eea7f93e79646a7f4427a8004451fb0e`, chain 1)
- VariableInterestRate (`0x8ae2f8ef034cccc6d9beb9c76044ad46fadfaeb6`, chain 1)
- VariableInterestRate (`0xa5961b1e125b4dc17675a7635ede224fa1580832`, chain 1)
- VariableInterestRate (`0xcc46dc2e682951dcb92ef251aaddd4bb96d1532e`, chain 1)
- VariableInterestRate (`0xf4386d2d01aed337e3c3ccbca96f5e3ec5d81ac6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 46; live-surface rows included: 46 (46 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 57/57 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/38 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 57 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 130 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 57 of 187 unique; 130 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/110
- Verified + Unaudited implementations: 110
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 187
- Raw deployments: 326
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (110)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeraStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6fe97da554366b47954890b5975938729675e2b` | ⚠️ Unaudited |
| AeraV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa206f00fbaab258c75afac35ab4a580fd3103c65` | ⚠️ Unaudited |
| AeraVaultDebtManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x14456685725f9a80d34d3ea586e40b1d1d2c5a68`; ethereum `0x5c2ea5bf039460099111c9f311d28a18093d0a09`; ethereum `0xc3c8f4c35cbf9ea185330ff0090771f08cff78b7` | ⚠️ Unaudited |
| AeraVaultModulesFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25f64d5f0cf5588387261682e794d5e8ff499453` | ⚠️ Unaudited |
| AGETHYearnVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab149804cfceb2b05ecccae3e798026793e0110` | ⚠️ Unaudited |
| AggregatorAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: ethereum `0xb825a2d7141f6c4c357d4198e6e2d20369bf5108`; mode `0xd577429db653cd20effcd4977b2b41a6fd794a3b`; linea `0x4534f53a81416a83f6baf5ac63c94aed1fea1303` | ⚠️ Unaudited |
| AggregatorDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1398f9dc8058036c4a71c1025c67abfcf443e88e`; ethereum `0x83d14ab0f1576403bf5ad9b9a535e829612d9e6b`; ethereum `0xb06559a9b136b3bee486f4c16e5375b0edad4a80`; optimism `0x9dc7b2130e478c5810dc0cdbd46b9d479b2e1ac4`; optimism `0xda11c8d85203f9d616246754b8957f00892476b1`; mode `0xf0382a9eca5276d7b4bbcc503e4159c046c120ec`; mode `0xfb6113ccd6a20f235a3631876f2791fec66233e7`; linea `0xd67da8636ae87b0cecbda2e66db58d4839722b52` | ⚠️ Unaudited |
| AggregatorDataProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393213 | `0x69764e3e0671747a7768a1c1afb7c0c39868cc9e` | ⚠️ Unaudited |
| AggregatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393217 | `0x7520aa7f8dfa6c2f5024f419b33c7c221a647c51` | ⚠️ Unaudited |
| AggregatorV3WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x911a874e4423df428f9f3cfb778abdddc98bfc81` | ⚠️ Unaudited |
| API3BasedETHEZETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6f7c66f09922c04218b54a04261fca2310c76adc` | ⚠️ Unaudited |
| AprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393251 | `0xf7be7370005896c720c2a84da870e041acf41a4d` | ⚠️ Unaudited |
| AprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0xba4c10a7afa6376c47dabb9bedf349ea3a08170f`; linea `0xd7d7d7075139ce8ce02f97bd113f3f89f60851c3` | ⚠️ Unaudited |
| BalancerswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393245 | `0xdad951530ef3a823d835ef34367a96f5b9077cdb` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x887c89afd095baa5c1501ae56facfa9b83395ab5` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x03aef503d5e5be4dfb02b3425b737006a9b390eb`; ethereum `0x1121ddd2007d2c6677e9987e289c3d52aaa9668c`; ethereum `0xadbbc6051bdb840d0f21f9bea0d02a1023359824`; ethereum `0xaebee3d4306da0d6d0a34e51c87fbc79356f623d`; ethereum `0xb7a81ef9fc8495e3cb39687ecd012eda5168044b`; ethereum `0xb912bef156022d4d143c52f86b2dc1b24dd0c5c0`; ethereum `0xdb6ce32d36a9d807bab0c3947b31b06706758492` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393212 | `0x680f851a3796ab1aa1204ca8dd2214ef170d1a2d` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393214 | `0x6f7c66f09922c04218b54a04261fca2310c76adc` | ⚠️ Unaudited |
| CrvUSDYv3CRVCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393230 | `0xa460cc3dc111e42939512b29390e576f8506d213` | ⚠️ Unaudited |
| CrvUSDYvMkUSDCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3bd929574ff5dea4a23d3bb3b1ad0b95d0fe1e1d`; ethereum `0x71a0478d181d5fd5f14c46617a58d8e3095bbddb`; ethereum `0xaa7fcaffdfaa0f96ccfc685a37da99957d07ecc4` | ⚠️ Unaudited |
| CrvUSDYvMkUSDCrvUSDOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393247 | `0xe0dd70c18976ad7334354234c73ce2a4b749f5f0` | ⚠️ Unaudited |
| CrvYearnVaultLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x616dd28f0223dbbeb2eeb1f72dcb847c7e117b75`; ethereum `0x7b3a75114b1e38cb89e38960e0687107beca2d0c`; ethereum `0xe7c6beeb41f6a9f2576a318cb0aadf8994dfa9f4` | ⚠️ Unaudited |
| CrvYearnVaultLeverage2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe47fe254107aab9def7a8d8d33b8551784f53f10` | ⚠️ Unaudited |
| CurveswapAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393253 | 2 deployments: ethereum `0x4827b1bb7fac4bef01273cde0abab695c32402a7`; ethereum `0xef9e51d2ada9a4b1a2a7de9fff46465653ef7d53` | ⚠️ Unaudited |
| CurveswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66a2563db193c9a8cb99c7698142ed2c3c6c36e` | ⚠️ Unaudited |
| DebtManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x09034a26478908572d279c4bbc7719f07ef249a9`; ethereum `0x125144a17c2e0594b8a5950c46b475e93fffe2de`; ethereum `0x4c789eaac7d5cf7dcf8d267f6ca9f282348c74c8`; ethereum `0x6481b119edd1e5f4a66baa30bf100be87c9a665c`; ethereum `0xa325cb5841c5f0d87d0490281790064900ef6f1e`; ethereum `0xa496c6d6738e12c00b66de698fa15f15b63c5139`; mode `0x31993d7b2620b77d410ff185e54535fd713459f3`; mode `0x96a1a3ce4b9cb36ad259c3066d583acd358dcca9` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393207 | `0x3f1e01c07539b9e4941ab58b1258cbb6c4066063` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393210 | `0x5528c5da505eea1a419a1d96a9cdf22845423075` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393239 | `0xcc06b025ab03ebddcc545912def1714b4da8f521` | ⚠️ Unaudited |
| DebtManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393249 | `0xf2d6c582609f77166914de80b4485084e54bdade` | ⚠️ Unaudited |
| DefaultDebtManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23355ea4afddb111096f16406f11a6312a71cab` | ⚠️ Unaudited |
| EmissionSchedule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee2217c63fb94fda42c63a083b07cecbbb352dc` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393202 | `0x1f4b81f8d61dda8a2752be59a9af9a9fb37c9ead` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393206 | `0x3723d77a72e829cb367b4f0cdf35b9b95dc3e57d` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393229 | `0xa34fe4d13ca737d0b1f8d9c169cbd044c56f17ad` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8384d78667dfc4b4d5eae90308ea95a58229166` | ⚠️ Unaudited |
| ERC4626VaultLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0b0e943d2cbae1da34ac6fbb7cd15b6cf05759b7`; ethereum `0xe964295d09c540d0408f48ccafd4ec399bd3ed37` | ⚠️ Unaudited |
| ETHBasedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd8905400105358bab2eddcb78da3478368c343f1` | ⚠️ Unaudited |
| ETHEETHPendlePTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa621a3809fda139c7aa63d7736d2e3eb0b351d0b` | ⚠️ Unaudited |
| ETHRedStoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97131b50cf5206633ec9d7bd5d1e5949809ea389`; ethereum `0xdeda72c39b7b2fb0433af9cfc21031d5ef3b126a` | ⚠️ Unaudited |
| ETHRSETHPendlePTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x49c27c15dbb239c4943c5f86361da724f8d1f8af`; ethereum `0xddb80a52cf2098647146e0bbeb2961502c322c37` | ⚠️ Unaudited |
| ETHRSWETHPendlePTOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x22436aed9fe5a6408537e748280cb25a6d78978b`; ethereum `0x68b444de25b84bf8c6b904eb572d7d1b6167e6b4`; ethereum `0x68f702ff07f14b057018ab8f3e0f7df03dd91f94` | ⚠️ Unaudited |
| ETHSWETHOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393252 | `0xfef192cabf37a2396a8665f42f9a499a52baa185` | ⚠️ Unaudited |
| EZETHYearnVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d66cb69ed9bafc9b4da30bb187b3a93d5ebe920` | ⚠️ Unaudited |
| Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x01812720944ee0a8e7f4077778bc5d1be9e419d5`; ethereum `0x034c2e12474f6873f4de17236771e84b3b616f56`; ethereum `0x371cd44e6ece0e275dda96e9363ec0c246604e2d`; ethereum `0x5aa6ac07f430095f9a239150f96549666fca7444`; ethereum `0x5ad6467e3e25cf83ddde1298f95fb0bff9910fce`; ethereum `0x61892fa1b3a2757ee7163bf42c5e1735b47d03db`; ethereum `0xbd87149156cebe7ef5cdd2669581a6cb236c84c3`; ethereum `0xbf7bab7991ab76f8b9e8deab3daa0fa6b5024bc6`; ethereum `0xdba0d88bc28a47707d62b8ac15cdd4383de63275`; ethereum `0xfbbd6558b19b9663cfde0e55800622361cb1a0ab` | ⚠️ Unaudited |
| GhoYvGhoCrvUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50710f355652439f7fcc752c58c15e6ae7626092` | ⚠️ Unaudited |
| IncentiveDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393222 | `0x94c1201e12d5773410c35fe509dd0f4bb440d39d` | ⚠️ Unaudited |
| IncentiveVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a84460e6df989c258d31017bdddedd54cc88561`; ethereum `0xed2e83dd4ca97b8abe6d8e1a63eeccd82583b357` | ⚠️ Unaudited |
| MockSwapBridgeAndCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99093fdf0c026695c2549ae5ee14bc8f8ad7f986` | ⚠️ Unaudited |
| NileswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x09cf3b20f56bc3461a828e9c167db4a33addf855` | ⚠️ Unaudited |
| PendlePTLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f63e9a52d288add75b4ea0a0742f16c8a5f1dbd` | ⚠️ Unaudited |
| PxETHYvStETHPxETHOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393198 | `0x0d3fc4979349732b0c74fde9ce6dfb124ab8178b` | ⚠️ Unaudited |
| PxETHYvStETHPxETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be3c3e2427eb4faff65d67f831b3c0c9b72f660` | ⚠️ Unaudited |
| PythBasedAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 4 deployments: mode `0x0ebf145136acd214997c1ccaa6c686d1880bb532`; mode `0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7`; mode `0x46dd996be31a31483a3c5d8d513eb6536eae3bfa`; mode `0xd7d7d7075139ce8ce02f97bd113f3f89f60851c3` | ⚠️ Unaudited |
| RedstoneBasedAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 5 deployments: mode `0x0c2f5023d2e9ec881234ebc167311e596a703faa`; mode `0x1ea0f1fcb10b58f5e43c4c764cab1a35ab6bc792`; mode `0x83c0217e1373afe161ca378e3a141fe340eb4b6c`; mode `0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed`; mode `0xeff461778374f2bda7204e8ae366560deca73d16` | ⚠️ Unaudited |
| RewardConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393199 | `0x169a808d414d18f0e5482213b7c77f5b348fc05a` | ⚠️ Unaudited |
| RewardConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: mode `0xb3d159d3c656925738e5733fb3aeb2a9cab92839`; mode `0xd2bc9a2f722c0970cc9520a03b039a45da897787`; linea `0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7` | ⚠️ Unaudited |
| SiloGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c055119dd2c8898332de19cd61ac248c62116bd`; ethereum `0x31e9f9b698022813a58ca33e9864922481bddcb8`; ethereum `0x53aef4c08672e357185d5ead5388957cbc7d06a2`; mode `0x2040a9adcfa0adea197a6a466f5e259a27fd15a0`; mode `0x644b50951f974a63e028d67dd7aee520c0f1eb3b` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393209 | `0x4d07a57a893ae8a4de536827582b374050f4bed3` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393223 | `0x987a70f5dc138c6316cabf648582a091866b8ae5` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393238 | `0xc7e66709dbc9a6fe99064e19b1a755c2d9354c1a` | ⚠️ Unaudited |
| SiloGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393246 | `0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed` | ⚠️ Unaudited |
| SiloHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x5fad91704f52b173a5d9fb8cf83822a1d9848892`; linea `0x9dc7b2130e478c5810dc0cdbd46b9d479b2e1ac4` | ⚠️ Unaudited |
| StableYieldDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc7b2130e478c5810dc0cdbd46b9d479b2e1ac4` | ⚠️ Unaudited |
| StakedTokenIncentivesController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8c48d3e505da1113d8eef1c7cf587767c25591` | ⚠️ Unaudited |
| STRDYLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa70d1906b7779293ca7e12e369b2722cefb9fafd`; ethereum `0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18` | ⚠️ Unaudited |
| STRDYVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a3b229f2bc58517ad2f5cf6fcf53696b5dce04e`; ethereum `0x560e73e3280223b1696f664bbd9032cb8f783bb1` | ⚠️ Unaudited |
| SturdyAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f960aedb1320358c9458b9fc71e7ac85922667` | ⚠️ Unaudited |
| SturdyLeverage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20db15743137a0b46ae2f4b94b9b1cf60aa5705` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x6cb759c980c2922731fe13b2edce5d4ed47ad6fd`; mode `0x9dc7b2130e478c5810dc0cdbd46b9d479b2e1ac4` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloanLinea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5c0801270b471311e3bf7bb3637a7d12b13d747c` | ⚠️ Unaudited |
| SturdyPairDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393219 | `0x797b173a2c31fd34b0bebf5f0c64ec70372b2d2f` | ⚠️ Unaudited |
| SturdyPairDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: mode `0x61eea4770d7e15e7036f8632f4bcb33af1af1e25`; linea `0x298d679cb18dece7271f56589859bc4da6c91f87` | ⚠️ Unaudited |
| SturdyPairRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393244 | `0xd577429db653cd20effcd4977b2b41a6fd794a3b` | ⚠️ Unaudited |
| SturdyPairRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x6605111929527485e418e7714d24fb72f5380e1f`; linea `0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d` | ⚠️ Unaudited |
| SturdySiloAprOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393200 | `0x1b05ce15c459e257a82ca5ea57c36dd8d148fbad` | ⚠️ Unaudited |
| SturdySiloAprOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: mode `0x83eb3cf482810e79e9f562d8de87fedf038be768`; linea `0x39d9dbebba50b8dc89c2819e863c1e146235bfef` | ⚠️ Unaudited |
| SturdySiloStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 24 deployments: ethereum `0x094fa191db73b0f6dc2092b903d03b28384817e1`; ethereum `0x0b7d884aaf53b3eb5a5ecb96651d956ccda10cec`; ethereum `0x0b8c80fd9cac5570ff829416f0afce7af6f3c6f8`; ethereum `0x137ff1d982928df3ec626e0a5b6cf7f015de3202`; ethereum `0x6465267d2b15c08362109851688eb40dc2530090`; ethereum `0x6f03c615a3e609d2cf149754cc55462b6477965c`; ethereum `0x88ebdad35b196ed8e39452c15db1159d249907f2`; ethereum `0xafdf33922b129629d77dfcba1286ba0c669b8b57`; ethereum `0xb3bf04a939aacff5bdcfc273ce4f36cf29f063db`; ethereum `0xc2be0d0ad61ce051b5addcb105ff0d02c842e72c`; ethereum `0xcf815a0a6031682e9902966843011deac96c22cb`; ethereum `0xe53ffd56fadc7030156069ae1b34de0ab8b703f4`; ethereum `0xf2705f799cb96a70bc503a5db9d7190768203f4d`; ethereum `0xfd3a26d0685a683ffc8cd4614687ac266a915437`; mode `0x168f6c2c46a58f4394924d14b9dc0a2b394519d9`; mode `0x4e72fcb2517ed90a3976dd8f50a387811ac4d883`; mode `0x56a1e840bfe18e82a412134ab6b0618ab1db406d`; mode `0x5829d7495110ccc36a48e35d58d3d840546ce690`; mode `0x63e3ca7f666c4923d2b1d0bb1c301ba9a57f9560`; mode `0x6cef966e111362ff22d8789b1fa886e4ef674c5a`; mode `0x797b173a2c31fd34b0bebf5f0c64ec70372b2d2f`; mode `0x9cf92c22c36fe62d789a489f40b136db345f414b`; mode `0xcdb88a11f4f825a9372f97010b7c762e3db9e1c6`; mode `0xf7be7370005896c720c2a84da870e041acf41a4d` | ⚠️ Unaudited |
| SturdyWhitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393248 | `0xf0382a9eca5276d7b4bbcc503e4159c046c120ec` | ⚠️ Unaudited |
| SturdyWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d`; mode `0xd8905400105358bab2eddcb78da3478368c343f1`; linea `0xed7d1b8dea862005b7d9cf0b2a5f9f0e816f85fb` | ⚠️ Unaudited |
| SupswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x4c2dfa85753ef95eb822158e8ac06d2b131137d8` | ⚠️ Unaudited |
| SwapBridgeAndCallFromMain | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x41d503c017223b981c4b4794281a732339d05367`; ethereum `0xdbe0365dcb4e0b35b36402546d58e0c1dac86aef` | ⚠️ Unaudited |
| TBTCEBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74f27507abe7a10395c2b2e4dc019c4a62418f3e`; ethereum `0x9ce963c99fdc8e3563e3787f8557b96d31ca2f63` | ⚠️ Unaudited |
| TBTCSwBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd8bcd78ff3440e11ee8356cd006d58510925b7` | ⚠️ Unaudited |
| TBTCYvTBTCWBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b70f7093394ed748a4d1d72225df723256e3785` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8ee9e244f92fa158147b6114d0a8a53dee76e97d`; ethereum `0xbe7f338c04f4a672d4c1ebee99648a6aac71d86e`; ethereum `0xdf3914ad8e29509718ec1efc5037a7f1764380b8`; ethereum `0xea34b9753ea7b2fb94d30a32a57226275d1840db` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | ethereum | unit-393233 | `0xaeb3607ec434454ceb308f5cd540875efb54309a` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 9 | ethereum | unit-393254 (9 proxies) | 9 deployments: ethereum `0x0669091f451142b3228171ae6ad794cf98288124`; ethereum `0x076d2be066d5042f21d8512722209e5c54783cab`; ethereum `0x0dd49c449c788285f50b529145d6e6e76f02fd8f`; ethereum `0x200723063111f9f8f1d44c0f30afadf0c0b1a04b`; ethereum `0x26fe402a57d52c8a323bb6e09f06489c8216ac88`; ethereum `0x4e72fcb2517ed90a3976dd8f50a387811ac4d883`; ethereum `0x6311ff24fb15310ed3d2180d3d0507a21a8e5227`; ethereum `0x8dde9a50a91cc0a5dabdc5d3931c1af60408c84d`; ethereum `0xd002dc1c05fd7ff28c55eea3ddcb9051b2b81bd2` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 6 deployments: ethereum `0x501bbbef60c407b36ea6b87af4964559c5229b11`; ethereum `0x6138973b2c34eb1178e8162bda8e12500975b52c`; ethereum `0xc8d4a8a7f593e73cd32cd6c5fb11fe20f23f9695`; ethereum `0xeef271a0071423ea56d38e4abe748165cc432e3f`; ethereum `0xf94b349d52c542abd8fb612c2854974e1d72223b`; ethereum `0xfa68707be4b58fb9f10748e30e25a15113edee1d` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x6593bb7272237f36444dee44df46ab3b0233a9a0`; ethereum `0x7077ef67fe49ffb1260b893f2cd8475eeb72bbbb` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x5fad91704f52b173a5d9fb8cf83822a1d9848892` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | linea | n/a | 2 deployments: linea `0x884b41145ae3816a0b1a3bae5d2f562be3d31cec`; linea `0xda11c8d85203f9d616246754b8957f00892476b1` | ⚠️ Unaudited |
| UniswapAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393243 | `0xd23bfa060c2dcb70d4aeb78ebd2ee9a172cf5818` | ⚠️ Unaudited |
| USDCCrvUSD0USD0PPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca262a0e6f46d70d81400341c04afb479a42d13d` | ⚠️ Unaudited |
| USDCUSD0PPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1039bec12cb320161bbd5578c62f1f8294d4b3` | ⚠️ Unaudited |
| USDCUSDYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee4ecddbb6145839e52f5bc177331db56f26c6c` | ⚠️ Unaudited |
| USDCYvUSDCRUSDYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78852021ce063012a79b9f7d443a70e988585ed7` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393201 | `0x1f081b4b351e7bd2bfb5b097742127c9314cdf24` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393205 | `0x31993d7b2620b77d410ff185e54535fd713459f3` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393220 | `0x7e485966eea7f93e79646a7f4427a8004451fb0e` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393221 | `0x8ae2f8ef034cccc6d9beb9c76044ad46fadfaeb6` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393231 | `0xa5961b1e125b4dc17675a7635ede224fa1580832` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393240 | `0xcc46dc2e682951dcb92ef251aaddd4bb96d1532e` | ⚠️ Unaudited |
| VariableInterestRate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393250 | `0xf4386d2d01aed337e3c3ccbca96f5e3ec5d81ac6` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 29 deployments: ethereum `0x1acaa29a8877ff3e656172c5ac6bef10ec1bfc57`; ethereum `0x1d7c71b632e3a9af670954c2aea3d4c668e121a6`; ethereum `0x2015d205260322a3971e44f70809c51ef3a967aa`; ethereum `0x27d653a14a9813f9938673e363fd730a3d92deac`; ethereum `0x49d4abe740552dbc1442d126668904674b254f7a`; ethereum `0x778fbe09c945788df6b627e4d9771f0c475eec59`; ethereum `0x8ad2a44bd6b75f866ef5a38528fd8ee721d45043`; ethereum `0x8b65341ad2ffd03f399ba1edec05aa6e9baaba99`; ethereum `0x94c4b61ec63ba1bfea60a46f4c4e890b1d7e6ff5`; ethereum `0x973d03cc98e18e31201f4b61187dc4310c3bc798`; ethereum `0xa2c3ce1acb7b6b4cd289d9dc0c53a4226f386521`; ethereum `0xce05d591020716c58425e81b0dbe2912bced30ca`; ethereum `0xd32d748039bd32d68b3e492dde3af955be70ec14`; ethereum `0xf265f91e07710a35b4667c48d7ad969b5e0c79ba`; ethereum `0xfe9f717417cb06219cb4b5b22b9efbbcdf89d32c`; mode `0x03aef503d5e5be4dfb02b3425b737006a9b390eb`; mode `0x16343853f785dd24a93fe4040063abcbdc409441`; mode `0x1c278caeda6730a7dc1fe38450c521a43069b379`; mode `0x39d9dbebba50b8dc89c2819e863c1e146235bfef`; mode `0x5adac43234bd62818401a472c62e25c9a1142cfb`; mode `0x69ad3538049a8401ac162193c889bae9388cffa2`; mode `0x884b41145ae3816a0b1a3bae5d2f562be3d31cec`; mode `0x90832de4d1915c6e5906f4605babe7c84a08a0c2`; mode `0xae610460522f3e71c40ad6a2c70f486341b88daf`; mode `0xb06559a9b136b3bee486f4c16e5375b0edad4a80`; mode `0xcde573ee42c64e297a842eeef81eececa93a887c`; mode `0xe88c038cedd710a012aba286d56e2ef7441b0b42`; mode `0xfd364c4f8e03b76f4d8f0f8121a0a31d05f49372`; linea `0x20d0cdf9004bf56bca52a25c9288aad0ebb97d59` | ⚠️ Unaudited |
| VariableYieldDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7` | ⚠️ Unaudited |
| veSTRDYGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00341aa5871d3968725523050962415921b73b78` | ⚠️ Unaudited |
| WEETHSYearnVaultStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb43f50b71e2b635e4778e32019609e7ad3b8e07c` | ⚠️ Unaudited |
| YieldDistributorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba4c10a7afa6376c47dabb9bedf349ea3a08170f`; ethereum `0xda11c8d85203f9d616246754b8957f00892476b1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cdffa67145112254b8eb4128ad736d5e74510b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0acd9d715e354861fe68d3cf339b9427d09a77ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc7eccc616c28503db1202baab2d2868ae495e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2140fa34b5a9dcd4b09d2c67e289d504349091a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21d1b4347846bc13f612259d84e4082f6948f696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22333ed5be33ac1035a1274459bda6fdc432f889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x248c25d005f1507cbff74f4a4b01fd9cb3cd7a01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393203 | `0x28bba0e8f1201f14bccf31c37904a25629097966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393204 | `0x2ca52c78d7932e285f2ea5928fb7251baec3f166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39757318184eb155a378724fde34ca37123347df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393208 | `0x4235599f79cf269db68cdc1de01c242459f6f318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4281addd25182ba50b7c41fdd5a7aa2b736003e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393211 | `0x5630d6564ba2154c324d80e0c12d1445e7f469fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599343201d7a3f87485f8f5a2ee373d90e24e12b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69917c0cc4466e586646bcfeb1f8c1fa3b5d9a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab2d09f0daf65820a7270d9fc6802573fb8890d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3e10d45cae662c01ccb667243a0b8e3bd76a61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393215 | `0x72d6b10b50a3b324fef712e543c4d296c932958a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393216 | `0x73e4c11b670ef9c025a030a20b72cb9150e54523` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393218 | `0x7578f31cc44fdf2f123a6f84c42f702f9c990091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x777be575a3bbac469c668dd71663033c0295d558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9330b9a5f4d752ba3bfdfcec9b56082c450841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85db1a4ec3fc2dd880ae81464b1b946caa71c708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9394bef0bcf9789caa0b48975c129bd009fe36f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393224 | `0x9a81759333948ab6e6036cb0f35711028b8af1c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393225 | `0x9b0afda3acaf3bfa3e49cb0af1fc0375df290b99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393226 | `0x9c1737dd00927e6184d8e00168a68dbdf9dae537` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393227 | `0x9c7e7d0c1d8e17643ad16717ff77cc522eb0804f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393228 | `0xa25f4cce877159f902869e501bfcd503602ef11f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393232 | `0xacdbcde220c7155feac574cd04ccd363a1b26b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5317a2fa6d9a40b87151c5cbe4fc6c2221257b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393234 | `0xbd1290671ac658f8effbf488a420c7f6662005f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393235 | `0xbd564bfe6f2366336ecd707862eda79b97bce383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf4c561fd7ef5ac764f2152cec55a15507637e23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393236 | `0xbf91fb39d56f2d6822930f5f940062f978a9877d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1cf3c78a62bb637ebebc253c8c9b4a559e37683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ad7ba0018e59deb947caf1398e6b6e843202f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6d69c5ebf8dac0de33af0d07c8ee451096b5561` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393237 | `0xc7a65e66ccba7499b3ced993195f3670dead97dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7f362e11ac1d6770e1cd2fc7a765ecd13f33b71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393241 | `0xcfb23d05f32ea0be0dbb5078d189cca89688945e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393242 | `0xd1eed9475ec923cff04028d5920766784ae65006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7754f7f445af23f265f9943e261cc6c76088d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4117b3e656d21b4f0fc3e0cad6d0129ca10547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcc12c85539a801ac876f43b80ec72644cc43bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf04d03b444d777fde59ff9e6250431d31ef1a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9642bfb5db0e8237a058420a610696b3a62f159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9a802c78ca6dbc5832cccc92b5063ee610543a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4b18839f99cc721ebd174d5062289fb089a8f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb1846ad3b1b078606e832c21bc4a27d563e79f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc8406ff12c9cfaa7067e5113647fe672000c4aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09cf3b20f56bc3461a828e9c167db4a33addf855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39d9dbebba50b8dc89c2819e863c1e146235bfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4534f53a81416a83f6baf5ac63c94aed1fea1303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c0801270b471311e3bf7bb3637a7d12b13d747c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61eea4770d7e15e7036f8632f4bcb33af1af1e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x884b41145ae3816a0b1a3bae5d2f562be3d31cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x942c5b9502aab7ca792deb9a456d88efd31f7ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd67da8636ae87b0cecbda2e66db58d4839722b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd8905400105358bab2eddcb78da3478368c343f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb8c48d3e505da1113d8eef1c7cf587767c25591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x49b50f508091b57dae0d072f21f5cc78d6d94903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x09cf3b20f56bc3461a828e9c167db4a33addf855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0dbcf6bf2fd41e8c88c88d74aa5df79def5218e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1420e32b775443b10033e385e29fb60cb45d1434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3044d8b97824a8f46259aee9a58ce81e4661e150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3b5da26a2b806abb65c01f9891276ab2cc05c7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x58f41238a3cc43162d89b35e13b0c5365e616df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5ad20c0a415ca825a531711cf6be08d7d4f97dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5c0801270b471311e3bf7bb3637a7d12b13d747c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x95ea1478e9b9459b78cfc0c0c8d7b3d6b31a89fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xaa95e1ec73ace97c616f5f71b2f3431acb6cbc56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1b05ce15c459e257a82ca5ea57c36dd8d148fbad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e946c01d7095b6d0925dfa27113b688889b65e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1f9f2555bd85ed4d1ea7e3b59122e9964c502466` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 280
- Live contracts: 39
- Unknown liveness contracts: 241
- Source-verified contracts: 220
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=64, contamination review=29, exact address book overlap=28, source verified unclassified=103, unverified unclassified=56

Showing first 200 of 280 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | DebtManager<br>`0x09034a26478908572d279c4bbc7719f07ef249a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0x125144a17c2e0594b8a5950c46b475e93fffe2de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0x3f1e01c07539b9e4941ab58b1258cbb6c4066063` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0x4c789eaac7d5cf7dcf8d267f6ca9f282348c74c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0x5528c5da505eea1a419a1d96a9cdf22845423075` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0x6481b119edd1e5f4a66baa30bf100be87c9a665c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0xa325cb5841c5f0d87d0490281790064900ef6f1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0xa496c6d6738e12c00b66de698fa15f15b63c5139` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0xcc06b025ab03ebddcc545912def1714b4da8f521` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | DebtManager<br>`0xf2d6c582609f77166914de80b4485084e54bdade` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | SiloGateway<br>`0x1c055119dd2c8898332de19cd61ac248c62116bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | SiloGateway<br>`0x31e9f9b698022813a58ca33e9864922481bddcb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | SiloGateway<br>`0x4d07a57a893ae8a4de536827582b374050f4bed3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | SiloGateway<br>`0x53aef4c08672e357185d5ead5388957cbc7d06a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | SiloGateway<br>`0x987a70f5dc138c6316cabf648582a091866b8ae5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | SiloGateway<br>`0xc7e66709dbc9a6fe99064e19b1a755c2d9354c1a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | candidate review | SiloGateway<br>`0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | AeraStrategy<br>`0xc6fe97da554366b47954890b5975938729675e2b` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | CrvUSDYv3CRVCrvUSDLeverage<br>`0x887c89afd095baa5c1501ae56facfa9b83395ab5` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | CrvUSDYv3CRVCrvUSDOracle<br>`0x03aef503d5e5be4dfb02b3425b737006a9b390eb` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | CrvUSDYvMkUSDCrvUSDOracle<br>`0x3bd929574ff5dea4a23d3bb3b1ad0b95d0fe1e1d` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | CrvYearnVaultLeverage<br>`0x616dd28f0223dbbeb2eeb1f72dcb847c7e117b75` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | CrvYearnVaultLeverage2<br>`0xe47fe254107aab9def7a8d8d33b8551784f53f10` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | ERC4626Oracle<br>`0x1f4b81f8d61dda8a2752be59a9af9a9fb37c9ead` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | ERC4626VaultLeverage<br>`0x0b0e943d2cbae1da34ac6fbb7cd15b6cf05759b7` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | ETHEETHPendlePTOracle<br>`0xa621a3809fda139c7aa63d7736d2e3eb0b351d0b` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | ETHRedStoneOracle<br>`0x97131b50cf5206633ec9d7bd5d1e5949809ea389` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | ETHRSETHPendlePTOracle<br>`0x49c27c15dbb239c4943c5f86361da724f8d1f8af` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | ETHRSWETHPendlePTOracle<br>`0x22436aed9fe5a6408537e748280cb25a6d78978b` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | ETHSWETHOracle<br>`0xfef192cabf37a2396a8665f42f9a499a52baa185` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | GhoYvGhoCrvUSDOracle<br>`0x50710f355652439f7fcc752c58c15e6ae7626092` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | MockSwapBridgeAndCall<br>`0x99093fdf0c026695c2549ae5ee14bc8f8ad7f986` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | PxETHYvStETHPxETHOracle<br>`0x0d3fc4979349732b0c74fde9ce6dfb124ab8178b` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | StableYieldDistribution<br>`0x9dc7b2130e478c5810dc0cdbd46b9d479b2e1ac4` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | StakedTokenIncentivesController<br>`0xeb8c48d3e505da1113d8eef1c7cf587767c25591` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | SturdySiloStrategy<br>`0x094fa191db73b0f6dc2092b903d03b28384817e1` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | TBTCEBTCOracle<br>`0x74f27507abe7a10395c2b2e4dc019c4a62418f3e` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | TBTCSwBTCOracle<br>`0x4bd8bcd78ff3440e11ee8356cd006d58510925b7` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | TBTCYvTBTCWBTCOracle<br>`0x0b70f7093394ed748a4d1d72225df723256e3785` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | USDCCrvUSD0USD0PPOracle<br>`0xca262a0e6f46d70d81400341c04afb479a42d13d` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | USDCUSD0PPOracle<br>`0x0d1039bec12cb320161bbd5578c62f1f8294d4b3` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | USDCUSDYOracle<br>`0xeee4ecddbb6145839e52f5bc177331db56f26c6c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | USDCYvUSDCRUSDYOracle<br>`0x78852021ce063012a79b9f7d443a70e988585ed7` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | VariableYieldDistribution<br>`0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | contamination review | YieldDistributorAdapter<br>`0xba4c10a7afa6376c47dabb9bedf349ea3a08170f` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | AggregatorDataProvider<br>`0x69764e3e0671747a7768a1c1afb7c0c39868cc9e` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | AggregatorFactory<br>`0x7520aa7f8dfa6c2f5024f419b33c7c221a647c51` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | AprOracle<br>`0xf7be7370005896c720c2a84da870e041acf41a4d` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | BalancerswapAdapter<br>`0xdad951530ef3a823d835ef34367a96f5b9077cdb` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | CrvUSDYv3CRVCrvUSDOracle<br>`0x680f851a3796ab1aa1204ca8dd2214ef170d1a2d` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | CrvUSDYv3CRVCrvUSDOracle<br>`0x6f7c66f09922c04218b54a04261fca2310c76adc` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | CrvUSDYv3CRVCrvUSDOracle<br>`0xa460cc3dc111e42939512b29390e576f8506d213` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | CrvUSDYvMkUSDCrvUSDOracle<br>`0xe0dd70c18976ad7334354234c73ce2a4b749f5f0` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | CurveswapAdapter<br>`0x4827b1bb7fac4bef01273cde0abab695c32402a7` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | CurveswapAdapter<br>`0xef9e51d2ada9a4b1a2a7de9fff46465653ef7d53` | project_anchor | unknown | live | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | ERC4626Oracle<br>`0x3723d77a72e829cb367b4f0cdf35b9b95dc3e57d` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | ERC4626Oracle<br>`0xa34fe4d13ca737d0b1f8d9c169cbd044c56f17ad` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | RewardConfig<br>`0x169a808d414d18f0e5482213b7c77f5b348fc05a` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | SturdyPairDeployer<br>`0x797b173a2c31fd34b0bebf5f0c64ec70372b2d2f` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | SturdyPairRegistry<br>`0xd577429db653cd20effcd4977b2b41a6fd794a3b` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | SturdySiloAprOracle<br>`0x1b05ce15c459e257a82ca5ea57c36dd8d148fbad` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | SturdyWhitelist<br>`0xf0382a9eca5276d7b4bbcc503e4159c046c120ec` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | UniswapAdapter<br>`0xd23bfa060c2dcb70d4aeb78ebd2ee9a172cf5818` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x9c1737dd00927e6184d8e00168a68dbdf9dae537` | project_anchor | unknown | live | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xbf91fb39d56f2d6822930f5f940062f978a9877d` | project_anchor | unknown | live | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xc7a65e66ccba7499b3ced993195f3670dead97dd` | project_anchor | unknown | live | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | VariableInterestRate<br>`0x1f081b4b351e7bd2bfb5b097742127c9314cdf24` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | VariableInterestRate<br>`0x31993d7b2620b77d410ff185e54535fd713459f3` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | VariableInterestRate<br>`0x7e485966eea7f93e79646a7f4427a8004451fb0e` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | VariableInterestRate<br>`0x8ae2f8ef034cccc6d9beb9c76044ad46fadfaeb6` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | VariableInterestRate<br>`0xa5961b1e125b4dc17675a7635ede224fa1580832` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | VariableInterestRate<br>`0xcc46dc2e682951dcb92ef251aaddd4bb96d1532e` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | exact address book overlap | VariableInterestRate<br>`0xf4386d2d01aed337e3c3ccbca96f5e3ec5d81ac6` | project_anchor | unknown | live | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AeraStrategy<br>`0x6593bb7272237f36444dee44df46ab3b0233a9a0` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AeraStrategy<br>`0x7077ef67fe49ffb1260b893f2cd8475eeb72bbbb` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AeraV2Factory<br>`0xa206f00fbaab258c75afac35ab4a580fd3103c65` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AeraVaultDebtManager<br>`0x14456685725f9a80d34d3ea586e40b1d1d2c5a68` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AeraVaultDebtManager<br>`0x5c2ea5bf039460099111c9f311d28a18093d0a09` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AeraVaultDebtManager<br>`0xc3c8f4c35cbf9ea185330ff0090771f08cff78b7` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AeraVaultModulesFactory<br>`0x25f64d5f0cf5588387261682e794d5e8ff499453` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AGETHYearnVaultStrategy<br>`0xdab149804cfceb2b05ecccae3e798026793e0110` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AggregatorAccountant<br>`0xb825a2d7141f6c4c357d4198e6e2d20369bf5108` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AggregatorDataProvider<br>`0x1398f9dc8058036c4a71c1025c67abfcf443e88e` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AggregatorDataProvider<br>`0x83d14ab0f1576403bf5ad9b9a535e829612d9e6b` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AggregatorDataProvider<br>`0xb06559a9b136b3bee486f4c16e5375b0edad4a80` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | AggregatorV3WETHOracle<br>`0x911a874e4423df428f9f3cfb778abdddc98bfc81` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYv3CRVCrvUSDOracle<br>`0x1121ddd2007d2c6677e9987e289c3d52aaa9668c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYv3CRVCrvUSDOracle<br>`0xadbbc6051bdb840d0f21f9bea0d02a1023359824` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYv3CRVCrvUSDOracle<br>`0xaebee3d4306da0d6d0a34e51c87fbc79356f623d` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYv3CRVCrvUSDOracle<br>`0xb7a81ef9fc8495e3cb39687ecd012eda5168044b` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYv3CRVCrvUSDOracle<br>`0xb912bef156022d4d143c52f86b2dc1b24dd0c5c0` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYv3CRVCrvUSDOracle<br>`0xdb6ce32d36a9d807bab0c3947b31b06706758492` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYvMkUSDCrvUSDOracle<br>`0x71a0478d181d5fd5f14c46617a58d8e3095bbddb` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvUSDYvMkUSDCrvUSDOracle<br>`0xaa7fcaffdfaa0f96ccfc685a37da99957d07ecc4` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvYearnVaultLeverage<br>`0x7b3a75114b1e38cb89e38960e0687107beca2d0c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CrvYearnVaultLeverage<br>`0xe7c6beeb41f6a9f2576a318cb0aadf8994dfa9f4` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | CurveswapAdapter<br>`0xe66a2563db193c9a8cb99c7698142ed2c3c6c36e` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | DefaultDebtManager<br>`0xa23355ea4afddb111096f16406f11a6312a71cab` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | EmissionSchedule<br>`0x4ee2217c63fb94fda42c63a083b07cecbbb352dc` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | ERC4626Oracle<br>`0xe8384d78667dfc4b4d5eae90308ea95a58229166` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | ERC4626VaultLeverage<br>`0xe964295d09c540d0408f48ccafd4ec399bd3ed37` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | ETHRedStoneOracle<br>`0xdeda72c39b7b2fb0433af9cfc21031d5ef3b126a` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | ETHRSETHPendlePTOracle<br>`0xddb80a52cf2098647146e0bbeb2961502c322c37` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | ETHRSWETHPendlePTOracle<br>`0x68b444de25b84bf8c6b904eb572d7d1b6167e6b4` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | ETHRSWETHPendlePTOracle<br>`0x68f702ff07f14b057018ab8f3e0f7df03dd91f94` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | EZETHYearnVaultStrategy<br>`0x6d66cb69ed9bafc9b4da30bb187b3a93d5ebe920` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0x01812720944ee0a8e7f4077778bc5d1be9e419d5` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0x034c2e12474f6873f4de17236771e84b3b616f56` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0x371cd44e6ece0e275dda96e9363ec0c246604e2d` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0x5aa6ac07f430095f9a239150f96549666fca7444` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0x5ad6467e3e25cf83ddde1298f95fb0bff9910fce` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0x61892fa1b3a2757ee7163bf42c5e1735b47d03db` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0xbd87149156cebe7ef5cdd2669581a6cb236c84c3` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0xbf7bab7991ab76f8b9e8deab3daa0fa6b5024bc6` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0xdba0d88bc28a47707d62b8ac15cdd4383de63275` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | Gauge<br>`0xfbbd6558b19b9663cfde0e55800622361cb1a0ab` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | IncentiveVoting<br>`0xed2e83dd4ca97b8abe6d8e1a63eeccd82583b357` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | PendlePTLeverage<br>`0x5f63e9a52d288add75b4ea0a0742f16c8a5f1dbd` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | PxETHYvStETHPxETHOracle<br>`0x1be3c3e2427eb4faff65d67f831b3c0c9b72f660` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | STRDYLocker<br>`0xa70d1906b7779293ca7e12e369b2722cefb9fafd` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | STRDYVault<br>`0x1a3b229f2bc58517ad2f5cf6fcf53696b5dce04e` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | STRDYVault<br>`0x560e73e3280223b1696f664bbd9032cb8f783bb1` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdyLeverage<br>`0xa20db15743137a0b46ae2f4b94b9b1cf60aa5705` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0x0b7d884aaf53b3eb5a5ecb96651d956ccda10cec` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0x0b8c80fd9cac5570ff829416f0afce7af6f3c6f8` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0x137ff1d982928df3ec626e0a5b6cf7f015de3202` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0x6465267d2b15c08362109851688eb40dc2530090` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0x6f03c615a3e609d2cf149754cc55462b6477965c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0x88ebdad35b196ed8e39452c15db1159d249907f2` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0xafdf33922b129629d77dfcba1286ba0c669b8b57` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0xb3bf04a939aacff5bdcfc273ce4f36cf29f063db` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0xc2be0d0ad61ce051b5addcb105ff0d02c842e72c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0xcf815a0a6031682e9902966843011deac96c22cb` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0xe53ffd56fadc7030156069ae1b34de0ab8b703f4` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0xf2705f799cb96a70bc503a5db9d7190768203f4d` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | SturdySiloStrategy<br>`0xfd3a26d0685a683ffc8cd4614687ac266a915437` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | TBTCEBTCOracle<br>`0x9ce963c99fdc8e3563e3787f8557b96d31ca2f63` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | TimelockController<br>`0x8ee9e244f92fa158147b6114d0a8a53dee76e97d` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | TimelockController<br>`0xbe7f338c04f4a672d4c1ebee99648a6aac71d86e` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | TimelockController<br>`0xdf3914ad8e29509718ec1efc5037a7f1764380b8` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | TimelockController<br>`0xea34b9753ea7b2fb94d30a32a57226275d1840db` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x1acaa29a8877ff3e656172c5ac6bef10ec1bfc57` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x1d7c71b632e3a9af670954c2aea3d4c668e121a6` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x2015d205260322a3971e44f70809c51ef3a967aa` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x27d653a14a9813f9938673e363fd730a3d92deac` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x49d4abe740552dbc1442d126668904674b254f7a` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x778fbe09c945788df6b627e4d9771f0c475eec59` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x8ad2a44bd6b75f866ef5a38528fd8ee721d45043` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x8b65341ad2ffd03f399ba1edec05aa6e9baaba99` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x94c4b61ec63ba1bfea60a46f4c4e890b1d7e6ff5` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0x973d03cc98e18e31201f4b61187dc4310c3bc798` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0xa2c3ce1acb7b6b4cd289d9dc0c53a4226f386521` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0xce05d591020716c58425e81b0dbe2912bced30ca` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0xd32d748039bd32d68b3e492dde3af955be70ec14` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0xf265f91e07710a35b4667c48d7ad969b5e0c79ba` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | VariableInterestRate<br>`0xfe9f717417cb06219cb4b5b22b9efbbcdf89d32c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | veSTRDYGauge<br>`0x00341aa5871d3968725523050962415921b73b78` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | WEETHSYearnVaultStrategy<br>`0xb43f50b71e2b635e4778e32019609e7ad3b8e07c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | source verified unclassified | YieldDistributorAdapter<br>`0xda11c8d85203f9d616246754b8957f00892476b1` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03cdffa67145112254b8eb4128ad736d5e74510b` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0acd9d715e354861fe68d3cf339b9427d09a77ae` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bc7eccc616c28503db1202baab2d2868ae495e5` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2140fa34b5a9dcd4b09d2c67e289d504349091a0` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21d1b4347846bc13f612259d84e4082f6948f696` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22333ed5be33ac1035a1274459bda6fdc432f889` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x248c25d005f1507cbff74f4a4b01fd9cb3cd7a01` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39757318184eb155a378724fde34ca37123347df` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4281addd25182ba50b7c41fdd5a7aa2b736003e5` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x599343201d7a3f87485f8f5a2ee373d90e24e12b` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69917c0cc4466e586646bcfeb1f8c1fa3b5d9a00` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ab2d09f0daf65820a7270d9fc6802573fb8890d` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d3e10d45cae662c01ccb667243a0b8e3bd76a61` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x777be575a3bbac469c668dd71663033c0295d558` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a9330b9a5f4d752ba3bfdfcec9b56082c450841` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85db1a4ec3fc2dd880ae81464b1b946caa71c708` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9394bef0bcf9789caa0b48975c129bd009fe36f7` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5317a2fa6d9a40b87151c5cbe4fc6c2221257b1` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf4c561fd7ef5ac764f2152cec55a15507637e23` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1cf3c78a62bb637ebebc253c8c9b4a559e37683` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6ad7ba0018e59deb947caf1398e6b6e843202f1` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6d69c5ebf8dac0de33af0d07c8ee451096b5561` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7f362e11ac1d6770e1cd2fc7a765ecd13f33b71` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7754f7f445af23f265f9943e261cc6c76088d2b` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda4117b3e656d21b4f0fc3e0cad6d0129ca10547` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdcc12c85539a801ac876f43b80ec72644cc43bb3` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf04d03b444d777fde59ff9e6250431d31ef1a34` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9642bfb5db0e8237a058420a610696b3a62f159` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9a802c78ca6dbc5832cccc92b5063ee610543a4` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef4b18839f99cc721ebd174d5062289fb089a8f7` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb1846ad3b1b078606e832c21bc4a27d563e79f0` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc8406ff12c9cfaa7067e5113647fe672000c4aa` | non_address_book | unknown | unknown | unverified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | contamination review | ETHBasedOracle<br>`0xd8905400105358bab2eddcb78da3478368c343f1` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | AggregatorAccountant<br>`0x4534f53a81416a83f6baf5ac63c94aed1fea1303` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | AggregatorDataProvider<br>`0xd67da8636ae87b0cecbda2e66db58d4839722b52` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | AprOracle<br>`0xd7d7d7075139ce8ce02f97bd113f3f89f60851c3` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | NileswapAdapter<br>`0x09cf3b20f56bc3461a828e9c167db4a33addf855` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | RewardConfig<br>`0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | SturdyLeverageWihtoutFlashloanLinea<br>`0x5c0801270b471311e3bf7bb3637a7d12b13d747c` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | SturdyPairDeployer<br>`0x298d679cb18dece7271f56589859bc4da6c91f87` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |
| linea | source verified unclassified | SturdyPairRegistry<br>`0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d` | non_address_book | unknown | unknown | verified | n/a | `0x2532c3d363306fa6d625e4cbad996bcf534e8154` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/sturdy](https://skynet.certik.com/projects/sturdy) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Sturdy - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Sturdy%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts](https://www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf](https://reports.chainsecurity.com/Sturdy/ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [code4rena.com/reports/2022-05-sturdy](https://code4rena.com/reports/2022-05-sturdy) | Code4rena | Contest | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [sturdy-aura-integration-and-leverage.pdf](https://certificate.quantstamp.com/full/sturdy-aura-integration-and-leverage.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32](https://cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13925] skynet.certik.com/projects/sturdy — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It mentions a security audit completed by CertiK but does not include the actual audit report content, scope, or contract names.
- [13926] Sturdy - Zellic Audit Report.pdf — no match: Scope section explicitly lists DebtManager and SiloGateway as the two programs in scope. Audit date is September 15, 2023 from the cover page.
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts — no match: No scope section or contract names found in the provided text.
- [13928] ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf — no match: Scope explicitly lists SiloGateway.sol and DebtManager.sol as the only contracts in scope. Excluded contracts are VaultV3, ISilo implementations, and ZK verifier.
- [13930] code4rena.com/reports/2022-05-sturdy — no match: Scope section explicitly lists 5 smart contracts. Audit date found on cover page.
- [13931] sturdy-aura-integration-and-leverage.pdf — no match: Extracted 5 contracts from the scope section listing file paths. Audit date from cover page: February 15th 2023.
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32 — no match: No scope section or contract names found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sturdy - Zellic Audit Report.pdf | DebtManager | ambiguous — not counted | DebtManager (alternative) `0xf2d6c582609f77166914de80b4485084e54bdade` — deployed 2024-01-18 01:05:11+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0xcc06b025ab03ebddcc545912def1714b4da8f521` — deployed 2024-01-18 14:21:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x5528c5da505eea1a419a1d96a9cdf22845423075` — deployed 2024-01-18 01:19:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x3f1e01c07539b9e4941ab58b1258cbb6c4066063` — deployed 2024-01-12 21:14:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Sturdy - Zellic Audit Report.pdf | SiloGateway | ambiguous — not counted | SiloGateway (alternative) `0xc7e66709dbc9a6fe99064e19b1a755c2d9354c1a` — deployed 2024-01-18 01:07:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x4d07a57a893ae8a4de536827582b374050f4bed3` — deployed 2024-01-18 14:23:59+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed` — deployed 2024-01-12 21:20:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x987a70f5dc138c6316cabf648582a091866b8ae5` — deployed 2024-01-18 01:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf | SiloGateway | ambiguous — not counted | SiloGateway (alternative) `0xc7e66709dbc9a6fe99064e19b1a755c2d9354c1a` — deployed 2024-01-18 01:07:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x4d07a57a893ae8a4de536827582b374050f4bed3` — deployed 2024-01-18 14:23:59+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed` — deployed 2024-01-12 21:20:35+03 — liveness: live (current_address_book_code)<br>SiloGateway (alternative) `0x987a70f5dc138c6316cabf648582a091866b8ae5` — deployed 2024-01-18 01:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf | DebtManager | ambiguous — not counted | DebtManager (alternative) `0xf2d6c582609f77166914de80b4485084e54bdade` — deployed 2024-01-18 01:05:11+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0xcc06b025ab03ebddcc545912def1714b4da8f521` — deployed 2024-01-18 14:21:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x5528c5da505eea1a419a1d96a9cdf22845423075` — deployed 2024-01-18 01:19:23+03 — liveness: live (code_present_context)<br>DebtManager (alternative) `0x3f1e01c07539b9e4941ab58b1258cbb6c4066063` — deployed 2024-01-12 21:14:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2022-05-sturdy | CollateralAdapter | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | ConvexCurveLPVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | GeneralVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | LidoVault | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-05-sturdy | YieldManager | unmatched — not counted | — | listed in scope | no |
| sturdy-aura-integration-and-leverage.pdf | BALWSTETHWETHOracle | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | AuraBalancerLPVault | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | AURAWSTETHWETHLevSwap | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | LeverageSwapManager | unmatched — not counted | — | listed in scope section | no |
| sturdy-aura-integration-and-leverage.pdf | GeneralLevSwap | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x69764e3e0671747a7768a1c1afb7c0c39868cc9e` | AggregatorDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7520aa7f8dfa6c2f5024f419b33c7c221a647c51` | AggregatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf7be7370005896c720c2a84da870e041acf41a4d` | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdad951530ef3a823d835ef34367a96f5b9077cdb` | BalancerswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x680f851a3796ab1aa1204ca8dd2214ef170d1a2d` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f7c66f09922c04218b54a04261fca2310c76adc` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa460cc3dc111e42939512b29390e576f8506d213` | CrvUSDYv3CRVCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe0dd70c18976ad7334354234c73ce2a4b749f5f0` | CrvUSDYvMkUSDCrvUSDOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4827b1bb7fac4bef01273cde0abab695c32402a7` | CurveswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f1e01c07539b9e4941ab58b1258cbb6c4066063` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5528c5da505eea1a419a1d96a9cdf22845423075` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc06b025ab03ebddcc545912def1714b4da8f521` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf2d6c582609f77166914de80b4485084e54bdade` | DebtManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f4b81f8d61dda8a2752be59a9af9a9fb37c9ead` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3723d77a72e829cb367b4f0cdf35b9b95dc3e57d` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa34fe4d13ca737d0b1f8d9c169cbd044c56f17ad` | ERC4626Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfef192cabf37a2396a8665f42f9a499a52baa185` | ETHSWETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94c1201e12d5773410c35fe509dd0f4bb440d39d` | IncentiveDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d3fc4979349732b0c74fde9ce6dfb124ab8178b` | PxETHYvStETHPxETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x169a808d414d18f0e5482213b7c77f5b348fc05a` | RewardConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d07a57a893ae8a4de536827582b374050f4bed3` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x987a70f5dc138c6316cabf648582a091866b8ae5` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7e66709dbc9a6fe99064e19b1a755c2d9354c1a` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed` | SiloGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x797b173a2c31fd34b0bebf5f0c64ec70372b2d2f` | SturdyPairDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd577429db653cd20effcd4977b2b41a6fd794a3b` | SturdyPairRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b05ce15c459e257a82ca5ea57c36dd8d148fbad` | SturdySiloAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0382a9eca5276d7b4bbcc503e4159c046c120ec` | SturdyWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaeb3607ec434454ceb308f5cd540875efb54309a` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0669091f451142b3228171ae6ad794cf98288124` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd23bfa060c2dcb70d4aeb78ebd2ee9a172cf5818` | UniswapAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f081b4b351e7bd2bfb5b097742127c9314cdf24` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31993d7b2620b77d410ff185e54535fd713459f3` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7e485966eea7f93e79646a7f4427a8004451fb0e` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8ae2f8ef034cccc6d9beb9c76044ad46fadfaeb6` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5961b1e125b4dc17675a7635ede224fa1580832` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc46dc2e682951dcb92ef251aaddd4bb96d1532e` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4386d2d01aed337e3c3ccbca96f5e3ec5d81ac6` | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: n/a

Zero-match audit list:

- [13925] skynet.certik.com/projects/sturdy
- [13926] Sturdy - Zellic Audit Report.pdf
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts
- [13928] ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf
- [13930] code4rena.com/reports/2022-05-sturdy
- [13931] sturdy-aura-integration-and-leverage.pdf
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32

Fork inheritance lineage and inherited audits are included when available.
