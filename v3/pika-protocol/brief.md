# Agentic Audit Brief: Pika Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Pika Protocol (`pika-protocol`)
- Website: [https://pikaprotocol.com](https://pikaprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: optimism
- Contract surface: 71 unique implementations (551 raw deployments)
- Coverage basis: 2/7 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $401,558.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pika Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across optimism. Structural roles: 4 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (3)
- Contract kinds: contract (7)
- Detected standards: pausable (1)
- Frameworks: openzeppelin (7), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FeeCalculator (`0xe3451b...b4d7c1`, chain 10)
- FundingManager (`0x8af150...c2636c`, chain 10)
- OrderBook (`0x6c420e...4160b1`, chain 10)
- PikaPerpV4 (`0x8c9b6a...16d25e`, chain 10)
- PikaPriceFeedPyth (`0xeab7bd...f239f7`, chain 10)
- PositionManager (`0xcabe9b...716db1`, chain 10)
- VaultFeeReward (`0x0e431e...e1011a`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/7 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 64 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 7 of 71 unique; 64 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/51
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 71
- Raw deployments: 551
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 3.9% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrderBook | unknown | project_anchor | own_supporting | 0 | optimism | unit-390895 | `0x6c420e...4160b1` | ✅ Audited |
| PositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-390898 | `0xcabe9b...716db1` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x361f1b...1db454`; optimism `0x511f63...15b279`; optimism `0x5ae0f2...0ddb75` | ⚠️ Unaudited |
| DummyPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: optimism `0x06e644...5977fe`; optimism `0x427f54...3d7f46`; optimism `0x463e65...fda612`; optimism `0x4d99f9...1a499f`; optimism `0x5a32bb...de3150`; optimism `0x651b09...a0444f`; optimism `0x70be42...d7f384`; optimism `0x856854...c96c6c`; optimism `0x939ae1...4e0fb7`; optimism `0xabf1ef...9d1e30`; optimism `0xb01c13...4f2d14` | ⚠️ Unaudited |
| EmptyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0xb980ad...946f90`; optimism `0xbfb590...6ffb7c`; optimism `0xc88f82...0ca47f`; optimism `0xf0f7b9...f6b0e7` | ⚠️ Unaudited |
| EsPika | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1508fb...3b0e78`; optimism `0x8d8610...f6e589`; optimism `0xfebe22...fd5ecb` | ⚠️ Unaudited |
| EsPikaRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xafef63...ed04f0`; optimism `0xc5e959...10e1c5` | ⚠️ Unaudited |
| EsTestToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd1d31...c1ff96` | ⚠️ Unaudited |
| FeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x0192fa...d04dc0`; optimism `0x22b23f...68ad14`; optimism `0x5bc52e...073c54`; optimism `0x5f417a...fdc380`; optimism `0x7902b9...2ed4dd`; optimism `0x7d29bf...993e35`; optimism `0x8d65d2...4208c9`; optimism `0x918ed9...7396e8`; optimism `0xbddfc3...8ad7ba`; optimism `0xc61030...dc67af`; optimism `0xe15b5b...97bbf2`; optimism `0xf201ce...41fdbe` | ⚠️ Unaudited |
| FeeCalculator | unknown | project_anchor | own_supporting | 0 | optimism | unit-390899 | `0xe3451b...b4d7c1` | ⚠️ Unaudited |
| FeeRewardBatchUpdate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x527eff...11947c`; optimism `0x7e1b12...0a88be`; optimism `0xa693d6...063fe9`; optimism `0xaee7e6...405ae3`; optimism `0xb22a50...4351c3` | ⚠️ Unaudited |
| FundingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x1ffecc...6e18da`; optimism `0x3028a9...06f1de`; optimism `0x6e0dca...0e76e1`; optimism `0x7f4de8...1dca78`; optimism `0xbb198f...0d261b`; optimism `0xd851c6...68d2c0`; optimism `0xeb0646...30cec2`; optimism `0xf33291...c4f883` | ⚠️ Unaudited |
| FundingManager | governance | project_anchor | own_supporting | 0 | optimism | unit-390896 | `0x8af150...c2636c` | ⚠️ Unaudited |
| FundingManagerReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x107daa...cbdfe2`; optimism `0x438286...9ac6a4`; optimism `0x4cd495...f47edc`; optimism `0x85be35...3d24c8`; optimism `0xab04fe...b6c002`; optimism `0xb88c25...b36dce`; optimism `0xed57fb...7dee21`; optimism `0xfdc2b5...e42427` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 16 deployments: optimism `0x10f26a...9510d0`; optimism `0x13e533...f079fc`; optimism `0x2b4bdb...964662`; optimism `0x4090af...c4074c`; optimism `0x41b4e2...ab4671`; optimism `0x4212e3...71d037`; optimism `0x7c5200...0ef030`; optimism `0x7e6bc0...0493fe`; optimism `0x8123e5...b7da86`; optimism `0x857f05...174c85`; optimism `0xab9c44...c2cc46`; optimism `0xafdaff...03bcd7`; optimism `0xb2694b...7c43f2`; optimism `0xcb2d8d...1466ea`; optimism `0xe706b8...58fba1`; optimism `0xf79589...176bbe` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 27 deployments: optimism `0x194bd2...f66d24`; optimism `0x1d32b4...046156`; optimism `0x205c2c...dd2788`; optimism `0x21f7b5...0241cf`; optimism `0x270a49...d60a07`; optimism `0x31a738...89c426`; optimism `0x39fc89...f59573`; optimism `0x40822f...0edc02`; optimism `0x4e3ad6...1095f2`; optimism `0x549406...08b43d`; optimism `0x565265...ba77d1`; optimism `0x6173bb...ce1bd0`; optimism `0x67a9e3...a4d4be`; optimism `0x74e285...ecf5c1`; optimism `0x9bef98...415bbb`; optimism `0xb56568...bc164a`; optimism `0xba1b30...e8ba08`; optimism `0xc37e1f...66df63`; optimism `0xc48046...3475d4`; optimism `0xd8c5b5...51a051`; optimism `0xe3f934...838e99`; optimism `0xe9ae01...ac1a9f`; optimism `0xf07108...edbc49`; optimism `0xf1a19a...044cf6`; optimism `0xf3ea7b...f60774`; optimism `0xf7b7c6...819455`; optimism `0xfcc293...1ef6ec` | ⚠️ Unaudited |
| MultipleMerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x575420...114b93`; optimism `0x993703...86c0d8`; optimism `0xb6fd7c...2379d1`; optimism `0xd61d11...4d50a8`; optimism `0xd733c5...c6543c` | ⚠️ Unaudited |
| MultipleMerkleDistributorReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x464a53...1f693f`; optimism `0xf57511...9cb6f2` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 59 deployments: optimism `0x0195bf...9af92b`; optimism `0x072a62...dfa4dd`; optimism `0x0a4e78...306ee7`; optimism `0x0c7d59...eac627`; optimism `0x14eba8...07bbbd`; optimism `0x17b4ce...f97819`; optimism `0x199794...82e70c`; optimism `0x2203da...42fe04`; optimism `0x270b18...7c28b5`; optimism `0x270b22...1f75ee`; optimism `0x2714fb...650f53`; optimism `0x28aa83...4818fb`; optimism `0x2b6742...70d3e0`; optimism `0x2cba7e...ea5eda`; optimism `0x31941d...10ffa4`; optimism `0x3ef581...7453c4`; optimism `0x403b45...f244ca`; optimism `0x43556b...2083fe`; optimism `0x44f2ed...05e94a`; optimism `0x464d5d...335ac8`; optimism `0x52f5d2...450087`; optimism `0x57624d...9bf730`; optimism `0x5d013e...932288`; optimism `0x5f47fe...09a2fc`; optimism `0x67d0fe...577c1f`; optimism `0x6acc84...368f95`; optimism `0x6e8be5...5f95d7`; optimism `0x71be80...2ecc55`; optimism `0x835a17...9d2e7c`; optimism `0x8d30ee...57fbf3`; optimism `0x8e67db...7ebdfd`; optimism `0x931533...792062`; optimism `0x93e403...52d844`; optimism `0x98692f...a30989`; optimism `0x986b84...8292e9`; optimism `0x9948f3...32d304`; optimism `0xa0be4c...101be3`; optimism `0xa4dc08...28070c`; optimism `0xab4401...3edfd5`; optimism `0xac0a3c...eef6ce`; optimism `0xaeee0e...33e063`; optimism `0xb04a64...b46a2f`; optimism `0xb4fe9f...f6b8de`; optimism `0xb8455d...615f88`; optimism `0xbb6b0f...a4c4c7`; optimism `0xce54e3...a9ec0d`; optimism `0xd37fa4...2625ac`; optimism `0xd40edc...d33558`; optimism `0xd46f6b...0f4771`; optimism `0xdac570...24d208`; optimism `0xdbdf58...ef3479`; optimism `0xdcb08f...329e21`; optimism `0xdf9574...696b77`; optimism `0xe48207...4f1c8e`; optimism `0xe66d35...caff6d`; optimism `0xefaecd...67aa3f`; optimism `0xf03dd6...253238`; optimism `0xf9b19d...9bea4e`; optimism `0xfe39d3...c8be55` | ⚠️ Unaudited |
| PendingPnlManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: optimism `0x12c4e1...fb6447`; optimism `0x6fe979...a58712`; optimism `0xa3e737...c48128`; optimism `0xc06ace...7a9def`; optimism `0xe0c42a...540fbd`; optimism `0xe8de4d...f0bee5`; optimism `0xfd08d2...11d274` | ⚠️ Unaudited |
| Pika | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 13 deployments: optimism `0x131e57...1b7497`; optimism `0x2469ba...b39662`; optimism `0x3d0b78...11c378`; optimism `0x4152dd...ae5ff0`; optimism `0x57b8e1...7cb4c4`; optimism `0x615c43...29158b`; optimism `0x6c4ed8...489276`; optimism `0x730506...c74eef`; optimism `0x9a601c...0c3027`; optimism `0xd026c3...4f6873`; optimism `0xd42e39...1cd3f2`; optimism `0xdf89a3...b275a1`; optimism `0xfb427b...aeee97` | ⚠️ Unaudited |
| PikaFeeReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: optimism `0x082c9c...477c92`; optimism `0x3ede1b...abf0ec`; optimism `0x4a7335...07247f`; optimism `0x4b6c68...90647b`; optimism `0x69db96...73c344`; optimism `0x6ca92f...e0e9a5`; optimism `0x7f7368...e00677`; optimism `0xbe53a2...be44f8`; optimism `0xd9a009...efc50f`; optimism `0xdc839c...6cd12a`; optimism `0xef2dd7...8c2ce4` | ⚠️ Unaudited |
| PikaPerpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x2fae8c...353698`; optimism `0x365324...881a40`; optimism `0x3b8ed4...d21005` | ⚠️ Unaudited |
| PikaPerpV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x25fc51...4caac4`; optimism `0x543618...d7e01c`; optimism `0x783dc9...2cbedb`; optimism `0x85c4ff...21e43b`; optimism `0xa8a243...cf9f02`; optimism `0xc190dd...593bb3`; optimism `0xccb94e...22d3ca`; optimism `0xd5a8f2...597002` | ⚠️ Unaudited |
| PikaPerpV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 29 deployments: optimism `0x084a88...cbb842`; optimism `0x0d32fa...cec722`; optimism `0x17b626...4dc40a`; optimism `0x1f18df...b0172b`; optimism `0x20fc47...f41635`; optimism `0x528f78...e79d3d`; optimism `0x556fe9...db1124`; optimism `0x56b110...0f7a8b`; optimism `0x68a56b...8af527`; optimism `0x6c42b0...e98bc4`; optimism `0x6fec08...b060e1`; optimism `0x708957...3a0834`; optimism `0x7ff82c...7e425a`; optimism `0x875e7a...2fafae`; optimism `0x9591ef...9d2a86`; optimism `0x9b86b2...5975ab`; optimism `0x9e67c6...f32f68`; optimism `0xb212c6...4d7bcd`; optimism `0xb52858...a0e8a7`; optimism `0xb7d509...1a8ec5`; optimism `0xc68b47...6baf67`; optimism `0xd28332...fc1935`; optimism `0xd6721d...d4ae18`; optimism `0xe08276...16bbf2`; optimism `0xebfdfa...74e276`; optimism `0xf5b947...e3ac22`; optimism `0xf9d888...a16c02`; optimism `0xfa1901...b62f9a`; optimism `0xff90bb...c528d2` | ⚠️ Unaudited |
| PikaPerpV4 | unknown | project_anchor | own_supporting | 0 | optimism | unit-390897 | `0x8c9b6a...16d25e` | ⚠️ Unaudited |
| PikaPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: optimism `0x250e7a...8af746`; optimism `0x9803e4...c3eea9`; optimism `0xba8075...45162c`; optimism `0xcb6502...cb452e`; optimism `0xdb4174...bd828a`; optimism `0xe32cac...ffb86d`; optimism `0xf9135e...e45e34` | ⚠️ Unaudited |
| PikaPriceFeedPyth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x21b03a...2ff7dd`; optimism `0x2a3c05...44987a`; optimism `0xb46f0a...764c2c`; optimism `0xba6e95...fd48cb`; optimism `0xcc2003...380cfb`; optimism `0xd42431...5a4f0b` | ⚠️ Unaudited |
| PikaPriceFeedPyth | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-390900 | `0xeab7bd...f239f7` | ⚠️ Unaudited |
| PikaReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 22 deployments: optimism `0x283271...7858fa`; optimism `0x2dc27d...0582f8`; optimism `0x2e55b6...56dc8f`; optimism `0x3b6209...b07fe7`; optimism `0x3cbdb9...25810a`; optimism `0x4794c6...e40f35`; optimism `0x4ecacf...bc47d5`; optimism `0x57084f...01cb8f`; optimism `0x6a912f...4487ee`; optimism `0x83b5cb...ed3dae`; optimism `0x846597...a44305`; optimism `0x8ca907...221a40`; optimism `0x8fa7e4...d6cd16`; optimism `0x9a1286...93dcff`; optimism `0x9ed10c...8143f3`; optimism `0xa30f6c...c978b7`; optimism `0xb5cd27...672d18`; optimism `0xc84405...b20be2`; optimism `0xd15887...63ee39`; optimism `0xd4c8e5...423b71`; optimism `0xdde437...6e0d44`; optimism `0xfb64c0...1cf07f` | ⚠️ Unaudited |
| PikaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x323c8b...0f240a`; optimism `0x53918f...1df8c1`; optimism `0x549ea2...65c5d0`; optimism `0x6c440c...45c14a`; optimism `0xac6c1b...388928`; optimism `0xae2b15...21574c`; optimism `0xae3806...25936e`; optimism `0xbc1004...a0f7ab`; optimism `0xfbee67...56140a` | ⚠️ Unaudited |
| PikaStakingDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 15 deployments: optimism `0x2a3af1...3e16c2`; optimism `0x30e210...6714a7`; optimism `0x3976b7...e38bb0`; optimism `0x5cc304...10071d`; optimism `0x6051e8...4a143a`; optimism `0x719b83...46ef26`; optimism `0x75dfac...98278f`; optimism `0x762e7c...8a0171`; optimism `0x7ba146...8c4e92`; optimism `0x950791...9cd0aa`; optimism `0xa8e943...2a7bb9`; optimism `0xdac67b...6b1e55`; optimism `0xe5b41b...3c5db6`; optimism `0xebcb3e...2b79a0`; optimism `0xedfd13...85e70d` | ⚠️ Unaudited |
| PikaStakingReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x66f63f...282b05`; optimism `0xc8e617...745a0e` | ⚠️ Unaudited |
| PikaTokenGeneration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 26 deployments: optimism `0x015137...b07420`; optimism `0x01d505...3942bf`; optimism `0x0f0ab8...643f4f`; optimism `0x10945d...24bb39`; optimism `0x10b38e...0ba839`; optimism `0x17fbf9...10819a`; optimism `0x2ca510...adf288`; optimism `0x314f63...33075a`; optimism `0x32c262...76a04e`; optimism `0x3b6227...4cb9a8`; optimism `0x3df416...2743de`; optimism `0x4ccc52...455e1a`; optimism `0x543603...b3a0cb`; optimism `0x5ae377...110c83`; optimism `0x648dda...fe1935`; optimism `0x7204da...f51968`; optimism `0x723dad...4730a0`; optimism `0x749c9c...5cfc3c`; optimism `0x800626...607f27`; optimism `0x89c718...a320c7`; optimism `0xabf0b5...8a6e59`; optimism `0xba6790...320d01`; optimism `0xbbcba8...f00d03`; optimism `0xc67ce2...a238d6`; optimism `0xd4bcfc...47ecdd`; optimism `0xe10821...08a03e` | ⚠️ Unaudited |
| PikaTokenGenerationPublic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 18 deployments: optimism `0x06e843...5d4c4e`; optimism `0x21e936...c3a70b`; optimism `0x2b6a78...3608ee`; optimism `0x38ce8d...31ed5b`; optimism `0x3ce6b3...a61325`; optimism `0x7c4ace...d207ae`; optimism `0x824026...630dad`; optimism `0x83222c...c04546`; optimism `0x835883...003cd7`; optimism `0x8fcb6e...e60d3b`; optimism `0xa01e23...2bf3f4`; optimism `0xb10101...889f79`; optimism `0xb210f3...4b9b62`; optimism `0xb2c231...d14f99`; optimism `0xb7a6d2...332449`; optimism `0xc37277...646953`; optimism `0xeb66f5...e8813b`; optimism `0xf61b1c...296be0` | ⚠️ Unaudited |
| PikaTokenReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x1d9e33...4f558c`; optimism `0x2374b6...38f378`; optimism `0x3ed64f...bd96b8`; optimism `0x50f264...c56db3`; optimism `0x622a35...9c7b76`; optimism `0xfd9d52...d278ca` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 57 deployments: optimism `0x0ee954...bbd8f8`; optimism `0x1851cc...ef10f1`; optimism `0x19f7b1...a122d0`; optimism `0x1c93a6...8f30d5`; optimism `0x2249e2...872bed`; optimism `0x346545...89e258`; optimism `0x39305b...10e9fb`; optimism `0x49822b...b57066`; optimism `0x4c60ac...71c3fc`; optimism `0x4c7557...fd9de5`; optimism `0x513d32...6e2e0f`; optimism `0x514c50...1e1a1f`; optimism `0x548cdb...cb4edc`; optimism `0x54ad5a...c72b01`; optimism `0x5e37ca...382e42`; optimism `0x646f45...e0ffd3`; optimism `0x675737...4706ec`; optimism `0x67c072...75f3e6`; optimism `0x67f3f4...dee5a9`; optimism `0x6d6110...609581`; optimism `0x736061...76a6c8`; optimism `0x795424...18993e`; optimism `0x7afa44...5d8781`; optimism `0x8123dc...1a0a02`; optimism `0x82d25e...e8107a`; optimism `0x868c37...724e91`; optimism `0x8add31...4fd9a5`; optimism `0x8cd0a1...db8193`; optimism `0x8f0ccb...2fb78f`; optimism `0x936177...93befa`; optimism `0x966504...cbd23a`; optimism `0x9ed440...e3a71d`; optimism `0xa4fad2...1101e4`; optimism `0xa54c43...404b20`; optimism `0xaf3ac4...c9e8e5`; optimism `0xb122d6...0aa849`; optimism `0xb126fa...5acaf4`; optimism `0xb5d337...109ec9`; optimism `0xb67c15...1b0e27`; optimism `0xbe765e...1d7336`; optimism `0xc2308c...dd59c8`; optimism `0xc9b595...33939f`; optimism `0xcaec8e...10e5ee`; optimism `0xce2c93...c4d643`; optimism `0xce6f28...d8a569`; optimism `0xcfc9d6...763a62`; optimism `0xd27a9f...a87847`; optimism `0xd4d778...76101e`; optimism `0xd9dd04...18b829`; optimism `0xe0c663...2e8ddc`; optimism `0xe17149...2d8c9b`; optimism `0xe2ff08...d83482`; optimism `0xe6c2c3...a313ec`; optimism `0xe979f0...a8d0c7`; optimism `0xf11fc8...6f4a55`; optimism `0xf97b94...9fa600`; optimism `0xfbdcc2...f3ab03` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 40 deployments: optimism `0x068d9e...347ede`; optimism `0x136599...f0e050`; optimism `0x1d06df...e6e1b5`; optimism `0x1e3ed6...7358bf`; optimism `0x2105fc...4e848a`; optimism `0x237b76...f96235`; optimism `0x266dd2...d2d44f`; optimism `0x29b196...db6fbe`; optimism `0x2bf36e...6703b1`; optimism `0x332a16...a4e427`; optimism `0x3e397d...ac529e`; optimism `0x4dd64c...bd5cf3`; optimism `0x502ab1...650ee1`; optimism `0x573864...e348c4`; optimism `0x582641...ed12d7`; optimism `0x5e268e...0526c7`; optimism `0x64a912...dd2f2f`; optimism `0x71b4d6...ab4171`; optimism `0x77d432...828edb`; optimism `0x7ae43c...1406e0`; optimism `0x7caa1f...db0389`; optimism `0x87459f...06efc8`; optimism `0x91939e...fa512b`; optimism `0x939adb...26532f`; optimism `0xa10327...df79c1`; optimism `0xa78cd8...5078cc`; optimism `0xa8ed31...6ba494`; optimism `0xab4771...7aee85`; optimism `0xafef59...d440e1`; optimism `0xbca22c...38c7f2`; optimism `0xc46fac...3cd807`; optimism `0xc701a9...0479f7`; optimism `0xcae484...804165`; optimism `0xd73ce7...ed88a3`; optimism `0xe07db5...04b2d6`; optimism `0xe2152f...3cc0cf`; optimism `0xe6e808...5f9d4b`; optimism `0xf9cc04...c4494e`; optimism `0xfbf706...77ec28`; optimism `0xff9e26...28a22b` | ⚠️ Unaudited |
| ReferralCodesRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1fb77...fce553` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x0d753a...2e1254`; optimism `0xa1b7a8...ba0823` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x06412f...be5568`; optimism `0x350d42...d29522`; optimism `0x66e4ba...724d94`; optimism `0x943425...3496b1`; optimism `0x9b7568...ab2688`; optimism `0xad85a9...be1321`; optimism `0xc66ca1...342c5a`; optimism `0xcd3db9...866d9c`; optimism `0xd68111...34493e`; optimism `0xe24045...a719cc` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x8912d7...4cd92e`; optimism `0xd916d8...4f80c5`; optimism `0xea3d30...7a28cc` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x776aad...2eb68d`; optimism `0x7e47f4...40fb9f` | ⚠️ Unaudited |
| UserMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x256168...b23df7`; optimism `0xc412d5...d38b91` | ⚠️ Unaudited |
| VaultFeeReward | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x060c4c...3253fe`; optimism `0x075370...71a0f0`; optimism `0x1c3831...94d4d3`; optimism `0x58488b...1d4183`; optimism `0x649a5e...753058`; optimism `0x939c11...ba02ae`; optimism `0xa4dd68...67244a`; optimism `0xc4eae4...1d6014`; optimism `0xd26404...b090b3`; optimism `0xd3e9b3...667ee7`; optimism `0xd6bb26...11e6e5`; optimism `0xd85379...9f197d` | ⚠️ Unaudited |
| VaultFeeReward | core_logic | project_anchor | own_supporting | 0 | optimism | unit-390894 | `0x0e431e...e1011a` | ⚠️ Unaudited |
| VaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x231eb7...81006e`; optimism `0x2ab66d...7378b6`; optimism `0x371c9b...9d89bd`; optimism `0x59fd9d...249bee`; optimism `0x5d055b...347c8f`; optimism `0x7223bd...04e3fb`; optimism `0x9c570b...9115e3`; optimism `0xedd0d8...1d29b2`; optimism `0xf52fc7...becba2` | ⚠️ Unaudited |
| VaultTokenReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 20 deployments: optimism `0x1c3833...5015db`; optimism `0x3e7bf7...99b1e4`; optimism `0x40ee5e...c3febc`; optimism `0x4dd042...d818ec`; optimism `0x53c8b9...009d82`; optimism `0x5a8737...83afd0`; optimism `0x703d07...a344d9`; optimism `0x78136e...381910`; optimism `0x7bbe13...e2ee80`; optimism `0x841258...d04c64`; optimism `0x9376e5...778536`; optimism `0x98b410...6c1221`; optimism `0xa6cac9...3fbaeb`; optimism `0xb7c159...b2447f`; optimism `0xbc3ee2...b85ad6`; optimism `0xbce11d...5e82d9`; optimism `0xc71ce7...c4acbb`; optimism `0xce90fb...e082df`; optimism `0xf6f64b...ae7912`; optimism `0xfd407e...6bb2da` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 14 deployments: optimism `0x1974f9...218daa`; optimism `0x21a4a5...459f2a`; optimism `0x3020a2...92906f`; optimism `0x32896e...a94126`; optimism `0x36ba93...b10ae1`; optimism `0x5aafbd...9db30c`; optimism `0x71f25b...277605`; optimism `0x9ba3f2...afd076`; optimism `0xabc252...4e6b94`; optimism `0xc4100e...1713c3`; optimism `0xee964b...f48c3d`; optimism `0xf6bf9e...bbbbeb`; optimism `0xfbf4a1...456811`; optimism `0xfefd4d...ebf8a7` | ⚠️ Unaudited |
| VesterReader | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x654359...b897aa` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x22ae0f...6dafe2`; optimism `0x26a2c7...deebc0`; optimism `0xef5855...0799aa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a1e7f...d07218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17e8d2...7004d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20d52d...94da65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31a7d1...8c13fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c55cf...d9e99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x56d830...e598de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d974d...37615c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x666d4e...99dca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7884b1...805b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x80590b...f6e6f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa74d0f...0ccb6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xacb86a...80e314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb3d258...3eb124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb4b4e3...ec2717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf991b...fd202a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe3a50e...73b92e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7c1cf...8ab25e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe939df...7776a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf56b05...5b2a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfbe2e2...5a6881` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/pikaprotocol](https://skynet.certik.com/projects/pikaprotocol) | CertiK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | n/a | matched | 2 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13678] skynet.certik.com/projects/pikaprotocol — no match: The provided text is a project overview page from CertiK Skynet, not a full audit report. It mentions an audit delivered on 6/15/2021 but does not list any specific contracts in scope.
- [13679] PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf — no match: No reason recorded
- [13680] PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf | PikaPerpV2 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf | PikaStaking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | CommonHealthCheck | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | OrderBook | own contract | OrderBook (selected) `0x6c420e...4160b1` — deployed 2024-01-27 15:50:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | Pika | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | PikaPerpV3 | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | PositionManager | own contract | PositionManager (selected) `0xcabe9b...716db1` — deployed 2024-01-27 15:57:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf | SharerV4 | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xe3451b...b4d7c1` | FeeCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8af150...c2636c` | FundingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8c9b6a...16d25e` | PikaPerpV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xeab7bd...f239f7` | PikaPriceFeedPyth | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0e431e...e1011a` | VaultFeeReward | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [13678] skynet.certik.com/projects/pikaprotocol
- [13679] PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
