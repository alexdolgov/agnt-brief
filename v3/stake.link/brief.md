# Agentic Audit Brief: stake.link

## Export Authority

- Production state: **published scope**
- Raw selected rows: 40 across 15 audit(s)
- Eligible audit results: 20 (15 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: stake.link (`stake.link`)
- Website: [https://stake.link](https://stake.link)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 105 unique implementations (210 raw deployments)
- Coverage basis: 17/32 confirmed own live verified implementations (53.1%); conservative 53.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $62,170,842.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for stake.link. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 51 contract row(s) across arbitrum, base, ethereum, polygon. Structural roles: 28 unclassified, 12 core, 11 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 51
- Structural roles: unclassified (28), core (12), supporting (11)
- Contract kinds: contract (51)
- Detected standards: ownable (14), erc20 (11), erc165 (7), erc1967proxy (5), pausable (3), accesscontrol (2)
- Frameworks: openzeppelin (19), chainlink (5), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x031de51f3e8016514bd0963d0b2ab825a591db9a`, chain 1)
- UnnamedContract (`0x455e53cbb86018ac2b8092fdcd39d8444affc3f6`, chain 1)
- UnnamedContract (`0x514910771af9ca656af840dff83e8264ecf986ca`, chain 1)
- BurnMintERC20 (`0x1d0347c535c88cf6bb72df75aed34363edb4b2ae`, chain 137)
- BurnMintERC677 (`0x3106e2e148525b3db36795b04691d444c24972fb`, chain 42161)
- BurnMintERC677 (`0xdfea35757264f5b6c0ff21104151d9f991d0eec0`, chain 42161)
- ERC1967Proxy (`0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d`, chain 1)
- FactoryBurnMintERC20 (`0xc271a17db5ce6f53745a3f466077ec816bc20a9c`, chain 137)
- FactoryBurnMintERC20 (`0xe5b64a705db9d2395c471af1608972ccbace26e6`, chain 8453)
- FactoryBurnMintERC20 (`0xf2f7901b7bba5799493b617b06ead1862f771297`, chain 8453)
- GovernanceTimelock (`0xb72d8f5213b3e52faf13aa074b03c4788e78349f`, chain 1)
- PriorityPool (`0x090abe0e6bd58b8cd09b622ff1bde2b48b4cee55`, chain 1)
- PriorityPool (`0x8e0cd48bc25945114a173749c05ce9c7e7aaa40e`, chain 1)
- RebaseController (`0x1711e93eec78ba83d38c26f0ff284eb478bdbec4`, chain 1)
- RebaseController (`0x5537f6762c181125de36b3a6884e9726e35ddb90`, chain 1)
- RebaseController (`0xda669f2ea3a54150242965238392d351235b1c1f`, chain 1)
- RewardsPoolWSD (`0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342`, chain 1)
- RewardsPoolWSD (`0x77f555a6b9ec1fbff5f545128046338a566b5a56`, chain 1)
- RewardsPoolWSD (`0x8753c00d1a94d04a01b931830011d882a3f8cc72`, chain 1)
- StakingAllowance (`0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23`, chain 1)
- StakingPool (`0x2fe5a394f24b3dec644f982a9bb0bafe57308597`, chain 1)
- WithdrawalPool (`0x9e00fd7e4754cc0deca4d653c61190380318ed17`, chain 1)
- WithdrawalPool (`0xbb782308bed54266a64e61e2dfe4cdc984aa44fb`, chain 1)
- WithdrawalPool (`0xf3683dc79a1447068e17d0d6fe64dd2824b897aa`, chain 1)
- WrappedSDToken (`0x2091d83592d79b4de5fd2ce3d98679c32a9555e6`, chain 1)
- WrappedSDToken (`0x43ff5ffab0973815ef8672f71c49ee5e53f30a48`, chain 1)
- WrappedSDToken (`0x911d86c72155c33993d594b0ec7e6206b4c803da`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 51; live-surface rows included: 51 (47 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/49 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/32 (53.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Confirmed-live implementations: 35 of 105 unique; 70 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 17/78
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 105
- Raw deployments: 210
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 8 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 17 match-unverified
- Tier 1 coverage: 43.8% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 14 | 17.9% | 2026-03 |
| unknown | Tier 2 | 8 | 10.3% | 2025-02 |
| Sigma Prime | Tier 2 | 5 | 6.4% | 2023-01 |
| Zellic | Tier 2 | 2 | 2.6% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CommunityVCS | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393141 | 2 deployments: ethereum `0x14024f4e7fef08cb19f8051456e39ee899990744`; ethereum `0xac12290b097f6893322f5430627e472131fbc1b5` | ✅ Audited |
| EspressoFundFlowController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393144 | 2 deployments: ethereum `0x4397095f3d69c64aad1e8de61980064e3bdb934f`; ethereum `0xf36bdbc45219f9fbac0741a92a546f95c97104bd` | ✅ Audited |
| EspressoStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393152 | 2 deployments: ethereum `0xc0d18551f249494f5900f5f99c03cf1d8ea6f70c`; ethereum `0xf0fb3aa0f6a4b84494b78f81103a789e81540344` | ✅ Audited |
| FundFlowController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393150 | 2 deployments: ethereum `0xacbfc09a1c4966f11c969080374010536090a8e0`; ethereum `0xd2e7381d8d3fcc97c1b4d88761bdbc8dd26a0200` | ✅ Audited |
| OperatorVCS | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393142 | 2 deployments: ethereum `0x25fb2b9030f8c0002d018bb02b7d86b844baaf57`; ethereum `0x4852e48215a4785ee99b640caced5378cc39d2a4` | ✅ Audited |
| PolygonFundFlowController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393153 | 2 deployments: ethereum `0x70f7daba7f2d0866088ecb1e3b29401a97f65951`; ethereum `0xf11af84e2c8ea43dfce24bf0fbfbbe4975f21e91` | ✅ Audited |
| PolygonStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393140 | 2 deployments: ethereum `0x0c1b992616915871ba921bbe14bb51928a07e129`; ethereum `0x7d145ad7860d0a9c7bb824d5b2f85f575d0300aa` | ✅ Audited |
| PriorityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393139 | 2 deployments: ethereum `0x090abe0e6bd58b8cd09b622ff1bde2b48b4cee55`; ethereum `0xdc26867b7d0f599bd2def704468a8cf073375fd3` | ✅ Audited |
| PriorityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393148 | 2 deployments: ethereum `0x8e0cd48bc25945114a173749c05ce9c7e7aaa40e`; ethereum `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` | ✅ Audited |
| PriorityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393145 | `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` | ✅ Audited |
| RebaseController | governance | project_anchor | own_supporting | 0 | ethereum | unit-393107 | `0x1711e93eec78ba83d38c26f0ff284eb478bdbec4` | ✅ Audited |
| RebaseController | governance | project_anchor | own_supporting | 0 | ethereum | unit-393114 | `0x5537f6762c181125de36b3a6884e9726e35ddb90` | ✅ Audited |
| SDLPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393147 | `0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d` | ✅ Audited |
| StakingAllowance | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393119 | `0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23` | ✅ Audited |
| StakingPool | unknown | project_anchor | own_supporting | 3 | ethereum | unit-393143 (3 proxies) | 4 deployments: ethereum `0x2fe5a394f24b3dec644f982a9bb0bafe57308597`; ethereum `0x2ff4390db61f282ef4e6d4612c776b809a541753`; ethereum `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50`; ethereum `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` | ✅ Audited |
| WithdrawalPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393149 | 2 deployments: ethereum `0x9e00fd7e4754cc0deca4d653c61190380318ed17`; ethereum `0xa60b5146e44ff755e32bd51532842ceb41d0c248` | ✅ Audited |
| WrappedSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393118 | `0x911d86c72155c33993d594b0ec7e6206b4c803da` | ✅ Audited |

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnMintERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x0f6c1f639c76b8461476da030e654f25ddfb6e84`; polygon `0x282d9953b1c1e8d010de44bb98ed1ba9d8a52c54`; polygon `0x593722ed549a7fc69e60ce75b39924e38caba494`; polygon `0xba754d80d0b417f62aeda94a82b6b72e4fd8f553` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-393122 | `0x1d0347c535c88cf6bb72df75aed34363edb4b2ae` | ⚠️ Unaudited |
| BurnMintERC677 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7cf0e0fc12fb97e03841ce4f3086db327ce0f2b` | ⚠️ Unaudited |
| BurnMintERC677 | token | project_anchor | own_supporting | 0 | arbitrum | unit-393135 | `0x3106e2e148525b3db36795b04691d444c24972fb` | ⚠️ Unaudited |
| BurnMintERC677 | token | project_anchor | own_supporting | 0 | arbitrum | unit-393136 | `0xdfea35757264f5b6c0ff21104151d9f991d0eec0` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4d2c033ea68674e56f6071b0d826d03152376db` | ⚠️ Unaudited |
| CommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x63b26ebd8586c18ed7e0ddba8df2ff690d803b5b`; ethereum `0x94277a23095b27041bef93eaf9df81e8d733791a`; ethereum `0xe162e1093f30fd0b9434b9b654fc6bd8cf96a850` | ⚠️ Unaudited |
| CommunityVCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x11721f9e0152b2abda99b8b86e77d7820ef4f864`; ethereum `0x2339ad1a674fb8be412df6cc1c80fb2ba5c3f647`; ethereum `0x96418d70832d08cf683be81ee9890e1337fad41b`; ethereum `0xdd0c427d8a4a59e1d99ec2e9b69c6abf85ec21e5` | ⚠️ Unaudited |
| DelegatorPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4e2a5adcd6abb5196af2b7f4759e6db104b85495`; ethereum `0x7285880a5c41a315b0b30b273d847d7cb23cdd4b`; ethereum `0x7f8ced381e6cc79f69721563157b1add0a5b6d75` | ⚠️ Unaudited |
| DelegatorPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-393146 | 2 deployments: ethereum `0x86637a9aba90204575db67451ba273b01cada2a3`; ethereum `0xaef186611ec96427d161107ffe14bba8aa1c2284` | ⚠️ Unaudited |
| DistributionOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-393109 | `0x2285ac429cccaae7cc1e27bfbe617bc626b443cf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21bb83f84d06ad561c7d35872b0dd5aa2f3c131b`; ethereum `0x7700a0e892db04f4ee0f2fe7b4f32a2cdf200164` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2401e9ceada76a59753549f71858a3ece906f197`; ethereum `0x70f3b8724ea96d89532089e3578aa2a31bc78c4c` | ⚠️ Unaudited |
| EspressoRewardsConsumer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69d92f6910b45da1d6ddfb380efaa6af56e33f9` | ⚠️ Unaudited |
| EspressoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3dd720ccf01493a4921b5ddf2a542ea1e1c2ab8` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | project_anchor | own_supporting | 0 | polygon | unit-393132 | `0xc271a17db5ce6f53745a3f466077ec816bc20a9c` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | project_anchor | own_supporting | 0 | base | unit-393137 | `0xe5b64a705db9d2395c471af1608972ccbace26e6` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | project_anchor | own_supporting | 0 | base | unit-393138 | `0xf2f7901b7bba5799493b617b06ead1862f771297` | ⚠️ Unaudited |
| FundFlowController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8cc47b8a76b33b5330dc1f6c5f2eee5d0013061` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb351ec0feaf4b99fdfd36b484d9ec90d0422493d` | ⚠️ Unaudited |
| GovernanceTimelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-393120 | `0xb72d8f5213b3e52faf13aa074b03c4788e78349f` | ⚠️ Unaudited |
| L1Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x142b9850f26dc95ff8b8c972de7ce63eadbf6a64`; ethereum `0x93c3d7039743f0a8cdb6d3e240f07153f2b52ef1` | ⚠️ Unaudited |
| L1Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6999c1dcb675ae5568931bb0cfca0c4f4fe21ca` | ⚠️ Unaudited |
| L1Transmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e2a7b992769e43d4e76a4bb92de9c0532f25cde`; ethereum `0xb1abe6ddc78caec754b690cc499e5fc8496b1063` | ⚠️ Unaudited |
| LidoLSDIndexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d` | ⚠️ Unaudited |
| LinearBoostController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b2f86c159199b6cba593438ae89078dfb83698` | ⚠️ Unaudited |
| LINKMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x08e11a9a74e7acc51ace382b6d02abe8b7cf7786`; ethereum `0xda77b1a19850606d1f4faa0e200e035faa85fb15` | ⚠️ Unaudited |
| LiquidSDIndexPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3509d9320660b2ffea0225b0006c98f1d6293c14`; ethereum `0x535321013a1e2d5af3b1853812a64ca3fc6c1fa1` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x20c0d719c2ef30ff5ac6e822261ee655f037d461`; ethereum `0x28d3148b74ecbd1bc410ec3d40ffd86cbff31b05`; ethereum `0x4a36c0c18174a2962d649e2c077fc53bcec5f68e`; ethereum `0x553636e52059b0339592f545d25a4c0a86e3a1bc`; polygon `0x48c5ca5de19a51083554cf58c6d9710c3d4b4122` | ⚠️ Unaudited |
| LPOG2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8` | ⚠️ Unaudited |
| LSTRewardsSplitterController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e1bfbb052c3f7bfe0e7386f435343982b1f78c8`; ethereum `0x73c433e006467f46e9f9fb18bc5f5a48e172e154` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6f6fb6fbec4fb65a6535357d9d7e8f4f62319ac0`; ethereum `0xa0b5795a4a0b467de20d2da7e7356647753024f5`; ethereum `0xe7dd77d408920c000c40c35c4c111318ba8b4767` | ⚠️ Unaudited |
| OperatorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 15 | ethereum | n/a | 16 deployments: ethereum `0x025ca436f644b61ded1bc9fcdb1f0b560b27bad1`; ethereum `0x42e71e641c1a11d0026f129830a0a2ef8ea7f883`; ethereum `0x63b835015247b60977e53fec357abd854cd01a74`; ethereum `0x6879670b1610406de180d06d19f8746943619298`; ethereum `0x6df26ae1cd755ef743e7b02bf7ef808eb1c26a4b`; ethereum `0x7d96bd72cef72dc1f8cf55bed7ab8f03b97557ea`; ethereum `0x8d87cbd8c3632b7ef117a15f8100943a23b7d03b`; ethereum `0xa3b3da7fd30176f97661ba49f432a093b68c2835`; ethereum `0xa7c576ef7b2742fd92edcdf83a03b5f23055facc`; ethereum `0xaa0eec9be8b23895a8aaaadd33063105c0f82d0c`; ethereum `0xaabc1c74639b2479e79603ca43f0298e7aabd392`; ethereum `0xb6196b3b89981483c27ab642b27743a62c3d68ac`; ethereum `0xc7f5872e3d8d5e994c37087dcee9b9e89960c7a3`; ethereum `0xc96d6382b9000f5a1f815a6ab6fcfc9befb6394c`; ethereum `0xda8531e75a80f553f556da767db46f514222c83f`; ethereum `0xdd629d38285d15847b3c57ae2eff1c3d860a6d76` | ⚠️ Unaudited |
| OperatorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6564fe0809e8b520a0e26ee644d98c4ea2c6fb45`; ethereum `0x73cf930cf4f86117c308907ce18f8e8f16710387`; ethereum `0xac1d9c2b888fb20f7c20dc3c9313805a8dc165ee`; ethereum `0xc4baf9df7da0db146d8aedee447246ed47b4c2e4` | ⚠️ Unaudited |
| OperatorVCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x584338dabae9e5429c334fc1ad41c46ac007bc29`; ethereum `0x6059cec7604f72eee7cb836a9f42661b603fe286`; ethereum `0x9fe5d564dc0f2b2298f5e28305065f9780e049e6`; ethereum `0xfb8256cfceeacfb4835a3ebf47ebea2902e30567` | ⚠️ Unaudited |
| OperatorVCSUpgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf256306b5f8115e3d787f8658fc4904f7050b54c` | ⚠️ Unaudited |
| PolygonVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33db657264a28555da73bd6696e810cfcb04414e` | ⚠️ Unaudited |
| PoolRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b4f81f9ebf8132d7fe114a1f96e333187979092`; ethereum `0x9ae7895258efb5ebda3e97e26f9819287c668a9a` | ⚠️ Unaudited |
| PriorityPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0bc122c224b875ca79250a54a08a6e5df8def817`; ethereum `0x7f89e4a071136f8e3ec12d8f87793dc84038c054`; ethereum `0x80faea283474e9fd26ffd168829350ac766e7b8d`; ethereum `0x855039b459cea56707a61e641110097623de1bc3`; ethereum `0xe185500a98db33e3a023d1cd0141698e9c504923` | ⚠️ Unaudited |
| PriorityPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393115 | `0x6fb9cc7d10a5286a864e760c2756e7f6d44d4d26` | ⚠️ Unaudited |
| RebaseController | governance | project_anchor | own_supporting | 0 | ethereum | unit-393121 | `0xda669f2ea3a54150242965238392d351235b1c1f` | ⚠️ Unaudited |
| RewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19282e0365a5b90c9864446448e29465a9d226eb` | ⚠️ Unaudited |
| RewardsPoolWSD | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393112 | `0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342` | ⚠️ Unaudited |
| RewardsPoolWSD | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393116 | `0x77f555a6b9ec1fbff5f545128046338a566b5a56` | ⚠️ Unaudited |
| RewardsPoolWSD | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393117 | `0x8753c00d1a94d04a01b931830011d882a3f8cc72` | ⚠️ Unaudited |
| RewardsPoolWSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbcd10c166b83edb0ebd05aaca5facab9c0a307f0`; ethereum `0xd6dbdda416c10ae2b7acbe2d141c0e52b1802c59` | ⚠️ Unaudited |
| RocketPoolLSDIndexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6025533b9e095ab2730e1ad50219be8293d66220` | ⚠️ Unaudited |
| SDLGaugeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cd2e45386da2ff8f2db716e733b6f48511a118` | ⚠️ Unaudited |
| SDLPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a76252ac076b60f91765c40d609fc874016c146` | ⚠️ Unaudited |
| SDLVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x02a0f6242c43a3cb59e58d5fa7acd9e79bba3aba`; ethereum `0x03c1c19adb2009895422ead742a5e96a08b1ff94`; ethereum `0x08c1d70ff981fe2ff78194c973191bbc8226a8b9`; ethereum `0x378971b51c126834309cd95bea55f19adb5f59df`; ethereum `0x4ccb44bf85ade035c5b57e38edd385788c119c86`; ethereum `0x506c02763131f044b1c08ab9d4dd5dc5505ee9c7`; ethereum `0x5eb140f59e59dad692e13b8480c2f91758c341e5`; ethereum `0x6185a7f5344ff0c320e25ca1ed6526c4692fcb3d`; ethereum `0x8aaf17a93eece176de3e1beec7c775c9d4c9f7d5`; ethereum `0x8b5194fe64a2ee36f34089566b23df357f61024f`; ethereum `0x8b5256ae4a572b6cedbee9f93b60d2171abecfe3`; ethereum `0xb03697a0c4c86aef1a2f73d157dce101bfcfd1d4`; ethereum `0xb57b3d144aa18fe822ef3e4db26c74c34d864b02`; ethereum `0xe05edf1d3e73ddb87ebaa1fa9363efddbb0252a6`; ethereum `0xe22ee628e3aa38133bdd01159057767e1a93081a`; ethereum `0xe6476fff204e5932fce1b8fcdeab1049f97e51e0`; ethereum `0xf12cea09f4f29ba51906f0b95ef09627d714ea43`; ethereum `0xf509c90fbb166edbc06bcd3caa75f926842e3032`; ethereum `0xf7a8138302138b8eff5ffe6a228265ac449dc8f2` | ⚠️ Unaudited |
| StakedotlinkCouncil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358fb1c8e14ce61d3d83f17e6804a678b5847673` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1932a66a2689560d041cb90efa7f623317c182ba`; ethereum `0xecd7921ecdea1f27994cff2e8a67b069f0c63111` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x880a12f050376ffbd2b37a6ed78b50e93b0103ba`; ethereum `0x88d89a8b037e9df1a750415826c16e9841be9f9a`; ethereum `0x9a9e3e2b9c3a4a232c752875220be43f06f3d314`; ethereum `0xb074db74dc7f0f7d96c552331e59ae0a6b1ae088`; ethereum `0xebc52afcfc9495ec083264ed68e8e6f454e5f715`; ethereum `0xecb2826ea31edba61990e249a61d611ae82866f8` | ⚠️ Unaudited |
| StakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x05f5344d4f961643fa5075a4a56a6303923d8514`; ethereum `0xc1b7a5346c4342d352205deeb15b049f567da740` | ⚠️ Unaudited |
| VaultDepositController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fbab6fd5d82fd7b326e4f3a1562a4d464ea1bc` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x2861382ef967e5b539b5bdf9ffcc52fa4056eae6`; ethereum `0x39f9f3d7203c5b13e3c2682362b608e20df02194`; ethereum `0x3cb7b3fe89cad7fcf7fcbbef1933ead13cda5c6c`; ethereum `0x4e930b7d9e366b8b270ac0fc56f040a8746566c6`; ethereum `0x576fc58b247963d8de9aa4018abb0240d0465a31`; ethereum `0x6e368c33b98dfb0a376534429be8a065b47918e7`; ethereum `0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997`; ethereum `0x80b9d842081972d641375420d256ad1edcb47e40`; ethereum `0x8d0422d9859b2cb98761428b4518059e1cb3e8d9`; ethereum `0x8dbc8027ebee31bab05ade462b43a579575aefad`; ethereum `0xcc8f8f89ef7ba61e6a649b48221b0cf2544171cb`; ethereum `0xcd682dd9ecd4991d04787727fe669947d67849c2`; ethereum `0xd9d1b5132ef63fc0e9056d063880e7b943ea2c6b`; ethereum `0xf69f5c5f788fae16ed8950e634e8280925d4cceb`; ethereum `0xfbfef8ac9d267c463c2280bf35c9fffebaec983e` | ⚠️ Unaudited |
| WithdrawalPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393151 | 2 deployments: ethereum `0x908b892276fb70fb6fd362ff97d58e7abf6d3690`; ethereum `0xbb782308bed54266a64e61e2dfe4cdc984aa44fb` | ⚠️ Unaudited |
| WithdrawalPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393154 | 2 deployments: ethereum `0xbfbf47b2a3b9e54a44257bf57d4b078170096458`; ethereum `0xf3683dc79a1447068e17d0d6fe64dd2824b897aa` | ⚠️ Unaudited |
| WrappedSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a72be10f6e6cf0ca100a407352e50d0ed653dec` | ⚠️ Unaudited |
| WrappedSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393108 | `0x2091d83592d79b4de5fd2ce3d98679c32a9555e6` | ⚠️ Unaudited |
| WrappedSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393110 | `0x43ff5ffab0973815ef8672f71c49ee5e53f30a48` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393106 | `0x031de51f3e8016514bd0963d0b2ab825a591db9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08341befe6428568cdf798d19223821697dcec15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21363611b30e133825044b41b897a03843c4b713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ea4139343d55b86c48775049defe31fbc87de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bbbd81ea05a09234a71b4c77775fe7bf45f947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b82340a804776ee27b22a833204c637a429dbd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4524011801bb496deaaf675eed123ed2ba5945d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393111 | `0x455e53cbb86018ac2b8092fdcd39d8444affc3f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d577e066cccee517080a56a2f28af3b4ff33ce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393113 | `0x514910771af9ca656af840dff83e8264ecf986ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5225efaa21aadedd79d1098b46ff0e4059532041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52861245e940c7fa964d5bd6d0f2fbeaa12227af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c1e2d2c55c83de945e3f37df694cde8452c1e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aad084a290c48a1580ef874211d74594e3d674b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ef5d844de9bbf52fcaced2ecf66b7faf0b3aa12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b14377df02edb410c47debfaaa20b9a1c043a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91aaa787b661419ab7e7eac4dbc665f37295dd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96a5915df3e4f4911f7c73e28d660ea014173d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aea3f26f5de8f5d87f4846c25fae77849695aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cbb383d2db695abbcbb37d4ff15949f5490c394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3cae01bfaad7aec11c43844813a4115f3f432dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd12aa47c186385b2c3c41bce663d5379e6bd705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc548b12dc5a8b4a6d1649d038a72b70a1fc3b2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5842eaebccf357b1eeebc1a34407c112297bb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcee29d4c99cea758bf887b235650b21d15d12547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0a48c7f968e79d9e66f89d4bbe09d643b5fc9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c3b66a9737872b643e8ee34962b9af0942950a8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[2025-07-02] Zellic - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-07-02%5D%20Zellic%20-%20Polygon%20Staking.pdf) | Zellic | Audit | 2025-07 | aging | Direct | n/a | matched | 2 | 2 | 0 | 3 | n/a |
| [[2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2022-08-01%5D%20Sigma%20Prime%20-%20Core%20Staking%20Contracts%20Report.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 15 | high |
| [[2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-01-01%5D%20Sigma%20Prime%20-%20Core%20%26%20LINK%20Staking%20Report.pdf) | Sigma Prime | Audit | 2023-01 | stale | Direct | contract_name | matched | 5 | 3 | 0 | 20 | high |
| [[2023-03-07] Cyfrin - LSD Index Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-03-07%5D%20Cyfrin%20-%20LSD%20Index%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [[2023-08-06] Trust Security - SDLPool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-06%5D%20Trust%20Security%20-%20SDLPool%20Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | matched | 2 | 2 | 0 | 3 | n/a |
| [[2023-08-25] Cyfrin - Priority Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-08-25%5D%20Cyfrin%20-%20Priority%20Pool%20Report.pdf) | Cyfrin | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 1 | medium |
| [[2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2023-10-01%5D%20Trust%20Security%20-%20Priority%20Pool%20%26%20LINK%20Staking%20v0.2%20Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | matched | 4 | 4 | 0 | 6 | n/a |
| [[2024-04-30] Trust Security - Insurance Pool Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Insurance%20Pool%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [[2024-04-30] Trust Security - Metis Staking Report.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-04-30%5D%20Trust%20Security%20-%20Metis%20Staking%20Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [[2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-09-17%5D%20Cyfrin%20-%20LINK%20Staking%20Withdrawals.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | matched | 3 | 3 | 0 | 17 | high |
| [[2024-11-27] Codehawks - LINK Staking Withdrawals.md](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2024-11-27%5D%20Codehawks%20-%20LINK%20Staking%20Withdrawals.md) | Cyfrin | Audit | 2024-11 | aging | Direct | contract_name | matched | 3 | 3 | 0 | 10 | high |
| [[2025-01-20] Cyfrin Staking Proxy.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-01-20%5D%20Cyfrin%20Staking%20Proxy.pdf) | Cyfrin | Audit | 2025-01 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 6 | high |
| [[2025-02-04] Trust - LINK Staking Withdrawals.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-04%5D%20Trust%20-%20LINK%20Staking%20Withdrawals.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | matched | 5 | 4 | 0 | 6 | high |
| [[2025-02-28] Cyfrin - CL Rewards Claiming.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-02-28%5D%20Cyfrin%20-%20CL%20Rewards%20Claiming.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 3 | 0 | 7 | high |
| [[2025-05-19] Cyfrin - Polygon Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-05-19%5D%20Cyfrin%20-%20Polygon%20Staking.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 1 | high |
| [[2025-06-04] Cyfrin - LINK Migrator.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-06-04%5D%20Cyfrin%20-%20LINK%20Migrator.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 2 | n/a |
| [[2025-08-02] Cyfrin - SDL Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20SDL%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [[2025-08-02] Cyfrin - Vesting.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2025-08-02%5D%20Cyfrin%20-%20Vesting.pdf) | Cyfrin | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [[2026-02-04] Cyfrin - Espresso Staking.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-02-04%5D%20Cyfrin%20-%20Espresso%20Staking.pdf) | Cyfrin | Audit | 2026-02 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 1 | high |
| [[2026-03-23] Cyfrin - Rebase Batching.pdf](https://github.com/stakedotlink/contracts/blob/main/audits/%5B2026-03-23%5D%20Cyfrin%20-%20Rebase%20Batching.pdf) | Cyfrin | Audit | 2026-03 | fresh | Direct | contract_name | matched | 4 | 3 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4624] [2025-07-02] Zellic - Polygon Staking.pdf — matched: No reason recorded
- [10452] [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf — matched: Scope section explicitly lists 16 Solidity files. Audit date is August 2022, mapped to last day of month.
- [10453] [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf — matched: Extracted 25 contract names from the scope section and findings. Audit date is January 2023, mapped to last day of month.
- [10454] [2023-03-07] Cyfrin - LSD Index Pool Report.pdf — no match: Scope section explicitly lists contracts in liquidSDIndex folder. Audit date from cover page: March 10, 2023.
- [10455] [2023-08-06] Trust Security - SDLPool Report.pdf — matched: No reason recorded
- [10456] [2023-08-25] Cyfrin - Priority Pool Report.pdf — matched: Scope section not explicitly present; contracts inferred from report content. Audit date from cover page.
- [10457] [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf — matched: No reason recorded
- [10458] [2024-04-30] Trust Security - Insurance Pool Report.pdf — no match: Scope section lists 4 files; audit date from document versioning (30/04/24).
- [10459] [2024-04-30] Trust Security - Metis Staking Report.pdf — no match: Scope section lists 4 files; audit date from document versioning (30/04/24).
- [10460] [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf — matched: All contracts listed in the Audit Scope section were extracted. The audit date is from the cover page.
- [10461] [2024-11-27] Codehawks - LINK Staking Withdrawals.md — matched: Extracted contract names from findings and scope references. Audit date from contest summary: Sep 30th, 2024 - Oct 17th, 2024, using end date.
- [10462] [2025-01-20] Cyfrin Staking Proxy.pdf — matched: All contracts listed in Audit Scope section (page 2) are extracted. Date from cover page.
- [10463] [2025-02-04] Trust - LINK Staking Withdrawals.pdf — matched: All 11 contracts listed in the Scope section of the audit report.
- [10464] [2025-02-28] Cyfrin - CL Rewards Claiming.pdf — matched: All contracts listed in Audit Scope section (page 2) are extracted. Audit date from cover page: February 28, 2025.
- [10465] [2025-05-19] Cyfrin - Polygon Staking.pdf — matched: Scope section explicitly lists three contracts: PolygonFundFlowController.sol, PolygonVault.sol, PolygonStrategy.sol. Audit date is May 19, 2025 from the cover page.
- [10466] [2025-06-04] Cyfrin - LINK Migrator.pdf — matched: No reason recorded
- [10468] [2025-08-02] Cyfrin - SDL Vesting.pdf — no match: No reason recorded
- [10469] [2025-08-02] Cyfrin - Vesting.pdf — no match: No reason recorded
- [10470] [2026-02-04] Cyfrin - Espresso Staking.pdf — matched: Audit scope explicitly lists three contracts: EspressoFundFlowController.sol, EspressoStrategy.sol, EspressoVault.sol. Date found on cover page: February 4, 2026.
- [10471] [2026-03-23] Cyfrin - Rebase Batching.pdf — matched: Scope explicitly lists CommunityVCS.sol and VaultControllerStrategy.sol. Other contracts appear in PoC or findings but are not in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [2025-07-02] Zellic - Polygon Staking.pdf | LSTRewardsSplitter | unmatched — not counted | — | — | no |
| [2025-07-02] Zellic - Polygon Staking.pdf | LSTRewardsSplitterController | unmatched — not counted | — | — | no |
| [2025-07-02] Zellic - Polygon Staking.pdf | PolygonFundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x70f7daba7f2d0866088ecb1e3b29401a97f65951` — deployed 2025-07-16 19:38:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-07-02] Zellic - Polygon Staking.pdf | PolygonStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d145ad7860d0a9c7bb824d5b2f85f575d0300aa` — deployed 2025-07-16 19:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-07-02] Zellic - Polygon Staking.pdf | PolygonVault | unmatched — not counted | — | — | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | MerkleDistributor | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | BorrowingPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | PoolOwners | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | PoolRouter | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | RewardsPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | StakingPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff4390db61f282ef4e6d4612c776b809a541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | RewardsPoolController | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | StakingRewardsPool | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | LinkPoolNFT | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | StakingAllowance | own contract | StakingAllowance (selected) `0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23` — deployed 2022-12-05 13:59:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | WrappedSDToken | ambiguous — not counted | WrappedSDToken (alternative) `0x43ff5ffab0973815ef8672f71c49ee5e53f30a48` — deployed 2026-02-09 22:18:35+03 — liveness: live (code_present_context)<br>WrappedSDToken (alternative) `0x2091d83592d79b4de5fd2ce3d98679c32a9555e6` — deployed 2025-07-16 19:36:11+03 — liveness: live (code_present_context)<br>WrappedSDToken (alternative) `0x911d86c72155c33993d594b0ec7e6206b4c803da` — deployed 2022-12-05 14:07:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | ERC677 | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | VirtualERC20 | unmatched — not counted | — | listed in scope | no |
| [2022-08-01] Sigma Prime - Core Staking Contracts Report.pdf | VirtualERC677 | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | DelegatorPool | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | GovernanceController | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | PoolRouter | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RewardsPool | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RewardsPoolWSD | ambiguous — not counted | RewardsPoolWSD (alternative) `0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342` — deployed 2026-02-09 22:19:59+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x77f555a6b9ec1fbff5f545128046338a566b5a56` — deployed 2025-07-16 19:38:47+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x8753c00d1a94d04a01b931830011d882a3f8cc72` — deployed 2023-09-20 19:35:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | SlashingKeeper | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | StakingPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff4390db61f282ef4e6d4612c776b809a541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-12-05 was 57d from audit; next candidate 897d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RewardsPoolController | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | StakingRewardsPool | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | Flat | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | RampUpCurve | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | LinkPoolNFT | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | LPLMigration | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | StakingAllowance | own contract | StakingAllowance (selected) `0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23` — deployed 2022-12-05 13:59:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | WrappedSDToken | own contract | WrappedSDToken (alternative) `0x43ff5ffab0973815ef8672f71c49ee5e53f30a48` — deployed 2026-02-09 22:18:35+03 — liveness: live (code_present_context)<br>WrappedSDToken (alternative) `0x2091d83592d79b4de5fd2ce3d98679c32a9555e6` — deployed 2025-07-16 19:36:11+03 — liveness: live (code_present_context)<br>WrappedSDToken (selected) `0x911d86c72155c33993d594b0ec7e6206b4c803da` — deployed 2022-12-05 14:07:23+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-12-05 was 57d from audit; next candidate 897d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | ERC677 | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | ERC677Upgradeable | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | CommunityVault | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac12290b097f6893322f5430627e472131fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | OperatorVault | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e48215a4785ee99b640caced5378cc39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2023-01-01] Sigma Prime - Core & LINK Staking Report.pdf | FlatFee | unmatched — not counted | — | mentioned in findings as FlatFee.sol | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LiquidSDIndexPool | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LiquidSDAdapter | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LidoSTETHAdapter | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | RocketPoolRETHAdapter | unmatched — not counted | — | listed in scope and findings | no |
| [2023-03-07] Cyfrin - LSD Index Pool Report.pdf | LiquidSDAdapterMock | unmatched — not counted | — | listed in findings | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | DelegatorPool | unmatched — not counted | — | — | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | LinearBoostController | unmatched — not counted | — | — | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e48215a4785ee99b640caced5378cc39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-08-06] Trust Security - SDLPool Report.pdf | OperatorVault | unmatched — not counted | — | — | no |
| [2023-08-06] Trust Security - SDLPool Report.pdf | SDLPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d` — deployed 2023-09-20 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-08-25] Cyfrin - Priority Pool Report.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-09-20 was 26d from audit; next candidate 691d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-08-25] Cyfrin - Priority Pool Report.pdf | StakingQueue | unmatched — not counted | — | mentioned in executive summary and additional comments as original name | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac12290b097f6893322f5430627e472131fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | CommunityVault | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e48215a4785ee99b640caced5378cc39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | OperatorVault | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-09-20 was 11d from audit; next candidate 654d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | SlashingKeeper | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | StakingPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff4390db61f282ef4e6d4612c776b809a541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2022-12-05 was 300d from audit; next candidate 654d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | StakingRewardsPool | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | Vault | unmatched — not counted | — | — | no |
| [2023-10-01] Trust Security - Priority Pool & LINK Staking v0.2 Report.pdf | VaultControllerStrategy | unmatched — not counted | — | — | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerVault | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerVCS | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerRewardsCCIPReceiver | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Insurance Pool Report.pdf | SequencerRewardsCCIPSender | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerVault | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerVCS | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerRewardsCCIPReceiver | unmatched — not counted | — | listed in scope | no |
| [2024-04-30] Trust Security - Metis Staking Report.pdf | SequencerRewardsCCIPSender | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | CommunityVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac12290b097f6893322f5430627e472131fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | OperatorVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e48215a4785ee99b640caced5378cc39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e7381d8d3fcc97c1b4d88761bdbc8dd26a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | PPKeeper | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | SequencerVCS | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | WithdrawalPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xa60b5146e44ff755e32bd51532842ceb41d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47b2a3b9e54a44257bf57d4b078170096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b892276fb70fb6fd362ff97d58e7abf6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | StakingRewardsPool | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IStrategy | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IStaking | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IRewardVault | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IStakingPool | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IPriorityPool | unmatched — not counted | — | listed in scope | no |
| [2024-09-17] Cyfrin - LINK Staking Withdrawals.pdf | IWithdrawalPool | unmatched — not counted | — | listed in scope | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | OperatorStakingPool | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | LSTRewardsSplitterController | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | LSTRewardsSplitter | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e48215a4785ee99b640caced5378cc39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | WithdrawalPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xa60b5146e44ff755e32bd51532842ceb41d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47b2a3b9e54a44257bf57d4b078170096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b892276fb70fb6fd362ff97d58e7abf6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | StakingPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff4390db61f282ef4e6d4612c776b809a541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | StakingRewardsPool | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e7381d8d3fcc97c1b4d88761bdbc8dd26a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | VaultControllerStrategy | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac12290b097f6893322f5430627e472131fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | OperatorVault | unmatched — not counted | — | listed in scope and findings | no |
| [2024-11-27] Codehawks - LINK Staking Withdrawals.md | VaultDepositController | unmatched — not counted | — | listed in scope and findings | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | StakingProxy | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | WithdrawalPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xa60b5146e44ff755e32bd51532842ceb41d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47b2a3b9e54a44257bf57d4b078170096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b892276fb70fb6fd362ff97d58e7abf6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-02-06 was 17d from audit; next candidate 177d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-01-20] Cyfrin Staking Proxy.pdf | SDLPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d` — deployed 2023-09-20 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPoolController | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPool | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPoolTimeBased | unmatched — not counted | — | listed in scope | no |
| [2025-01-20] Cyfrin Staking Proxy.pdf | RewardsPoolWSD | ambiguous — not counted | RewardsPoolWSD (alternative) `0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342` — deployed 2026-02-09 22:19:59+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x77f555a6b9ec1fbff5f545128046338a566b5a56` — deployed 2025-07-16 19:38:47+03 — liveness: live (current_address_book_code)<br>RewardsPoolWSD (alternative) `0x8753c00d1a94d04a01b931830011d882a3f8cc72` — deployed 2023-09-20 19:35:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | PriorityPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | WithdrawalPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xa60b5146e44ff755e32bd51532842ceb41d0c248` — deployed 2025-02-06 20:53:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbfbf47b2a3b9e54a44257bf57d4b078170096458` — deployed 2025-07-16 19:36:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x908b892276fb70fb6fd362ff97d58e7abf6d3690` — deployed 2026-02-09 22:18:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-02-06 was 2d from audit; next candidate 162d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e7381d8d3fcc97c1b4d88761bdbc8dd26a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | StakingPool | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff4390db61f282ef4e6d4612c776b809a541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | RebaseController | own contract | RebaseController (alternative) `0xda669f2ea3a54150242965238392d351235b1c1f` — deployed 2025-07-16 19:35:23+03 — liveness: live (current_address_book_code)<br>RebaseController (selected) `0x1711e93eec78ba83d38c26f0ff284eb478bdbec4` — deployed 2025-02-06 20:53:35+03 — liveness: live (current_address_book_code)<br>RebaseController (alternative) `0x5537f6762c181125de36b3a6884e9726e35ddb90` — deployed 2026-02-09 22:18:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-02-06 was 2d from audit; next candidate 162d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e48215a4785ee99b640caced5378cc39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac12290b097f6893322f5430627e472131fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | OperatorVault | unmatched — not counted | — | listed in scope | no |
| [2025-02-04] Trust - LINK Staking Withdrawals.pdf | CommunityVault | unmatched — not counted | — | listed in scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac12290b097f6893322f5430627e472131fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | CommunityVault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | FundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd2e7381d8d3fcc97c1b4d88761bdbc8dd26a0200` — deployed 2025-02-06 20:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | OperatorVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x4852e48215a4785ee99b640caced5378cc39d2a4` — deployed 2022-12-06 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | OperatorVault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | Vault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | IDelegateRegistry | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | IVault | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-02-28] Cyfrin - CL Rewards Claiming.pdf | IVaultControllerStrategy | unmatched — not counted | — | listed in Audit Scope | no |
| [2025-05-19] Cyfrin - Polygon Staking.pdf | PolygonFundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x70f7daba7f2d0866088ecb1e3b29401a97f65951` — deployed 2025-07-16 19:38:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-05-19] Cyfrin - Polygon Staking.pdf | PolygonVault | unmatched — not counted | — | listed in scope | no |
| [2025-05-19] Cyfrin - Polygon Staking.pdf | PolygonStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d145ad7860d0a9c7bb824d5b2f85f575d0300aa` — deployed 2025-07-16 19:37:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-06-04] Cyfrin - LINK Migrator.pdf | IPriorityPool | unmatched — not counted | — | — | no |
| [2025-06-04] Cyfrin - LINK Migrator.pdf | LINKMigrator | unmatched — not counted | — | — | no |
| [2025-06-04] Cyfrin - LINK Migrator.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (selected) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-07-16 was 45d from audit; next candidate 253d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2025-08-02] Cyfrin - SDL Vesting.pdf | SDLVesting | unmatched — not counted | — | — | no |
| [2025-08-02] Cyfrin - Vesting.pdf | SDLVesting | unmatched — not counted | — | — | no |
| [2026-02-04] Cyfrin - Espresso Staking.pdf | EspressoFundFlowController | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf36bdbc45219f9fbac0741a92a546f95c97104bd` — deployed 2026-02-09 22:19:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-02-04] Cyfrin - Espresso Staking.pdf | EspressoStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf0fb3aa0f6a4b84494b78f81103a789e81540344` — deployed 2026-02-09 22:19:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-02-04] Cyfrin - Espresso Staking.pdf | EspressoVault | unmatched — not counted | — | listed in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | CommunityVCS | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xac12290b097f6893322f5430627e472131fbc1b5` — deployed 2023-11-22 19:50:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | VaultControllerStrategy | unmatched — not counted | — | listed in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | RebaseController | own contract | RebaseController (alternative) `0xda669f2ea3a54150242965238392d351235b1c1f` — deployed 2025-07-16 19:35:23+03 — liveness: live (current_address_book_code)<br>RebaseController (alternative) `0x1711e93eec78ba83d38c26f0ff284eb478bdbec4` — deployed 2025-02-06 20:53:35+03 — liveness: live (current_address_book_code)<br>RebaseController (selected) `0x5537f6762c181125de36b3a6884e9726e35ddb90` — deployed 2026-02-09 22:18:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-09 was 43d from audit; next candidate 251d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StakingPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5273a75694311a6c4f2acf5c5b8566d965cb6e50` — deployed 2026-02-09 22:16:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0x2ff4390db61f282ef4e6d4612c776b809a541753` — deployed 2025-07-16 19:34:11+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` — deployed 2022-12-05 14:06:59+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-09 was 43d from audit; next candidate 251d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StrategyMock | unmatched — not counted | — | used in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | CommunityVault | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | VaultDepositController | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StakingRewardsMock | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | StakingMock | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | PriorityPool | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xdc26867b7d0f599bd2def704468a8cf073375fd3` — deployed 2026-02-09 22:17:59+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` — deployed 2023-09-20 19:38:35+03 — liveness: live (code_present_context)<br>ERC1967Proxy (proxy) (alternative) `0xcfa197495cf8e82d7b5df858f55b73208b8b9d67` — deployed 2025-07-16 19:34:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2026-02-09 was 43d from audit; next candidate 251d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | SecurityPool | unmatched — not counted | — | deployed in PoC but not in scope | no |
| [2026-03-23] Cyfrin - Rebase Batching.pdf | ERC677 | unmatched — not counted | — | deployed in PoC but not in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x1d0347c535c88cf6bb72df75aed34363edb4b2ae` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3106e2e148525b3db36795b04691d444c24972fb` | BurnMintERC677 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdfea35757264f5b6c0ff21104151d9f991d0eec0` | BurnMintERC677 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc271a17db5ce6f53745a3f466077ec816bc20a9c` | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe5b64a705db9d2395c471af1608972ccbace26e6` | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf2f7901b7bba5799493b617b06ead1862f771297` | FactoryBurnMintERC20 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb72d8f5213b3e52faf13aa074b03c4788e78349f` | GovernanceTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xda669f2ea3a54150242965238392d351235b1c1f` | RebaseController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a18aea755bd2ec7c0b7dd6f065bbb3725490342` | RewardsPoolWSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x77f555a6b9ec1fbff5f545128046338a566b5a56` | RewardsPoolWSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8753c00d1a94d04a01b931830011d882a3f8cc72` | RewardsPoolWSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x908b892276fb70fb6fd362ff97d58e7abf6d3690` | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbfbf47b2a3b9e54a44257bf57d4b078170096458` | WithdrawalPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2091d83592d79b4de5fd2ce3d98679c32a9555e6` | WrappedSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43ff5ffab0973815ef8672f71c49ee5e53f30a48` | WrappedSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 75 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 40 own (35 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 12 ambiguous, 109 unmatched
- Matched-own operational status: 40 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, medium=1
- Match method counts: temporal_name=12, unique_name=28

Zero-match audit list:

- [10454] [2023-03-07] Cyfrin - LSD Index Pool Report.pdf
- [10458] [2024-04-30] Trust Security - Insurance Pool Report.pdf
- [10459] [2024-04-30] Trust Security - Metis Staking Report.pdf
- [10468] [2025-08-02] Cyfrin - SDL Vesting.pdf
- [10469] [2025-08-02] Cyfrin - Vesting.pdf

Fork inheritance lineage and inherited audits are included when available.
