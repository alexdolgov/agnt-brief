# Agentic Audit Brief: Enclabs

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

- Project: Enclabs (`enclabs`)
- Website: [https://www.enclabs.finance/](https://www.enclabs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: plasma, sonic
- Contract surface: 224 unique implementations (234 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,470.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Enclabs. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across plasma, sonic. Structural roles: 5 core, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), infra (1)
- Contract kinds: contract (6)
- Detected standards: erc1967proxy (2), ownable (2), accesscontrol (1), erc165 (1), ownable2step (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 48 contracts are derived from known codebases. 48 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1053fc8c4eaead1edd5276a58e9bddf1001ba143`, chain 146)
- UnnamedContract (`0x1db5134ee31278809b2d85fab2796141dbe0d041`, chain 146)
- UnnamedContract (`0x1fc1306aa08f688670c1cd8f4b88842009ecbb8e`, chain 146)
- UnnamedContract (`0x26190c71c27e089533186338d16abb2ba9528969`, chain 146)
- UnnamedContract (`0x4cb42ea31c959618bf8fe50e1a10f768ef1a5a36`, chain 146)
- UnnamedContract (`0x62c627e08f996d7d7563e135e527f422fee34786`, chain 146)
- UnnamedContract (`0x7d47cbf5fe9ccf2f99d0c2e8a3c59fb3498bc21b`, chain 146)
- UnnamedContract (`0x7fd79432cc704582235df11b92b783f07ed40e13`, chain 146)
- UnnamedContract (`0x80c2fb5863336a972c3fccdf919d20a4072290da`, chain 146)
- UnnamedContract (`0x876e062420fb9a4861968ec2e0ff91be88142343`, chain 146)
- UnnamedContract (`0x87c69a8fb7f04b7890f48a1577a83788683a2036`, chain 146)
- UnnamedContract (`0x8bc35aee955e2d05c13e4ff503294676508668b5`, chain 146)
- UnnamedContract (`0x947329b3fc503c1f8c9ee9bda244b17d9b052870`, chain 146)
- UnnamedContract (`0x9643cbfc6b21ef65004810121cd5af22acfeab53`, chain 146)
- UnnamedContract (`0xa3f48548562a30a33257a752d396a20b4413e8e3`, chain 146)
- UnnamedContract (`0xabd27b371f4b4b8237454021032090e5c89aafa1`, chain 146)
- UnnamedContract (`0xb068519c3340224c42008c99ecef08d4ad479fe4`, chain 146)
- UnnamedContract (`0xb362916fa55088149ea92e007e153976e2d9b1f1`, chain 146)
- UnnamedContract (`0xb64b8585cece0e314d344c7f6437d97bf1eb0fe7`, chain 146)
- UnnamedContract (`0xbff8cf17b04a057d9a8ce5796a85c60d1f614eab`, chain 146)
- UnnamedContract (`0xc96a4cd13c8fcb9886de0cdf7152b9f930d67e96`, chain 146)
- UnnamedContract (`0xccadfcfaa71407707fb3dc93d7d83950171aa2c9`, chain 146)
- UnnamedContract (`0xd05b05590609c3610161e60eb41ec317c7562408`, chain 146)
- UnnamedContract (`0xd1e8ec6eaed325006731f816f41fd5483373a8f2`, chain 146)
- UnnamedContract (`0xd84bc1ce23883217ea624f64b23f46c41c6acdd0`, chain 146)
- UnnamedContract (`0xe9d1af7d6b44fe94df86029ad75659ff8b0ffaa6`, chain 146)
- UnnamedContract (`0xefb1422a198849f4ab7bf1df7c6aa1ebc4b07115`, chain 146)
- UnnamedContract (`0x02f9d2fe51c5be5b1e1c87c86c205a7348dc5394`, chain 9745)
- UnnamedContract (`0x0781bd52ba23e163afadccb9701681489560db3c`, chain 9745)
- UnnamedContract (`0x149a31c22121bb6253d85436735a9fc1271e1334`, chain 9745)
- UnnamedContract (`0x2e9d14a5e9e20771c7f9afdf9b933e3f0ab09174`, chain 9745)
- UnnamedContract (`0x47a3d161d04dbb332ace645064c29f3b51f947ce`, chain 9745)
- UnnamedContract (`0x52260ad4cb690c6b22629166f4d181477a9c157c`, chain 9745)
- UnnamedContract (`0x53673d37aba538e987678287ddadba543fff4ad9`, chain 9745)
- UnnamedContract (`0x57c919048a3ee5d4b8970b22fb8f8e3ed05475df`, chain 9745)
- UnnamedContract (`0x6e842fb1f84831dc39c6d557089b32f992e64be8`, chain 9745)
- UnnamedContract (`0x7fbcd3cc6b8d853116dc1bcf78c95c334cd987d1`, chain 9745)
- UnnamedContract (`0xcbf3bc6866f3daafbeccb409f387b57d9013e512`, chain 9745)
- UnnamedContract (`0xd89b57ddfab29a8fb553556a01447f506b5e5a37`, chain 9745)
- UnnamedContract (`0xe67b5097b8dc55acecab82102a3042078f016550`, chain 9745)
- UnnamedContract (`0xf2f02ba8a7fbf85bdf44d173833fd6754dacba8d`, chain 9745)
- UnnamedContract (`0xf690a1e115f7a290d228d58a8c0e22b3aa7efd48`, chain 9745)
- AccessControlManager (`0x97dedea6ddfb3f2daf5ec347aa61458f4a1803a8`, chain 146)
- OptimizedTransparentUpgradeableProxy (`0xea231b942a767bfec5c0bae31227c3f0f3cb5566`, chain 146)
- PoolLens (`0x3567b16050cb90236997ef47b1941502e85d65f3`, chain 146)
- TimelockV8 (`0x81c6ed58e5486d3c67196890a4c2d130bc416191`, chain 146)
- UpgradeableBeacon (`0x943358c1871aaf3ba55bd3088cb75a4054736024`, chain 146)
- VTreasuryV8 (`0x172bc36d3f092453ce6f3f9b30f1d6ac365c4ffd`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 47/52 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 47 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 177 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 47 of 224 unique; 177 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 190
- Unique implementations: 224
- Raw deployments: 234
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-384290 | `0x97dedea6ddfb3f2daf5ec347aa61458f4a1803a8` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0x04568db12221d60c93e1db9cb7933ad6b7c4280c` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | n/a | `0x76463494e39e259470301aa1c2b48e2ca4ac9b13` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x53673d37aba538e987678287ddadba543fff4ad9` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0781bd52ba23e163afadccb9701681489560db3c` | ⚠️ Unaudited |
| EnclabsTreveeVeETHManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x84e1a6e4926713b3ab9d488c7dcd36016f381f8a` | ⚠️ Unaudited |
| EnclabsTreveeVeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01d451a101ab5d36b0babda57291dba6dab72e81` | ⚠️ Unaudited |
| EnclabsTreveeVeUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x420b14a72d185bc8025dd73135f4cd452e8e9e4c` | ⚠️ Unaudited |
| EnclabsVeETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d3e2a717b0d43dfb0b76ced9126e1188a3fbcf2` | ⚠️ Unaudited |
| HLP0Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x000d4c6027d2a6f15b1570153a1e696cee9dad4c` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x02f9d2fe51c5be5b1e1c87c86c205a7348dc5394` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fe8960c5bf853d8b019fc84656ab665391016bc` | ⚠️ Unaudited |
| OneJumpOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70996e1ad88396b9fcdf53a5c792053af921fa8a` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x043af3a51eca0b78e79b1978a028b81202ec6934`; sonic `0x21a73850e76016adabdee017ac643eafa9bec59b` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2281dff0ba97cc5649d026b1fac76de8f21491fa`; sonic `0xd0dc9ef6e7cee8f3e0495e141e46f3786c26b7e7` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x2306c741c273a8a179fc0be19bc8062351938b7c`; sonic `0xdea92b8d6f048d554ef4ad1f3a521c034a5c60f3` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x233f1c2df407fe0e5c71986b805f138519d88be4`; sonic `0xb4a466ce600ebbef2a400202cf442e1bb8044c23` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x44c97bd3a1c8343fda004fc87d2614edcfbfe309`; sonic `0x543691069086c48cc9d73c762183ad24b8f2ba52` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x52041acd6a69a1847e4c41c8bdddb0b37dae94f3`; sonic `0xb6937abff7388579f9c7bfce07167bf3f2440e6f` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5b567efae9b3cf5fad9caa131a27962d1e0dc418`; sonic `0x954a86b36b8e06565992a8eef46401d396fc0f4a` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x7fbcd3cc6b8d853116dc1bcf78c95c334cd987d1` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xb9ea44d1aa76d5cfd475c2800e186d3dea2141a4`; sonic `0xf5386d00414e5ca60d321d1b0fb98f7994b759a2` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xc4b0b077e5a5a6dd8372ac7610772fefbbc7b300`; sonic `0xcc2a6b7b751ebaf9fb75632d749cbd2b9f15d7bc` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sonic | unit-384321 | 2 deployments: sonic `0xea231b942a767bfec5c0bae31227c3f0f3cb5566`; sonic `0xefb1422a198849f4ab7bf1df7c6aa1ebc4b07115` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf20dd7f4035a7c77d570832a3a2e9d77e645c6c2` | ⚠️ Unaudited |
| PoolLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-384276 | `0x3567b16050cb90236997ef47b1941502e85d65f3` | ⚠️ Unaudited |
| ProtocolShareReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17184925b542d0a196949fd1cbe891e2852a66aa` | ⚠️ Unaudited |
| ReserveRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c32c3f0bc7236f78bac175deb415c3ce511615b` | ⚠️ Unaudited |
| ResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x57c919048a3ee5d4b8970b22fb8f8e3ed05475df` | ⚠️ Unaudited |
| StableJackYTscUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1caf3df5d5bb31b17d50e8662650da0e89214dde` | ⚠️ Unaudited |
| TimelockV8 | unknown | project_anchor | own_supporting | 0 | sonic | unit-384282 | `0x81c6ed58e5486d3c67196890a4c2d130bc416191` | ⚠️ Unaudited |
| TwoKinksInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fc30e4b68232c69ae35df21067b3802ff436dc9` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | project_anchor | own_supporting | 0 | sonic | unit-384287 | `0x943358c1871aaf3ba55bd3088cb75a4054736024` | ⚠️ Unaudited |
| VTreasuryV8 | unknown | project_anchor | own_supporting | 0 | sonic | unit-384271 | `0x172bc36d3f092453ce6f3f9b30f1d6ac365c4ffd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (190)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05c132e75d2775ca4257fcf824169d99d593ebf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x067041033a967da5535e13edd3c39c3c227cd2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0831cca25b3e8d42d6f63613113c1f7147da0159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b8b8ee19971e34a023dbdc31b6b1ba6684f5d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c9425ecfbd64a96d306f36e8281ee5308446d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0cd08016673592244b9c3d4a2d71f5e973dd3380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e528ae2376bf60b5c6e4c62ae461f422052b457` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384270 | `0x1053fc8c4eaead1edd5276a58e9bddf1001ba143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x11707495f59974de0762c4c64839ea6b9c986c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13d79435f306d155ca2b9af77234c84f80506045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x14515de791c58c430b85d837df3e3ac455b88fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1582d8a007f09ab7fe3a395ebe0c9025dc69889c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1849ea7da75d84b4a0f99fc59c42b6ba4ff11951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b9b4bc21deba16c04cdf3c10a16bbbf9d2aca21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c54582038a8158627e853ef32d8ecf096120783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1d801dc616c79c499c5d38c998ef2d0d6cf868e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384272 | `0x1db5134ee31278809b2d85fab2796141dbe0d041` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384273 | `0x1fc1306aa08f688670c1cd8f4b88842009ecbb8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x23b14321de59dec9adb29c1c744b78c4d453648e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2438f83294230dc72d291928023935bfc215b391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x24bf212592e2f5606571686c411e09c1170752a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384275 | `0x26190c71c27e089533186338d16abb2ba9528969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x27148b9ce2deb735aee5cfa2588ae02a51c49452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x272e2ede3050ee8090aac411ce91ed2e2d1af38a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2931f0a78bf1d4c2f54acbf365b5d83f2bca1be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d6737b2706045bafe3d223f864095055de68000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2df4dc7cf362e56e128816be0f1f4ceb07904bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e08c971ac136d8590ba187f80823c0576343a89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e6f1fac2d14edab7b3ecdf90f8acec33a3440a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3262af4e03d75256608e87134a7981b01f676b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x356aa670e17af25e513e32d9390d3c454a8bce0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x36d3e0d40dd3d4a86889d4fb0b58b987d33ff855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a687810a0372a06e3a916be395fec626d15da92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3b7e99fa6e9aeaeaef0dced4f9de37c104c1966c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e5449bfe47637c7b22ea3a36d59e540eee49a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3ec941f71b860c124328534f72ffea21fcc469c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f0c9dcca72058950327b5d4a5783fb0cba520ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x40ad0ca94a7c09f3a40302fd2de1deb53a38d315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x436c35abcb9299c00b612af99469d88e118fa4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x44d5602e26c1c1fd5f284036023e2750f3d855a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384277 | `0x4cb42ea31c959618bf8fe50e1a10f768ef1a5a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4ffb787ff2c90e7d5790ecb8634d480cf6de14f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52260ad4cb690c6b22629166f4d181477a9c157c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56805a250bd5dea03dd96d8caba83d33394f1576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x568960cac23fcef7275550679da13559abd8c6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x57203a8aec5c03dd48050cd599deb24ba669ad95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5b7e8a53c809b2f15135f79145088672d68e08c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5c12739ce2b0244a6e0305d58e57758c4c03ab64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f5cc88f9f3d5d464195067615b9d7ec1b1118b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x60b17a4c600d79fa803229c3bb537f5d6b5313f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x62870a572e9beb11d71ccbb296bef5bd79df3050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384278 | `0x62c627e08f996d7d7563e135e527f422fee34786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63809843318b0c9406a359981e566cf86dc025e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6770af27fc5233a70b85bff631061400a09d2e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67bf08bc4b9d31ac307c665e0379b3b53b99c9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a3e8215b0c3d422885b2d06d0ffe1de3938fe5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6e4a0887828bcdd444628145d88f73754ced55dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ffd0b54e2b74fdafbcec853145372066fe98fc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x730059630326156b241676995f5630e4231050c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x730935e4f45610ca07dba1b5f3649fa34464d5ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x759bce6a2b852cd1b72f52f8dab1b58cf1d29621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x766b54e32a5866670a1286c1b9039d243b4e6ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7841b77034836725cb9a63608efd900b79511db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79977d67eaeccbc4f681ea61408bfd4e9635625a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384279 | `0x7d47cbf5fe9ccf2f99d0c2e8a3c59fb3498bc21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f1dc57735f0c4bdd78756f74c3824cbbd6f3a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f5635fac36506f131ae5e5a328fea4bfc126d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384280 | `0x7fd79432cc704582235df11b92b783f07ed40e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x801a951aa8486b16dc43dca1dd1a711b5a8f7966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384281 | `0x80c2fb5863336a972c3fccdf919d20a4072290da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x81cbdc9157316bac59db3fc4d8bb8127bb0102fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x824b6b4010ca88ad4a23b056ee14f6cc4d5b1d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83faf223c89306a0ce9efc95ad7e83a5ae11317b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87646a5ac2a77bc7fcad66fa9ef526876bb1c690` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384284 | `0x876e062420fb9a4861968ec2e0ff91be88142343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384285 | `0x87c69a8fb7f04b7890f48a1577a83788683a2036` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384286 | `0x8bc35aee955e2d05c13e4ff503294676508668b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8fbdd2a407412599f9adb250ffdcdaa355e2f5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x91926344ba7d41adace3935a4b03ab4dca1a2115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93749babd99d3c687efd3679bc04762982a014df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384288 | `0x947329b3fc503c1f8c9ee9bda244b17d9b052870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x955622caa15c4cf5f4304952640604cbf12d37f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x96172df1681615231c0d88c459835145f168ade8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384289 | `0x9643cbfc6b21ef65004810121cd5af22acfeab53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9718a4e2e6d4c5ff9c73d27965d98ee6af227f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9888a07c8f3207f125c8f62a2355089a9d65d579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9a202aa6f99352ccc1954539db7dc645a1fbd948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9a734a672dfe2706f68f1d2c95143af3d336fe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9bc5e823fde9228f1bc7436a71126466f688c85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e9e39ce1f7d3e5a22e15535798b4b4d89ad17e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9fbd3988dd9a7a2f1a9c312669f3a4eda462555c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa003fe1b140d8f97c1f5c184c8ccbfe40f946884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0934d49f7f085ca9512c65847e23e536656d46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa1382cef943f60a0d68095773cc0cda2de289c1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa33d5f8b602e6a3f3ac13b5263cda0781c677dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3caddf2523c54de115f9548419f1afa681600f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384291 | `0xa3f48548562a30a33257a752d396a20b4413e8e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa41655d9bf8857d5a134760fb0443d351753aa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaaffec97f5949d8ae8a69c051d4c97fa27ece5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xab1fbee94d9ba79269b3e479ce5d78c60f148716` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384292 | `0xabd27b371f4b4b8237454021032090e5c89aafa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadb266a641f418dedfe57fd9dc56de53909b69e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadd56bc07de2c614bfdb7874e10e1f86b9ca5a80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384293 | `0xb068519c3340224c42008c99ecef08d4ad479fe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384294 | `0xb362916fa55088149ea92e007e153976e2d9b1f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb47a9b06dcb1057b62837084e7daddc8626b6819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb5a3d3c6f6d8ee4a6219922ec8daa21d3127fc36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384295 | `0xb64b8585cece0e314d344c7f6437d97bf1eb0fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb89a9f0e198bd022d2d380613255cd937e2bbb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb9544c7e4fb689bd0decc33de352cf14302930c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb95f8ccbd23a98fb92da2976a170498a6b8d488a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbb67c459ba16be58f3b43f0677a22e5408738cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbb83e937f5b9691326a199ec9df9986b11480436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbbefb9ce83099f5ba80762151a379c6213a2c699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbdc67ab61b43e45df23a7edb063ec16c560e6dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe543d82a03f0f6ea3da3684327b280aeb780eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbf559039a6f485d25cc75887d9feeec2fb9e52f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384296 | `0xbff8cf17b04a057d9a8ce5796a85c60d1f614eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc48fdda5de969f893ed21eb0ce480e504ef74a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc813b15946edf8d997a6d1d156d307509ccaafe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384298 | `0xc96a4cd13c8fcb9886de0cdf7152b9f930d67e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9823a809fdfc4f118095984966153810669515b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9dcab5eb91d1f02e039980840c3e40eab167ee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcbf3bc6866f3daafbeccb409f387b57d9013e512` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384299 | `0xccadfcfaa71407707fb3dc93d7d83950171aa2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd02962dc00a058a00fc07a8aa9f760ab6d9bd163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd03a8525b8bb5d04985c71e3a2b8b19d072a2857` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384300 | `0xd05b05590609c3610161e60eb41ec317c7562408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd157b71f001a08a8b827efc28b4edb3600f0c7b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384302 | `0xd1e8ec6eaed325006731f816f41fd5483373a8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd32392a2cb23c87363f1b2e60a3f5a242e033f10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd4b24311bcdcf50641f5d8a2965e82ba0a1ed7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd730ea9122505fb043a68ee1f128415a5a807606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd731f53edd1cf81d0aa94ac4d07774f58ccc641c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd7e6ba514dd758f6e7637a8421c29395367bdb1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384304 | `0xd84bc1ce23883217ea624f64b23f46c41c6acdd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdb890a57975f984ababc98173142bd1c6ae784d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdde5262d257bb26dcd6ea482f489078ed020cd7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe544e51bf20ab186b6b7b1a9095c8bc1e3f203f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe67b5097b8dc55acecab82102a3042078f016550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe71deb2ab304bb181100cdff018a21e252522154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe9be1c6c06a3bf6987bebd5ad261b5bda18927f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384305 | `0xe9d1af7d6b44fe94df86029ad75659ff8b0ffaa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeab0755a040be5b707f80c29df100a6a484de316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf100f6adfba11337062068334bff73dc1d8b25c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf50466320de462627f929f7f631206653c10c0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf57e2aaead500d083fdc59c6fcac6eae3364e391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa24b79af1e6a287a3aad7229216f8930d4daccb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384306 | `0x02f9d2fe51c5be5b1e1c87c86c205a7348dc5394` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384307 | `0x0781bd52ba23e163afadccb9701681489560db3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384308 | `0x149a31c22121bb6253d85436735a9fc1271e1334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x172bc36d3f092453ce6f3f9b30f1d6ac365c4ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1fc1306aa08f688670c1cd8f4b88842009ecbb8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x213824b154458edb345921bb864d741e285b99f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x24bf212592e2f5606571686c411e09c1170752a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384309 | `0x2e9d14a5e9e20771c7f9afdf9b933e3f0ab09174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3567b16050cb90236997ef47b1941502e85d65f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x40ad0ca94a7c09f3a40302fd2de1deb53a38d315` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384310 | `0x47a3d161d04dbb332ace645064c29f3b51f947ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4cb42ea31c959618bf8fe50e1a10f768ef1a5a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4e8f2f9f3bf488748c6c16158b6496b0bcc14c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384311 | `0x52260ad4cb690c6b22629166f4d181477a9c157c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384312 | `0x53673d37aba538e987678287ddadba543fff4ad9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384313 | `0x57c919048a3ee5d4b8970b22fb8f8e3ed05475df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5da8fd0a6b4efb4c069c362caec2d77ab858df26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5f86c923ce19315185c0775eff74ba818b512139` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384314 | `0x6e842fb1f84831dc39c6d557089b32f992e64be8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384315 | `0x7fbcd3cc6b8d853116dc1bcf78c95c334cd987d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x81c6ed58e5486d3c67196890a4c2d130bc416191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x87c69a8fb7f04b7890f48a1577a83788683a2036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9643cbfc6b21ef65004810121cd5af22acfeab53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x966458073590b43b1a69d698f64d9f6b784aa2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x97dedea6ddfb3f2daf5ec347aa61458f4a1803a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa3f48548562a30a33257a752d396a20b4413e8e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa82846aefcc2de156b61f7f5c35c5a4680d5d297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xabd27b371f4b4b8237454021032090e5c89aafa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb068519c3340224c42008c99ecef08d4ad479fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbad1e57ebf56bacb7c39e3ddcd8fe4dcc2fd4198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc96a4cd13c8fcb9886de0cdf7152b9f930d67e96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384316 | `0xcbf3bc6866f3daafbeccb409f387b57d9013e512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xccadfcfaa71407707fb3dc93d7d83950171aa2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd05b05590609c3610161e60eb41ec317c7562408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd84bc1ce23883217ea624f64b23f46c41c6acdd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384317 | `0xd89b57ddfab29a8fb553556a01447f506b5e5a37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384318 | `0xe67b5097b8dc55acecab82102a3042078f016550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe9d1af7d6b44fe94df86029ad75659ff8b0ffaa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xea231b942a767bfec5c0bae31227c3f0f3cb5566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xefb1422a198849f4ab7bf1df7c6aa1ebc4b07115` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384319 | `0xf2f02ba8a7fbf85bdf44d173833fd6754dacba8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384320 | `0xf690a1e115f7a290d228d58a8c0e22b3aa7efd48` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 158
- Live contracts: 0
- Unknown liveness contracts: 158
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=158

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| plasma | unverified unclassified | UnnamedContract<br>`0x172bc36d3f092453ce6f3f9b30f1d6ac365c4ffd` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x1fc1306aa08f688670c1cd8f4b88842009ecbb8e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x213824b154458edb345921bb864d741e285b99f4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x24bf212592e2f5606571686c411e09c1170752a8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x3567b16050cb90236997ef47b1941502e85d65f3` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x40ad0ca94a7c09f3a40302fd2de1deb53a38d315` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x4cb42ea31c959618bf8fe50e1a10f768ef1a5a36` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x4e8f2f9f3bf488748c6c16158b6496b0bcc14c79` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x5da8fd0a6b4efb4c069c362caec2d77ab858df26` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x5f86c923ce19315185c0775eff74ba818b512139` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x81c6ed58e5486d3c67196890a4c2d130bc416191` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x87c69a8fb7f04b7890f48a1577a83788683a2036` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x9643cbfc6b21ef65004810121cd5af22acfeab53` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x966458073590b43b1a69d698f64d9f6b784aa2ea` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0x97dedea6ddfb3f2daf5ec347aa61458f4a1803a8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xa3f48548562a30a33257a752d396a20b4413e8e3` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xa82846aefcc2de156b61f7f5c35c5a4680d5d297` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xabd27b371f4b4b8237454021032090e5c89aafa1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xb068519c3340224c42008c99ecef08d4ad479fe4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xbad1e57ebf56bacb7c39e3ddcd8fe4dcc2fd4198` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xc96a4cd13c8fcb9886de0cdf7152b9f930d67e96` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xccadfcfaa71407707fb3dc93d7d83950171aa2c9` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xd05b05590609c3610161e60eb41ec317c7562408` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xd84bc1ce23883217ea624f64b23f46c41c6acdd0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xe9d1af7d6b44fe94df86029ad75659ff8b0ffaa6` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xea231b942a767bfec5c0bae31227c3f0f3cb5566` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| plasma | unverified unclassified | UnnamedContract<br>`0xefb1422a198849f4ab7bf1df7c6aa1ebc4b07115` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x05c132e75d2775ca4257fcf824169d99d593ebf1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x067041033a967da5535e13edd3c39c3c227cd2b9` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0831cca25b3e8d42d6f63613113c1f7147da0159` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0b8b8ee19971e34a023dbdc31b6b1ba6684f5d9c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0c9425ecfbd64a96d306f36e8281ee5308446d31` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0cd08016673592244b9c3d4a2d71f5e973dd3380` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0e528ae2376bf60b5c6e4c62ae461f422052b457` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x11707495f59974de0762c4c64839ea6b9c986c30` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x13d79435f306d155ca2b9af77234c84f80506045` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x14515de791c58c430b85d837df3e3ac455b88fed` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1582d8a007f09ab7fe3a395ebe0c9025dc69889c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1849ea7da75d84b4a0f99fc59c42b6ba4ff11951` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1b9b4bc21deba16c04cdf3c10a16bbbf9d2aca21` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1c54582038a8158627e853ef32d8ecf096120783` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1d801dc616c79c499c5d38c998ef2d0d6cf868e8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x21a73850e76016adabdee017ac643eafa9bec59b` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x23b14321de59dec9adb29c1c744b78c4d453648e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2438f83294230dc72d291928023935bfc215b391` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x24bf212592e2f5606571686c411e09c1170752a8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x27148b9ce2deb735aee5cfa2588ae02a51c49452` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x272e2ede3050ee8090aac411ce91ed2e2d1af38a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2931f0a78bf1d4c2f54acbf365b5d83f2bca1be9` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2d6737b2706045bafe3d223f864095055de68000` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2df4dc7cf362e56e128816be0f1f4ceb07904bb0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2e08c971ac136d8590ba187f80823c0576343a89` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2e6f1fac2d14edab7b3ecdf90f8acec33a3440a8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3262af4e03d75256608e87134a7981b01f676b10` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x356aa670e17af25e513e32d9390d3c454a8bce0f` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x36d3e0d40dd3d4a86889d4fb0b58b987d33ff855` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3a687810a0372a06e3a916be395fec626d15da92` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3b7e99fa6e9aeaeaef0dced4f9de37c104c1966c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3e5449bfe47637c7b22ea3a36d59e540eee49a96` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3ec941f71b860c124328534f72ffea21fcc469c0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3f0c9dcca72058950327b5d4a5783fb0cba520ce` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x40ad0ca94a7c09f3a40302fd2de1deb53a38d315` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x436c35abcb9299c00b612af99469d88e118fa4d1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x44d5602e26c1c1fd5f284036023e2750f3d855a0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4ffb787ff2c90e7d5790ecb8634d480cf6de14f0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x52260ad4cb690c6b22629166f4d181477a9c157c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x543691069086c48cc9d73c762183ad24b8f2ba52` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x56805a250bd5dea03dd96d8caba83d33394f1576` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x568960cac23fcef7275550679da13559abd8c6df` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x57203a8aec5c03dd48050cd599deb24ba669ad95` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5b7e8a53c809b2f15135f79145088672d68e08c1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5c12739ce2b0244a6e0305d58e57758c4c03ab64` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5f5cc88f9f3d5d464195067615b9d7ec1b1118b0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x60b17a4c600d79fa803229c3bb537f5d6b5313f3` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x62870a572e9beb11d71ccbb296bef5bd79df3050` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x63809843318b0c9406a359981e566cf86dc025e1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6770af27fc5233a70b85bff631061400a09d2e1c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x67bf08bc4b9d31ac307c665e0379b3b53b99c9aa` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6a3e8215b0c3d422885b2d06d0ffe1de3938fe5c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6e4a0887828bcdd444628145d88f73754ced55dc` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6ffd0b54e2b74fdafbcec853145372066fe98fc1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x730059630326156b241676995f5630e4231050c9` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x730935e4f45610ca07dba1b5f3649fa34464d5ed` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x759bce6a2b852cd1b72f52f8dab1b58cf1d29621` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x766b54e32a5866670a1286c1b9039d243b4e6ec6` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7841b77034836725cb9a63608efd900b79511db0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x79977d67eaeccbc4f681ea61408bfd4e9635625a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7f1dc57735f0c4bdd78756f74c3824cbbd6f3a7a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7f5635fac36506f131ae5e5a328fea4bfc126d85` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x801a951aa8486b16dc43dca1dd1a711b5a8f7966` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x81cbdc9157316bac59db3fc4d8bb8127bb0102fd` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x824b6b4010ca88ad4a23b056ee14f6cc4d5b1d01` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x83faf223c89306a0ce9efc95ad7e83a5ae11317b` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x87646a5ac2a77bc7fcad66fa9ef526876bb1c690` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8fbdd2a407412599f9adb250ffdcdaa355e2f5c1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x91926344ba7d41adace3935a4b03ab4dca1a2115` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x93749babd99d3c687efd3679bc04762982a014df` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x954a86b36b8e06565992a8eef46401d396fc0f4a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x955622caa15c4cf5f4304952640604cbf12d37f5` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x96172df1681615231c0d88c459835145f168ade8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9718a4e2e6d4c5ff9c73d27965d98ee6af227f18` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9888a07c8f3207f125c8f62a2355089a9d65d579` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9a202aa6f99352ccc1954539db7dc645a1fbd948` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9a734a672dfe2706f68f1d2c95143af3d336fe90` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9bc5e823fde9228f1bc7436a71126466f688c85e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9e9e39ce1f7d3e5a22e15535798b4b4d89ad17e0` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9fbd3988dd9a7a2f1a9c312669f3a4eda462555c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa003fe1b140d8f97c1f5c184c8ccbfe40f946884` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa0934d49f7f085ca9512c65847e23e536656d46e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa1382cef943f60a0d68095773cc0cda2de289c1d` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa33d5f8b602e6a3f3ac13b5263cda0781c677dc1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa3caddf2523c54de115f9548419f1afa681600f4` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa41655d9bf8857d5a134760fb0443d351753aa6f` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xaaffec97f5949d8ae8a69c051d4c97fa27ece5d5` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xab1fbee94d9ba79269b3e479ce5d78c60f148716` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xadb266a641f418dedfe57fd9dc56de53909b69e7` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xadd56bc07de2c614bfdb7874e10e1f86b9ca5a80` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb47a9b06dcb1057b62837084e7daddc8626b6819` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb4a466ce600ebbef2a400202cf442e1bb8044c23` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb5a3d3c6f6d8ee4a6219922ec8daa21d3127fc36` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb6937abff7388579f9c7bfce07167bf3f2440e6f` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb89a9f0e198bd022d2d380613255cd937e2bbb41` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb9544c7e4fb689bd0decc33de352cf14302930c2` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb95f8ccbd23a98fb92da2976a170498a6b8d488a` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbb67c459ba16be58f3b43f0677a22e5408738cdc` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbb83e937f5b9691326a199ec9df9986b11480436` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbbefb9ce83099f5ba80762151a379c6213a2c699` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbdc67ab61b43e45df23a7edb063ec16c560e6dcc` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbe543d82a03f0f6ea3da3684327b280aeb780eaa` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbf559039a6f485d25cc75887d9feeec2fb9e52f8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc48fdda5de969f893ed21eb0ce480e504ef74a3e` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc813b15946edf8d997a6d1d156d307509ccaafe7` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc9823a809fdfc4f118095984966153810669515b` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc9dcab5eb91d1f02e039980840c3e40eab167ee3` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xcbf3bc6866f3daafbeccb409f387b57d9013e512` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xcc2a6b7b751ebaf9fb75632d749cbd2b9f15d7bc` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd02962dc00a058a00fc07a8aa9f760ab6d9bd163` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd03a8525b8bb5d04985c71e3a2b8b19d072a2857` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd0dc9ef6e7cee8f3e0495e141e46f3786c26b7e7` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd157b71f001a08a8b827efc28b4edb3600f0c7b9` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd32392a2cb23c87363f1b2e60a3f5a242e033f10` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd4b24311bcdcf50641f5d8a2965e82ba0a1ed7f1` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd730ea9122505fb043a68ee1f128415a5a807606` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd731f53edd1cf81d0aa94ac4d07774f58ccc641c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd7e6ba514dd758f6e7637a8421c29395367bdb1d` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xdb890a57975f984ababc98173142bd1c6ae784d9` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xdde5262d257bb26dcd6ea482f489078ed020cd7c` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xdea92b8d6f048d554ef4ad1f3a521c034a5c60f3` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xe544e51bf20ab186b6b7b1a9095c8bc1e3f203f5` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xe67b5097b8dc55acecab82102a3042078f016550` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xe71deb2ab304bb181100cdff018a21e252522154` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xe9be1c6c06a3bf6987bebd5ad261b5bda18927f8` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xeab0755a040be5b707f80c29df100a6a484de316` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xf100f6adfba11337062068334bff73dc1d8b25c5` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xf50466320de462627f929f7f631206653c10c0b7` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xf5386d00414e5ca60d321d1b0fb98f7994b759a2` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xf57e2aaead500d083fdc59c6fcac6eae3364e391` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |
| sonic | unverified unclassified | UnnamedContract<br>`0xfa24b79af1e6a287a3aad7229216f8930d4daccb` | non_address_book | unknown | unknown | unverified | n/a | `0xfc48ee59b365028dcc533750754330c18d359e27` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audits](https://enclabs.gitbook.io/enclabs-documentation/security-and-audits/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19732] Audits — no match: The provided text is not an audit report; it is a documentation page referencing Venus Protocol audits without listing any contracts in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x97dedea6ddfb3f2daf5ec347aa61458f4a1803a8` | AccessControlManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xea231b942a767bfec5c0bae31227c3f0f3cb5566` | OptimizedTransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3567b16050cb90236997ef47b1941502e85d65f3` | PoolLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x81c6ed58e5486d3c67196890a4c2d130bc416191` | TimelockV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x172bc36d3f092453ce6f3f9b30f1d6ac365c4ffd` | VTreasuryV8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 190 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [19732] Audits

Fork inheritance lineage and inherited audits are included when available.
