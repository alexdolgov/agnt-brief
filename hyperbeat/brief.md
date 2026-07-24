# Agentic Audit Brief: Hyperbeat

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 5 audit(s)
- Eligible audit results: 14 (5 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Hyperbeat (`hyperbeat`)
- Website: [https://app.hyperbeat.org/earn?referral=5C37264D](https://app.hyperbeat.org/earn?referral=5C37264D)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, hyperliquid
- Contract surface: 256 unique implementations (610 raw deployments)
- Coverage basis: 7/22 confirmed own live verified implementations (31.8%); conservative 31.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $43,666,095.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hyperbeat. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across ethereum, hyperliquid. Structural roles: 16 unclassified, 9 supporting, 6 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: unclassified (16), supporting (9), core (6)
- Contract kinds: contract (31)
- Detected standards: erc20 (3), erc165 (2), erc1967proxy (2), pausable (2), accesscontrol (1), erc20permit (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (9), solmate (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6e0b9afaae09a3479cfb7e923e15c05a9b23850d`, chain 1)
- BeatPotWithdrawalQueue (`0x7e89acffac47435778dd158aa622a150de045e10`, chain 999)
- BeHYPETimelock (`0xa24af73eadd17997eeedbed36672e996544d2de4`, chain 999)
- BoringVault (`0x669abe85f96a9e3b34723f7be9bc6f250abc0cc1`, chain 1)
- dnHYPE (`0xe4c53a0fbc1d87006e41848c126afadd9e9c1891`, chain 999)
- dnPUMP (`0xce3f7652c12f03ca5482318ac142045741f1ceee`, chain 999)
- hbUSDC (`0x76a20173c5792c04a9cc6754d7e888ac84c54871`, chain 999)
- hbUSDT (`0x77b13307d6a36511ee7d887ae7ae9eb28e78e690`, chain 999)
- hbXAUt (`0x8211c4c0015ffc4edd4799aeb2478552ceac1523`, chain 999)
- liquidHYPE (`0x6d684992f8d105b33f9b1bbaa77bdd0e0f71f585`, chain 999)
- lstHYPE (`0x7b5bd5a38677a5355a54adc9b3113c3023709d03`, chain 999)
- MetaMorphoV1_1Factory (`0x1897a8997241c1cd4bd0698647e4eb7213535c24`, chain 1)
- PreLiquidationFactory (`0x6ff33615e792e35ed1026ea7caccf42d9bf83476`, chain 1)
- PublicAllocator (`0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d`, chain 1)
- TransparentUpgradeableProxy (`0x96c6cbb6251ee1c257b2162ca0f39aa5fa44b1fb`, chain 999)
- TransparentUpgradeableProxy (`0xc061d38903b99ac12713b550c2cb44b221674f94`, chain 999)
- UUPSProxy (`0x90102473a816a01a9fb0809f2289438b2e294f76`, chain 999)
- UUPSProxy (`0x9d0b0877b9f2204cf414ca7862e4f03506822538`, chain 999)
- UUPSProxy (`0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b`, chain 999)
- UUPSProxy (`0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9`, chain 999)
- VaultToken (`0x4cc221cf1444333510a634ce0d8209d2d11b9bba`, chain 999)
- wVLP (`0x042e8217be08dac98aaaee834d47ea3a7f77ba34`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (31 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/22 (31.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 233 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 170
- Confirmed-live implementations: 23 of 256 unique; 233 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/198
- Verified + Unaudited implementations: 191
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 256
- Raw deployments: 610
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 6 fresh, 3 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 4.5% (Certora)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 5 | 2.5% | 2025-09 |
| Certora | Tier 1 | 1 | 0.5% | 2025-10 |
| Nethermind | Tier 2 | 1 | 0.5% | 2025-10 |
| Zellic | Tier 2 | 1 | 0.5% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeatPotWithdrawalQueue | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-242244 | `0x7e89acffac47435778dd158aa622a150de045e10` | ✅ Audited |
| BeHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242254 | `0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9` | ✅ Audited |
| BeHYPETimelock | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-242245 | `0xa24af73eadd17997eeedbed36672e996544d2de4` | ✅ Audited |
| RoleRegistry | registry | project_anchor | own_supporting | 1 | hyperliquid | unit-242255 | `0x90102473a816a01a9fb0809f2289438b2e294f76` | ✅ Audited |
| StakingCore | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242256 | `0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b` | ✅ Audited |
| VaultToken | core_logic | project_anchor | own_supporting | 0 | hyperliquid | unit-242243 | `0x4cc221cf1444333510a634ce0d8209d2d11b9bba` | ✅ Audited |
| WithdrawManager | operational_periphery | project_anchor | own_supporting | 1 | hyperliquid | unit-242259 | `0x9d0b0877b9f2204cf414ca7862e4f03506822538` | ✅ Audited |

### ⚠️ Verified + Unaudited (191)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd4a426f010986dcad727e8dd6eed44ca4a9b7483` | ⚠️ Unaudited |
| BeatPot | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242248 | 2 deployments: hyperliquid `0x53f9715c91642da22ebdf6eaa45e86d5e94c8425`; hyperliquid `0x710d8a43eea5e2eeb36de09eef733fb7c3ccd314` | ⚠️ Unaudited |
| BeatPotV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2f76abeb51eae96f5af615696a3b1eca5c95ea89`; hyperliquid `0xae93160b93f42e4748a364d19e6869162bd0d319` | ⚠️ Unaudited |
| BeatPotWithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 5 deployments: hyperliquid `0x721066bc8ef8211e04a43b78ca078bdfa60fb966`; hyperliquid `0x9cd0335bde217d9bf66f971d0b6a80f0bd84f46e`; hyperliquid `0xd1556d45d2e1ebbf50f9a38382e9487ba89d9673`; hyperliquid `0xf112076df8b099c167e5b6baee37b200d4a976b6`; hyperliquid `0xf97271737adadcb392efc550bac7c0612dc0e798` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3a10f1161ac13a13a620836b08ee442c61e35ea0`; hyperliquid `0xaea5b5dfd661df7edeb19c6f1ef4101d3bb080a3` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5121f215d177422d84750262b33a97d33763cae6`; hyperliquid `0xa328700f803e522d0329283d8b6f061e44893ac0` | ⚠️ Unaudited |
| BeatUSDSolver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbd7ee2c6c3d6f1d966e9a1fe73d572090cc1a4a9`; hyperliquid `0xe83aaff29dd25752cd18b48c3590a509b1e19614` | ⚠️ Unaudited |
| BeHypeAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x18bd6ff6f1d1ab13702a743bbf3742cb512492ca`; hyperliquid `0x8c4bf0020e9ebbb9ed7c4a2726f2824d29542c01` | ⚠️ Unaudited |
| beHYPEBatchWithdrawalClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa86b7a6942a1861e90baf713ad70308545bef966` | ⚠️ Unaudited |
| beHYPEDepositAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x696c558377dd0861696f1b80f33a5704a8021323` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-242230 | `0x669abe85f96a9e3b34723f7be9bc6f250abc0cc1` | ⚠️ Unaudited |
| CompositeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x610cb88e101d9e7e8163ae7788b873d272499df3`; hyperliquid `0xa89fa5ca257e70ec8b34b8103fd4e8093150da86` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x16947af5238d03910d134d1e5323247b925a8483`; hyperliquid `0x7f1f3e3d57e5549828909ae3381c7bff05a4fe09`; hyperliquid `0xe90348c06e1adeec6ab04ef899dc579597c62637` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | hyperliquid | n/a | 7 deployments: hyperliquid `0x0c59a087922f21eb49ffa0fe33e0d17b62ff4c70`; hyperliquid `0x6231f18bd9d8592a679f4dc5e2f6d8b6b3990e3a`; hyperliquid `0x871550445b0b28dc43e6c9f91399068652ec9b98`; hyperliquid `0x8da4c79fb9b4ae16ea3e46a6341a1e24b555b21e`; hyperliquid `0xd81448a57e88fb704af0dc43ea2586bc4ef996ef`; hyperliquid `0xe3c79bfa56ed7acb89028de4345371ea93fb3434`; hyperliquid `0xe66f2727e99c5067463db46e7e6595a1af1b55f0` | ⚠️ Unaudited |
| DataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | hyperliquid | n/a | 9 deployments: hyperliquid `0x1cc42c97e7c598a1d1b2e71c84a9c0ad9b3d42e7`; hyperliquid `0x289584e63a61c69eee170cd553cff8b3ffd56ea7`; hyperliquid `0x370703bde8c9c506db2355e641db71d4f19f5371`; hyperliquid `0x47fddec235aa35625fd2bad34fb373b3a4b6dd74`; hyperliquid `0x5a55899f324bf45dd2da0b97e145774a4668a9e4`; hyperliquid `0xcb01c192f223e3c55ae1e1885a9464131aa985c2`; hyperliquid `0xcc10c5689adc11bef3ea9e11da0bd9268a4a3fa7`; hyperliquid `0xd28b1ab7098e7434a7b4efdc99c35fb85cfd92c1`; hyperliquid `0xe1c769d56cb6448813732f7736041425aa0a4a75` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 29 deployments: hyperliquid `0x0058fa9192f7829b52316096456e98d83980b7a8`; hyperliquid `0x0868a605661440e5d58453f16bdb64795b2da176`; hyperliquid `0x0f0d392d8bf47f9ce08934aace4483604145c933`; hyperliquid `0x127c5945c93906cc36cf32eb7f9504af66e464b9`; hyperliquid `0x205ac1e0380b0b9cce691bd4c6f3c14258ae9201`; hyperliquid `0x223c4a8965c0d1508b25aa09a8bec88c5de451e0`; hyperliquid `0x315b704c61e2ff777e27a93d1a226212ba838883`; hyperliquid `0x4c645eb12d837b84fad21bf90c2dd0a5ab96d51c`; hyperliquid `0x53dd0a5438fb6d8b3b41248522028673515967d1`; hyperliquid `0x5bfb09dd155c0ec3f375b266a7353c0ba64f9d60`; hyperliquid `0x60bb82cf28e8ff28c7c1523a124aea37f3f9c893`; hyperliquid `0x60bf48a14a2abbf47e2e191d6468b86f39932c70`; hyperliquid `0x6261f30144b259c74243d5f5d9230941186ac936`; hyperliquid `0x657c7f3e04b43c4a6ab6e181237c962e391aaa4f`; hyperliquid `0x6ff429955ce15b85b8a820d45acb47614024be21`; hyperliquid `0x76a48c429a48346cb5b80544bffc8132a30defa8`; hyperliquid `0x8315ff03a06e8af86e649757337d7cea37dbfd76`; hyperliquid `0x8b6badb5173441a71428aab261a2b7f438609b84`; hyperliquid `0x901beb7ba6887c8899524c79385d7bd64bd666bf`; hyperliquid `0x929df52b0c3315d03922e12e54b46157395be4d0`; hyperliquid `0x93a970e1491d9065d2bab4c5b212f2ff42ddbb4d`; hyperliquid `0x9eef6e40088e20002c2e232d84c1c0081f1dd4ed`; hyperliquid `0xa685ef0a47ffbfb82d90ea7a4bda58e95eb6607c`; hyperliquid `0xafa7a52d600ecc55ccd6a59f148a87898812a1c5`; hyperliquid `0xb3060c1fbf496dfcc04284380f0f0567c5e6f2e0`; hyperliquid `0xbd373758a450a4b0cdb220351e8b0f11ac681698`; hyperliquid `0xccbc13af723bee139a5cc48f0c7169a56e10d2d3`; hyperliquid `0xd409790521db9f18f57c8025dc903ca06bed658b`; hyperliquid `0xd830bf3c404aee36cd67ed7bfaf9cb1072da71f5` | ⚠️ Unaudited |
| DepositReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 29 deployments: hyperliquid `0x0126c0bc7b1dca51e1b9c7293f393f57c0715105`; hyperliquid `0x1fc21645d56b5ddb580123ba832bbbc10a2151f8`; hyperliquid `0x21e0991da6830a11eccea0460212006f56dcdc8a`; hyperliquid `0x226acf58c9541430d6a24a43237d745122036f77`; hyperliquid `0x248b986bbeabf951d879e2679ab0f75690960d78`; hyperliquid `0x3067f8df868bdf2916fdbc8d15254222e4ef0775`; hyperliquid `0x4f7bada89b65366c7b7074b474675d5dcf712a8b`; hyperliquid `0x4fe414c7edf42719e0c621deaa2909ec0ddcf1a9`; hyperliquid `0x5abfb110b61dbe6d029aa7a0018673e167c06a05`; hyperliquid `0x6c042edd73f1f7e8e9b716505efefc0020c6fc6e`; hyperliquid `0x7abf6da6c2c131b58c1f4cb3947b0cfe2edc1c2a`; hyperliquid `0x8644fa9ce9f610babd0cdc33f3772da546c738e6`; hyperliquid `0x9182b9b8ce28d9af75ff6869e928ea487c4dbc92`; hyperliquid `0x92dd15b746c9a1026b2b38c5d7350dcc8d6e03a4`; hyperliquid `0x93586be14d8a5a05f03931c347d5a2a02753f736`; hyperliquid `0x95e89cb14c42c8ac88d1c2c530f9209761f265d2`; hyperliquid `0xa980d98de0fff436e1a3e7d9a06999b03c8aa59e`; hyperliquid `0xb3d7b9a7a47a49e675b2d824ce6440dc29df48ca`; hyperliquid `0xb3f15e41fc1536e47ee7de20c7b44fb1eec70aec`; hyperliquid `0xb4cfbbf6790ebf7894c4c704a9676614daaca06b`; hyperliquid `0xbdc3d26c694b037457d6f5bc04d8c9083a67297d`; hyperliquid `0xc0bd66124ac813dcc4f4cca69a6ed4bd02187969`; hyperliquid `0xc4dee7c857bf5b3c3b1aa85a9b3afe3fe0ec3277`; hyperliquid `0xc74c988c54fa24f37cbec5b75d02a4c864fb1626`; hyperliquid `0xc8ca861ee85aa7d4804507f0646acce8899ea14e`; hyperliquid `0xd52e5fd325785bf0e9d4c4dfa5fcb5cc06f92fbd`; hyperliquid `0xdcefcdd172a62848e0a9cf56c5373d73b1963884`; hyperliquid `0xe098e46e3059570c5330cb2580923bf7cb6280db`; hyperliquid `0xfd1fd829e4e89cae8190596698e84754c3fec16c` | ⚠️ Unaudited |
| DnCoreWriter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x00da21d92f5f0536ff218b6c236252ed0a235c96`; hyperliquid `0xcdc99155f640fe8bfffa3ca344afc2ecd84c5418` | ⚠️ Unaudited |
| DnCoreWriter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5f6c8cecadf8ed28522abbcb1285e79a2c282932`; hyperliquid `0x67d8cc310d07ae9ae935ca45805449153f1f7f56` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x06e65571600ecaab66280c7dd61d28057f8b5bb1`; hyperliquid `0x4d66bd20d5d4046921ac39da19fbaa307879a761` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x12ddd5fc13380da99d41698ee9c533cdc26c80c2`; hyperliquid `0xf0b283d42634a7c0f6e8023600eb1c07ac228c68` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x14f9b97eb4e1c634d04a3c8e26015ca8d5b4458b`; hyperliquid `0x80e9d02a4127a0f34584cd10975f1e5ddd060cbf` | ⚠️ Unaudited |
| DnCoreWriterVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1557835b3c6a5d6927f23c055f65482e70113774` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1a877d8b4857aaf7c346bf5ce3ddfa232e831d0e`; hyperliquid `0x75eac60b245c2a186521d85203f26feb249bdc30` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1c43be6cf1ee27e4de5ed9f653940e42a57ac99c`; hyperliquid `0xf5ad0727e4b36fd20610cba4cf01b3eb458f130d` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x38a0ee3d3e0602a8d6cb86cb033d62bfd1be97df`; hyperliquid `0x46e3b92808ceacb3fd826b0e4e7fd26ad107ded5` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4074f9720664dae8f4880d860ab1e36060a393ec`; hyperliquid `0x4604cfe1a44ffb85e52fe3787c9a5768b0234a20` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x46b72b3e2f9d27b4bfe5f2a20483089a2478b839`; hyperliquid `0x9e98a8a3a7f146e3f01e835b84e80c4c08c05d90` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d340d319b29526d9491c0c2b16b2e5e4f9a4467`; hyperliquid `0xeaf97b84fd560291f59d695c5d72fa6e3a968a8f` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x81956faa91751046f33bfb2588c97f427b3feb29`; hyperliquid `0xc9f2cd946b079c602f1661e1c0bdebbeac0394c0` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x86dce613229baff90dae7c0e62df6f752e3ade57`; hyperliquid `0xc13c7c315e88c8e2507c831e4f9258bd84ebdafc` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x925cddddfdf07b9e06eddde8f64aa08b30b8d359`; hyperliquid `0xf813120f90571a6a87430211be841d9f675d5120` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x9284b6206260bb90293655182a3526746f0276b4`; hyperliquid `0xd33125f5b123071a9fb8a006f13ed1ffd3327892` | ⚠️ Unaudited |
| DnCoreWriterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd0f7a75ee3450740c639619c681d6e3d3b147b0e`; hyperliquid `0xe69da04c13faa6c172ad2bf5da54124dc49d7707` | ⚠️ Unaudited |
| dnETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2540bddc5e854419496192688e8257c5ded7ad78`; hyperliquid `0xc3ce68575184c24d3c3fa2f140c7fe47f00c6c77` | ⚠️ Unaudited |
| DnEthCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x72a173dcbed0ac69421fef0e44cf763670e463a5`; hyperliquid `0xf213df042f19006a48e5078340d09b3abe017fcc` | ⚠️ Unaudited |
| DnEthDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x43daa49a0df14fb3d0066c5ec91aabd872e1b1ad`; hyperliquid `0xb1dd948591880a6628911d9b6ed03eedf802e0a9` | ⚠️ Unaudited |
| DnEthDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6431a3588e76af88cc6f12926ffcac7209197382`; hyperliquid `0xed760c86b7edaefc4a8fa3922ca01a7e46007f37` | ⚠️ Unaudited |
| DnEthRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1afc880769833a981c01222066bf4a5572072874`; hyperliquid `0x94a9e619779e65e7b79fea6f7ef623118ac1c2f2` | ⚠️ Unaudited |
| dnFART | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4a8ba2812246c40fa9e38e19d224e159b1fcda11`; hyperliquid `0xb39c200d3094c05e048a8f13b69a221db56d012a` | ⚠️ Unaudited |
| DnFartCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x62e14d2bed7467ede5cbbeb150288453f51358c5`; hyperliquid `0xfd8b962243287e6c92506cb0a869d2adfce100a9` | ⚠️ Unaudited |
| DnFartDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1549fe10c3dd76e0f1a7da054e25d12b1d4edcb3`; hyperliquid `0xf60c25e470c20b6410f2ba366c5ac9f844923dc6` | ⚠️ Unaudited |
| DnFartDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5af51418eb6b47b6398ad0240d1869cb3bdcfbad`; hyperliquid `0x979a534e482ec6578bef7a05df3b3b25f11f956d` | ⚠️ Unaudited |
| DnFartRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x448e290f8090fe6bed36cb07340d43440ec6ebd3`; hyperliquid `0xa61db29f618fbdd25d6490a943b5e4cc11d620a6` | ⚠️ Unaudited |
| dnHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242260 | 2 deployments: hyperliquid `0x949a7250bb55eb79bc6bcc97fcd1c473db3e6f29`; hyperliquid `0xe4c53a0fbc1d87006e41848c126afadd9e9c1891` | ⚠️ Unaudited |
| DNHypeAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 4 deployments: hyperliquid `0x1ca0ad4f112d2484c2b87d64c6c24a1d984fd41c`; hyperliquid `0x1e73ed59ff6497e3532fe640bda78b5011f92b23`; hyperliquid `0x21f5476b70adfc1ac301f2a3af1ef0c446ecad48`; hyperliquid `0xc6c06bf8b80b1cfae4fd94b11de1fd2409cdcd2f` | ⚠️ Unaudited |
| DnHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd22f530414ec90cce84ed2150659dc43c87b8c74`; hyperliquid `0xeb3459316211ab3e2bfee836b989f50fe08aa469` | ⚠️ Unaudited |
| DnHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4e250d83c4d5a3c5e78875ae0c2876e2563a11a5`; hyperliquid `0x6242fb5108bcce1fe3f7a0a6e9461b7663c2bf47` | ⚠️ Unaudited |
| DnHypeDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x712eb0d313e99c8f6f33f2be4d7b6ce0091a3b38` | ⚠️ Unaudited |
| DnHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa4a6b89354e278666fb908ccdb16276ae151ff00`; hyperliquid `0xb159d490513ea37a82f798b728c3014e8c5477d2` | ⚠️ Unaudited |
| DnHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7e54526ccbc0e16c1d02cacd5227c01a1bdb98fd`; hyperliquid `0xbe61c1a27689c11b63378e84c9bb70a2cd616fff` | ⚠️ Unaudited |
| dnPUMP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242258 | 2 deployments: hyperliquid `0x8858a307a85982c2b3cb2ace1720237f2f09c39b`; hyperliquid `0xce3f7652c12f03ca5482318ac142045741f1ceee` | ⚠️ Unaudited |
| DNPumpAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x0c83fab6b328137a7c37959c3052ca37a4a0d5fc`; hyperliquid `0x64b5871207ea8093f6cb7bda676a577ce6ec4f90`; hyperliquid `0xbbf26f3174fea191836a15e07ca15fa25156bac6` | ⚠️ Unaudited |
| DnPumpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x707e99655f24747ceceb298b3aaf7fa721ec77fc`; hyperliquid `0x86ea5565f9e734232bedbff4da625d448c48540b` | ⚠️ Unaudited |
| DnPumpDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa26e1554741487e0c9ebe6f41004a83df7d6b2de`; hyperliquid `0xa7f4553addce698cb3430a935404c42020cafb02` | ⚠️ Unaudited |
| DnPumpDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x22cd29f97c8031d9c916a954de1f7f26a9980d96`; hyperliquid `0xaf8ffedf0e57ee9f6518340b9eb913ffa7dbc66b` | ⚠️ Unaudited |
| DnPumpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8c3326546202a034578fa4940b4fc24aaae88513`; hyperliquid `0x9c915c94066ff921264071acb7d59db6e0cbf0d7` | ⚠️ Unaudited |
| dnTEST | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x65f08f8a8aab1334ad3852b231c812625bd94a73`; hyperliquid `0x80cae1bb1b90980148c5bc9c5701b69fafe7d6b2` | ⚠️ Unaudited |
| DnTestCustomAggregatorFeedGrowth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0c459a098eb325fd7ea602cd7664ee43f1d4bd08`; hyperliquid `0xc4d238629ea43090e05528834b689e475b9d867d` | ⚠️ Unaudited |
| DnTestDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1baf98537e0c9cc2706d9ac13550df71ebe5393d`; hyperliquid `0xa7a8f3414e02aecb50e206af31001cc4990b4d0a` | ⚠️ Unaudited |
| DnTestDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xd08f3e1fc2132d9b5a0d1b5115800b0e91fdd394`; hyperliquid `0xed51feb552d596f3014b127d21ecce5a7d8e8b19` | ⚠️ Unaudited |
| DnTestRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x35d44b87d6c786e9434da337eb59d373e8b84941`; hyperliquid `0xd5a3959fdd79cc491e945e2511158a81b45e0a68` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x05d70282df356bbd873f6698b590426d37f10723`; hyperliquid `0x97894a8a492b6ca4a6abf2f38b58cdfd580fe5c4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x079b37f64457f8332f632677db569515c43d0afc`; hyperliquid `0x94d9f7b316e7549a333ca9e26f04796b4874e3b7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0b87b0f533bbd37a8283bde2658d4549cd5370a9`; hyperliquid `0xf9bd6fc56040536a5bf110b3697279492af64d33` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2cad81572335b024e47b2516c7d4049a4e94bffa`; hyperliquid `0xa075bcd0b9ef79882b8724067c62ff8555ed21d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x350bb1c04d8035ecabf58f92f4190b8aab7f7366`; hyperliquid `0xf13f68200bf587ea87369ad579de2f77bcc538d2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4090f3dbd84416a61782958732c92395b924acd7`; hyperliquid `0x852d950877d24b5fa04f9c2054eb5c16145eb315` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x42ec6c4bf166a91598ed91782876bf067d2a9d46`; hyperliquid `0x5b7cd0197b6089a2cfadb8b132170d15f003d789` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4e96a97845f6b95d3734be783d3811377cf0110b`; hyperliquid `0x724211f922a21a0456527af30eecd8315f49369f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5bd2bfdf418ab795928514a50c0ff032ee50a57c`; hyperliquid `0x6bc6b89feb016e7a161799562868352365841fe8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x60d49b1a4b4997e24a8728f7f54c4fd6700f3a5e`; hyperliquid `0xd032d5a661d4b91c73ebc2febec4d9e4dda7ca5e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x613cabc2c920e60683374564b642690737073ec2`; hyperliquid `0xecff2fb8ae896ff05a7a4435e2596281040f9cf2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x976270cb52f1e75f999776a4670b1991a59c64a4`; hyperliquid `0xb356b4af6053fcf117610a35c36d3faed25e6239` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa487ab98304680ab7de1c87b95a9e4a4a96297f1`; hyperliquid `0xdb6a5a34bbd93da4329ada869cf7034be33267fe` | ⚠️ Unaudited |
| ExchangeRateUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 13 deployments: hyperliquid `0x22a66ffc6dd778aeaf90cc2e8522593aabcbd78a`; hyperliquid `0x2abeea911f7e75256e8b4bd263f349b91ada8e38`; hyperliquid `0x4249c450a87ec129a6fdca2097a0997cb61a3c87`; hyperliquid `0x74717aacb9ba56577b04186e040bc22026c3a28b`; hyperliquid `0x77ce3e36ee2b58547f17c93f8ebbfdad13bc195b`; hyperliquid `0x88cf45f3f43b49c895715490d6bf318c49fa3049`; hyperliquid `0x891bab34d9bed2843d18cc328cd9a2d61cf9030b`; hyperliquid `0x9fa8d2ba2cfcc0894db964e3f00d2efcde7fd388`; hyperliquid `0xd08a65fb49efba8c4132f383e7949cbb79eaf45a`; hyperliquid `0xdaaede5bc8940a215b24b050ba1f75cc64cb8c90`; hyperliquid `0xe247614720afedfa15364ad4319440aa8b65171d`; hyperliquid `0xf13d61603090f1468d17c8e695afe5c9970a1a1f`; hyperliquid `0xf2bc559d5ca65c88fa1bae0ffb35d121c16cae23` | ⚠️ Unaudited |
| hbUSDC | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242249 | 2 deployments: hyperliquid `0x057ced81348d57aad579a672d521d7b4396e8a61`; hyperliquid `0x76a20173c5792c04a9cc6754d7e888ac84c54871` | ⚠️ Unaudited |
| HBUsdcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x64425d48183122e5c072178924cbcf5233c45d48`; hyperliquid `0xc82cad78983436bddfcaf0f21316207d87b87462` | ⚠️ Unaudited |
| HBUsdcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb013a5956f8b838b7e668dfbdf1efa978ccc7a23`; hyperliquid `0xf8f519f243aafe49eb0bb9490ae869d488d4241d` | ⚠️ Unaudited |
| HBUsdcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02eb9f2c66bb82239ea5fa44fbd43afa1e6bebc3`; hyperliquid `0xd202cf41a607627cd1a31f650d13599b588ebd1c` | ⚠️ Unaudited |
| HBUsdcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x73068e63387d4a0ce5e39012ca957a130b3c82d7` | ⚠️ Unaudited |
| HBUsdcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3bf41767bc03cfd7850f0ba92d104c7ebc75a28c`; hyperliquid `0xbb820d0c85c0b5d1b0dc8c6d3541fbb1ab4c7a60` | ⚠️ Unaudited |
| hbUSDT | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242250 | 2 deployments: hyperliquid `0x5e105266db42f78fa814322bce7f388b4c2e61eb`; hyperliquid `0x77b13307d6a36511ee7d887ae7ae9eb28e78e690` | ⚠️ Unaudited |
| HBUsdtCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xac3d811f5ff30aa3ab4b26760d0560faf379536a`; hyperliquid `0xfcf9428b38b5147cb9007bce426122136080257a` | ⚠️ Unaudited |
| HBUsdtDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2812076947e07ff85734afea2c438ba6dceb2083`; hyperliquid `0xec7fa7fa55a8acf33fe899601c24599113e88e7d` | ⚠️ Unaudited |
| HBUsdtDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x06a76e722ef59fe830db23feea1c475bfe2eb60d` | ⚠️ Unaudited |
| HBUsdtDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbdae44f48efccbd2b28e36a385b8c50b36d3035c`; hyperliquid `0xbe8a4f1a312b94a712f8e5367b02ae6e378e6f19` | ⚠️ Unaudited |
| HBUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x371d046579d41dd5e0411d1db7e099d7f4e2bc1f`; hyperliquid `0xc00c5e42a9b3ac6e6879462ab581366d8a501662` | ⚠️ Unaudited |
| HBUsdtRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x873addf809701d5f31946f47ef2a62a621b13d59`; hyperliquid `0xc898a5cbdb81f260bd5306d9f9b9a893d0fdf042` | ⚠️ Unaudited |
| hbXAUt | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242252 | 2 deployments: hyperliquid `0x6eb6724d8d3d4ff9e24d872e8c38403169dc05f8`; hyperliquid `0x8211c4c0015ffc4edd4799aeb2478552ceac1523` | ⚠️ Unaudited |
| HBXautCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x8285a68a3a181fb974af5a3437cdf843a7dd1f8b`; hyperliquid `0xf3db9f59f9c90495d1c9556fc5737a679720921d`; hyperliquid `0xf58960e3d788f6d32bb00c788c9c6804b58d858d` | ⚠️ Unaudited |
| HBXautDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x5b300312223c63846ebf45b94648b8cc911c7279`; hyperliquid `0xccc8b199f3b9a60fb845412a5e1a2de57f88bb8f`; hyperliquid `0xdb981793d483b612af23e29f0282ad23fe6c3845` | ⚠️ Unaudited |
| HBXautDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2be06458b04a6a18bae3b8e98299bc83892932e0`; hyperliquid `0x79a93a5d9190193e1719c1481f4f609cb2fceccb` | ⚠️ Unaudited |
| HBXautDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x448897fec88d145e22ca8594f1a928c72e1de8a6` | ⚠️ Unaudited |
| HBXautDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x48fb106ef0c0c1a19eddc9c5d27a945e66da1c4e`; hyperliquid `0xef2aa0d67e517e6303fa7eba2612183252dc354b` | ⚠️ Unaudited |
| HBXautRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x67581417d7afe1e02d1da4abfd4fa6a2774e625f`; hyperliquid `0xd26bb9b45140d17ef14fbd4fca8cf0d610ac50e7` | ⚠️ Unaudited |
| HBXautRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7ce2d1f48dc1d9932c0543c5f7e8854f79445687`; hyperliquid `0x9feb6a02da022e3685cc3560c49c4b81fa98960a` | ⚠️ Unaudited |
| HypeWrapHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd201a8a958292db8efe6930a0bce0d188ff48f3f` | ⚠️ Unaudited |
| kitBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0bd8cf0f6926d551b8e7eacbb00e5ca5f6c0e82c`; hyperliquid `0x61896940f60a536f1d3dae9580524542d58d3683` | ⚠️ Unaudited |
| KitBtcCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6707d9630531debca91a353838f6e30bf1a60294`; hyperliquid `0xd2f570cb45e99f4d2279d05d15d24025d18f76c7` | ⚠️ Unaudited |
| KitBtcDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xc4aec7d3d0894b0a693a1f3601cc96bf4765c432`; hyperliquid `0xd579356c15975ea2cdd3a6e30bac96e87efd8ae8` | ⚠️ Unaudited |
| KitBtcDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x12d55a84081ba2be659045b0381ef1d9b8a26691`; hyperliquid `0x210376434c1591f05399e3f1ef3f98c6e63d370e` | ⚠️ Unaudited |
| KitBtcRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1605f7c0ff432ea4cf2b36a2e35076187a1803b0`; hyperliquid `0xbd1b1ed8dda263e8ed7ccbfa8bc101f2aef06c81` | ⚠️ Unaudited |
| kitHYPE | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x47cfc17962f302afbdd190bff22529ced437745d`; hyperliquid `0xaf801b65239b4de90f73e26f9bd1260943a5e248` | ⚠️ Unaudited |
| KitHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x43e27934819eb31d726d8a5c92c535e13239c6a8`; hyperliquid `0x9f489624b7128cf2d327e72b1d1671364234752a` | ⚠️ Unaudited |
| KitHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8d28bef01696e8bc533f219be482348cf9894513`; hyperliquid `0xb64eb43808de5ccaabf254356f9079c38b802448` | ⚠️ Unaudited |
| KitHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2ae9f6e88cf1ab230e3d144bdd62186e49b8ad9b`; hyperliquid `0x89ab3b922e9aec6ae5d2220debf343d137a098a0` | ⚠️ Unaudited |
| KitHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1cdd9b3163c7549a89f436d1eb5c3476238f271e`; hyperliquid `0x73c4f573e560518598914e423a27f1b42d33252b` | ⚠️ Unaudited |
| kitUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x797d81727f9477f84f29d6131690e99cc3e54edb`; hyperliquid `0xd385ba55a22ac732cf435c5b5c3a1dfe5939ba4d` | ⚠️ Unaudited |
| KitUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbcfab33b32f1aea737ed9cffea809bd42d35d7ac`; hyperliquid `0xebfc1f9b19e2a188ae0fcfa4b08fc6cd71b680ff` | ⚠️ Unaudited |
| KitUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2da71ae5f0dd37ec57027de94c87065c87aeb7e2`; hyperliquid `0x46f5e797a04b1b7f2098442b0493b5bea6ac70fe` | ⚠️ Unaudited |
| KitUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6bd6604df78c9b219980b85badae39b080a749c1`; hyperliquid `0xfaa6625afd58f69e09eedd23ec192cd98c82c20e` | ⚠️ Unaudited |
| KitUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x86b748a154e10cfc0acce16c7b5a30e3a67c6c38`; hyperliquid `0xd197a60de47b3d0187d48ddd1653a009d5e4e5f8` | ⚠️ Unaudited |
| liquidHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242247 | 2 deployments: hyperliquid `0x441794d6a8f9a3739f5d4e98a728937b33489d29`; hyperliquid `0x6d684992f8d105b33f9b1bbaa77bdd0e0f71f585` | ⚠️ Unaudited |
| LiquidHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1ceab703956e24b18a0af6b272e0bf3f499aca0f`; hyperliquid `0x20a9bb2e08b9cb3c38cb3838311f7e0bd129bff8` | ⚠️ Unaudited |
| LiquidHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x156286ed5ce3ac31f20ef501ad6a3de915fdb01e`; hyperliquid `0x70519793f50c95f435972637e1190f41cfc907bd` | ⚠️ Unaudited |
| LiquidHypeDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0de56f6dd79d85fd71efaf12d1a1d39ee2c0f2f2` | ⚠️ Unaudited |
| LiquidHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x67efa4990a0ba7a10cb8ea94ed8c32bb1787e37d`; hyperliquid `0xf538675d292d8b372712f44eaf306cc66cf6d8dc` | ⚠️ Unaudited |
| LiquidHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x558806a80b42cab4ed75c74bfb178edc9087aa32`; hyperliquid `0x679b4387c0ec1ce1d2136355ddf488bb1c0c806c` | ⚠️ Unaudited |
| LiquidHypeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6b1331d4e885ae3143ee23726573acadabe2e137`; hyperliquid `0xa69ca6052a4ebf72ce3497a7f7c5599382825cd2` | ⚠️ Unaudited |
| lstHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242251 | 2 deployments: hyperliquid `0x7b5bd5a38677a5355a54adc9b3113c3023709d03`; hyperliquid `0x81e064d0eb539de7c3170edf38c1a42cbd752a76` | ⚠️ Unaudited |
| LstHypeCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2b959a9deb8e62faaea1b226f3bbcbcc0af31560`; hyperliquid `0x767807ae6789b1ea9fe9d3c57ef360392566e013` | ⚠️ Unaudited |
| LstHypeDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d876e544f12bd3347b9e904f0fb2d83bed59a27`; hyperliquid `0xfcf86fa427dd9651a029cadca79a40f94e0b29ba` | ⚠️ Unaudited |
| LstHypeDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2b158d44eebb03a025f75b79f1d8b3004ac97737`; hyperliquid `0x60597ab2a1fa6814a46e5c9cf23f54522f0d865e` | ⚠️ Unaudited |
| LstHypeDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x58d5c2068a61b8ad234f7280f0f94533418dbd3b` | ⚠️ Unaudited |
| LstHypeRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1eff01e0784ae8d06a17af29a2300d2a9cda5440`; hyperliquid `0x3678ecc070f7952d0b307f27e80d7eb051460b8d` | ⚠️ Unaudited |
| LstHypeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x75b6f098a6fd7d50e21e903c7f246f04d2bcfc16` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x08c00f8279dff5b0cb5a04d349e7d79708ceadf3`; hyperliquid `0x264a06fd7a7c9e0bfe75163b475e2a3cc1856578`; hyperliquid `0x4851d4891321035729713d43be1f4bb883dffd34` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-242224 | `0x1897a8997241c1cd4bd0698647e4eb7213535c24` | ⚠️ Unaudited |
| MidasAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 3 deployments: hyperliquid `0x594ff09d8438f1fde62712d000250dd361038420`; hyperliquid `0x5fd65c66fb06060b6bf59c619dc330b1a29f7c59`; hyperliquid `0xcc94f68819eecd7a2252cb3696f13baa6205e7a8` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 4 deployments: hyperliquid `0x0aeeea81c9da681b14ba492b775966b9185a5e37`; hyperliquid `0x5d6ffd092776ac02bbbcbf8eae8e62a75adb3e10`; hyperliquid `0xd7d4b67052feac3c9d1782cb0869ef4f29a31921`; hyperliquid `0xed6221bbef629f74d63dcc5abde37c0396f11654` | ⚠️ Unaudited |
| MidasLzVaultComposerSync | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x15941745fce7acd9943821ff0ae39847495e52a5`; hyperliquid `0x4becf840937d114e9c7119d7f24621f1b8b0a7a7` | ⚠️ Unaudited |
| MidasTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x76613bddb3d89393b4bd70d6894b1c85f6c37d5f` | ⚠️ Unaudited |
| MidasVaultComposerSync | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0b6e5dd5bede87af12b37b8c1e49129afd2744cd`; hyperliquid `0x718c52340eaa4a945b9f71bc349aeeb788312457` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4f5fa9d9820a6ca224aebe1b1c39b3af904ab61f` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68e37de8d93d3496ae143f2e900490f6280c57cd` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeb476f124fad625178759d13557a72394a6f9af5` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5730ac0720227bae2f62133305c543ee2204ad74` | ⚠️ Unaudited |
| MultiRolesAuthority | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 40 deployments: hyperliquid `0x060690ec182a5a61f5cdfa0aefae058e04342312`; hyperliquid `0x164b7e7f4a0516c2cfc36d48bd58eca00bdccab0`; hyperliquid `0x16cc586ad036c51f585d9bc4bf028f047652bff9`; hyperliquid `0x1c9b0b69c932ffb2af0f27c1cdd41c10717d16b1`; hyperliquid `0x20790f91b574f434f777222dcbb857ae63a0d156`; hyperliquid `0x2193fafeac45d1c1f6cc8bb911e6c9f52ba903c9`; hyperliquid `0x22630f03ac25f8957fb64d9f2c8824b33ff8630e`; hyperliquid `0x2cb0ec6e6f1144a5f0a807491f61bca421c0fcdf`; hyperliquid `0x2e685e1b77ccd9bb52ccc273cf3d5819659e9e09`; hyperliquid `0x304505feac4794b310d9bf631ebab15c06d56b10`; hyperliquid `0x342fb4349586af03e390cfcb067d379a338c6fc1`; hyperliquid `0x36fad73acac0a55755b2a48dbfabcf0e2bb28a5f`; hyperliquid `0x40f5b57242c2e801d9d1cf247e67aca7946cfc45`; hyperliquid `0x421d2d13225eddfd7923527fe2a1aeb932f87c60`; hyperliquid `0x49943e0367072cdd02f791342d9059aaf60d096c`; hyperliquid `0x4fe4ba31555a4b3011a145f5da33a25cf42ed10e`; hyperliquid `0x549bafeafea2c3ea5e4f2f8f37eaf644850713d9`; hyperliquid `0x54fff0bdcfaf55f3e0738e1b240e285354c35734`; hyperliquid `0x5a4015e421b2dccd448e0395532740493d1dadf1`; hyperliquid `0x6147757d84782688e24b7ee93089944e91773160`; hyperliquid `0x62181084b43d79042be0efddccadfba156c0d6ba`; hyperliquid `0x6278d7d6e57db17d002bc9b13e3284f58d05099a`; hyperliquid `0x763ab4504a61dd36cfcb933c73450395a1bfa215`; hyperliquid `0x786108769ff049c70be52bc36bf1bb559642d523`; hyperliquid `0x79285f2a44db96e477ec8ebbe26a12edb47ae5b6`; hyperliquid `0x7b12a82266d57664f335cdc03905361eebff9fa2`; hyperliquid `0x82999519c6f7012037375e4930f59474cd27c4eb`; hyperliquid `0x85717d603e05195441cc05ff7c28d44c24f8bad0`; hyperliquid `0x9cd4c8b9dc029f6ad7f82fe3d21496b9ce665411`; hyperliquid `0xa105c5d37c0520979d7fb869ccc18498119fef5e`; hyperliquid `0xa2321f01b27775db78fff1bab67376df01558280`; hyperliquid `0xa43bfae04327bf20671bac47ff4880cbaeb83597`; hyperliquid `0xa9d525380e279af6d5c9f74772bef511acba3275`; hyperliquid `0xb68a5b323bc4502f85174e2c40ab811bb33301b9`; hyperliquid `0xb7fc0b7256b0beaafcb7851fe53f2b4c715cb46f`; hyperliquid `0xd9b07f0f6d99d288815f93f90575443438b91a2a`; hyperliquid `0xe062f499d60f91816ec36fcd138d235373a265dc`; hyperliquid `0xf05dd2f3f0f7236c0da7a0ef756f290ad1fe00d2`; hyperliquid `0xf420dfda4b2afc377885f2cd83253106b57a9b47`; hyperliquid `0xf81795d1caec0e1b51fed2b80f73380f22c251cf` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3e3a26f7b66e5b45f4c31d8718faf01dfa8cb005` | ⚠️ Unaudited |
| obeatUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4295e58a4a784f1cc05d505e868d531061085391`; hyperliquid `0x94bf32bd7de56e80778530919292beff503ec9e6` | ⚠️ Unaudited |
| ObeatUsdCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3c16823833cdda2dde93dae77299223572b391ca`; hyperliquid `0x8407e1c601ee1feedfc61a607279e7be68c515c3` | ⚠️ Unaudited |
| ObeatUsdDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3cdf50753d78a5fb386105f7799110783f81f28e`; hyperliquid `0x44219e1286994b6e881bca23541fdf49b34062a3` | ⚠️ Unaudited |
| ObeatUsdDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x302345e06fc76b04ede5c2a5b5b626910d360e5f`; hyperliquid `0x65d0a14dd083c38244542bac0e0cd16d51c37458` | ⚠️ Unaudited |
| ObeatUsdLzElevatedMinterBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb6b2c8353db56c9184a30afceb78d2300d54a64a`; hyperliquid `0xe1cf4c1b6aa1a8f133c14aef05d772c1b7602f4b` | ⚠️ Unaudited |
| ObeatUsdRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x36094abe5e589691b8f60505823a72f5fdedc953`; hyperliquid `0xf318c177726d69ceb8dbe4b5f35bd26803e89b77` | ⚠️ Unaudited |
| OracleAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5e138194a3bf0ca723b7364d87c30b641bf52b73`; hyperliquid `0xb2ed7f2016f9f2f611e24d43f2cba5cab863c6ee` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x0cd51d93355f80e4185fb181b0ed5358e213a8be` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x2b91c4e657571ab8f9ad379a4e333a4daf42237c` | ⚠️ Unaudited |
| PendleBeHYPESY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xd887cd43e3f79d9d794858ba1df6742b64a22528` | ⚠️ Unaudited |
| PendleHyperbeatMidasNoRedeemSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xc027af66fb6167cc8b7c88fe52142b8d5e29c8e5` | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x618b2c320af0df4aed484e59c876b7841f631c0d` | ⚠️ Unaudited |
| PendleHyperbeatVaultSY | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x9f05549998d55595fc2d457367ea3ecec29ea3f3` | ⚠️ Unaudited |
| PreLiquidationFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-242235 | `0x6ff33615e792e35ed1026ea7caccf42d9bf83476` | ⚠️ Unaudited |
| Pricer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 30 deployments: hyperliquid `0x059d7a4d777aa7bd87edbea070c5dc5f88cf6ce6`; hyperliquid `0x0f1824daff4a35748d70cfcbea92fe21284b4738`; hyperliquid `0x1de59646fe3fe53ff2be86911fa332c7bc77817b`; hyperliquid `0x3636a26ec1d512c5ecff42f7adaa5ce7964c6579`; hyperliquid `0x3b55e3ad996d338b953c724a6afbb45b57698030`; hyperliquid `0x42db8874c83fdf3d53a11cbfd3b242ce3d5f5322`; hyperliquid `0x5100aee934f0ee05fa78b03114a068da18afed8d`; hyperliquid `0x52f1318e3b45c0411699afcba45f430a140f4407`; hyperliquid `0x56a560b5a2227d30fc37f49b2449906f589930ea`; hyperliquid `0x58f6138db540d0f5bfb24fd9b17db54694a92ea6`; hyperliquid `0x5ed0ec0b0643dab621dc814c8d058e161b9b884b`; hyperliquid `0x6607f77d9b0e12b1c0a14ff9c774e03e47c30d57`; hyperliquid `0x725f73d1f1cc3664e949a0772ca8fb8a0029f756`; hyperliquid `0x7881b0280a25bbbb59bf00fea5d4aefbec42c489`; hyperliquid `0x8cf469b32c8c140d4db2fe30c661bee11f2933d7`; hyperliquid `0x9081c2911a5a0be7a9d1bed8e91e1c7d9d89743b`; hyperliquid `0x90a0a650f0c403a92ae22f162b3e61818d6f8f11`; hyperliquid `0x988e3e2c26840f2cae2c5fb55faeb5e59ce1a597`; hyperliquid `0xa532a4569eb9158d0d9493329d811469f1d338a8`; hyperliquid `0xaa3fd6265ffa99fbf69f36a3b171b0994c9b101a`; hyperliquid `0xb46eb74f828506a4c04877f09030ad696f467785`; hyperliquid `0xbeecd56141947891c7cfc7cabc5ce67c33fec8c0`; hyperliquid `0xc23cdfe493bb5e69bedfcf6e710f508710ac668b`; hyperliquid `0xc6090a7de91804d2221159b1204389ffd5791db2`; hyperliquid `0xcb45612ce6b0d874898fe22031a7726227c7b078`; hyperliquid `0xd2e5f050e73a8afcc919e440dac2e68b9a3109dd`; hyperliquid `0xd52d1ed34b4de239a0cee7514abbe13b4b53f844`; hyperliquid `0xe0995a641d454c149e6c808baa37cb2b38763316`; hyperliquid `0xf214406c733f2d996b90b73f658d2f7929fb8236`; hyperliquid `0xf29f39fa0173a85a1f28b296c6a65ac1d273042c` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-242242 | `0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d` | ⚠️ Unaudited |
| RelendUSDCOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9ab96a4668456896d45c301bc3a15cee76aa7b8d` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x543a23fb1eed644702af423102952c004ca74601` | ⚠️ Unaudited |
| TokenizedAccount | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-242257 | `0x96c6cbb6251ee1c257b2162ca0f39aa5fa44b1fb` | ⚠️ Unaudited |
| TokenizedAccount | core_logic | project_anchor | own_supporting | 1 | hyperliquid | unit-242253 | `0xc061d38903b99ac12713b550c2cb44b221674f94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02f6ca613773e04c115ff8625f44fd26a6302053`; hyperliquid `0x94a44ebbe2acee47f993e2eb9fe6b6a06088c43a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x07b5287efc7f7390b141ba99f7e70b1b48535de9`; hyperliquid `0x2b3821d4051915b427879b2b5695d3c98f79c49a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x13d7308049ee35a7142a6c70e400933d94ef0c0f`; hyperliquid `0x945a22cdb752c689c8c342f3d50edfecd4654256` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x15ab8db6576d66e6ef68881256a2d6aa4bb2adba`; hyperliquid `0x7ceda4bbf383413da240feb1ca4fa36432d09697` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1d31d0513d457d59f8bfabe9f3425c9e4d28fd13`; hyperliquid `0x81e00e5308d582abe5f366b4d910c26bc3645f87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2334a23c94c0992508d9272d5d398046ccbeeaf1`; hyperliquid `0x6de41c283a8dfbcb71c61a04e95243458f4cc359` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2ac6943c628fd49af6119ed5a9a8bb6211bbbe91`; hyperliquid `0xdc8d8d9cb03a8cd1a25fe1fb6121901574a8b8c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2d5a1823aeaa70319d03bc16f1ac71547a0b29bc`; hyperliquid `0xa9ffe62e785324cb39cb5e2b3ef713674391d31f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x466cbb98237874a71e3da5de742d5b87f03c13b0`; hyperliquid `0x816c3ff68c2878df7ccdb4b64eef5cb574cc4552` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5101e880380317a6cf4e6ed690c6365bd68085f6`; hyperliquid `0xa1a3da3eee8b3af61cbc0731a560d64e153f2cd2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6233e7f87a56d40bf52e0c60bc312861028ed26c`; hyperliquid `0x908125a9ff17d76fefafc1587a83603bd7e6e37e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x63da1d38b8d049686850248e7118f770a61c3ad8`; hyperliquid `0xa21f465bb535af6825b45ecabf94b718b8f2ff45` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8692247bdce19fe56fca8848c1c9aff268366dc4`; hyperliquid `0xde660251cadb61686b769b9ff7ff6a9126f91a2c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8857199550e0b74ada77b95d414e2b74b0ad9234`; hyperliquid `0xcb3c66465c39a5b9f9f2032b871258c6771a65e2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x88940a15062166a050eceb60ec84488401b6045d`; hyperliquid `0xb162908c3bec67bb78dcbb092ad79b165b31f6ef` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa97af0bd934f728f74f48776d235113ca89a457b`; hyperliquid `0xd491b3c69d10f77f65998a6a69b47873c0bdbcf5` | ⚠️ Unaudited |
| USDGWithdrawalHypeSponsor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x67de622bc5ba753142f2599b66edb88b40248124` | ⚠️ Unaudited |
| VaultFactoryLite | registry | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x1fc8c8173ba807423f9a20d21b4d798a827b553f`; hyperliquid `0x4f2ba9067fde9999d577ef6df3e414e10ca1f038`; hyperliquid `0xe5aba3ad9a8c852700a1971c3ac362df7da948d9` | ⚠️ Unaudited |
| VaultsSolverMidas | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5e7eaadb625d0f2b4d7761621d70875baf303f05`; hyperliquid `0x60d6d546e8e8c362b04140b5784fc588f597eb25` | ⚠️ Unaudited |
| VaultToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 15 deployments: hyperliquid `0x0d0f8274e7a92cfc0fd2c358ff80440530a29b5a`; hyperliquid `0x130ee3c1d0b161cbabff8f4ea955097ec69bbb09`; hyperliquid `0x265b3c5c9aec58e26ce52fa0db44c9a392ae0302`; hyperliquid `0x4455153a88bbec66e1eff00b6caa3b76ddb5b6f0`; hyperliquid `0x52bc95dc1be68e6cde77c68b2d11ecf1ae3355b8`; hyperliquid `0x842537e39d618cb485d163793906d94bebff4b5a`; hyperliquid `0x9ddf96a0b2c7ab10f49b48ac0bc2c1221510d9d2`; hyperliquid `0xa4cf001c23b12fc88257ea1fe459d6e47c5fd6c8`; hyperliquid `0xb78dccb336ca40c41a0889ba0b3ad9e205d435c3`; hyperliquid `0xb7956c9a51733c01f77597f1495d723a1ff365bb`; hyperliquid `0xc484486cce352040270e2d0f5175360e1b3327e6`; hyperliquid `0xcd867efcdd92c18b0e18e6331940b3cb0e94ada0`; hyperliquid `0xdf1fcd67242dfde21ebcb9e1f75cbf9f699a1057`; hyperliquid `0xecde332b051ed53e12dadc3d97536b60c2b7e744`; hyperliquid `0xfb59439a0dd290a1b4ae99fd3345d5783b1aaad7` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 29 deployments: hyperliquid `0x0d30b29042e2d6802689be6ade022a0c4d4b9e0e`; hyperliquid `0x0d7f3d551edb80b950db723c19792fa4547aad82`; hyperliquid `0x0dfe20ed46668288230001d17af70f0b9bbcb423`; hyperliquid `0x10024239474120ce410dd7ce203793c81d438be3`; hyperliquid `0x1cc393c1c97033a58fcdd8c0580035eb4d8e5869`; hyperliquid `0x1d749eac4bcbdac4dd7f9c5076cda9b1cd4fc4bf`; hyperliquid `0x202b343d273b87bf2f38ef2dc8569baa66a2511c`; hyperliquid `0x240e0b2cb615ded2fe90fde265b15988dc45b1c6`; hyperliquid `0x261a2b2060d30086e6bef50a093c6f479f49f906`; hyperliquid `0x36899580dec1c0ad1b5ffa9316ebe12e952134d6`; hyperliquid `0x43cacceb4ce9082a6c36b0fec60df487b08f8e8c`; hyperliquid `0x5236b7de041244dd93d3bafa0776b9e2826e5bd6`; hyperliquid `0x52784bdee58b39cfaecb8f5522ed1b9613ba7c4a`; hyperliquid `0x667859bb7df3494d4349ae0d55fa79b157bec1b7`; hyperliquid `0x66d9bec8364fccb49ef20128b00fb14cd57449f0`; hyperliquid `0x6b68c4459e0f76244e4f0a87e3202d31869c1089`; hyperliquid `0x70bc294f3a2937af8fcc8448817352c168109f39`; hyperliquid `0x73905d5a8b6010552ebba8f34c00e7fdb83d3949`; hyperliquid `0x788c7c34489738af7d0246b3e93bdccd1543a143`; hyperliquid `0x8b04cd6561abf2de78112da30ccb919fe8d09d98`; hyperliquid `0x9d90b2f171bb7143fdc2e0a161cdf7cbf8a0e294`; hyperliquid `0xa03e0e3b7e6204c9a8d237c4fbd30793555a84fe`; hyperliquid `0xb62b287d5a80afab99218f1c2cffcbadb4bf085e`; hyperliquid `0xbc63a6057eaead49ea4ec1f07c28659e01058dd1`; hyperliquid `0xbe2f8986f368d531dbe446b6a1696e86998f16bc`; hyperliquid `0xc7becb5346fac6ebd20afb368e1b61cc994b8225`; hyperliquid `0xda768edfbac696fb31502945ce6791ffad157a38`; hyperliquid `0xdac07cf2a26a52f8c2fc89dbc244a83f0236094c`; hyperliquid `0xe73722fda598895030bcb3d445825556f2df7507` | ⚠️ Unaudited |
| wNLP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x27bfb8d29af693865e3926e752b2f56c7a33a2a8`; hyperliquid `0xece723d9381a65c32188c132f642b3a2dbc8c98e` | ⚠️ Unaudited |
| WNlpCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7b593fc72637c454749e4118259eaa14a4389553`; hyperliquid `0x96d6091b3c137e63e3cbdf9c70b529508ac6e175` | ⚠️ Unaudited |
| WNlpDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x9109a754707987db09c6fbd5069b3e1bf0ff6cf9`; hyperliquid `0xb697f13dabc99223e194fdc8daa0ad87a6a46c56` | ⚠️ Unaudited |
| WNlpDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x13dea856eda9ae6d29317ef5644297639837e1b2`; hyperliquid `0xb379c38cf7259ef4b5dd0c638b248bd2bbe4a0e5` | ⚠️ Unaudited |
| WNlpRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x814e39febd0265d39e37ba469d0b40bd9c77eef2`; hyperliquid `0xce66b1218118d5adacd015520d2e208263965b76` | ⚠️ Unaudited |
| wVLP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-242246 | 2 deployments: hyperliquid `0x042e8217be08dac98aaaee834d47ea3a7f77ba34`; hyperliquid `0xd66d69c288d9a6fd735d7be8b2e389970fc4fd42` | ⚠️ Unaudited |
| WVLPDataFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x765fa39c3759408c383c18bb50f70efdcedb26a6`; hyperliquid `0xe2ba9a8323b8de0931d23055fc3abb5072808b67` | ⚠️ Unaudited |
| WVLPDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x542d52f6a20ab42ed22b2e70c00dd700a42bc828` | ⚠️ Unaudited |
| WVLPDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x70dbdaef7de8b2da94ff4342fa202b8717cb725b`; hyperliquid `0xc800f672ee8693bc0138e513038c84fe2d1b8a78` | ⚠️ Unaudited |
| WVLPRedemptionVaultWithSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x462b95575cb2d56de9d1aaaaab452279b058aa06`; hyperliquid `0xb0602ad9c6e4191620a78f6638a5733158aba9d2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267f51d38f31ca3db770f1af8f302eb66ce2c474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26e75e57e93d43525185c560da5094ec88fedd84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4355c0f0ea32694e0112a2db17e74c72a32e64e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6587faa097f72cfc4438297fb2dd307916031b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242233 | `0x6e0b9afaae09a3479cfb7e923e15c05a9b23850d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb125febb0d583ab237d95758751f6c58a805c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x018fad24dda1910e44a61e3e31472542ec0ca12f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x072e75d8444a9601bddf467f5bfcef74243e9a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0d82abf369a93027db465b26dc0dbe17c2c891e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0f7ce5e62d75a0d1a4625ffb7be7c1802f867086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x11400dbfb892614a280decbfb4ce5738b56a9266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1bd1414ba8f682cbbf0468f107ec9450d8565a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x215adbe371a3664640c67d754466ccee102e9349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x21ff5584823485016cd30112140935aec396143b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x28c2b24fb166d52b188c6b1237539f8e2e86831f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2eb2c0d3051646f6bfcd4fdb0e498f08dbaa85b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x316fb3bac7370655180c88af9c4885d5aad881ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3b325a0d47932e15bad39e426440e69f0fed06d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3fec2cf9cc46f0ccfdfbec946bb29aeb0e1a463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x410f322a22e191ae76be6e1b808d45dd23119cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x49e74fc1b3b6fdd0b931449ff23ebdb7a7e3bccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4eeb7e5e01214afd3c688ca70997cfc3dd8ba332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x53734fcdbb2423524b872f5063dca77731bc0d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x60e22170abc8508c296f644c59f7518654f17d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6283384280202e38b123e0b4809dca352e6abf27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ba0bde4fc648ab71ce2c5e0303949b1fdaf9697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6c6f64e4cd9fad9d7440e42d5a532591cd2050d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x73d901844e4a8cfc5a104f707ba2cabf6a25074a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x74cbaffaa4342dbc905a8c22f9967e177d33c825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7b367ec48f033484b50a0fc1161cd68fedc947da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x80b7af9b61e9d39c109343e7ec7102ed59e4e2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x82e2722360a0e803e066fab76d6cc2b7cad96b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8a14c91b5d52191124a96ca9399fdf4647875f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9095e5170a21c5acef4273dbaaf73d77c4049aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x929e58a46aa81d45adbd6676f67afd97e1037bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x93590e5d438735f0821b5cf1ace2a7c8ed10c121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa4a3a7b5ede6ea136eda52736d14669748a9267d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa6658dd7ee4c7042567447900408ac484b652dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa8f36e5581b8eda4211761d55d9bc1056e5c648f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xafcf37a8d63dc6d37c1eda6535ca764617296a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb41bddeda01d7da31cdf0215e8d50c95f9cdb232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbb1721290e2dd4c4fad9f5a6a6a5c270f55252d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbc8c568cf0fdfd5898297b76dc623343ae001fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc59a5e01d028f67683d1a13574f4af792ab02604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc6c005fb1d8b87a583b27ea59a9d0a0817ab2c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcc4c1d5947e2b8322c9a895bfffa447b010becf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd4b70572e207532104b013ae653318d284a50e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd4d0674303a52cc9106ded9b4c83a6145b133bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd71665466379dfc4b3baf4084e8281f5ee500061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdc347f426d80c85b930606d6f3c4eec03069c024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe0ca28342822b289011600d6e253a0499a7cb50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe340347705585aefc3d4fd8b83e77bc36b263565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe3941a3719e47ef6113d431000ec79b78e4a56ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe6b9f27fda36fd9c090937cb30f1bfe9fb2c6ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xea67e79d18bf7a16f1c103932b5f863e8639bbab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xefd734bc6c9ccf40a66d561faea0dc2b9d8a16d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf2530feeaef1fbb4825aa8c3da80ba691c212da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf8db00d63859936cfb2c1cf4896644e495dff888` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 307
- Live contracts: 18
- Unknown liveness contracts: 289
- Source-verified contracts: 272
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate auto own=14, candidate review=162, contamination review=9, source verified unclassified=87, unverified unclassified=35

Showing first 200 of 307 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x267f51d38f31ca3db770f1af8f302eb66ce2c474` | non_address_book | unknown | unknown | unverified | n/a | `0x62cc4762988646fc2f535630a88c771c61fca943` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26e75e57e93d43525185c560da5094ec88fedd84` | non_address_book | unknown | unknown | unverified | n/a | `0x62cc4762988646fc2f535630a88c771c61fca943` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4355c0f0ea32694e0112a2db17e74c72a32e64e2` | non_address_book | unknown | unknown | unverified | n/a | `0x62cc4762988646fc2f535630a88c771c61fca943` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6587faa097f72cfc4438297fb2dd307916031b27` | non_address_book | unknown | unknown | unverified | n/a | `0x62cc4762988646fc2f535630a88c771c61fca943` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb125febb0d583ab237d95758751f6c58a805c06` | non_address_book | unknown | unknown | unverified | n/a | `0x62cc4762988646fc2f535630a88c771c61fca943` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x06e65571600ecaab66280c7dd61d28057f8b5bb1` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x14f9b97eb4e1c634d04a3c8e26015ca8d5b4458b` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x38a0ee3d3e0602a8d6cb86cb033d62bfd1be97df` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x4604cfe1a44ffb85e52fe3787c9a5768b0234a20` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x75eac60b245c2a186521d85203f26feb249bdc30` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x81956faa91751046f33bfb2588c97f427b3feb29` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x86dce613229baff90dae7c0e62df6f752e3ade57` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x9284b6206260bb90293655182a3526746f0276b4` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0x9e98a8a3a7f146e3f01e835b84e80c4c08c05d90` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0xe69da04c13faa6c172ad2bf5da54124dc49d7707` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0xeaf97b84fd560291f59d695c5d72fa6e3a968a8f` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0xf0b283d42634a7c0f6e8023600eb1c07ac228c68` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0xf5ad0727e4b36fd20610cba4cf01b3eb458f130d` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate auto own | DnCoreWriterVault<br>`0xf813120f90571a6a87430211be841d9f675d5120` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | BeatPot<br>`0x710d8a43eea5e2eeb36de09eef733fb7c3ccd314` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | BeatPotV2<br>`0xae93160b93f42e4748a364d19e6869162bd0d319` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x079b37f64457f8332f632677db569515c43d0afc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x0b87b0f533bbd37a8283bde2658d4549cd5370a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x2f76abeb51eae96f5af615696a3b1eca5c95ea89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x4090f3dbd84416a61782958732c92395b924acd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x42ec6c4bf166a91598ed91782876bf067d2a9d46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x53f9715c91642da22ebdf6eaa45e86d5e94c8425` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x5bd2bfdf418ab795928514a50c0ff032ee50a57c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x613cabc2c920e60683374564b642690737073ec2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x724211f922a21a0456527af30eecd8315f49369f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x976270cb52f1e75f999776a4670b1991a59c64a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0x97894a8a492b6ca4a6abf2f38b58cdfd580fe5c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0xa075bcd0b9ef79882b8724067c62ff8555ed21d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0xa487ab98304680ab7de1c87b95a9e4a4a96297f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0xd032d5a661d4b91c73ebc2febec4d9e4dda7ca5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | ERC1967Proxy<br>`0xf13f68200bf587ea87369ad579de2f77bcc538d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x02f6ca613773e04c115ff8625f44fd26a6302053` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x12ddd5fc13380da99d41698ee9c533cdc26c80c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x13d7308049ee35a7142a6c70e400933d94ef0c0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x15ab8db6576d66e6ef68881256a2d6aa4bb2adba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1a877d8b4857aaf7c346bf5ce3ddfa232e831d0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1c43be6cf1ee27e4de5ed9f653940e42a57ac99c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1d31d0513d457d59f8bfabe9f3425c9e4d28fd13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x2ac6943c628fd49af6119ed5a9a8bb6211bbbe91` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x2b3821d4051915b427879b2b5695d3c98f79c49a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x3a10f1161ac13a13a620836b08ee442c61e35ea0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x4074f9720664dae8f4880d860ab1e36060a393ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x46b72b3e2f9d27b4bfe5f2a20483089a2478b839` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x46e3b92808ceacb3fd826b0e4e7fd26ad107ded5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x4d66bd20d5d4046921ac39da19fbaa307879a761` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5101e880380317a6cf4e6ed690c6365bd68085f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5121f215d177422d84750262b33a97d33763cae6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5e7eaadb625d0f2b4d7761621d70875baf303f05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5f6c8cecadf8ed28522abbcb1285e79a2c282932` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x6233e7f87a56d40bf52e0c60bc312861028ed26c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x6de41c283a8dfbcb71c61a04e95243458f4cc359` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x7d340d319b29526d9491c0c2b16b2e5e4f9a4467` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x80e9d02a4127a0f34584cd10975f1e5ddd060cbf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x816c3ff68c2878df7ccdb4b64eef5cb574cc4552` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x8857199550e0b74ada77b95d414e2b74b0ad9234` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x88940a15062166a050eceb60ec84488401b6045d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x925cddddfdf07b9e06eddde8f64aa08b30b8d359` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xa21f465bb535af6825b45ecabf94b718b8f2ff45` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xbd7ee2c6c3d6f1d966e9a1fe73d572090cc1a4a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xc13c7c315e88c8e2507c831e4f9258bd84ebdafc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xc9f2cd946b079c602f1661e1c0bdebbeac0394c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xcdc99155f640fe8bfffa3ca344afc2ecd84c5418` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd0f7a75ee3450740c639619c681d6e3d3b147b0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd33125f5b123071a9fb8a006f13ed1ffd3327892` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd491b3c69d10f77f65998a6a69b47873c0bdbcf5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xde660251cadb61686b769b9ff7ff6a9126f91a2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | source verified unclassified | BeatUSDSolver<br>`0xa328700f803e522d0329283d8b6f061e44893ac0` | non_address_book | unknown | unknown | verified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | source verified unclassified | BeatUSDSolver<br>`0xaea5b5dfd661df7edeb19c6f1ef4101d3bb080a3` | non_address_book | unknown | unknown | verified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | source verified unclassified | BeatUSDSolver<br>`0xe83aaff29dd25752cd18b48c3590a509b1e19614` | non_address_book | unknown | unknown | verified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | source verified unclassified | DnCoreWriter<br>`0x00da21d92f5f0536ff218b6c236252ed0a235c96` | non_address_book | unknown | unknown | verified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | source verified unclassified | DnCoreWriter<br>`0x67d8cc310d07ae9ae935ca45805449153f1f7f56` | non_address_book | unknown | unknown | verified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | source verified unclassified | VaultsSolverMidas<br>`0x60d6d546e8e8c362b04140b5784fc588f597eb25` | non_address_book | unknown | unknown | verified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x05d70282df356bbd873f6698b590426d37f10723` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x07b5287efc7f7390b141ba99f7e70b1b48535de9` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2334a23c94c0992508d9272d5d398046ccbeeaf1` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2cad81572335b024e47b2516c7d4049a4e94bffa` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x350bb1c04d8035ecabf58f92f4190b8aab7f7366` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x466cbb98237874a71e3da5de742d5b87f03c13b0` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4e96a97845f6b95d3734be783d3811377cf0110b` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x5b7cd0197b6089a2cfadb8b132170d15f003d789` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x60d49b1a4b4997e24a8728f7f54c4fd6700f3a5e` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x63da1d38b8d049686850248e7118f770a61c3ad8` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x6bc6b89feb016e7a161799562868352365841fe8` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x7ceda4bbf383413da240feb1ca4fa36432d09697` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x81e00e5308d582abe5f366b4d910c26bc3645f87` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x852d950877d24b5fa04f9c2054eb5c16145eb315` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x8692247bdce19fe56fca8848c1c9aff268366dc4` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x908125a9ff17d76fefafc1587a83603bd7e6e37e` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x945a22cdb752c689c8c342f3d50edfecd4654256` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x94a44ebbe2acee47f993e2eb9fe6b6a06088c43a` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x94d9f7b316e7549a333ca9e26f04796b4874e3b7` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa1a3da3eee8b3af61cbc0731a560d64e153f2cd2` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa97af0bd934f728f74f48776d235113ca89a457b` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb162908c3bec67bb78dcbb092ad79b165b31f6ef` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb356b4af6053fcf117610a35c36d3faed25e6239` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xcb3c66465c39a5b9f9f2032b871258c6771a65e2` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xdb6a5a34bbd93da4329ada869cf7034be33267fe` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xdc8d8d9cb03a8cd1a25fe1fb6121901574a8b8c4` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xecff2fb8ae896ff05a7a4435e2596281040f9cf2` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf9bd6fc56040536a5bf110b3697279492af64d33` | non_address_book | unknown | unknown | unverified | n/a | `0x002bd75c185f335b002b150f8aa4a84d34f9bab2` |
| hyperliquid | candidate review | DataFeed<br>`0x370703bde8c9c506db2355e641db71d4f19f5371` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | DataFeed<br>`0x6231f18bd9d8592a679f4dc5e2f6d8b6b3990e3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x057ced81348d57aad579a672d521d7b4396e8a61` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x0c459a098eb325fd7ea602cd7664ee43f1d4bd08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x0c59a087922f21eb49ffa0fe33e0d17b62ff4c70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x13dea856eda9ae6d29317ef5644297639837e1b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1605f7c0ff432ea4cf2b36a2e35076187a1803b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1cc42c97e7c598a1d1b2e71c84a9c0ad9b3d42e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1cdd9b3163c7549a89f436d1eb5c3476238f271e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1ceab703956e24b18a0af6b272e0bf3f499aca0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x1eff01e0784ae8d06a17af29a2300d2a9cda5440` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x210376434c1591f05399e3f1ef3f98c6e63d370e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x2540bddc5e854419496192688e8257c5ded7ad78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x27bfb8d29af693865e3926e752b2f56c7a33a2a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x2812076947e07ff85734afea2c438ba6dceb2083` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x289584e63a61c69eee170cd553cff8b3ffd56ea7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x2b158d44eebb03a025f75b79f1d8b3004ac97737` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x2b959a9deb8e62faaea1b226f3bbcbcc0af31560` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x2da71ae5f0dd37ec57027de94c87065c87aeb7e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x35d44b87d6c786e9434da337eb59d373e8b84941` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x36094abe5e589691b8f60505823a72f5fdedc953` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x3cdf50753d78a5fb386105f7799110783f81f28e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x43daa49a0df14fb3d0066c5ec91aabd872e1b1ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x43e27934819eb31d726d8a5c92c535e13239c6a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x441794d6a8f9a3739f5d4e98a728937b33489d29` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x448e290f8090fe6bed36cb07340d43440ec6ebd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x462b95575cb2d56de9d1aaaaab452279b058aa06` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x47fddec235aa35625fd2bad34fb373b3a4b6dd74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x48fb106ef0c0c1a19eddc9c5d27a945e66da1c4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x4becf840937d114e9c7119d7f24621f1b8b0a7a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x4e250d83c4d5a3c5e78875ae0c2876e2563a11a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x558806a80b42cab4ed75c74bfb178edc9087aa32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x594ff09d8438f1fde62712d000250dd361038420` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5a55899f324bf45dd2da0b97e145774a4668a9e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5b300312223c63846ebf45b94648b8cc911c7279` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5e105266db42f78fa814322bce7f388b4c2e61eb` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x5fd65c66fb06060b6bf59c619dc330b1a29f7c59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x610cb88e101d9e7e8163ae7788b873d272499df3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x61896940f60a536f1d3dae9580524542d58d3683` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x62e14d2bed7467ede5cbbeb150288453f51358c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x6431a3588e76af88cc6f12926ffcac7209197382` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x65d0a14dd083c38244542bac0e0cd16d51c37458` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x6eb6724d8d3d4ff9e24d872e8c38403169dc05f8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x70519793f50c95f435972637e1190f41cfc907bd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x707e99655f24747ceceb298b3aaf7fa721ec77fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x718c52340eaa4a945b9f71bc349aeeb788312457` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x72a173dcbed0ac69421fef0e44cf763670e463a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x765fa39c3759408c383c18bb50f70efdcedb26a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x79a93a5d9190193e1719c1481f4f609cb2fceccb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x7b593fc72637c454749e4118259eaa14a4389553` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x7d876e544f12bd3347b9e904f0fb2d83bed59a27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x7f1f3e3d57e5549828909ae3381c7bff05a4fe09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x80cae1bb1b90980148c5bc9c5701b69fafe7d6b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x814e39febd0265d39e37ba469d0b40bd9c77eef2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x81e064d0eb539de7c3170edf38c1a42cbd752a76` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x8285a68a3a181fb974af5a3437cdf843a7dd1f8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x8407e1c601ee1feedfc61a607279e7be68c515c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x871550445b0b28dc43e6c9f91399068652ec9b98` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x8858a307a85982c2b3cb2ace1720237f2f09c39b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x89ab3b922e9aec6ae5d2220debf343d137a098a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x8da4c79fb9b4ae16ea3e46a6341a1e24b555b21e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x9109a754707987db09c6fbd5069b3e1bf0ff6cf9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x949a7250bb55eb79bc6bcc97fcd1c473db3e6f29` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x94a9e619779e65e7b79fea6f7ef623118ac1c2f2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x94bf32bd7de56e80778530919292beff503ec9e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x979a534e482ec6578bef7a05df3b3b25f11f956d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x9c915c94066ff921264071acb7d59db6e0cbf0d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0x9feb6a02da022e3685cc3560c49c4b81fa98960a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xa4a6b89354e278666fb908ccdb16276ae151ff00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xa7a8f3414e02aecb50e206af31001cc4990b4d0a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xa7f4553addce698cb3430a935404c42020cafb02` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xa9ffe62e785324cb39cb5e2b3ef713674391d31f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xac3d811f5ff30aa3ab4b26760d0560faf379536a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xaf801b65239b4de90f73e26f9bd1260943a5e248` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xaf8ffedf0e57ee9f6518340b9eb913ffa7dbc66b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xb013a5956f8b838b7e668dfbdf1efa978ccc7a23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xb39c200d3094c05e048a8f13b69a221db56d012a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xb64eb43808de5ccaabf254356f9079c38b802448` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xbb820d0c85c0b5d1b0dc8c6d3541fbb1ab4c7a60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xbe61c1a27689c11b63378e84c9bb70a2cd616fff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xbe8a4f1a312b94a712f8e5367b02ae6e378e6f19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xc00c5e42a9b3ac6e6879462ab581366d8a501662` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xc4aec7d3d0894b0a693a1f3601cc96bf4765c432` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xc800f672ee8693bc0138e513038c84fe2d1b8a78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xc82cad78983436bddfcaf0f21316207d87b87462` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xc898a5cbdb81f260bd5306d9f9b9a893d0fdf042` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xcb01c192f223e3c55ae1e1885a9464131aa985c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xcc10c5689adc11bef3ea9e11da0bd9268a4a3fa7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xcc94f68819eecd7a2252cb3696f13baa6205e7a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd197a60de47b3d0187d48ddd1653a009d5e4e5f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd202cf41a607627cd1a31f650d13599b588ebd1c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd26bb9b45140d17ef14fbd4fca8cf0d610ac50e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd28b1ab7098e7434a7b4efdc99c35fb85cfd92c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd2f570cb45e99f4d2279d05d15d24025d18f76c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |
| hyperliquid | candidate review | TransparentUpgradeableProxy<br>`0xd385ba55a22ac732cf435c5b5c3a1dfe5939ba4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0144936a17ce450a6eb499c00104890592814f0f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits (GitHub directory)](https://github.com/0xhyperbeat/Audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [docs.morpho.org/get-started/resources/audits](https://docs.morpho.org/get-started/resources/audits) | Morpho | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Zellic.pdf](https://github.com/0xhyperbeat/Audits/blob/main/BeatPot/Zellic.pdf) | Zellic | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [Codespect.pdf](https://github.com/0xhyperbeat/Audits/blob/main/USD%2B/Codespect.pdf) | Codespect | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Certora.pdf) | Certora | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Nethermind.pdf](https://github.com/0xhyperbeat/Audits/blob/main/Vault-Infra/Nethermind.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Certora.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Certora.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | contract_name | matched | 5 | 4 | 0 | 4 | high |
| [Pashov.pdf](https://github.com/0xhyperbeat/Audits/blob/main/beHYPE/Pashov.pdf) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | n/a | matched | 5 | 4 | 0 | 0 | n/a |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2FsHxOMBpM7X3DSqcRNG82%2F24.08.09%20-%20SigmaPrime%20-%20Audit%20Report.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf](https://2798104377-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FLaS0wfc7geC7DaOTDEn7%2Fuploads%2Fgf7igXLiz7gpv0FctQW8%2F25.01.21%20-%20ChainSecurity%20Audit.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [22.03.18 - Fractal Final Report.pdf](https://content.gitbook.com/content/LaS0wfc7geC7DaOTDEn7/blobs/3UeT78zGv53RD0ugoPeg/22.03.18%20-%20Fractal%20Final%20Report.pdf) | ChainSecurity | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F1wxK6TgqaRsSgt3ixVMx%2FMidas_SC%20Audit%20Report_25092023_%5BSA-1833%5D%20-%20POST%20REMEDIATION.pdf) | Hacken | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf](https://2732961456-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsPjk0ggBxEJCCnVFFkDR%2Fuploads%2F38N1bo36K8FLriRrPDXb%2FHacken_Midas_%5BSCA%5D%20Midas_Vault_Dec2023_P-2023-076_1_20240118%2016_22.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [audits.sherlock.xyz/contests/332](https://audits.sherlock.xyz/contests/332) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3867] Audits (GitHub directory) — no match: The provided text is a GitHub repository page listing folder names (BeatPot, USD+, Vault-Infra, Vaults-Solver, Withdrawal-Queue, beHYPE, liquid-bank) but no actual audit report content, scope section, or contract file paths. No contracts in scope could be identified.
- [3868] docs.morpho.org/get-started/resources/audits — no match: Extracted contract names from the scope column of the audit table. No single audit date; multiple dates per row.
- [3869] Zellic.pdf — matched: No reason recorded
- [3870] Codespect.pdf — no match: Two contracts explicitly listed in scope table. Audit date from cover page and final report date.
- [3871] Certora.pdf — matched: All contracts listed in the Project Scope section of the audit report.
- [3872] Nethermind.pdf — matched: All 12 contracts listed in the 'Audited Files' table on page 3 are in scope. Audit date is the final report date: October 1, 2025.
- [3875] Certora.pdf — matched: Scope section explicitly lists 9 contracts with file paths. Audit end date is 04/09/2025.
- [3877] Pashov.pdf — matched: No reason recorded
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf — no match: Extracted 14 contract names from the scope section. Audit date is August 2024, mapped to last day of month.
- [3881] spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf — no match: All contracts listed in scope section 2.1.1. Audit date from cover page.
- [3882] 22.03.18 - Fractal Final Report.pdf — no match: Extracted contract names from findings targets and scope section. Audit date from cover page.
- [3883] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf — no match: All contracts listed in Appendix 2 Scope section of the audit report.
- [3884] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf — no match: All contracts listed in Appendix 2 Scope table. Audit date from cover page: 18/01/2024.
- [3885] audits.sherlock.xyz/contests/332 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| docs.morpho.org/get-started/resources/audits | Vault V2 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | MarketV1AdapterV2 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Adapters Registry | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Vault V1.1 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue Periphery - Preliquidation | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue Periphery - Public Allocator | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Blue | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Vault V1 | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | Morpho Periphery | unmatched — not counted | — | listed in scope table | no |
| docs.morpho.org/get-started/resources/audits | MORPHO Token | unmatched — not counted | — | listed in scope table | no |
| Zellic.pdf | BeatPotV2 | unmatched — not counted | — | — | no |
| Zellic.pdf | BeatPotWithdrawalQueue | own contract | BeatPotWithdrawalQueue (selected) `0x7e89acffac47435778dd158aa622a150de045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Codespect.pdf | MorphoV2Orchestrator | unmatched — not counted | — | Listed in scope table (Section 5.1) and referenced in findings. | no |
| Codespect.pdf | CreditFundExchangeUpdater | unmatched — not counted | — | Listed in scope table (Section 5.1) and referenced in findings. | no |
| Certora.pdf | WithdrawalQueue | ambiguous — not counted | BeatPotWithdrawalQueue (alternative) `0x7e89acffac47435778dd158aa622a150de045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code)<br>0x6e0b9a… (alternative) `0x6e0b9afaae09a3479cfb7e923e15c05a9b23850d` — deployed 2026-06-30 11:58:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Certora.pdf | ExchangeRateUpdater | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | VaultToken | own contract | VaultToken (selected) `0x4cc221cf1444333510a634ce0d8209d2d11b9bba` — deployed 2025-10-25 19:45:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | Pricer | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | DepositReceiver | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | IPriceProvider | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | Depositor | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| Nethermind.pdf | OracleAggregator | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IAggregatorV3 | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IMidasPriceFeed | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | ICoreWriter | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | ExchangeRateUpdater | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | DnCoreWriterVault | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | DepositReceiver | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | Pricer | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | VaultToken | own contract | VaultToken (selected) `0x4cc221cf1444333510a634ce0d8209d2d11b9bba` — deployed 2025-10-25 19:45:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind.pdf | WithdrawalQueue | ambiguous — not counted | BeatPotWithdrawalQueue (alternative) `0x7e89acffac47435778dd158aa622a150de045e10` — deployed 2026-01-19 13:12:00+03 — liveness: live (current_address_book_code)<br>0x6e0b9a… (alternative) `0x6e0b9afaae09a3479cfb7e923e15c05a9b23850d` — deployed 2026-06-30 11:58:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Nethermind.pdf | Depositor | unmatched — not counted | — | listed in audited files table | no |
| Nethermind.pdf | IPriceProvider | unmatched — not counted | — | listed in audited files table | no |
| Certora.pdf | BeHYPE | own proxy deployment | UUPSProxy (proxy) (selected) `0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | BeHYPETimelock | own contract | BeHYPETimelock (selected) `0xa24af73eadd17997eeedbed36672e996544d2de4` — deployed 2025-09-04 20:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | RoleRegistry | own proxy deployment | UUPSProxy (proxy) (selected) `0x90102473a816a01a9fb0809f2289438b2e294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | StakingCore | own proxy deployment | UUPSProxy (proxy) (selected) `0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | WithdrawManager | own proxy deployment | UUPSProxy (proxy) (selected) `0x9d0b0877b9f2204cf414ca7862e4f03506822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certora.pdf | BucketLimiter | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | CoreWriter | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | L1Read | unmatched — not counted | — | listed in scope | no |
| Certora.pdf | UUPSProxy | ambiguous — not counted | UUPSProxy (proxy) (alternative) `0x9d0b0877b9f2204cf414ca7862e4f03506822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code)<br>UUPSProxy (proxy) (alternative) `0x90102473a816a01a9fb0809f2289438b2e294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Pashov.pdf | BeHYPE.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9` — deployed 2025-09-04 19:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | BeHYPETimelock.sol | own contract | BeHYPETimelock (selected) `0xa24af73eadd17997eeedbed36672e996544d2de4` — deployed 2025-09-04 20:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | RoleRegistry.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0x90102473a816a01a9fb0809f2289438b2e294f76` — deployed 2025-09-04 19:55:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | StakingCore.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b` — deployed 2025-09-04 19:59:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pashov.pdf | WithdrawManager.sol | own proxy deployment | UUPSProxy (proxy) (selected) `0x9d0b0877b9f2204cf414ca7862e4f03506822538` — deployed 2025-09-04 20:01:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseUpgradeableERC20 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseUpgradeableERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | TimelockedERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | OwnableLiquidityPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | AbstractLender | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | HookableLender | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseLendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | BaseReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | DateUtils | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | IPermissionlessLoansDeployer | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | ILenderHook | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf | IPeerToPeerOpenTermLoan | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | AddressWhitelist | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | LightweightOwnable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TimelockedCall | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseUpgradeableERC20v2 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseUpgradeableERC4626v2 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TimelockedClaimOnlyERC4626 | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | IAllocable | unmatched — not counted | — | listed in scope | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | TokenizedAccount | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xc061d38903b99ac12713b550c2cb44b221674f94` — deployed 2025-04-28 16:30:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x96c6cbb6251ee1c257b2162ca0f39aa5fa44b1fb` — deployed 2025-04-04 17:03:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf | BaseTokenizedAccount | unmatched — not counted | — | listed in scope | no |
| 22.03.18 - Fractal Final Report.pdf | Vault | unmatched — not counted | — | Target in finding 3.1 | no |
| 22.03.18 - Fractal Final Report.pdf | FractalVaultV1 | unmatched — not counted | — | Target in findings 3.3 and 3.4 | no |
| 22.03.18 - Fractal Final Report.pdf | Mintable | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | AddressWhitelist | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | Migrations | unmatched — not counted | — | Target in finding 3.5 | no |
| 22.03.18 - Fractal Final Report.pdf | DexLibrary | unmatched — not counted | — | Target in finding 3.2 | no |
| 22.03.18 - Fractal Final Report.pdf | DateUtils | unmatched — not counted | — | Target in findings 3.7 and 3.8 | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DepositVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | RedemptionVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | stUSD | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | ManageableVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Blacklistable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Greenlistable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | MidasAccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | MidasAccessControlRoles | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | WithMidasAccessControl | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DataFeed | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IDataFeed | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IDepositVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IManageableVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IRedemptionVault | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | IStUSD | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | listed in scope | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DepositVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | RedemptionVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | mTBILL | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | ManageableVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasInitializable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Blacklistable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Greenlistable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasAccessControl | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | MidasAccessControlRoles | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | WithMidasAccessControl | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DataFeed | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IDataFeed | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IDepositVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IManageableVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IMTbill | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | IRedemptionVault | unmatched — not counted | — | listed in scope table | no |
| spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x53f9715c91642da22ebdf6eaa45e86d5e94c8425` | BeatPot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x669abe85f96a9e3b34723f7be9bc6f250abc0cc1` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x949a7250bb55eb79bc6bcc97fcd1c473db3e6f29` | dnHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x8858a307a85982c2b3cb2ace1720237f2f09c39b` | dnPUMP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x057ced81348d57aad579a672d521d7b4396e8a61` | hbUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x5e105266db42f78fa814322bce7f388b4c2e61eb` | hbUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x6eb6724d8d3d4ff9e24d872e8c38403169dc05f8` | hbXAUt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x441794d6a8f9a3739f5d4e98a728937b33489d29` | liquidHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x7b5bd5a38677a5355a54adc9b3113c3023709d03` | lstHYPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ff33615e792e35ed1026ea7caccf42d9bf83476` | PreLiquidationFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfd32fa2ca22c76dd6e550706ad913fc6ce91c75d` | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x96c6cbb6251ee1c257b2162ca0f39aa5fa44b1fb` | TokenizedAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc061d38903b99ac12713b550c2cb44b221674f94` | TokenizedAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x042e8217be08dac98aaaee834d47ea3a7f77ba34` | wVLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 158 |
| upstream | 10 |
| standard_library | 18 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 99 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=2
- Match method counts: unique_name=13

Zero-match audit list:

- [3867] Audits (GitHub directory)
- [3868] docs.morpho.org/get-started/resources/audits
- [3870] Codespect.pdf
- [3880] spaces/LaS0wfc7geC7DaOTDEn7/uploads/sHxOMBpM7X3DSqcRNG82/24.08.09 - SigmaPrime - Audit Report.pdf
- [3881] spaces/LaS0wfc7geC7DaOTDEn7/uploads/gf7igXLiz7gpv0FctQW8/25.01.21 - ChainSecurity Audit.pdf
- [3882] 22.03.18 - Fractal Final Report.pdf
- [3883] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/1wxK6TgqaRsSgt3ixVMx/Midas_SC Audit Report_25092023_[SA-1833] - POST REMEDIATION.pdf
- [3884] spaces/sPjk0ggBxEJCCnVFFkDR/uploads/38N1bo36K8FLriRrPDXb/Hacken_Midas_[SCA] Midas_Vault_Dec2023_P-2023-076_1_20240118 16_22.pdf
- [3885] audits.sherlock.xyz/contests/332

Fork inheritance lineage and inherited audits are included when available.
