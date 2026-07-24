# Agentic Audit Brief: ShibaSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: ShibaSwap (`shibaswap`)
- Website: [https://www.shibaswap.com/](https://www.shibaswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 115 unique implementations (116 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $4,230,168.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for ShibaSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x03f7724180aa6b939894b5ca4314783b0b36b329`, chain 1)
- UnnamedContract (`0x115934131916c8b277dd010ee02de363c09d037c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 113 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 2 of 115 unique; 113 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/69
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 115
- Raw deployments: 116
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoneLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa404f66b9278c4ab8428225014266b4b239bcdc7` | ⚠️ Unaudited |
| boneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205c41bf932a34e14fea6b9b25585b3a5903aeeb` | ⚠️ Unaudited |
| BoneToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9813037ee2218799597d83d4a5b6f3b6778218d9` | ⚠️ Unaudited |
| BoringCryptoDashboardV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea28d1ce1198b4af8a84e5c08c94a907f34adce` | ⚠️ Unaudited |
| BoringCryptoTokenScan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318a278711fc24f32550af30e772686bbee34141` | ⚠️ Unaudited |
| BuryBone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7a0383750fef5abace57cc4c9ff98e3790202b3` | ⚠️ Unaudited |
| BuryLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa57d319b3cf3ad0e4d19770f71e63cf847263a0b` | ⚠️ Unaudited |
| BuryShib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a81261b16b92af0b9f7c4a83f1e885132d81e4` | ⚠️ Unaudited |
| Calcium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20561172f791f915323241e885b4f7d5187c36e1` | ⚠️ Unaudited |
| civMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8503bf17460aed3d19e5e09bbc2b8d70aa79ec6e` | ⚠️ Unaudited |
| daiMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0075f029648ffbd2026a7df1e9eff27ebc90ca65` | ⚠️ Unaudited |
| DevBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c652d679d99bb406167de9651d2535850fb479` | ⚠️ Unaudited |
| enmtMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e592aa33f5c88de8dbd8791769cfdfba0f2782` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x24be6362664e362e97e653dcf3d031f3e435ef50`; ethereum `0x9d2a9b80b132097f1f546d26fe4792b80227cb1d` | ⚠️ Unaudited |
| f9MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63837c5b60fb7a29d5e8823a07ee98df3fa83955` | ⚠️ Unaudited |
| LandAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed0f787223ff1feb0cfb33a9207c646d182e918` | ⚠️ Unaudited |
| LandAuctionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b74c5885d2e08efd80164965f8df002608ebffa` | ⚠️ Unaudited |
| LandAuctionV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf923cea81d4d56135e1c4e6e2199a865a5c21040` | ⚠️ Unaudited |
| LandRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392eb130d797a3476650a4b0d2cb1138055ca390` | ⚠️ Unaudited |
| LandSaleETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39acd7281868d677adf24351fc018d7e1aacd7ab` | ⚠️ Unaudited |
| LockLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdefd353ba028a77c1cfbbf9571e7a19df582380` | ⚠️ Unaudited |
| LockShiboshi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4e191b22368bff26aa60be498575c477af5cc3` | ⚠️ Unaudited |
| MerkleRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d3cbaf560fc2b220a24415543e685e1bc2d8c8` | ⚠️ Unaudited |
| Muiclac | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95b59e71357280e44e61aa27e3a63ece3062d7f` | ⚠️ Unaudited |
| MultiTokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb0cdd7c906151347ad915af07f6af50c9028f7` | ⚠️ Unaudited |
| MyDataConsumerForLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441cb57f2189e1df10f7010d55115f9374bae562` | ⚠️ Unaudited |
| MyDataConsumerForShib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd80cbf131d545d8279b665bc55a56b3b08c60b` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb40241624df0bd16e4f66abf297b0fce055576ac` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23df6504ab84adc2ea9ebd043b89b8ddc72916e0` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd66ea7d16f33ea95391aa278037d4676a98e6e7d` | ⚠️ Unaudited |
| perlMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ab98602341a294c2b9d6a71266183edc3edf76` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683bd722a3c769b58ac9bc96023e1e12d942a126` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x486dd4ff6abd5b2f728192cda291d2ffb611cbd1` | ⚠️ Unaudited |
| ryoMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7732674b5e5ffec4785aefdaea807eeca383b5e6` | ⚠️ Unaudited |
| Sheboshi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e7475b91e2303885c3cab1ef9725f3ce24174` | ⚠️ Unaudited |
| ShibaswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ce49caf7299daf18fffcb2b84a44fd33412509` | ⚠️ Unaudited |
| ShibaUniFetch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e906a0a798429fe5aa81e5052a5898dd0473907` | ⚠️ Unaudited |
| SHIBOSHIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11450058d796b02eb53e65374be59cff65d3fe7f` | ⚠️ Unaudited |
| SOUActivityTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23c7d20c5290ee92bccd8f8e88780e62d428b67` | ⚠️ Unaudited |
| SOUCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd2099946f99503a57dbc5e221c0db2c97bbeca0` | ⚠️ Unaudited |
| SOUCoreCCIPReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990a98270f24d15f63c0e95790c87f63112a9da6` | ⚠️ Unaudited |
| SOUDistributionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76224525656fd27ab8484e3c2a1fdcc2e5b4aef5` | ⚠️ Unaudited |
| SOUDonationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3fb1a74c16332cf08ae7124f4454b6c37b9e45` | ⚠️ Unaudited |
| SOUMetadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705645881a24f44dbce81e4f3738e061b7dd4a51` | ⚠️ Unaudited |
| SOUTokenSpecificPayoutStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710eefbc1f09a2eb6c71d1a0e613a2a11b70f225` | ⚠️ Unaudited |
| SOUUSDPayoutStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff8e27bd30df36ecf96e1f5a322a4f08016d074c` | ⚠️ Unaudited |
| starLMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cf54120b4ee4f18d81e707213b78c5606a9b22` | ⚠️ Unaudited |
| SwapRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71741c102e5295813912cf3b2fc07bc740a0f1c` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb2ecc25c0b3af0039d4d9dddfcec19e958618963` | ⚠️ Unaudited |
| tBoneBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ad2d8a212cb7d6909d9b523bb5847aa236cb25` | ⚠️ Unaudited |
| tBoneBoneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaaa2b1f770c8aa0f86203c77a6b01e8315b3238` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67b5b1f23c373fb1252572f667d3f6e28b50fe5c` | ⚠️ Unaudited |
| TopDog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94235659cf8b805b2c658f9ea2d6d6ddbb17c8d7` | ⚠️ Unaudited |
| TreasureFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e82e98a2119aa175eab206706efe0df2c7d51d` | ⚠️ Unaudited |
| ufoMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b7b2cba504088ff94615d8929d41f5535d1877` | ⚠️ Unaudited |
| usdcMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e1fddcfcf7c0917371497ac24d27db764aae0fe` | ⚠️ Unaudited |
| usdtMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5140ecb1aa2daa8427e724a6a5b3893617d8110c` | ⚠️ Unaudited |
| V2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe2b8be84487c091f4a3fe1fc07acdfa277da9ec` | ⚠️ Unaudited |
| vempTokenMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2cb0c2bde7436fb90c187ba072a5038b3fd172f` | ⚠️ Unaudited |
| wbtcMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e26deb7e2b83742384f4dfbb2470947f853a2a4` | ⚠️ Unaudited |
| WeightOfLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf790b73f11fa1636d0d26db24bafb0f9b0ac3372` | ⚠️ Unaudited |
| WeightOfShiboshi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67cf6ebc89cc50f09a10745c414192fd62bbccd3` | ⚠️ Unaudited |
| wethMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e0eb8557437ab7393243c88a11f3c7e424ca3d` | ⚠️ Unaudited |
| xFundMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a425fc7bc4ed7cfb3cd89cca9925aba3b900bbe` | ⚠️ Unaudited |
| xLeashBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d494e06f70d1dd13f9faacd122799d4044412b` | ⚠️ Unaudited |
| xLeashBoneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9495a029ce34983c0bf0c45ee8214021e95da26a` | ⚠️ Unaudited |
| xShibBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526684cde5e9ed50703469e1e21e388ad084e0f8` | ⚠️ Unaudited |
| xShibBoneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c14852974afe7755ea824260ca5df03b816458` | ⚠️ Unaudited |
| zigMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2697b304724f277f4ad498a2792d694917bc640f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254704 | `0x03f7724180aa6b939894b5ca4314783b0b36b329` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254705 | `0x115934131916c8b277dd010ee02de363c09d037c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2628fb862525d68ad14c79a2ec212ef77a00c5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32831cb27f48655db0d6d006503a1e53d76071d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aff2370ab9a264816ec1e7af006327bae2435f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbabac2a7f2fe7386fdddaaa9f200c3dac5a85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7a29e218bd01f47a3b8cee88cb33363e69d741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5de869e3e62b0fb2c15573246ba3bb3fd97a2275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6078889cdc1d06a0971c4f8a10d373133cd3a294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b22506242ce7fedb14ccb096d1fd865d4aaea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e632b1cd25aba7849e4157dde4d7cad34c0e72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddc59f316af4cfe4c4b80db3011a4d3f61305e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f2b3df45faaa14300249983943b2016f21fd3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701c09256eec660989be2ccd4ad2d3051cf46946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a74e586b405ea282dba1222dd86abab85ae8e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e31030eb166ae6f29e77956be79f7b2711158d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826528037b4174d8d778811daa18e83e091e4921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d9e5823c13f471d8ae7b1ef4db83944569192e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x860a79124538c778d9aafae5971dcd5d979a1afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8758986a05b37b5f32fdaeed1f1b5fe6809da5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a24aedc3403ac953a1885d97fab72a3b362b285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ebd7f0db06899cf051e0879d4c41c5616f77ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4a390f3318fec0e8d91117295ca1dfaa0a0f910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7261dc6fdc759133db901a3efc4b97f76bba47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab13166060ae38e4f2b6b49a4dbecc4f6eea4278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafde3d902437cfa5fb9af66b32c180bbeb9b6df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15f9703d3b036414cfde605f35810dc7f92d3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8adf0585d263f3ba6f73bce1ccc56b821581ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb99f5fb41f6cef38fe75dfa991514a299217eff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbadad6dfbb38f4cd300625292a5a8d0a05b6729f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdbf23afa3ed5383f1684c28cf018ba71d149766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02d6a8109fa9661d7c121ae76cb7ab93c548f4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0e74b4e161b286e15e8c5f972d9166df0294d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc37f3a3b49e11fd0e88c757cbfafb61237d27509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca335e086de6b546e152a8c67bdb20656750872f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd385a9e742508f8ddc3ef8dea3aa2788a4467ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3b65ce365233e272b46ef933366e2e86a22c37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43c2f31906140d148b18ba8f2f87c5671d0413a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4bb145925a01eca34d0f2c046022cc6d1172d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8cb5b1daae08ef3547d67cfcefac154cb889000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2904595d95dadba655f445b138ed2c36eec821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5bc6c59fecf634a2d1c09b4f2e780497c713e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe2a4804a6fb74b1bbef5c07fb22d92f65baf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6a144ebd3c5e9840621d0240cd29ffb33a4c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefaed650f1a94801806bb110019d9b0dc79531a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5f0147f8893ed4d20f8ce467c30e5e7348bb58` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 45
- Live contracts: 0
- Unknown liveness contracts: 45
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=45

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x2628fb862525d68ad14c79a2ec212ef77a00c5ff` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32831cb27f48655db0d6d006503a1e53d76071d2` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3aff2370ab9a264816ec1e7af006327bae2435f0` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dbabac2a7f2fe7386fdddaaa9f200c3dac5a85f` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e7a29e218bd01f47a3b8cee88cb33363e69d741` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5de869e3e62b0fb2c15573246ba3bb3fd97a2275` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6078889cdc1d06a0971c4f8a10d373133cd3a294` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62b22506242ce7fedb14ccb096d1fd865d4aaea9` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69e632b1cd25aba7849e4157dde4d7cad34c0e72` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ddc59f316af4cfe4c4b80db3011a4d3f61305e3` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f2b3df45faaa14300249983943b2016f21fd3a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x701c09256eec660989be2ccd4ad2d3051cf46946` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a74e586b405ea282dba1222dd86abab85ae8e0d` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e31030eb166ae6f29e77956be79f7b2711158d0` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x826528037b4174d8d778811daa18e83e091e4921` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83d9e5823c13f471d8ae7b1ef4db83944569192e` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x860a79124538c778d9aafae5971dcd5d979a1afb` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8758986a05b37b5f32fdaeed1f1b5fe6809da5cf` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a24aedc3403ac953a1885d97fab72a3b362b285` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d2a9b80b132097f1f546d26fe4792b80227cb1d` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ebd7f0db06899cf051e0879d4c41c5616f77ed1` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa4a390f3318fec0e8d91117295ca1dfaa0a0f910` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7261dc6fdc759133db901a3efc4b97f76bba47e` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab13166060ae38e4f2b6b49a4dbecc4f6eea4278` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafde3d902437cfa5fb9af66b32c180bbeb9b6df1` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb15f9703d3b036414cfde605f35810dc7f92d3c1` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8adf0585d263f3ba6f73bce1ccc56b821581ab8` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb99f5fb41f6cef38fe75dfa991514a299217eff7` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbadad6dfbb38f4cd300625292a5a8d0a05b6729f` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbdbf23afa3ed5383f1684c28cf018ba71d149766` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc02d6a8109fa9661d7c121ae76cb7ab93c548f4c` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0e74b4e161b286e15e8c5f972d9166df0294d35` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc37f3a3b49e11fd0e88c757cbfafb61237d27509` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca335e086de6b546e152a8c67bdb20656750872f` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd385a9e742508f8ddc3ef8dea3aa2788a4467ea3` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3b65ce365233e272b46ef933366e2e86a22c37c` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd43c2f31906140d148b18ba8f2f87c5671d0413a` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4bb145925a01eca34d0f2c046022cc6d1172d61` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8cb5b1daae08ef3547d67cfcefac154cb889000` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf2904595d95dadba655f445b138ed2c36eec821` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5bc6c59fecf634a2d1c09b4f2e780497c713e4f` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xebe2a4804a6fb74b1bbef5c07fb22d92f65baf18` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef6a144ebd3c5e9840621d0240cd29ffb33a4c14` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefaed650f1a94801806bb110019d9b0dc79531a8` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff5f0147f8893ed4d20f8ce467c30e5e7348bb58` | non_address_book | unknown | unknown | unverified | n/a | `0xc7d0445ac2947760b3dd388b8586adf079972bf3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/shiba-swap](https://skynet.certik.com/projects/shiba-swap) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20999] skynet.certik.com/projects/shiba-swap — no match: Only one contract explicitly listed as assessed: BoneToken.sol. The report is from CertiK Skynet for ShibaSwap, with audit delivered on 8/2/2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/shiba-swap | BoneToken.sol | unmatched — not counted | — | Listed under 'Assessed Contracts' in the audit report. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20999] skynet.certik.com/projects/shiba-swap

Fork inheritance lineage and inherited audits are included when available.
