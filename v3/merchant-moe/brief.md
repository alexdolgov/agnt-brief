# Agentic Audit Brief: Merchant Moe

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Merchant Moe (`merchant-moe`)
- Website: [https://merchantmoe.com/](https://merchantmoe.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: mantle
- Contract surface: 77 unique implementations (150 raw deployments)
- Coverage basis: 13/17 confirmed own live verified implementations (76.5%); conservative 76.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,069,354.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Merchant Moe. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across mantle. Structural roles: 12 core, 7 supporting. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (12), supporting (7)
- Contract kinds: contract (19)
- Detected standards: ownable (12), ownable2step (11), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (10)
- Upgradeable-pattern rows: 10

## Fork Analysis

1 of 19 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

**LBFactory** (`0xa6630671775c4ea2743840f9a5016dcf2a104054`, chain 5000)
Origin: lynx (`0x39d966...d6ee43`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- JoeStaking (`0x7fb0fc8514d817c655276a2895307176f253d303`, chain 5000)
- JoeStakingRewarder (`0x1d16326ba904546b4da88d357dd556ebe1f08dd6`, chain 5000)
- LBRouter (`0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a`, chain 5000)
- MasterChef (`0xd4bd5e47548d8a6ba2a0bf4ce073cbf8fa523dcc`, chain 5000)
- MasterChefRewarder (`0xcc076c7c657dcafc738991297903610896d2e938`, chain 5000)
- Moe (`0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9`, chain 5000)
- MoeFactory (`0x5bef015ca9424a7c07b68490616a4c1f094bedec`, chain 5000)
- MoePair (`0x08477e01a19d44c31e4c11dc2ac86e3bbe69c28b`, chain 5000)
- MoeRouter (`0xeaee7ee68874218c3558b40063c42b82d3e7232a`, chain 5000)
- MoeStaking (`0xe92249760e1443fbbea45b03f607ba84471fa793`, chain 5000)
- OdosRouterV2 (`0xd9f4e85489adcd0baf0cd63b4231c6af58c26745`, chain 5000)
- RewarderFactory (`0x18d3f4df4959503c5f2c8b562da3118939890025`, chain 5000)
- Router (`0x45a62b090df48243f12a21897e7ed91863e2c86b`, chain 5000)
- StableMoe (`0x5ab84d68892e565a8bf077a39481d5f69edaac02`, chain 5000)
- TransparentUpgradeableProxy2Step (`0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116`, chain 5000)
- TransparentUpgradeableProxy2Step (`0xb5bd280567c5a62df1a5570c88e63a5670cba22d`, chain 5000)
- VeMoe (`0x240616e2448e078934863fb6eb5133834bf14ef1`, chain 5000)
- VeMoeRewarder (`0x151b82ca3a0c9da9dfde200f9c527cd89dd6aea8`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/17 (76.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 60 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 17 of 77 unique; 60 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 13/46
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 77
- Raw deployments: 150
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 13 | 28.3% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| JoeStaking | unknown | project_anchor | own_supporting | 0 | mantle | unit-266943 | `0x7fb0fc8514d817c655276a2895307176f253d303` | ✅ Audited |
| JoeStakingRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266938 | `0x1d16326ba904546b4da88d357dd556ebe1f08dd6` | ✅ Audited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | mantle | unit-266946 | `0xd4bd5e47548d8a6ba2a0bf4ce073cbf8fa523dcc` | ✅ Audited |
| MasterChefRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266945 | `0xcc076c7c657dcafc738991297903610896d2e938` | ✅ Audited |
| Moe | unknown | project_anchor | own_supporting | 0 | mantle | unit-266940 | `0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9` | ✅ Audited |
| MoeFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-266942 | `0x5bef015ca9424a7c07b68490616a4c1f094bedec` | ✅ Audited |
| MoePair | unknown | project_anchor | own_supporting | 0 | mantle | unit-266935 | `0x08477e01a19d44c31e4c11dc2ac86e3bbe69c28b` | ✅ Audited |
| MoeRouter | adapter | project_anchor | own_supporting | 0 | mantle | unit-266948 | `0xeaee7ee68874218c3558b40063c42b82d3e7232a` | ✅ Audited |
| MoeStaking | unknown | project_anchor | own_supporting | 1 | mantle | unit-266950 | 2 deployments: mantle `0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116`; mantle `0xe92249760e1443fbbea45b03f607ba84471fa793` | ✅ Audited |
| RewarderFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-266937 | `0x18d3f4df4959503c5f2c8b562da3118939890025` | ✅ Audited |
| StableMoe | unknown | project_anchor | own_supporting | 1 | mantle | unit-266949 | 2 deployments: mantle `0x5ab84d68892e565a8bf077a39481d5f69edaac02`; mantle `0xb5bd280567c5a62df1a5570c88e63a5670cba22d` | ✅ Audited |
| VeMoe | unknown | project_anchor | own_supporting | 0 | mantle | unit-266939 | `0x240616e2448e078934863fb6eb5133834bf14ef1` | ✅ Audited |
| VeMoeRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266936 | `0x151b82ca3a0c9da9dfde200f9c527cd89dd6aea8` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FakeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa489e95b5586bb340ebd8d4b83f0485609fb8467` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x97c62c289e3a76104f0e73db62bfa05fb9658b63` | ⚠️ Unaudited |
| FeeConverterOdos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xae63213b0c22f0e7fff46c1b1cdf9d07ed307298`; mantle `0xf4a9292d2192bfa7740647f8d06762d0e9124e8c` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x982ce53ab2c9d7b841af04d8df87879f73929b12` | ⚠️ Unaudited |
| ForwarderLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xb0787776ff90881cec3a0b8e3e91973e6183c146`; mantle `0xc04f291347d21dc663f7646056db22bff8ce8430` | ⚠️ Unaudited |
| JoeDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x0f60a665d2f1002b58e7c43a91953138fa61effa`; mantle `0x511914365607075c12696b713f3eda20f27a86b3` | ⚠️ Unaudited |
| JoeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x79f316c45e9b62638a8304ffffa9806439b69d44` | ⚠️ Unaudited |
| JoeStakingRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x1fadd24ddb620d78dab888f86ad468bd9cff6c93`; mantle `0xed6436a1b91f9a40bd44151f7ea81b45a3f17f92` | ⚠️ Unaudited |
| LBFactory | registry | project_anchor | own_supporting | 0 | mantle | unit-266944 | `0xa6630671775c4ea2743840f9a5016dcf2a104054` | ⚠️ Unaudited |
| LBPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf6863db7323aac43fe8aef0b3ef63aa6b32ddb3b` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe25dc29b856d5a6df45b5d854ccf9223d716f46d` | ⚠️ Unaudited |
| LBRouter | adapter | project_anchor | own_supporting | 0 | mantle | unit-266934 | `0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a` | ⚠️ Unaudited |
| LBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xafb85a12babfafabfe1a518594492d5a830e782a` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x0ca2d37789975be459ec08131df1a170fcfd2739`; mantle `0x10cc20df4f69bfeca8283d68c48fa5b1d4a3e9e6`; mantle `0x3fef7c40ed721d149524b7d94029c4bf949a871e`; mantle `0x76d8d0e37f697cc95c87f0ba9512701cf19b0cb5`; mantle `0xace736070a9642f7df468e7a65f18344acdc79b3`; mantle `0xeb1d0861f15675f6550f167388479491fa73ce2a` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xa756f7d419e1a5cbd656a438443011a7de1955b5` | ⚠️ Unaudited |
| MasterChefRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 7 deployments: mantle `0x2759a51fc109bc7c4d227e526e148e22f90a2678`; mantle `0x3b3a66124db1d4dfaebd1a537740dbc0bb9a5181`; mantle `0x4141bec8a681aa3c803b1233e30c5a9cca11b61a`; mantle `0x6b9b717e56bb1c432115d748fc6cf40cbd132b33`; mantle `0x75f0d016f85268991141164cd1144f855c5a0875`; mantle `0xb02e02993fa715e29319435636fd49d6567167fd`; mantle `0xf5d738a8e03fc100fc23c25bb4678ed1aa310012` | ⚠️ Unaudited |
| Moe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8764ab3d025351839c8972919e1608425d161494` | ⚠️ Unaudited |
| MoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xc850df60d45c2845580e255191f1f469f592c5d2`; mantle `0xea2a8c55c6df7267c778e4d26cd3877d006846e0` | ⚠️ Unaudited |
| MoeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x3f0e209213d93508a451d521fd758cbc3b78ca90`; mantle `0xfe8b6aaf50212939b52558e8813b62c9212d2d7a` | ⚠️ Unaudited |
| MoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x768571ab818d5fae3bf7b137f7364e6148c8de7a`; mantle `0xaa61e8db8983582bfd7786fea681e7bb237698ba`; mantle `0xdab59901c1cd2c43a63b575704d150c777da1f55` | ⚠️ Unaudited |
| MoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcb61a1a9c21fb30b95fa4118c97da350f6c8468b` | ⚠️ Unaudited |
| MoeQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x1d0657af320b7108919e4ef0616ef6cd005be1a4`; mantle `0x1e47b39840b8b766ef33af58bd38c41c6831e99d`; mantle `0x72b507a4799815adc30083925f748210e92b59f4` | ⚠️ Unaudited |
| MoeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xaf627839850143043415925bc77c00c01effdeb8`; mantle `0xf311d54d81ea264d217e0e67442785d132376ce5` | ⚠️ Unaudited |
| OdosRouterV2 | adapter | project_anchor | own_supporting | 0 | mantle | unit-266947 | `0xd9f4e85489adcd0baf0cd63b4231c6af58c26745` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7dc21ae1572350bf17e89f9e44e1b8b59240c579` | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x886523e92c7624825307626bdf5cbabc6ff6af2a`; mantle `0xc96543130015b69ec282668f0f82195a87c06429` | ⚠️ Unaudited |
| RewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xe283db759720982094de7fc6edc49d3adf848943` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | mantle | unit-266941 | `0x45a62b090df48243f12a21897e7ed91863e2c86b` | ⚠️ Unaudited |
| RouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x4e2abccf08bb2103f5dc9c6517fcf34cc163ff20`; mantle `0xb35033d71cf5e13cab5eb8618260f94363dff9cf` | ⚠️ Unaudited |
| VeMoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4ceabd15438b52ce553d740b27ec2cd27f920e4c` | ⚠️ Unaudited |
| VeMoe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x55160b0f39848a7b844f3a562210489df301dee7` | ⚠️ Unaudited |
| VeMoeRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x247af24753e2f7320bf4e66853216fd50abfdcf1`; mantle `0x7399aa9d2b71fdb943f6328a88b47502cb55b1e5`; mantle `0x8eb08451b9062fffc0fc62ad9d54669c931ee254`; mantle `0xa3a1a6300adb65a5141808b9997a4cf4c12daaa5`; mantle `0xbbf381aaeed7941907444675dc30acb79c28136c`; mantle `0xda781a8f8fb5fffd3d9ead0e84e26e8e6c84f2c4` | ⚠️ Unaudited |
| VestingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 43 deployments: mantle `0x057b2f6cc9b17497613435c6590d2e601ad47494`; mantle `0x0a7a826a2777039a1f176de90a13221795712048`; mantle `0x1549de86b2de4f619663841b276b1a62002a14f6`; mantle `0x183d63d64a315f014364b783247590895cc1b02c`; mantle `0x1c6c83e02f04da4b0db2b717ebdd1407290c87e8`; mantle `0x1fbfc1a4806bb73ed72993dbfa0a34cda51e9fec`; mantle `0x3152999f15a1e3edccdd05eed143b02d7905a8c5`; mantle `0x3905f58e6cf1d43b113ec29f89b679ac87c157cd`; mantle `0x3f6cc17c2264602eb23ee94388f04741deeec185`; mantle `0x4281776370021340a177fa6ccb402af2e6deb515`; mantle `0x4a984bdb9c3afaf9ce4ce5395a574626b1e8cb8e`; mantle `0x4d46b8ddb2933ad38ec8348acf00ecc61870f0b5`; mantle `0x50554cd786afae7a8227ad21f4b8500212c62fe7`; mantle `0x55d86a8f06856a902e2724cb8467c61bff7bb554`; mantle `0x55e5838e92fc2d6fb46eeae211c0bfa93783b689`; mantle `0x55edc7181ff91b877831955e44af9694f3993fbb`; mantle `0x60fded031978c746aba21332772732a1ac332d7c`; mantle `0x62fb9b611be09721868a667265c14b15e2314a75`; mantle `0x70cd9e5b1e1a1ab35c4144e8769b3b3996be6c2f`; mantle `0x7520ae33119050974c27ced58585f8c50c267c85`; mantle `0x78bb8f32bbcf2fb36d66508361a5f003fe02894f`; mantle `0x7c70188b5c38eb8e6cfc6cb46c12311e5302dd8b`; mantle `0x82e8aef80ba26a87ee051eecbf28ce4da9d6855b`; mantle `0x83d76d96340f39b2fd2d8b1867d6488933e64d0b`; mantle `0x8d8d3bdd4d8973ea4aca9e7d699e1c7d711b00ce`; mantle `0x9208032889f9379b0b34ad10f31dc88dd0a925da`; mantle `0x9b5b4c16dd7f5d7c378d5ac739060e4f3d93de31`; mantle `0x9b86c2338ede1722a0dd4941561cd8e19080300f`; mantle `0xa0e97c9ee82cbfc5c5da12152d7a23b88d89dde1`; mantle `0xb342bff904dbc952771ce03ec76c980f9a695554`; mantle `0xb9e9dc0f31f6756558686a8f6948bdbd1798f4c4`; mantle `0xb9f72c2e027a7edc4596159c1e77d53d8e512295`; mantle `0xc20ba477ad531427ca82dc83beb96c272143dc9f`; mantle `0xd9ecef5b44482834c101bf8e96a71814a8726ef0`; mantle `0xe273bf03c2278fa8889748e2b1af2006fc6f9c22`; mantle `0xe4d55ad239fd84fde69c98c2c96596eef0b9c747`; mantle `0xe660b72d30b89e4be2a2c89263bd6b7147d544a9`; mantle `0xe887789bfd5f9b6e664bc12adc1dfe692e5d2948`; mantle `0xeff8ee9e20ebf6b12dc091ae3771fcd1c5047c1c`; mantle `0xfbdd0927dc70076810888242ed104995d98161f0`; mantle `0xfd0adbac0a68082bcaaa8d4cbab85b8d5a01a291`; mantle `0xfd40854b1f9113fd574640a6ef9fa55efa4afde3`; mantle `0xffdeab5342e5370773a88b4fe0a6016c0f741602` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0318394084c5da8c35a6a2d274518a4a1eb89eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0980d129a85659cc4e40e5db6d9926472e658aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x227dfd9fa88bfe186682f3a45597bac051742e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x28104d4f703ee5b5011cefe106f54efd56f33f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2d8879046f1559e53eb052e949e9544bcb72f414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x46ba84780f9a7b34c8b0e24df07a260fa952195d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x501b8afd35df20f531ff45f6f695793ac3316c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x57ff9d1a7cf23fd1a9fd9dc07823f950a22a718c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5cf0dc0fd208f8f1b386792eeb22125c2ec0049e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x654677554c9b81263b638c2d6d78d6b7322944c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7097f097ca0e3a3ed7ba23116b8ba14c37e61476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x794373811a81a25afe479171486e65d6eb941579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d2b63a9ab475397d9c247468803f25cf6523b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88de50b233052e4fb783d4f6db78cc34fea3e9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8c5ee215d665fc2cc8e2b96a22b9d44912af58ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8d3d65f675f096db9f27fc4162757a5162ef103a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x926faafce6148884cd5cf98cd1878f865e8911bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb9db0da19163f2b17a4da3e6600a22f01e950515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcefcc8fd00d874522edbe25a2cdc9178f4ca9159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcfe3d300a9f9c7e3dd74007f8a46055efc493e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd76019a16606fda4651f636d9751f500ed776250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe7ce3fac9cb2933ab96fe1dc6b9d58d2fb4303ef` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 124
- Live contracts: 13
- Unknown liveness contracts: 111
- Source-verified contracts: 98
- Currently scope-matched contracts retained as-is: 11
- Classification counts: currently scope matched=11, candidate review=8, contamination review=11, source verified unclassified=68, unverified unclassified=26

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | JoeStaking<br>`0x7fb0fc8514d817c655276a2895307176f253d303` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | JoeStakingRewarder<br>`0x1d16326ba904546b4da88d357dd556ebe1f08dd6` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | MasterChef<br>`0xd4bd5e47548d8a6ba2a0bf4ce073cbf8fa523dcc` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | MasterChefRewarder<br>`0xcc076c7c657dcafc738991297903610896d2e938` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | MoeFactory<br>`0x5bef015ca9424a7c07b68490616a4c1f094bedec` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | MoePair<br>`0x08477e01a19d44c31e4c11dc2ac86e3bbe69c28b` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | MoeStaking<br>`0xe92249760e1443fbbea45b03f607ba84471fa793` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | RewarderFactory<br>`0x18d3f4df4959503c5f2c8b562da3118939890025` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | StableMoe<br>`0x5ab84d68892e565a8bf077a39481d5f69edaac02` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | VeMoe<br>`0x240616e2448e078934863fb6eb5133834bf14ef1` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| currently scope matched | VeMoeRewarder<br>`0x151b82ca3a0c9da9dfde200f9c527cd89dd6aea8` | project_anchor | unknown | live | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| candidate review | ProxyAdmin<br>`0x7dc21ae1572350bf17e89f9e44e1b8b59240c579` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| candidate review | ProxyAdmin2Step<br>`0x886523e92c7624825307626bdf5cbabc6ff6af2a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| candidate review | ProxyAdmin2Step<br>`0xc96543130015b69ec282668f0f82195a87c06429` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| candidate review | TransparentUpgradeableProxy<br>`0x511914365607075c12696b713f3eda20f27a86b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| candidate review | TransparentUpgradeableProxy2Step<br>`0x79f316c45e9b62638a8304ffffa9806439b69d44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| candidate review | TransparentUpgradeableProxy2Step<br>`0xb3938e6ee233e7847a5f17bb843e9bd0aa07e116` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| candidate review | TransparentUpgradeableProxy2Step<br>`0xb5bd280567c5a62df1a5570c88e63a5670cba22d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| candidate review | TransparentUpgradeableProxy2Step<br>`0xe283db759720982094de7fc6edc49d3adf848943` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| contamination review | FeeCollector<br>`0x97c62c289e3a76104f0e73db62bfa05fb9658b63` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| contamination review | FeeConverterOdos<br>`0xae63213b0c22f0e7fff46c1b1cdf9d07ed307298` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| contamination review | ForwarderLogic<br>`0xb0787776ff90881cec3a0b8e3e91973e6183c146` | non_address_book | unknown | unknown | verified | n/a | `0xf961ee51015b1efb4461d40d1f6b58a7832e931d` |
| contamination review | LBPair<br>`0xf6863db7323aac43fe8aef0b3ef63aa6b32ddb3b` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| contamination review | LBQuoter<br>`0xe25dc29b856d5a6df45b5d854ccf9223d716f46d` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| contamination review | MoeHelper<br>`0x3f0e209213d93508a451d521fd758cbc3b78ca90` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| contamination review | MoeHelper<br>`0xfe8b6aaf50212939b52558e8813b62c9212d2d7a` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| contamination review | MoeLens<br>`0x768571ab818d5fae3bf7b137f7364e6148c8de7a` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| contamination review | MoeLens<br>`0xaa61e8db8983582bfd7786fea681e7bb237698ba` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| contamination review | MoeQuoter<br>`0x1d0657af320b7108919e4ef0616ef6cd005be1a4` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| contamination review | MoeQuoter<br>`0x72b507a4799815adc30083925f748210e92b59f4` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | FakeOracle<br>`0xa489e95b5586bb340ebd8d4b83f0485609fb8467` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| source verified unclassified | FeeConverterOdos<br>`0xf4a9292d2192bfa7740647f8d06762d0e9124e8c` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | ForwarderLogic<br>`0xc04f291347d21dc663f7646056db22bff8ce8430` | non_address_book | unknown | unknown | verified | n/a | `0xf961ee51015b1efb4461d40d1f6b58a7832e931d` |
| source verified unclassified | JoeDexLens<br>`0x0f60a665d2f1002b58e7c43a91953138fa61effa` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| source verified unclassified | JoeStakingRewarder<br>`0x1fadd24ddb620d78dab888f86ad468bd9cff6c93` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | JoeStakingRewarder<br>`0xed6436a1b91f9a40bd44151f7ea81b45a3f17f92` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | LBRouter<br>`0xafb85a12babfafabfe1a518594492d5a830e782a` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| source verified unclassified | MasterChef<br>`0x0ca2d37789975be459ec08131df1a170fcfd2739` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| source verified unclassified | MasterChef<br>`0x10cc20df4f69bfeca8283d68c48fa5b1d4a3e9e6` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChef<br>`0x3fef7c40ed721d149524b7d94029c4bf949a871e` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| source verified unclassified | MasterChef<br>`0x76d8d0e37f697cc95c87f0ba9512701cf19b0cb5` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChef<br>`0xace736070a9642f7df468e7a65f18344acdc79b3` | non_address_book | unknown | unknown | verified | n/a | `0x5bb048b53ed42ad3a1d53ef6aac9899f08970927` |
| source verified unclassified | MasterChef<br>`0xeb1d0861f15675f6550f167388479491fa73ce2a` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChefRewarder<br>`0x2759a51fc109bc7c4d227e526e148e22f90a2678` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChefRewarder<br>`0x3b3a66124db1d4dfaebd1a537740dbc0bb9a5181` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChefRewarder<br>`0x4141bec8a681aa3c803b1233e30c5a9cca11b61a` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChefRewarder<br>`0x6b9b717e56bb1c432115d748fc6cf40cbd132b33` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChefRewarder<br>`0x75f0d016f85268991141164cd1144f855c5a0875` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChefRewarder<br>`0xb02e02993fa715e29319435636fd49d6567167fd` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MasterChefRewarder<br>`0xf5d738a8e03fc100fc23c25bb4678ed1aa310012` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | Moe<br>`0x8764ab3d025351839c8972919e1608425d161494` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MoeFactory<br>`0xc850df60d45c2845580e255191f1f469f592c5d2` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MoeFactory<br>`0xea2a8c55c6df7267c778e4d26cd3877d006846e0` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MoeLens<br>`0xdab59901c1cd2c43a63b575704d150c777da1f55` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MoePair<br>`0xcb61a1a9c21fb30b95fa4118c97da350f6c8468b` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MoeQuoter<br>`0x1e47b39840b8b766ef33af58bd38c41c6831e99d` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MoeRouter<br>`0xaf627839850143043415925bc77c00c01effdeb8` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | MoeRouter<br>`0xf311d54d81ea264d217e0e67442785d132376ce5` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | RouterLogic<br>`0xb35033d71cf5e13cab5eb8618260f94363dff9cf` | non_address_book | unknown | unknown | verified | n/a | `0xf961ee51015b1efb4461d40d1f6b58a7832e931d` |
| source verified unclassified | VeMoe<br>`0x4ceabd15438b52ce553d740b27ec2cd27f920e4c` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VeMoeRewarder<br>`0x247af24753e2f7320bf4e66853216fd50abfdcf1` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VeMoeRewarder<br>`0x7399aa9d2b71fdb943f6328a88b47502cb55b1e5` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VeMoeRewarder<br>`0x8eb08451b9062fffc0fc62ad9d54669c931ee254` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VeMoeRewarder<br>`0xa3a1a6300adb65a5141808b9997a4cf4c12daaa5` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VeMoeRewarder<br>`0xbbf381aaeed7941907444675dc30acb79c28136c` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VeMoeRewarder<br>`0xda781a8f8fb5fffd3d9ead0e84e26e8e6c84f2c4` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x057b2f6cc9b17497613435c6590d2e601ad47494` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x0a7a826a2777039a1f176de90a13221795712048` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x183d63d64a315f014364b783247590895cc1b02c` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x1c6c83e02f04da4b0db2b717ebdd1407290c87e8` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x1fbfc1a4806bb73ed72993dbfa0a34cda51e9fec` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x3f6cc17c2264602eb23ee94388f04741deeec185` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x4281776370021340a177fa6ccb402af2e6deb515` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x4a984bdb9c3afaf9ce4ce5395a574626b1e8cb8e` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x4d46b8ddb2933ad38ec8348acf00ecc61870f0b5` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x50554cd786afae7a8227ad21f4b8500212c62fe7` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x60fded031978c746aba21332772732a1ac332d7c` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x62fb9b611be09721868a667265c14b15e2314a75` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x70cd9e5b1e1a1ab35c4144e8769b3b3996be6c2f` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x7520ae33119050974c27ced58585f8c50c267c85` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x7c70188b5c38eb8e6cfc6cb46c12311e5302dd8b` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x82e8aef80ba26a87ee051eecbf28ce4da9d6855b` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x83d76d96340f39b2fd2d8b1867d6488933e64d0b` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x8d8d3bdd4d8973ea4aca9e7d699e1c7d711b00ce` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0x9b5b4c16dd7f5d7c378d5ac739060e4f3d93de31` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xa0e97c9ee82cbfc5c5da12152d7a23b88d89dde1` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xb342bff904dbc952771ce03ec76c980f9a695554` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xb9f72c2e027a7edc4596159c1e77d53d8e512295` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xc20ba477ad531427ca82dc83beb96c272143dc9f` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xd9ecef5b44482834c101bf8e96a71814a8726ef0` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xe273bf03c2278fa8889748e2b1af2006fc6f9c22` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xe4d55ad239fd84fde69c98c2c96596eef0b9c747` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xe660b72d30b89e4be2a2c89263bd6b7147d544a9` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xe887789bfd5f9b6e664bc12adc1dfe692e5d2948` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xeff8ee9e20ebf6b12dc091ae3771fcd1c5047c1c` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xfbdd0927dc70076810888242ed104995d98161f0` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xfd0adbac0a68082bcaaa8d4cbab85b8d5a01a291` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| source verified unclassified | VestingContract<br>`0xfd40854b1f9113fd574640a6ef9fa55efa4afde3` | non_address_book | unknown | unknown | verified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| unverified unclassified | UnnamedContract<br>`0x1f8642a8bc400385f6b8888b2568207c38a0bf68` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x227dfd9fa88bfe186682f3a45597bac051742e5f` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x28104d4f703ee5b5011cefe106f54efd56f33f95` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x2d8879046f1559e53eb052e949e9544bcb72f414` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x46ba84780f9a7b34c8b0e24df07a260fa952195d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1f080be1324a2e7869ff50a4bb0e32b833be415` |
| unverified unclassified | UnnamedContract<br>`0x4e3288c9ca110bcc82bf38f09a7b425c095d92bf` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x4e90421bc4ab6cb764824ca3126ffa95bcb1f5a7` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x57ff9d1a7cf23fd1a9fd9dc07823f950a22a718c` | non_address_book | unknown | unknown | unverified | n/a | `0xc1f080be1324a2e7869ff50a4bb0e32b833be415` |
| unverified unclassified | UnnamedContract<br>`0x5cf0dc0fd208f8f1b386792eeb22125c2ec0049e` | non_address_book | unknown | unknown | unverified | n/a | `0xae0f379b6cb303ca89897880ea383332072c6c3d` |
| unverified unclassified | UnnamedContract<br>`0x654677554c9b81263b638c2d6d78d6b7322944c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x794373811a81a25afe479171486e65d6eb941579` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x7d2b63a9ab475397d9c247468803f25cf6523b76` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x85bd14359cb96fd8e308262726ba6b1aee5fdba9` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x88de50b233052e4fb783d4f6db78cc34fea3e9fc` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x8c5ee215d665fc2cc8e2b96a22b9d44912af58ab` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x8d3d65f675f096db9f27fc4162757a5162ef103a` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0x926faafce6148884cd5cf98cd1878f865e8911bf` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xa669e7a0d4b3e4fa48af2de86bd4cd7126be4e13` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xac041df48df9791b0654f1dbbf2cc8450c5f2e9d` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xca423977156bb05b13a2ba3b76bc5419e2fe9680` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xcefcc8fd00d874522edbe25a2cdc9178f4ca9159` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xcf5540fffcdc3d510b18bfca6d2b9987b0772559` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xcfe3d300a9f9c7e3dd74007f8a46055efc493e5e` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xd76019a16606fda4651f636d9751f500ed776250` | non_address_book | unknown | unknown | unverified | n/a | `0xc1f080be1324a2e7869ff50a4bb0e32b833be415` |
| unverified unclassified | UnnamedContract<br>`0xd804ba88371a3f00ddaca03cbc2b6c47f38105fc` | non_address_book | unknown | unknown | unverified | n/a | `0x6de9109a2333845a15dde1f2f0c020b37421e1f5` |
| unverified unclassified | UnnamedContract<br>`0xe7ce3fac9cb2933ab96fe1dc6b9d58d2fb4303ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc1f080be1324a2e7869ff50a4bb0e32b833be415` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/merchant-moe](https://paladinsec.co/projects/merchant-moe) | Paladin | Audit | 2023-12 | stale | Direct | address | matched | 13 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3948] paladinsec.co/projects/merchant-moe — matched: Contracts audited listed with addresses; dependencies also included as they are part of the scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/merchant-moe | Moe | own contract | Moe (selected) `0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9` — deployed 2023-12-20 04:53:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MasterChef | own contract | MasterChef (selected) `0xd4bd5e47548d8a6ba2a0bf4ce073cbf8fa523dcc` — deployed 2023-12-20 04:53:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeStaking | own contract | MoeStaking (selected) `0xe92249760e1443fbbea45b03f607ba84471fa793` — deployed 2023-12-20 04:53:52+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | StableMoe | own contract | StableMoe (selected) `0x5ab84d68892e565a8bf077a39481d5f69edaac02` — deployed 2023-12-20 04:54:12+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VeMoe | own contract | VeMoe (selected) `0x240616e2448e078934863fb6eb5133834bf14ef1` — deployed 2023-12-20 04:54:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | BaseRewarder | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | MasterChefRewarder | own contract | MasterChefRewarder (selected) `0xcc076c7c657dcafc738991297903610896d2e938` — deployed 2023-12-20 04:53:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VeMoeRewarder | own contract | VeMoeRewarder (selected) `0x151b82ca3a0c9da9dfde200f9c527cd89dd6aea8` — deployed 2023-12-20 04:53:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeFactory | own contract | MoeFactory (selected) `0x5bef015ca9424a7c07b68490616a4c1f094bedec` — deployed 2023-12-23 15:39:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeERC20 | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | MoePair | own contract | MoePair (selected) `0x08477e01a19d44c31e4c11dc2ac86e3bbe69c28b` — deployed 2023-12-23 15:39:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeRouter | own contract | MoeRouter (selected) `0xeaee7ee68874218c3558b40063c42b82d3e7232a` — deployed 2023-12-23 15:39:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeLibrary | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Amounts | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Math | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Constants | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Rewarder | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | JoeStaking | own contract | JoeStaking (selected) `0x7fb0fc8514d817c655276a2895307176f253d303` — deployed 2023-12-20 04:53:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | JoeStakingRewarder | own contract | JoeStakingRewarder (selected) `0x1d16326ba904546b4da88d357dd556ebe1f08dd6` — deployed 2023-12-20 04:53:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | RewarderFactory | own contract | RewarderFactory (selected) `0x18d3f4df4959503c5f2c8b562da3118939890025` — deployed 2023-12-20 04:53:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VestingContract | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0xa6630671775c4ea2743840f9a5016dcf2a104054` | LBFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x013e138ef6008ae5fdfde29700e3f2bc61d21e3a` | LBRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xd9f4e85489adcd0baf0cd63b4231c6af58c26745` | OdosRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x45a62b090df48243f12a21897e7ed91863e2c86b` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: address=13

Fork inheritance lineage and inherited audits are included when available.
