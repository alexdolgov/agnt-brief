# Agentic Audit Brief: Enclabs

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Enclabs (`enclabs`)
- Website: [https://www.enclabs.finance/](https://www.enclabs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: plasma, sonic
- Contract surface: 75 unique implementations (76 raw deployments)
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
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 47 of 75 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 75
- Raw deployments: 76
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
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x043af3a51eca0b78e79b1978a028b81202ec6934` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x2281dff0ba97cc5649d026b1fac76de8f21491fa` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x2306c741c273a8a179fc0be19bc8062351938b7c` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x233f1c2df407fe0e5c71986b805f138519d88be4` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x44c97bd3a1c8343fda004fc87d2614edcfbfe309` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x52041acd6a69a1847e4c41c8bdddb0b37dae94f3` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x5b567efae9b3cf5fad9caa131a27962d1e0dc418` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x7fbcd3cc6b8d853116dc1bcf78c95c334cd987d1` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xb9ea44d1aa76d5cfd475c2800e186d3dea2141a4` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xc4b0b077e5a5a6dd8372ac7610772fefbbc7b300` | ⚠️ Unaudited |
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

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384270 | `0x1053fc8c4eaead1edd5276a58e9bddf1001ba143` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384272 | `0x1db5134ee31278809b2d85fab2796141dbe0d041` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384273 | `0x1fc1306aa08f688670c1cd8f4b88842009ecbb8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384275 | `0x26190c71c27e089533186338d16abb2ba9528969` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384277 | `0x4cb42ea31c959618bf8fe50e1a10f768ef1a5a36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384278 | `0x62c627e08f996d7d7563e135e527f422fee34786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384279 | `0x7d47cbf5fe9ccf2f99d0c2e8a3c59fb3498bc21b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384280 | `0x7fd79432cc704582235df11b92b783f07ed40e13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384281 | `0x80c2fb5863336a972c3fccdf919d20a4072290da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384284 | `0x876e062420fb9a4861968ec2e0ff91be88142343` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384285 | `0x87c69a8fb7f04b7890f48a1577a83788683a2036` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384286 | `0x8bc35aee955e2d05c13e4ff503294676508668b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384288 | `0x947329b3fc503c1f8c9ee9bda244b17d9b052870` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384289 | `0x9643cbfc6b21ef65004810121cd5af22acfeab53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384291 | `0xa3f48548562a30a33257a752d396a20b4413e8e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384292 | `0xabd27b371f4b4b8237454021032090e5c89aafa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384293 | `0xb068519c3340224c42008c99ecef08d4ad479fe4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384294 | `0xb362916fa55088149ea92e007e153976e2d9b1f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384295 | `0xb64b8585cece0e314d344c7f6437d97bf1eb0fe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384296 | `0xbff8cf17b04a057d9a8ce5796a85c60d1f614eab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384298 | `0xc96a4cd13c8fcb9886de0cdf7152b9f930d67e96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384299 | `0xccadfcfaa71407707fb3dc93d7d83950171aa2c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384300 | `0xd05b05590609c3610161e60eb41ec317c7562408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384302 | `0xd1e8ec6eaed325006731f816f41fd5483373a8f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384304 | `0xd84bc1ce23883217ea624f64b23f46c41c6acdd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-384305 | `0xe9d1af7d6b44fe94df86029ad75659ff8b0ffaa6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384306 | `0x02f9d2fe51c5be5b1e1c87c86c205a7348dc5394` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384307 | `0x0781bd52ba23e163afadccb9701681489560db3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384308 | `0x149a31c22121bb6253d85436735a9fc1271e1334` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384309 | `0x2e9d14a5e9e20771c7f9afdf9b933e3f0ab09174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384310 | `0x47a3d161d04dbb332ace645064c29f3b51f947ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384311 | `0x52260ad4cb690c6b22629166f4d181477a9c157c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384312 | `0x53673d37aba538e987678287ddadba543fff4ad9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384313 | `0x57c919048a3ee5d4b8970b22fb8f8e3ed05475df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384314 | `0x6e842fb1f84831dc39c6d557089b32f992e64be8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384315 | `0x7fbcd3cc6b8d853116dc1bcf78c95c334cd987d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384316 | `0xcbf3bc6866f3daafbeccb409f387b57d9013e512` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384317 | `0xd89b57ddfab29a8fb553556a01447f506b5e5a37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384318 | `0xe67b5097b8dc55acecab82102a3042078f016550` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384319 | `0xf2f02ba8a7fbf85bdf44d173833fd6754dacba8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-384320 | `0xf690a1e115f7a290d228d58a8c0e22b3aa7efd48` | ❓ Unverified |

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
| needs_review | 41 |

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
