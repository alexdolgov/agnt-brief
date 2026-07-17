# Agentic Audit Brief: flaunch

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.362Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: base, ethereum
- Contract surface: 59 unique implementations (182 raw deployments)
- DeFi Llama TVL: $1,351,134.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 81 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on solady.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (erc165, erc721holder, erc1155holder). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 194; live-surface contracts included: 182 (178 live, 4 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 26/54 (48.1%)
- Deployed-live implementations: 55 of 59 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 26/55
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 59
- Raw deployments: 182
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 26 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FlayerLabs | Tier 2 | 26 | 47.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressFeeSplitManager | unknown | base | n/a | 8 deployments: base [`0x58e8b94affa117c525d040918344b7a0b779a307`](./contracts/base-8453/0x58e8b94affa117c525d040918344b7a0b779a307/); base `0x6baa4ec493a9698dc7388c0f290e29ea3d149f99`; base `0x929d4815fe415b85e53975aec58a8980bda3d90c`; base `0xabde686e8a710ade941189d634596215ba78334b`; base `0xc3f4e72de4d37988f12c101b0766fd8462f6faf9`; base `0xe5a5adf1e46d14dc70f52758487f381df0f7f386`; base `0xf6d8018450109a68acfbcd2523dc43fb31920a7d`; base `0xfab4ba48a322efc8b25815448be6018d211e89f3` | ✅ Audited |
| AnyBidWall | unknown | base | n/a | [`0x2154c604df568a5285284d1c4918dc98c39240df`](./contracts/base-8453/0x2154c604df568a5285284d1c4918dc98c39240df/) | ✅ Audited |
| AnyFlaunch | unknown | base | n/a | 4 deployments: base [`0x32e59c950dbbf0123e3a7008dab56480c3500983`](./contracts/base-8453/0x32e59c950dbbf0123e3a7008dab56480c3500983/); base `0x71001dd43209015cdd430f2ea043c93afce43666`; base `0xc5b2e8f197407263f4b62a35c71bfc394ecf95d5`; base `0xf175a370eb26ea26c42caaecd10ee723ed844c50` | ✅ Audited |
| AnyPositionManager | governance | base | n/a | [`0x8dc3b85e1dc1c846ebf3971179a751896842e5dc`](./contracts/base-8453/0x8dc3b85e1dc1c846ebf3971179a751896842e5dc/) | ✅ Audited |
| BidWall | unknown | base | n/a | [`0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c`](./contracts/base-8453/0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c/) | ✅ Audited |
| BuyBackAndBurnFlay | unknown | base | n/a | 6 deployments: base [`0x2994a2849666c3487aaef9bb0662f853a710413c`](./contracts/base-8453/0x2994a2849666c3487aaef9bb0662f853a710413c/); base `0x558a4d2f46765047596cef406e27fe8cb0725192`; base `0x93db9ae3a388aa4e93d23801ab5c2acaa3b4016f`; base `0xc5ee9697de8544dc3f63a943a80bd388ac30968a`; base `0xd0bc174ded46796c99b2a7be4460467957881982`; base `0xe8476aa6508f0c31e3126f2340d18e9c6fbf8dd3` | ✅ Audited |
| BuyBackManager | unknown | base | n/a | [`0x3aaf3b1d8cd5b61c77f99ba7cdf41e9ec0ba8a3f`](./contracts/base-8453/0x3aaf3b1d8cd5b61c77f99ba7cdf41e9ec0ba8a3f/) | ✅ Audited |
| FairLaunch | unknown | base | n/a | 2 deployments: base [`0x184b9f99ff343d982574cfc3bd8bed8634b68f92`](./contracts/base-8453/0x184b9f99ff343d982574cfc3bd8bed8634b68f92/); base `0x4dc442403e8c758425b93c59dc737da522f32640` | ✅ Audited |
| FeeEscrow | operational_periphery | base | n/a | [`0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde`](./contracts/base-8453/0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde/) | ✅ Audited |
| Flaunch | unknown | base | n/a | 5 deployments: base [`0x0cf6bdf0a85a9d6763361037985b76c8893553af`](./contracts/base-8453/0x0cf6bdf0a85a9d6763361037985b76c8893553af/); base `0x516af52d0c629b5e378da4dc64ecb0744ce10109`; base `0x6a53f8b799be11a2a3264ef0bff183dcb12d9571`; base `0xb4512bf57d50fbcb64a3adf8b17a79b2a204c18c`; base `0xba303a5fb4c04d306fa555b204c4c899b2f06d73` | ✅ Audited |
| FlaunchPremineZap | unknown | base | n/a | [`0xefa8267954b0740dc981a40d8e23d07116c8dffe`](./contracts/base-8453/0xefa8267954b0740dc981a40d8e23d07116c8dffe/) | ✅ Audited |
| FlaunchZap | adapter | base | n/a | 8 deployments: base [`0x2bc8cbfe237aeddc7c296436fefe239a0a22dabf`](./contracts/base-8453/0x2bc8cbfe237aeddc7c296436fefe239a0a22dabf/); base `0x8af174ed38891f0f3ea26a6cd692cc22eac913ee`; base `0xa9bd947751c6a6d33ccd0ef4a03c48466f24c172`; base `0xc3c6dd2b13cbc2354e20a4eebc75b6ff71126763`; base `0xe52de1801c10cf709cc8e62d43d783afe984b510`; base `0xe70c28f21e3b40e6be7d0188706635356f318211`; base `0xf9753e6e4fdd1869be40685690a28bff26b8b114`; base `0xfa9e8528ee95eb109bffd1a2d59cb95b300a672a` | ✅ Audited |
| IndexerSubscriber | unknown | base | n/a | 3 deployments: base [`0x221a110f421384c2d5f2c56f04b8e97e47c86088`](./contracts/base-8453/0x221a110f421384c2d5f2c56f04b8e97e47c86088/); base `0x7c6088c1185fbb770deb1ca7ddeed4ba57659663`; base `0xf14d1fb2962151a7b81bd14ce31683ab7861ef10` | ✅ Audited |
| MarketCappedPrice | unknown | base | n/a | 2 deployments: base [`0x09a10aee38e93e3ed196728adcf1999e38993ee7`](./contracts/base-8453/0x09a10aee38e93e3ed196728adcf1999e38993ee7/); base `0xadfe60c7df588fa102593644684566b2948b0a6c` | ✅ Audited |
| MerkleAirdrop | unknown | base | n/a | [`0x635b4afcf977ed946bda31fc7e381c970159077a`](./contracts/base-8453/0x635b4afcf977ed946bda31fc7e381c970159077a/) | ✅ Audited |
| PositionManager | governance | base | n/a | [`0x23321f11a6d44fd1ab790044fdfde5758c902fdc`](./contracts/base-8453/0x23321f11a6d44fd1ab790044fdfde5758c902fdc/) | ✅ Audited |
| PreventNoFairLaunch | unknown | base | n/a | [`0x8ecd49f762c82b48db927cb80b5629fb3f4c9294`](./contracts/base-8453/0x8ecd49f762c82b48db927cb80b5629fb3f4c9294/) | ✅ Audited |
| RevenueManager | governance | base | n/a | 9 deployments: base [`0x1af9b9f168bfd2046f45e0ce03972864bce7ee36`](./contracts/base-8453/0x1af9b9f168bfd2046f45e0ce03972864bce7ee36/); base `0x2a1fc8420ff7334a9e9f4ba6c4236eed21c679e2`; base `0x33f04d3a76cffa25e5da285d97336e67611b2282`; base `0x4fb9de6bbe970a49c19fb967f937351728c01b8f`; base `0x641d5cf4290c7c6e45cb672c4467a9e4fc89d72d`; base `0x662a766adba1ed135d92642da3732283084f9950`; base `0x712fa8ddc7347b4b6b029aa21710f365cd02d898`; base `0xb6c0cca8b3a354fa0f348c121657f4a952e92b3d`; base `0xc8d4b2ca8ed6868ee768beab1f932d7eeccc1b50` | ✅ Audited |
| SignedImporter | unknown | base | n/a | [`0x90664e887e4e98cf281f4c244a9957544134e358`](./contracts/base-8453/0x90664e887e4e98cf281f4c244a9957544134e358/) | ✅ Audited |
| StakingManager | unknown | base | n/a | 8 deployments: base [`0x361a874945c07069beed611f950506a8e324b630`](./contracts/base-8453/0x361a874945c07069beed611f950506a8e324b630/); base `0x3c3bc8e63df9ccd5cdaa01f6833b2e4dcdb40bf0`; base `0x540677596a3aa2d75f2eb1e791b8f27ec4a9622d`; base `0xa15f92a7c09a7d6adbc00ff2db63e414fbfea193`; base `0xb5dd2fbca9b746a56cf9e5e2adabf8bef0badbea`; base `0xcc920a815169230c0c85add65a9786b2691324c2`; base `0xdcb1beaab727a559fa55390ee103b408ff72b5b2`; base `0xec0069f8dbbbc94058dc895000dd38ef40b3125d` | ✅ Audited |
| StaticFeeCalculator | unknown | base | n/a | [`0x002f0f6d57bd3692ee9bb59e82e5433afd6302ec`](./contracts/base-8453/0x002f0f6d57bd3692ee9bb59e82e5433afd6302ec/) | ✅ Audited |
| TokenImporter | unknown | base | n/a | 2 deployments: base [`0x6fb66f4fc262dc86e12136c481ba7c411e668197`](./contracts/base-8453/0x6fb66f4fc262dc86e12136c481ba7c411e668197/); base `0xb47af90ae61bc916ea4b4bacffae4570e7435842` | ✅ Audited |
| TreasuryManagerFactory | operational_periphery | base | n/a | [`0x48af8b28ddc5e5a86c4906212fc35fa808ca8763`](./contracts/base-8453/0x48af8b28ddc5e5a86c4906212fc35fa808ca8763/) | ✅ Audited |
| WhitelistedPermissions | unknown | base | n/a | [`0x828b58b2b2df8ff3221fbe2b07e75a56a84493cc`](./contracts/base-8453/0x828b58b2b2df8ff3221fbe2b07e75a56a84493cc/) | ✅ Audited |
| WhitelistFairLaunch | unknown | base | n/a | 4 deployments: base [`0x8ea82b35b890987cd6b55271f593abbc0fe226f6`](./contracts/base-8453/0x8ea82b35b890987cd6b55271f593abbc0fe226f6/); base `0x8ecc811a65beaf51d0763a6304e968072a47c7e5`; base `0x9718c9c8566fea4d1b38524fdf403e81c4d7f1d3`; base `0xfbb09a77c484e3d8ec8ec2b00bc4adbe8699462d` | ✅ Audited |
| WhitelistPoolSwap | unknown | base | n/a | 4 deployments: base [`0x29d66cbfa911cc54bc7111ca5ee19d1f2e4c3837`](./contracts/base-8453/0x29d66cbfa911cc54bc7111ca5ee19d1f2e4c3837/); base `0x6af705b1b82f0a74c19d1c468794287adcea94ee`; base `0x862d5471b3e49d48e2e152793f00c91a9caf054a`; base `0xde9cfae034f6813e1b5741576fd9e7838dd4534d` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyMarketCappedPriceV3 | unknown | base | n/a | 2 deployments: base [`0x08222ea6abe9111b77cf006dc7f0a7c71fccf390`](./contracts/base-8453/0x08222ea6abe9111b77cf006dc7f0a7c71fccf390/); base `0xd565c460922ea1220eb65733b111cc8bde5a2a93` | ⚠️ Unaudited |
| BuyBackAction | unknown | base | n/a | [`0xda4866c97e3414b920663041c680012d6ee296be`](./contracts/base-8453/0xda4866c97e3414b920663041c680012d6ee296be/) | ⚠️ Unaudited |
| ClaimFeesAction | unknown | base | n/a | [`0x3db1d2d3a1fcb23386df92cb50025e25980cf20b`](./contracts/base-8453/0x3db1d2d3a1fcb23386df92cb50025e25980cf20b/) | ⚠️ Unaudited |
| ClankerWorldVerifier | periphery | base | n/a | [`0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b`](./contracts/base-8453/0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b/) | ⚠️ Unaudited |
| ClosedPermissions | unknown | base | n/a | [`0x4dfc76a31a2a0110739611683a8b6c5201480fa1`](./contracts/base-8453/0x4dfc76a31a2a0110739611683a8b6c5201480fa1/) | ⚠️ Unaudited |
| DistributeAction | unknown | base | n/a | [`0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff`](./contracts/base-8453/0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff/) | ⚠️ Unaudited |
| DopplerVerifier | periphery | base | n/a | [`0xedd66b080b8e9425c39d349a3fb69f480580f993`](./contracts/base-8453/0xedd66b080b8e9425c39d349a3fb69f480580f993/) | ⚠️ Unaudited |
| DynamicAddressFeeSplitManager | unknown | base | n/a | 2 deployments: base [`0x18713855492a778363e23e2cde325344b8fd6f8d`](./contracts/base-8453/0x18713855492a778363e23e2cde325344b8fd6f8d/); base `0x9b332ea14a99b74cab03a3d3178964ed9ce35fc8` | ⚠️ Unaudited |
| FastFlaunchZap | unknown | base | n/a | 3 deployments: base [`0x68d967d25806fef4aa134db031cdcc55d3e20f92`](./contracts/base-8453/0x68d967d25806fef4aa134db031cdcc55d3e20f92/); base `0x70b5f6753a0a45228d0e3339d2964c54280d7ea4`; base `0xd79e27f51ddf9df5ee76106ee192530f474b02f6` | ⚠️ Unaudited |
| FeeEscrowRegistry | operational_periphery | base | n/a | [`0x588aba851ac93a188560cfcdb189ac6133457342`](./contracts/base-8453/0x588aba851ac93a188560cfcdb189ac6133457342/) | ⚠️ Unaudited |
| FeeExemptions | unknown | base | n/a | [`0xfdce459071c74b732b2dec579afb38ea552c4e06`](./contracts/base-8453/0xfdce459071c74b732b2dec579afb38ea552c4e06/) | ⚠️ Unaudited |
| FlAaveV3WethGateway | token | base | n/a | [`0x344e4d19c851b317bb65d31bb5c4e3815b53d727`](./contracts/base-8453/0x344e4d19c851b317bb65d31bb5c4e3815b53d727/) | ⚠️ Unaudited |
| FlaunchFeeExemption | unknown | base | n/a | 2 deployments: base [`0x4bdd067eaabd8d0fe1ccbe3c885c20ca19cc5d69`](./contracts/base-8453/0x4bdd067eaabd8d0fe1ccbe3c885c20ca19cc5d69/); base `0x705624ee66a4726b68e3ea9f230fd924253fe613` | ⚠️ Unaudited |
| FlayerGovernor | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38`](./contracts/ethereum-1/0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38/); ethereum `0xb5862e869da6508546fc6a161c2f5feff636288a` | ⚠️ Unaudited |
| flETH | unknown | base | n/a | [`0x000000000d564d5be76f7f0d28fe52605afc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | ⚠️ Unaudited |
| flETHHooks | unknown | base | n/a | [`0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888`](./contracts/base-8453/0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888/) | ⚠️ Unaudited |
| MarketCappedPriceV3 | unknown | base | n/a | 4 deployments: base [`0x3192c0192888f273642865234f341c33f9ac6d2c`](./contracts/base-8453/0x3192c0192888f273642865234f341c33f9ac6d2c/); base `0x6575a6af0eeace121fd60b99d491b24357e8528b`; base `0xf318e170d10a1f0d9b57211e908a7f081123e7f6`; base `0xff59e02cb77d69eca99bd43d090faa46f490196e` | ⚠️ Unaudited |
| Memecoin | unknown | base | n/a | 51 deployments: base [`0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/); base `0x02d777380c414ad4b49effd0a63270bb751a7e26`; base `0x0346a968fc7c6a2de406e944408bab7286dd0bcd`; base `0x06a05043eb2c1691b19c2c13219db9212269ddc5`; base `0x09a55c885e1a235bce2b76089ce395d93d3416a2`; base `0x0f4f5faef23e161b5b0553813a80d36251dead22`; base `0x1cc8244b7b98957c86581b1d414ed89146373783`; base `0x2188cf5e99e33bdf818ff47448f8d8f9a9ecd080`; base `0x21bac3d2686f6aebd145a232aa1e44325ae4297c`; base `0x22aab1803d9b5ed57c4e34090884867f5fdafbb7`; base `0x28314940a3605845f13b525cd27c5f375c122abf`; base `0x32dd9a867e7913657062472f6957069d294ff306`; base `0x3d8931a6290ec9e071c2410e2d6319c981d00a95`; base `0x46bc5b1b003e9659d5638715e3302e15c372d59d`; base `0x49886a44ed16245216817e82f33bc4b63ce51039`; base `0x557e8f1cd9fb4e9dfeca817b15b737328d90821a`; base `0x5c808a3d45a79c6a0576af319e9fd7e18ef0cd78`; base `0x61934a6f7e130f4f2c7ceb4185606592ac0e55cf`; base `0x63a33d03fb990c670cf135ca3178f4f7e6fe3456`; base `0x64573d2816ae6138c345a5150b6d1513264500e8`; base `0x66c1362780b9c6ba6dc62dbe02dd50681a33ebf6`; base `0x716f8e756f9277f8c9949926141c2666b86b5809`; base `0x803c33cf66588d0fa1b3272536ee9e37c90dbd79`; base `0x80fb0f782192ca53d9503af07643306197f3dce0`; base `0x8644d6b2d701295cc8dbab44f97ea8d57ff2a55b`; base `0x8cbb2c6daf0b6dc48a49ca7f0ce0a421df1b91d4`; base `0x9074d71cbc97bf39e41366af80f28b05fd4d4403`; base `0x909ebb12ab0d3613370d2a2446c0154a8df6d9b3`; base `0x93657dcab8ac59ba33e2bf5280e4e8b58c88ae57`; base `0x9551b0f5b890013ad82c7391be196d77c8c4eb25`; base `0x98805da03d7f0faf3365f629d1014c67d7838c89`; base `0x9e9b7825381305f0acbfda005cda434e7ea7bcea`; base `0xa448d40f6793773938a6b7427091c35676899125`; base `0xa4e3dc12d8b52e462c632baad6efdc6b323b614d`; base `0xaf679be9eef329531177710d673d72cef6d58bf1`; base `0xb7965a38552e0f7d5b728bad1ef2817ca7ae0b68`; base `0xbab36dc9ba9d7c628d2d35b60b1a0db88314de5f`; base `0xbd072aba9cad9d573a5b3498f79b117dbefdc7f4`; base `0xbd56f46ea1bb8ea1225fde57d495cb40a24026d1`; base `0xbd8b2743bf10988cd459c1d36bd00d8a1cc73d8d`; base `0xbebdddbc3b474c031f00eb8c664e1f17bfdbd0ea`; base `0xc3b678304b5ed56fee974d477dd7fb97bc90d231`; base `0xc78fabc2cb5b9cf59e0af3da8e3bc46d47753a4e`; base `0xc827d9616bf9520b9b9b316c0bcf5205fb24976c`; base `0xcd62a50415d0812965971e6f2ccc3a27ae80426a`; base `0xd98b11d2b6012509fada6daea61b383cfa8e2db3`; base `0xdc33a1172bd4308cb17e362c9a291cc4147bda3d`; base `0xe75413620f65d5fe202218c0b87a3e710561890c`; base `0xeb46fd20b4ecc851734e13cd0b8758af2c31caeb`; base `0xf1eeeeeeecd95e9eb2df58484ceed175acbd945c`; base `0xf4b7faf0379ec9c1afef984511b884fc8db7767a` | ⚠️ Unaudited |
| MemecoinTreasury | unknown | base | n/a | 2 deployments: base [`0x7397390360bd9d559d9277e60d47b99933791232`](./contracts/base-8453/0x7397390360bd9d559d9277e60d47b99933791232/); base `0xa327725c2dcd8077dbc49701dd7a673ffb768145` | ⚠️ Unaudited |
| Notifier | unknown | base | n/a | 2 deployments: base [`0x3aa39ac6dcb9c9482a7023af8e207920df5909f6`](./contracts/base-8453/0x3aa39ac6dcb9c9482a7023af8e207920df5909f6/); base `0xc31d9ff85f8490a7b9e969c058bfbdaefd4b5d35` | ⚠️ Unaudited |
| PoolManager | core_logic | base | n/a | [`0x498581ff718922c3f8e6a244956af099b2652b2b`](./contracts/base-8453/0x498581ff718922c3f8e6a244956af099b2652b2b/) | ⚠️ Unaudited |
| PoolSwap | unknown | base | n/a | 2 deployments: base [`0x4c211268cbf275637a8c235e63a26bc0e05aca25`](./contracts/base-8453/0x4c211268cbf275637a8c235e63a26bc0e05aca25/); base `0xdcf8e5e2a21e9b7e37b1b1a6612f1376723dd08e` | ⚠️ Unaudited |
| ReferralEscrow | unknown | base | n/a | 2 deployments: base [`0xbd39c7be6d98bd1a3e4ad482baf99d738947fe55`](./contracts/base-8453/0xbd39c7be6d98bd1a3e4ad482baf99d738947fe55/); base `0xd381f8ea57df43c57cfe6e5b19a0a4700396f28c` | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | 5 deployments: ethereum [`0x000000000bb63d5c070d0d5791517886a4d8c545`](./contracts/ethereum-1/0x000000000bb63d5c070d0d5791517886a4d8c545/); ethereum `0x1b8a682615cccc826f0a374350f545e8f237b993`; ethereum `0x2d48ba599d490f8a4ac8e42d7a75097d78693ac4`; ethereum `0x64de23a547c10dfb5950d7aaefd085d02f04c948`; ethereum `0x6c4c0cd7e0e5eeffbd77aafe1820d3b9b1ef27b0` | ⚠️ Unaudited |
| TrustedSignerFeeCalculator | unknown | base | n/a | 5 deployments: base [`0x06ea8bd7476e370c919fa76f78eb08277aec60f3`](./contracts/base-8453/0x06ea8bd7476e370c919fa76f78eb08277aec60f3/); base `0x2a78ab6e2458e04284dfd5bbef21d660a5b7a26c`; base `0x2b686652494798436af116076cf557f935b321cd`; base `0x4d0a21c0b56683d68cc4c2de715c35afa83aa3a4`; base `0xbd478b083cbab98307eab7b0fa13ea6f7ecc8fa4` | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | [`0x6ff5693b99212da76ad316178a184ab56d299b43`](./contracts/base-8453/0x6ff5693b99212da76ad316178a184ab56d299b43/) | ⚠️ Unaudited |
| VirtualsVerifier | periphery | base | n/a | [`0x06a089fa231aca48d2aa77365123ad9aca43d3a4`](./contracts/base-8453/0x06a089fa231aca48d2aa77365123ad9aca43d3a4/) | ⚠️ Unaudited |
| WhitelistVerifier | periphery | base | n/a | [`0x7a04367563a65db574d6b7d084fdbcf4a570c5a6`](./contracts/base-8453/0x7a04367563a65db574d6b7d084fdbcf4a570c5a6/) | ⚠️ Unaudited |
| ZoraVerifier | periphery | base | n/a | [`0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9`](./contracts/base-8453/0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x37596de696f466d688118bf45cf201e6f2ce3c62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bfad69dfe6b080da2cf66527c0f3609e675d398` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x688aeb06a2fc1cf4815f409147f3ff62c37ad384` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70f2ef8f3c72f808afe2919ab5c32a3a9e001a67` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-12_Security_Review_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FvGZ6DMH5qc5WmOLDVo1R%2F2024-12_Security_Review_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-11 | aging | Direct | contract_name | 28 | high |
| [2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FrUVPPUrniThyiTPkK2kn%2F2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FLe4HhcXKikOZSlfl2bSl%2F2025-03_Security%20Review_FlayerLabs_Flaunch%20v1.1%20Protocol%20Upgrade.pdf) | FlayerLabs | Audit | 2025-03 | aging | Direct | contract_name | 56 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x08222ea6abe9111b77cf006dc7f0a7c71fccf390`](./contracts/base-8453/0x08222ea6abe9111b77cf006dc7f0a7c71fccf390/) | AnyMarketCappedPriceV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda4866c97e3414b920663041c680012d6ee296be`](./contracts/base-8453/0xda4866c97e3414b920663041c680012d6ee296be/) | BuyBackAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3db1d2d3a1fcb23386df92cb50025e25980cf20b`](./contracts/base-8453/0x3db1d2d3a1fcb23386df92cb50025e25980cf20b/) | ClaimFeesAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b`](./contracts/base-8453/0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b/) | ClankerWorldVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4dfc76a31a2a0110739611683a8b6c5201480fa1`](./contracts/base-8453/0x4dfc76a31a2a0110739611683a8b6c5201480fa1/) | ClosedPermissions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff`](./contracts/base-8453/0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff/) | DistributeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xedd66b080b8e9425c39d349a3fb69f480580f993`](./contracts/base-8453/0xedd66b080b8e9425c39d349a3fb69f480580f993/) | DopplerVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18713855492a778363e23e2cde325344b8fd6f8d`](./contracts/base-8453/0x18713855492a778363e23e2cde325344b8fd6f8d/) | DynamicAddressFeeSplitManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x68d967d25806fef4aa134db031cdcc55d3e20f92`](./contracts/base-8453/0x68d967d25806fef4aa134db031cdcc55d3e20f92/) | FastFlaunchZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x588aba851ac93a188560cfcdb189ac6133457342`](./contracts/base-8453/0x588aba851ac93a188560cfcdb189ac6133457342/) | FeeEscrowRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfdce459071c74b732b2dec579afb38ea552c4e06`](./contracts/base-8453/0xfdce459071c74b732b2dec579afb38ea552c4e06/) | FeeExemptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x344e4d19c851b317bb65d31bb5c4e3815b53d727`](./contracts/base-8453/0x344e4d19c851b317bb65d31bb5c4e3815b53d727/) | FlAaveV3WethGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4bdd067eaabd8d0fe1ccbe3c885c20ca19cc5d69`](./contracts/base-8453/0x4bdd067eaabd8d0fe1ccbe3c885c20ca19cc5d69/) | FlaunchFeeExemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38`](./contracts/ethereum-1/0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38/) | FlayerGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x000000000d564d5be76f7f0d28fe52605afc7cf8`](./contracts/base-8453/0x000000000d564d5be76f7f0d28fe52605afc7cf8/) | flETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888`](./contracts/base-8453/0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888/) | flETHHooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3192c0192888f273642865234f341c33f9ac6d2c`](./contracts/base-8453/0x3192c0192888f273642865234f341c33f9ac6d2c/) | MarketCappedPriceV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959`](./contracts/base-8453/0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959/) | Memecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7397390360bd9d559d9277e60d47b99933791232`](./contracts/base-8453/0x7397390360bd9d559d9277e60d47b99933791232/) | MemecoinTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3aa39ac6dcb9c9482a7023af8e207920df5909f6`](./contracts/base-8453/0x3aa39ac6dcb9c9482a7023af8e207920df5909f6/) | Notifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x498581ff718922c3f8e6a244956af099b2652b2b`](./contracts/base-8453/0x498581ff718922c3f8e6a244956af099b2652b2b/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4c211268cbf275637a8c235e63a26bc0e05aca25`](./contracts/base-8453/0x4c211268cbf275637a8c235e63a26bc0e05aca25/) | PoolSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbd39c7be6d98bd1a3e4ad482baf99d738947fe55`](./contracts/base-8453/0xbd39c7be6d98bd1a3e4ad482baf99d738947fe55/) | ReferralEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06ea8bd7476e370c919fa76f78eb08277aec60f3`](./contracts/base-8453/0x06ea8bd7476e370c919fa76f78eb08277aec60f3/) | TrustedSignerFeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6ff5693b99212da76ad316178a184ab56d299b43`](./contracts/base-8453/0x6ff5693b99212da76ad316178a184ab56d299b43/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06a089fa231aca48d2aa77365123ad9aca43d3a4`](./contracts/base-8453/0x06a089fa231aca48d2aa77365123ad9aca43d3a4/) | VirtualsVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7a04367563a65db574d6b7d084fdbcf4a570c5a6`](./contracts/base-8453/0x7a04367563a65db574d6b7d084fdbcf4a570c5a6/) | WhitelistVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9`](./contracts/base-8453/0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9/) | ZoraVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=84

Zero-match audit list:

- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf

Fork inheritance lineage and inherited audits are included when available.
