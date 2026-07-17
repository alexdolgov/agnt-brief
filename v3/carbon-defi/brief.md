# Agentic Audit Brief: Carbon Defi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Carbon Defi (`carbon-defi`)
- Website: [https://app.carbondefi.xyz/](https://app.carbondefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, blast, celo, ethereum, fantom, linea, mantle, sei, sepolia
- Contract surface: 182 unique implementations (320 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,187,230.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Carbon Defi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across base, blast, celo, ethereum, fantom, linea, mantle, sei, sepolia. Structural roles: 19 unclassified, 5 core, 2 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: unclassified (19), core (5), supporting (2)
- Contract kinds: contract (24), abstract (2)
- Detected standards: accesscontrol (5), erc165 (5), erc1967proxy (2)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

2 of 18 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

**CarbonVortex** (`0x4bbd9fae81734cd2c73428307c74079f4e1b08a2`, chain 1329)
Origin: carbon-defi (`0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`)
Containment: 100.0% - 38 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CarbonVortex** (`0x30dd96d6b693f78730c7c48b6849d9c44caf39f0`, chain 81457)
Origin: carbon-defi (`0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`)
Containment: 100.0% - 38 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f54099d787e26c90c487625b4de819ec5a9bdaa`, chain 1)
- UnnamedContract (`0x31548b11d685a358de7f52978e099e04116b2db0`, chain 1)
- UnnamedContract (`0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1`, chain 1)
- UnnamedContract (`0x4e017822e77e34842b71b8a24b09e6e490faca13`, chain 1)
- UnnamedContract (`0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea`, chain 1)
- UnnamedContract (`0x63e353ae90f95c72bf1e78e45456fb78b0c97525`, chain 1)
- UnnamedContract (`0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130`, chain 250)
- UnnamedContract (`0xa60a60d509a40f7a1d8c960f6ff708ae2659409e`, chain 250)
- UnnamedContract (`0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`, chain 5000)
- UnnamedContract (`0x3f086f628678cf136c4fa7d2901ff5ebe2623435`, chain 59144)
- UnnamedContract (`0x5bca3389786385a35bca14c2d0582adc6cb2482e`, chain 59144)
- CarbonVortex (`0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`, chain 1)
- OptimizedTransparentUpgradeableProxy (`0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05`, chain 1329)
- OptimizedTransparentUpgradeableProxy (`0x773b75cfb146bd5d1095fa9d6d45637f02b05119`, chain 8453)
- VortexAcrossBridge (`0x31548b11d685a358de7f52978e099e04116b2db0`, chain 81457)
- VortexOpStackBridge (`0xd9c6f857f296a27e2d64a62634a6a30eddafacdb`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 26; live-surface rows included: 26 (25 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 156 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 57
- Confirmed-live implementations: 23 of 182 unique; 159 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/69
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 113
- Unique implementations: 182
- Raw deployments: 320
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 14.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 4.3% | 2024-07 |
| ChainSecurity | Tier 1 | 2 | 2.9% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CarbonController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231647 | 2 deployments: ethereum `0x1e08049c180e25478bf7a0357171547b7332bf2c`; ethereum `0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1` | ✅ Audited |
| CarbonController | unknown | project_anchor | own_supporting | 1 | sei | unit-231653 | 2 deployments: sei `0x8c05ea305235a67c7095a32ad4a2ee2688ade636`; sei `0xe4816658ad10bf215053c533cceae3f59e1f1087` | ✅ Audited |
| Voucher | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231650 | 2 deployments: ethereum `0x3660f04b79751e31128f6378eac70807e38f554e`; ethereum `0x460cb0b4fb97b5a05b6105d7fd8d464902109d0a` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutoCompoundingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x036f8b31d78ca354ada40dbd117e54f78b6f6cdc` | ⚠️ Unaudited |
| BancorArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x08da389a1400e3699f58843484b0513aa065461c`; ethereum `0x2dd6b698da88fb6ec8382f4ce35729cd80da75a7`; ethereum `0x2fde9e0ce83769e88eaa9fb7be27cb26c385d1b2`; ethereum `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8`; ethereum `0x577552436ef8fd918df2819eadf80105fded5df7`; ethereum `0x68cd597f2cf8156dbb99e70c4d6edd08b03fb810`; ethereum `0x6dbe10bfc331cb8b7b1c17ce252a6f178d74e912`; ethereum `0x770abfb647e45d6c28dfb7fc7ec8dcfbf9d3c343`; ethereum `0xb04e45f506a9d86202caa3bb16fda97e5d1a1ee2`; ethereum `0xbd19f62f0460bea39d5f0d83f9073efe5c5d7e51`; ethereum `0xd80a404a72b44d93e6c11a8be09f17642d1b0ada`; ethereum `0xdbcb8a64f89cc5f028b18a45e59fd99eaa9af34a`; ethereum `0xe9a8e0d074ff327bc0466a4c9f33a64c17a0902d`; base `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x00bfa047ec1c5e849779107900afd948efca8e63`; ethereum `0x3006eb573ba4b6f28c36aad49d2062c5e82cfc75`; ethereum `0x751a3e5ecd4ecd2de4aace6e55ae707a9ca10255`; ethereum `0x7a84b0b6fe93c94d20fa84230bb2eae03e07b19e`; ethereum `0x835ebb984e2f65545319d43f5ee16d3b5dfc45c1`; ethereum `0x955a85437664fe809563dd0fa91b1590b159e1e6`; ethereum `0xa21e1cc814d73b057e1812fbf39dc46579d8f4ea`; ethereum `0xe0cb1beb84b3289b946ac7fa067f4c44adffa4fb`; ethereum `0xe2a2773a1aa412f10b9f338334f2d62b25dcd1f7` | ⚠️ Unaudited |
| BancorNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f14750b0d267be47dcd30a134796c2e4b1638a3`; ethereum `0xeef417e1d5cc832e619ae18d2f140de2999dd4fb` | ⚠️ Unaudited |
| BancorNetworkInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8e303d296851b320e6a697bacb979d13c9d6e760`; ethereum `0xfd47c74a8030520bacd364fb8e08acb28766ae7b` | ⚠️ Unaudited |
| BancorNetworkInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e7e708f46a23ee9590b503f03ba3e2c67cac13` | ⚠️ Unaudited |
| BancorPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9f292ccb69ff9a0644475c7bc8d4651039e133d5`; ethereum `0xe7e533a9f1afcadff409bb44a2b87d2c15d274d4` | ⚠️ Unaudited |
| BancorPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe18bd28677ec53c67d765521c8a586bc611f88e2`; ethereum `0xf5de921004436f940e457b443af6e8b30e3d2b0f` | ⚠️ Unaudited |
| BancorV1Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd761d538240e23b465c9c08236d781029dc3cc96` | ⚠️ Unaudited |
| BNTPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x02651e355d26f3506c1e644ba393fdd9ac95eaca`; ethereum `0xfb07a644a9e53879f29f7b3f29362e9c95b1ffa3` | ⚠️ Unaudited |
| BNTPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9810e2949de1e2c12d576c0d6d7af0f925c07bd8`; ethereum `0xcc06b51b8152520634d3640f40533bedbb22af65` | ⚠️ Unaudited |
| CarbonBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0199f3a6c4b192b9f9c3ebe31fbc535cdd4b7d4e`; ethereum `0x70ab8222a5fff4b360764bb51cbea76f0025842a` | ⚠️ Unaudited |
| CarbonBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x30dd96d6b693f78730c7c48b6849d9c44caf39f0`; sei `0xe375ddb4f244337727fd69fcd7645074e82f952e` | ⚠️ Unaudited |
| CarbonBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x482b27719b31760e0c45f01685d3f750c47845e1`; celo `0xa977879684eece2015ae879dc120c8a1c00718f7` | ⚠️ Unaudited |
| CarbonController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x16b9b6f8d2077db1032531f0e1f6019d2679d72d`; ethereum `0x1a31220b36b6d02f59d12c04e221ae7926c218cf`; ethereum `0x21f02ac7fc8915f1b884b532f6cbcd0ef0c086ee`; ethereum `0x5ec3b3748a2af4e14977949c76c44d0ca54e5b20`; ethereum `0x6db6ee351fc802833ed2f28a25bbbf971d8b12c1`; ethereum `0xd59bcabd00721b754acb79fe668fae4b6a063ff8`; sei `0x8ce318919438982514f9f479fdfb40d32c6ab749`; celo `0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496` | ⚠️ Unaudited |
| CarbonController | unknown | project_anchor | own_supporting | 1 | celo | unit-231657 | 2 deployments: celo `0x51aa24a9230e62cfaf259c47de3133578ce36317`; celo `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x779b3bea233ebc5947c5ff0ffd7f4f90654ab123`; ethereum `0xd06146d292f9651c1d7cf54a3162791dfc2bef46` | ⚠️ Unaudited |
| CarbonPOL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945ac60e655a84b6638216521b391ae984287105` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x2c0fa8b5c3a26ae8f014efb50ff27d95dd923502`; ethereum `0x55effb50729c049ab8c87977d324246996f472ad`; ethereum `0x676b91af9eaae263485c95ccafb2764228ce95c0`; ethereum `0x72717080da2e9e057dc29d25eeeb5d4873f0fb9e`; sei `0x924ad5d745ed622e8303929f8540dc2806cb5502`; sei `0xc95a9c1f378e0009e49fe7fe33dda22da4f977b0`; base `0xc7dd38e64822108446872c5c2105308058c5c55c`; base `0xe4816658ad10bf215053c533cceae3f59e1f1087`; celo `0x31548b11d685a358de7f52978e099e04116b2db0`; celo `0x4fe1b742e484181255385a026653f8bc1115b4c1`; celo `0x8b66315ae646d3b528184c37cd9365aebae1f3a0`; celo `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d`; blast `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea`; blast `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xba7d1581db6248dc9177466a328bf457703c8f84`; ethereum `0xd241a762f4ca4e32e723e91b1138ac97b9be23ca` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231651 | 2 deployments: ethereum `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`; ethereum `0xd053dcd7037af7204cece544ea9f227824d79801` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | sei | unit-231652 | 2 deployments: sei `0x4bbd9fae81734cd2c73428307c74079f4e1b08a2`; sei `0x5715203b16f15d7349cb1e3537365e9664eaf933` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5`; base `0xb53f078315790b62974cdd12fe6f80e946642a36` | ⚠️ Unaudited |
| CarbonVortex | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x37a65dda75a4c32959834c9b391a24dca17eec10`; celo `0xa15e3295465439a361dbcac79c1dbce6cd01e562` | ⚠️ Unaudited |
| CarbonVortex | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-231643 | `0x6cd7f631f8c017bb4427d3257593e29ed9bc2fdc` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | celo | unit-231656 | `0xd9d89e8a0dfe549e5b424d5b511cb3b84a764857` | ⚠️ Unaudited |
| CarbonVortex | unknown | project_anchor | own_supporting | 1 | blast | unit-231660 | 2 deployments: blast `0x0f54099d787e26c90c487625b4de819ec5a9bdaa`; blast `0x30dd96d6b693f78730c7c48b6849d9c44caf39f0` | ⚠️ Unaudited |
| EtherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315`; ethereum `0xd76b5c2a23ef78368d8e34288b5b65d616b746ae` | ⚠️ Unaudited |
| ExternalProtectionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xea4d665a290c9171ebcd1fca4068e55bb461c27c`; ethereum `0xfd31662b3d54edde9b6bdd32c9c27c8e292cad57` | ⚠️ Unaudited |
| ExternalRewardsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a2a2be5ccf20f3633c6ca2d429ac51186a631e1`; ethereum `0x30cc283aa2a5c74fb0dc642b0c8a9df376c23b1e` | ⚠️ Unaudited |
| FeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4610fc898f94ac0b6bfe2b836fd59f6d03195445` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| LinkToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x514910771af9ca656af840dff83e8264ecf986ca` | ⚠️ Unaudited |
| LiquidityProtection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x14d0746086361f9d177583f36e1517f1618ccfd5`; ethereum `0x63308861249ad775a4b6ceb6544ce30c952b311a`; ethereum `0x843bd7a811dc26874cb2ad9f4a04a8652f65d8e6`; ethereum `0x85cbbb1ede2b3e389235ae56ec54bec8159001e5` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x649765821d9f64198c905ec0b2b037a4a52bc373`; ethereum `0xf3b685d24f84b6eeeeee334250cf73ade1f10144` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x51aa24a9230e62cfaf259c47de3133578ce36317` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe033bed7cae4114af84be1e9f1ca7dea07dfe1cf` | ⚠️ Unaudited |
| NetworkSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x51a6d03b156af044bda570cf35a919db851cebd1`; ethereum `0x83e1814ba31f7ea95d216204bb45fe75ce09b14f` | ⚠️ Unaudited |
| NetworkSettings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x68e4f8421dc6c3b49de130b792d711027a4ecd96`; ethereum `0x88d031291ed89e600db1c9dd4da1e587571e48ca` | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xa15e3295465439a361dbcac79c1dbce6cd01e562`; blast `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d` | ⚠️ Unaudited |
| PendingWithdrawals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0074f83a6a78555cc784504358028fed2b145f4a`; ethereum `0x5f8347629f7259e2aa048ff0c9f3b36334bb6acb`; ethereum `0xf59fd6796f2ad9b600e4acce9792bdceef96958f` | ⚠️ Unaudited |
| PendingWithdrawals | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f05068f4dcc4df9dd54f52b647b0241ebbb92ce`; ethereum `0x857eb0eb2572f7092c417cd386ba82e45eba9b8a` | ⚠️ Unaudited |
| PoolCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x05e29f07b9710368a1d5658750e9b4b478c15bb8`; ethereum `0x395ed9ffd32b255dbd128092aba40200159d664b`; ethereum `0x5ce51256651aa90eee24259a56529affcf13a3d0`; ethereum `0x6f9124c32a9f6e532c908798f872d5472e9cb714`; ethereum `0xad3339099ae87f1ad6e984872b95e7be24b813a7`; ethereum `0xb67d563287d12b1f41579cb687b04988ad564c6c`; ethereum `0xb8d8033f7b2267feffdbaa521cd8a86df861da69`; ethereum `0xd2a572fefdbd719605334df5cba9746e02d51558`; ethereum `0xd982e001491d414c857f2a1aaa4b43ccf9f642b4`; ethereum `0xde1b3ccfc45e3f5bff7f43516f2cd43364d883e4`; ethereum `0xec9596e0eb67228d61a12cfdb4b3608281f261b3`; ethereum `0xf506b96891dde3c149ff08b2ff26a059258f7ec7` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1a1b00c006793341f4dbfe62fdf9991f4366ee69`; ethereum `0x59340ff90b0ca58492c26a4124f484c0358a017d`; ethereum `0x85aa6202972738855d4e8ab11b8127ca261d951d`; ethereum `0xc1c7ca009b6bb9be863e2782f6f1ad5d3a846219` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x330ee79a0a4f310315d58629c3afc20d384d198d`; ethereum `0x97cec0f2d355bf073619a5093f989709cae4a191` | ⚠️ Unaudited |
| PoolTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9e912953db31fe933bda43374208e967058d9d5f`; ethereum `0xab4a0bc8ec2cd1376c7b77f51338d80a631f7108` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x059d3d353336886cfaf17383c9fb6715652cf9a1`; ethereum `0x12388c005c3e3a88b6d30c55f21e49b747d118cb`; ethereum `0x64287956b8b587670d4d9b94378177f6c52f0034`; ethereum `0x8c05ea305235a67c7095a32ad4a2ee2688ade636`; sei `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8`; sei `0x7fc12ab5823b8977803f009a36ea21c9b4e17f06`; sei `0xcd8c6df64830288aa6091e9e8d281faedc357772`; sei `0xdf1c3beccc182eaa23e1894be3bb55a81876b332`; sei `0xfea28d3a9994bc4e7851035764171a02c3fc23b5`; base `0x177dbf7343181d522a20bca2850138e1e836947e`; base `0xa15e3295465439a361dbcac79c1dbce6cd01e562`; base `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26`; base `0xe033bed7cae4114af84be1e9f1ca7dea07dfe1cf`; base `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d`; celo `0x0f54099d787e26c90c487625b4de819ec5a9bdaa`; celo `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea`; celo `0xb2a2f14979a68c21181c6a63ca55a5b3693c9d2a`; celo `0xd0b82e96cba38cda95de4943a771e832bf3bb921`; blast `0x8b66315ae646d3b528184c37cd9365aebae1f3a0`; blast `0x8c05ea305235a67c7095a32ad4a2ee2688ade636`; blast `0xe6d513dc1107e2b091588e10460cf4b62a733611` | ⚠️ Unaudited |
| StakingRewardsClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6248e4118818c9075a142ef8a12e09d49888af58` | ⚠️ Unaudited |
| StandardPoolConverterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4a79787d3dafcb781a1e4ff914204db38126e6` | ⚠️ Unaudited |
| StandardRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9c0b2923db14b8625e84e8ad04764f992b78320d`; ethereum `0xa2647a6500614a49a7cb247263cd85600f8a1947`; ethereum `0xe9f3bbe3df308f9d80807d1db11bee069f7a4b53` | ⚠️ Unaudited |
| StandardRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0b958398abb0b5db4ce4d7598fb868f5a00f372`; ethereum `0xdfe331e68ce634a2f9557e05d1d603a8ea881f0d` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x31548b11d685a358de7f52978e099e04116b2db0`; sei `0x63e353ae90f95c72bf1e78e45456fb78b0c97525`; sei `0x8b66315ae646d3b528184c37cd9365aebae1f3a0` | ⚠️ Unaudited |
| TransparentUpgradeableProxyImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x41eeba3355d7d6ff628b7982f3f9d055c39488cb`; ethereum `0x9a1deb19e7600eaf1ec722b3a2e4b0b0ffa2296d` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60917e542addd13bfd1a7f81cd654758052dadc4` | ⚠️ Unaudited |
| VortexAcrossBridge | unknown | project_anchor | own_supporting | 1 | blast | unit-231661 | 2 deployments: blast `0x31548b11d685a358de7f52978e099e04116b2db0`; blast `0x63e353ae90f95c72bf1e78e45456fb78b0c97525` | ⚠️ Unaudited |
| VortexBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8843f65f11b2367bb05a6e120c44780088976748` | ⚠️ Unaudited |
| VortexOpStackBridge | unknown | project_anchor | own_supporting | 1 | celo | unit-231659 | 2 deployments: celo `0x753425e27ae996f0db75c759c6e5eba5c74d6aaf`; celo `0xd9c6f857f296a27e2d64a62634a6a30eddafacdb` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | project_anchor | own_supporting | 1 | sei | unit-231654 | `0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05` | ⚠️ Unaudited |
| VortexStargateBridge | operational_periphery | project_anchor | own_supporting | 1 | base | unit-231662 | `0x773b75cfb146bd5d1095fa9d6d45637f02b05119` | ⚠️ Unaudited |
| VortexWormholeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0x0f9df7475b6d50fb19940e071e5311c9ac0f68e1` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6b2f9b6bf3521308fb9360e4a6fe05f63953997` | ⚠️ Unaudited |
| Voucher | unknown | project_anchor | own_supporting | 1 | sei | unit-231655 | 2 deployments: sei `0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5`; sei `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0xc7dd38e64822108446872c5c2105308058c5c55c` | ⚠️ Unaudited |
| Voucher | unknown | project_anchor | own_supporting | 1 | celo | unit-231658 | 2 deployments: celo `0x5bca3389786385a35bca14c2d0582adc6cb2482e`; celo `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` | ⚠️ Unaudited |
| WCELO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x773b75cfb146bd5d1095fa9d6d45637f02b05119` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (113)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1) | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231649 | 2 deployments: ethereum `0x0f54099d787e26c90c487625b4de819ec5a9bdaa`; ethereum `0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1` | ❓ Unverified |
| Proxy (impl: 0x77e925eebcc9ecb03b03e1fb2b1906e7bcf3c20d) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x20216f3056bf98e245562940e6c9c65ad9b31271`; celo `0x77e925eebcc9ecb03b03e1fb2b1906e7bcf3c20d` | ❓ Unverified |
| Proxy (impl: 0xa977879684eece2015ae879dc120c8a1c00718f7) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130`; blast `0xa977879684eece2015ae879dc120c8a1c00718f7` | ❓ Unverified |
| Proxy (impl: 0xafa374dfab26d61b789b69cfad7bb481ef558502) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x0677bfcb0123867c3ea9e0983976be7f7ee3ea3d`; celo `0xafa374dfab26d61b789b69cfad7bb481ef558502` | ❓ Unverified |
| Proxy (impl: 0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x6619871118d144c1c28ec3b23036fc1f0829ed3a`; sei `0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496` | ❓ Unverified |
| Proxy (impl: 0xbca03b0b918bcdc78c3111ee242c7fec73e11669) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x31548b11d685a358de7f52978e099e04116b2db0`; base `0xbca03b0b918bcdc78c3111ee242c7fec73e11669` | ❓ Unverified |
| Proxy (impl: 0xe92fd7a55f37cc175aae2e0a13bf401120fe5bcc) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x185340a71447f3c247e4cfd6d805df25d604fa82`; celo `0xe92fd7a55f37cc175aae2e0a13bf401120fe5bcc` | ❓ Unverified |
| Proxy (impl: 0xe97749fd20909213e287e6f39a72568edd40c899) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x94a04b4a237b8ff72e41d872a240527a5fad022c`; base `0xe97749fd20909213e287e6f39a72568edd40c899` | ❓ Unverified |
| Proxy (impl: 0xf067013fefe758f179689bebefce8d2fac1f9829) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc`; sei `0xf067013fefe758f179689bebefce8d2fac1f9829` | ❓ Unverified |
| Proxy (impl: 0xfea28d3a9994bc4e7851035764171a02c3fc23b5) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37a65dda75a4c32959834c9b391a24dca17eec10`; ethereum `0xfea28d3a9994bc4e7851035764171a02c3fc23b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103607e92b6264a909fdc10e7553b8593325c031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1365935610776b30a1da088173987307a5412b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176707a177c9aa3e8872e4bb2c2ff1f9589dde6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5674cb6a2ba724833585e0aaf0cd92657263d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20bcedd753e750965ade287f7a6c5ae8fdf4d8d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | ethereum | unit-231648 | 2 deployments: ethereum `0x31548b11d685a358de7f52978e099e04116b2db0`; ethereum `0x63e353ae90f95c72bf1e78e45456fb78b0c97525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aafb6c8d44255f11bd85b0321a087bae5874d13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231619 | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231622 | `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b828a0a6fa6a1a81368fd870bee5079c8997453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d8839c6ddb1d8dbaf559cc8c5b588f17f6c5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0dfd0f21dbee835f2b960f3a23e92a11ef7755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b66315ae646d3b528184c37cd9365aebae1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d634aa8ba21dc9411ec1da7d12f1091dad3e639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x947766d4f964bd9f622f28d05baac657b5892d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf5219f7de072f88b9239fa1a55321374c76e32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca09071c809f4b48d6bd5049f365c6ed2d6e9142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd54fa71a2c7b2169acf4afdfb0dc04ec77467db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7040fa7ef4afe900f1390043045866209646be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe19cba3ab1a189b7fc17caa798df64ad2b54d4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231641 | `0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-231642 | `0xa60a60d509a40f7a1d8c960f6ff708ae2659409e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x177dbf7343181d522a20bca2850138e1e836947e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x253f62cec30be9681f1ee9f33ca40d81a61fdd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x3f086f628678cf136c4fa7d2901ff5ebe2623435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x482b27719b31760e0c45f01685d3f750c47845e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5530eb6eb259401f3b42df99a2b3af09bf40b274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5bca3389786385a35bca14c2d0582adc6cb2482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x653e98561925b55977c0100636ccd314c4f232c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6db97c98bac07f667817110c79c5593152b71424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x773b75cfb146bd5d1095fa9d6d45637f02b05119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x95fa9ba30f6389762ca0e0d34538c2d925af5f23`; sei `0xb2a2f14979a68c21181c6a63ca55a5b3693c9d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9fac0f1e0190a97e1efbf8b20ab56424552af35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xaf5219f7de072f88b9239fa1a55321374c76e32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xb4e1fc457dbf8d85683fe1e223398f44ff9f807a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-231644 | `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19c6df3963f12cfb0f43fed4b641afc2f7e21f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20216f3056bf98e245562940e6c9c65ad9b31271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x253f62cec30be9681f1ee9f33ca40d81a61fdd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37a65dda75a4c32959834c9b391a24dca17eec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ba67ae64317e06fbc12144191549d64a0d5eee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4f81e82dae5dbfec21fb162958a4f0262f752f8b`; base `0x8e49650b4cee7776b0d9b3b132f8b15ffd59c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51aa24a9230e62cfaf259c47de3133578ce36317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5530eb6eb259401f3b42df99a2b3af09bf40b274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bca3389786385a35bca14c2d0582adc6cb2482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6db97c98bac07f667817110c79c5593152b71424`; base `0xd0b82e96cba38cda95de4943a771e832bf3bb921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b66315ae646d3b528184c37cd9365aebae1f3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94a63aa724c3ca73d4c6abc06a794373b9375a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98d314c8eae09cdb2acb624e1714dc029da25b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeee7bd1570d9fe142be5d213da57abc7abf6f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbaff3bf6ec4c15992c0fb37f12491fd62c5b496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd8c6df64830288aa6091e9e8d281faedc357772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeaa4368a09e5e7889c6ae3d44a7f5eb8587a456c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x17e07821c3a476ece3fbd923f52a55e617f32376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2063a1e02471a14d3a06f4bad1b13dd4edfecfd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x210760f8810b154a964b29c0ae10fa89e0abbe57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x27d59ce77c5d833062d22223adca3f47aefaf112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x30dd96d6b693f78730c7c48b6849d9c44caf39f0`; celo `0x8c05ea305235a67c7095a32ad4a2ee2688ade636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x351b735cc9ae7442a84cf9cacf34dde83ebf66e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3cbb34decb79e4634e6472c2b624e56856bb9d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x45f7eacd310fa649a4b239df8dd448084aad8cf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e017822e77e34842b71b8a24b09e6e490faca13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x653e98561925b55977c0100636ccd314c4f232c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6845b84ed3fb951b4c54818178a8858ab1d23f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x70ff80d8d811ada518e409f07b817b50d38dd1cf`; celo `0x75af205b44c2e4a755186d96b2084ddf66e8a03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x759db9cd657e627238fb8e846b2f9805485d2352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8ce318919438982514f9f479fdfb40d32c6ab749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9ceb88d0714a07783f475b5fc5d743eb3ba52341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9fac0f1e0190a97e1efbf8b20ab56424552af35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26`; celo `0xc7dd38e64822108446872c5c2105308058c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb4e1fc457dbf8d85683fe1e223398f44ff9f807a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbca03b0b918bcdc78c3111ee242c7fec73e11669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbdfc7f4dc5bda4a186efbc9d4c2a581e34f5662f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdf1c3beccc182eaa23e1894be3bb55a81876b332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe4816658ad10bf215053c533cceae3f59e1f1087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xee21c0e10391be7d471917b9bbbdf79d86131d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf7c7d7507041977ab0328caf449f1e80085709a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231645 | `0x3f086f628678cf136c4fa7d2901ff5ebe2623435` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-231646 | `0x5bca3389786385a35bca14c2d0582adc6cb2482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x37a65dda75a4c32959834c9b391a24dca17eec10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x45d2e25c04f43a06f6c3e21e4f39b860d05a7ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x51aa24a9230e62cfaf259c47de3133578ce36317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x5715203b16f15d7349cb1e3537365e9664eaf933`; blast `0xc7dd38e64822108446872c5c2105308058c5c55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x759db9cd657e627238fb8e846b2f9805485d2352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7fc12ab5823b8977803f009a36ea21c9b4e17f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x94a63aa724c3ca73d4c6abc06a794373b9375a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb0d39990e1c38b50d0b7f6911525535fbacb4c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdf1c3beccc182eaa23e1894be3bb55a81876b332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe033bed7cae4114af84be1e9f1ca7dea07dfe1cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231638 | `0x3e67d217325a7298c3f80385e9f9eff2dc0f5de1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231639 | `0x59f21012b2e9ba67ce6a7605e74f945d0d4c84ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-231640 | `0x5bca3389786385a35bca14c2d0582adc6cb2482e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf) | PeckShield | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | medium |
| [ChainSecurity_Carbon_Audit_Report.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/ChainSecurity_Carbon_Audit_Report.pdf) | ChainSecurity | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 4 | high |
| [PeckShield-Audit-Report-Carbon-v1.0.pdf](https://github.com/bancorprotocol/carbon-contracts/blob/dev/docs/audits/PeckShield-Audit-Report-Carbon-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2737] PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf — no match: The report explicitly states 'this audit covers specifically the CarbonVortex contract' and lists it in the basic information table. No other contracts are named as in scope.
- [2738] PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf — matched: No explicit scope section; contracts extracted from findings targets and mentions.
- [2739] ChainSecurity_Carbon_Audit_Report.pdf — matched: Extracted from the audit report of Carbon by ChainSecurity. The scope section lists all files in contracts folder except helpers and fees. The main contracts are CarbonController, Voucher, MasterVault. Strategies, Pools, and MathEx are libraries/contracts referenced in findings.
- [2740] PeckShield-Audit-Report-Carbon-v1.0.pdf — matched: Audit report for Carbon protocol by PeckShield. Scope includes Strategies, CarbonController, and Voucher contracts. Audit date is April 4, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf | CarbonVortex | ambiguous — not counted | CarbonVortex (alternative) `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc` — deployed 2026-05-14 17:31:23+03 — liveness: live (proxy_unit_reachable)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd053dcd7037af7204cece544ea9f227824d79801` — deployed 2024-08-06 14:59:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd9d89e8a0dfe549e5b424d5b511cb3b84a764857` — deployed 2026-05-14 18:14:42+03 — liveness: live (current_address_book_code)<br>0x5bca33… (alternative) `0x5bca3389786385a35bca14c2d0582adc6cb2482e` — liveness: live (current_address_book_code)<br>0x4a0c4e… (alternative) `0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130` — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5715203b16f15d7349cb1e3537365e9664eaf933` — deployed 2024-10-01 18:36:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x0f54099d787e26c90c487625b4de819ec5a9bdaa` — deployed 2024-09-30 18:17:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonPOL | unmatched — not counted | — | Target in findings PVE-001, PVE-002 | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonVortex | ambiguous — not counted | CarbonVortex (alternative) `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc` — deployed 2026-05-14 17:31:23+03 — liveness: live (proxy_unit_reachable)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd053dcd7037af7204cece544ea9f227824d79801` — deployed 2024-08-06 14:59:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xd9d89e8a0dfe549e5b424d5b511cb3b84a764857` — deployed 2026-05-14 18:14:42+03 — liveness: live (current_address_book_code)<br>0x5bca33… (alternative) `0x5bca3389786385a35bca14c2d0582adc6cb2482e` — liveness: live (current_address_book_code)<br>0x4a0c4e… (alternative) `0x4a0c4ef72e0ba9d6a2d34dad6e794378d9ad4130` — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5715203b16f15d7349cb1e3537365e9664eaf933` — deployed 2024-10-01 18:36:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x0f54099d787e26c90c487625b4de819ec5a9bdaa` — deployed 2024-09-30 18:17:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | Strategies | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Bancor-Carbon-v1.0.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xe4816658ad10bf215053c533cceae3f59e1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-05-27 was 2d from audit; next candidate 56d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xe4816658ad10bf215053c533cceae3f59e1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 10d from audit; next candidate 413d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | Voucher | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5` — deployed 2024-05-27 18:59:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0x3660f04b79751e31128f6378eac70807e38f554e` — deployed 2023-04-20 13:31:23+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` — deployed 2024-07-24 12:26:04+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 10d from audit; next candidate 413d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Carbon_Audit_Report.pdf | MasterVault | unmatched — not counted | — | described in scope and system overview | no |
| ChainSecurity_Carbon_Audit_Report.pdf | Strategies | unmatched — not counted | — | referenced in findings and notes | no |
| ChainSecurity_Carbon_Audit_Report.pdf | Pools | unmatched — not counted | — | referenced in findings | no |
| ChainSecurity_Carbon_Audit_Report.pdf | MathEx | unmatched — not counted | — | referenced in findings | no |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | Strategies | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | CarbonController | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xe4816658ad10bf215053c533cceae3f59e1f1087` — deployed 2024-05-27 19:01:13+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0xc537e898cd774e2dcba3b14ea6f34c93d5ea45e1` — deployed 2023-04-20 14:20:59+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x6619871118d144c1c28ec3b23036fc1f0829ed3a` — deployed 2024-07-24 12:26:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 16d from audit; next candidate 419d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Carbon-v1.0.pdf | Voucher | own proxy deployment | OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5` — deployed 2024-05-27 18:59:45+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (selected) `0x3660f04b79751e31128f6378eac70807e38f554e` — deployed 2023-04-20 13:31:23+03 — liveness: live (current_address_book_code)<br>OptimizedTransparentUpgradeableProxy (proxy) (alternative) `0x5e994ac7d65d81f51a76e0bb5a236c6fda8dbf9a` — deployed 2024-07-24 12:26:04+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-20 was 16d from audit; next candidate 419d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x51aa24a9230e62cfaf259c47de3133578ce36317` | CarbonController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc56eb3d03c5d7720daf33a3718affb9bcab03fbc` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x4bbd9fae81734cd2c73428307c74079f4e1b08a2` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd9d89e8a0dfe549e5b424d5b511cb3b84a764857` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x0f54099d787e26c90c487625b4de819ec5a9bdaa` | CarbonVortex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x31548b11d685a358de7f52978e099e04116b2db0` | VortexAcrossBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x753425e27ae996f0db75c759c6e5eba5c74d6aaf` | VortexOpStackBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x57cf0c29c2b7bc7cf5396568e25e34a1b687ea05` | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x773b75cfb146bd5d1095fa9d6d45637f02b05119` | VortexStargateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xa4682a2a5fe02feff8bd200240a41ad0e6eaf8d5` | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x5bca3389786385a35bca14c2d0582adc6cb2482e` | Voucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 7 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: temporal_name=5

Zero-match audit list:

- [2737] PeckShield-Audit-Report-Bancor-CarbonVortex-v1.0.1.pdf

Fork inheritance lineage and inherited audits are included when available.
