# Agentic Audit Brief: Elephant Money

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Elephant Money (`elephant-money`)
- Website: [https://elephant.money](https://elephant.money)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T23:47:04.934Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: bsc
- Contract surface: 49 unique implementations (115 raw deployments)
- DeFi Llama TVL: $74,830,740.18
- On-chain TVL (included contracts): $1,571,321.59
- TVL by chain: Bsc $1,571,321.59

## Project Description

Elephant Money is a decentralized community-bank and economic-engine ecosystem centered on ELEPHANT/WELEPHANT and TRUNK. Its historical BNB Chain products include vault/reserve-style yield and liquidity mechanisms, while the current public site also advertises WELEPHANT activity on Base and BNB Chain and TRUNK/USDC activity on Solana. Non-BNB deployments and products should be treated as out of scope unless their contracts are explicitly collected and mapped.

### Architecture

Vaults and yield strategies interact with treasuries and engines to manage funds, while the NFT ecosystem uses dedicated minters and marketplaces. Both families share infrastructure like oracles, routers, and the GnosisSafeProxy for governance.

## Contract Surface Quality

- Indexed contracts: 667; live-surface contracts included: 115 (115 live, 0 unknown).
- Excluded by liveness: 552 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 5/52.

## Audit Coverage Summary

- Verified implementations audited: 4/47 (8.5%)
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 49
- Raw deployments: 115
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,571,321.59
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,571,321.59 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 4 | 8.5% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BankrollNetworkStack | unknown | bsc | n/a | [`0xec1005...ce1eb7`](./contracts/bsc-56/0xec10059ba900883ed6154883e9f3a1c24fce1eb7/) | ✅ Audited |
| Elephant | unknown | bsc | n/a | 2 deployments: bsc [`0xd96ec8...62be1a`](./contracts/bsc-56/0xd96ec811359bfd94d2dfe2a3bd8da68bf262be1a/); bsc `0xe283d0...92f688` | ✅ Audited |
| ElephantDollar | unknown | bsc | n/a | [`0xdd325c...1a70e0`](./contracts/bsc-56/0xdd325c38b12903b727d16961e61333f4871a70e0/) | ✅ Audited |
| Treasury | operational_periphery | bsc | n/a | [`0x2da1a9...b5267d`](./contracts/bsc-56/0x2da1a94e7bda3a71342a19643f94443641b5267d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DODOBscToken | token | bsc | n/a | [`0x67ee3c...b929e2`](./contracts/bsc-56/0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2/) | ⚠️ Unaudited |
| BSWToken | token | bsc | n/a | [`0x965f52...120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| autoBsw | unknown | bsc | n/a | [`0x97a16f...cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BiswapFactory | registry | bsc | n/a | [`0x858e33...8af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | ⚠️ Unaudited |
| BiswapRouter02 | adapter | bsc | n/a | [`0x3a6d8c...350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| DODODppProxy | unknown | bsc | n/a | [`0x624fc8...ec21b9`](./contracts/bsc-56/0x624fc8368fe11be00d8b2f3fe0b9d0053bec21b9/) | ⚠️ Unaudited |
| DODODspProxy | unknown | bsc | n/a | [`0x2442a8...d4e65a`](./contracts/bsc-56/0x2442a8b5cdf1e659f3f949a7e454caa554d4e65a/) | ⚠️ Unaudited |
| DODOMine | unknown | bsc | n/a | [`0x01f9bf...0cc750`](./contracts/bsc-56/0x01f9bfac04e6184e90bd7eafd51999ce430cc750/) | ⚠️ Unaudited |
| DODOMineV3Proxy | unknown | bsc | n/a | [`0x8f3fb1...b5c590`](./contracts/bsc-56/0x8f3fb1f9148dc473453163bf31de1d830eb5c590/) | ⚠️ Unaudited |
| DODONFT | token | bsc | n/a | [`0x5ed972...489888`](./contracts/bsc-56/0x5ed972c0a7f8d0c4dedf6a37848a297b67489888/) | ⚠️ Unaudited |
| DODONFT1155 | token | bsc | n/a | [`0xdc9224...f56119`](./contracts/bsc-56/0xdc9224cbc4b1826bb74ff383ff1ce94de1f56119/) | ⚠️ Unaudited |
| DODORouteProxy | unknown | bsc | n/a | [`0x6b3d81...9737ca`](./contracts/bsc-56/0x6b3d817814eabc984d51896b1015c0b89e9737ca/) | ⚠️ Unaudited |
| DODOV2Proxy02 | unknown | bsc | n/a | [`0x8f8dd7...d58486`](./contracts/bsc-56/0x8f8dd7db1bda5ed3da8c9daf3bfa471c12d58486/) | ⚠️ Unaudited |
| DPPAdvanced | unknown | bsc | n/a | [`0x0fe261...9065f4`](./contracts/bsc-56/0x0fe261aee0d1c4dfddee4102e82dd425999065f4/) | ⚠️ Unaudited |
| DPPFactory | registry | bsc | n/a | [`0xd9cac3...51daae`](./contracts/bsc-56/0xd9cac3d964327e47399aebd8e1e6dcc4c251daae/) | ⚠️ Unaudited |
| DVMFactory | registry | bsc | n/a | [`0x790b4a...1733fb`](./contracts/bsc-56/0x790b4a80fb1094589a3c0efc8740aa9b0c1733fb/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | bsc | n/a | [`0x0567f2...d42aee`](./contracts/bsc-56/0x0567f2323251f0aab15c8dfb1967e4e8a7d42aee/) | ⚠️ Unaudited |
| ElephantMarketPlace | unknown | bsc | n/a | 2 deployments: bsc [`0x4d1e19...802b7c`](./contracts/bsc-56/0x4d1e19b5a6e68abe4dc5ce35f161070692802b7c/); bsc `0xb6c05c...ae42ea` | ⚠️ Unaudited |
| ElephantMoneyUnlimitedNFT | token | bsc | n/a | [`0xb92afe...ab3198`](./contracts/bsc-56/0xb92afedc8f8618be4198fbe5d97adb7c60ab3198/) | ⚠️ Unaudited |
| ElephantNFTStaking | token | bsc | n/a | 2 deployments: bsc [`0x9a372c...8ec4da`](./contracts/bsc-56/0x9a372caefe9534dc09b87a8d99fe7c23508ec4da/); bsc `0xb2b1d8...1c4fb3` | ⚠️ Unaudited |
| ERC20Mine | token | bsc | n/a | [`0x322b43...b0385f`](./contracts/bsc-56/0x322b43e406d1b4df9bc36d058317dd1cd3b0385f/) | ⚠️ Unaudited |
| ERC20V3Factory | registry | bsc | n/a | [`0x5ed22a...e7dc92`](./contracts/bsc-56/0x5ed22a48fee263207f5caae1a1f1a27011e7dc92/) | ⚠️ Unaudited |
| Fear | unknown | bsc | n/a | [`0x3e6293...48b5e1`](./contracts/bsc-56/0x3e629332c51046a17ec236553cb931cf0548b5e1/) | ⚠️ Unaudited |
| FuturesEngine | unknown | bsc | n/a | 2 deployments: bsc [`0x6c81fd...e1a1ee`](./contracts/bsc-56/0x6c81fd141d97edbeda047a7694b63637e0e1a1ee/); bsc `0x9ecde1...2cd68e` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-33612 | [`0xd5d371...bac644`](./contracts/bsc-56/0xd5d3711939d88322a7dceeb529ace4bac3bac644/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0xdbc1a1...061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | ⚠️ Unaudited |
| MysteryBoxKAKA | unknown | bsc | n/a | [`0xdf7e00...20c8d4`](./contracts/bsc-56/0xdf7e00cd0bb91d1502a1a14575e58b5d8f20c8d4/) | ⚠️ Unaudited |
| MysteryBoxV1 | unknown | bsc | n/a | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | ⚠️ Unaudited |
| NFTMarketplaceHelper | token | bsc | n/a | [`0x6f4318...ca3248`](./contracts/bsc-56/0x6f43186b7c5fc85a058d96984ad7947492ca3248/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143c...350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 4 deployments: bsc [`0x1cea83...195ce1`](./contracts/bsc-56/0x1cea83ec5e48d9157fcae27a19807bef79195ce1/); bsc `0x4e90f5...4b861b`; bsc `0x647bc9...6bec48`; bsc `0xf15a72...e0aede` | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | 2 deployments: bsc [`0x10ed43...56024e`](./contracts/bsc-56/0x10ed43c718714eb63d5aa57b78b54704e256024e/); bsc `0x2ad2c5...eb2c56` | ⚠️ Unaudited |
| PcsSnapshotTwapOracle | operational_periphery | bsc | n/a | [`0x5606ee...326d3c`](./contracts/bsc-56/0x5606ee12d741716c260fda2f6c89efdf60326d3c/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 53 deployments: bsc [`0x00a142...b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/); bsc `0x00d2d8...fff1d4`; bsc `0x015c8b...3a44c1`; bsc `0x018952...b731a9`; bsc `0x099975...0c1e1b`; bsc `0x0c1e98...e457c9`; bsc `0x109eaa...d5e836`; bsc `0x12e5b4...d93c3f`; bsc `0x13e903...4c8237`; bsc `0x1c3c5c...661492`; bsc `0x1f337d...d32970`; bsc `0x2792cc...8bd280`; bsc `0x2968da...ad6a46`; bsc `0x36fc9c...28860f`; bsc `0x50945a...0358ac`; bsc `0x53c60a...bd9891`; bsc `0x62cfcc...258373`; bsc `0x66ac2a...d955ae`; bsc `0x69c4c9...fc8157`; bsc `0x7468af...33bebd`; bsc `0x7517c3...358dc6`; bsc `0x7951bc...6fafc0`; bsc `0x81af4b...bc5d61`; bsc `0x850281...de5bbb`; bsc `0x8b10e6...c42ff4`; bsc `0x8d87f0...105e71`; bsc `0x8ddfcd...916f2d`; bsc `0x973304...fda649`; bsc `0x994f7b...e0cb24`; bsc `0x9b0111...892c03`; bsc `0x9b9f3f...b52bff`; bsc `0xa394dd...823459`; bsc `0xaa2b37...9fd4e5`; bsc `0xab4592...8a4784`; bsc `0xacb2f1...e496f2`; bsc `0xb12c55...2f57b6`; bsc `0xc50676...81e920`; bsc `0xc7ba45...2ac468`; bsc `0xcc1b01...3f6a73`; bsc `0xd48558...11e67a`; bsc `0xd59227...5f3161`; bsc `0xe018d6...01831d`; bsc `0xe056fb...25990b`; bsc `0xe42d17...c175a7`; bsc `0xe6c58b...cb9cc5`; bsc `0xe737ed...3673a8`; bsc `0xeb8134...0540b7`; bsc `0xeeee29...d8e193`; bsc `0xf31f62...7f7d4c`; bsc `0xf4540b...950f0d`; bsc `0xf54c23...cd9ff1`; bsc `0xf62e23...d1c899`; bsc `0xfd6820...367275` | ⚠️ Unaudited |
| SuperCharger | unknown | bsc | n/a | [`0xec8c93...6d7305`](./contracts/bsc-56/0xec8c93d29418b4d3e13edb18cc6dbc24606d7305/) | ⚠️ Unaudited |
| Trumpet | unknown | bsc | n/a | [`0x574a69...47e073`](./contracts/bsc-56/0x574a691d05eee825299024b2de584b208647e073/) | ⚠️ Unaudited |
| TrunkElephantLiquidityBridge | operational_periphery | bsc | n/a | [`0x7cb957...b64b04`](./contracts/bsc-56/0x7cb957002d1d898b602c9a0a65555acadab64b04/) | ⚠️ Unaudited |
| Turbine | unknown | bsc | n/a | 2 deployments: bsc [`0x69c714...2f2d86`](./contracts/bsc-56/0x69c714f868855ec3f24dfff0fd5f1805642f2d86/); bsc `0x6de7de...20a51d` | ⚠️ Unaudited |
| vDODOMine | unknown | bsc | n/a | [`0x505a0f...ae945f`](./contracts/bsc-56/0x505a0f0f4956f7ca5839c5efd8ebdaf3d3ae945f/) | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WELEPHANT | unknown | bsc | n/a | 3 deployments: bsc [`0x241f21...87cdca`](./contracts/bsc-56/0x241f21df529c05289a00dafecea10139a287cdca/); bsc `0x60fc26...fd4de3`; bsc `0xa546d0...4d8e47` | ⚠️ Unaudited |
| WElephantRouterProxy | adapter | bsc | n/a | 3 deployments: bsc [`0x9ef34c...1880c2`](./contracts/bsc-56/0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2/); bsc `0xb247c1...422d15`; bsc `0xba532f...3a963a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xc48aa9...36c596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f6f5...fb5302` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/ElephantMoney) | SourceHat | Audit | 2021-11 | stale | Direct | contract_name | 5 | high |
| [PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf](https://elephant.money/media/PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4d1e19...802b7c`](./contracts/bsc-56/0x4d1e19b5a6e68abe4dc5ce35f161070692802b7c/) | ElephantMarketPlace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb92afe...ab3198`](./contracts/bsc-56/0xb92afedc8f8618be4198fbe5d97adb7c60ab3198/) | ElephantMoneyUnlimitedNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9a372c...8ec4da`](./contracts/bsc-56/0x9a372caefe9534dc09b87a8d99fe7c23508ec4da/) | ElephantNFTStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6c81fd...e1a1ee`](./contracts/bsc-56/0x6c81fd141d97edbeda047a7694b63637e0e1a1ee/) | FuturesEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc25286...af97b8`](./contracts/bsc-56/0xc25286ef3bae3f6fe2d6d0a6e2acad0301af97b8/) | MysteryBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6f4318...ca3248`](./contracts/bsc-56/0x6f43186b7c5fc85a058d96984ad7947492ca3248/) | NFTMarketplaceHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5606ee...326d3c`](./contracts/bsc-56/0x5606ee12d741716c260fda2f6c89efdf60326d3c/) | PcsSnapshotTwapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xec8c93...6d7305`](./contracts/bsc-56/0xec8c93d29418b4d3e13edb18cc6dbc24606d7305/) | SuperCharger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x574a69...47e073`](./contracts/bsc-56/0x574a691d05eee825299024b2de584b208647e073/) | Trumpet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7cb957...b64b04`](./contracts/bsc-56/0x7cb957002d1d898b602c9a0a65555acadab64b04/) | TrunkElephantLiquidityBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69c714...2f2d86`](./contracts/bsc-56/0x69c714f868855ec3f24dfff0fd5f1805642f2d86/) | Turbine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x241f21...87cdca`](./contracts/bsc-56/0x241f21df529c05289a00dafecea10139a287cdca/) | WELEPHANT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9ef34c...1880c2`](./contracts/bsc-56/0x9ef34c86cbba9b29d9deb9ea2e7f5efe001880c2/) | WElephantRouterProxy | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 25 |
| standard_library | 2 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=22

Zero-match audit list:

- [4641] PeckShield-Audit-Report-ElephantReserve-v1.0rc.pdf

Fork inheritance lineage and inherited audits are included when available.
