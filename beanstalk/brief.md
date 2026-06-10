# Agentic Audit Brief: Beanstalk

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Beanstalk (`beanstalk`)
- Website: [https://bean.money](https://bean.money)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T21:53:08.965Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-7a87
- Chains: arbitrum, ethereum
- Contract surface: 244 unique implementations (1222 raw deployments)
- DeFi Llama TVL: $6,456,546.87
- On-chain TVL (included contracts): $142,549,167.87
- TVL by chain: Arbitrum $142,549,167.87

## Project Description

Beanstalk is a decentralized algorithmic stablecoin protocol that issues the BEAN stablecoin, using a credit-based model and a decentralized price oracle to maintain its peg. It also includes the Basin Exchange, a decentralized exchange for swapping stablecoins and other assets.

### Architecture

Beanstalk relies on Oracles for price data to maintain the BEAN peg and facilitate Basin Exchange swaps. Non-Bean Assets provide the external tokens used in Basin Exchange pools, while BeaNFTs serve as ecosystem incentives, all governed by shared multisig infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 34/167 (20.4%)
- Verified + Unaudited implementations: 133
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 244
- Raw deployments: 1222
- Audits discovered: 7
- Scoreable audits (matched contracts): 7
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/beanstalk/information))
- ASD (verified + unaudited TVL): $142,549,167.87
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 1 unknown
- Tier 1 coverage: 1.2% (Code4rena, Cyfrin, Immunefi)
- Note: This protocol is classified as [declining]. ASD of $142,549,167.87 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 22 | 13.2% | n/a |
| unknown | Tier 2 | 19 | 11.4% | 2022-07 |
| Code4rena | Tier 1 | 1 | 0.6% | 2023-07 |
| Cyfrin | Tier 1 | 1 | 0.6% | 2023-06 |
| Halborn | Tier 2 | 1 | 0.6% | 2023-04 |
| Immunefi | Tier 1 | 1 | 0.6% | n/a |

## Contract Surface

### ✅ Verified + Audited (34)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BDVFacet | unknown | ethereum | 10 deployments: ethereum [`0x33b630...6cf4b9`](./contracts/ethereum-1/0x33b63042865242739ba410ac32ab68723e6cf4b9/); ethereum `0x491207...a31efd`; ethereum `0xa20e9d...b0cc2b`; ethereum `0xa2c2ba...971e82`; ethereum `0xaef84c...dcfc89`; ethereum `0xb752bf...32cca1`; ethereum `0xc17ed2...b9d44a`; ethereum `0xcf738e...b4af1b`; arbitrum `0x4da6aa...cb0426`; arbitrum `0xa7d49d...26711f` | ✅ Audited |
| Bean | unknown | ethereum | [`0xdc59ac...52e5db`](./contracts/ethereum-1/0xdc59ac4fefa32293a95889dc396682858d52e5db/) | ✅ Audited |
| ClaimFacet | unknown | ethereum | 5 deployments: ethereum [`0x024a12...d233d8`](./contracts/ethereum-1/0x024a129bb564da019aca23b41891329eadd233d8/); ethereum `0x5ad02a...95d4c6`; ethereum `0x7762a9...387b60`; arbitrum `0x76ef6b...6afebc`; arbitrum `0xd14b7a...46ddcc` | ✅ Audited |
| ConvertFacet | unknown | ethereum | 17 deployments: ethereum [`0x16fb90...b1e03d`](./contracts/ethereum-1/0x16fb90cc743bda7c9ec6d5360bb4a313d2b1e03d/); ethereum `0x1c55d0...35c934`; ethereum `0x38dbe7...e47ba6`; ethereum `0x3f8ce4...2e5416`; ethereum `0x6334da...6a821c`; ethereum `0x649d4b...3fe801`; ethereum `0x6838d4...b861d6`; ethereum `0x8257c2...ef675f`; ethereum `0xc1a92d...dc593d`; ethereum `0xc2e90a...b304c2`; ethereum `0xeb1b83...70626c`; ethereum `0xedac36...41f385`; ethereum `0xeea799...22d191`; arbitrum `0x242a33...ec3b09`; arbitrum `0xce333c...86b321`; arbitrum `0xd7a7ec...3b3b85`; arbitrum `0xfb33af...f76d71` | ✅ Audited |
| FarmFacet | unknown | arbitrum | 3 deployments: ethereum `0x6039c6...cbd394`; arbitrum [`0x24103b...eec05f`](./contracts/arbitrum-42161/0x24103b8141f97d9d8794fe2ee0ed96f577eec05f/); arbitrum `0xd4a079...0061fe` | ✅ Audited |
| Fertilizer | unknown | ethereum | 9 deployments: ethereum [`0x057997...8d8366`](./contracts/ethereum-1/0x057997024bcb46986e7f864976846a40d38d8366/); ethereum `0x1b3f47...452610`; ethereum `0x39cdaf...f452fd`; ethereum `0x402c84...d36cb6`; ethereum `0x573bf5...6bc4f7`; ethereum `0x5f68b4...be5812`; ethereum `0xe2d950...f5d0d2`; arbitrum `0xfefefe...5f1490`; arbitrum `0xfefefe...4845b5` | ✅ Audited |
| FertilizerFacet | unknown | arbitrum | 4 deployments: ethereum `0x729672...3534c7`; ethereum `0xfc7ed1...335b6c`; arbitrum [`0x6f252e...b4c1db`](./contracts/arbitrum-42161/0x6f252ecf79af1bd57c48047a8b109001ffb4c1db/); arbitrum `0x7b2bda...68e342` | ✅ Audited |
| FertilizerPreMint | unknown | ethereum | 2 deployments: ethereum [`0x0f5aaa...829584`](./contracts/ethereum-1/0x0f5aaa36f0339e7946eee22b23c991f192829584/); ethereum `0xb151ea...7ea680` | ✅ Audited |
| FieldFacet | unknown | ethereum | 10 deployments: ethereum [`0x24a30c...c281ec`](./contracts/ethereum-1/0x24a30cc4b8342b8a62de921cd4038f4645c281ec/); ethereum `0x491d04...93ffab`; ethereum `0x5e93b6...99cd4f`; ethereum `0x656b50...a04fb6`; ethereum `0x79801f...a0eae2`; ethereum `0xdfc0a7...da557c`; arbitrum `0x7667b5...660dea`; arbitrum `0xa80a1f...e9885c`; arbitrum `0xa90859...8b3726`; arbitrum `0xe6f9ce...5c6513` | ✅ Audited |
| FundraiserFacet | unknown | ethereum | 3 deployments: ethereum [`0x19c067...d137dc`](./contracts/ethereum-1/0x19c0674071d068be6c0b3900629618738bd137dc/); ethereum `0x538c76...fc7a8e`; ethereum `0x79c753...faf001` | ✅ Audited |
| GovernanceFacet | unknown | ethereum | 3 deployments: ethereum [`0x88540c...035308`](./contracts/ethereum-1/0x88540cb124ceecfd0ae95f86d3eb6670b6035308/); ethereum `0xdbc8cb...f31328`; ethereum `0xf480ee...7667c4` | ✅ Audited |
| InitBip2 | unknown | ethereum | [`0x18593a...bea60f`](./contracts/ethereum-1/0x18593ab45e41d29ee26fe8dd88c343973abea60f/) | ✅ Audited |
| InitBip5 | unknown | ethereum | [`0xf1f5e5...23e2cf`](./contracts/ethereum-1/0xf1f5e5df82a6962731e3bd9f67ec6b1d4a23e2cf/) | ✅ Audited |
| InitBip7 | unknown | ethereum | [`0xa3ab7e...f5dc83`](./contracts/ethereum-1/0xa3ab7e120c133455476db3c5ba7a792c91f5dc83/) | ✅ Audited |
| InitFundraiser | unknown | ethereum | [`0x2a56f4...fcd5da`](./contracts/ethereum-1/0x2a56f4d01b1ed5a0c75560fd9ecbdfa913fcd5da/) | ✅ Audited |
| InitHotFix2 | unknown | ethereum | [`0xb6e69a...86a99e`](./contracts/ethereum-1/0xb6e69a891e12812f7b41dbc15317858fd386a99e/) | ✅ Audited |
| InitHotFix3 | unknown | ethereum | [`0x544f0c...c37d57`](./contracts/ethereum-1/0x544f0c022d5fbc28a2f234a1816543cfc2c37d57/) | ✅ Audited |
| InitHotFix4 | unknown | ethereum | [`0x860f6c...9ae893`](./contracts/ethereum-1/0x860f6c6dd805745aceb1502493d03615ec9ae893/) | ✅ Audited |
| InitHotFix5 | unknown | ethereum | [`0xc25465...90f7eb`](./contracts/ethereum-1/0xc2546544b39b257e67f8785b560f3582db90f7eb/) | ✅ Audited |
| L2MigrationFacet | operational_periphery | ethereum | 2 deployments: ethereum [`0xb7ea01...63f5bb`](./contracts/ethereum-1/0xb7ea01231e518cd22e118165b290f5cc3263f5bb/); ethereum `0xc1e088...5624c5` | ✅ Audited |
| LibClaim | unknown | ethereum | 3 deployments: ethereum [`0x698293...c2b400`](./contracts/ethereum-1/0x6982938c28bd93d6f06c5c65d970aa8687c2b400/); ethereum `0x805b73...fe74f1`; ethereum `0xe222d5...0d0458` | ✅ Audited |
| LibConvert | unknown | arbitrum | 10 deployments: ethereum `0x72e5a7...9d00da`; ethereum `0xc119b6...9cff27`; ethereum `0xce333c...86b321`; ethereum `0xd4e364...a87140`; ethereum `0xf3e15e...23f8a3`; arbitrum [`0x11d8fa...1525da`](./contracts/arbitrum-42161/0x11d8fa118a451d32a4fd355fed2b61ff371525da/); arbitrum `0x26648b...ec08e1`; arbitrum `0x3b6db5...a3eaab`; arbitrum `0x865254...bfa8bb`; arbitrum `0xb6acd1...4349e2` | ✅ Audited |
| LibIncentive | unknown | arbitrum | 6 deployments: ethereum `0xa1a766...7ec1b7`; ethereum `0xdc4915...a26c63`; ethereum `0xf48b9f...458c1f`; arbitrum [`0x16fb90...b1e03d`](./contracts/arbitrum-42161/0x16fb90cc743bda7c9ec6d5360bb4a313d2b1e03d/); arbitrum `0xe2f050...e4caa7`; arbitrum `0xefe94b...ddee56` | ✅ Audited |
| MarketplaceFacet | unknown | ethereum | 10 deployments: ethereum [`0x0c9f43...327776`](./contracts/ethereum-1/0x0c9f436fbef08914c1c68fe04bd573de6e327776/); ethereum `0x3600d9...3245f1`; ethereum `0x67e18c...1940d4`; ethereum `0x79ebc5...c7ef71`; ethereum `0xb932fe...0dd5ff`; ethereum `0xd870aa...94f1b2`; ethereum `0xdefcf5...534a6a`; ethereum `0xf5f0c7...f4e1d5`; arbitrum `0x646444...a354cd`; arbitrum `0xca03ab...48c3c5` | ✅ Audited |
| OracleFacet | operational_periphery | arbitrum | 3 deployments: ethereum `0xba9536...e71d44`; arbitrum [`0x320aae...d02be0`](./contracts/arbitrum-42161/0x320aaebb1a644bed2b86038ede49b81072d02be0/); arbitrum `0x48fa35...3da580` | ✅ Audited |
| OwnershipFacet | unknown | arbitrum | 2 deployments: ethereum `0x5d4528...b18cf7`; arbitrum [`0x2cb2d1...034464`](./contracts/arbitrum-42161/0x2cb2d140c42b79f602535e2447e7afa980034464/) | ✅ Audited |
| PauseFacet | unknown | arbitrum | 3 deployments: ethereum `0xeab439...e91229`; arbitrum [`0x7ee247...1f971b`](./contracts/arbitrum-42161/0x7ee24734b97902e6081d702514776416f11f971b/); arbitrum `0x926cfc...4abe16` | ✅ Audited |
| Pipeline | unknown | arbitrum | [`0xb1be00...4c91b0`](./contracts/arbitrum-42161/0xb1be000644bd25996b0d9c2f7a6d6ba3954c91b0/) | ✅ Audited |
| SeasonFacet | unknown | ethereum | 20 deployments: ethereum [`0x11d8fa...1525da`](./contracts/ethereum-1/0x11d8fa118a451d32a4fd355fed2b61ff371525da/); ethereum `0x197406...520d27`; ethereum `0x3981e1...74ffd5`; ethereum `0x43ffdb...c42dde`; ethereum `0x5c2db1...b55880`; ethereum `0x6a9cba...e451d2`; ethereum `0x7667b5...660dea`; ethereum `0x83d6e6...28a3ac`; ethereum `0x92458b...0d66cf`; ethereum `0x9c04df...b8921d`; ethereum `0x9ed038...8d39d9`; ethereum `0xb46902...c3235b`; ethereum `0xb5818d...76eaa1`; ethereum `0xcee260...5801da`; ethereum `0xe7f0c5...148424`; arbitrum `0x40c868...3fbe4b`; arbitrum `0x552322...bae290`; arbitrum `0x64504c...b9d536`; arbitrum `0xd1a006...15fb70`; arbitrum `0xf6c77e...a15b9e` | ✅ Audited |
| SiloFacet | unknown | ethereum | 21 deployments: ethereum [`0x07cbe1...bbde74`](./contracts/ethereum-1/0x07cbe1273d9a7eb0cfd10463bf1102d2fbbbde74/); ethereum `0x14047a...cfa4e3`; ethereum `0x19c03b...7ade8d`; ethereum `0x214195...cc00a3`; ethereum `0x2a02a8...b2f3a0`; ethereum `0x448d33...608065`; ethereum `0x47e991...8061a6`; ethereum `0x5bb733...33fd35`; ethereum `0x5e81bd...a1fba7`; ethereum `0x6530a7...d3fb26`; ethereum `0x7d98d7...2def4f`; ethereum `0x97fc5e...074f15`; ethereum `0x98465c...469247`; ethereum `0xca0a5d...fd337c`; ethereum `0xcc8342...2e5133`; ethereum `0xe81140...fe0b0a`; ethereum `0xf1bcb0...dbb4ca`; ethereum `0xf73db3...a15e97`; ethereum `0xfb33af...f76d71`; arbitrum `0x567834...927094`; arbitrum `0xa89fbf...7f9a1d` | ✅ Audited |
| TokenFacet | token | ethereum | 7 deployments: ethereum [`0x146f86...9b87fc`](./contracts/ethereum-1/0x146f86c2ef039f9176bc2434d3da5919c19b87fc/); ethereum `0x495401...b2f577`; ethereum `0x50eb00...2ead4a`; ethereum `0x8d00ef...1106cf`; arbitrum `0x4d26ca...c4933a`; arbitrum `0x915d09...ea84cd`; arbitrum `0xf8b5fa...d6a38d` | ✅ Audited |
| UnripeFacet | unknown | arbitrum | 7 deployments: ethereum `0x1cd310...7d6181`; ethereum `0x261b3a...44eb0a`; ethereum `0xaf2652...11cc39`; ethereum `0xd64bb5...8b6535`; ethereum `0xebd6fc...dc0f1a`; arbitrum [`0x0b980a...d61687`](./contracts/arbitrum-42161/0x0b980ab39f9fdf3226b98bc32d96ec180fd61687/); arbitrum `0x87f1fb...184354` | ✅ Audited |
| Well | unknown | ethereum | 2 deployments: ethereum [`0xbea000...e4715d`](./contracts/ethereum-1/0xbea0000113b0d182f4064c86b71c315389e4715d/); ethereum `0xbea0e1...872bad` | ✅ Audited |
| WhitelistFacet | unknown | ethereum | 7 deployments: ethereum [`0x2a6a6b...3e0ef4`](./contracts/ethereum-1/0x2a6a6bbd632834a9190585474e1855f6423e0ef4/); ethereum `0x47da29...974a2a`; ethereum `0xaea0e6...fddad0`; ethereum `0xde3a22...fbbb02`; ethereum `0xf286bb...930795`; arbitrum `0x7ef1d0...addc07`; arbitrum `0x7f8558...b7afab` | ✅ Audited |

