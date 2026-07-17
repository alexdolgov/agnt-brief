# Agentic Audit Brief: flaunch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 86 unique implementations (209 raw deployments)
- Coverage basis: 6/12 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,351,134.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for flaunch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across base, ethereum. Structural roles: 8 supporting, 4 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: supporting (8), core (4)
- Contract kinds: contract (12)
- Detected standards: ownable (5), erc165 (4), accesscontrol (2), erc721 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (9), solady (9), solmate (2), permit2 (1), uniswap-v2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AddressFeeSplitManager (`0xf6d8018450109a68acfbcd2523dc43fb31920a7d`, chain 8453)
- BidWall (`0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c`, chain 8453)
- FeeEscrow (`0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde`, chain 8453)
- Flaunch (`0x516af52d0c629b5e378da4dc64ecb0744ce10109`, chain 8453)
- FlaunchZap (`0xe52de1801c10cf709cc8e62d43d783afe984b510`, chain 8453)
- PoolManager (`0x498581ff718922c3f8e6a244956af099b2652b2b`, chain 8453)
- PoolSwap (`0xdcf8e5e2a21e9b7e37b1b1a6612f1376723dd08e`, chain 8453)
- PositionManager (`0x23321f11a6d44fd1ab790044fdfde5758c902fdc`, chain 8453)
- RevenueManager (`0x1af9b9f168bfd2046f45e0ce03972864bce7ee36`, chain 8453)
- StakingManager (`0xa15f92a7c09a7d6adbc00ff2db63e414fbfea193`, chain 8453)
- TreasuryManagerFactory (`0x48af8b28ddc5e5a86c4906212fc35fa808ca8763`, chain 8453)
- UniversalRouter (`0x6ff5693b99212da76ad316178a184ab56d299b43`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/12 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 12 of 86 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/68
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 86
- Raw deployments: 209
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FlayerLabs | Tier 2 | 6 | 8.8% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BidWall | unknown | project_anchor | own_supporting | 0 | base | unit-266840 | `0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c` | ✅ Audited |
| Flaunch | unknown | project_anchor | own_supporting | 0 | base | unit-266837 | `0x516af52d0c629b5e378da4dc64ecb0744ce10109` | ✅ Audited |
| FlaunchZap | adapter | project_anchor | own_supporting | 0 | base | unit-266843 | `0xe52de1801c10cf709cc8e62d43d783afe984b510` | ✅ Audited |
| PositionManager | governance | project_anchor | own_supporting | 0 | base | unit-266834 | `0x23321f11a6d44fd1ab790044fdfde5758c902fdc` | ✅ Audited |
| RevenueManager | governance | project_anchor | own_supporting | 0 | base | unit-266833 | `0x1af9b9f168bfd2046f45e0ce03972864bce7ee36` | ✅ Audited |
| TreasuryManagerFactory | operational_periphery | project_anchor | own_supporting | 0 | base | unit-266835 | `0x48af8b28ddc5e5a86c4906212fc35fa808ca8763` | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressFeeSplitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x58e8b94affa117c525d040918344b7a0b779a307`; base `0x6baa4ec493a9698dc7388c0f290e29ea3d149f99`; base `0x929d4815fe415b85e53975aec58a8980bda3d90c`; base `0xabde686e8a710ade941189d634596215ba78334b`; base `0xc3f4e72de4d37988f12c101b0766fd8462f6faf9`; base `0xe5a5adf1e46d14dc70f52758487f381df0f7f386`; base `0xfab4ba48a322efc8b25815448be6018d211e89f3` | ⚠️ Unaudited |
| AddressFeeSplitManager | governance | project_anchor | own_supporting | 0 | base | unit-266844 | `0xf6d8018450109a68acfbcd2523dc43fb31920a7d` | ⚠️ Unaudited |
| AnyBidWall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2154c604df568a5285284d1c4918dc98c39240df` | ⚠️ Unaudited |
| AnyFlaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x32e59c950dbbf0123e3a7008dab56480c3500983`; base `0x71001dd43209015cdd430f2ea043c93afce43666`; base `0xc5b2e8f197407263f4b62a35c71bfc394ecf95d5`; base `0xf175a370eb26ea26c42caaecd10ee723ed844c50` | ⚠️ Unaudited |
| AnyMarketCappedPriceV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x08222ea6abe9111b77cf006dc7f0a7c71fccf390`; base `0xd565c460922ea1220eb65733b111cc8bde5a2a93` | ⚠️ Unaudited |
| AnyPositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8dc3b85e1dc1c846ebf3971179a751896842e5dc` | ⚠️ Unaudited |
| BurnTokensAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8696a1f26e678d15c251f07556696b877d3382c8` | ⚠️ Unaudited |
| BuyBackAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda4866c97e3414b920663041c680012d6ee296be` | ⚠️ Unaudited |
| BuyBackAndBurnFlay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x2994a2849666c3487aaef9bb0662f853a710413c`; base `0x558a4d2f46765047596cef406e27fe8cb0725192`; base `0x93db9ae3a388aa4e93d23801ab5c2acaa3b4016f`; base `0xc5ee9697de8544dc3f63a943a80bd388ac30968a`; base `0xd0bc174ded46796c99b2a7be4460467957881982`; base `0xe8476aa6508f0c31e3126f2340d18e9c6fbf8dd3` | ⚠️ Unaudited |
| BuyBackManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3aaf3b1d8cd5b61c77f99ba7cdf41e9ec0ba8a3f` | ⚠️ Unaudited |
| ClaimFeesAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3db1d2d3a1fcb23386df92cb50025e25980cf20b` | ⚠️ Unaudited |
| ClankerWorldVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xf6ddfcb093be0cd0c015590cb6c5127d9ff2a20b`; base `0xfe55dff581b665479abe9fc0a0578fb222cb4dda` | ⚠️ Unaudited |
| ClosedPermissions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dfc76a31a2a0110739611683a8b6c5201480fa1` | ⚠️ Unaudited |
| DistributeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fffdd522ae7c365e76a6ddca9f95f843ae5d8ff` | ⚠️ Unaudited |
| DopplerVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedd66b080b8e9425c39d349a3fb69f480580f993` | ⚠️ Unaudited |
| DynamicAddressFeeSplitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x18713855492a778363e23e2cde325344b8fd6f8d`; base `0x9b332ea14a99b74cab03a3d3178964ed9ce35fc8` | ⚠️ Unaudited |
| FairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x184b9f99ff343d982574cfc3bd8bed8634b68f92`; base `0x4dc442403e8c758425b93c59dc737da522f32640` | ⚠️ Unaudited |
| FastFlaunchZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x68d967d25806fef4aa134db031cdcc55d3e20f92`; base `0x70b5f6753a0a45228d0e3339d2964c54280d7ea4`; base `0xd79e27f51ddf9df5ee76106ee192530f474b02f6` | ⚠️ Unaudited |
| FeeEscrow | operational_periphery | project_anchor | own_supporting | 0 | base | unit-266839 | `0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde` | ⚠️ Unaudited |
| FeeEscrowRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x588aba851ac93a188560cfcdb189ac6133457342`; base `0x759b36b68a3f757e3de99f1825ce25793e338ea7`; base `0xa49bae1a6005bf62c69c18abdf1dc5e3a4deff60`; base `0xfa140ffff60e1defddbccb85a4772bce5a22a3d6` | ⚠️ Unaudited |
| FeeExemptions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfdce459071c74b732b2dec579afb38ea552c4e06` | ⚠️ Unaudited |
| FlAaveV3WethGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x344e4d19c851b317bb65d31bb5c4e3815b53d727` | ⚠️ Unaudited |
| Flaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x0cf6bdf0a85a9d6763361037985b76c8893553af`; base `0x6a53f8b799be11a2a3264ef0bff183dcb12d9571`; base `0xb4512bf57d50fbcb64a3adf8b17a79b2a204c18c`; base `0xba303a5fb4c04d306fa555b204c4c899b2f06d73` | ⚠️ Unaudited |
| FlaunchFeeExemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4bdd067eaabd8d0fe1ccbe3c885c20ca19cc5d69`; base `0x705624ee66a4726b68e3ea9f230fd924253fe613` | ⚠️ Unaudited |
| FlaunchPremineZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefa8267954b0740dc981a40d8e23d07116c8dffe` | ⚠️ Unaudited |
| FlaunchZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x2bc8cbfe237aeddc7c296436fefe239a0a22dabf`; base `0x8af174ed38891f0f3ea26a6cd692cc22eac913ee`; base `0xa9bd947751c6a6d33ccd0ef4a03c48466f24c172`; base `0xc3c6dd2b13cbc2354e20a4eebc75b6ff71126763`; base `0xe70c28f21e3b40e6be7d0188706635356f318211`; base `0xf9753e6e4fdd1869be40685690a28bff26b8b114`; base `0xfa9e8528ee95eb109bffd1a2d59cb95b300a672a` | ⚠️ Unaudited |
| FlayBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x90c07971cc1a026f3e2425b4b63830b2dad1a8f0`; base `0x94e1ea82515c79159349bb38919b083e7d888ce9` | ⚠️ Unaudited |
| FlayerGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ba5ea8c8b1aafe9dbcb7a36737acfad6afa5d38`; ethereum `0xb5862e869da6508546fc6a161c2f5feff636288a` | ⚠️ Unaudited |
| flETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000000d564d5be76f7f0d28fe52605afc7cf8` | ⚠️ Unaudited |
| flETHHooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e433f32bb5481a9ca7dff5b3af74a7ed041a888` | ⚠️ Unaudited |
| IndexerSubscriber | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x221a110f421384c2d5f2c56f04b8e97e47c86088`; base `0x7c6088c1185fbb770deb1ca7ddeed4ba57659663`; base `0xf14d1fb2962151a7b81bd14ce31683ab7861ef10` | ⚠️ Unaudited |
| MarketCappedPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x09a10aee38e93e3ed196728adcf1999e38993ee7`; base `0xadfe60c7df588fa102593644684566b2948b0a6c` | ⚠️ Unaudited |
| MarketCappedPriceV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x3192c0192888f273642865234f341c33f9ac6d2c`; base `0x6575a6af0eeace121fd60b99d491b24357e8528b`; base `0xf318e170d10a1f0d9b57211e908a7f081123e7f6`; base `0xff59e02cb77d69eca99bd43d090faa46f490196e` | ⚠️ Unaudited |
| Memecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 51 deployments: base `0x0086cff0c1e5d17b19f5bcd4c8840a5b4251d959`; base `0x02d777380c414ad4b49effd0a63270bb751a7e26`; base `0x0346a968fc7c6a2de406e944408bab7286dd0bcd`; base `0x06a05043eb2c1691b19c2c13219db9212269ddc5`; base `0x09a55c885e1a235bce2b76089ce395d93d3416a2`; base `0x0f4f5faef23e161b5b0553813a80d36251dead22`; base `0x1cc8244b7b98957c86581b1d414ed89146373783`; base `0x2188cf5e99e33bdf818ff47448f8d8f9a9ecd080`; base `0x21bac3d2686f6aebd145a232aa1e44325ae4297c`; base `0x22aab1803d9b5ed57c4e34090884867f5fdafbb7`; base `0x28314940a3605845f13b525cd27c5f375c122abf`; base `0x32dd9a867e7913657062472f6957069d294ff306`; base `0x3d8931a6290ec9e071c2410e2d6319c981d00a95`; base `0x46bc5b1b003e9659d5638715e3302e15c372d59d`; base `0x49886a44ed16245216817e82f33bc4b63ce51039`; base `0x557e8f1cd9fb4e9dfeca817b15b737328d90821a`; base `0x5c808a3d45a79c6a0576af319e9fd7e18ef0cd78`; base `0x61934a6f7e130f4f2c7ceb4185606592ac0e55cf`; base `0x63a33d03fb990c670cf135ca3178f4f7e6fe3456`; base `0x64573d2816ae6138c345a5150b6d1513264500e8`; base `0x66c1362780b9c6ba6dc62dbe02dd50681a33ebf6`; base `0x716f8e756f9277f8c9949926141c2666b86b5809`; base `0x803c33cf66588d0fa1b3272536ee9e37c90dbd79`; base `0x80fb0f782192ca53d9503af07643306197f3dce0`; base `0x8644d6b2d701295cc8dbab44f97ea8d57ff2a55b`; base `0x8cbb2c6daf0b6dc48a49ca7f0ce0a421df1b91d4`; base `0x9074d71cbc97bf39e41366af80f28b05fd4d4403`; base `0x909ebb12ab0d3613370d2a2446c0154a8df6d9b3`; base `0x93657dcab8ac59ba33e2bf5280e4e8b58c88ae57`; base `0x9551b0f5b890013ad82c7391be196d77c8c4eb25`; base `0x98805da03d7f0faf3365f629d1014c67d7838c89`; base `0x9e9b7825381305f0acbfda005cda434e7ea7bcea`; base `0xa448d40f6793773938a6b7427091c35676899125`; base `0xa4e3dc12d8b52e462c632baad6efdc6b323b614d`; base `0xaf679be9eef329531177710d673d72cef6d58bf1`; base `0xb7965a38552e0f7d5b728bad1ef2817ca7ae0b68`; base `0xbab36dc9ba9d7c628d2d35b60b1a0db88314de5f`; base `0xbd072aba9cad9d573a5b3498f79b117dbefdc7f4`; base `0xbd56f46ea1bb8ea1225fde57d495cb40a24026d1`; base `0xbd8b2743bf10988cd459c1d36bd00d8a1cc73d8d`; base `0xbebdddbc3b474c031f00eb8c664e1f17bfdbd0ea`; base `0xc3b678304b5ed56fee974d477dd7fb97bc90d231`; base `0xc78fabc2cb5b9cf59e0af3da8e3bc46d47753a4e`; base `0xc827d9616bf9520b9b9b316c0bcf5205fb24976c`; base `0xcd62a50415d0812965971e6f2ccc3a27ae80426a`; base `0xd98b11d2b6012509fada6daea61b383cfa8e2db3`; base `0xdc33a1172bd4308cb17e362c9a291cc4147bda3d`; base `0xe75413620f65d5fe202218c0b87a3e710561890c`; base `0xeb46fd20b4ecc851734e13cd0b8758af2c31caeb`; base `0xf1eeeeeeecd95e9eb2df58484ceed175acbd945c`; base `0xf4b7faf0379ec9c1afef984511b884fc8db7767a` | ⚠️ Unaudited |
| MemecoinTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7397390360bd9d559d9277e60d47b99933791232`; base `0xa327725c2dcd8077dbc49701dd7a673ffb768145` | ⚠️ Unaudited |
| MerkleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x635b4afcf977ed946bda31fc7e381c970159077a` | ⚠️ Unaudited |
| Notifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3aa39ac6dcb9c9482a7023af8e207920df5909f6`; base `0xc31d9ff85f8490a7b9e969c058bfbdaefd4b5d35` | ⚠️ Unaudited |
| ParagraphVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e744436e35bc346777288b8dae2da23fd67e542` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | base | unit-266836 | `0x498581ff718922c3f8e6a244956af099b2652b2b` | ⚠️ Unaudited |
| PoolSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c211268cbf275637a8c235e63a26bc0e05aca25` | ⚠️ Unaudited |
| PoolSwap | core_logic | project_anchor | own_supporting | 0 | base | unit-266842 | `0xdcf8e5e2a21e9b7e37b1b1a6612f1376723dd08e` | ⚠️ Unaudited |
| PreventNoFairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ecd49f762c82b48db927cb80b5629fb3f4c9294` | ⚠️ Unaudited |
| ProtocolFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1150c53eb4ce3ade47808d1d1ac9636b774ee079` | ⚠️ Unaudited |
| ReferralEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xbd39c7be6d98bd1a3e4ad482baf99d738947fe55`; base `0xd381f8ea57df43c57cfe6e5b19a0a4700396f28c` | ⚠️ Unaudited |
| RevenueManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x2a1fc8420ff7334a9e9f4ba6c4236eed21c679e2`; base `0x33f04d3a76cffa25e5da285d97336e67611b2282`; base `0x4fb9de6bbe970a49c19fb967f937351728c01b8f`; base `0x641d5cf4290c7c6e45cb672c4467a9e4fc89d72d`; base `0x662a766adba1ed135d92642da3732283084f9950`; base `0x712fa8ddc7347b4b6b029aa21710f365cd02d898`; base `0xb6c0cca8b3a354fa0f348c121657f4a952e92b3d`; base `0xc8d4b2ca8ed6868ee768beab1f932d7eeccc1b50` | ⚠️ Unaudited |
| SignedImporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90664e887e4e98cf281f4c244a9957544134e358` | ⚠️ Unaudited |
| SolanaVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba28ac1540893a34476c24b2c4fa32e0506c9055` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x361a874945c07069beed611f950506a8e324b630`; base `0x3c3bc8e63df9ccd5cdaa01f6833b2e4dcdb40bf0`; base `0x540677596a3aa2d75f2eb1e791b8f27ec4a9622d`; base `0xb5dd2fbca9b746a56cf9e5e2adabf8bef0badbea`; base `0xcc920a815169230c0c85add65a9786b2691324c2`; base `0xdcb1beaab727a559fa55390ee103b408ff72b5b2`; base `0xec0069f8dbbbc94058dc895000dd38ef40b3125d` | ⚠️ Unaudited |
| StakingManager | governance | project_anchor | own_supporting | 0 | base | unit-266841 | `0xa15f92a7c09a7d6adbc00ff2db63e414fbfea193` | ⚠️ Unaudited |
| StaticFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x002f0f6d57bd3692ee9bb59e82e5433afd6302ec`; base `0xaa27191eb96f8c9f1f50519c53e6512228f2fab9` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x000000000bb63d5c070d0d5791517886a4d8c545`; ethereum `0x1b8a682615cccc826f0a374350f545e8f237b993`; ethereum `0x2d48ba599d490f8a4ac8e42d7a75097d78693ac4`; ethereum `0x64de23a547c10dfb5950d7aaefd085d02f04c948`; ethereum `0x6c4c0cd7e0e5eeffbd77aafe1820d3b9b1ef27b0` | ⚠️ Unaudited |
| TokenImporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x6fb66f4fc262dc86e12136c481ba7c411e668197`; base `0xb47af90ae61bc916ea4b4bacffae4570e7435842` | ⚠️ Unaudited |
| TreasuryActionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb5c20c4e60c9c64648dd3692437e3e313add4a4` | ⚠️ Unaudited |
| TrustedSignerFeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x06ea8bd7476e370c919fa76f78eb08277aec60f3`; base `0x2a78ab6e2458e04284dfd5bbef21d660a5b7a26c`; base `0x2b686652494798436af116076cf557f935b321cd`; base `0x4d0a21c0b56683d68cc4c2de715c35afa83aa3a4`; base `0xbd478b083cbab98307eab7b0fa13ea6f7ecc8fa4` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | base | unit-266838 | `0x6ff5693b99212da76ad316178a184ab56d299b43` | ⚠️ Unaudited |
| VirtualsVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06a089fa231aca48d2aa77365123ad9aca43d3a4` | ⚠️ Unaudited |
| WhitelistedPermissions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x828b58b2b2df8ff3221fbe2b07e75a56a84493cc` | ⚠️ Unaudited |
| WhitelistFairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x8ea82b35b890987cd6b55271f593abbc0fe226f6`; base `0x8ecc811a65beaf51d0763a6304e968072a47c7e5`; base `0x9718c9c8566fea4d1b38524fdf403e81c4d7f1d3`; base `0xfbb09a77c484e3d8ec8ec2b00bc4adbe8699462d` | ⚠️ Unaudited |
| WhitelistPoolSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x29d66cbfa911cc54bc7111ca5ee19d1f2e4c3837`; base `0x6af705b1b82f0a74c19d1c468794287adcea94ee`; base `0x862d5471b3e49d48e2e152793f00c91a9caf054a`; base `0xde9cfae034f6813e1b5741576fd9e7838dd4534d` | ⚠️ Unaudited |
| WhitelistVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a04367563a65db574d6b7d084fdbcf4a570c5a6` | ⚠️ Unaudited |
| YieldReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5e76f79b7e05602c09e56f4ccad9c3507b3f471` | ⚠️ Unaudited |
| ZoraVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x656047fd43d2c3a121f2ef859d7171d7dd59f8b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d5e0f971ed27fbff6c2837bf31316121532048d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17e02501de3e420347e7c5fcae3ad787c5aea690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x312706b6599bb406cb21a91c3314ec7883b014a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37596de696f466d688118bf45cf201e6f2ce3c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bfad69dfe6b080da2cf66527c0f3609e675d398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e7cb1e6800a7b297b38bddcecaf9ca5b6616fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x688aeb06a2fc1cf4815f409147f3ff62c37ad384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f2fa01a05ff8b6efbfefd91a3b85aaf19265a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70f2ef8f3c72f808afe2919ab5c32a3a9e001a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73e27908b7d35a9251a54799a8ef4c17e4ed9ff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c5f5a4bbd8fd63184577525326123b519429bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ea4074c38ca7a596c740dd9e9d7122ea8e78c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8ed7dcc436f646999c5a2c8546b9b0ed51ccd01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc98a11e6292bbafb8f55e09a3eef44ba1410a142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2f3c6185e06925dcbe794c6574315b2202e9ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2ef58a54ee79dac0d4a130ea58b340124df9438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf72dcdee692c188de6b14c6213e849982e04069b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-12_Security_Review_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FvGZ6DMH5qc5WmOLDVo1R%2F2024-12_Security_Review_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-11 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 6 | medium |
| [2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FrUVPPUrniThyiTPkK2kn%2F2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FLe4HhcXKikOZSlfl2bSl%2F2025-03_Security%20Review_FlayerLabs_Flaunch%20v1.1%20Protocol%20Upgrade.pdf) | FlayerLabs | Audit | 2025-03 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20299] 2024-12_Security_Review_FlayerLabs_Flaunch.pdf — matched: No explicit scope section; contracts extracted from findings and descriptions.
- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf — no match: The report is an extension review of a diff between commits, but no specific contract names or file paths are listed in scope. The only mention is 'flayerlabs/flaunch-contracts' repository, which is not a contract name.
- [20301] 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf — matched: Extracted contract names from findings context and informational items. Audit date from title page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | PositionManager | own contract | PositionManager (selected) `0x23321f11a6d44fd1ab790044fdfde5758c902fdc` — deployed 2025-08-13 18:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | DynamicFeeCalculator | unmatched — not counted | — | mentioned in finding L-03 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | BidWall | own contract | BidWall (selected) `0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c` — deployed 2025-04-23 18:50:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | FeeDistributor | unmatched — not counted | — | mentioned in finding I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | MarketCappedPrice | unmatched — not counted | — | mentioned in finding I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | InitialPrice | unmatched — not counted | — | mentioned in finding L-02 and I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | TreasuryAction | unmatched — not counted | — | mentioned in finding L-01 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | MemecoinTreasury | unmatched — not counted | — | mentioned in finding L-01 | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | RevenueManager | own contract | RevenueManager (selected) `0x1af9b9f168bfd2046f45e0ce03972864bce7ee36` — deployed 2025-10-03 18:01:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | TreasuryManagerFactory | own contract | TreasuryManagerFactory (selected) `0x48af8b28ddc5e5a86c4906212fc35fa808ca8763` — deployed 2025-04-23 16:13:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | TreasuryManager | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | FlaunchZap | own contract | FlaunchZap (selected) `0xe52de1801c10cf709cc8e62d43d783afe984b510` — deployed 2025-09-11 17:50:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | SnapshotAirdrop | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | MerkleAirdrop | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | BidWall | own contract | BidWall (selected) `0x7f22353d1634223a802d1c1ea5308ddf5dd0ef9c` — deployed 2025-04-23 18:50:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | PositionManager | own contract | PositionManager (selected) `0x23321f11a6d44fd1ab790044fdfde5758c902fdc` — deployed 2025-08-13 18:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | AnyPositionManager | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | Flaunch | own contract | Flaunch (selected) `0x516af52d0c629b5e378da4dc64ecb0744ce10109` — deployed 2025-08-13 18:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | AnyFlaunch | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | FairLaunch | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | HypeFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | BuyBackAndBurnFlay | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xf6d8018450109a68acfbcd2523dc43fb31920a7d` | AddressFeeSplitManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x72e6f7948b1b1a343b477f39aabd2e35e6d27dde` | FeeEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x498581ff718922c3f8e6a244956af099b2652b2b` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdcf8e5e2a21e9b7e37b1b1a6612f1376723dd08e` | PoolSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa15f92a7c09a7d6adbc00ff2db63e414fbfea193` | StakingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6ff5693b99212da76ad316178a184ab56d299b43` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 67 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1, medium=1
- Match method counts: unique_name=8

Zero-match audit list:

- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf

Fork inheritance lineage and inherited audits are included when available.
