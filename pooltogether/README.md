# Agentic Audit Brief: PoolTogether

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 16 (1 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: PoolTogether (`pooltogether`)
- Website: [https://pooltogether.com/](https://pooltogether.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, celo, ethereum, gnosis, optimism, polygon, scroll
- Contract surface: 268 unique implementations (481 raw deployments)
- Coverage basis: 1/88 confirmed own live verified implementations (1.1%); conservative 1.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $8,728,463.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PoolTogether. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 103 contract row(s) across arbitrum, avalanche, base, ethereum, gnosis, optimism, polygon, scroll. Structural roles: 48 supporting, 33 core, 22 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 103
- Structural roles: supporting (48), core (33), unclassified (22)
- Contract kinds: contract (103)
- Detected standards: multicall (10), erc20 (8), erc4626 (6), erc20permit (5), ownable (5), erc165 (2)
- Frameworks: openzeppelin (62), prb-math (38), solmate (9), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 89 contracts are derived from known codebases. 89 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`, chain 534352)
- UnnamedContract (`0x3fdd8bfdf2f589c10c58457cdae989c7943a30a5`, chain 534352)
- UnnamedContract (`0x5ec48e749768aea9956cb38542a9837ec714537d`, chain 534352)
- UnnamedContract (`0x8cfffffa42407db9dcb974c2c744425c3e58d832`, chain 534352)
- UnnamedContract (`0x9cfe09ae8a5ff3ad386475407833837d0ee38f66`, chain 534352)
- UnnamedContract (`0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845`, chain 534352)
- UnnamedContract (`0xeb436bc5760927c6d32fc2820acfb437860392a3`, chain 534352)
- UnnamedContract (`0xf17d29f1c30da928bf98a73904681c12176de152`, chain 534352)
- Claimer (`0x54aa02cbc223fc834949fb1fd8c855e4da126c7d`, chain 1)
- Claimer (`0x0b5a1dc536d5a67c66d00b337e6b189385bd8438`, chain 10)
- Claimer (`0x220c9398b0ee07472bf8906e44574cb9fe3b8d90`, chain 10)
- Claimer (`0x0cffb70cdd335cc5380cb58166699edaa2b0bbfa`, chain 100)
- Claimer (`0x5ffeee76d1e2d2d1d18ba0bc77d8d047b85e1e87`, chain 8453)
- Claimer (`0xcdce635b774de77cdf791647601dba64a75547ba`, chain 8453)
- Claimer (`0x1e68e5e92d22aefdc791a61c874c06831023e571`, chain 42161)
- Claimer (`0xbea38368f2a657f00f173764f18f00e841317c73`, chain 42161)
- Claimer (`0xb04d5c80a3f6da11532d3a67184bb7be11f00285`, chain 534352)
- ClonableBeaconProxy (`0xcf934e2402a5e072928a39a956964eb8f2b5b79c`, chain 42161)
- DrawManager (`0x98305eb9a29d45ec93ce44ba02b315b631c675a7`, chain 1)
- DrawManager (`0x7eed7444de862c4f79c5820ff867fa3a82641857`, chain 10)
- DrawManager (`0x146efc8d651dc015225cc2e74707d87aa4d09067`, chain 100)
- DrawManager (`0x8a2782bedc79982ebfa3b68b315a2ee40daf6ab0`, chain 8453)
- DrawManager (`0xc00146957ff55fad7d27deb69ff95d79fdcd37e6`, chain 42161)
- DrawManager (`0xa75474749055f71560eb5dcff33605766c69ddf2`, chain 534352)
- EzDepositor (`0x84882eb46da981d1ad2f154359061942ca1c062f`, chain 1)
- EzDepositor (`0x68a100a3729fc04ab26fb4c0862df22ceec2f18b`, chain 10)
- EzDepositor (`0x69fc8095b949c0ff703ead99bf7d6620843c37ef`, chain 100)
- EzDepositor (`0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4`, chain 8453)
- EzDepositor (`0x5f9292672e33b76b70dea44163c780376b4da397`, chain 42161)
- EzDepositor (`0xbdf6bd9bde192861bd8e0e0a11dad71f178a34c8`, chain 534352)
- L2StandardERC20 (`0x395ae52bb17aef68c2888d941736a71dc6d4e125`, chain 10)
- OptimismMintableERC20 (`0xd652c5425aea2afd5fb142e120fecf79e18fafc3`, chain 8453)
- Pool (`0x0cec1a9154ff802e7934fc916ed7ca50bde6844e`, chain 1)
- PrizePool (`0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95`, chain 1)
- PrizePool (`0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55`, chain 10)
- PrizePool (`0x0c08c2999e1a14569554eddbcda9da5e1918120f`, chain 100)
- PrizePool (`0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb`, chain 8453)
- PrizePool (`0x52e7910c4c287848c8828e8b17b8371f4ebc5d42`, chain 42161)
- PrizePoolTwabRewards (`0x3341dac0912b630f1a8c237b64f6861e9fa11d79`, chain 1)
- PrizePoolTwabRewards (`0x36be31e7acd4b0d755bcc7858ef04848a3ec66c6`, chain 10)
- PrizePoolTwabRewards (`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`, chain 100)
- PrizePoolTwabRewards (`0xf4c47dacfda99be38793181af9fd1a2ec7576bbf`, chain 8453)
- PrizePoolTwabRewards (`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`, chain 42161)
- PrizeVault (`0x9ee31e845ff1358bf6b1f914d3918c6223c75573`, chain 1)
- PrizeVault (`0xa52e38a9147f5ea9e0c5547376c21c9e3f3e5e1f`, chain 10)
- PrizeVault (`0xb75af20ecadabed9049cc2f50e38bad2768b35cf`, chain 100)
- PrizeVault (`0x6b5a5c55e9dd4bb502ce25bbfbaa49b69cf7e4dd`, chain 8453)
- PrizeVault (`0x97a9c02cfbbf0332d8172331461ab476df1e8c95`, chain 42161)
- PrizeVault (`0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b`, chain 534352)
- PrizeVaultFactory (`0xd499ccf3e93f4cfb335ac388e3c896d59cdde7c3`, chain 1)
- PrizeVaultFactory (`0xec9f59bd06465b105e719c0b0483a4ed6a656775`, chain 10)
- PrizeVaultFactory (`0xc3ae3fe36a2645a93b2fe350d81e80a14831e2a6`, chain 100)
- PrizeVaultFactory (`0xa55a74a457d8a24d68dda0b5d1e0341746d444bf`, chain 8453)
- PrizeVaultFactory (`0x8020fb37b21e0ef1707ada7a914baf44f9045e52`, chain 42161)
- RngWitnet (`0xf93329e78feff1145fce03a79d5b356588dea215`, chain 1)
- RngWitnet (`0x3d2ef6c091f7cb69f06ec3117f36a28bc596aa7b`, chain 10)
- RngWitnet (`0x47c9212cc5c0836521346ce9b3d03ca91edf1123`, chain 100)
- RngWitnet (`0x74ebf391831c0757b5a4335f2f3abbb1499d18f0`, chain 8453)
- RngWitnet (`0xad1b8ec0151f13ba563226092b5f7308d8dc107b`, chain 42161)
- RngWitnet (`0x4d971a28bb23c6354f7cf1f4666c34b00e94f608`, chain 534352)
- ScrollStandardERC20 (`0xf9af83fc41e0cc2af2fba93644d542df6ea0f2b7`, chain 534352)
- TokenProxy (`0x216a7d520992ed198593a16e0b17c784c9cdc660`, chain 100)
- TpdaLiquidationPairFactory (`0xa99b3a8503260ab32753c382eac297acd4a43908`, chain 1)
- TpdaLiquidationPairFactory (`0x80f86691632d9863e6bcaa472e5c34574f77c7d1`, chain 10)
- TpdaLiquidationPairFactory (`0xbddd23fdd9fe824d58814ca6d898af518676368a`, chain 100)
- TpdaLiquidationPairFactory (`0x8557a9a33b573dc4403708c5a8746a52648374ea`, chain 8453)
- TpdaLiquidationPairFactory (`0x163402522fc0c0a7863479a069a8470fb22dfd3f`, chain 42161)
- TpdaLiquidationRouter (`0x7c210be12bcef8090610914189a0de43e2192ea0`, chain 1)
- TpdaLiquidationRouter (`0x7766b5e6839a1a218fc861b0810c504490876136`, chain 10)
- TpdaLiquidationRouter (`0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9`, chain 100)
- TpdaLiquidationRouter (`0xa9c937a0d1d22ad79099aea10efa62a270dfc22c`, chain 8453)
- TpdaLiquidationRouter (`0x7b4a60964994422bf19ae48a90fbff806767db73`, chain 42161)
- TpdaLiquidationRouter (`0x6f0b0ad2047f349594c8755ac080de9288d6ef7b`, chain 534352)
- TwabController (`0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc`, chain 1)
- TwabController (`0xcb0672de558ad8f122c0e081f0d35480ab3be167`, chain 10)
- TwabController (`0x84090aea5370565b88108c4ffed378672a8afde6`, chain 100)
- TwabController (`0x7e63601f7e28c758feccf8cdf02f6598694f44c6`, chain 8453)
- TwabController (`0x971ecc4e75c5fcfd8fc3eadc8f0c900b5914dc75`, chain 42161)
- TwabRewards (`0x2589ff8614f74704741ee3b51851b4ae812f1a21`, chain 1)
- TwabRewards (`0x90d383dea4dce52d3e5d3c93de75ef36da3ea9ea`, chain 10)
- TwabRewards (`0x1742157e6ef6e0cf7e49904f2c0d0fe38a276942`, chain 100)
- TwabRewards (`0x86f0923d20810441efc593eb0f2825c6bff2dc09`, chain 8453)
- TwabRewards (`0xe21ac38a7e80104c4f6512ce4908a22bc09c59be`, chain 42161)
- TwabRewards (`0x0e71a9a2bd4546e7fc2af47a015747daeb48780d`, chain 534352)
- VaultBoosterFactory (`0x31ec883727af3b9eb87b815550b0e33498f483e8`, chain 1)
- VaultBoosterFactory (`0x858029ed93b97d9015a63a5cc63e5872ee67f88c`, chain 10)
- VaultBoosterFactory (`0x8cfffffa42407db9dcb974c2c744425c3e58d832`, chain 100)
- VaultBoosterFactory (`0xa2ba3d22e2469bc0b46d57145d4bd212d3550ec2`, chain 8453)
- VaultBoosterFactory (`0x8cfffffa42407db9dcb974c2c744425c3e58d832`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 103; live-surface rows included: 103 (91 live, 12 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/112 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/88 (1.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 96 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 156 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 99 of 268 unique; 169 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/208
- Verified + Unaudited implementations: 207
- Verified by bytecode match: 0
- Unverified implementations: 60
- Unique implementations: 268
- Raw deployments: 481
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 1.1% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 0.5% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251870 | `0xa52e38a9147f5ea9e0c5547376c21c9e3f3e5e1f` | ✅ Audited |

### ⚠️ Verified + Unaudited (207)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3ERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x964356cecf4f4679cab76d969c043fcccaafe307`; optimism `0xdc1056cd48a46ee001faf851e50e83fb77c6f3c9` | ⚠️ Unaudited |
| AddressRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4658f736b93dcddcbce46cde955970e697fd351f` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcca60bb61934080951369a648fb03df4f96263c` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1a13f4ca1d028320a707d99520abfefca3998b7f` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x46a51127c3ce23fb7ab1de06226147f446e4a857` | ⚠️ Unaudited |
| ATokenYieldSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x32e8d4c9d1b711bc958d0ce8d14b41f77bb03a64`; polygon `0xd4f6d570133401079d213ecf4a14fa0b4bfb5b9c`; avalanche `0x4fb9178b46a06edb9231e650fbd8d64397f41051`; avalanche `0x5d0d2bba32d0913ffc852fecfdf26582410f5f66`; avalanche `0x7437db21a0deb844fa64223e2d6db569de9648ff` | ⚠️ Unaudited |
| AutonomousPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x188f932d3ac002057df3590b8e6134be2acd3bfc`; ethereum `0x21fbc617bb2f2e50377be68d62b68f74771eacc4` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-251843 | `0x54aa02cbc223fc834949fb1fd8c855e4da126c7d` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251854 | `0x0b5a1dc536d5a67c66d00b337e6b189385bd8438` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-251856 | `0x220c9398b0ee07472bf8906e44574cb9fe3b8d90` | ⚠️ Unaudited |
| Claimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x2589ff8614f74704741ee3b51851b4ae812f1a21`; optimism `0x47b55748243314be6a341668ecda2066c0625f70` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-251876 | `0x0cffb70cdd335cc5380cb58166699edaa2b0bbfa` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251930 | `0x5ffeee76d1e2d2d1d18ba0bc77d8d047b85e1e87` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | base | unit-251942 | `0xcdce635b774de77cdf791647601dba64a75547ba` | ⚠️ Unaudited |
| Claimer | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251893 | `0x1e68e5e92d22aefdc791a61c874c06831023e571` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-251905 | `0xbea38368f2a657f00f173764f18f00e841317c73` | ⚠️ Unaudited |
| Claimer | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-251922 | `0xb04d5c80a3f6da11532d3a67184bb7be11f00285` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251852 | `0xd84c4c7675e6eb79ea28d04c001e702ccc679e80` | ⚠️ Unaudited |
| ClaimerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x4457025dff44e3d9085d9195828e7d53fe6a7088`; ethereum `0x7a856d2c91c693299d527e66088b84eea36b152d`; optimism `0x34a1464d4eb70383f87c301300a7096edbe2aa8c`; optimism `0xcfedfbaab16f16a6c4e2321e7127659879d9e923`; optimism `0xef366ce3891c668f1f695d3ac5be4337f464605f` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251861 | `0x498c92bef017a91018eccae29b3b3c531e3f4794` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-251869 | `0x94f51a697920fd4c2be9a7675ca8e97475779cc3` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251881 | `0x22e3857db02c4db38870dddc286d0543869ea47e` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | base | unit-251934 | `0x804657333bcc97afa4bd38c4e8fd41d06e21c63c` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251943 | `0xd58a04fc8d34ce6b3633bf81ee7d5d25c71401e3` | ⚠️ Unaudited |
| ClaimerFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251898 | `0x64e77e749943a82bd2b7d81ae35ab9717b4de554` | ⚠️ Unaudited |
| ClaimerFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251907 | `0xc4824b6b0bb0559d919a606f258ee68a890757da` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4027de966127af5f015ea1cfd6293a3583892668` | ⚠️ Unaudited |
| ConfigurableReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdecd3c72187325c26f85099a89eed6d5bb4604d3` | ⚠️ Unaudited |
| ControlledTokenBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x03e75aeeb92add6f3b168412671360eb94f0dbf7`; ethereum `0x3e3a097af79d6389c16a1e2b3a2f056d3d543c53`; ethereum `0xaf00636e7d943a62ccb87e8153c1c97bf657f11d`; ethereum `0xf5ff8c8d23b70dcaa8eea48c9d1a6e0d64ad59cc`; polygon `0x317625b28acb3c0540db00b179d84d9b804277f7`; polygon `0x42ad7b4e9ef876388630363a28abab51a248fb4d`; polygon `0xef3d36a282e74b5bcba8a45262687ddb31495cd2` | ⚠️ Unaudited |
| ControlledTokenProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x97cbd3708cc001a8f7d1c4bc89936207f1fc70c7`; ethereum `0xa743f8a9d7c2d7e56e6983d0b60ff19ebc0ce727`; ethereum `0xdd8f31f7b9c6026311464bc07ae5db2f99f3892e`; ethereum `0xfb932b0bcfa5208d536600ab23c13ac55cd69ba1`; polygon `0x08411add0b5aa8ee47563b146743c13b3556c9cc`; polygon `0x59b34c5bc94e2d5b9dcb97ec935c94c353e5eb94`; polygon `0xaa4e28ead244b439eb670986ddf3f084522dc4f9` | ⚠️ Unaudited |
| DailyDoubleHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe34def1114d7bb0298636a2026d9cf3d67f19fbd` | ⚠️ Unaudited |
| DirectContributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x363b7a1567af0dbf06642c4028779c3f3365b516`; base `0x663dc65f5372dd952149d45fc3dcd0530285fbfe`; arbitrum `0x9527b4e411959971dcc9138df644f336e8999a54` | ⚠️ Unaudited |
| DrawBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d33612870cd9a475bbbbb7cc38fc66680decac5` | ⚠️ Unaudited |
| DrawBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x78ea5a9595279dc2f9608283875571b1151f19d4`; polygon `0x44b1d66e7b9d4467139924f31754f34cbc392f44`; avalanche `0x31bcaf169d25f938a25c2e4c762f3d1d3fa7db2e`; avalanche `0xe3e706b906c83a13dc9b84b79df455a783b8ec43` | ⚠️ Unaudited |
| DrawCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x14d0675580c7255043a3aed3726f5d7f33292730`; polygon `0x3976bd6f4b82c97314570a77bc1e979f7a839a24`; avalanche `0x0f5f5ef16465371152fc46c72d06fb0ec9392a47`; avalanche `0x5774883bdae608dfe885c2fcbfc24c6015cd45f0` | ⚠️ Unaudited |
| DrawCalculatorTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: ethereum `0x6ab2c44a548b8ac1d166afbf490b200ad4261c15`; polygon `0x676a541cf8cba8c324ace66e8dfd19cacf9c7484`; avalanche `0x01ee1ea692773f28c45d63133426f21923c3c2ba`; avalanche `0x3fb69b656c7fc3ddf32d59b4decb87eec2f95335`; avalanche `0xf1f789473023ad0c12d9fbe77c41b3ff4735141c` | ⚠️ Unaudited |
| DrawDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4ff319adac4c7d109f4024a33328088370a064` | ⚠️ Unaudited |
| DrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0aa9e2e0b37fb54c19e45cb246b17b0e700ab98d`; optimism `0x7e8e79eb264b42dcba887047f40b6db12c4f0940` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-251848 | `0x98305eb9a29d45ec93ce44ba02b315b631c675a7` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | optimism | unit-251865 | `0x7eed7444de862c4f79c5820ff867fa3a82641857` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | gnosis | unit-251878 | `0x146efc8d651dc015225cc2e74707d87aa4d09067` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | base | unit-251938 | `0x8a2782bedc79982ebfa3b68b315a2ee40daf6ab0` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251906 | `0xc00146957ff55fad7d27deb69ff95d79fdcd37e6` | ⚠️ Unaudited |
| DrawManager | governance | project_anchor | own_supporting | 0 | scroll | unit-251921 | `0xa75474749055f71560eb5dcff33605766c69ddf2` | ⚠️ Unaudited |
| EIP2612PermitAndDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xbe30611ca48d3fc131fdc6006626b90702478dfb`; avalanche `0xc660a8de5eb9e123e475ae9a9f62db62c92a3648` | ⚠️ Unaudited |
| ERC721ControlledFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e869b3a0978fa61dabd7da8f9b272aadc745fb3` | ⚠️ Unaudited |
| ERC721Ownable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5b84025e49e1ed2a61b8db7340fda576f300288` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251847 | `0x84882eb46da981d1ad2f154359061942ca1c062f` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | optimism | unit-251862 | `0x68a100a3729fc04ab26fb4c0862df22ceec2f18b` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251883 | `0x69fc8095b949c0ff703ead99bf7d6620843c37ef` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | base | unit-251929 | `0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251897 | `0x5f9292672e33b76b70dea44163c780376b4da397` | ⚠️ Unaudited |
| EzDepositor | unknown | project_anchor | own_supporting | 0 | scroll | unit-251923 | `0xbdf6bd9bde192861bd8e0e0a11dad71f178a34c8` | ⚠️ Unaudited |
| FireFighterClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a7cf7817dae50df822fb5d0fc0cdd87b38657e5` | ⚠️ Unaudited |
| FixedPriceLiquidationPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1739ece7a90243443543ea57eb5bfb5f4f8e606` | ⚠️ Unaudited |
| FixedPriceLiquidationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b718f250a74ad80da828d7d60b13993275d43c` | ⚠️ Unaudited |
| GenericSwapperHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0cf64e543f1e66a889aac3852dd9a6da5bc4985` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a87172f555ae2a2ab79be60b336d2f7d0187f0` | ⚠️ Unaudited |
| GpBoostHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x6be9c23aa3c2cfeff92d884e20d1ec9e134ab076`; optimism `0xdeef914a2ee2f2014ce401dcb4e13f6540d20ba7`; gnosis `0x65f3aea2594d82024b7ee98ddcf08f991ab1c626`; base `0x327b2ea9668a552fe5dec8e3c6e47e540a0a58c6`; arbitrum `0x1dcfb8b47c2f05ce86c21580c167485de1202e12` | ⚠️ Unaudited |
| L1TimelockTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc90a79fcb1dbad5f05e6c264f84ac4b0d351f94` | ⚠️ Unaudited |
| L2StandardERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-251859 | `0x395ae52bb17aef68c2888d941736a71dc6d4e125` | ⚠️ Unaudited |
| L2TimelockTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc366bf1a054ca495c09b1a722d863ac65746138e` | ⚠️ Unaudited |
| LiquidationPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc14e8cffe6e881363fe477cf71a5d7c6ca4de853` | ⚠️ Unaudited |
| LiquidationPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x555bd8fc65e57139c9f405980c7a9526a7de8093`; optimism `0x8aa2a1d364162fdfeb891d48f127e6923f9ab1a5`; optimism `0x9428f4b3ee5f5918ee16958c1717b5520fa3158e`; optimism `0xa1697e8f6b11d0e2f00d9dc8a5aeae2b2665650a`; optimism `0xcb54fc145bc53cb92f79bd8202d9c78d083b9f6f` | ⚠️ Unaudited |
| LiquidationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xc57e4fc79ab33db6a7bf26cc1ca43511744f83cd`; optimism `0xcb1b037a0b5f2bcbc748279876c3afe17bf549ce` | ⚠️ Unaudited |
| LiquidationRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xb9fba7b2216167dcdd1a7ae0a564dd43e1b68b95`; optimism `0xf4cfa53df258d78aad153ac11c644703651983f5` | ⚠️ Unaudited |
| LootBoxController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c2a966b7f5448a36ec9f896088dfb99b21d8a24`; ethereum `0x629bd2a0d4d8d092b9e00a5cf890485ffe3e2daa` | ⚠️ Unaudited |
| LootBoxPrizeStrategyListenerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e6a78d93d2935a638fdbd684e7b39565d0b7ea` | ⚠️ Unaudited |
| MatchingAssetFlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x29c102109d6cb2d866cfec380e0e10e9a287a75f`; optimism `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` | ⚠️ Unaudited |
| MCDAwarePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166e6c4679ea2c8e2f38f7fa8a814c61e6d77dc7` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1a33519f586a4c8aa37525163df8d67997016f` | ⚠️ Unaudited |
| MessageDispatcherOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a34e6cae749876fb8952ad7d2fa486b00f0683f`; ethereum `0xa8f85bab964d7e6be938b54bf4b29a247a88cd9d` | ⚠️ Unaudited |
| MigrateV2ToV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x071911fa06ab97447d644ee4d5bcfdd63c1081a0`; ethereum `0x45a9307cb7d99767e9c39638013a499ddbab06ea`; ethereum `0x801b4872a635dccc7e679eeaf04bef08e562972a`; ethereum `0x974c7308b5e02c860e1f6a5c9c2516af29c83c4b` | ⚠️ Unaudited |
| MultipleWinnersBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x10f61a36e1327036e5e416d52ff0f4b5c9efaaa3`; ethereum `0x3a1bc60023cf439335a984d153e02c62f515446e`; ethereum `0xf438bc6c3250be17b361042cca708a743a3fc5e5`; ethereum `0xf843d50d4a7dc43ea47682b444995dabdd014526`; polygon `0x72edd573e230c7d68274bf718a4c6ad82b5d5f90`; polygon `0xd1a6515aaf261f5bf5d00bf3311ca325d32ed5a0` | ⚠️ Unaudited |
| MultipleWinnersProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x4cb2f953f85b3ffdc97269f5cef6a4fcc0ca4d73`; ethereum `0x734e677ac3699f63f47c2bae7a8f3c16aff5ae70`; ethereum `0xb789b73ebea500e797c068c4a3d7b1b490b58475`; ethereum `0xf273efaed59fed4f41cb9e693eefd9b1191f1522`; polygon `0xdc488e6e8c55a11d20032997cd1ff7c4951401df`; polygon `0xf3317f7d9f6479eb8d2633c30c555aa09bd07cc7` | ⚠️ Unaudited |
| MultiTokenListener | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04458ba489cfa284ed8a693e3bea3e1df600d022`; polygon `0x8a4416453340ecf6c489eff3030edb632b0087b2` | ⚠️ Unaudited |
| NftChanceBoosterHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: optimism `0x7f15d92694257141a5e539762d93f91c43ab9a95`; base `0x26158db2448a5eccf6107d7494330e96404398c1`; base `0x519bdf6855968bcc2d921dcf22e586f3dbf2e299`; base `0x81b743dc3ebde24484a6e4625e224079c64ba620`; base `0x83cbc017b05d7528005b99031820b89be1daef32`; arbitrum `0x2fb736ad20d9d82e2dc54a9a648c2090b8039ea9` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-251944 | `0xd652c5425aea2afd5fb142e120fecf79e18fafc3` | ⚠️ Unaudited |
| PermitAndDepositDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x71fc2e52d426c852e06172c3a00180d5e9f8a70c`; ethereum `0x8a4416453340ecf6c489eff3030edb632b0087b2`; ethereum `0xdcc0d09bee9726e23256ebc059b7487cd78f65a0`; ethereum `0xe539c8ebe8f6050c7a8733f5c7c449f8d802fbff` | ⚠️ Unaudited |
| PermittableToken | token | project_anchor | own_supporting | 1 | gnosis | unit-251947 | `0x216a7d520992ed198593a16e0b17c784c9cdc660` | ⚠️ Unaudited |
| PodsUpkeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf547560eccf082af39fea77df60df664cdb72e` | ⚠️ Unaudited |
| Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251837 | `0x0cec1a9154ff802e7934fc916ed7ca50bde6844e` | ⚠️ Unaudited |
| PoolWithMultipleWinnersBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x39e2f33ff4ad3491106b3bb15dc66ebe24e4e9c7`; ethereum `0x8f2450023ca7e6c1bf361451ab2dceb32b3bb27d`; ethereum `0xad1c620137fa76f520f9a39daacd7b008d7d2f2d`; ethereum `0xbeb9d5538f6454d6ca82e9e901453986abda1e7a`; ethereum `0xd1e536939f637fc12f29c304c406377c9f77e28c`; ethereum `0xda64816f76bea59cde1ecbe5a094f6c56a7f9770`; polygon `0x5effa0823e486a5ed1d49d88a1374fc337e1f9f4`; polygon `0x920bd7c30b36c958fae800ee07660e6a56b86a2c` | ⚠️ Unaudited |
| PoolyNFT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3545192b340f50d77403dc0a64cf2b32f03d00a9`; ethereum `0x5663e3e096f1743e77b8f71b5de0cf9dfd058523`; ethereum `0x90b3832e2f2ade2fe382a911805b6933c056d6ed` | ⚠️ Unaudited |
| PrizeBoostHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x177b14c6b571262057c3c30e3ae6bb044f62e55c` | ⚠️ Unaudited |
| PrizeChunker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x239fc7c69ba8079ebec07156f13a6d78d234fa6b`; ethereum `0x526396e6df883d145f28c76d078f819b56bcc2fa`; ethereum `0x89bf5adfcda6e13edd50ba03e7277d9940f16dbd`; polygon `0x14e194cf5e1dd73bb46256495aea8ff36a7aa454`; polygon `0xc746877ce31583d4b0325421c25765ce3e1ad933`; polygon `0xd02d19e744c183ffd81757784e6fa576fddc3470` | ⚠️ Unaudited |
| PrizeDistributionBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0xf025a8d9e6080f885e841c8cc0e324368d7c6577`; polygon `0xcf6030bdeab4e503d186426510ad88c1da7125a3`; avalanche `0x748f6d44590c4c37a1ce54a41fb7a3c6defa563b`; avalanche `0xc8faa39e06ddb8362cb8e3ffdadeb5bf7877eccb` | ⚠️ Unaudited |
| PrizeDistributionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x13bef52354cf4036d7d522c147955a1ed2576e33`; avalanche `0x87fcf371d68d2429d57bf1badcbeec3463f0dd37`; avalanche `0x8bc2cbcfb211c34b6fdc5257dedf246dc1984383`; avalanche `0xd35108897e5fdfb03850b95145df456f656d747a` | ⚠️ Unaudited |
| PrizeDistributionFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032ba44eb2db607d2f9424b90e191bbfb51152a1` | ⚠️ Unaudited |
| PrizeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xb9a179dca5a7bf5f8b9e088437b3a85ebb495efe`; polygon `0x8141bcfbcee654c5de17c4e2b2af26b67f9b9056`; avalanche `0x83332f908f403ce795d90f677ce3f382fe73f3d1`; avalanche `0xc5d8623c92c543a60893ac8d38604559d365ae38` | ⚠️ Unaudited |
| PrizeFlush | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x2193b28b2bdfbf805506c9d91ed2021ba6fbc888`; polygon `0xa2342489470474536f04cd4dda2e8658303b305d`; avalanche `0x1896ea3465b11c86c40c5cedd571c8457daff385`; avalanche `0x1b20994c3894ecc862e26a9f4ec626a8489dd051` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251845 | `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` | ⚠️ Unaudited |
| PrizePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: ethereum `0xa6bff884a85306cd1ab61dc010e3dca94f39cbec`; optimism `0x8cfffffa42407db9dcb974c2c744425c3e58d832`; optimism `0xc6ae7db3b9552dad4a0adf92d67857ebfb48042d`; optimism `0xe32e5e1c5f0c80bd26def2d0ea5008c107000d6a` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251874 | `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251875 | `0x0c08c2999e1a14569554eddbcda9da5e1918120f` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | base | unit-251928 | `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` | ⚠️ Unaudited |
| PrizePool | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251895 | `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251840 | `0x3341dac0912b630f1a8c237b64f6861e9fa11d79` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | optimism | unit-251858 | `0x36be31e7acd4b0d755bcc7858ef04848a3ec66c6` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251877 | `0x0d51a33975024e8afc55fde9f6b070c10aa71dd9` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | base | unit-251946 | `0xf4c47dacfda99be38793181af9fd1a2ec7576bbf` | ⚠️ Unaudited |
| PrizePoolTwabRewards | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251891 | `0x0d51a33975024e8afc55fde9f6b070c10aa71dd9` | ⚠️ Unaudited |
| PrizeSplitStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x47a5abfacdebf5af312b034b3b748935a0259136`; polygon `0x879e176ae9fe9b00c30f4827364ea9e4fb35858d`; avalanche `0xa30cb2a488dc616f060a54ee7971d0bd832547ec`; avalanche `0xb2631852e98335d6f4282109f45e377fed58b807` | ⚠️ Unaudited |
| PrizeStakingVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x8f11cbfef3c1779b2c1c2c1dcfb20eee4ef18389`; optimism `0x7c4626ecc134ae1dbd46c82bd94ae2469302acf3`; base `0x48492f83d9e1d848d33a461d49a2071a6fdcc037`; arbitrum `0x9468ead4c425deeded5c65723fdc6fce6d3f3f20` | ⚠️ Unaudited |
| PrizeTierHistory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: ethereum `0xdd1cba915be9c7a1e60c4b99dade1fc49f67f80d`; avalanche `0x51d72281ed1d149ccbd7f290d3431c1d831f52c4`; avalanche `0xad9f8f45b8c11b34516bef114f7e4edbef7012e8`; avalanche `0xc3dad539e460103c860bb9ca547647edbd4903b6`; avalanche `0xd20fbf835c53dcd12436ca0d33a9f5244eba2dd3`; avalanche `0xee453022a843a8d3a3ca944bd601399cf520e8c9` | ⚠️ Unaudited |
| PrizeTierHistoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63c82be45399b5ca6041a3b6aac0f326614c8aaa` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-251849 | `0x9ee31e845ff1358bf6b1f914d3918c6223c75573` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-251887 | `0xb75af20ecadabed9049cc2f50e38bad2768b35cf` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | base | unit-251931 | `0x6b5a5c55e9dd4bb502ce25bbfbaa49b69cf7e4dd` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-251903 | `0x97a9c02cfbbf0332d8172331461ab476df1e8c95` | ⚠️ Unaudited |
| PrizeVault | core_logic | project_anchor | own_supporting | 0 | scroll | unit-251912 | `0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29c102109d6cb2d866cfec380e0e10e9a287a75f`; ethereum `0xed49a97b283e14a7925446040ea7d072c8a154a7` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251851 | `0xd499ccf3e93f4cfb335ac388e3c896d59cdde7c3` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251855 | `0x0c379e9b71ba7079084ada0d1c1aeb85d24dfd39` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251872 | `0xec9f59bd06465b105e719c0b0483a4ed6a656775` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251873 | `0xf0f151494658bae060034c8f4f199f74910ea806` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251889 | `0xc3ae3fe36a2645a93b2fe350d81e80a14831e2a6` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | base | unit-251940 | `0xa55a74a457d8a24d68dda0b5d1e0341746d444bf` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251945 | `0xe32f6344875494ca3643198d87524519dc396ddf` | ⚠️ Unaudited |
| PrizeVaultFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251894 | `0x44be003e55e7ce8a2e0ecc3266f8a9a9de2c07bc` | ⚠️ Unaudited |
| PrizeVaultFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251900 | `0x8020fb37b21e0ef1707ada7a914baf44f9045e52` | ⚠️ Unaudited |
| ReceiverTimelockTrigger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x24c3e15bdc10ce2cb1bec56cd43f397ce9b89430`; avalanche `0x832cb306640dd33542dba08ca1c13dd6686a3a88`; avalanche `0xc2e914f1ebe630335f10e6240a0bf0635a2e9cb7` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295`; polygon `0x20f29ccae4c9886964033042c6b79c2c4c816308` | ⚠️ Unaudited |
| RemoteOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x38449a6b7bb76638452273925c9a2ba818bd130d`; optimism `0x3a8f184b0d36541e5a1858ddcb4e581dd58ba06d`; optimism `0x503de67553edce0af5f02abdd980b0fe7cc3bf65`; optimism `0x55fa1cb7ed970a00ca67a30c3f742fb6c9803fde` | ⚠️ Unaudited |
| Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0xadb4d93d84b18b5d82063acf58b21587c92fdfb5`; ethereum `0xdb8e47befe4646fcc62be61eee5df350404c124f`; polygon `0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295`; polygon `0xce148f6acfee9fefb42a736b4976e657f35982b8`; avalanche `0x6358f8098b320971a40c0fd0fc7112a2d781be0d`; avalanche `0xf04e5b81e69cdc3c08bc5da64ca053ad46a3d029` | ⚠️ Unaudited |
| RewardLiquidatorFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xc2aa23f4a3da1b86e71bdc6700202b56066d3e2e`; optimism `0x7f75b9c7f04b02302943b0f08b02eaf2e13d5370`; gnosis `0xd09ca1a19e7c73e229d87dc83883719184426afb`; base `0x0526e9541a500b554ef318cdc44147f38a40b468`; base `0x778f1071eab44027f0a76a3d5b73c29ef406a9bf`; arbitrum `0xa030a818f6e9edc2fc294dac15eebfcd9d5ee5f2` | ⚠️ Unaudited |
| RngAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x539a76507f18505ca696d618f8a684814c867f41`; ethereum `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | ⚠️ Unaudited |
| RngAuctionRelayerRemoteOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xec9460c59cca1299b0242d6af426c21223cccd24`; ethereum `0xf4c47dacfda99be38793181af9fd1a2ec7576bbf` | ⚠️ Unaudited |
| RNGBlockhash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb1d89477d1b505c261bab6e73f08fa834544cd21`; polygon `0xb2dc5571f477b1c5b36509a71013bfedd9cc492f` | ⚠️ Unaudited |
| RngRelayAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x5f6c71b9551c081680a2ef9f9322f88dca7d25a8`; optimism `0x87d3d9afed1702728b7f280ba5c4b4c55defa557`; optimism `0xb06aebe38cabe0eec4bd741f49e9a4b64ef51b49`; optimism `0xf4c47dacfda99be38793181af9fd1a2ec7576bbf` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251853 | `0xf93329e78feff1145fce03a79d5b356588dea215` | ⚠️ Unaudited |
| RngWitnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: ethereum `0xa1697e8f6b11d0e2f00d9dc8a5aeae2b2665650a`; optimism `0x18928a03829a609292133d605ff6007151b9eecb`; optimism `0x4457025dff44e3d9085d9195828e7d53fe6a7088`; optimism `0x4917f3dded9391f8bb80fea4359fb1f08e76afda`; optimism `0xc3118f33832b9c6a964adc8954e3a7c5b7409923`; gnosis `0xcf466582512470fb8faec1216fd43f66015ad5ce` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | optimism | unit-251860 | `0x3d2ef6c091f7cb69f06ec3117f36a28bc596aa7b` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251882 | `0x47c9212cc5c0836521346ce9b3d03ca91edf1123` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | base | unit-251932 | `0x74ebf391831c0757b5a4335f2f3abbb1499d18f0` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251904 | `0xad1b8ec0151f13ba563226092b5f7308d8dc107b` | ⚠️ Unaudited |
| RngWitnet | unknown | project_anchor | own_supporting | 0 | scroll | unit-251914 | `0x4d971a28bb23c6354f7cf1f4666c34b00e94f608` | ⚠️ Unaudited |
| SablierManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0589c7a2b2acb895ff0314a394a6d991a9204444`; ethereum `0x17cbf69d3de5c7221ae07cff6296f661bb44122b` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-251926 | `0xf9af83fc41e0cc2af2fba93644d542df6ea0f2b7` | ⚠️ Unaudited |
| SimpleVaultBoosterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0xefdfb75de853c3b1a37b521956037f44a35cd176`; base `0x38449a6b7bb76638452273925c9a2ba818bd130d`; base `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | ⚠️ Unaudited |
| SingleRandomWinnerBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6358441f68ed4707e1c4366a0d2e2233bb4841d` | ⚠️ Unaudited |
| SingleRandomWinnerProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6c7330466ae67d1eda70bf3ad50a75e8a269e51f`; ethereum `0xba49b45bc5f7e3f23b5d994082038c836895adfd`; ethereum `0xc79b5d46f010c88f738a00b3bed7757d04dd2a37` | ⚠️ Unaudited |
| SponsorshipVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x015caa3d12755ac9aac1f7ebebf40b0da8f03ef3` | ⚠️ Unaudited |
| StakePrizePoolBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6dc7ca9e2c19da475b39cce7437994c1725d85c9`; ethereum `0xf4660841400ffe067c7172934f31b43e0cbe359f` | ⚠️ Unaudited |
| StakePrizePoolProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x166f6240a5560a34352b054468deb85042c85142`; ethereum `0x259d46f1559e4d41faf61d858b4b439d3962fc57`; ethereum `0x3b694ce9d12f0bf032bf002b3b0473cb58bbe3f0`; ethereum `0x5ae75894efcc1f8340b58d0efb3d59bf366b6a4e`; ethereum `0x91817512578e22d4ab2a70683280bfbe11c504b4`; polygon `0x97762742aea8cc2c54c368aacb9e1bf8aad8f17b`; polygon `0xafcea072bcbad91029a2ba0b37bac8269dd4f5e6` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251844 | `0x68a100a3729fc04ab26fb4c0862df22ceec2f18b` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1aca6f110db0246e859c2bd47d2eb78b489969` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-251857 | `0x2c30004ec09e731dffcd5783569fb2e09c473732` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251886 | `0x9ef19fc007b7fb0b0d378b9899b4b33c200ef172` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | base | unit-251935 | `0x854f3d91e53d0fc9dba9822bc74f574c7380436d` | ⚠️ Unaudited |
| StakingVault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251909 | `0xf59e484934b64121a698b17bef386d443554da1f` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-251948 | `0xcf934e2402a5e072928a39a956964eb8f2b5b79c` | ⚠️ Unaudited |
| Ticket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xdd4d117723c257cee402285d3acf218e9a8236e1`; polygon `0x6a304dfdb9f808741244b6bfee65ca7b3b3a6076`; avalanche `0x9edc7007b0803a0ec913d575ce1a3a85a9b8bde6`; avalanche `0xb27f379c050f6ed0973a01667458af6ecebc1d90` | ⚠️ Unaudited |
| TicketProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x59b34c5bc94e2d5b9dcb97ec935c94c353e5eb94`; ethereum `0x67581cc48320d7ab4eba57e26d05d665a0ff31db`; ethereum `0x8bb5af6f10391cdbfb4c6f141a8b31a55b3411b5`; ethereum `0xa7d0d3c4f96bb896e0878ef4b83e5ca79700acb9`; polygon `0x259d46f1559e4d41faf61d858b4b439d3962fc57`; polygon `0x58af4554c0db496efdf93bb344ec513c5627efb9`; polygon `0xd08a60b0a41a1282efcceef13ce187f848549170` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42cd8312d2bce04277dd5161832460e95b24262e` | ⚠️ Unaudited |
| TokenFaucetProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x63fe3d163a3533f3d13ace30c539a9e8c290d630`; ethereum `0xe19fe7a9aa49585510041ecde274f6926c212c43`; ethereum `0xe4e9cdb3e139d7e8a41172c20b6ed17b6750f117`; polygon `0xb3e8bbd6cb0443e0dc59602825dc6854d7ec5c4b`; polygon `0xdb8e47befe4646fcc62be61eee5df350404c124f`; polygon `0xeaa636304a7c8853324b6b603dcde55f92dfbab1` | ⚠️ Unaudited |
| TokenVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x37203b841cb891f0d263c3895bf50866519b7746`; base `0xc05748ad5c2820eba273be26bc4d5512eea5a489` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251850 | `0xa99b3a8503260ab32753c382eac297acd4a43908` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0x43069a907a69ab1f66b1f8417ddc790346920323`; optimism `0x0796be5c62669aadd8e1a41645344ebe51e7f668` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251866 | `0x80f86691632d9863e6bcaa472e5c34574f77c7d1` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251888 | `0xbddd23fdd9fe824d58814ca6d898af518676368a` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | base | unit-251936 | `0x8557a9a33b573dc4403708c5a8746a52648374ea` | ⚠️ Unaudited |
| TpdaLiquidationPairFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251892 | `0x163402522fc0c0a7863479a069a8470fb22dfd3f` | ⚠️ Unaudited |
| TpdaLiquidationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6cb52020204a526c2a86998b8dc3b0b4fac9fbc1`; optimism `0xe2d27ceed889da6d30eaf6723a0b6e5770d96bae` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-251846 | `0x7c210be12bcef8090610914189a0de43e2192ea0` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-251864 | `0x7766b5e6839a1a218fc861b0810c504490876136` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | gnosis | unit-251879 | `0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | base | unit-251941 | `0xa9c937a0d1d22ad79099aea10efa62a270dfc22c` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-251899 | `0x7b4a60964994422bf19ae48a90fbff806767db73` | ⚠️ Unaudited |
| TpdaLiquidationRouter | adapter | project_anchor | own_supporting | 0 | scroll | unit-251916 | `0x6f0b0ad2047f349594c8755ac080de9288d6ef7b` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21950e281bde1714ffd1062ed17c56d4d8de2359` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | ethereum | unit-251842 | `0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc` | ⚠️ Unaudited |
| TwabController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: ethereum `0xf4cfa53df258d78aad153ac11c644703651983f5`; optimism `0x0d51a33975024e8afc55fde9f6b070c10aa71dd9`; optimism `0x499a9f249ec4c8ea190bebbfd96f9a83bf4f6e52`; optimism `0x5e5e492c502fce1726be4801c62972f32ae2c55e`; optimism `0x71c75563be4aa95b186c383e1446754f89795ff6`; optimism `0x7deef0fdab8ffd8ab7568a13abda37ccf31f9038`; optimism `0xb9397506712f1177bffcb124cda250d24fa8f206`; gnosis `0x6563996aa856649dbf1326490d2ec0c0627d7060` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | optimism | unit-251871 | `0xcb0672de558ad8f122c0e081f0d35480ab3be167` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | gnosis | unit-251884 | `0x84090aea5370565b88108c4ffed378672a8afde6` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | base | unit-251933 | `0x7e63601f7e28c758feccf8cdf02f6598694f44c6` | ⚠️ Unaudited |
| TwabController | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251902 | `0x971ecc4e75c5fcfd8fc3eadc8f0c900b5914dc75` | ⚠️ Unaudited |
| TwabDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: ethereum `0x5cfbee38362b9a60be276763753f64245ea990f7`; optimism `0x3989cbc1fb0eb278601c018ed7627b07be9de4cb`; optimism `0x49148543034f9ba3005c1d40ca9e6ffaf20b42c6`; optimism `0x49e8e9b415d05adccd64344bf85573813747bfa5`; optimism `0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc`; optimism `0x5c2f7fa8a4de39e65ca546b63c472865abaa600b`; optimism `0x9cbbde93886d231005dcb1c524c89be3302b80b1`; optimism `0xa7da697214eda2383f41dba60c8d559fa166c52e`; optimism `0xf93329e78feff1145fce03a79d5b356588dea215`; base `0x214a21bccf9acce40a65e2223e8e73bdffd6ce5e`; base `0x9678d0bfbe0f940e0ac0cac52fea506f838b801a`; base `0x9f925ace48e92089e77873af2c00ea0236d64418`; base `0xb6ec5f64058e37ff4871ca76deae3b8f624181cd`; base `0xf40fe4607b32733896fb3dd89b0602f90623c937`; arbitrum `0xb8e2fabda03b0ca3b5de5a5f4eec3fabdb3f6dda`; arbitrum `0xdd734d67d050733b3b45430ef25f82573d0e3ce6`; arbitrum `0xe2f1196ac8105443668acc9af7be338836bfb73d` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251838 | `0x2589ff8614f74704741ee3b51851b4ae812f1a21` | ⚠️ Unaudited |
| TwabRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: ethereum `0x3cb049db6d3e100b8b4765ca051c809adcc17ed1`; ethereum `0xa469deff6d52c9571d13513e3cd7d94496082d81`; ethereum `0xe7934ee0c8b877269a5688ee26dd853785212618`; optimism `0x27ed5760edc0128e3043f6cc0c3428e337396a66`; optimism `0xefb96e28205360c1fa1d2158f7d02fe3c7749f99` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | optimism | unit-251868 | `0x90d383dea4dce52d3e5d3c93de75ef36da3ea9ea` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | gnosis | unit-251880 | `0x1742157e6ef6e0cf7e49904f2c0d0fe38a276942` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | base | unit-251937 | `0x86f0923d20810441efc593eb0f2825c6bff2dc09` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251908 | `0xe21ac38a7e80104c4f6512ce4908a22bc09c59be` | ⚠️ Unaudited |
| TwabRewards | unknown | project_anchor | own_supporting | 0 | scroll | unit-251911 | `0x0e71a9a2bd4546e7fc2af47a015747daeb48780d` | ⚠️ Unaudited |
| UnsafeTokenListenerDelegatorProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3fab224830c182972239f6a599a5a5bd64e43d6d`; ethereum `0xd952003a0e4b6a63507dc7c0889e841d6bddb1ba` | ⚠️ Unaudited |
| V3PrizePoolLiquidatorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ca3cf8b47b596f2d9b440edc59542539619baec`; ethereum `0x8ab3ba7413b8b0eba426c8a4696d6232e934d0c8` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x29cb69d4780b53c1e5cd4d2b817142d2e9890715`; optimism `0x31515cfc4550d9c83e2d86e8a352886d1364e2d9`; optimism `0xe3b3a464ee575e8e25d2508918383b89c832f275` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-251839 | `0x31ec883727af3b9eb87b815550b0e33498f483e8` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-251841 | `0x36be31e7acd4b0d755bcc7858ef04848a3ec66c6` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x25d6927cbe94323ec88b8c60ecd57f3002850004`; optimism `0x17b9d77a393f2aa311e5ef08b73f3239b7f66837`; optimism `0x43069a907a69ab1f66b1f8417ddc790346920323` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | optimism | unit-251863 | `0x7746a79332df154e29c5b105c4d6bae61e71dada` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-251867 | `0x858029ed93b97d9015a63a5cc63e5872ee67f88c` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-251885 | `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | gnosis | unit-251890 | `0xc9f124901c1acfd254db4177dfc76c72c01c4a78` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-251927 | `0x02d37f2654b4161801c8d7369b43a8762a31530e` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | base | unit-251939 | `0xa2ba3d22e2469bc0b46d57145d4bd212d3550ec2` | ⚠️ Unaudited |
| VaultBoosterFactory | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251896 | `0x574257f5601115b9bec90a64a056107b030b449e` | ⚠️ Unaudited |
| VaultBoosterFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-251901 | `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xa469deff6d52c9571d13513e3cd7d94496082d81`; optimism `0xf65fa202907d6046d1ef33c521889b54bde08081` | ⚠️ Unaudited |
| VaultFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b17ee3a95bccd605340454c5919e693ef8eff0e` | ⚠️ Unaudited |
| VaultPrizePoolBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1469c3c2f8cbacafced0a271711e3491700b4f5d` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf0b19f02c63d51b69563a2b675e0160e1c34397c` | ⚠️ Unaudited |
| YieldSourcePrizePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: ethereum `0xd89a09084555a7d0abe7b111b1f78dfeddd638be`; polygon `0x19de635fb3678d8b8154e37d8c9cdf182fe84e60`; polygon `0x887e17d791dcb44bfdda3023d26f7a04ca9c7ef4`; polygon `0xee06abe9e2af61cabcb13170e01266af2defa946`; avalanche `0xf830f5cb2422d555ec34178e27094a816c8f95ec` | ⚠️ Unaudited |
| YieldSourcePrizePoolProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0835c8c4ab282b5dbf06d59e1489ef17f1c40d96`; ethereum `0x4a8fa50b10ac2221d5767ab3f05ff7011a46d500`; ethereum `0x692f55051dc060d94227467ee4fbde72d370728c`; ethereum `0xe3325f8c5e88a57d787214ea8c001763c1ce99da`; polygon `0x447838a9a11f7190c9f7e65c43be685cd8109962`; polygon `0x4d1639e4b237bcab6f908a1ceb0995716d5ebe36` | ⚠️ Unaudited |
| yVaultPrizePoolBuilder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3d36a282e74b5bcba8a45262687ddb31495cd2` | ⚠️ Unaudited |
| yVaultPrizePoolProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3357d3a038006f47ecf05110c7629eff3b24cf5e`; ethereum `0x44c585e76a5da580f59b0a3add7ca0c96bf4fe2a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0174786d7e9c4b903f7f7768c39dc404a4f8509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98305eb9a29d45ec93ce44ba02b315b631c675a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafcede71e62684de45d423712feeebb83863dfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcdccba7e1a211142097378f384cd2c23bf398bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03e75aeeb92add6f3b168412671360eb94f0dbf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17cfe08818e8260fae3a19761668ebc27b24d72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4027de966127af5f015ea1cfd6293a3583892668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44c585e76a5da580f59b0a3add7ca0c96bf4fe2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dc7ca9e2c19da475b39cce7437994c1725d85c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6358441f68ed4707e1c4366a0d2e2233bb4841d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6d1c81a07c080d11a39f151e0ae69543a20e6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1d89477d1b505c261bab6e73f08fa834544cd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc79b5d46f010c88f738a00b3bed7757d04dd2a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb876f60399897db24058b2d58d0b9f713175eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd8f31f7b9c6026311464bc07ae5db2f99f3892e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1d06d492107f14ae024c357005c5c692158b13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef2d0b09f8b12179175e303546faab21b65b713e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37a7add22e0da57220cef887a75cbfa959f34784` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251910 | `0x0d51a33975024e8afc55fde9f6b070c10aa71dd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x23dbacc4e588fadc2d3eed3d1eddb8daa57714ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x26f05095a371e0e4f399391d708643a5779be537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2a0344125984cb8da4caaa479db3e789c927669b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2d3ad415198d7156e8c112a508b8306699f6e4cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3f21b29dbcde83908bc08b6bb4fb427afbf2e57c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251913 | `0x3fdd8bfdf2f589c10c58457cdae989c7943a30a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x47d5000bf232d5903a75f89df3e64c8664af5b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4ea44ec3d075499bee27f801a9405bb4701f8c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x50f36a5e6e62e5e46bb8ed553bcecde9d1f4d42c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251915 | `0x5ec48e749768aea9956cb38542a9837ec714537d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x64dc7544c0da701cdf74abf4937bed7f6abb9386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x66c2aa89cff8252f2b7c42c169cf2495d82005b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6b0877bcb4720f094bc13187f5e16bdbf730693a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6ce4c59d94024e4b5b4f3e6e77cbb41540d3a56d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d73bfb022b811c98ebec8e8666273baed005579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6f36db785ae66c6072883015a375d76341e36d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6f720053319f89c9670234989a5bd807a37d1792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7026b77376547ba7961c16a4a05edae070abec47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x713debec405bb46d718fe1e29e540bb32b56eb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7275901c394fb5bc6b52b9a039a751b22322c7dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | scroll | unit-251917 | `0x748300bbdcdc5b258b055e1ae9ff25a32c024b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7b469054cb082487c88f1114755d0dbdc88b2bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x89db94bdf64edad2b04f1e031b8354f7917ce58f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8a37953461696882e728019ef77e3b84e0ece952` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251918 | `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251919 | `0x9cfe09ae8a5ff3ad386475407833837d0ee38f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa15316214d52d907712d751987d4593972cf3b8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251920 | `0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb0e5bc69065ef1078fd641ae6a0860441e9e21e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbc5b4d95c21afa808e4954e8cae1c8afe2202b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc024e95cf6bb2efc424c9035db4647a12d8dcac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xccaac4ee88ac1939aebc8b5c64b25550361ff5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd017a6a48ea195adb4d09f7cae0815382f46b314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdf0445868401a0eb1da422ead439cf87d365b88f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe51dce3d6f46ab078f6994e39b0839238284c8e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251924 | `0xeb436bc5760927c6d32fc2820acfb437860392a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xed7497bb13f527f3a7306c4b5c721993b98e386c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xefdff129414e7e7ea5223c69cb71ced17f5658ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251925 | `0xf17d29f1c30da928bf98a73904681c12176de152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfc2ba55cfd10c872d0adb5e6ed3018ad999e6295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfe2402c48cea2a8a115a1555129046c48a59f835` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 326
- Live contracts: 10
- Unknown liveness contracts: 316
- Source-verified contracts: 306
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=242, contamination review=14, source verified unclassified=50, unverified unclassified=20

Showing first 200 of 326 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ClaimerFactory<br>`0x4457025dff44e3d9085d9195828e7d53fe6a7088` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | ClaimerFactory<br>`0x7a856d2c91c693299d527e66088b84eea36b152d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | ClaimerFactory<br>`0xd84c4c7675e6eb79ea28d04c001e702ccc679e80` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x51ac3a83f59f104b1f9fd7fbb7f295b813fb7f40` |
| candidate review | Comptroller<br>`0x4027de966127af5f015ea1cfd6293a3583892668` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenBuilder<br>`0x03e75aeeb92add6f3b168412671360eb94f0dbf7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenBuilder<br>`0x3e3a097af79d6389c16a1e2b3a2f056d3d543c53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenBuilder<br>`0xaf00636e7d943a62ccb87e8153c1c97bf657f11d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenBuilder<br>`0xf5ff8c8d23b70dcaa8eea48c9d1a6e0d64ad59cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenProxyFactory<br>`0x97cbd3708cc001a8f7d1c4bc89936207f1fc70c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenProxyFactory<br>`0xa743f8a9d7c2d7e56e6983d0b60ff19ebc0ce727` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenProxyFactory<br>`0xdd8f31f7b9c6026311464bc07ae5db2f99f3892e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenProxyFactory<br>`0xfb932b0bcfa5208d536600ab23c13ac55cd69ba1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | DrawBeacon<br>`0x0d33612870cd9a475bbbbb7cc38fc66680decac5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | DrawCalculator<br>`0x14d0675580c7255043a3aed3726f5d7f33292730` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | DrawCalculatorTimelock<br>`0x6ab2c44a548b8ac1d166afbf490b200ad4261c15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | DrawDispatcher<br>`0xac4ff319adac4c7d109f4024a33328088370a064` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4d40eb12430a57965cee3015348d490c6156df20` |
| candidate review | DrawManager<br>`0x0aa9e2e0b37fb54c19e45cb246b17b0e700ab98d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | ERC721ControlledFactory<br>`0x4e869b3a0978fa61dabd7da8f9b272aadc745fb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | GpBoostHook<br>`0x6be9c23aa3c2cfeff92d884e20d1ec9e134ab076` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x51ac3a83f59f104b1f9fd7fbb7f295b813fb7f40` |
| candidate review | L1TimelockTrigger<br>`0xdc90a79fcb1dbad5f05e6c264f84ac4b0d351f94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | LootBoxController<br>`0x2c2a966b7f5448a36ec9f896088dfb99b21d8a24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | LootBoxPrizeStrategyListenerFactory<br>`0x25e6a78d93d2935a638fdbd684e7b39565d0b7ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersBuilder<br>`0x10f61a36e1327036e5e416d52ff0f4b5c9efaaa3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersBuilder<br>`0x3a1bc60023cf439335a984d153e02c62f515446e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersBuilder<br>`0xf438bc6c3250be17b361042cca708a743a3fc5e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersBuilder<br>`0xf843d50d4a7dc43ea47682b444995dabdd014526` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersProxyFactory<br>`0x4cb2f953f85b3ffdc97269f5cef6a4fcc0ca4d73` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersProxyFactory<br>`0x734e677ac3699f63f47c2bae7a8f3c16aff5ae70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersProxyFactory<br>`0xb789b73ebea500e797c068c4a3d7b1b490b58475` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersProxyFactory<br>`0xf273efaed59fed4f41cb9e693eefd9b1191f1522` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PermitAndDepositDai<br>`0x71fc2e52d426c852e06172c3a00180d5e9f8a70c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PermitAndDepositDai<br>`0x8a4416453340ecf6c489eff3030edb632b0087b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PermitAndDepositDai<br>`0xdcc0d09bee9726e23256ebc059b7487cd78f65a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PermitAndDepositDai<br>`0xe539c8ebe8f6050c7a8733f5c7c449f8d802fbff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0x39e2f33ff4ad3491106b3bb15dc66ebe24e4e9c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0x8f2450023ca7e6c1bf361451ab2dceb32b3bb27d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0xad1c620137fa76f520f9a39daacd7b008d7d2f2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0xbeb9d5538f6454d6ca82e9e901453986abda1e7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0xd1e536939f637fc12f29c304c406377c9f77e28c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0xda64816f76bea59cde1ecbe5a094f6c56a7f9770` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeChunker<br>`0x239fc7c69ba8079ebec07156f13a6d78d234fa6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeChunker<br>`0x526396e6df883d145f28c76d078f819b56bcc2fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeChunker<br>`0x89bf5adfcda6e13edd50ba03e7277d9940f16dbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeDistributionBuffer<br>`0xf025a8d9e6080f885e841c8cc0e324368d7c6577` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeDistributionFactoryV2<br>`0x032ba44eb2db607d2f9424b90e191bbfb51152a1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4d40eb12430a57965cee3015348d490c6156df20` |
| candidate review | PrizeDistributor<br>`0xb9a179dca5a7bf5f8b9e088437b3a85ebb495efe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizePool<br>`0xa6bff884a85306cd1ab61dc010e3dca94f39cbec` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | PrizeSplitStrategy<br>`0x47a5abfacdebf5af312b034b3b748935a0259136` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeTierHistory<br>`0xdd1cba915be9c7a1e60c4b99dade1fc49f67f80d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeTierHistoryV2<br>`0x63c82be45399b5ca6041a3b6aac0f326614c8aaa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4d40eb12430a57965cee3015348d490c6156df20` |
| candidate review | PrizeVaultFactory<br>`0x29c102109d6cb2d866cfec380e0e10e9a287a75f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | PrizeVaultFactory<br>`0xed49a97b283e14a7925446040ea7d072c8a154a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | Registry<br>`0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | Reserve<br>`0xadb4d93d84b18b5d82063acf58b21587c92fdfb5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | Reserve<br>`0xdb8e47befe4646fcc62be61eee5df350404c124f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | RewardLiquidatorFactory<br>`0xc2aa23f4a3da1b86e71bdc6700202b56066d3e2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x51ac3a83f59f104b1f9fd7fbb7f295b813fb7f40` |
| candidate review | RngAuction<br>`0x539a76507f18505ca696d618f8a684814c867f41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4d40eb12430a57965cee3015348d490c6156df20` |
| candidate review | RngAuction<br>`0x8cfffffa42407db9dcb974c2c744425c3e58d832` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | RngAuctionRelayerRemoteOwner<br>`0xec9460c59cca1299b0242d6af426c21223cccd24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4d40eb12430a57965cee3015348d490c6156df20` |
| candidate review | RngAuctionRelayerRemoteOwner<br>`0xf4c47dacfda99be38793181af9fd1a2ec7576bbf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | RngWitnet<br>`0xa1697e8f6b11d0e2f00d9dc8a5aeae2b2665650a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | SablierManager<br>`0x0589c7a2b2acb895ff0314a394a6d991a9204444` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | SablierManager<br>`0x17cbf69d3de5c7221ae07cff6296f661bb44122b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | SingleRandomWinnerBuilder<br>`0xa6358441f68ed4707e1c4366a0d2e2233bb4841d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | SingleRandomWinnerProxyFactory<br>`0x6c7330466ae67d1eda70bf3ad50a75e8a269e51f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | SingleRandomWinnerProxyFactory<br>`0xba49b45bc5f7e3f23b5d994082038c836895adfd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | SingleRandomWinnerProxyFactory<br>`0xc79b5d46f010c88f738a00b3bed7757d04dd2a37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolBuilder<br>`0x6dc7ca9e2c19da475b39cce7437994c1725d85c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolBuilder<br>`0xf4660841400ffe067c7172934f31b43e0cbe359f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolProxyFactory<br>`0x166f6240a5560a34352b054468deb85042c85142` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolProxyFactory<br>`0x259d46f1559e4d41faf61d858b4b439d3962fc57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolProxyFactory<br>`0x3b694ce9d12f0bf032bf002b3b0473cb58bbe3f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolProxyFactory<br>`0x5ae75894efcc1f8340b58d0efb3d59bf366b6a4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolProxyFactory<br>`0x91817512578e22d4ab2a70683280bfbe11c504b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakingVault<br>`0x68a100a3729fc04ab26fb4c0862df22ceec2f18b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | StakingVault<br>`0x7c1aca6f110db0246e859c2bd47d2eb78b489969` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TicketProxyFactory<br>`0x59b34c5bc94e2d5b9dcb97ec935c94c353e5eb94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TicketProxyFactory<br>`0x67581cc48320d7ab4eba57e26d05d665a0ff31db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TicketProxyFactory<br>`0x8bb5af6f10391cdbfb4c6f141a8b31a55b3411b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TicketProxyFactory<br>`0xa7d0d3c4f96bb896e0878ef4b83e5ca79700acb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | Timelock<br>`0x42cd8312d2bce04277dd5161832460e95b24262e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TpdaLiquidationPairFactory<br>`0x43069a907a69ab1f66b1f8417ddc790346920323` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TpdaLiquidationRouter<br>`0x6cb52020204a526c2a86998b8dc3b0b4fac9fbc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TreasuryVester<br>`0x21950e281bde1714ffd1062ed17c56d4d8de2359` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TwabController<br>`0xf4cfa53df258d78aad153ac11c644703651983f5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TwabRewards<br>`0x3cb049db6d3e100b8b4765ca051c809adcc17ed1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4d40eb12430a57965cee3015348d490c6156df20` |
| candidate review | TwabRewards<br>`0xa469deff6d52c9571d13513e3cd7d94496082d81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TwabRewards<br>`0xe7934ee0c8b877269a5688ee26dd853785212618` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4d40eb12430a57965cee3015348d490c6156df20` |
| candidate review | UnsafeTokenListenerDelegatorProxyFactory<br>`0xd952003a0e4b6a63507dc7c0889e841d6bddb1ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | VaultBoosterFactory<br>`0x25d6927cbe94323ec88b8c60ecd57f3002850004` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | VaultBoosterFactory<br>`0x36be31e7acd4b0d755bcc7858ef04848a3ec66c6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | VaultPrizePoolBuilder<br>`0x1469c3c2f8cbacafced0a271711e3491700b4f5d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | YieldSourcePrizePoolProxyFactory<br>`0x0835c8c4ab282b5dbf06d59e1489ef17f1c40d96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | YieldSourcePrizePoolProxyFactory<br>`0x4a8fa50b10ac2221d5767ab3f05ff7011a46d500` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | YieldSourcePrizePoolProxyFactory<br>`0x692f55051dc060d94227467ee4fbde72d370728c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | YieldSourcePrizePoolProxyFactory<br>`0xe3325f8c5e88a57d787214ea8c001763c1ce99da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | yVaultPrizePoolBuilder<br>`0xef3d36a282e74b5bcba8a45262687ddb31495cd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | yVaultPrizePoolProxyFactory<br>`0x3357d3a038006f47ecf05110c7629eff3b24cf5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | yVaultPrizePoolProxyFactory<br>`0x44c585e76a5da580f59b0a3add7ca0c96bf4fe2a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | Claimer<br>`0x2589ff8614f74704741ee3b51851b4ae812f1a21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | Claimer<br>`0x47b55748243314be6a341668ecda2066c0625f70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | ClaimerFactory<br>`0x34a1464d4eb70383f87c301300a7096edbe2aa8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | ClaimerFactory<br>`0x498c92bef017a91018eccae29b3b3c531e3f4794` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | ClaimerFactory<br>`0x94f51a697920fd4c2be9a7675ca8e97475779cc3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | ClaimerFactory<br>`0xcfedfbaab16f16a6c4e2321e7127659879d9e923` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | ClaimerFactory<br>`0xef366ce3891c668f1f695d3ac5be4337f464605f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | DailyDoubleHook<br>`0xe34def1114d7bb0298636a2026d9cf3d67f19fbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x13a751fafd4214cfc1f95f7b027ef432965312c4` |
| candidate review | DirectContributor<br>`0x363b7a1567af0dbf06642c4028779c3f3365b516` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | DrawManager<br>`0x7e8e79eb264b42dcba887047f40b6db12c4f0940` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | GpBoostHook<br>`0xdeef914a2ee2f2014ce401dcb4e13f6540d20ba7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | LiquidationPairFactory<br>`0x555bd8fc65e57139c9f405980c7a9526a7de8093` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | LiquidationPairFactory<br>`0x8aa2a1d364162fdfeb891d48f127e6923f9ab1a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | LiquidationPairFactory<br>`0x9428f4b3ee5f5918ee16958c1717b5520fa3158e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | LiquidationPairFactory<br>`0xa1697e8f6b11d0e2f00d9dc8a5aeae2b2665650a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | LiquidationPairFactory<br>`0xcb54fc145bc53cb92f79bd8202d9c78d083b9f6f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | NftChanceBoosterHook<br>`0x7f15d92694257141a5e539762d93f91c43ab9a95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | PrizePool<br>`0x8cfffffa42407db9dcb974c2c744425c3e58d832` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | PrizePool<br>`0xc6ae7db3b9552dad4a0adf92d67857ebfb48042d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | PrizePool<br>`0xe32e5e1c5f0c80bd26def2d0ea5008c107000d6a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | PrizeVaultFactory<br>`0x0c379e9b71ba7079084ada0d1c1aeb85d24dfd39` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | PrizeVaultFactory<br>`0xf0f151494658bae060034c8f4f199f74910ea806` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | RemoteOwner<br>`0x38449a6b7bb76638452273925c9a2ba818bd130d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | RemoteOwner<br>`0x3a8f184b0d36541e5a1858ddcb4e581dd58ba06d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | RemoteOwner<br>`0x503de67553edce0af5f02abdd980b0fe7cc3bf65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | RemoteOwner<br>`0x55fa1cb7ed970a00ca67a30c3f742fb6c9803fde` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | RngRelayAuction<br>`0x5f6c71b9551c081680a2ef9f9322f88dca7d25a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | RngRelayAuction<br>`0x87d3d9afed1702728b7f280ba5c4b4c55defa557` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | RngRelayAuction<br>`0xb06aebe38cabe0eec4bd741f49e9a4b64ef51b49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | RngWitnet<br>`0x18928a03829a609292133d605ff6007151b9eecb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | RngWitnet<br>`0xc3118f33832b9c6a964adc8954e3a7c5b7409923` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | StakingVault<br>`0x2c30004ec09e731dffcd5783569fb2e09c473732` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | TpdaLiquidationPairFactory<br>`0x0796be5c62669aadd8e1a41645344ebe51e7f668` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | TpdaLiquidationRouter<br>`0xe2d27ceed889da6d30eaf6723a0b6e5770d96bae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | TwabController<br>`0x0d51a33975024e8afc55fde9f6b070c10aa71dd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TwabController<br>`0x499a9f249ec4c8ea190bebbfd96f9a83bf4f6e52` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | TwabController<br>`0x5e5e492c502fce1726be4801c62972f32ae2c55e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | TwabController<br>`0x71c75563be4aa95b186c383e1446754f89795ff6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | TwabController<br>`0x7deef0fdab8ffd8ab7568a13abda37ccf31f9038` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | TwabController<br>`0xb9397506712f1177bffcb124cda250d24fa8f206` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | TwabDelegator<br>`0x3989cbc1fb0eb278601c018ed7627b07be9de4cb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | TwabDelegator<br>`0x49e8e9b415d05adccd64344bf85573813747bfa5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | TwabDelegator<br>`0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TwabDelegator<br>`0x5c2f7fa8a4de39e65ca546b63c472865abaa600b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | TwabDelegator<br>`0x9cbbde93886d231005dcb1c524c89be3302b80b1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | TwabDelegator<br>`0xa7da697214eda2383f41dba60c8d559fa166c52e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | TwabDelegator<br>`0xf93329e78feff1145fce03a79d5b356588dea215` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | TwabRewards<br>`0xefb96e28205360c1fa1d2158f7d02fe3c7749f99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | VaultBoosterFactory<br>`0x17b9d77a393f2aa311e5ef08b73f3239b7f66837` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | VaultBoosterFactory<br>`0x43069a907a69ab1f66b1f8417ddc790346920323` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | VaultBoosterFactory<br>`0x7746a79332df154e29c5b105c4d6bae61e71dada` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xb1e4f56590ca358548696d9ec161cd16cc3bb135` |
| candidate review | VaultFactory<br>`0xa469deff6d52c9571d13513e3cd7d94496082d81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc516fe1fee5122d66e9427721a63d6c27e1201ca` |
| candidate review | VaultFactory<br>`0xf65fa202907d6046d1ef33c521889b54bde08081` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x226e71e2165249494532c0bde6303e7c025e30cd` |
| candidate review | VaultFactoryV2<br>`0x6b17ee3a95bccd605340454c5919e693ef8eff0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x13a751fafd4214cfc1f95f7b027ef432965312c4` |
| candidate review | ClaimerFactory<br>`0x22e3857db02c4db38870dddc286d0543869ea47e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x44ad684a79c0977711cc1221601085890bcea4ac` |
| candidate review | GpBoostHook<br>`0x65f3aea2594d82024b7ee98ddcf08f991ab1c626` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x44ad684a79c0977711cc1221601085890bcea4ac` |
| candidate review | RewardLiquidatorFactory<br>`0xd09ca1a19e7c73e229d87dc83883719184426afb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x44ad684a79c0977711cc1221601085890bcea4ac` |
| candidate review | RngWitnet<br>`0xcf466582512470fb8faec1216fd43f66015ad5ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x44ad684a79c0977711cc1221601085890bcea4ac` |
| candidate review | StakingVault<br>`0x9ef19fc007b7fb0b0d378b9899b4b33c200ef172` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x44ad684a79c0977711cc1221601085890bcea4ac` |
| candidate review | TwabController<br>`0x6563996aa856649dbf1326490d2ec0c0627d7060` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x44ad684a79c0977711cc1221601085890bcea4ac` |
| candidate review | VaultBoosterFactory<br>`0xc9f124901c1acfd254db4177dfc76c72c01c4a78` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x44ad684a79c0977711cc1221601085890bcea4ac` |
| candidate review | ControlledTokenBuilder<br>`0x317625b28acb3c0540db00b179d84d9b804277f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenBuilder<br>`0x42ad7b4e9ef876388630363a28abab51a248fb4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenBuilder<br>`0xef3d36a282e74b5bcba8a45262687ddb31495cd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenProxyFactory<br>`0x08411add0b5aa8ee47563b146743c13b3556c9cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenProxyFactory<br>`0x59b34c5bc94e2d5b9dcb97ec935c94c353e5eb94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ControlledTokenProxyFactory<br>`0xaa4e28ead244b439eb670986ddf3f084522dc4f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | DrawCalculator<br>`0x3976bd6f4b82c97314570a77bc1e979f7a839a24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | DrawCalculatorTimelock<br>`0x676a541cf8cba8c324ace66e8dfd19cacf9c7484` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | L2TimelockTrigger<br>`0xc366bf1a054ca495c09b1a722d863ac65746138e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersBuilder<br>`0x72edd573e230c7d68274bf718a4c6ad82b5d5f90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersBuilder<br>`0xd1a6515aaf261f5bf5d00bf3311ca325d32ed5a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersProxyFactory<br>`0xdc488e6e8c55a11d20032997cd1ff7c4951401df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | MultipleWinnersProxyFactory<br>`0xf3317f7d9f6479eb8d2633c30c555aa09bd07cc7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0x5effa0823e486a5ed1d49d88a1374fc337e1f9f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PoolWithMultipleWinnersBuilder<br>`0x920bd7c30b36c958fae800ee07660e6a56b86a2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeDistributionBuffer<br>`0xcf6030bdeab4e503d186426510ad88c1da7125a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeDistributor<br>`0x8141bcfbcee654c5de17c4e2b2af26b67f9b9056` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | PrizeSplitStrategy<br>`0x879e176ae9fe9b00c30f4827364ea9e4fb35858d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | Reserve<br>`0x3e8b9901dbfe766d3fe44b36c180a1bca2b9a295` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | Reserve<br>`0xce148f6acfee9fefb42a736b4976e657f35982b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolProxyFactory<br>`0x97762742aea8cc2c54c368aacb9e1bf8aad8f17b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | StakePrizePoolProxyFactory<br>`0xafcea072bcbad91029a2ba0b37bac8269dd4f5e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TicketProxyFactory<br>`0x259d46f1559e4d41faf61d858b4b439d3962fc57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TicketProxyFactory<br>`0x58af4554c0db496efdf93bb344ec513c5627efb9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | TicketProxyFactory<br>`0xd08a60b0a41a1282efcceef13ce187f848549170` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | YieldSourcePrizePoolProxyFactory<br>`0x447838a9a11f7190c9f7e65c43be685cd8109962` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | YieldSourcePrizePoolProxyFactory<br>`0x4d1639e4b237bcab6f908a1ceb0995716d5ebe36` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe0f4217390221af47855e094f6e112d43c8698fe` |
| candidate review | ClaimerFactory<br>`0x804657333bcc97afa4bd38c4e8fd41d06e21c63c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | ClaimerFactory<br>`0xd58a04fc8d34ce6b3633bf81ee7d5d25c71401e3` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | DirectContributor<br>`0x663dc65f5372dd952149d45fc3dcd0530285fbfe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | GpBoostHook<br>`0x327b2ea9668a552fe5dec8e3c6e47e540a0a58c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | NftChanceBoosterHook<br>`0x26158db2448a5eccf6107d7494330e96404398c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | NftChanceBoosterHook<br>`0x519bdf6855968bcc2d921dcf22e586f3dbf2e299` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | NftChanceBoosterHook<br>`0x81b743dc3ebde24484a6e4625e224079c64ba620` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | NftChanceBoosterHook<br>`0x83cbc017b05d7528005b99031820b89be1daef32` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | PrizeVaultFactory<br>`0xe32f6344875494ca3643198d87524519dc396ddf` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | SponsorshipVaultFactory<br>`0x015caa3d12755ac9aac1f7ebebf40b0da8f03ef3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | StakingVault<br>`0x854f3d91e53d0fc9dba9822bc74f574c7380436d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | TwabDelegator<br>`0x214a21bccf9acce40a65e2223e8e73bdffd6ce5e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |
| candidate review | TwabDelegator<br>`0x9678d0bfbe0f940e0ac0cac52fea506f838b801a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdc9522fc21cf9878781224c54221d4479dd1a739` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://github.com/pooltogether/user-docs/blob/main/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [bug-bounties.md](https://github.com/pooltogether/user-docs/blob/main/security/bug-bounties.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [README.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [protocol-coverage.md](https://github.com/pooltogether/user-docs/blob/main/security/risks/protocol-coverage.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Sherlock: PoolTogether V5**](https://audits.sherlock.xyz/contests/225) | Sherlock | Contest | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**C4: PoolTogether Prize Vaults**](https://code4rena.com/reports/2024-03-pooltogether) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [**0xMacro: PrizePool + TwabController**](https://0xmacro.com/library/audits/pooltogether-1) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [**C4: PoolTogether V5 Part Two**](https://code4rena.com/reports/2023-08-pooltogether) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [**C4: PoolTogether V5**](https://code4rena.com/reports/2023-07-pooltogether) | Code4rena | Contest | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [**C4: ERC-5164**](https://code4rena.com/reports/2022-12-pooltogether) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [**C4: Aave V3 Yield Source**](https://code4rena.com/reports/2022-04-pooltogether) | Code4rena | Contest | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [**C4: TwabDelegator**](https://code4rena.com/reports/2022-02-pooltogether) | Code4rena | Contest | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [**C4: TwabRewards**](https://code4rena.com/reports/2021-12-pooltogether) | Code4rena | Contest | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [**C4: PoolTogether V4**](https://code4rena.com/reports/2021-10-pooltogether) | Code4rena | Contest | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [**C4: Swappable Yield Source**](https://code4rena.com/reports/2021-07-pooltogether) | Code4rena | Contest | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [**OpenZeppelin: PoolTogether V3**](https://www.openzeppelin.com/news/pooltogether-v3-audit) | OpenZeppelin | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7597] audits.md — no match: The document is a list of audit reports, not an audit report itself. No specific contracts in scope are mentioned.
- [7598] bug-bounties.md — no match: The document is a bug bounty program description, not an audit report. Only one contract name is mentioned in a past bounty entry.
- [7599] README.md — no match: The provided text is a risk disclosure document, not an audit report. No contracts in scope or audit date were found.
- [7600] protocol-coverage.md — no match: The provided text is not an audit report; it is a promotional snippet about protocol coverage from Nexus Mutual. No contracts, scope, or audit date are identifiable.
- [27843] **Sherlock: PoolTogether V5** — no match: The provided text is a header/navigation snippet from a contest page, not an audit report. No contracts or audit date are identifiable.
- [27844] **C4: PoolTogether Prize Vaults** — matched: Scope section explicitly lists 6 smart contracts; additional contracts (Claimer, PrizePool) are referenced in findings as audited targets.
- [27845] **0xMacro: PrizePool + TwabController** — no match: Extracted 10 contracts from the scope tables in the Source Code section. Audit date found on cover page.
- [27846] **C4: PoolTogether V5 Part Two** — no match: Extracted 14 contract names from the audit report scope and findings. The report date is from the title page.
- [27847] **C4: PoolTogether V5** — no match: The report clearly lists 14 smart contracts in scope. The extracted names are the main contracts and libraries explicitly mentioned in the scope section and findings.
- [27848] **C4: ERC-5164** — no match: Scope section explicitly states 7 smart contracts. All contract names extracted from file paths and findings.
- [27849] **C4: Aave V3 Yield Source** — no match: Only one contract, AaveV3YieldSource, is explicitly in scope. The report date is from the title line.
- [27850] **C4: TwabDelegator** — no match: Scope explicitly states 4 smart contracts; extracted from file paths and references. Audit date from report header.
- [27851] **C4: TwabRewards** — no match: Scope section explicitly states 2 smart contracts: TwabRewards.sol and ITwabRewards.sol. Audit date from report header.
- [27852] **C4: PoolTogether V4** — no match: Extracted contract names from findings and scope description. The scope mentions 20 smart contracts but only names a subset in findings. The audit date is from the report header.
- [27853] **C4: Swappable Yield Source** — no match: Scope section explicitly states 2 smart contracts: SwappableYieldSource and MStableYieldSource.
- [27854] **OpenZeppelin: PoolTogether V3** — no match: Extracted from the blog post header and scope descriptions. The audit date is explicitly stated as 'October 21, 2020'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| bug-bounties.md | PermitAndDepositDai | unmatched — not counted | — | mentioned in Past Bounties section as a contract with a vulnerability | no |
| **C4: PoolTogether Prize Vaults** | PrizeVault | own contract | PrizeVault (alternative) `0xb75af20ecadabed9049cc2f50e38bad2768b35cf` — deployed 2024-09-11 04:33:25+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x97a9c02cfbbf0332d8172331461ab476df1e8c95` — deployed 2024-05-29 22:15:24+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b` — deployed 2024-09-11 04:18:41+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x9ee31e845ff1358bf6b1f914d3918c6223c75573` — deployed 2024-08-19 22:39:11+03 — liveness: live (code_present_context)<br>PrizeVault (selected) `0xa52e38a9147f5ea9e0c5547376c21c9e3f3e5e1f` — deployed 2024-04-18 03:15:15+03 — liveness: live (code_present_context)<br>PrizeVault (alternative) `0x6b5a5c55e9dd4bb502ce25bbfbaa49b69cf7e4dd` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-04-18 was 14d from audit; next candidate 41d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| **C4: PoolTogether Prize Vaults** | PrizeVaultFactory | ambiguous — not counted | PrizeVaultFactory (alternative) `0xc3ae3fe36a2645a93b2fe350d81e80a14831e2a6` — deployed 2024-09-11 04:32:40+03 — liveness: live (current_address_book_code)<br>0x3fdd8b… (alternative) `0x3fdd8bfdf2f589c10c58457cdae989c7943a30a5` — deployed 2024-09-11 04:18:02+03 — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0x8020fb37b21e0ef1707ada7a914baf44f9045e52` — deployed 2024-07-16 22:34:09+03 — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0xd499ccf3e93f4cfb335ac388e3c896d59cdde7c3` — deployed 2024-09-06 22:27:11+03 — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0xec9f59bd06465b105e719c0b0483a4ed6a656775` — deployed 2024-07-16 19:55:07+03 — liveness: live (current_address_book_code)<br>PrizeVaultFactory (alternative) `0xa55a74a457d8a24d68dda0b5d1e0341746d444bf` — deployed 2024-07-16 20:54:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether Prize Vaults** | TwabERC20 | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | Claimable | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | HookManager | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | IVaultHooks | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether Prize Vaults** | Claimer | ambiguous — not counted | Claimer (alternative) `0xbea38368f2a657f00f173764f18f00e841317c73` — deployed 2024-07-16 20:59:40+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x220c9398b0ee07472bf8906e44574cb9fe3b8d90` — deployed 2024-07-16 19:44:45+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x0cffb70cdd335cc5380cb58166699edaa2b0bbfa` — deployed 2024-09-11 04:33:15+03 — liveness: live (code_present_context)<br>Claimer (alternative) `0x54aa02cbc223fc834949fb1fd8c855e4da126c7d` — deployed 2024-09-06 22:17:11+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xcdce635b774de77cdf791647601dba64a75547ba` — deployed 2024-07-16 20:51:25+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xb04d5c80a3f6da11532d3a67184bb7be11f00285` — deployed 2024-09-11 04:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether Prize Vaults** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2999e1a14569554eddbcda9da5e1918120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845` — deployed 2024-09-11 04:18:11+03 — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **0xMacro: PrizePool + TwabController** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2999e1a14569554eddbcda9da5e1918120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845` — deployed 2024-09-11 04:18:11+03 — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **0xMacro: PrizePool + TwabController** | TieredLiquidityDistributor | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | BitLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | DrawAccumulatorLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | TierCalculationLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | UD34x4 | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | TwabController | ambiguous — not counted | TwabController (alternative) `0x84090aea5370565b88108c4ffed378672a8afde6` — deployed 2024-09-11 04:32:00+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x971ecc4e75c5fcfd8fc3eadc8f0c900b5914dc75` — deployed 2024-05-29 22:14:16+03 — liveness: live (code_present_context)<br>0x5ec48e… (alternative) `0x5ec48e749768aea9956cb38542a9837ec714537d` — deployed 2024-09-11 04:16:32+03 — liveness: live (current_address_book_code)<br>TwabController (alternative) `0x7e63601f7e28c758feccf8cdf02f6598694f44c6` — deployed 2024-05-15 22:56:37+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc` — deployed 2024-08-19 22:36:59+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0xcb0672de558ad8f122c0e081f0d35480ab3be167` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **0xMacro: PrizePool + TwabController** | ObservationLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | OverflowSafeComparatorLib | unmatched — not counted | — | listed in scope table | no |
| **0xMacro: PrizePool + TwabController** | TwabLib | unmatched — not counted | — | listed in scope table | no |
| **C4: PoolTogether V5 Part Two** | RngRelayAuction | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2999e1a14569554eddbcda9da5e1918120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845` — deployed 2024-09-11 04:18:11+03 — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5 Part Two** | TieredLiquidityDistributor | unmatched — not counted | — | referenced in findings | no |
| **C4: PoolTogether V5 Part Two** | RemoteOwner | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | RngAuctionRelayerRemoteOwner | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | ContinuousGDA | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | LiquidationRouter | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | LiquidationPair | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | LiquidationPairFactory | unmatched — not counted | — | referenced in findings | no |
| **C4: PoolTogether V5 Part Two** | VaultBooster | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | VaultBoosterFactory | ambiguous — not counted | VaultBoosterFactory (alternative) `0xa2ba3d22e2469bc0b46d57145d4bd212d3550ec2` — deployed 2025-03-21 21:52:01+03 — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x31ec883727af3b9eb87b815550b0e33498f483e8` — deployed 2025-03-21 21:55:35+03 — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x858029ed93b97d9015a63a5cc63e5872ee67f88c` — deployed 2025-03-21 21:49:41+03 — liveness: live (current_address_book_code)<br>0x8cffff… (alternative) `0x8cfffffa42407db9dcb974c2c744425c3e58d832` — deployed 2025-03-21 22:07:23+03 — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x8cfffffa42407db9dcb974c2c744425c3e58d832` — deployed 2025-03-21 21:51:12+03 — liveness: live (current_address_book_code)<br>VaultBoosterFactory (alternative) `0x8cfffffa42407db9dcb974c2c744425c3e58d832` — deployed 2025-03-21 22:04:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5 Part Two** | RngAuction | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | RewardLib | unmatched — not counted | — | listed in scope and findings | no |
| **C4: PoolTogether V5 Part Two** | AddressRemapper | unmatched — not counted | — | referenced in findings | no |
| **C4: PoolTogether V5** | Vault | unmatched — not counted | — | Listed in scope and referenced throughout findings. | no |
| **C4: PoolTogether V5** | TwabController | ambiguous — not counted | TwabController (alternative) `0x84090aea5370565b88108c4ffed378672a8afde6` — deployed 2024-09-11 04:32:00+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x971ecc4e75c5fcfd8fc3eadc8f0c900b5914dc75` — deployed 2024-05-29 22:14:16+03 — liveness: live (code_present_context)<br>0x5ec48e… (alternative) `0x5ec48e749768aea9956cb38542a9837ec714537d` — deployed 2024-09-11 04:16:32+03 — liveness: live (current_address_book_code)<br>TwabController (alternative) `0x7e63601f7e28c758feccf8cdf02f6598694f44c6` — deployed 2024-05-15 22:56:37+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc` — deployed 2024-08-19 22:36:59+03 — liveness: live (code_present_context)<br>TwabController (alternative) `0xcb0672de558ad8f122c0e081f0d35480ab3be167` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2999e1a14569554eddbcda9da5e1918120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845` — deployed 2024-09-11 04:18:11+03 — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5** | VaultFactory | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | Claimer | ambiguous — not counted | Claimer (alternative) `0xbea38368f2a657f00f173764f18f00e841317c73` — deployed 2024-07-16 20:59:40+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x220c9398b0ee07472bf8906e44574cb9fe3b8d90` — deployed 2024-07-16 19:44:45+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0x0cffb70cdd335cc5380cb58166699edaa2b0bbfa` — deployed 2024-09-11 04:33:15+03 — liveness: live (code_present_context)<br>Claimer (alternative) `0x54aa02cbc223fc834949fb1fd8c855e4da126c7d` — deployed 2024-09-06 22:17:11+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xcdce635b774de77cdf791647601dba64a75547ba` — deployed 2024-07-16 20:51:25+03 — liveness: live (current_address_book_code)<br>Claimer (alternative) `0xb04d5c80a3f6da11532d3a67184bb7be11f00285` — deployed 2024-09-11 04:18:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V5** | TieredLiquidityDistributor | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | DrawAccumulatorLib | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | TierCalculationLib | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | TwabLib | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: PoolTogether V5** | IVaultHooks | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| **C4: ERC-5164** | EthereumToArbitrumRelayer | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToOptimismRelayer | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToPolygonRelayer | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToArbitrumExecutor | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToOptimismExecutor | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | EthereumToPolygonExecutor | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: ERC-5164** | CallLib | unmatched — not counted | — | listed in scope and mentioned in findings | no |
| **C4: Aave V3 Yield Source** | AaveV3YieldSource | unmatched — not counted | — | listed in scope section: 'The code under review can be found within the C4 PoolTogether Aave v3 contest repository, and is composed of 1 smart contract written in the Solidity programming language and includes ~200 lines of Solidity code.' | no |
| **C4: TwabDelegator** | PermitAndMulticall | unmatched — not counted | — | Scope section: composed of 4 smart contracts; referenced in findings | no |
| **C4: TwabDelegator** | TWABDelegator | unmatched — not counted | — | Scope section: composed of 4 smart contracts; referenced in findings | no |
| **C4: TwabDelegator** | Delegation | unmatched — not counted | — | Scope section: composed of 4 smart contracts; referenced in findings | no |
| **C4: TwabDelegator** | ITwabRewards | unmatched — not counted | — | Referenced in L-01 mitigation discussion as part of the system | no |
| **C4: TwabDelegator** | TwabRewards | ambiguous — not counted | TwabRewards (alternative) `0x1742157e6ef6e0cf7e49904f2c0d0fe38a276942` — deployed 2024-09-11 04:32:10+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x0e71a9a2bd4546e7fc2af47a015747daeb48780d` — deployed 2024-09-11 04:16:38+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x90d383dea4dce52d3e5d3c93de75ef36da3ea9ea` — deployed 2024-04-18 03:15:13+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x86f0923d20810441efc593eb0f2825c6bff2dc09` — deployed 2024-05-15 22:56:37+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0xe21ac38a7e80104c4f6512ce4908a22bc09c59be` — deployed 2024-05-29 22:14:23+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x2589ff8614f74704741ee3b51851b4ae812f1a21` — deployed 2024-08-19 22:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: TwabRewards** | TwabRewards | ambiguous — not counted | TwabRewards (alternative) `0x1742157e6ef6e0cf7e49904f2c0d0fe38a276942` — deployed 2024-09-11 04:32:10+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x0e71a9a2bd4546e7fc2af47a015747daeb48780d` — deployed 2024-09-11 04:16:38+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x90d383dea4dce52d3e5d3c93de75ef36da3ea9ea` — deployed 2024-04-18 03:15:13+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x86f0923d20810441efc593eb0f2825c6bff2dc09` — deployed 2024-05-15 22:56:37+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0xe21ac38a7e80104c4f6512ce4908a22bc09c59be` — deployed 2024-05-29 22:14:23+03 — liveness: live (current_address_book_code)<br>TwabRewards (alternative) `0x2589ff8614f74704741ee3b51851b4ae812f1a21` — deployed 2024-08-19 22:37:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: TwabRewards** | ITwabRewards | unmatched — not counted | — | Scope section: 'composed of 2 smart contracts' and findings reference ITwabRewards.sol | no |
| **C4: PoolTogether V4** | DrawCalculator | unmatched — not counted | — | mentioned in finding H-01 and gas optimization G-19 | no |
| **C4: PoolTogether V4** | DrawBeacon | unmatched — not counted | — | mentioned in finding H-02 | no |
| **C4: PoolTogether V4** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2999e1a14569554eddbcda9da5e1918120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845` — deployed 2024-09-11 04:18:11+03 — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **C4: PoolTogether V4** | PrizeSplit | unmatched — not counted | — | mentioned in findings L-01, L-06, G-05 | no |
| **C4: PoolTogether V4** | PrizeDistributor | unmatched — not counted | — | mentioned in finding G-06 | no |
| **C4: PoolTogether V4** | PrizeDistributionBuffer | unmatched — not counted | — | mentioned in finding G-18 | no |
| **C4: PoolTogether V4** | YieldSourcePrizePool | unmatched — not counted | — | mentioned in finding N-01 | no |
| **C4: PoolTogether V4** | RNGChainlink | unmatched — not counted | — | mentioned in finding H-02 | no |
| **C4: PoolTogether V4** | PrizePoolHarness | unmatched — not counted | — | mentioned in finding N-04 | no |
| **C4: Swappable Yield Source** | SwappableYieldSource | unmatched — not counted | — | Listed in scope as one of 2 smart contracts. | no |
| **C4: Swappable Yield Source** | MStableYieldSource | unmatched — not counted | — | Listed in scope as one of 2 smart contracts. | no |
| **OpenZeppelin: PoolTogether V3** | PrizePool | ambiguous — not counted | PrizePool (alternative) `0x0c08c2999e1a14569554eddbcda9da5e1918120f` — deployed 2024-09-11 04:32:50+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` — deployed 2024-05-29 22:14:54+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` — deployed 2024-08-19 22:38:23+03 — liveness: live (code_present_context)<br>PrizePool (alternative) `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` — deployed 2024-05-15 22:56:39+03 — liveness: live (code_present_context)<br>0xa6ecd6… (alternative) `0xa6ecd65c3eecdb59c2f74956ddf251ab5d899845` — deployed 2024-09-11 04:18:11+03 — liveness: live (current_address_book_code)<br>PrizePool (alternative) `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` — deployed 2024-04-18 03:15:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| **OpenZeppelin: PoolTogether V3** | CompoundPrizePool | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | CompoundPrizePoolBuilder | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | yVaultPrizePool | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | yVaultPrizePoolBuilder | unmatched — not counted | — | listed in scope and audited | no |
| **OpenZeppelin: PoolTogether V3** | MappedSinglyLinkedList | unmatched — not counted | — | listed in scope | no |
| **OpenZeppelin: PoolTogether V3** | ControlledToken | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x54aa02cbc223fc834949fb1fd8c855e4da126c7d` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x220c9398b0ee07472bf8906e44574cb9fe3b8d90` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0cffb70cdd335cc5380cb58166699edaa2b0bbfa` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcdce635b774de77cdf791647601dba64a75547ba` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbea38368f2a657f00f173764f18f00e841317c73` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xb04d5c80a3f6da11532d3a67184bb7be11f00285` | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd84c4c7675e6eb79ea28d04c001e702ccc679e80` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x94f51a697920fd4c2be9a7675ca8e97475779cc3` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x22e3857db02c4db38870dddc286d0543869ea47e` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x804657333bcc97afa4bd38c4e8fd41d06e21c63c` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x64e77e749943a82bd2b7d81ae35ab9717b4de554` | ClaimerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98305eb9a29d45ec93ce44ba02b315b631c675a7` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7eed7444de862c4f79c5820ff867fa3a82641857` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x146efc8d651dc015225cc2e74707d87aa4d09067` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8a2782bedc79982ebfa3b68b315a2ee40daf6ab0` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc00146957ff55fad7d27deb69ff95d79fdcd37e6` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xa75474749055f71560eb5dcff33605766c69ddf2` | DrawManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84882eb46da981d1ad2f154359061942ca1c062f` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x68a100a3729fc04ab26fb4c0862df22ceec2f18b` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x69fc8095b949c0ff703ead99bf7d6620843c37ef` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4e30c0a8cce76940d87ae62eb12f3ac536a996f4` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5f9292672e33b76b70dea44163c780376b4da397` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xbdf6bd9bde192861bd8e0e0a11dad71f178a34c8` | EzDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x395ae52bb17aef68c2888d941736a71dc6d4e125` | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd652c5425aea2afd5fb142e120fecf79e18fafc3` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x216a7d520992ed198593a16e0b17c784c9cdc660` | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cec1a9154ff802e7934fc916ed7ca50bde6844e` | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7865d01da4c9ba2f69b7879e6d2483ab6b354d95` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf35fe10ffd0a9672d0095c435fd8767a7fe29b55` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0c08c2999e1a14569554eddbcda9da5e1918120f` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x45b2010d8a4f08b53c9fa7544c51dfd9733732cb` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x52e7910c4c287848c8828e8b17b8371f4ebc5d42` | PrizePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3341dac0912b630f1a8c237b64f6861e9fa11d79` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x36be31e7acd4b0d755bcc7858ef04848a3ec66c6` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0d51a33975024e8afc55fde9f6b070c10aa71dd9` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf4c47dacfda99be38793181af9fd1a2ec7576bbf` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d51a33975024e8afc55fde9f6b070c10aa71dd9` | PrizePoolTwabRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ee31e845ff1358bf6b1f914d3918c6223c75573` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xb75af20ecadabed9049cc2f50e38bad2768b35cf` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6b5a5c55e9dd4bb502ce25bbfbaa49b69cf7e4dd` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x97a9c02cfbbf0332d8172331461ab476df1e8c95` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x29499e2eb8ff1d076a35c275aeddd613afb1fa9b` | PrizeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd499ccf3e93f4cfb335ac388e3c896d59cdde7c3` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xec9f59bd06465b105e719c0b0483a4ed6a656775` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xc3ae3fe36a2645a93b2fe350d81e80a14831e2a6` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa55a74a457d8a24d68dda0b5d1e0341746d444bf` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8020fb37b21e0ef1707ada7a914baf44f9045e52` | PrizeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf93329e78feff1145fce03a79d5b356588dea215` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3d2ef6c091f7cb69f06ec3117f36a28bc596aa7b` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x47c9212cc5c0836521346ce9b3d03ca91edf1123` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x74ebf391831c0757b5a4335f2f3abbb1499d18f0` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xad1b8ec0151f13ba563226092b5f7308d8dc107b` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x4d971a28bb23c6354f7cf1f4666c34b00e94f608` | RngWitnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x68a100a3729fc04ab26fb4c0862df22ceec2f18b` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2c30004ec09e731dffcd5783569fb2e09c473732` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9ef19fc007b7fb0b0d378b9899b4b33c200ef172` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x854f3d91e53d0fc9dba9822bc74f574c7380436d` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf59e484934b64121a698b17bef386d443554da1f` | StakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcf934e2402a5e072928a39a956964eb8f2b5b79c` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa99b3a8503260ab32753c382eac297acd4a43908` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x80f86691632d9863e6bcaa472e5c34574f77c7d1` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xbddd23fdd9fe824d58814ca6d898af518676368a` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8557a9a33b573dc4403708c5a8746a52648374ea` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x163402522fc0c0a7863479a069a8470fb22dfd3f` | TpdaLiquidationPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7c210be12bcef8090610914189a0de43e2192ea0` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7766b5e6839a1a218fc861b0810c504490876136` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x1664485e6b51ee1a4d4dd35dbec79544a5d006c9` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa9c937a0d1d22ad79099aea10efa62a270dfc22c` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7b4a60964994422bf19ae48a90fbff806767db73` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x6f0b0ad2047f349594c8755ac080de9288d6ef7b` | TpdaLiquidationRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4d5f2cd31701f3e5de77b3f89ee7b80eb87b4acc` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xcb0672de558ad8f122c0e081f0d35480ab3be167` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x84090aea5370565b88108c4ffed378672a8afde6` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7e63601f7e28c758feccf8cdf02f6598694f44c6` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x971ecc4e75c5fcfd8fc3eadc8f0c900b5914dc75` | TwabController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2589ff8614f74704741ee3b51851b4ae812f1a21` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x90d383dea4dce52d3e5d3c93de75ef36da3ea9ea` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x1742157e6ef6e0cf7e49904f2c0d0fe38a276942` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x86f0923d20810441efc593eb0f2825c6bff2dc09` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe21ac38a7e80104c4f6512ce4908a22bc09c59be` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x0e71a9a2bd4546e7fc2af47a015747daeb48780d` | TwabRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31ec883727af3b9eb87b815550b0e33498f483e8` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x858029ed93b97d9015a63a5cc63e5872ee67f88c` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa2ba3d22e2469bc0b46d57145d4bd212d3550ec2` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8cfffffa42407db9dcb974c2c744425c3e58d832` | VaultBoosterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 206 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 61 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=5
- Match method counts: temporal_name=1

Zero-match audit list:

- [7597] audits.md
- [7598] bug-bounties.md
- [7599] README.md
- [7600] protocol-coverage.md
- [27843] **Sherlock: PoolTogether V5**
- [27845] **0xMacro: PrizePool + TwabController**
- [27846] **C4: PoolTogether V5 Part Two**
- [27847] **C4: PoolTogether V5**
- [27848] **C4: ERC-5164**
- [27849] **C4: Aave V3 Yield Source**
- [27850] **C4: TwabDelegator**
- [27851] **C4: TwabRewards**
- [27852] **C4: PoolTogether V4**
- [27853] **C4: Swappable Yield Source**
- [27854] **OpenZeppelin: PoolTogether V3**

Fork inheritance lineage and inherited audits are included when available.
