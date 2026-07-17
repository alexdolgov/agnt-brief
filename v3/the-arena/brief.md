# Agentic Audit Brief: The Arena

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: The Arena (`the-arena`)
- Website: [https://arena.social/](https://arena.social/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 123 unique implementations (226 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,515,363.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for The Arena. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across avalanche. Structural roles: 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ArenaFactory (`0xf16784dcaf838a3e16bef7711a62d12413c39bd1`, chain 43114)
- ArenaRouter02 (`0xf56d524d651b90e4b84dc2fffd83079698b9066e`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 121 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 2 of 123 unique; 121 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 81
- Unique implementations: 123
- Raw deployments: 226
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArenaAirdropVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x30f587903ef022774f5e35151e0e73c196bd755d`; avalanche `0xb0357ab060303ae48578490bf64754004af01120` | ⚠️ Unaudited |
| ArenaFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-394007 | `0xf16784dcaf838a3e16bef7711a62d12413c39bd1` | ⚠️ Unaudited |
| ArenaFeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x537505da49b4249b576fc8d00028bfddf6189077`; avalanche `0xde174fa60e4a0c8180c15d37f03f976e7bdf17f8` | ⚠️ Unaudited |
| ArenaFeeRecipient | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ab4def8d532fcf0302764d6a9bb2f4299550d66` | ⚠️ Unaudited |
| ArenaMultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x472db6c0c34792375d119aec8422dec80f8aa365`; avalanche `0x608c6cb902814656210ec13bfb340532afcde6d5`; avalanche `0xf0bda7d169cf4f5f70c83cd88aeb57f68e395984`; avalanche `0xf60fadfb18820c58af892692838b354fc808fd61` | ⚠️ Unaudited |
| ArenaPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73b365a5f36502c81886ff604d9f0f43404bbe95` | ⚠️ Unaudited |
| ArenaPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x73ffe423626c3ff34bf3c54c2c8705549c666ad1`; avalanche `0xfd75b3e5f399b538cd44434b29f2647b19d9030f` | ⚠️ Unaudited |
| ArenaReferralRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x6a0fbeb8110e696b610c4a2af964900cf1b8ac7a`; avalanche `0xff4e5dd97ff65586f06627b5d2ca2c7499a54a40` | ⚠️ Unaudited |
| ArenaRouter02 | adapter | project_anchor | own_supporting | 0 | avalanche | unit-394008 | `0xf56d524d651b90e4b84dc2fffd83079698b9066e` | ⚠️ Unaudited |
| ArenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0e2d0cc6454c307462ab2a9881ac3c5a965eec97`; avalanche `0xe805a67df9ca5483e056337604ec79dd2d6f5bd3` | ⚠️ Unaudited |
| ArenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xedf106d4eef9ce7420456a09c804c19925bf9f94`; avalanche `0xeffb809d99142ce3b51c1796c096f5b01b4aaec4` | ⚠️ Unaudited |
| ArenaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xb8d7710f7d8349a506b75dd184f05777c82dad0c`; avalanche `0xf5acf3fa9b2259e4292e77f01702a064d9ff247e` | ⚠️ Unaudited |
| AvaxHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x0359a21b87b55d93838cc57a254064758d0d15ff`; avalanche `0x03f1a18519abedbef210fa44e13b71fec01b8dfa`; avalanche `0x19137893d4efa5936385796ee41539f4e23fe582`; avalanche `0x1d6efff7a2361e03039f38330df9178e280a1402`; avalanche `0x51ba6f36c00f6d7c8849e467670057815d6062ff`; avalanche `0x5e053877cc1eacebb5c43f9711c2c27b5876f323`; avalanche `0x8e7a69b86ec8ef81047e9794fc5bf2ea385dec94`; avalanche `0xaa7a118040fa3e8c7014d1ed32cf60ab2f5ae675`; avalanche `0xbce3a1f7a55a4aae017336874390a5a5c2275c69`; avalanche `0xcf6bc1b38561942a3191c304d6e25dc081d97aa3`; avalanche `0xdd00887b7bb6da2c5c6ef8b54b4edd161453e529`; avalanche `0xf7dc599e2553cbc5412ea908fa70e10f707ce599` | ⚠️ Unaudited |
| BareAggregatorExecutorConst | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x1d31a9998b5fa533bb977466491d367d7dc5414f`; avalanche `0x24bb797d33597c58dfd3aa97c5b158f5d7794f65`; avalanche `0x548e11f9513bbef710a5eb0313c67ddffb9a6837` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d4b5309bfcb2e4f927c9c03d68554b404b7ecce` | ⚠️ Unaudited |
| FeeCompoundHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f8c33e6f88727d8456bf1d5123e47d61e9c9694` | ⚠️ Unaudited |
| FeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0af2fb7c64331e611b1303a9d65022f301598704`; avalanche `0x14a2c33672d4aa84e38d93a9fa08ba95c9bfa6f6` | ⚠️ Unaudited |
| FeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x132cc20e8d709486a3121c9807bfd75f4384820c` | ⚠️ Unaudited |
| FeeHelperProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1f15ba61d732560670d621f624cce5671fc73d04`; avalanche `0xb7ac1ecd9dfbf5f1513c09c3c4064dabd3f31b09` | ⚠️ Unaudited |
| InverseHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 14 deployments: avalanche `0x25aaf987b2a14644b4a3db17b00e6e68d7652bb7`; avalanche `0x2b43e5d8dcf1e5bd9b851b9196218b2d417079c1`; avalanche `0x3304049517fc74d8875b792e648e8e0c9b9e9a6f`; avalanche `0x41a75bc54d4e2f634e19ce5017c9e5cff4bc89b4`; avalanche `0x64ef553724ce93d01fcbaea7e6db8f9aabc38602`; avalanche `0x75295069555345c333ef3f3ff7887c164f1296b9`; avalanche `0x76b52e15062ee75df1eb153915e7a138f14d8fe6`; avalanche `0x80bb0d7d785b522ba63f251fcc68ad6451d12c46`; avalanche `0x80f92d9677de42b85ebdbac70dea9113d076ace5`; avalanche `0x883aa924202db31bfaec507db5b63e3bcdfa029c`; avalanche `0xa88e53fb2b7ed1151f3182efc8c7f0056114b701`; avalanche `0xc42c22f7c8f8eb44dd255c394fcff5b8491e0b5d`; avalanche `0xe2c98991721780b1f847e5d81da238171246c12c`; avalanche `0xfe73e0d15d6f35dc4e042685404fe54f59e69651` | ⚠️ Unaudited |
| MCHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x0eeaeebdf26735a2bc45154e73e68b704b329154`; avalanche `0x28c2551ac6821df7440d82ddcf84164848a7f666`; avalanche `0x2a6dca4351690a44e2abcab089c459d44565db62`; avalanche `0x39753df99435ba0aa0efc99fb0faccede700dcf1`; avalanche `0x3d920dc1f608553182612c0b1cdd6f59f81a9974`; avalanche `0x6c62bc9544612af403d3c0023af7356d624b13b1`; avalanche `0x72a1fd0a62ab8b727a75eb0b34bf4898d8df1694`; avalanche `0xc0dab0bb7a2daa5be9e6f4daeb3e82833f95d076`; avalanche `0xd31ca7755eeefead2c53dec372b9ba4532a4f39a` | ⚠️ Unaudited |
| MigrateToV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9ab627035e4a8ecb11d89bd20410f994ab069c15`; avalanche `0xb84d4d944582f7136f0a7d7cf3bc607c3c8252b8` | ⚠️ Unaudited |
| SingleTxBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x659427b71ea1ad334fd31cf9ca43ce8d92fe7402` | ⚠️ Unaudited |
| SingleTxQuoter | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x0ab3d37f13d9e7f023148a01b48ca69392136640`; avalanche `0xc5786e5db78c253142bf4d1ca2e757917ecdfe6a`; avalanche `0xed5437128fe8bca658ed73e193ab9ad1c662c85e`; avalanche `0xf80408669d50438228790dea768e2dac749a87df` | ⚠️ Unaudited |
| TokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x12428e476b6239d1262250801e7b3dc0a09f6316`; avalanche `0x386ab54dfdd01169b30b803da4fbaf0248084dd6`; avalanche `0x71ec76574fc0de4b7dd3a7a6504d1a2b4d360132`; avalanche `0x727a1be159e61c03e651689df86725d74fa3f771`; avalanche `0x85dbb50f9c23df1ab38d557c12d3ba88126f751f`; avalanche `0x8b986c0cb84fc064ac370bd7c2b4fae0b94d809e`; avalanche `0x963a0fbc98d2e0d80bdcb07d4220e6cc8bf9cdcb`; avalanche `0xac33c320589b6f8faee30ac462bdd27869d869f2`; avalanche `0xbf3e705b7e021bbd64144fd9d71109848b8d1b6a`; avalanche `0xeb6556a9dd0f528a6f861da4bc4653197ce965da`; avalanche `0xf2609ff85339c71475bec399562b75127f80f855`; avalanche `0xfa303fca4e23adf2c1ace6572b18ae0cd58bd112` | ⚠️ Unaudited |
| TokenInfoProvider | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x448b9e5bbf3f722579e63d7f337d2b12a614af32` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: avalanche `0x05b7e88e2c57e735bba1b6469138d3f8805392e5`; avalanche `0x0e89f3e9fc19d4ebc6a2edeab01eaf9f95c7d146`; avalanche `0x118ee0139e9f4cf26cd644b50671ae4e85b30606`; avalanche `0x1a5e7ecfdd724fc8beb839ddf669bb27219da504`; avalanche `0x203a0fbeef9debe2ef21c1768173f26135b064d0`; avalanche `0x8157dac6a671cece2ba57e3554224becf2c6b5d7`; avalanche `0x976ed09f1bc4ff63a257ab173c67b10b0e7282c1`; avalanche `0x9a617fc416f270386bad602e04f9d581f41b31db`; avalanche `0x9f78527368c4d142e206300c78d380da5336cb02`; avalanche `0xb14044f203512a621a576b0a366fe6843c31edd2`; avalanche `0xba147fe8f0b49709fdc8ccaaceebe1e6e6aa1d05` | ⚠️ Unaudited |
| TokenManagerERC20 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x0005f6681d53d0bdab6261c2dccebe2e36db7178`; avalanche `0x0436d9e2aa140a060f229fe0ca306a6e8894b2f6`; avalanche `0x0bb2db7f9935a79bef884abd89fb98146f609923`; avalanche `0x4f42a88d4b4469db04b56c1fe4337a70f42bcba7`; avalanche `0x7dcacc426b9965fe310d2632556fea44624a4c9a`; avalanche `0xa5f6782ec6d25fce9f264dcb3bf5ee54082e0375`; avalanche `0xe71a36fb93520d6bcbc31034e156f764efc66701`; avalanche `0xe9207250d648e3d2cc06fad935912d5566585375` | ⚠️ Unaudited |
| TokenManagerERC20 | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x2196e106af476f57618373ec028924767c758464`; avalanche `0x4ff1bd0dec8773afa0fccef087080f3cec39badc` | ⚠️ Unaudited |
| TokenManagerERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x36a288963914af4317d57a0aa42ba0c485c1970f`; avalanche `0xf4037a2fba2f8fcc71fd389f96594d9b4cc69691` | ⚠️ Unaudited |
| TokenManagerERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x8c2d142c41a8c3c88a82d99da4ece0f4143c2718`; avalanche `0xe04dd2faedc9b9e24b187afe5362ff2f2ba087f1` | ⚠️ Unaudited |
| TokenManagerERC20PriceHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x1cfa653774bfb6d60d8a61f810033e1f31bb4a62`; avalanche `0x5048fb87baa08946cbed1fbfa8fcc006a417abd7`; avalanche `0x78059090a0a4845bde33fff52b0a4a6de6e7e6bc`; avalanche `0x7bb54330f9a7c0bfb1fe0eab11343966043f7f8b`; avalanche `0x90c1e77653bc1e66eb5fb57231494edf400fbcc5`; avalanche `0xcb881441630a59edb57d341788139f31b547be5d` | ⚠️ Unaudited |
| TokenManagerPriceHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x238c47619a0cd1f72eef260c44dfdf6ba2a72d79`; avalanche `0xbe3f25bf9bc1bdae9238f3c9153da93fd4e7b927` | ⚠️ Unaudited |
| TokenSeller | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x840f7f25d3d648b108236cad59feb065cf52fe4e`; avalanche `0x9382eae4a70eba53f7ef10a893ea741bd40276d1`; avalanche `0xa41160ec4d1e4664b293fce243b1e90ee2b63924`; avalanche `0xcaf70ff8c4422cd61b34b56a010973b677e2c7d2`; avalanche `0xd0494ef1c07ec5fe131104183ac07bcecdb9e331`; avalanche `0xd16cc5d44f5335f9820ff6bba35523aedf0a54f0`; avalanche `0xfe50799e1ad55416883fef6faabd8faaa249ab30` | ⚠️ Unaudited |
| USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce49cc62f7d7d9982638819da2d61c85c496cfd4` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x074bad007cec473db808b30839e5fe58913b9fe7`; avalanche `0x4714aa6fbf2512b0e3fdf51728a8f1a4ba00e3d0` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x218a656dde22443eda601c49c8bb8bf68e01788f`; avalanche `0xb03b997dab57551bc5b2d188b4117f09d3558b2f` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x40005fb1a4499ace6807c97a43d7077070738765`; avalanche `0x58e94b00cd4680c12d1b929e8ca88b595cde491a` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4db1b26a7faab511f1aed9ba1ac858ca016292de`; avalanche `0xdca6eed843d7b43dcb6df7b734ac603e07255bfc` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x820d685ed07eb8651c56d9da69641626c8cdad83`; avalanche `0x8315f1eb449dd4b779495c3a0b05e5d194446c6e` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb95ba676717becbd4192d6982bbf8fb342344666`; avalanche `0xb9794e1bf5d79cd851a38024752dff800b6b1ce1` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xc36462d7415e75cee6381a879b702a5e0dcdb1ea`; avalanche `0xf0d126ae7d82d653f62a7ee9242534b26b417ef2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x5814eed10d61dea47aeadd74e13de5041ae460a5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1d33a8f4ef64afe411ddcc874993ff1d98d1c3c4`; avalanche `0x5814eed10d61dea47aeadd74e13de5041ae460a5` | ❓ Unverified |
| Proxy (impl: 0x83a71a2f1751d8b895253a05869d966151c86717) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4867ba89c9def89637de5a055456e28e1182fd19`; avalanche `0x83a71a2f1751d8b895253a05869d966151c86717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x040b989fbaac00396be9c4b5b2bb67529dd36992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07e7770cd09c35367ebb16aa812d97d9dfc57373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x086edbbc5028887874604ac13eb99b76fb82e32f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f8820a510969b742db473033d7d14ce863cd31c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fe3dcef555cde3e06c2e9142d7c735c6175a73d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x100be4cb3f669060146fd30bb3b6b3070d794f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x157a6b305ab53496e3e86a9ccc305eac47340a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x196bedc74d18278b3a094db2dd122cea30c02e36`; avalanche `0x8d227bc4fd2f249c32ff079ab727ea984ad9904c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f563b41a4e4996bc65374297a57f00f66a4fa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fdf56d7f502da9722de1085160cf3b3c1b6fb96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21de6900c05b0d7e56449c8ac072ca51e3898374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x231df4d421f1f9e0aae9ba3634a87ebc87a09c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23b592f33668dc9629401d61dc27419b69082632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27512970a7e605ce4ea43e43b41fe54998d07406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29684de154d438c7e961ceb86098c9324c1a6475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f863cd202ffc35b14e5a39e56e0eedb0cc5668f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2fbff23e9b2ee7b5e3a9172b7de2e9b49d901507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37039ef0514fdfb612fff0d65f6767cb90335d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a6f16e3639e83a085812288d16de9883e649d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ab366aaa266bc945a81bd7b7402218749e8e5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40f2d38ac5f66c11f0702cb433610461c765d46d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x420c7036f56a060ec2760f462977131bb57eddd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x442bc926f304719f2e618e9493f3df9705cf514c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4813331976a05ee60e30fb78e0f08d06c7ac27a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ad044c10f4fe334c3b7ae3ff5d73f4c94a9b0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4dcb833641e5b84a4c7e325e04ef020c95ae9aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ea09c554d07182ababb20f8f45b1784511655ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58136cf2ae2f9917d9c438688da2e9fa1b7b71ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5910baf1c637df375b716bf34e42c7f0a3adad3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a559650d16b76bf0c9d4432d64a16a03c55746c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64e4a9d00be54b4e3e5607fdf1fd59f68e00425f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x656c2192e173154b6c46e734b3a8bac8d1bf7037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6969350f206b7e03ea3156905765094346ab2a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dea35cfb1e255da59c15b8b15f6a45f08fa831c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7016e08032cf85ec31526de714a35ce5648e9023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7434c39d4e30f4d01c77f51cec7ba1660ec8fa4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x791cd0fa0a9777464c4e6b95a28fda48098f6088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x847b953fe0d759011df7bc89d5700d757ec73efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84e6964314188f2a1eb58aa2b4c454cc8adea716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84ee560527a0432d53c0f11248ca95714ad453e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8859dc718d4790f0471b65a2c17b5d855f8c4cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b9bec862d8d3fc8f69dea124ff35481cdf22b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e370aef9af9d790e2493011c70beaa0402e95fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f0017fbd52667e4a10f820bd4a546bc44bedb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90bedce467ba98e80721c0f6bbc71afc76860f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90e09b9e267788552ea564d777bba85835f7aaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x959cc0ed7fe58ad0c1623ba0b79b8712a5cc4d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x979249468cc742b4e259356cba04d1919e87c5b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98346e578186f289dc937da180992ad06adc1180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99ab6c5f9d5834dd60156010c362f8d0833fc17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a93cc8058a39722a72488ddcc501e01b905226b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4cc028fe435b2d63dcfb7b404f0e19dd1f72da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa99757bf013f97da4cc77dab34a42a9cef0e5035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad22c8d2300cc6bb1f989e5ee973257dacbaece4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf1cf874b7c2125339e46aa2abe5b0e1d0face30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9f184fac1d5f27de55df6d964dcaa1761c699be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf7d3b01efdb9a7bb21f84ffe5fc3cfa2ccd35dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc31104abbbd585b8a32d86ff4f56cf632af174c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4a438ff302121b89110847f2a00cd93ebb808e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc76d46cec2233f33992e47df2a2889560f32568e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbf1f1caf027519700ccf8fb17a93aeb26ab928b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf56d4965227e27d3adc5ef4a7228fad6e0eacd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd02711b65d9a2d8f6453d22529ba465155f094ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ff61818ae84a8b8ad38215dc549c0719f5cd65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0463f3653d0d1d3b3886bcb0a98fdb616e0bbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe28c655170465047a0639a9a113baeafea303df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe80edcf5d5fe02eeb6ea17f701d5425b02425321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9f304856469e2d263baacd390f598f291b87e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeae9683eac629b2068dee44a3b5d3f8bb981dcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb92d7d97e30687c13fb896d0db86748c9f6ddb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0518fd0fb89deaf7969eb883d56cac8f24153d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf18f6c0955ccccfc0580317920c497eeafbbb468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf394be2fa06f4108f5d5a833d273594cda6ac36d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3d7a4eb29e43a2ce83f33bec1188ce17727c487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf57c54e78045185a37c42b0072f714586028a7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf68b126a6514642594140e948c8a84b86ea6448b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf843f373de3e49031bc70fcc4005922e26655692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcd44a7bc8dc15c88f58c41e45a6f8a9dd5d2d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5986445681f060666f0f10bc71274f71dc099f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xf16784dcaf838a3e16bef7711a62d12413c39bd1` | ArenaFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xf56d524d651b90e4b84dc2fffd83079698b9066e` | ArenaRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