### ⚠️ Verified + Unaudited (133)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0x357510...cf4dbe` | ⚠️ Unaudited |
| BeanstalkERC20 | token | ethereum | 6 deployments: ethereum [`0x1bea00...224449`](./contracts/ethereum-1/0x1bea0050e63e05fbb5d8ba2f10cf5800b6224449/); ethereum `0x1bea3c...13716d`; ethereum `0xbea000...d1efab`; arbitrum `0x1bea05...d27543`; arbitrum `0x1bea05...66d788`; arbitrum `0xbea000...7812e4` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | governance | arbitrum | 188 deployments: arbitrum [`0x0050d5...397af7`](./contracts/arbitrum-42161/0x0050d50cecc09ce311d4e0ab14377bfcd0397af7/); arbitrum `0x01dd3c...587edd`; arbitrum `0x02f6bc...942182`; arbitrum `0x033809...b823df`; arbitrum `0x0526ed...0d6d13`; arbitrum `0x08fbe2...dcdff1`; arbitrum `0x0ae175...7f3809`; arbitrum `0x0c9679...64e143`; arbitrum `0x0ca784...79e732`; arbitrum `0x0d02b6...ffd516`; arbitrum `0x0d390b...3384d2`; arbitrum `0x0e9b5c...ac5a17`; arbitrum `0x10e138...764493`; arbitrum `0x126b9a...f6f849`; arbitrum `0x17298e...b91d20`; arbitrum `0x17b844...9d35c4`; arbitrum `0x182308...92c799`; arbitrum `0x1893d4...84688c`; arbitrum `0x1a2b9e...082268`; arbitrum `0x1b3224...6ffccf`; arbitrum `0x1b9749...41e432`; arbitrum `0x1cde96...c6a642`; arbitrum `0x1cf6ec...210611`; arbitrum `0x1d416d...555d6e`; arbitrum `0x1d9fab...f05f2d`; arbitrum `0x1f4abf...88e5ff`; arbitrum `0x1fa1c3...a637ae`; arbitrum `0x214774...dfd47f`; arbitrum `0x244ea8...e598cf`; arbitrum `0x248946...47a77d`; arbitrum `0x278212...b1151b`; arbitrum `0x2829f6...fd104c`; arbitrum `0x294622...bbe32c`; arbitrum `0x2c592b...23dac0`; arbitrum `0x2cde70...006854`; arbitrum `0x2fb0a0...56fd0f`; arbitrum `0x31aa84...0a7905`; arbitrum `0x34ea4f...40a4ae`; arbitrum `0x3607e4...5e2ca7`; arbitrum `0x37b300...889090`; arbitrum `0x382f3c...350a11`; arbitrum `0x39fdd7...417880`; arbitrum `0x3a00c8...50e754`; arbitrum `0x3aa743...057a04`; arbitrum `0x3c6abd...2cc904`; arbitrum `0x3ed9d8...568c4e`; arbitrum `0x412304...803de9`; arbitrum `0x42081a...b48ec2`; arbitrum `0x4258e5...4902d7`; arbitrum `0x43c570...070062`; arbitrum `0x44d3ab...502051`; arbitrum `0x453e2d...c8e0e3`; arbitrum `0x457afc...7c13e4`; arbitrum `0x46de66...c121a3`; arbitrum `0x476de9...2af349`; arbitrum `0x47c0e8...352778`; arbitrum `0x48fd0a...25a115`; arbitrum `0x496000...4e6349`; arbitrum `0x498145...e19600`; arbitrum `0x4b05c0...9182a3`; arbitrum `0x4b3f43...7e8566`; arbitrum `0x4c594a...bdb1e4`; arbitrum `0x4dacfb...52b2f9`; arbitrum `0x507c9a...427670`; arbitrum `0x526584...b62fc5`; arbitrum `0x56bb7f...7d2e48`; arbitrum `0x575f36...b95bd7`; arbitrum `0x58dbe5...c51ab9`; arbitrum `0x5a0f82...7b6e23`; arbitrum `0x5ab0b1...b4297e`; arbitrum `0x5ba6ff...1184b8`; arbitrum `0x5d750c...6adc84`; arbitrum `0x5dda1e...3dd378`; arbitrum `0x5ddc9a...480dbe`; arbitrum `0x5e4c65...1f6d62`; arbitrum `0x5eb7ca...44770c`; arbitrum `0x60ce55...41723a`; arbitrum `0x626fd7...6231a7`; arbitrum `0x6573ba...65d1ee`; arbitrum `0x660e7a...c936f5`; arbitrum `0x66b074...89fd25`; arbitrum `0x67db13...2597ac`; arbitrum `0x682c4f...3b8e73`; arbitrum `0x69c17b...c08535`; arbitrum `0x69ff5b...33301d`; arbitrum `0x6b2271...3f3c54`; arbitrum `0x6b3730...7fe654`; arbitrum `0x6c7796...8ba9a2`; arbitrum `0x6d77f5...52a4ea`; arbitrum `0x700019...5bbbf9`; arbitrum `0x75dd10...0b991c`; arbitrum `0x778356...e0cd36`; arbitrum `0x77d76e...7ce0aa`; arbitrum `0x7aaee6...6ff871`; arbitrum `0x7af187...539f47`; arbitrum `0x7b5fdb...e6ab87`; arbitrum `0x7b9845...9a06b8`; arbitrum `0x7d5ca9...401dc3`; arbitrum `0x807eb1...88c511`; arbitrum `0x815d58...fd0c65`; arbitrum `0x8548a9...6e2393`; arbitrum `0x85fbb1...10939e`; arbitrum `0x8abe00...545c82`; arbitrum `0x8afe9b...4df5d6`; arbitrum `0x8b48e1...9f1a8a`; arbitrum `0x920d90...01da54`; arbitrum `0x92aad8...8c62c7`; arbitrum `0x92e6b8...4dd939`; arbitrum `0x92f0de...17d8a6`; arbitrum `0x931405...379eb3`; arbitrum `0x942d00...f9b882`; arbitrum `0x947fec...87af72`; arbitrum `0x94cd88...635eb7`; arbitrum `0x96991f...2342ec`; arbitrum `0x9b8ddc...a2c9cc`; arbitrum `0x9bda3a...4a967b`; arbitrum `0x9d75b7...706af9`; arbitrum `0xa0a624...f69e66`; arbitrum `0xa0af7e...2a4647`; arbitrum `0xa3403c...b2cfb7`; arbitrum `0xa44bcd...3f74ec`; arbitrum `0xa45989...d848eb`; arbitrum `0xa64344...eed599`; arbitrum `0xab5745...4095a7`; arbitrum `0xac812c...b31a8e`; arbitrum `0xad81bc...93c8b1`; arbitrum `0xaeb20e...37bc83`; arbitrum `0xafaebe...2458c1`; arbitrum `0xb20bd2...eb649b`; arbitrum `0xb39bfa...f6deb0`; arbitrum `0xb46ac9...916a14`; arbitrum `0xb4a1f9...d27cda`; arbitrum `0xb4c75e...c08882`; arbitrum `0xb98512...134a76`; arbitrum `0xbc78d5...c1b61e`; arbitrum `0xbc81b4...07a481`; arbitrum `0xbf1cd5...7e8885`; arbitrum `0xbfc294...2bc09b`; arbitrum `0xbff434...5c0d49`; arbitrum `0xc0552c...628f2a`; arbitrum `0xc195ba...4ba72c`; arbitrum `0xc38d1a...ddc4d7`; arbitrum `0xc38d44...5c6a57`; arbitrum `0xc3a633...480285`; arbitrum `0xc59d26...339d18`; arbitrum `0xc67fe6...54cf09`; arbitrum `0xc8d14c...8f3d12`; arbitrum `0xc952f3...707d66`; arbitrum `0xcad222...595820`; arbitrum `0xcb35fe...65ace4`; arbitrum `0xcb6501...df6847`; arbitrum `0xcd11b9...05233a`; arbitrum `0xce2adf...ffd80a`; arbitrum `0xcfcaa2...c15e84`; arbitrum `0xd05ad7...639c2a`; arbitrum `0xd0b5f6...67c177`; arbitrum `0xd542b9...5e194c`; arbitrum `0xd896f8...d38c21`; arbitrum `0xd9fcb2...b67240`; arbitrum `0xdb4bdd...6bd27e`; arbitrum `0xddb296...8384fe`; arbitrum `0xdeccf9...855df0`; arbitrum `0xe3e8e2...0784b1`; arbitrum `0xe4a492...b077ef`; arbitrum `0xe5b5be...ed83a2`; arbitrum `0xe60f94...aacab2`; arbitrum `0xe7bef4...7b8538`; arbitrum `0xe7f278...a1dd24`; arbitrum `0xe83770...c6ebef`; arbitrum `0xea84b5...3130d5`; arbitrum `0xea9b4d...54cc47`; arbitrum `0xec2e90...3180b2`; arbitrum `0xec3dfe...5a2ca9`; arbitrum `0xed85d7...a63896`; arbitrum `0xef1b41...7d58c3`; arbitrum `0xefc506...4f2b71`; arbitrum `0xf0e892...c3bd22`; arbitrum `0xf56e6c...014b1f`; arbitrum `0xf613f9...f03bcf`; arbitrum `0xf6bacc...4baedc`; arbitrum `0xf8abb3...13eeaa`; arbitrum `0xf94463...296255`; arbitrum `0xfaedf2...e633d6`; arbitrum `0xfc06bb...7a43b9`; arbitrum `0xfc66e4...f6f83d`; arbitrum `0xfe2c83...cede2c`; arbitrum `0xfe45c3...5678e1`; arbitrum `0xff5247...ab75e1` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ApprovalFacet | unknown | arbitrum | 3 deployments: ethereum `0xbdec07...68e12f`; arbitrum [`0x0d6df5...c83d59`](./contracts/arbitrum-42161/0x0d6df5e737ef25913f6f2fa1649d0f9530c83d59/); arbitrum `0x557935...61bad6` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| ArbSys | unknown | arbitrum | [`0xa2d436...90e02a`](./contracts/arbitrum-42161/0xa2d4364e06d5c432f55f43530b1d2f1e9890e02a/) | ⚠️ Unaudited |
| ARM | unknown | arbitrum | [`0xe06b0e...b64e4b`](./contracts/arbitrum-42161/0xe06b0e8c4bd455153e8794ad7ea8ff5a14b64e4b/) | ⚠️ Unaudited |
| ARMProxy | unknown | arbitrum | [`0xc311a2...62a145`](./contracts/arbitrum-42161/0xc311a21e6fef769344eb1515588b9d535662a145/) | ⚠️ Unaudited |
| BaseFeeContract | unknown | ethereum | [`0x842929...f223ac`](./contracts/ethereum-1/0x84292919cb64b590c0131550483707e43ef223ac/) | ⚠️ Unaudited |
| BeaNFT | token | ethereum | 4 deployments: ethereum [`0x347a4a...10960f`](./contracts/ethereum-1/0x347a4a1c2cc3d3afda86e60c74fac6285810960f/); ethereum `0x459895...58d9e9`; ethereum `0xa755a6...722a79`; ethereum `0xd23ca4...6c1f27` | ⚠️ Unaudited |
| BeanstalkGetters | unknown | ethereum | [`0x2585bc...c599f7`](./contracts/ethereum-1/0x2585bc446edbd99de17a7a1a85ec328372c599f7/) | ⚠️ Unaudited |
| BeanstalkPrice | operational_periphery | ethereum | 7 deployments: ethereum [`0x4bed6c...e1e1b4`](./contracts/ethereum-1/0x4bed6cb142b7d474242d87f4796387deb9e1e1b4/); ethereum `0xcb6496...dcf6af`; ethereum `0xcd88be...a1e4d1`; ethereum `0xd04740...db1e51`; ethereum `0xf2c2b7...112530`; arbitrum `0xa560c3...f6d321`; arbitrum `0xc218f5...6ac9e7` | ⚠️ Unaudited |
| Budget | unknown | ethereum | 6 deployments: ethereum [`0x1a10b9...523fc5`](./contracts/ethereum-1/0x1a10b9406cd3afb7668f78a78720ca460c523fc5/); ethereum `0x74d01f...904858`; ethereum `0x83a758...b64783`; ethereum `0xaa420e...12a551`; ethereum `0xbe9130...c6bba1`; ethereum `0xe80f77...ad60d9` | ⚠️ Unaudited |
| BudgetFacet | unknown | ethereum | 3 deployments: ethereum [`0x6c90e5...751df6`](./contracts/ethereum-1/0x6c90e5ce27461e31b8954dfa2bc5101507751df6/); ethereum `0xadb0e2...2ba15f`; ethereum `0xe1a3f2...cf3801` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | arbitrum | 47 deployments: arbitrum [`0x0a7b23...c696a1`](./contracts/arbitrum-42161/0x0a7b237027b1c351c4bd3a6c1906a47005c696a1/); arbitrum `0x12aa79...048233`; arbitrum `0x1ae1d8...085bed`; arbitrum `0x1af4ea...ae4196`; arbitrum `0x1cf392...da0d0c`; arbitrum `0x1fd4f4...9639b4`; arbitrum `0x24da67...887a00`; arbitrum `0x2aef2d...f61284`; arbitrum `0x2ff501...72989a`; arbitrum `0x3c8186...536c19`; arbitrum `0x407320...47a6e5`; arbitrum `0x42d55f...632342`; arbitrum `0x445f5d...68a8f3`; arbitrum `0x48377d...c60ee7`; arbitrum `0x4ebcf1...b9d9f4`; arbitrum `0x55a10f...f54d57`; arbitrum `0x60d6a3...29ce95`; arbitrum `0x614778...fbbad7`; arbitrum `0x61bb38...fc41a7`; arbitrum `0x6643a4...d75446`; arbitrum `0x67b042...9e3dad`; arbitrum `0x7765bd...1aef33`; arbitrum `0x798638...7a8c69`; arbitrum `0x80adc2...9fde45`; arbitrum `0x82a121...b54e8d`; arbitrum `0x8643d0...d27ced`; arbitrum `0x867730...65ea6d`; arbitrum `0x86af3d...40dbf9`; arbitrum `0x8728c1...c53a74`; arbitrum `0x8965f1...cd13b4`; arbitrum `0x8a2f15...32cdaf`; arbitrum `0x919d18...4779bf`; arbitrum `0x929d24...30e7f6`; arbitrum `0x93a227...5738bd`; arbitrum `0xa5b375...ae5cdf`; arbitrum `0xa6fa0d...abac17`; arbitrum `0xaade6e...50a7ce`; arbitrum `0xae8e05...2a9e65`; arbitrum `0xb0f001...fe980d`; arbitrum `0xb6b82a...53d39b`; arbitrum `0xc2befc...309de5`; arbitrum `0xc8f8df...589102`; arbitrum `0xd5fdf8...907c81`; arbitrum `0xd68804...4823b0`; arbitrum `0xe48f89...ea3d5f`; arbitrum `0xf55298...8f2c10`; arbitrum `0xf9d503...77a578` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | core_logic | arbitrum | 51 deployments: arbitrum [`0x07d7a9...dd4200`](./contracts/arbitrum-42161/0x07d7a985832369ef32f0491aa4cd44ffa9dd4200/); arbitrum `0x090d39...6cbd99`; arbitrum `0x09d1cf...c2d0ae`; arbitrum `0x0d13d3...58e100`; arbitrum `0x0d657b...533193`; arbitrum `0x1a1079...800fb5`; arbitrum `0x1aefe4...052407`; arbitrum `0x263295...4a8c50`; arbitrum `0x288b1b...cb0e59`; arbitrum `0x28b047...22d1eb`; arbitrum `0x28b575...8f1436`; arbitrum `0x2d1d3f...d30374`; arbitrum `0x32eea1...3b1d08`; arbitrum `0x3be326...7982e2`; arbitrum `0x3fd1d7...f1459b`; arbitrum `0x4afdde...818093`; arbitrum `0x4f3ef0...6a4ccd`; arbitrum `0x53606d...77f28c`; arbitrum `0x593674...c8270d`; arbitrum `0x5b1f92...7bbf7c`; arbitrum `0x5d8343...d089b7`; arbitrum `0x5dfdaf...daa5b2`; arbitrum `0x65030a...b34089`; arbitrum `0x68b49d...c8f1c0`; arbitrum `0x6c8fee...a20eae`; arbitrum `0x70544b...4d374f`; arbitrum `0x7d16f2...b34431`; arbitrum `0x809df5...f08259`; arbitrum `0x97cb0f...2cd032`; arbitrum `0x9c4a69...8505ac`; arbitrum `0xa50938...bc5777`; arbitrum `0xa970d6...2ddb5c`; arbitrum `0xabb35c...a2bea6`; arbitrum `0xac939a...e715ca`; arbitrum `0xacdd3f...a15dcc`; arbitrum `0xb473be...26f91c`; arbitrum `0xbc9223...a27dbe`; arbitrum `0xc707f7...42cbf5`; arbitrum `0xc93c17...4b79ba`; arbitrum `0xca26ad...3ec035`; arbitrum `0xcba063...bdd70a`; arbitrum `0xcbed22...f8725f`; arbitrum `0xcf241c...e4f87c`; arbitrum `0xd5b44d...dbe90a`; arbitrum `0xd76b54...d40558`; arbitrum `0xd9193b...f3708b`; arbitrum `0xecd7e2...9443b0`; arbitrum `0xf1f89d...da90ba`; arbitrum `0xf32798...6f5180`; arbitrum `0xf3988b...e3fa9c`; arbitrum `0xfefe28...b095a6` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | core_logic | arbitrum | 2 deployments: arbitrum [`0x0c6dda...672d02`](./contracts/arbitrum-42161/0x0c6dda1c33e62ca3a8ceb4ae2485f08510672d02/); arbitrum `0xc40de7...af367e` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | core_logic | arbitrum | 4 deployments: arbitrum [`0x821646...8939db`](./contracts/arbitrum-42161/0x82164603b46a79c0ddcf2e622e242f16428939db/); arbitrum `0xa11ce8...adabed`; arbitrum `0xe408f6...9608c2`; arbitrum `0xf76d0f...10be01` | ⚠️ Unaudited |
| CallProxy | unknown | arbitrum | [`0x031828...1dcf87`](./contracts/arbitrum-42161/0x031828231b6829208c1b2aad4ecfea2c011dcf87/) | ⚠️ Unaudited |
| CommitStore | unknown | arbitrum | 48 deployments: arbitrum [`0x032b20...9ee2c1`](./contracts/arbitrum-42161/0x032b209a6b7a00336047505b55a4cbfbd29ee2c1/); arbitrum `0x060331...b47d20`; arbitrum `0x0ce42c...c7abc5`; arbitrum `0x1d464c...ccea13`; arbitrum `0x1d7ea2...9d22ca`; arbitrum `0x1e0e8b...2ceac0`; arbitrum `0x254c44...9a8258`; arbitrum `0x26291e...968167`; arbitrum `0x310cec...bb90bf`; arbitrum `0x4063d6...3a1165`; arbitrum `0x46679c...a33623`; arbitrum `0x4d6924...73e64b`; arbitrum `0x5d8851...60b8d4`; arbitrum `0x63a0ae...32026d`; arbitrum `0x6642e6...2ee269`; arbitrum `0x6c3fd6...23cfc4`; arbitrum `0x6e37f4...ab553f`; arbitrum `0x72c3cd...f05a03`; arbitrum `0x76a586...05221d`; arbitrum `0x78b15a...d82aa2`; arbitrum `0x7f20f4...8a9e0b`; arbitrum `0x80a765...132c5e`; arbitrum `0x86be76...8f43e3`; arbitrum `0x87732c...2ed744`; arbitrum `0x8a7110...7ae1bb`; arbitrum `0x8e2ada...7256ff`; arbitrum `0x8f3071...12d348`; arbitrum `0x8f60c3...640aaf`; arbitrum `0x99c520...062a92`; arbitrum `0x9f3eeb...146825`; arbitrum `0xa0e9d7...b9c695`; arbitrum `0xa2eee4...dbe1dd`; arbitrum `0xa74218...10d891`; arbitrum `0xab5f16...a67b6b`; arbitrum `0xb2fed9...bda537`; arbitrum `0xbbb563...806e35`; arbitrum `0xbc44b5...689b48`; arbitrum `0xc048ff...c66a02`; arbitrum `0xc04d83...aeed1d`; arbitrum `0xc986d2...81a045`; arbitrum `0xcddc8b...d4766e`; arbitrum `0xd26828...05881c`; arbitrum `0xdaa61b...a6ccea`; arbitrum `0xddafe9...b0edc9`; arbitrum `0xe19e97...b7a0a9`; arbitrum `0xe594a0...a6f3fe`; arbitrum `0xe7c190...4a3ad8`; arbitrum `0xf171df...92a1d2` | ⚠️ Unaudited |
| ConvertGettersFacet | unknown | ethereum | 7 deployments: ethereum [`0x007bcd...827102`](./contracts/ethereum-1/0x007bcddca929bbecf8347f68a0bc6cbe3c827102/); ethereum `0x0a4121...a4eeed`; ethereum `0x8aba09...f744e2`; arbitrum `0x3d5cd5...5a69ec`; arbitrum `0x49caa3...7da1d6`; arbitrum `0x6ef9cc...ac7ddf`; arbitrum `0x999a04...49a47a` | ⚠️ Unaudited |
| Depot | unknown | arbitrum | [`0xdeb0f0...4120c3`](./contracts/arbitrum-42161/0xdeb0f082ed3b0efe9257aea9f2e6e974aa4120c3/) | ⚠️ Unaudited |
| DepotFacet | unknown | arbitrum | 2 deployments: arbitrum [`0x107f33...0c96cc`](./contracts/arbitrum-42161/0x107f33211935bb72b721675c7e95a2d4cc0c96cc/); arbitrum `0x47422e...666699` | ⚠️ Unaudited |
| DualAggregator | unknown | arbitrum | 21 deployments: arbitrum [`0x01065f...57c71e`](./contracts/arbitrum-42161/0x01065f4726bbbce2ef1a4bebc04af3209357c71e/); arbitrum `0x0309c0...b79e6a`; arbitrum `0x0b6eac...6bd29b`; arbitrum `0x12b891...7c676a`; arbitrum `0x16c0e7...8f7a4e`; arbitrum `0x333399...e3ef27`; arbitrum `0x355e12...f5c829`; arbitrum `0x41f14a...3d2bcd`; arbitrum `0x4c76f0...531e9e`; arbitrum `0x626194...c1e618`; arbitrum `0x674a6d...7d21bc`; arbitrum `0x739910...c20848`; arbitrum `0xa0e9a6...bd2f99`; arbitrum `0xa1c0bd...fb80d3`; arbitrum `0xa686fa...9fbac1`; arbitrum `0xa821e9...aa6f93`; arbitrum `0xb72359...297c20`; arbitrum `0xc1720a...1879b1`; arbitrum `0xe68beb...2631e3`; arbitrum `0xe7c522...19aeb0`; arbitrum `0xfbe1c9...da2918` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | arbitrum | 224 deployments: arbitrum [`0x0017ab...7f9cf4`](./contracts/arbitrum-42161/0x0017abac5b6f291f9164e35b1234ca1d697f9cf4/); arbitrum `0x004f21...85b196`; arbitrum `0x021126...df8055`; arbitrum `0x022578...f3e7be`; arbitrum `0x02ded5...b74dbe`; arbitrum `0x02e892...148e40`; arbitrum `0x037100...3593a8`; arbitrum `0x03a1f4...42cc45`; arbitrum `0x03e405...7837b9`; arbitrum `0x041809...243542`; arbitrum `0x04b738...8c2702`; arbitrum `0x054296...b41252`; arbitrum `0x05bc6e...ba2168`; arbitrum `0x06047d...29a44c`; arbitrum `0x066ba4...74004f`; arbitrum `0x07c5b9...2b7f2a`; arbitrum `0x0a3225...568f66`; arbitrum `0x0c6118...bdb79e`; arbitrum `0x0c9979...7b5bb3`; arbitrum `0x0d0fad...79b571`; arbitrum `0x0d2057...86d739`; arbitrum `0x0e278d...128c93`; arbitrum `0x0f38d8...637c73`; arbitrum `0x103c63...4b29a5`; arbitrum `0x11e183...f3886d`; arbitrum `0x158b22...68d659`; arbitrum `0x16f384...847b1e`; arbitrum `0x17d8d8...ab763e`; arbitrum `0x18dddd...054a75`; arbitrum `0x1b47b4...a4fb8e`; arbitrum `0x1bd872...7af930`; arbitrum `0x1c8a38...e5c788`; arbitrum `0x1d1a83...a252ba`; arbitrum `0x1e431e...d21b0d`; arbitrum `0x1f5c0c...d87f5e`; arbitrum `0x205aad...eb9b98`; arbitrum `0x20b015...e5995c`; arbitrum `0x20bae7...294e12`; arbitrum `0x20d0fc...53b352`; arbitrum `0x21e1a0...4d1875`; arbitrum `0x229a93...c48071`; arbitrum `0x24ea26...c1f764`; arbitrum `0x256654...34c400`; arbitrum `0x29d575...7b8177`; arbitrum `0x2c1c5e...dd59e6`; arbitrum `0x307c37...b8a915`; arbitrum `0x326fa2...55590b`; arbitrum `0x339a66...6e5183`; arbitrum `0x3609ba...91c3e3`; arbitrum `0x36713a...c90d25`; arbitrum `0x368b55...3fcf37`; arbitrum `0x373510...520e4b`; arbitrum `0x37ddee...665771`; arbitrum `0x3815dd...d6d0e0`; arbitrum `0x383b36...73992f`; arbitrum `0x3861d8...89a2da`; arbitrum `0x395d5c...ba492f`; arbitrum `0x3a9659...2feae3`; arbitrum `0x3b9c34...d0c762`; arbitrum `0x3c5c53...4a66cf`; arbitrum `0x3c786e...96e8e7`; arbitrum `0x3d50d6...781736`; arbitrum `0x3d9145...2b5034`; arbitrum `0x3eabf6...c24064`; arbitrum `0x3f3f5d...25dde7`; arbitrum `0x4050bd...a91aad`; arbitrum `0x4096b9...bf5634`; arbitrum `0x413b21...da9476`; arbitrum `0x46306f...b3cc10`; arbitrum `0x4763b8...440012`; arbitrum `0x47a2fb...823a0c`; arbitrum `0x47c38c...bb033c`; arbitrum `0x47e55c...c2202d`; arbitrum `0x484a1b...363122`; arbitrum `0x4881a4...7f262f`; arbitrum `0x48c472...38a0b1`; arbitrum `0x4a85b1...ceb289`; arbitrum `0x4b13dd...3ae848`; arbitrum `0x4bc735...65aaef`; arbitrum `0x4ee1f9...955a02`; arbitrum `0x4f861f...c48be6`; arbitrum `0x5082d9...c22757`; arbitrum `0x50834f...434ad3`; arbitrum `0x54a82b...7a92ff`; arbitrum `0x552c92...472be3`; arbitrum `0x569869...fbc9c8`; arbitrum `0x5c3e80...4e1c34`; arbitrum `0x5cfb77...5d1db8`; arbitrum `0x5d0465...e329f5`; arbitrum `0x5e2b5c...5d1597`; arbitrum `0x5fb73f...38e5b4`; arbitrum `0x5fb8e2...cb53fe`; arbitrum `0x605ea7...665c44`; arbitrum `0x6303c3...9e6da0`; arbitrum `0x639b7c...5c54e2`; arbitrum `0x639fe6...3ba612`; arbitrum `0x670bd6...e7c23f`; arbitrum `0x671ee9...aa8ea6`; arbitrum `0x6aa147...e67939`; arbitrum `0x6ab841...e45537`; arbitrum `0x6accbb...35b991`; arbitrum `0x6bc7ff...88ccdc`; arbitrum `0x6ce185...3708e9`; arbitrum `0x6fabee...d2f28d`; arbitrum `0x6ffbc6...c05505`; arbitrum `0x703389...e509c4`; arbitrum `0x70e48a...feb849`; arbitrum `0x726a96...86a002`; arbitrum `0x72b424...f15943`; arbitrum `0x730a28...c1a67d`; arbitrum `0x745ab5...f5fb21`; arbitrum `0x7519bc...5a26c2`; arbitrum `0x7537f8...1c7a66`; arbitrum `0x76998c...40f854`; arbitrum `0x78aabb...afed7a`; arbitrum `0x7a5864...c4c4d9`; arbitrum `0x7a8a9a...a4eed1`; arbitrum `0x7c7dff...92a595`; arbitrum `0x7c8e67...6691ad`; arbitrum `0x7fa028...2fd254`; arbitrum `0x806c53...309af1`; arbitrum `0x82ba56...3a8934`; arbitrum `0x84ad1c...a616f5`; arbitrum `0x84e823...bc81af`; arbitrum `0x85bb02...411916`; arbitrum `0x86e53c...5812cb`; arbitrum `0x86e5d5...12ea3f`; arbitrum `0x87121f...54a95b`; arbitrum `0x875c69...db25e2`; arbitrum `0x87a795...bb9f7f`; arbitrum `0x888304...50212a`; arbitrum `0x88ac7b...68e0bc`; arbitrum `0x8b7c87...1e884b`; arbitrum `0x8d0cc5...e1557c`; arbitrum `0x8fcb0f...ce8eec`; arbitrum `0x923b42...8e7719`; arbitrum `0x926eed...b6302f`; arbitrum `0x950dc9...454498`; arbitrum `0x9854e9...a8fc22`; arbitrum `0x989a48...c08186`; arbitrum `0x98e5a5...284431`; arbitrum `0x9a7fb1...7c098c`; arbitrum `0x9c9170...da2720`; arbitrum `0x9ca3d0...b2d5a2`; arbitrum `0x9e3fc5...cb0adf`; arbitrum `0x9ee96c...6fbf7e`; arbitrum `0x9fa749...a5e9be`; arbitrum `0xa14d53...051a84`; arbitrum `0xa43a34...d0fe64`; arbitrum `0xa631de...9ee28d`; arbitrum `0xa66868...674275`; arbitrum `0xa67762...8ec234`; arbitrum `0xa84101...1c87c8`; arbitrum `0xa9cc9b...b7aea6`; arbitrum `0xad1d53...bdd034`; arbitrum `0xae0d73...db49c1`; arbitrum `0xae8b41...f3e4b4`; arbitrum `0xb0ea54...e1476a`; arbitrum `0xb1552c...14a540`; arbitrum `0xb1f70a...7ea82a`; arbitrum `0xb2a824...a548d6`; arbitrum `0xb2a8ba...60147c`; arbitrum `0xb2ae7b...6b801f`; arbitrum `0xb39082...1a268c`; arbitrum `0xb4102d...fe200d`; arbitrum `0xb471a2...8c6e1f`; arbitrum `0xb49b8b...fe0bd4`; arbitrum `0xb4ac40...feaa7d`; arbitrum `0xb523ae...c2a95d`; arbitrum `0xba55b9...8006d7`; arbitrum `0xc1ced1...7bad7f`; arbitrum `0xc3534c...4cb39d`; arbitrum `0xc373b9...629df0`; arbitrum `0xc5c8e7...e9ecfb`; arbitrum `0xc9eb7e...6ec496`; arbitrum `0xcc3370...71eccb`; arbitrum `0xcd1bd8...f85845`; arbitrum `0xcf7a7a...94c51c`; arbitrum `0xcff934...38b488`; arbitrum `0xd01d5e...b11b57`; arbitrum `0xd07de6...a24d69`; arbitrum `0xd0c710...d46d57`; arbitrum `0xd0e922...c3f7af`; arbitrum `0xd615e3...269c44`; arbitrum `0xd6a776...313eba`; arbitrum `0xd6ab22...f611ef`; arbitrum `0xda7613...8e3061`; arbitrum `0xdb0c64...5a620a`; arbitrum `0xdbff91...44d531`; arbitrum `0xdc1a8f...66fa23`; arbitrum `0xdde33f...dca867`; arbitrum `0xdde352...5ee6ea`; arbitrum `0xde4af8...399134`; arbitrum `0xded2c5...fa4baf`; arbitrum `0xe0685d...8a3fc8`; arbitrum `0xe14142...7ea22b`; arbitrum `0xe2a321...6ce500`; arbitrum `0xe2cb59...4d91bb`; arbitrum `0xe32acc...4e1fc3`; arbitrum `0xe46a44...60aa3a`; arbitrum `0xe4c31c...0cd730`; arbitrum `0xe4c892...39e2fd`; arbitrum `0xe4d040...515e3f`; arbitrum `0xe4df63...9be921`; arbitrum `0xe74d69...ceb3b7`; arbitrum `0xe80848...abeb1c`; arbitrum `0xe89e98...e76486`; arbitrum `0xe8f8af...c7cd05`; arbitrum `0xea320e...ca086c`; arbitrum `0xecd471...3e6d6e`; arbitrum `0xf04bf0...335ab5`; arbitrum `0xf0b715...40533d`; arbitrum `0xf2215b...5e68d7`; arbitrum `0xf3d6b0...de8c78`; arbitrum `0xf68971...9837c4`; arbitrum `0xf7ee42...68f90d`; arbitrum `0xf97eea...ce04c7`; arbitrum `0xf9ce4f...91d567`; arbitrum `0xfa74da...2d242c`; arbitrum `0xfb3264...0d041e`; arbitrum `0xfe92fa...528c85`; arbitrum `0xfeac1a...d36f19`; arbitrum `0xff6b58...dc30f6`; arbitrum `0xff82aa...b58574` | ⚠️ Unaudited |
| EnrootFacet | unknown | ethereum | 8 deployments: ethereum [`0x179bb2...1c1a46`](./contracts/ethereum-1/0x179bb2636f0066d837f1a446083a0fba131c1a46/); ethereum `0x305d7c...005b6b`; ethereum `0x3780b8...e077e6`; ethereum `0x5cb70c...3eb695`; ethereum `0x96fdd8...4485c1`; ethereum `0xdb9882...531ebd`; arbitrum `0x3af703...a8f110`; arbitrum `0xd9171d...ac3a2a` | ⚠️ Unaudited |
| ERC20Bridged | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x0fbcba...8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/); arbitrum `0x5979d7...800529` | ⚠️ Unaudited |
| ERC721ABean | token | ethereum | 3 deployments: ethereum [`0xa560c3...f6d321`](./contracts/ethereum-1/0xa560c3afceb9a046573bf6f401134a6837f6d321/); ethereum `0xa969bb...d5d1e8`; ethereum `0xc218f5...6ac9e7` | ⚠️ Unaudited |
| ERC721ABeanBasin | token | ethereum | [`0x6c64de...d55535`](./contracts/ethereum-1/0x6c64deea49dddac54adc988f8ba700a2a0d55535/) | ⚠️ Unaudited |
| ERC721ABeanBasinV2 | token | ethereum | 2 deployments: ethereum [`0x191b7d...c3740f`](./contracts/ethereum-1/0x191b7d1cfa89c9389bbf5f7f49f4b8f93ec3740f/); ethereum `0x1dd0de...288804` | ⚠️ Unaudited |
| EthicalReturn | unknown | ethereum | 2 deployments: ethereum [`0xf8b5fa...d6a38d`](./contracts/ethereum-1/0xf8b5fa117f492608b8f16aae84c69175ead6a38d/); ethereum `0xf96681...ae24e4` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | arbitrum | 47 deployments: arbitrum [`0x017513...2c029e`](./contracts/arbitrum-42161/0x017513a8ca43992938e7fa72033ee29a0e2c029e/); arbitrum `0x052cf0...97502f`; arbitrum `0x0c0041...09e756`; arbitrum `0x0c4865...918929`; arbitrum `0x0ea107...8c5e98`; arbitrum `0x16b970...79f663`; arbitrum `0x1fd156...612ae6`; arbitrum `0x27a971...72a4a3`; arbitrum `0x3f1341...682f32`; arbitrum `0x40314f...e23ae3`; arbitrum `0x449c59...afab84`; arbitrum `0x4cd893...9f9fdb`; arbitrum `0x50fc0d...978f6f`; arbitrum `0x542ba1...63722f`; arbitrum `0x562b31...b750ab`; arbitrum `0x6053e7...f30e12`; arbitrum `0x778eb8...f20540`; arbitrum `0x7b1f90...63c97d`; arbitrum `0x7c04e5...353275`; arbitrum `0x7f3d62...94e3ca`; arbitrum `0x858d69...365cde`; arbitrum `0x893c14...86b8e4`; arbitrum `0x91e46c...7dec31`; arbitrum `0x950950...0bc376`; arbitrum `0x9bda7c...0d5ab1`; arbitrum `0xa424e1...e4fd1e`; arbitrum `0xa96435...c69429`; arbitrum `0xb1b705...1e47fa`; arbitrum `0xb62178...43ac4b`; arbitrum `0xbda25a...be2c8a`; arbitrum `0xbdda3e...fac5d2`; arbitrum `0xc16578...ece3f9`; arbitrum `0xcabc2d...ef9b6f`; arbitrum `0xcb1dbb...d5785b`; arbitrum `0xcceee1...359c4b`; arbitrum `0xd85f0a...97514b`; arbitrum `0xdb19f7...8f206c`; arbitrum `0xe01099...bc9920`; arbitrum `0xe62f2a...36b634`; arbitrum `0xede7ad...a72faa`; arbitrum `0xee5387...f37e20`; arbitrum `0xeeed4d...963a5f`; arbitrum `0xeef5fb...c2c455`; arbitrum `0xef8deb...15d53c`; arbitrum `0xf1a4de...47bdae`; arbitrum `0xf88166...a41e68`; arbitrum `0xf9b99c...962236` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | arbitrum | 45 deployments: arbitrum [`0x05b723...d17988`](./contracts/arbitrum-42161/0x05b723f3db92430fbe4395fd03e40cc7e9d17988/); arbitrum `0x080a40...800eb8`; arbitrum `0x1216dc...c1b5c4`; arbitrum `0x122f05...e5a809`; arbitrum `0x12a4b2...d623f3`; arbitrum `0x14bf7b...b9378d`; arbitrum `0x1fe0f6...3bf1e4`; arbitrum `0x2c1016...89201d`; arbitrum `0x2fbb50...5383b5`; arbitrum `0x3920bf...d1d722`; arbitrum `0x51abd0...686fc4`; arbitrum `0x52e51f...eda1a6`; arbitrum `0x544804...abfb46`; arbitrum `0x590791...054839`; arbitrum `0x5b23a0...8e819f`; arbitrum `0x6087d6...d6864d`; arbitrum `0x66a004...2e6fbc`; arbitrum `0x677617...f3bef3`; arbitrum `0x68647d...750773`; arbitrum `0x6c2b7e...c13fa3`; arbitrum `0x6cb060...438f46`; arbitrum `0x6e2b1b...8fe0ff`; arbitrum `0x77b60f...08a22a`; arbitrum `0x79f3ab...9a2d91`; arbitrum `0x8315cb...52a68c`; arbitrum `0x85ac2e...af5377`; arbitrum `0x8a59fa...34bd00`; arbitrum `0x98dd9e...d0b648`; arbitrum `0xa07927...b197d8`; arbitrum `0xa560c1...047821`; arbitrum `0xafecc7...06c2cb`; arbitrum `0xb1883c...61d034`; arbitrum `0xbb7c7a...3f17f6`; arbitrum `0xc09b72...f030c3`; arbitrum `0xc1b628...5ca9a6`; arbitrum `0xc54909...bec7ee`; arbitrum `0xc7d6b8...311cd3`; arbitrum `0xce1102...b5adee`; arbitrum `0xceab51...b0ce78`; arbitrum `0xd236ea...d7f047`; arbitrum `0xd67f67...fb78d6`; arbitrum `0xddb06a...5988d3`; arbitrum `0xe80cc8...fc5639`; arbitrum `0xf1e73c...6330ae`; arbitrum `0xfcdca0...5e6b7d` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| GaugeGettersFacet | operational_periphery | arbitrum | 2 deployments: arbitrum [`0x16b6b2...9a87e5`](./contracts/arbitrum-42161/0x16b6b2deb4b19ddb664167cf8cbe601dfa9a87e5/); arbitrum `0x2e804f...3e2f31` | ⚠️ Unaudited |
| GaugePointFacet | operational_periphery | arbitrum | 4 deployments: ethereum `0x4b10df...9c681b`; ethereum `0xe90147...ae2a18`; arbitrum [`0x043a11...69eaec`](./contracts/arbitrum-42161/0x043a11704a9e508a2b03c4dc38ae60dee369eaec/); arbitrum `0xbcf3ba...020778` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 7 deployments: ethereum [`0x21de18...c08df7`](./contracts/ethereum-1/0x21de18b6a8f78ede6d16c50a167f6b222dc08df7/); ethereum `0x2d92a7...bdf278`; ethereum `0x66efac...3eb29c`; ethereum `0x879c8b...acf697`; ethereum `0xa9ba2c...81d043`; ethereum `0xb7ab3f...982235`; ethereum `0xe1c3ae...80db02` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | [`0xdd5b31...daaf69`](./contracts/arbitrum-42161/0xdd5b31e73db1c566ca09e1f1f74df34913daaf69/) | ⚠️ Unaudited |
| HypernativeModule | unknown | ethereum | 2 deployments: ethereum [`0x59c78c...3efe4d`](./contracts/ethereum-1/0x59c78c1c2b4b03b4530d5f46f02362e4a03efe4d/); arbitrum `0xbbad3c...a079fe` | ⚠️ Unaudited |
| InitBip11 | unknown | ethereum | [`0x8e6aa4...d27f37`](./contracts/ethereum-1/0x8e6aa47a4f498b0067d2ae011fef4bc3a8d27f37/) | ⚠️ Unaudited |
| InitBip12 | unknown | ethereum | [`0x1b5dc5...926605`](./contracts/ethereum-1/0x1b5dc50f5bee19f1fa3910987b16407634926605/) | ⚠️ Unaudited |
| InitBip13 | unknown | ethereum | [`0xc20628...f44ffc`](./contracts/ethereum-1/0xc20628ffff326c80056e35e39308e4ee0ff44ffc/) | ⚠️ Unaudited |
| InitBip14 | unknown | ethereum | [`0xb7da8e...f3816e`](./contracts/ethereum-1/0xb7da8e0be58fc8aab5b20c99f981cb4706f3816e/) | ⚠️ Unaudited |
| InitBip16 | unknown | ethereum | [`0x22a74e...a78ec9`](./contracts/ethereum-1/0x22a74ee9a54ec84801ebf7fd0c10df9668a78ec9/) | ⚠️ Unaudited |
| InitBip17 | unknown | ethereum | [`0xe1b8ac...d6481e`](./contracts/ethereum-1/0xe1b8ace704fb9c03df566c94fc9997a440d6481e/) | ⚠️ Unaudited |
| InitBip22 | unknown | ethereum | [`0x285dd7...254df0`](./contracts/ethereum-1/0x285dd7701f831ba8258f18da3fc049268f254df0/) | ⚠️ Unaudited |
| InitBip23 | unknown | ethereum | [`0x3740df...3ceda4`](./contracts/ethereum-1/0x3740df01a85dcafa2232f2bc045c7668ce3ceda4/) | ⚠️ Unaudited |
| InitBip24 | unknown | ethereum | [`0xf95389...a05654`](./contracts/ethereum-1/0xf95389567b222ec36e509b874e8ad4452ea05654/) | ⚠️ Unaudited |
| InitBip3 | unknown | ethereum | [`0x48e1b4...d8fdf3`](./contracts/ethereum-1/0x48e1b4c66d1b7170069d6ab3221826589ed8fdf3/) | ⚠️ Unaudited |
| InitBip8 | unknown | ethereum | [`0xf039d9...97c5e3`](./contracts/ethereum-1/0xf039d98f294fff342d08de95a7dd5ad3b797c5e3/) | ⚠️ Unaudited |
| InitBip9 | unknown | ethereum | [`0xf3926c...396ef8`](./contracts/ethereum-1/0xf3926c269804bd7223bd253a3c3783f8f2396ef8/) | ⚠️ Unaudited |
| InitBipNewSilo | unknown | ethereum | [`0xf6c77e...a15b9e`](./contracts/ethereum-1/0xf6c77e64473b913101f0ec1bfb75a386aba15b9e/) | ⚠️ Unaudited |
| InitBipSeedGauge | operational_periphery | ethereum | [`0x6ef9cc...ac7ddf`](./contracts/ethereum-1/0x6ef9cc52eb37e0de9592960c0c894a1000ac7ddf/) | ⚠️ Unaudited |
| InitEBip5 | unknown | ethereum | [`0xa9ff32...c132f1`](./contracts/ethereum-1/0xa9ff32d5e2fa6d5b4552c591e01db9cbbbc132f1/) | ⚠️ Unaudited |
| InitEBip6 | unknown | ethereum | [`0xe73c76...f65dfd`](./contracts/ethereum-1/0xe73c769796220d0b4b47b36063e36d9e95f65dfd/) | ⚠️ Unaudited |
| InitHotFix6 | unknown | ethereum | [`0x451e36...cbd8a6`](./contracts/ethereum-1/0x451e36ca0a21f0d946b1f4710ea41bb557cbd8a6/) | ⚠️ Unaudited |
| InitMigrateUnripeBeanEthToBeanSteth | unknown | ethereum | [`0x15a205...cefa00`](./contracts/ethereum-1/0x15a2053b3d559d19fed2d7fc429304e837cefa00/) | ⚠️ Unaudited |
| InitMint | unknown | ethereum | [`0x077495...4925bb`](./contracts/ethereum-1/0x077495925c17230e5e8951443d547ecdbb4925bb/) | ⚠️ Unaudited |
| InitOmnisciaAudit | unknown | ethereum | [`0x4e7cc6...a762be`](./contracts/ethereum-1/0x4e7cc6a0a9d4cf90e39feafefb7977e4e7a762be/) | ⚠️ Unaudited |
| InitReplant | unknown | ethereum | [`0xb01c6b...e63b9d`](./contracts/ethereum-1/0xb01c6b965afb3c0106c62c57deccc9a81be63b9d/) | ⚠️ Unaudited |
| InitSiloEvents | unknown | ethereum | [`0xae6ce3...3ede5e`](./contracts/ethereum-1/0xae6ce391e8caad54f56c28e05c9da28c4f3ede5e/) | ⚠️ Unaudited |
| InitUpdateOracleImplementation | operational_periphery | arbitrum | [`0xa41d1e...3a8943`](./contracts/arbitrum-42161/0xa41d1e77b711581c4d2fd63d92a25499323a8943/) | ⚠️ Unaudited |
| Junction | unknown | arbitrum | [`0x5a5a5a...08e2cd`](./contracts/arbitrum-42161/0x5a5a5ade4c9713172a5228703213d4d39608e2cd/) | ⚠️ Unaudited |
| L1ReceiverFacet | unknown | arbitrum | 3 deployments: arbitrum [`0x8f2bb1...651a57`](./contracts/arbitrum-42161/0x8f2bb164df87183af23e72d49572052e27651a57/); arbitrum `0xe53e21...f9ae29`; arbitrum `0xef10e3...753b97` | ⚠️ Unaudited |
| L1RecieverFacet | unknown | arbitrum | [`0x53106d...a7e0b1`](./contracts/arbitrum-42161/0x53106dc7d78df1eed36947cf0536d7eccca7e0b1/) | ⚠️ Unaudited |
| L1TokenFacet | token | ethereum | [`0x8f6604...456501`](./contracts/ethereum-1/0x8f66044a9c95fae9d38b8bc30665ee04a2456501/) | ⚠️ Unaudited |
| L2ERC20TokenGateway | token | arbitrum | 2 deployments: arbitrum [`0x07d469...331b82`](./contracts/arbitrum-42161/0x07d4692291b9e30e326fd31706f686f83f331b82/); arbitrum `0xe75886...a4b0a7` | ⚠️ Unaudited |
| LegacyClaimWithdrawalFacet | operational_periphery | ethereum | 2 deployments: ethereum [`0x93703a...7e7ef6`](./contracts/ethereum-1/0x93703adc951b76451e3006960cfb3f927d7e7ef6/); ethereum `0xf6a39e...d15292` | ⚠️ Unaudited |
| LibEvaluate | unknown | arbitrum | 3 deployments: arbitrum [`0x1cd310...7d6181`](./contracts/arbitrum-42161/0x1cd310f1146b7251155e70978dc08987537d6181/); arbitrum `0x4fdc2e...4d0b70`; arbitrum `0x67e6cc...bf176f` | ⚠️ Unaudited |
| LibFlood | unknown | arbitrum | 3 deployments: arbitrum [`0x016159...bf66c1`](./contracts/arbitrum-42161/0x016159b6bc7eaa69d2d9d42ef79ab4fe55bf66c1/); arbitrum `0x2a6a6b...3e0ef4`; arbitrum `0xa5fd2a...947a23` | ⚠️ Unaudited |
| LibGauge | operational_periphery | arbitrum | 6 deployments: ethereum `0x2d8ee9...1aa9d5`; ethereum `0xa28ef6...8e1594`; ethereum `0xa80a1f...e9885c`; arbitrum [`0x029602...2ac717`](./contracts/arbitrum-42161/0x02960251e6d2ef0ccd79ad1927065f55132ac717/); arbitrum `0x2a02a8...b2f3a0`; arbitrum `0x2d5e48...13ea51` | ⚠️ Unaudited |
| LibGerminate | unknown | ethereum | 6 deployments: ethereum [`0x08a8e4...b97f71`](./contracts/ethereum-1/0x08a8e42bf3c4ef9608dc71a20106d1e028b97f71/); ethereum `0x99e1b2...abc76c`; ethereum `0xf85103...9727d7`; arbitrum `0x89c115...81c0df`; arbitrum `0x95606e...fa35be`; arbitrum `0x9b06bd...d83ad0` | ⚠️ Unaudited |
| LibLockedUnderlying | unknown | ethereum | 8 deployments: ethereum [`0x165f9d...5dae2e`](./contracts/ethereum-1/0x165f9d2a986f70e472aa9569305105034a5dae2e/); ethereum `0x6feff6...16baf7`; ethereum `0x960a34...dad52e`; ethereum `0xa047ea...cf0099`; arbitrum `0x3fef99...493824`; arbitrum `0x8968bf...b9002d`; arbitrum `0x9046d1...9b04b1`; arbitrum `0x960a34...dad52e` | ⚠️ Unaudited |
| LibMulDiv | unknown | ethereum | [`0x2f27fd...6e61b5`](./contracts/ethereum-1/0x2f27fd14af0d977c46c73abeab4424cfe56e61b5/) | ⚠️ Unaudited |
| LibPipelineConvert | unknown | arbitrum | 4 deployments: arbitrum [`0x08acb7...7fa030`](./contracts/arbitrum-42161/0x08acb7258a3dbca0f040bd2c5f07e97b247fa030/); arbitrum `0x487fdc...78d6aa`; arbitrum `0x74749a...1a2ea5`; arbitrum `0xf85103...9727d7` | ⚠️ Unaudited |
| LibShipping | unknown | arbitrum | 3 deployments: arbitrum [`0x007bcd...827102`](./contracts/arbitrum-42161/0x007bcddca929bbecf8347f68a0bc6cbe3c827102/); arbitrum `0xc64c90...aeecc5`; arbitrum `0xe20d32...0970b8` | ⚠️ Unaudited |
| LibSilo | unknown | arbitrum | 8 deployments: ethereum `0x978639...969051`; ethereum `0xcad55c...3e731c`; ethereum `0xde6e83...6097d1`; ethereum `0xf0e5f7...e44c7a`; arbitrum [`0x6a9b79...cf91a8`](./contracts/arbitrum-42161/0x6a9b79dda38515b3f77c3ef5bf6cfee030cf91a8/); arbitrum `0x9ba5a9...4d096b`; arbitrum `0xc3fe04...e4f16e`; arbitrum `0xdde5ef...f6bb34` | ⚠️ Unaudited |
| LibSiloPermit | unknown | arbitrum | 2 deployments: arbitrum [`0x620ff5...6ae7a3`](./contracts/arbitrum-42161/0x620ff53fb1ae879af099c95dbc129f06226ae7a3/); arbitrum `0xafd3a0...4d1601` | ⚠️ Unaudited |
| LibTokenSilo | token | arbitrum | 4 deployments: arbitrum [`0x36eeea...ba647b`](./contracts/arbitrum-42161/0x36eeea940309992b2f6682e84a17195cc6ba647b/); arbitrum `0x6c5860...9f7981`; arbitrum `0x7ad770...e08dda`; arbitrum `0xe90147...ae2a18` | ⚠️ Unaudited |
| LibWellMinting | unknown | arbitrum | 6 deployments: ethereum `0xb8e474...efde96`; arbitrum [`0x23704c...a1c57c`](./contracts/arbitrum-42161/0x23704c387cf9a3951b4cc01ce4fd789f99a1c57c/); arbitrum `0x248738...571abd`; arbitrum `0xa2c2ba...971e82`; arbitrum `0xdc4915...a26c63`; arbitrum `0xf14dd5...62a4ab` | ⚠️ Unaudited |
| LiquidityWeightFacet | unknown | arbitrum | 4 deployments: ethereum `0x27862f...118120`; ethereum `0x9aaaa7...327c3d`; arbitrum [`0x19ac2d...95b13e`](./contracts/arbitrum-42161/0x19ac2dc9a0bfda04dde8ea7437945872db95b13e/); arbitrum `0x837b2d...9ffbd3` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | arbitrum | 4 deployments: arbitrum [`0x34700f...bfa726`](./contracts/arbitrum-42161/0x34700f5fae61ba628c4269bdcba12da53bbfa726/); arbitrum `0x86d99f...7fb6d6`; arbitrum `0xa3906c...418a3f`; arbitrum `0xa51e97...e7b793` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | arbitrum | 7 deployments: arbitrum [`0x387e40...978653`](./contracts/arbitrum-42161/0x387e40ed22ee3396288c874411b00c48f6978653/); arbitrum `0x45a26e...db0091`; arbitrum `0x7a1d89...e5743c`; arbitrum `0xb1f9db...8e88fb`; arbitrum `0xc81faf...f84341`; arbitrum `0xe899c7...85e0d4`; arbitrum `0xf6c387...9d0135` | ⚠️ Unaudited |
| LSDChainlinkOracle | operational_periphery | arbitrum | [`0xcccccc...b35626`](./contracts/arbitrum-42161/0xcccccc35b53c8a16404ae414afa31f30a5b35626/) | ⚠️ Unaudited |
| ManyChainMultiSig | governance | arbitrum | 4 deployments: arbitrum [`0x4ea3f7...040bb3`](./contracts/arbitrum-42161/0x4ea3f791511d35aa859455bd60af526537040bb3/); arbitrum `0x6662e3...27dd7c`; arbitrum `0x69b798...29a8c5`; arbitrum `0xf4c257...3e67cb` | ⚠️ Unaudited |
| Math | unknown | ethereum | [`0x16a903...0b740a`](./contracts/ethereum-1/0x16a903b66403d3de69db50e6d1ad0b07490b740a/) | ⚠️ Unaudited |
| MetadataFacet | unknown | ethereum | 6 deployments: ethereum [`0x0d8f6f...608fc1`](./contracts/ethereum-1/0x0d8f6f09a2b806d406d511c113f2fc3f4d608fc1/); ethereum `0x9b06bd...d83ad0`; ethereum `0x9f5ec5...875fd2`; ethereum `0xd16b38...9f6a20`; arbitrum `0x5794fd...ccd1d9`; arbitrum `0x958679...06cbf5` | ⚠️ Unaudited |
| MigrationFacet | operational_periphery | ethereum | 5 deployments: ethereum [`0x141209...39437f`](./contracts/ethereum-1/0x141209527f95540e0b018e56edf5a59e1339437f/); ethereum `0x5a3c13...1f3c9b`; ethereum `0x6122b9...916b16`; ethereum `0x64504c...b9d536`; ethereum `0xbe73a5...4f822d` | ⚠️ Unaudited |
| PipelineConvertFacet | unknown | arbitrum | 4 deployments: arbitrum [`0x35f697...692965`](./contracts/arbitrum-42161/0x35f6977d9236c0734520878799598ea0fe692965/); arbitrum `0x6b1b5e...d491a3`; arbitrum `0xa047ea...cf0099`; arbitrum `0xbe73a5...4f822d` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x13015e...20438c`](./contracts/arbitrum-42161/0x13015e4e6f839e1aa1016df521ea458eca20438c/); arbitrum `0x3971cf...c19a40`; arbitrum `0xc200c3...1ce237`; arbitrum `0xebec5c...d5102e` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 4 deployments: ethereum [`0x309803...7db32b`](./contracts/ethereum-1/0x30980396e7a1c3b9272b948483694faf057db32b/); ethereum `0x3725b4...65f3cf`; ethereum `0xd131e0...5c71c4`; ethereum `0xfecb01...64aa6e` | ⚠️ Unaudited |
| RBACTimelock | governance | arbitrum | [`0x8a8977...1f8c7f`](./contracts/arbitrum-42161/0x8a89770722c84b60ce02989aedb22ac4791f8c7f/) | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | arbitrum | [`0x818792...9071d7`](./contracts/arbitrum-42161/0x818792c958ac33c01c58d5026cec91a86e9071d7/) | ⚠️ Unaudited |
| Replant1 | unknown | ethereum | [`0x46c46f...42f935`](./contracts/ethereum-1/0x46c46fadc886ccd0dfeca903be06bb791142f935/) | ⚠️ Unaudited |
| Replant2 | unknown | ethereum | [`0x09d439...b58024`](./contracts/ethereum-1/0x09d439edae1370ec16de6194451fc66f96b58024/) | ⚠️ Unaudited |
| Replant2_2 | unknown | ethereum | 2 deployments: ethereum [`0x2c367e...439183`](./contracts/ethereum-1/0x2c367e6800bca042e1415c787e44f344ef439183/); ethereum `0xb6cc89...ab4a03` | ⚠️ Unaudited |
| Replant3 | unknown | ethereum | [`0xf2ef1f...7f158b`](./contracts/ethereum-1/0xf2ef1f6a4c111a54c1ad4abd386617c2527f158b/) | ⚠️ Unaudited |
| Replant4 | unknown | ethereum | [`0x30fbb6...e3c3b2`](./contracts/ethereum-1/0x30fbb6ce929461727988b945d3534a01f9e3c3b2/) | ⚠️ Unaudited |
| Replant5 | unknown | ethereum | [`0x5f8d7b...65c4b4`](./contracts/ethereum-1/0x5f8d7b62a0c1762bbb65d8cf81b7aabf3365c4b4/) | ⚠️ Unaudited |
| Replant6 | unknown | ethereum | [`0xb82fec...e039d8`](./contracts/ethereum-1/0xb82fec5801a47c74f73eb533006acc586fe039d8/) | ⚠️ Unaudited |
| Replant7 | unknown | ethereum | [`0x2906f2...f688b5`](./contracts/ethereum-1/0x2906f2b668fc6f9b5c1dea6f7c76e788def688b5/) | ⚠️ Unaudited |
| Replant8 | unknown | ethereum | [`0x80a6d3...eab1f5`](./contracts/ethereum-1/0x80a6d3e837965b97d7a84b4c5b3dbff986eab1f5/) | ⚠️ Unaudited |
| ReseedAccountStatus | unknown | arbitrum | [`0x0ee2c9...a64b29`](./contracts/arbitrum-42161/0x0ee2c983874b4faf3c1352ea0271c5810ba64b29/) | ⚠️ Unaudited |
| ReseedBarn | unknown | arbitrum | [`0xea4b9b...818266`](./contracts/arbitrum-42161/0xea4b9b59a52feeb98e8cb7380b791e0126818266/) | ⚠️ Unaudited |
| ReseedBean | unknown | arbitrum | [`0x75c121...cddd85`](./contracts/arbitrum-42161/0x75c1212d7717f5aaa1179c6a71c9afc56ecddd85/) | ⚠️ Unaudited |
| ReseedField | unknown | arbitrum | [`0x3eee6c...4aea72`](./contracts/arbitrum-42161/0x3eee6ccbf41173b18c133200b1762a8d714aea72/) | ⚠️ Unaudited |
| ReseedGlobal | unknown | arbitrum | [`0x81d652...4b2057`](./contracts/arbitrum-42161/0x81d652b45627f699dca555150b344df4fc4b2057/) | ⚠️ Unaudited |
| ReseedGlobalRevised | unknown | arbitrum | [`0xb7b4e3...bd6b03`](./contracts/arbitrum-42161/0xb7b4e3ee3d32c24bb8670b9836e56f9693bd6b03/) | ⚠️ Unaudited |
| ReseedInternalBalances | unknown | arbitrum | [`0x36afd5...4cea20`](./contracts/arbitrum-42161/0x36afd58c440321fdf14b8311d019814eb94cea20/) | ⚠️ Unaudited |
| ReseedL2Migration | operational_periphery | ethereum | [`0xe35c03...2efadb`](./contracts/ethereum-1/0xe35c0397dbb43eb7e2cb28a182d857a3a42efadb/) | ⚠️ Unaudited |
| ReseedPodMarket | unknown | arbitrum | [`0x242bf5...745163`](./contracts/arbitrum-42161/0x242bf5d0eb3ab66d431286a1b2eea704e9745163/) | ⚠️ Unaudited |
| ReseedSilo | unknown | arbitrum | [`0xb85aaa...75cd94`](./contracts/arbitrum-42161/0xb85aaa766c8ff08987baf598e44264122675cd94/) | ⚠️ Unaudited |
| ReseedSiloRevised | unknown | arbitrum | [`0x3d4c4f...f1edc1`](./contracts/arbitrum-42161/0x3d4c4f48f2a0b7e94aebe629ad85f61a73f1edc1/) | ⚠️ Unaudited |
| ReseedTransferOwnership | unknown | arbitrum | [`0x5a1717...e919c6`](./contracts/arbitrum-42161/0x5a1717dce3f93bfc7075944b7fd47247d7e919c6/) | ⚠️ Unaudited |
| ReseedWhitelist | unknown | arbitrum | [`0xe657b2...04e4ef`](./contracts/arbitrum-42161/0xe657b28ba8f9c08ac6c7efc669c0625da704e4ef/) | ⚠️ Unaudited |
| RMN | unknown | arbitrum | 2 deployments: arbitrum [`0x2d45c4...04a7fc`](./contracts/arbitrum-42161/0x2d45c49506ba94ea46dff99f12159fe8be04a7fc/); arbitrum `0xc2c5e2...260744` | ⚠️ Unaudited |
| Root | unknown | ethereum | 3 deployments: ethereum [`0x777000...ca9a26`](./contracts/ethereum-1/0x77700005bea4de0a78b956517f099260c2ca9a26/); ethereum `0x94ac40...f43ca7`; ethereum `0xbace64...788b11` | ⚠️ Unaudited |
| Router | adapter | arbitrum | 4 deployments: arbitrum [`0x141fa0...17dde8`](./contracts/arbitrum-42161/0x141fa059441e0ca23ce184b6a78bafd2a517dde8/); arbitrum `0x333402...b3869c`; arbitrum `0x6aeabd...100127`; arbitrum `0xe92634...e4ba85` | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | [`0xd39a31...e04ca9`](./contracts/arbitrum-42161/0xd39a31e5f23d90371d61a976cacb728842e04ca9/) | ⚠️ Unaudited |
| SafeProxy | unknown | arbitrum | [`0x390b02...a2fbc1`](./contracts/arbitrum-42161/0x390b023d316c2e92dd96a9bcc7fae8db12a2fbc1/) | ⚠️ Unaudited |
| SeasonGettersFacet | unknown | ethereum | 8 deployments: ethereum [`0x0907bc...5a5575`](./contracts/ethereum-1/0x0907bce821cf95155a7faf372079dcc2f25a5575/); ethereum `0x46d11a...a19920`; ethereum `0x5a1675...865e85`; ethereum `0x6a9b79...cf91a8`; arbitrum `0x93703a...7e7ef6`; arbitrum `0xdb9882...531ebd`; arbitrum `0xdf522a...29e34b`; arbitrum `0xfe15fe...309132` | ⚠️ Unaudited |
| ShipmentPlanner | unknown | arbitrum | [`0x555555...feeef5`](./contracts/arbitrum-42161/0x555555987d98079b9f43cdcdbd52dbb24ffeeef5/) | ⚠️ Unaudited |
| SiloGettersFacet | unknown | ethereum | 7 deployments: ethereum [`0x3f3d1d...267288`](./contracts/ethereum-1/0x3f3d1d3269c2bdc789dbddd5a6a20e56ff267288/); ethereum `0x865254...bfa8bb`; ethereum `0x988305...9bf9a8`; ethereum `0xa548da...e5ea4d`; ethereum `0xbbc36f...3a5622`; arbitrum `0x51757f...fcd312`; arbitrum `0xb4f9d5...52d4ea` | ⚠️ Unaudited |
| SiloV2Facet | unknown | ethereum | 2 deployments: ethereum [`0x23d231...38fda2`](./contracts/ethereum-1/0x23d231f37c8f5711468c8abbfbf1757d1f38fda2/); ethereum `0x4bb005...87c310` | ⚠️ Unaudited |
| TokenAdminRegistry | registry | arbitrum | [`0x39ae10...e7751e`](./contracts/arbitrum-42161/0x39ae1032cf4b334a1ed41cdd0833bdd7c7e7751e/) | ⚠️ Unaudited |
| TokenSupportFacet | token | arbitrum | 2 deployments: arbitrum [`0x17ac9d...159a95`](./contracts/arbitrum-42161/0x17ac9d59f4637a16f47c8a77a1c4ee7c7a159a95/); arbitrum `0xcc0f81...3f33ba` | ⚠️ Unaudited |
| TractorFacet | unknown | arbitrum | 2 deployments: arbitrum [`0xcb84f1...16479b`](./contracts/arbitrum-42161/0xcb84f1a368f303798db6d9ce7b4084aaf316479b/); arbitrum `0xd61e6f...dc85bb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x878982...91e371`](./contracts/ethereum-1/0x87898263b6c5babe34b4ec53f22d98430b91e371/) | ⚠️ Unaudited |
| UnwrapAndSendETH | unknown | ethereum | 2 deployments: ethereum [`0x737cad...793d96`](./contracts/ethereum-1/0x737cad465b75cdc4c11b3e312eb3fe5bef793d96/); arbitrum `0xd6fc4a...9a4749` | ⚠️ Unaudited |
| USDCTokenPool | core_logic | arbitrum | [`0xf46bef...be97e4`](./contracts/arbitrum-42161/0xf46beff26e1c4552fb4ffb00314bdf175fbe97e4/) | ⚠️ Unaudited |
| UsdOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0xb24a70...774180`](./contracts/ethereum-1/0xb24a70b71e4cca41eb114c2f61346982aa774180/); ethereum `0xe0adbe...8db7fd` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 4 deployments: ethereum [`0x3a70df...3c9bdd`](./contracts/ethereum-1/0x3a70dfa7d2262988064a2d051dd47521e43c9bdd/); ethereum `0x6c3f90...e6e490`; ethereum `0xc9c32c...f2ee49`; ethereum `0xd652c4...3d465d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0b8f06...74ca99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23a3c5...a8e6fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d3a66...382b13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e4c49...16a98e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32b153...772e7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b1977...c477e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fef99...493824` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ff308...90aad9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5cc805...a7a2f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x61f9c2...2231cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f3f27...9b67a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x86f780...f5a28a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x872251...017101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9258c2...5aff14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94bf26...19757b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d1d0a...fc15d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0f339...621430` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa9d7ab...e8cd6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb03e81...4c2fc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb673c6...f39107` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7260f...1a631d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf3341...8f6603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1f491...198a26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce9dcc...7715e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf68e13...179047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0242f3...db1f7c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x12b215...1f443b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x141209...39437f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1dc0f6...7337d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1f6647...02db6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x25648c...30b465` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x27862f...118120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x29b3b7...984ce0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2b55e4...fc0106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x38dbe7...e47ba6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3981e1...74ffd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a2a4c...e865a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3a428d...faa20b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3ff4b3...638c6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x403ec7...c2b148` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4099b8...cf174a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x483f33...b38dd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x495401...b2f577` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50e326...eae2bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5227b2...610f4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57dfb0...9b6104` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5cb70c...3eb695` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6334da...6a821c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x69ee2f...29bda9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6a9e40...910c2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x73d0d7...ab1ef2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x79a5d8...6a1795` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7d98d7...2def4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x84968c...9173d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9409b2...94e9ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x96baa2...964f2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9d9b87...54c4ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa51c8c...e03418` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa969bb...d5d1e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa9c267...476f3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba9335...a0c65a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbdec07...68e12f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc274d4...86ac58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xce8e12...1108e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd16747...0b6f5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd16b38...9f6a20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd1ce84...4665f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd4a7ae...d91116` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd55044...071739` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xddc471...c26b53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdf8b4c...acd671` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe13272...a2fd2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf0a05a...57d204` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf286bb...930795` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf48b9f...458c1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf6a39e...d15292` | ❓ Unverified |
| WellUpgradeable | unknown | arbitrum | 6 deployments: arbitrum `0xbea00a...8736ce`; arbitrum `0xbea00b...48d74f`; arbitrum `0xbea00c...c2e48c`; arbitrum `0xbea00d...e1b09c`; arbitrum `0xbea00e...a91bd7`; arbitrum `0xbea00f...4bed33` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/beanstalk/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [HALBORN,](https://basin.exchange/halborn-basin-audit.pdf) | Halborn | Audit | 2023-04 | stale | Direct | contract_name | 2 | high |
| [CYFRIN, (also discovered via alternate URL)](https://basin.exchange/cyfrin-basin-audit.pdf) | Cyfrin | Audit | 2023-06 | stale | Direct | contract_name|n/a | 2 | high |
| [CODE4RENA](https://code4rena.com/reports/2023-07-basin) | Code4rena | Contest | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Introduction](https://omniscia.io/reports/beanstalk-core-protocol) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 113 | high |
| [DL audit link](https://4ra72bs63w2i5qo5nm4zpz2tpmzbenpibyhramhjkhog7mtfdvxq.arweave.net/5EH9Bl7dtI7B3Ws5l-dTezISNegODxAw6VHcb7JlHW8) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 71 | high |
| [DL audit link](https://2adxrezjguhnrdzzvzwmcc52v4kdhtpw3vjk4737dbsobmwo6c6q.arweave.net/0Ad4kyk1DtiPOa5swQu6rxQzzfbdUq5_fxhk4LLO8L0) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 143 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1bea00...224449`](./contracts/ethereum-1/0x1bea0050e63e05fbb5d8ba2f10cf5800b6224449/) | BeanstalkERC20 | token | $12,007,411.25 | Verified native implementation with $12,007,411.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d6df5...c83d59`](./contracts/arbitrum-42161/0x0d6df5e737ef25913f6f2fa1649d0f9530c83d59/) | ApprovalFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x842929...f223ac`](./contracts/ethereum-1/0x84292919cb64b590c0131550483707e43ef223ac/) | BaseFeeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x347a4a...10960f`](./contracts/ethereum-1/0x347a4a1c2cc3d3afda86e60c74fac6285810960f/) | BeaNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2585bc...c599f7`](./contracts/ethereum-1/0x2585bc446edbd99de17a7a1a85ec328372c599f7/) | BeanstalkGetters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bed6c...e1e1b4`](./contracts/ethereum-1/0x4bed6cb142b7d474242d87f4796387deb9e1e1b4/) | BeanstalkPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a10b9...523fc5`](./contracts/ethereum-1/0x1a10b9406cd3afb7668f78a78720ca460c523fc5/) | Budget | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c90e5...751df6`](./contracts/ethereum-1/0x6c90e5ce27461e31b8954dfa2bc5101507751df6/) | BudgetFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007bcd...827102`](./contracts/ethereum-1/0x007bcddca929bbecf8347f68a0bc6cbe3c827102/) | ConvertGettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x107f33...0c96cc`](./contracts/arbitrum-42161/0x107f33211935bb72b721675c7e95a2d4cc0c96cc/) | DepotFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x179bb2...1c1a46`](./contracts/ethereum-1/0x179bb2636f0066d837f1a446083a0fba131c1a46/) | EnrootFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa560c3...f6d321`](./contracts/ethereum-1/0xa560c3afceb9a046573bf6f401134a6837f6d321/) | ERC721ABean | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c64de...d55535`](./contracts/ethereum-1/0x6c64deea49dddac54adc988f8ba700a2a0d55535/) | ERC721ABeanBasin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8b5fa...d6a38d`](./contracts/ethereum-1/0xf8b5fa117f492608b8f16aae84c69175ead6a38d/) | EthicalReturn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x16b6b2...9a87e5`](./contracts/arbitrum-42161/0x16b6b2deb4b19ddb664167cf8cbe601dfa9a87e5/) | GaugeGettersFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x043a11...69eaec`](./contracts/arbitrum-42161/0x043a11704a9e508a2b03c4dc38ae60dee369eaec/) | GaugePointFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e6aa4...d27f37`](./contracts/ethereum-1/0x8e6aa47a4f498b0067d2ae011fef4bc3a8d27f37/) | InitBip11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b5dc5...926605`](./contracts/ethereum-1/0x1b5dc50f5bee19f1fa3910987b16407634926605/) | InitBip12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc20628...f44ffc`](./contracts/ethereum-1/0xc20628ffff326c80056e35e39308e4ee0ff44ffc/) | InitBip13 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7da8e...f3816e`](./contracts/ethereum-1/0xb7da8e0be58fc8aab5b20c99f981cb4706f3816e/) | InitBip14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22a74e...a78ec9`](./contracts/ethereum-1/0x22a74ee9a54ec84801ebf7fd0c10df9668a78ec9/) | InitBip16 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1b8ac...d6481e`](./contracts/ethereum-1/0xe1b8ace704fb9c03df566c94fc9997a440d6481e/) | InitBip17 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x285dd7...254df0`](./contracts/ethereum-1/0x285dd7701f831ba8258f18da3fc049268f254df0/) | InitBip22 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3740df...3ceda4`](./contracts/ethereum-1/0x3740df01a85dcafa2232f2bc045c7668ce3ceda4/) | InitBip23 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf95389...a05654`](./contracts/ethereum-1/0xf95389567b222ec36e509b874e8ad4452ea05654/) | InitBip24 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48e1b4...d8fdf3`](./contracts/ethereum-1/0x48e1b4c66d1b7170069d6ab3221826589ed8fdf3/) | InitBip3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf039d9...97c5e3`](./contracts/ethereum-1/0xf039d98f294fff342d08de95a7dd5ad3b797c5e3/) | InitBip8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3926c...396ef8`](./contracts/ethereum-1/0xf3926c269804bd7223bd253a3c3783f8f2396ef8/) | InitBip9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6c77e...a15b9e`](./contracts/ethereum-1/0xf6c77e64473b913101f0ec1bfb75a386aba15b9e/) | InitBipNewSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ef9cc...ac7ddf`](./contracts/ethereum-1/0x6ef9cc52eb37e0de9592960c0c894a1000ac7ddf/) | InitBipSeedGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9ff32...c132f1`](./contracts/ethereum-1/0xa9ff32d5e2fa6d5b4552c591e01db9cbbbc132f1/) | InitEBip5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe73c76...f65dfd`](./contracts/ethereum-1/0xe73c769796220d0b4b47b36063e36d9e95f65dfd/) | InitEBip6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x451e36...cbd8a6`](./contracts/ethereum-1/0x451e36ca0a21f0d946b1f4710ea41bb557cbd8a6/) | InitHotFix6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15a205...cefa00`](./contracts/ethereum-1/0x15a2053b3d559d19fed2d7fc429304e837cefa00/) | InitMigrateUnripeBeanEthToBeanSteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x077495...4925bb`](./contracts/ethereum-1/0x077495925c17230e5e8951443d547ecdbb4925bb/) | InitMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e7cc6...a762be`](./contracts/ethereum-1/0x4e7cc6a0a9d4cf90e39feafefb7977e4e7a762be/) | InitOmnisciaAudit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb01c6b...e63b9d`](./contracts/ethereum-1/0xb01c6b965afb3c0106c62c57deccc9a81be63b9d/) | InitReplant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae6ce3...3ede5e`](./contracts/ethereum-1/0xae6ce391e8caad54f56c28e05c9da28c4f3ede5e/) | InitSiloEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa41d1e...3a8943`](./contracts/arbitrum-42161/0xa41d1e77b711581c4d2fd63d92a25499323a8943/) | InitUpdateOracleImplementation | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8f2bb1...651a57`](./contracts/arbitrum-42161/0x8f2bb164df87183af23e72d49572052e27651a57/) | L1ReceiverFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53106d...a7e0b1`](./contracts/arbitrum-42161/0x53106dc7d78df1eed36947cf0536d7eccca7e0b1/) | L1RecieverFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f6604...456501`](./contracts/ethereum-1/0x8f66044a9c95fae9d38b8bc30665ee04a2456501/) | L1TokenFacet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07d469...331b82`](./contracts/arbitrum-42161/0x07d4692291b9e30e326fd31706f686f83f331b82/) | L2ERC20TokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93703a...7e7ef6`](./contracts/ethereum-1/0x93703adc951b76451e3006960cfb3f927d7e7ef6/) | LegacyClaimWithdrawalFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cd310...7d6181`](./contracts/arbitrum-42161/0x1cd310f1146b7251155e70978dc08987537d6181/) | LibEvaluate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x016159...bf66c1`](./contracts/arbitrum-42161/0x016159b6bc7eaa69d2d9d42ef79ab4fe55bf66c1/) | LibFlood | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x029602...2ac717`](./contracts/arbitrum-42161/0x02960251e6d2ef0ccd79ad1927065f55132ac717/) | LibGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08a8e4...b97f71`](./contracts/ethereum-1/0x08a8e42bf3c4ef9608dc71a20106d1e028b97f71/) | LibGerminate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x165f9d...5dae2e`](./contracts/ethereum-1/0x165f9d2a986f70e472aa9569305105034a5dae2e/) | LibLockedUnderlying | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08acb7...7fa030`](./contracts/arbitrum-42161/0x08acb7258a3dbca0f040bd2c5f07e97b247fa030/) | LibPipelineConvert | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x007bcd...827102`](./contracts/arbitrum-42161/0x007bcddca929bbecf8347f68a0bc6cbe3c827102/) | LibShipping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a9b79...cf91a8`](./contracts/arbitrum-42161/0x6a9b79dda38515b3f77c3ef5bf6cfee030cf91a8/) | LibSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x620ff5...6ae7a3`](./contracts/arbitrum-42161/0x620ff53fb1ae879af099c95dbc129f06226ae7a3/) | LibSiloPermit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36eeea...ba647b`](./contracts/arbitrum-42161/0x36eeea940309992b2f6682e84a17195cc6ba647b/) | LibTokenSilo | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23704c...a1c57c`](./contracts/arbitrum-42161/0x23704c387cf9a3951b4cc01ce4fd789f99a1c57c/) | LibWellMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19ac2d...95b13e`](./contracts/arbitrum-42161/0x19ac2dc9a0bfda04dde8ea7437945872db95b13e/) | LiquidityWeightFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcccccc...b35626`](./contracts/arbitrum-42161/0xcccccc35b53c8a16404ae414afa31f30a5b35626/) | LSDChainlinkOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16a903...0b740a`](./contracts/ethereum-1/0x16a903b66403d3de69db50e6d1ad0b07490b740a/) | Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d8f6f...608fc1`](./contracts/ethereum-1/0x0d8f6f09a2b806d406d511c113f2fc3f4d608fc1/) | MetadataFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141209...39437f`](./contracts/ethereum-1/0x141209527f95540e0b018e56edf5a59e1339437f/) | MigrationFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x35f697...692965`](./contracts/arbitrum-42161/0x35f6977d9236c0734520878799598ea0fe692965/) | PipelineConvertFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a8977...1f8c7f`](./contracts/arbitrum-42161/0x8a89770722c84b60ce02989aedb22ac4791f8c7f/) | RBACTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c46f...42f935`](./contracts/ethereum-1/0x46c46fadc886ccd0dfeca903be06bb791142f935/) | Replant1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09d439...b58024`](./contracts/ethereum-1/0x09d439edae1370ec16de6194451fc66f96b58024/) | Replant2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c367e...439183`](./contracts/ethereum-1/0x2c367e6800bca042e1415c787e44f344ef439183/) | Replant2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2ef1f...7f158b`](./contracts/ethereum-1/0xf2ef1f6a4c111a54c1ad4abd386617c2527f158b/) | Replant3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30fbb6...e3c3b2`](./contracts/ethereum-1/0x30fbb6ce929461727988b945d3534a01f9e3c3b2/) | Replant4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f8d7b...65c4b4`](./contracts/ethereum-1/0x5f8d7b62a0c1762bbb65d8cf81b7aabf3365c4b4/) | Replant5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb82fec...e039d8`](./contracts/ethereum-1/0xb82fec5801a47c74f73eb533006acc586fe039d8/) | Replant6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2906f2...f688b5`](./contracts/ethereum-1/0x2906f2b668fc6f9b5c1dea6f7c76e788def688b5/) | Replant7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x80a6d3...eab1f5`](./contracts/ethereum-1/0x80a6d3e837965b97d7a84b4c5b3dbff986eab1f5/) | Replant8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ee2c9...a64b29`](./contracts/arbitrum-42161/0x0ee2c983874b4faf3c1352ea0271c5810ba64b29/) | ReseedAccountStatus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75c121...cddd85`](./contracts/arbitrum-42161/0x75c1212d7717f5aaa1179c6a71c9afc56ecddd85/) | ReseedBean | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3eee6c...4aea72`](./contracts/arbitrum-42161/0x3eee6ccbf41173b18c133200b1762a8d714aea72/) | ReseedField | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x81d652...4b2057`](./contracts/arbitrum-42161/0x81d652b45627f699dca555150b344df4fc4b2057/) | ReseedGlobal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36afd5...4cea20`](./contracts/arbitrum-42161/0x36afd58c440321fdf14b8311d019814eb94cea20/) | ReseedInternalBalances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe35c03...2efadb`](./contracts/ethereum-1/0xe35c0397dbb43eb7e2cb28a182d857a3a42efadb/) | ReseedL2Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x242bf5...745163`](./contracts/arbitrum-42161/0x242bf5d0eb3ab66d431286a1b2eea704e9745163/) | ReseedPodMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3d4c4f...f1edc1`](./contracts/arbitrum-42161/0x3d4c4f48f2a0b7e94aebe629ad85f61a73f1edc1/) | ReseedSiloRevised | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5a1717...e919c6`](./contracts/arbitrum-42161/0x5a1717dce3f93bfc7075944b7fd47247d7e919c6/) | ReseedTransferOwnership | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0907bc...5a5575`](./contracts/ethereum-1/0x0907bce821cf95155a7faf372079dcc2f25a5575/) | SeasonGettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x555555...feeef5`](./contracts/arbitrum-42161/0x555555987d98079b9f43cdcdbd52dbb24ffeeef5/) | ShipmentPlanner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f3d1d...267288`](./contracts/ethereum-1/0x3f3d1d3269c2bdc789dbddd5a6a20e56ff267288/) | SiloGettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23d231...38fda2`](./contracts/ethereum-1/0x23d231f37c8f5711468c8abbfbf1757d1f38fda2/) | SiloV2Facet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17ac9d...159a95`](./contracts/arbitrum-42161/0x17ac9d59f4637a16f47c8a77a1c4ee7c7a159a95/) | TokenSupportFacet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x737cad...793d96`](./contracts/ethereum-1/0x737cad465b75cdc4c11b3e312eb3fe5bef793d96/) | UnwrapAndSendETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a70df...3c9bdd`](./contracts/ethereum-1/0x3a70dfa7d2262988064a2d051dd47521e43c9bdd/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 153 |
| upstream | 24 |
| standard_library | 7 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=334

Fork inheritance lineage and inherited audits are included when available.
