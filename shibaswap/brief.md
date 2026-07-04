# Agentic Audit Brief: ShibaSwap

## Project Overview

- Project: ShibaSwap (`shibaswap`)
- Website: [https://www.shibaswap.com/](https://www.shibaswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.079Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 69 unique implementations (69 raw deployments)
- DeFi Llama TVL: $4,230,168.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 67 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (multicall, blocktimestamp, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 69; live-surface contracts included: 69 (69 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/68 (1.5%)
- Deployed-live implementations: 69 of 69 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/69
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 69
- Raw deployments: 69
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.4% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoneToken | unknown | ethereum | n/a | [`0x981303...8218d9`](./contracts/ethereum-1/0x9813037ee2218799597d83d4a5b6f3b6778218d9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoneLocker | unknown | ethereum | n/a | [`0xa404f6...9bcdc7`](./contracts/ethereum-1/0xa404f66b9278c4ab8428225014266b4b239bcdc7/) | ⚠️ Unaudited |
| boneMerkleDistributor | unknown | ethereum | n/a | [`0x205c41...03aeeb`](./contracts/ethereum-1/0x205c41bf932a34e14fea6b9b25585b3a5903aeeb/) | ⚠️ Unaudited |
| BoringCryptoDashboardV2 | unknown | ethereum | n/a | [`0x0ea28d...34adce`](./contracts/ethereum-1/0x0ea28d1ce1198b4af8a84e5c08c94a907f34adce/) | ⚠️ Unaudited |
| BoringCryptoTokenScan | unknown | ethereum | n/a | [`0x318a27...e34141`](./contracts/ethereum-1/0x318a278711fc24f32550af30e772686bbee34141/) | ⚠️ Unaudited |
| BuryBone | unknown | ethereum | n/a | [`0xf7a038...0202b3`](./contracts/ethereum-1/0xf7a0383750fef5abace57cc4c9ff98e3790202b3/) | ⚠️ Unaudited |
| BuryLeash | unknown | ethereum | n/a | [`0xa57d31...263a0b`](./contracts/ethereum-1/0xa57d319b3cf3ad0e4d19770f71e63cf847263a0b/) | ⚠️ Unaudited |
| BuryShib | unknown | ethereum | n/a | [`0xb4a812...2d81e4`](./contracts/ethereum-1/0xb4a81261b16b92af0b9f7c4a83f1e885132d81e4/) | ⚠️ Unaudited |
| Calcium | unknown | ethereum | n/a | [`0x205611...7c36e1`](./contracts/ethereum-1/0x20561172f791f915323241e885b4f7d5187c36e1/) | ⚠️ Unaudited |
| civMerkleDistributor | unknown | ethereum | n/a | [`0x8503bf...79ec6e`](./contracts/ethereum-1/0x8503bf17460aed3d19e5e09bbc2b8d70aa79ec6e/) | ⚠️ Unaudited |
| daiMerkleDistributor | unknown | ethereum | n/a | [`0x0075f0...90ca65`](./contracts/ethereum-1/0x0075f029648ffbd2026a7df1e9eff27ebc90ca65/) | ⚠️ Unaudited |
| DevBoneDistributor | unknown | ethereum | n/a | [`0x44c652...0fb479`](./contracts/ethereum-1/0x44c652d679d99bb406167de9651d2535850fb479/) | ⚠️ Unaudited |
| enmtMerkleDistributor | unknown | ethereum | n/a | [`0x69e592...0f2782`](./contracts/ethereum-1/0x69e592aa33f5c88de8dbd8791769cfdfba0f2782/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x24be63...35ef50`](./contracts/ethereum-1/0x24be6362664e362e97e653dcf3d031f3e435ef50/) | ⚠️ Unaudited |
| f9MerkleDistributor | unknown | ethereum | n/a | [`0x63837c...a83955`](./contracts/ethereum-1/0x63837c5b60fb7a29d5e8823a07ee98df3fa83955/) | ⚠️ Unaudited |
| LandAuction | unknown | ethereum | n/a | [`0x9ed0f7...82e918`](./contracts/ethereum-1/0x9ed0f787223ff1feb0cfb33a9207c646d182e918/) | ⚠️ Unaudited |
| LandAuctionV2 | unknown | ethereum | n/a | [`0x6b74c5...8ebffa`](./contracts/ethereum-1/0x6b74c5885d2e08efd80164965f8df002608ebffa/) | ⚠️ Unaudited |
| LandAuctionV3 | unknown | ethereum | n/a | [`0xf923ce...c21040`](./contracts/ethereum-1/0xf923cea81d4d56135e1c4e6e2199a865a5c21040/) | ⚠️ Unaudited |
| LandRegistry | unknown | ethereum | n/a | [`0x392eb1...5ca390`](./contracts/ethereum-1/0x392eb130d797a3476650a4b0d2cb1138055ca390/) | ⚠️ Unaudited |
| LandSaleETH | unknown | ethereum | n/a | [`0x39acd7...acd7ab`](./contracts/ethereum-1/0x39acd7281868d677adf24351fc018d7e1aacd7ab/) | ⚠️ Unaudited |
| LockLeash | unknown | ethereum | n/a | [`0xcdefd3...582380`](./contracts/ethereum-1/0xcdefd353ba028a77c1cfbbf9571e7a19df582380/) | ⚠️ Unaudited |
| LockShiboshi | unknown | ethereum | n/a | [`0xbe4e19...af5cc3`](./contracts/ethereum-1/0xbe4e191b22368bff26aa60be498575c477af5cc3/) | ⚠️ Unaudited |
| MerkleRewards | unknown | ethereum | n/a | [`0x08d3cb...c2d8c8`](./contracts/ethereum-1/0x08d3cbaf560fc2b220a24415543e685e1bc2d8c8/) | ⚠️ Unaudited |
| Muiclac | unknown | ethereum | n/a | [`0xc95b59...062d7f`](./contracts/ethereum-1/0xc95b59e71357280e44e61aa27e3a63ece3062d7f/) | ⚠️ Unaudited |
| MultiTokenLocker | unknown | ethereum | n/a | [`0x4bb0cd...9028f7`](./contracts/ethereum-1/0x4bb0cdd7c906151347ad915af07f6af50c9028f7/) | ⚠️ Unaudited |
| MyDataConsumerForLeash | unknown | ethereum | n/a | [`0x441cb5...bae562`](./contracts/ethereum-1/0x441cb57f2189e1df10f7010d55115f9374bae562/) | ⚠️ Unaudited |
| MyDataConsumerForShib | unknown | ethereum | n/a | [`0xfcd80c...08c60b`](./contracts/ethereum-1/0xfcd80cbf131d545d8279b665bc55a56b3b08c60b/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | ethereum | n/a | [`0xb40241...5576ac`](./contracts/ethereum-1/0xb40241624df0bd16e4f66abf297b0fce055576ac/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | ethereum | n/a | [`0x23df65...2916e0`](./contracts/ethereum-1/0x23df6504ab84adc2ea9ebd043b89b8ddc72916e0/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | ethereum | n/a | [`0xd66ea7...8e6e7d`](./contracts/ethereum-1/0xd66ea7d16f33ea95391aa278037d4676a98e6e7d/) | ⚠️ Unaudited |
| perlMerkleDistributor | unknown | ethereum | n/a | [`0x40ab98...3edf76`](./contracts/ethereum-1/0x40ab98602341a294c2b9d6a71266183edc3edf76/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0x683bd7...42a126`](./contracts/ethereum-1/0x683bd722a3c769b58ac9bc96023e1e12d942a126/) | ⚠️ Unaudited |
| Quoter | unknown | ethereum | n/a | [`0x486dd4...11cbd1`](./contracts/ethereum-1/0x486dd4ff6abd5b2f728192cda291d2ffb611cbd1/) | ⚠️ Unaudited |
| ryoMerkleDistributor | unknown | ethereum | n/a | [`0x773267...83b5e6`](./contracts/ethereum-1/0x7732674b5e5ffec4785aefdaea807eeca383b5e6/) | ⚠️ Unaudited |
| Sheboshi | unknown | ethereum | n/a | [`0x1b8e74...e24174`](./contracts/ethereum-1/0x1b8e7475b91e2303885c3cab1ef9725f3ce24174/) | ⚠️ Unaudited |
| ShibaswapV2Factory | unknown | ethereum | n/a | [`0xd9ce49...412509`](./contracts/ethereum-1/0xd9ce49caf7299daf18fffcb2b84a44fd33412509/) | ⚠️ Unaudited |
| ShibaUniFetch | unknown | ethereum | n/a | [`0x0e906a...473907`](./contracts/ethereum-1/0x0e906a0a798429fe5aa81e5052a5898dd0473907/) | ⚠️ Unaudited |
| SHIBOSHIS | unknown | ethereum | n/a | [`0x114500...d3fe7f`](./contracts/ethereum-1/0x11450058d796b02eb53e65374be59cff65d3fe7f/) | ⚠️ Unaudited |
| SOUActivityTracker | unknown | ethereum | n/a | [`0xa23c7d...428b67`](./contracts/ethereum-1/0xa23c7d20c5290ee92bccd8f8e88780e62d428b67/) | ⚠️ Unaudited |
| SOUCore | unknown | ethereum | n/a | [`0xdd2099...bbeca0`](./contracts/ethereum-1/0xdd2099946f99503a57dbc5e221c0db2c97bbeca0/) | ⚠️ Unaudited |
| SOUCoreCCIPReceiver | unknown | ethereum | n/a | [`0x990a98...2a9da6`](./contracts/ethereum-1/0x990a98270f24d15f63c0e95790c87f63112a9da6/) | ⚠️ Unaudited |
| SOUDistributionManager | unknown | ethereum | n/a | [`0x762245...b4aef5`](./contracts/ethereum-1/0x76224525656fd27ab8484e3c2a1fdcc2e5b4aef5/) | ⚠️ Unaudited |
| SOUDonationStrategy | unknown | ethereum | n/a | [`0x8e3fb1...7b9e45`](./contracts/ethereum-1/0x8e3fb1a74c16332cf08ae7124f4454b6c37b9e45/) | ⚠️ Unaudited |
| SOUMetadata | unknown | ethereum | n/a | [`0x705645...dd4a51`](./contracts/ethereum-1/0x705645881a24f44dbce81e4f3738e061b7dd4a51/) | ⚠️ Unaudited |
| SOUTokenSpecificPayoutStrategy | unknown | ethereum | n/a | [`0x710eef...70f225`](./contracts/ethereum-1/0x710eefbc1f09a2eb6c71d1a0e613a2a11b70f225/) | ⚠️ Unaudited |
| SOUUSDPayoutStrategy | unknown | ethereum | n/a | [`0xff8e27...6d074c`](./contracts/ethereum-1/0xff8e27bd30df36ecf96e1f5a322a4f08016d074c/) | ⚠️ Unaudited |
| starLMerkleDistributor | unknown | ethereum | n/a | [`0x95cf54...6a9b22`](./contracts/ethereum-1/0x95cf54120b4ee4f18d81e707213b78c5606a9b22/) | ⚠️ Unaudited |
| SwapRewardDistributor | unknown | ethereum | n/a | [`0xf71741...0a0f1c`](./contracts/ethereum-1/0xf71741c102e5295813912cf3b2fc07bc740a0f1c/) | ⚠️ Unaudited |
| SwapRouter | unknown | ethereum | n/a | [`0xb2ecc2...618963`](./contracts/ethereum-1/0xb2ecc25c0b3af0039d4d9dddfcec19e958618963/) | ⚠️ Unaudited |
| tBoneBoneDistributor | unknown | ethereum | n/a | [`0x34ad2d...36cb25`](./contracts/ethereum-1/0x34ad2d8a212cb7d6909d9b523bb5847aa236cb25/) | ⚠️ Unaudited |
| tBoneBoneMerkleDistributor | unknown | ethereum | n/a | [`0xbaaa2b...5b3238`](./contracts/ethereum-1/0xbaaa2b1f770c8aa0f86203c77a6b01e8315b3238/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x67b5b1...50fe5c`](./contracts/ethereum-1/0x67b5b1f23c373fb1252572f667d3f6e28b50fe5c/) | ⚠️ Unaudited |
| TopDog | unknown | ethereum | n/a | [`0x942356...17c8d7`](./contracts/ethereum-1/0x94235659cf8b805b2c658f9ea2d6d6ddbb17c8d7/) | ⚠️ Unaudited |
| TreasureFinder | unknown | ethereum | n/a | [`0x00e82e...c7d51d`](./contracts/ethereum-1/0x00e82e98a2119aa175eab206706efe0df2c7d51d/) | ⚠️ Unaudited |
| ufoMerkleDistributor | unknown | ethereum | n/a | [`0x49b7b2...5d1877`](./contracts/ethereum-1/0x49b7b2cba504088ff94615d8929d41f5535d1877/) | ⚠️ Unaudited |
| usdcMerkleDistributor | unknown | ethereum | n/a | [`0x9e1fdd...aae0fe`](./contracts/ethereum-1/0x9e1fddcfcf7c0917371497ac24d27db764aae0fe/) | ⚠️ Unaudited |
| usdtMerkleDistributor | unknown | ethereum | n/a | [`0x5140ec...d8110c`](./contracts/ethereum-1/0x5140ecb1aa2daa8427e724a6a5b3893617d8110c/) | ⚠️ Unaudited |
| V2Migrator | unknown | ethereum | n/a | [`0xbe2b8b...7da9ec`](./contracts/ethereum-1/0xbe2b8be84487c091f4a3fe1fc07acdfa277da9ec/) | ⚠️ Unaudited |
| vempTokenMerkleDistributor | unknown | ethereum | n/a | [`0xc2cb0c...fd172f`](./contracts/ethereum-1/0xc2cb0c2bde7436fb90c187ba072a5038b3fd172f/) | ⚠️ Unaudited |
| wbtcMerkleDistributor | unknown | ethereum | n/a | [`0x1e26de...53a2a4`](./contracts/ethereum-1/0x1e26deb7e2b83742384f4dfbb2470947f853a2a4/) | ⚠️ Unaudited |
| WeightOfLeash | unknown | ethereum | n/a | [`0xf790b7...ac3372`](./contracts/ethereum-1/0xf790b73f11fa1636d0d26db24bafb0f9b0ac3372/) | ⚠️ Unaudited |
| WeightOfShiboshi | unknown | ethereum | n/a | [`0x67cf6e...bbccd3`](./contracts/ethereum-1/0x67cf6ebc89cc50f09a10745c414192fd62bbccd3/) | ⚠️ Unaudited |
| wethMerkleDistributor | unknown | ethereum | n/a | [`0x67e0eb...24ca3d`](./contracts/ethereum-1/0x67e0eb8557437ab7393243c88a11f3c7e424ca3d/) | ⚠️ Unaudited |
| xFundMerkleDistributor | unknown | ethereum | n/a | [`0x6a425f...900bbe`](./contracts/ethereum-1/0x6a425fc7bc4ed7cfb3cd89cca9925aba3b900bbe/) | ⚠️ Unaudited |
| xLeashBoneDistributor | unknown | ethereum | n/a | [`0x68d494...44412b`](./contracts/ethereum-1/0x68d494e06f70d1dd13f9faacd122799d4044412b/) | ⚠️ Unaudited |
| xLeashBoneMerkleDistributor | unknown | ethereum | n/a | [`0x9495a0...5da26a`](./contracts/ethereum-1/0x9495a029ce34983c0bf0c45ee8214021e95da26a/) | ⚠️ Unaudited |
| xShibBoneDistributor | unknown | ethereum | n/a | [`0x526684...84e0f8`](./contracts/ethereum-1/0x526684cde5e9ed50703469e1e21e388ad084e0f8/) | ⚠️ Unaudited |
| xShibBoneMerkleDistributor | unknown | ethereum | n/a | [`0xa2c148...816458`](./contracts/ethereum-1/0xa2c14852974afe7755ea824260ca5df03b816458/) | ⚠️ Unaudited |
| zigMerkleDistributor | unknown | ethereum | n/a | [`0x2697b3...bc640f`](./contracts/ethereum-1/0x2697b304724f277f4ad498a2792d694917bc640f/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/shiba-swap](https://skynet.certik.com/projects/shiba-swap) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa404f6...9bcdc7`](./contracts/ethereum-1/0xa404f66b9278c4ab8428225014266b4b239bcdc7/) | BoneLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x205c41...03aeeb`](./contracts/ethereum-1/0x205c41bf932a34e14fea6b9b25585b3a5903aeeb/) | boneMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ea28d...34adce`](./contracts/ethereum-1/0x0ea28d1ce1198b4af8a84e5c08c94a907f34adce/) | BoringCryptoDashboardV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318a27...e34141`](./contracts/ethereum-1/0x318a278711fc24f32550af30e772686bbee34141/) | BoringCryptoTokenScan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7a038...0202b3`](./contracts/ethereum-1/0xf7a0383750fef5abace57cc4c9ff98e3790202b3/) | BuryBone | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa57d31...263a0b`](./contracts/ethereum-1/0xa57d319b3cf3ad0e4d19770f71e63cf847263a0b/) | BuryLeash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4a812...2d81e4`](./contracts/ethereum-1/0xb4a81261b16b92af0b9f7c4a83f1e885132d81e4/) | BuryShib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x205611...7c36e1`](./contracts/ethereum-1/0x20561172f791f915323241e885b4f7d5187c36e1/) | Calcium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8503bf...79ec6e`](./contracts/ethereum-1/0x8503bf17460aed3d19e5e09bbc2b8d70aa79ec6e/) | civMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0075f0...90ca65`](./contracts/ethereum-1/0x0075f029648ffbd2026a7df1e9eff27ebc90ca65/) | daiMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44c652...0fb479`](./contracts/ethereum-1/0x44c652d679d99bb406167de9651d2535850fb479/) | DevBoneDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69e592...0f2782`](./contracts/ethereum-1/0x69e592aa33f5c88de8dbd8791769cfdfba0f2782/) | enmtMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63837c...a83955`](./contracts/ethereum-1/0x63837c5b60fb7a29d5e8823a07ee98df3fa83955/) | f9MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ed0f7...82e918`](./contracts/ethereum-1/0x9ed0f787223ff1feb0cfb33a9207c646d182e918/) | LandAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b74c5...8ebffa`](./contracts/ethereum-1/0x6b74c5885d2e08efd80164965f8df002608ebffa/) | LandAuctionV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf923ce...c21040`](./contracts/ethereum-1/0xf923cea81d4d56135e1c4e6e2199a865a5c21040/) | LandAuctionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392eb1...5ca390`](./contracts/ethereum-1/0x392eb130d797a3476650a4b0d2cb1138055ca390/) | LandRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39acd7...acd7ab`](./contracts/ethereum-1/0x39acd7281868d677adf24351fc018d7e1aacd7ab/) | LandSaleETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdefd3...582380`](./contracts/ethereum-1/0xcdefd353ba028a77c1cfbbf9571e7a19df582380/) | LockLeash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe4e19...af5cc3`](./contracts/ethereum-1/0xbe4e191b22368bff26aa60be498575c477af5cc3/) | LockShiboshi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08d3cb...c2d8c8`](./contracts/ethereum-1/0x08d3cbaf560fc2b220a24415543e685e1bc2d8c8/) | MerkleRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc95b59...062d7f`](./contracts/ethereum-1/0xc95b59e71357280e44e61aa27e3a63ece3062d7f/) | Muiclac | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bb0cd...9028f7`](./contracts/ethereum-1/0x4bb0cdd7c906151347ad915af07f6af50c9028f7/) | MultiTokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x441cb5...bae562`](./contracts/ethereum-1/0x441cb57f2189e1df10f7010d55115f9374bae562/) | MyDataConsumerForLeash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcd80c...08c60b`](./contracts/ethereum-1/0xfcd80cbf131d545d8279b665bc55a56b3b08c60b/) | MyDataConsumerForShib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb40241...5576ac`](./contracts/ethereum-1/0xb40241624df0bd16e4f66abf297b0fce055576ac/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23df65...2916e0`](./contracts/ethereum-1/0x23df6504ab84adc2ea9ebd043b89b8ddc72916e0/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd66ea7...8e6e7d`](./contracts/ethereum-1/0xd66ea7d16f33ea95391aa278037d4676a98e6e7d/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40ab98...3edf76`](./contracts/ethereum-1/0x40ab98602341a294c2b9d6a71266183edc3edf76/) | perlMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x683bd7...42a126`](./contracts/ethereum-1/0x683bd722a3c769b58ac9bc96023e1e12d942a126/) | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x486dd4...11cbd1`](./contracts/ethereum-1/0x486dd4ff6abd5b2f728192cda291d2ffb611cbd1/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x773267...83b5e6`](./contracts/ethereum-1/0x7732674b5e5ffec4785aefdaea807eeca383b5e6/) | ryoMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8e74...e24174`](./contracts/ethereum-1/0x1b8e7475b91e2303885c3cab1ef9725f3ce24174/) | Sheboshi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9ce49...412509`](./contracts/ethereum-1/0xd9ce49caf7299daf18fffcb2b84a44fd33412509/) | ShibaswapV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e906a...473907`](./contracts/ethereum-1/0x0e906a0a798429fe5aa81e5052a5898dd0473907/) | ShibaUniFetch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114500...d3fe7f`](./contracts/ethereum-1/0x11450058d796b02eb53e65374be59cff65d3fe7f/) | SHIBOSHIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa23c7d...428b67`](./contracts/ethereum-1/0xa23c7d20c5290ee92bccd8f8e88780e62d428b67/) | SOUActivityTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd2099...bbeca0`](./contracts/ethereum-1/0xdd2099946f99503a57dbc5e221c0db2c97bbeca0/) | SOUCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x990a98...2a9da6`](./contracts/ethereum-1/0x990a98270f24d15f63c0e95790c87f63112a9da6/) | SOUCoreCCIPReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x762245...b4aef5`](./contracts/ethereum-1/0x76224525656fd27ab8484e3c2a1fdcc2e5b4aef5/) | SOUDistributionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e3fb1...7b9e45`](./contracts/ethereum-1/0x8e3fb1a74c16332cf08ae7124f4454b6c37b9e45/) | SOUDonationStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x705645...dd4a51`](./contracts/ethereum-1/0x705645881a24f44dbce81e4f3738e061b7dd4a51/) | SOUMetadata | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x710eef...70f225`](./contracts/ethereum-1/0x710eefbc1f09a2eb6c71d1a0e613a2a11b70f225/) | SOUTokenSpecificPayoutStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff8e27...6d074c`](./contracts/ethereum-1/0xff8e27bd30df36ecf96e1f5a322a4f08016d074c/) | SOUUSDPayoutStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95cf54...6a9b22`](./contracts/ethereum-1/0x95cf54120b4ee4f18d81e707213b78c5606a9b22/) | starLMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf71741...0a0f1c`](./contracts/ethereum-1/0xf71741c102e5295813912cf3b2fc07bc740a0f1c/) | SwapRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2ecc2...618963`](./contracts/ethereum-1/0xb2ecc25c0b3af0039d4d9dddfcec19e958618963/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34ad2d...36cb25`](./contracts/ethereum-1/0x34ad2d8a212cb7d6909d9b523bb5847aa236cb25/) | tBoneBoneDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaaa2b...5b3238`](./contracts/ethereum-1/0xbaaa2b1f770c8aa0f86203c77a6b01e8315b3238/) | tBoneBoneMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67b5b1...50fe5c`](./contracts/ethereum-1/0x67b5b1f23c373fb1252572f667d3f6e28b50fe5c/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x942356...17c8d7`](./contracts/ethereum-1/0x94235659cf8b805b2c658f9ea2d6d6ddbb17c8d7/) | TopDog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e82e...c7d51d`](./contracts/ethereum-1/0x00e82e98a2119aa175eab206706efe0df2c7d51d/) | TreasureFinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49b7b2...5d1877`](./contracts/ethereum-1/0x49b7b2cba504088ff94615d8929d41f5535d1877/) | ufoMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e1fdd...aae0fe`](./contracts/ethereum-1/0x9e1fddcfcf7c0917371497ac24d27db764aae0fe/) | usdcMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5140ec...d8110c`](./contracts/ethereum-1/0x5140ecb1aa2daa8427e724a6a5b3893617d8110c/) | usdtMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe2b8b...7da9ec`](./contracts/ethereum-1/0xbe2b8be84487c091f4a3fe1fc07acdfa277da9ec/) | V2Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2cb0c...fd172f`](./contracts/ethereum-1/0xc2cb0c2bde7436fb90c187ba072a5038b3fd172f/) | vempTokenMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e26de...53a2a4`](./contracts/ethereum-1/0x1e26deb7e2b83742384f4dfbb2470947f853a2a4/) | wbtcMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf790b7...ac3372`](./contracts/ethereum-1/0xf790b73f11fa1636d0d26db24bafb0f9b0ac3372/) | WeightOfLeash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67cf6e...bbccd3`](./contracts/ethereum-1/0x67cf6ebc89cc50f09a10745c414192fd62bbccd3/) | WeightOfShiboshi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e0eb...24ca3d`](./contracts/ethereum-1/0x67e0eb8557437ab7393243c88a11f3c7e424ca3d/) | wethMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a425f...900bbe`](./contracts/ethereum-1/0x6a425fc7bc4ed7cfb3cd89cca9925aba3b900bbe/) | xFundMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68d494...44412b`](./contracts/ethereum-1/0x68d494e06f70d1dd13f9faacd122799d4044412b/) | xLeashBoneDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9495a0...5da26a`](./contracts/ethereum-1/0x9495a029ce34983c0bf0c45ee8214021e95da26a/) | xLeashBoneMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x526684...84e0f8`](./contracts/ethereum-1/0x526684cde5e9ed50703469e1e21e388ad084e0f8/) | xShibBoneDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2c148...816458`](./contracts/ethereum-1/0xa2c14852974afe7755ea824260ca5df03b816458/) | xShibBoneMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2697b3...bc640f`](./contracts/ethereum-1/0x2697b304724f277f4ad498a2792d694917bc640f/) | zigMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
