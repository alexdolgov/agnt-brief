# Agentic Audit Brief: ELYFI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: ELYFI (`elyfi`)
- Website: [https://www.elyfi.world/](https://www.elyfi.world/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, kaia
- Contract surface: 107 unique implementations (114 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $2,119,331.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ELYFI in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x15d9f7703f248667957d63d9f4474250ab8f144b`, chain 56)
- UnnamedContract (`0x163d3a76f30e11472a0f9ed8843ec5ed25309911`, chain 56)
- UnnamedContract (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- UnnamedContract (`0x70a03fee9d23d2e122ba260eeee71c56b3485826`, chain 56)
- UnnamedContract (`0x836b9a6ef1b6a813136fe91803285383ba94956c`, chain 56)
- UnnamedContract (`0xcc5dc7f2fb6833ee2ca7d8dbe599fce54321b4f7`, chain 56)
- UnnamedContract (`0xeba3b931d7a7177d5adc64dff3a60232fde184db`, chain 56)
- UnnamedContract (`0xecd6c25d819d34c961242820bd3161e2a7e01bf7`, chain 56)
- UnnamedContract (`0xed8fa605dac543f733d8791fc8d1724bd14598c3`, chain 56)
- UnnamedContract (`0xf4f31c62aef4ec3f0429dc48f95df10b1146f7d0`, chain 56)
- UnnamedContract (`0xfcd58ecdfbb46ca31514c30ea996b17ac21778b3`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 96 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 107 unique; 96 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 83
- Unique implementations: 107
- Raw deployments: 114
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x221cb17e95aa6594cd57e2c4b2f875d4236913bc` | ⚠️ Unaudited |
| Connector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x424c2a31976c2d609819582c84f534b15b001793` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30f5907e7f943e8ebe5db444ab7e3c8251346344` | ⚠️ Unaudited |
| CrossChainZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b19e558ad35b63e385e7c197c0c25072df73dd3`; ethereum `0x87e093b368773ff13daf4b57ffb03c364ffca395`; ethereum `0xa0d697a25b95e2f3bd1402c15450bcce54297a6e` | ⚠️ Unaudited |
| DataPipeline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa63830cccdcd380b00ef00f070357cb03cdc2e7b` | ⚠️ Unaudited |
| DToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9f638c2ba70ea022c710eaeef14824f126d0c34` | ⚠️ Unaudited |
| ELUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522aa1da4f63317e2476e3384862f2c6174cd3a0` | ⚠️ Unaudited |
| ElyfiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4da34f8264cb33a5c9f17081b9ef5ff6091116f4` | ⚠️ Unaudited |
| ERC20Metadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10b6dafe4d7f7c693f44c51e716166b599644ba` | ⚠️ Unaudited |
| IncentivePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf42c51527cccab25b70ad46b6c79353d0f2cddfc` | ⚠️ Unaudited |
| Index | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66368d5be45fbf209fc1f34733da31708a7c03a0` | ⚠️ Unaudited |
| InterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x979c7aef8ef58aa9cd456f8195258140da275688` | ⚠️ Unaudited |
| LToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bb4d02a0ba38fb8b916758f11d9b256967a1f7f` | ⚠️ Unaudited |
| MoneyPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bdfef5f8b75741d33a22d85022244cbe793da24` | ⚠️ Unaudited |
| NftBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa12243a014ab9d1bc016ba2c1b76ac6a86ae4510` | ⚠️ Unaudited |
| Rate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51ec26d9c0806e42a6bb8fba40bcc5f7d54400ef` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f70473ce443529c93589f116ddbb0f7ffce0d1` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4926c0d5811b1d31dab8358e0317aa7fda3f0e` | ⚠️ Unaudited |
| sELUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd7dc2e7446e3db781900218b90d7bb856e255a` | ⚠️ Unaudited |
| Silo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e992f7b99dc6db863f3e32fcfe1c33c2babc775` | ⚠️ Unaudited |
| StableMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bf7d3e803c596e0fb6c5064711fe89c297f4606` | ⚠️ Unaudited |
| StakingPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x24a7fb55e4ac2cb40944bc560423b496dfa8803f`; ethereum `0x3f0c3e32bb166901acd0abc9452a3f0c5b8b2c9d`; ethereum `0xa33cfb48338450aecc3e7da69e7f99ac923cfc28`; ethereum `0xf26546ee9562ed60f680c747f28a6ae67a805c90`; bsc `0x73653254ed0f28d6e5a59191bbb38b06c899fbca` | ⚠️ Unaudited |
| TimeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x144d0b69da2cae4c299357e2fc5b4c37a234aa43` | ⚠️ Unaudited |
| Validation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x926f61222cd96dd1f1c4066f8626e8514babb016` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (83)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x020f922a1ba9554c59534128b128181bb4df668a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x079baf16331cdaf2b1bd0c08d161948873c1bb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0846956f3451f84e37682d3450c37415a92f4530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bc1153fdd3172dc046cb4c113c6d411bbe8e4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d768c1507b5099cb37e5d28b1959b831b5ebf9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d7bc49635a451f2f409188defd6b6a0b00ad410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0efe19ee0668c7b85be3106f6c5333dddd3a3856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12b6a4d3c2e09d1add2cdd8f525e5dd478ebdf96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236828 | `0x15d9f7703f248667957d63d9f4474250ab8f144b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236829 | `0x163d3a76f30e11472a0f9ed8843ec5ed25309911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19b61415f3aee4bc18357ed5a234851511c9e272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b41063ddd77d3c357c8b56d56bff31e594832b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bfbf29ac46b53352a12bf493f3350b7a17b1cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f35db4ef08b9c2515a6f6bd7b36a64f1a9833f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x200fdbf08a968d7dbad2a76312f3d914b316e505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2edab77c1ce6427af2277a65e4c99b91d33b51a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30ce372a51058ac08c57574ee8e7fcc940823bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bc9cb601aa94e73721c3c79f16be59fc7f0a309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ec4bf7b869633c8dff2d2d53661019a3ffb9d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a792b48cea2a6a9dc07960a9c79daf657d2db71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f183975a3b58120b7cb67fa48aed0ee2d6acf4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50e4cfc351916d4887b1d2892212863ab86c62b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52d3a3b30c3511fbfbb08d997ff15eab51e516a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52d870602ab9d195284486e77e7430ba2f37114d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236830 | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a0154b76e8afe0ef3aa28fd6b4ea863458db9eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e03c6af9a52750d982c0b6e2fa2199eff305eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60961ca3a40be41dddef708bf51ef2f8e9760a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x626894d928ddd9137cadf1a6c0d52a2c023d4f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x694fa8d447966f380656c8bd4bddd3829415c72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b0c4b284dce9f9f94995a3dbdb5363de69636c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b472404783cd4db940fe33689bab941a0bcf216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bf145cbced8287a023f10c77b57c9e2c563a447` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236831 | `0x70a03fee9d23d2e122ba260eeee71c56b3485826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7506c621edbefd7ba344c98ff716111aae3ea226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ad5ef5706198f171d44214ee47c4652dd762e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bcaa9d4fdc10e2e3996ddcca600682acfa9a4b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f97f905a8d6fe4c493d339f094232e3577b4dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x814bc5a41ece51cb169020bfe989aba952d6ba98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81cbfbad416d0c1336d32b20d099138ba28a1b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82ed314bd342b052e00bde9b6938a39c5017ab3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236832 | `0x836b9a6ef1b6a813136fe91803285383ba94956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84653e53d60abf1eb7f15f368d708a93a27d31c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a964c556f4d264ab10b77ba91522bb593c749d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b29e984e71e85fb8b0ada23c2a8769aff57324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8be1649b2eb1b585d8f91df0a16ffc2ac3a36c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x924b375ea2e8f1f2e686e53823748c7c29ad6466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dd2ed12bb25e79a1dd4b66c76a3067638e5d749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ed114119f70654119497e273ffbc95787faccda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb21a2a097ffc25a4b1c9baa50da482ea84687dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb567d617fa92b54aabecb48667fc10e5f888659a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb57efd5fa3a930314bc01aa56cd8e4b01ef52710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb851bafc5f1aa2b6fe0e4e5b5345c340d80a0028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaf60180089407bbaca74d622d5610f7512b313e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbde1c8f4aca005144508f0cff68dd5767266f65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0ab7a7403767f5b6eadf4a1a57225ef6787f819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1d15e9ef3c67de4c43de902c4c5e8423e61e890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5076dfc590fe8b50e34933906aa32eb69ed69f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc65fbfbe00f37a02069f7d6d6bbd45b5e18a43b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc676a0d43db754d053bf30b88b052d176665afa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236833 | `0xcc5dc7f2fb6833ee2ca7d8dbe599fce54321b4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2770d9313a6f4718623b0f610b2bced87761b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5f9ad7ca9f4f2919352823602188dd09fae24df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd942c51eca3222b4f3f661fc796dbe789dfe192f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9a5ea5ae051535aaac0403da0e86eb374d7338f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdda42c49e50d69dfe8fe12df883891d76402a013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf5e03d5669b8fdcfae3fa24d4ccabbe6b5e68fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe06363291c73f92179db8d063534cc783c3f0522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7617b178ac58ab58e3e73d75812093ae3ddb299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8470006c078a43a51a40da6778cb9587aea6b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaa537567f32695a113a276d214bba52340b51df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeae15c522700498895f4ffc5dad539e3fcf141fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb489b632f6a8e463f2ef1f05cd808f52f9a7786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236834 | `0xeba3b931d7a7177d5adc64dff3a60232fde184db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236835 | `0xecd6c25d819d34c961242820bd3161e2a7e01bf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236836 | `0xed8fa605dac543f733d8791fc8d1724bd14598c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef22f11f2f826afbe1abfce85d9425fac39c2e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2a2b7d82256b10533b4570fcf0e5fe835087818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf356ed4e161b6ed41442c9d6415a57193918f5c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236837 | `0xf4f31c62aef4ec3f0429dc48f95df10b1146f7d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236838 | `0xfcd58ecdfbb46ca31514c30ea996b17ac21778b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kaia | n/a | 2 deployments: kaia `0x60961ca3a40be41dddef708bf51ef2f8e9760a3b`; kaia `0x7f97f905a8d6fe4c493d339f094232e3577b4dbd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 91
- Live contracts: 0
- Unknown liveness contracts: 91
- Source-verified contracts: 20
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=11, contamination review=3, source verified unclassified=6, unverified unclassified=71

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | CrossChainZap<br>`0x4b19e558ad35b63e385e7c197c0c25072df73dd3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8c4fb5925b3607d68ff813545184815dbb88c545` |
| candidate review | CrossChainZap<br>`0x87e093b368773ff13daf4b57ffb03c364ffca395` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8c4fb5925b3607d68ff813545184815dbb88c545` |
| candidate review | CrossChainZap<br>`0xa0d697a25b95e2f3bd1402c15450bcce54297a6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8c4fb5925b3607d68ff813545184815dbb88c545` |
| candidate review | ERC20Metadata<br>`0xc10b6dafe4d7f7c693f44c51e716166b599644ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4b994361257d060cf20dab2f13286b16b0019fde` |
| candidate review | StakingPoolV2<br>`0xa33cfb48338450aecc3e7da69e7f99ac923cfc28` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4b994361257d060cf20dab2f13286b16b0019fde` |
| candidate review | StakingPoolV2<br>`0xf26546ee9562ed60f680c747f28a6ae67a805c90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4b994361257d060cf20dab2f13286b16b0019fde` |
| candidate review | Index<br>`0x66368d5be45fbf209fc1f34733da31708a7c03a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| candidate review | Rate<br>`0x51ec26d9c0806e42a6bb8fba40bcc5f7d54400ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| candidate review | StakingPoolV2<br>`0x73653254ed0f28d6e5a59191bbb38b06c899fbca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| candidate review | TimeConverter<br>`0x144d0b69da2cae4c299357e2fc5b4c37a234aa43` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| candidate review | Validation<br>`0x926f61222cd96dd1f1c4066f8626e8514babb016` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| contamination review | DataPipeline<br>`0xa63830cccdcd380b00ef00f070357cb03cdc2e7b` | non_address_book | unknown | unknown | verified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| contamination review | IncentivePool<br>`0xf42c51527cccab25b70ad46b6c79353d0f2cddfc` | non_address_book | unknown | unknown | verified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| contamination review | InterestRateModel<br>`0x979c7aef8ef58aa9cd456f8195258140da275688` | non_address_book | unknown | unknown | verified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| source verified unclassified | Controller<br>`0x30f5907e7f943e8ebe5db444ab7e3c8251346344` | non_address_book | unknown | unknown | verified | n/a | `0x4b994361257d060cf20dab2f13286b16b0019fde` |
| source verified unclassified | ELUSD<br>`0x522aa1da4f63317e2476e3384862f2c6174cd3a0` | non_address_book | unknown | unknown | verified | n/a | `0x8c4fb5925b3607d68ff813545184815dbb88c545` |
| source verified unclassified | NftBond<br>`0xa12243a014ab9d1bc016ba2c1b76ac6a86ae4510` | non_address_book | unknown | unknown | verified | n/a | `0x4b994361257d060cf20dab2f13286b16b0019fde` |
| source verified unclassified | Connector<br>`0x424c2a31976c2d609819582c84f534b15b001793` | non_address_book | unknown | unknown | verified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| source verified unclassified | DToken<br>`0xe9f638c2ba70ea022c710eaeef14824f126d0c34` | non_address_book | unknown | unknown | verified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| source verified unclassified | LToken<br>`0x5bb4d02a0ba38fb8b916758f11d9b256967a1f7f` | non_address_book | unknown | unknown | verified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| unverified unclassified | UnnamedContract<br>`0x020f922a1ba9554c59534128b128181bb4df668a` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x079baf16331cdaf2b1bd0c08d161948873c1bb59` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x0846956f3451f84e37682d3450c37415a92f4530` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x0bc1153fdd3172dc046cb4c113c6d411bbe8e4f8` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x0d768c1507b5099cb37e5d28b1959b831b5ebf9e` | non_address_book | unknown | unknown | unverified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| unverified unclassified | UnnamedContract<br>`0x0d7bc49635a451f2f409188defd6b6a0b00ad410` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x0efe19ee0668c7b85be3106f6c5333dddd3a3856` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x12b6a4d3c2e09d1add2cdd8f525e5dd478ebdf96` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x19b61415f3aee4bc18357ed5a234851511c9e272` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x1b41063ddd77d3c357c8b56d56bff31e594832b9` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x1bfbf29ac46b53352a12bf493f3350b7a17b1cf8` | non_address_book | unknown | unknown | unverified | n/a | `0x8d86dd9fe7318e04cc51440c0252663f7fecf01e` |
| unverified unclassified | UnnamedContract<br>`0x1f35db4ef08b9c2515a6f6bd7b36a64f1a9833f6` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x200fdbf08a968d7dbad2a76312f3d914b316e505` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x2edab77c1ce6427af2277a65e4c99b91d33b51a5` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x30ce372a51058ac08c57574ee8e7fcc940823bb5` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x3bc9cb601aa94e73721c3c79f16be59fc7f0a309` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x3ec4bf7b869633c8dff2d2d53661019a3ffb9d14` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x4a792b48cea2a6a9dc07960a9c79daf657d2db71` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x4f183975a3b58120b7cb67fa48aed0ee2d6acf4f` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x50e4cfc351916d4887b1d2892212863ab86c62b0` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x52d3a3b30c3511fbfbb08d997ff15eab51e516a4` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x52d870602ab9d195284486e77e7430ba2f37114d` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x5a0154b76e8afe0ef3aa28fd6b4ea863458db9eb` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x5e03c6af9a52750d982c0b6e2fa2199eff305eaa` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x60961ca3a40be41dddef708bf51ef2f8e9760a3b` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x626894d928ddd9137cadf1a6c0d52a2c023d4f57` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x694fa8d447966f380656c8bd4bddd3829415c72b` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x6b0c4b284dce9f9f94995a3dbdb5363de69636c8` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x6b472404783cd4db940fe33689bab941a0bcf216` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x6bf145cbced8287a023f10c77b57c9e2c563a447` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x7506c621edbefd7ba344c98ff716111aae3ea226` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x7ad5ef5706198f171d44214ee47c4652dd762e90` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x7bcaa9d4fdc10e2e3996ddcca600682acfa9a4b3` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x7f97f905a8d6fe4c493d339f094232e3577b4dbd` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x814bc5a41ece51cb169020bfe989aba952d6ba98` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x81cbfbad416d0c1336d32b20d099138ba28a1b14` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x82ed314bd342b052e00bde9b6938a39c5017ab3b` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x84653e53d60abf1eb7f15f368d708a93a27d31c3` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x8a964c556f4d264ab10b77ba91522bb593c749d8` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x8b29e984e71e85fb8b0ada23c2a8769aff57324a` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x8be1649b2eb1b585d8f91df0a16ffc2ac3a36c3c` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0x924b375ea2e8f1f2e686e53823748c7c29ad6466` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x9dd2ed12bb25e79a1dd4b66c76a3067638e5d749` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0x9ed114119f70654119497e273ffbc95787faccda` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xb21a2a097ffc25a4b1c9baa50da482ea84687dce` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xb567d617fa92b54aabecb48667fc10e5f888659a` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xb57efd5fa3a930314bc01aa56cd8e4b01ef52710` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xb851bafc5f1aa2b6fe0e4e5b5345c340d80a0028` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xbaf60180089407bbaca74d622d5610f7512b313e` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xbde1c8f4aca005144508f0cff68dd5767266f65a` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xc0ab7a7403767f5b6eadf4a1a57225ef6787f819` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xc1d15e9ef3c67de4c43de902c4c5e8423e61e890` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xc5076dfc590fe8b50e34933906aa32eb69ed69f6` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xc65fbfbe00f37a02069f7d6d6bbd45b5e18a43b0` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xc676a0d43db754d053bf30b88b052d176665afa8` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xd2770d9313a6f4718623b0f610b2bced87761b34` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xd5f9ad7ca9f4f2919352823602188dd09fae24df` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xd942c51eca3222b4f3f661fc796dbe789dfe192f` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xd9a5ea5ae051535aaac0403da0e86eb374d7338f` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xdda42c49e50d69dfe8fe12df883891d76402a013` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xdf5e03d5669b8fdcfae3fa24d4ccabbe6b5e68fc` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xe06363291c73f92179db8d063534cc783c3f0522` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xe7617b178ac58ab58e3e73d75812093ae3ddb299` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xe8470006c078a43a51a40da6778cb9587aea6b2a` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xeaa537567f32695a113a276d214bba52340b51df` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xeae15c522700498895f4ffc5dad539e3fcf141fe` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xeb489b632f6a8e463f2ef1f05cd808f52f9a7786` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xef22f11f2f826afbe1abfce85d9425fac39c2e5e` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xf2a2b7d82256b10533b4570fcf0e5fe835087818` | non_address_book | unknown | unknown | unverified | n/a | `0x437cd7f4f0d3cb67d0abd3e90fa69f39bd4a6ce0` |
| unverified unclassified | UnnamedContract<br>`0xf356ed4e161b6ed41442c9d6415a57193918f5c6` | non_address_book | unknown | unknown | unverified | n/a | `0x45129a8fe7dee4e6e16e738be673984da684371f` |
| unverified unclassified | UnnamedContract<br>`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | non_address_book | unknown | unknown | unverified | n/a | `0x970609ba2c160a1b491b90867681918bdc9773af` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/elyfi](https://skynet.certik.com/projects/elyfi) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [[HAECHI AUDIT] ElyfiToken smart contract audit report.pdf](https://github.com/elysia-dev/elyfi-token/blob/main/audit/%5BHAECHI%20AUDIT%5D%20ElyfiToken%20smart%20contract%20audit%20report.pdf) | Haechi Audit | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2834] skynet.certik.com/projects/elyfi — no match: Extracted from 'Audited Files/SHA256' section; only two contract files explicitly listed. The report is a Skynet page, not a full audit report, but the audited files are shown.
- [14348] [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/elyfi | LoanManagerStorage | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/elyfi | PoolToken | unmatched — not counted | — | listed in audited files | no |
| [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf | ElyfiAccessControl | unmatched — not counted | — | — | no |
| [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf | ElyfiToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 83 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2834] skynet.certik.com/projects/elyfi
- [14348] [HAECHI AUDIT] ElyfiToken smart contract audit report.pdf

Fork inheritance lineage and inherited audits are included when available.
