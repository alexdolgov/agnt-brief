# Agentic Audit Brief: BabyDogeCoin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: BabyDogeCoin (`babydogecoin`)
- Website: [https://swap.babydoge.com/](https://swap.babydoge.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 59 unique implementations (157 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,875,233.00
- On-chain TVL (included contracts): $121,443,880.55
- TVL by chain: Bsc $121,443,880.55

## Project Description

This brief describes the observed EVM deployment and audit surface for BabyDogeCoin. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum. Structural roles: 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`, chain 56)
- BabyDogeRouter (`0xc9a0f685f39d05d835c369036251ee3aeaaf3c47`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 55 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 3 of 59 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/46
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 59
- Raw deployments: 157
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoinToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc748673057861a797275cd8a068abb95a902e8de` | ⚠️ Unaudited |
| AddRemoveLiquidityForFeeOnTransferTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9869674e80d632f93c338bd398408273d20a6c8e` | ⚠️ Unaudited |
| BabyDoge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f092bdf2b6eaf303fc09cc952e94253ae32fae` | ⚠️ Unaudited |
| BabyDoge3DNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbfafd528e04e38458bcef5d0faf33250155fe7f6`; ethereum `0xd260c7ae9c8e425f02354e799ca2eb276410570a` | ⚠️ Unaudited |
| BabyDogeDoggies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0bc19ea45c7286cf559711364d8493df79c38982`; bsc `0x59e3e5d6d6ad6300b2dc075efd79cb6660cd603a`; bsc `0x7257e66b830441a9300e8ece6b8b1649e04016ef`; bsc `0xabe1979e260c5ba4d93854d9e5c903c67b0b36fb`; bsc `0xafdf2ecf064624619856ee97d7511d466ab0e22d` | ⚠️ Unaudited |
| BabyDogeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cda751aa61609064551fc9cdb49b667af501d68` | ⚠️ Unaudited |
| BabyDogeFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-380084 | `0x4693b62e5fc9c0a45f89d62e6300a03c85f43137` | ⚠️ Unaudited |
| BabyDogeLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x36b34364e17373c05300bc3e827bf7cac34541be`; bsc `0xc9117202c5e94db475b2af39e3c41c946e215592` | ⚠️ Unaudited |
| BabyDogeNFTMarketPlace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0c0676c862539d0351128fb1a06ff548a1cef3a5`; bsc `0x100bf9747eac74dfe1e3829cfeb3fcf99e9aff41`; bsc `0x2aecff84a28d0d0174d7d4fe496e278506834199`; bsc `0x442fe7d734db5ff977676bf9f3dcc6b5910e2abe`; bsc `0xec3c3a24af737a7a9bb887f4a04e90a68d04a950`; bsc `0xf345826f723c5acb785d23a8a197ad46d8566bb3` | ⚠️ Unaudited |
| BabyDogePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e0d5230637d50dbe58e674e746614fc8210652d` | ⚠️ Unaudited |
| BabyDogeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c4c9bbd1754890684aeebe07f4e875565a314e9` | ⚠️ Unaudited |
| BabyDogeRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-380086 | `0xc9a0f685f39d05d835c369036251ee3aeaaf3c47` | ⚠️ Unaudited |
| BabyDogeV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x29809a217fc566e6b371da75f54dba9d601b3284`; bsc `0x750dc789552fb5fb21b452285ea5ade00c3dfd49` | ⚠️ Unaudited |
| BabyDogeV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5b883f02ce7d7b6e54cbc5c053559bd6c78cddd6`; bsc `0x9dc017fdce7eef9dd895f88ec6c44befc672ac59`; bsc `0xefef4ef553b91f0808d7c0b29e523eef4e19d82c` | ⚠️ Unaudited |
| Balance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d5dead694e9db55f574c2d44f2a22557241b3d0` | ⚠️ Unaudited |
| BbdNftStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee1f8496e48ac25061bdc6f4512faa443475c9f8` | ⚠️ Unaudited |
| BNBWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8` | ⚠️ Unaudited |
| BurnPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb667d8f8a1fd68ded52c616a314a294294e0396` | ⚠️ Unaudited |
| BuyBackFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x01f3a38e70c823427beec5b6babf6b33de264c0a`; bsc `0x218c4c326a5bc505acb1a8a60fabb5f382f7882c`; bsc `0x256a07af61920143135fb25604cbb6bb587885e3`; bsc `0x2986c5af35f14ed12b3954f92775381eaef5710f`; bsc `0x2fe5f9c2c4b3e63dc4585ef972a75c8b0d3d0489`; bsc `0x401de96f07eaa22931ce643beeb42f0f02955153`; bsc `0x560ad6d31a7c3f5fa174a07fa819832e1a102931`; bsc `0x5abc579b42088085cd4db9261f56d5249820702a`; bsc `0x62e9191af8cb4b35774a7ff2fd06a4705d2c0b76`; bsc `0xb1739c4eaf50f27a61cce94376d3bd35ec302f3e`; bsc `0xbda7c402f9de8ad737cedc3ab7cbfecd53f29c74`; bsc `0xc8d3dc1271d58aa9de5ab7cbbc19ecaed100ba80`; bsc `0xe7c35e5d4cd772370e36da872a725916762df1c4`; bsc `0xef09ad4ea69b72a144927e8e6219d2e5d33ff171` | ⚠️ Unaudited |
| ChessBetting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x48ff73efb7de5f760825cc3399a1f8096aef72b8`; bsc `0xbdc4ebb716287752c5de6e5a29e585c4140ffcbc` | ⚠️ Unaudited |
| console | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5faef68770ddc303ac5b49883d97e5f467134a9d` | ⚠️ Unaudited |
| DoggieFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc231978220c7ffc3aaf9cea6c22d96c001ab1a68` | ⚠️ Unaudited |
| DoggieFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x048e7f1991e823339347f712307a2c66317443ef`; bsc `0x1c9330698989a8f13f54310c2a2b08f321e652a0`; bsc `0x5cf2f6aacfeabcb3ffce1feaea7196b37dafc2ae` | ⚠️ Unaudited |
| DoggieFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1581ff6ecddeea0d4a074981f0ed6fb948c17add`; bsc `0x7f7b849062de2b56ebb513c7b8e0ca2c8dd93ed7`; bsc `0x99a65159d17635f65bc7a21f162b7205ff8794ab`; bsc `0xb5ed158d435fba023c630a1e4421651f17869c8d`; bsc `0xc45f2301380f2cf1f90c38e3cca18f6e41134b3c`; bsc `0xde05208b3bd0c81faf4b7dab55de2abf713a9e80` | ⚠️ Unaudited |
| DoggieMintingStation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x21075607cd62043c566154c04cb0fa4229e83a5e`; bsc `0x6ce1a3bb3c18c000047e763cc224cdad5947525e`; bsc `0xdb5d0ff37b6f03c38b4fd170b3e179db0a6d5752`; bsc `0xe681f024252587eca80d37dda792df171d343f14` | ⚠️ Unaudited |
| FarmDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1ca60d90e2fb7eb855770cf5f8837111df260b30`; bsc `0x210dbf538ef70750e0eb6149005bf2d40d49d5b2`; bsc `0x69616b7a951502c7543df4f9e753bbbdf2a21050`; bsc `0xc3c548cdc8cb1b8c48ab70ecfe4ae6d444fde155` | ⚠️ Unaudited |
| FarmDeployer20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x08f9ebf03e140842f042c846dfd86d788df0b685`; bsc `0x1690f49adc4933f240388ad667f1e360890eecea`; bsc `0x17fc398e845697111738e02c82c081f2e8502e83`; bsc `0x4841f42e484b76b759a618a47ee091ab989a2648`; bsc `0x4b1496faba1a4faaff6bee62b27da9eac99525d9`; bsc `0xaf7ad0d18e0b783a2c21c8147ce6e5e150fab7ac`; bsc `0xc204758cd8f214e5108a5bade6e018a2fcac4e28`; bsc `0xd9d9671352c375b9c507a6e60ad99a256c04ce53`; bsc `0xe6de34f116d332fb7000922db7fa7627c31f3374` | ⚠️ Unaudited |
| FarmDeployer20FixEnd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x103def784e1d0aaad0de95936610fd836bf31b9d`; bsc `0x284670664b09ceaacf3edbb6ec62f3c04d0c3a67`; bsc `0x630757bf02923a8714769fa8bb97508b8be06bb7`; bsc `0x708173b6f27ea291fadbb145360a262bab84a0ae`; bsc `0x96b5270ef07a5cb092fa4bb640854625669e6db3`; bsc `0xb9fdf4702cdab2e7d7b2e1e2c8e4fc5d7e653e9c`; bsc `0xd500763b3e62d80517b0cf9d8aab758bf5862749`; bsc `0xe6180f81958d45572600577d91f5c9edc7fc4c11` | ⚠️ Unaudited |
| FarmDeployer721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x0579db6324274c07a6b6e13024a3747b97778644`; bsc `0x2003e0fe6795861b9fa8afaf45aa8329dd7f0196`; bsc `0x559a1b05a83611e118f9a4ba95f245a722291425`; bsc `0x65f9d91288370278bf5d81a4bea3ea2612509a15`; bsc `0xa04fb9ff61bf63ffd0f60011b7190b8a8f247d44`; bsc `0xb1542934de54a8b692b7788b78b505f37949300c`; bsc `0xb9e324fbb58baba3ba5efe703137f4cdf603698a`; bsc `0xda907b358055de483a5f60c1688232f841158f52` | ⚠️ Unaudited |
| FarmDeployer721FixEnd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x3f82781318d34e2020090bd82ef616bf1ce5ebf8`; bsc `0x89ea6282ebf290fd57fdb001dc0458789ceb1c4d`; bsc `0xacab3a648ea0ddf4cde6c793b3595a009e2b5654`; bsc `0xbd6fed49874273453dd452515b290657e446a645`; bsc `0xc2e2aab0e09719f9d1f8d4549b54dad3044d2405`; bsc `0xe88f66f221c75518f1cd0c127b63949068ec731e`; bsc `0xe9a1427d4c82428802cc57690b90659ec6c0276a` | ⚠️ Unaudited |
| FarmDeployerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xac6c6c95a526653eb1b0384c257cb8311bb0693a`; bsc `0xbb41e9798fafa48f62fdc5f5dcb4961980f19543` | ⚠️ Unaudited |
| FarmsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x9d304bd1cea1c4dd69a958574740d43558f97983`; bsc `0xacde45a2de43eb5352db38220d3dc70a9eb17f0c` | ⚠️ Unaudited |
| FarmZAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451583b6da479eaa04366443262848e27706f762` | ⚠️ Unaudited |
| Greeter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159478459ce7f554db1a3d499bd31479dc9ce9df` | ⚠️ Unaudited |
| LPZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff57372f16147117520d40fe777feda51b1226ba` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x052a3f4a50139c49471b9d158ffd3504ae6dd111`; bsc `0x2fd02cd307b66802995813c30760786453881069`; bsc `0x46b9542f58bb814de24e0ea7316584ee3cdf0e59`; bsc `0x5740d7607f88010183051e5778c75a0097019094`; bsc `0x5c588dc96a8c916a1f76af8a5afbd036467621df`; bsc `0x9ce45dbaf1de63be59d615a2fcefa766a1ffe796`; bsc `0xfb03a41e365d8471dca8dfc40a8a1dc13eb61be1` | ⚠️ Unaudited |
| MintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7b9f23fe2c6749e9ea1209706c2c7dd72d1414b` | ⚠️ Unaudited |
| PancakeZapV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2cea5408fd197cb9321eb91fc8c76a2285b907d9`; bsc `0x4be970e15b1916d28337a7ae5ae8df24143197eb` | ⚠️ Unaudited |
| PinkLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6348ad825a0ebac49021c61746eafcbefaa05bac` | ⚠️ Unaudited |
| ProfileManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5a2cb466fa1bc037a463a53d5f889d9c86edd69` | ⚠️ Unaudited |
| RouterFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x6b2ce3f0af1dec26a3ae15125c771616bda4c967`; bsc `0x72fae1641d0bee6a42278cc88308e0391939afbf`; bsc `0xb8b61f1341dcf1a51e960455e7c7fc92a412d790`; bsc `0xc5ab742988d6a02251ef0ccf59bc6968914aa2d1` | ⚠️ Unaudited |
| SafeDogTestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0267bb20d823b81a9634caa4cdb9e293d8de591f`; bsc `0x85de4c2cb948b793d9a7f9fa06aada0f83c8948e`; bsc `0x9e60c7adaace93210c4490032d4539d7bcd5b08c`; bsc `0xc5bf375d0a2051e55cd7d1415204004e807b62ef`; bsc `0xe81ceae0c19b2ed8c6d075652da02c7cac1f9010` | ⚠️ Unaudited |
| SlippageCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8f7ca3d611e1bb508a42941e6a495cc130c8fbf` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0608b0d2fdf03a00da4b56cf68d79005bdba7aff`; bsc `0x7751d14c5f6f195ed9199618fb8f8e522679dfcb`; bsc `0x78d5efd49d18654226ae0ca3178bd21f2955c61e` | ⚠️ Unaudited |
| TokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e8fda22458f4f70bea8f00e006d0cbc7c0b3b3e`; bsc `0x4ca3416d5ea09c0802cf5634bb48d636f5033a1d` | ⚠️ Unaudited |
| TreasuryFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x01fef82e314c082ad1755d5fc9cd5a88ec9f83ff`; bsc `0x1551eac5d2edaa634f713a526866ad83b82b5209`; bsc `0x1b6878adfb16b949a8cef2fb28228afc84fcb6a8`; bsc `0x2cd856c548b938360b2726a3fb9552fdb8517b12`; bsc `0x3aea91e8574b9ca918aecbc86264a739f719c64f`; bsc `0x4957952ddaf965e09f73f123120e68018cd0a920`; bsc `0x784810fc094d9abd351dc5da88f7dad29e79458f`; bsc `0x8bff3b364f7471cad0b7da45b5fe9fb5217ee81b`; bsc `0x8e0d303498e4e6b6966bba37e535a38ee1e185c4`; bsc `0xc535c5924c33136e1e56221a1fb186e0ecb1381f`; bsc `0xcf4b5e2ab674e30ccb37ad5ea926169bbde562a0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0c815745e6152070ddd81baedd52f46b636f06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06d97221979d487f33f40152d3e9943fd81579bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b69970e23634188ce4f97ffe9015fb8aba900eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22b75c73569646a9eb424663c0d8c91199e45d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc67fcf839c840f561fd8ce41bfb2acf2085ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a0c815745e6152070ddd81baedd52f46b636f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fc9d52977bc3000d233771197fa64d9df1c7608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89d3af2fabe0c56724932615f1f6c8291122fb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1c14e5a8c2fd0fd7acad2b364e522781fb700c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380085 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1b202ca285eee7b50be4f1fa651f9da15603572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6616d8bd4bcc6f4d31027a71b0c1e9a0ada1ca9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 148
- Live contracts: 1
- Unknown liveness contracts: 147
- Source-verified contracts: 137
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=11, source verified unclassified=126, unverified unclassified=11

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | BabyDogeFactory<br>`0x3cda751aa61609064551fc9cdb49b667af501d68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | BabyDogeFactory<br>`0x4693b62e5fc9c0a45f89d62e6300a03c85f43137` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer20FixEnd<br>`0x103def784e1d0aaad0de95936610fd836bf31b9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0x0579db6324274c07a6b6e13024a3747b97778644` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0x2003e0fe6795861b9fa8afaf45aa8329dd7f0196` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0x559a1b05a83611e118f9a4ba95f245a722291425` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0x65f9d91288370278bf5d81a4bea3ea2612509a15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0xa04fb9ff61bf63ffd0f60011b7190b8a8f247d44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0xb1542934de54a8b692b7788b78b505f37949300c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0xb9e324fbb58baba3ba5efe703137f4cdf603698a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | candidate review | FarmDeployer721<br>`0xda907b358055de483a5f60c1688232f841158f52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | AddRemoveLiquidityForFeeOnTransferTokens<br>`0x9869674e80d632f93c338bd398408273d20a6c8e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeDoggies<br>`0x0bc19ea45c7286cf559711364d8493df79c38982` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeDoggies<br>`0x59e3e5d6d6ad6300b2dc075efd79cb6660cd603a` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeDoggies<br>`0x7257e66b830441a9300e8ece6b8b1649e04016ef` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeDoggies<br>`0xabe1979e260c5ba4d93854d9e5c903c67b0b36fb` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeDoggies<br>`0xafdf2ecf064624619856ee97d7511d466ab0e22d` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeLocker<br>`0xc9117202c5e94db475b2af39e3c41c946e215592` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeNFTMarketPlace<br>`0x0c0676c862539d0351128fb1a06ff548a1cef3a5` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeNFTMarketPlace<br>`0x100bf9747eac74dfe1e3829cfeb3fcf99e9aff41` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeNFTMarketPlace<br>`0x2aecff84a28d0d0174d7d4fe496e278506834199` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeNFTMarketPlace<br>`0x442fe7d734db5ff977676bf9f3dcc6b5910e2abe` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeNFTMarketPlace<br>`0xec3c3a24af737a7a9bb887f4a04e90a68d04a950` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeNFTMarketPlace<br>`0xf345826f723c5acb785d23a8a197ad46d8566bb3` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeRouter<br>`0x4c4c9bbd1754890684aeebe07f4e875565a314e9` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeV2Factory<br>`0x29809a217fc566e6b371da75f54dba9d601b3284` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeV2Factory<br>`0x750dc789552fb5fb21b452285ea5ade00c3dfd49` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeV2Router02<br>`0x5b883f02ce7d7b6e54cbc5c053559bd6c78cddd6` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeV2Router02<br>`0x9dc017fdce7eef9dd895f88ec6c44befc672ac59` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BabyDogeV2Router02<br>`0xefef4ef553b91f0808d7c0b29e523eef4e19d82c` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Balance<br>`0x6d5dead694e9db55f574c2d44f2a22557241b3d0` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BNBWrapper<br>`0xc7ac77eec5afbf589808b6b5d47e8a14ea8c29c8` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x01f3a38e70c823427beec5b6babf6b33de264c0a` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x218c4c326a5bc505acb1a8a60fabb5f382f7882c` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x256a07af61920143135fb25604cbb6bb587885e3` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x2986c5af35f14ed12b3954f92775381eaef5710f` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x2fe5f9c2c4b3e63dc4585ef972a75c8b0d3d0489` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x401de96f07eaa22931ce643beeb42f0f02955153` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x560ad6d31a7c3f5fa174a07fa819832e1a102931` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x5abc579b42088085cd4db9261f56d5249820702a` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0x62e9191af8cb4b35774a7ff2fd06a4705d2c0b76` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0xb1739c4eaf50f27a61cce94376d3bd35ec302f3e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0xbda7c402f9de8ad737cedc3ab7cbfecd53f29c74` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0xc8d3dc1271d58aa9de5ab7cbbc19ecaed100ba80` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0xe7c35e5d4cd772370e36da872a725916762df1c4` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | BuyBackFeeManager<br>`0xef09ad4ea69b72a144927e8e6219d2e5d33ff171` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | ChessBetting<br>`0x48ff73efb7de5f760825cc3399a1f8096aef72b8` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | ChessBetting<br>`0xbdc4ebb716287752c5de6e5a29e585c4140ffcbc` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactory<br>`0xc231978220c7ffc3aaf9cea6c22d96c001ab1a68` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV2<br>`0x048e7f1991e823339347f712307a2c66317443ef` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV2<br>`0x1c9330698989a8f13f54310c2a2b08f321e652a0` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV2<br>`0x5cf2f6aacfeabcb3ffce1feaea7196b37dafc2ae` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV3<br>`0x1581ff6ecddeea0d4a074981f0ed6fb948c17add` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV3<br>`0x7f7b849062de2b56ebb513c7b8e0ca2c8dd93ed7` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV3<br>`0x99a65159d17635f65bc7a21f162b7205ff8794ab` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV3<br>`0xb5ed158d435fba023c630a1e4421651f17869c8d` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV3<br>`0xc45f2301380f2cf1f90c38e3cca18f6e41134b3c` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieFactoryV3<br>`0xde05208b3bd0c81faf4b7dab55de2abf713a9e80` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieMintingStation<br>`0x21075607cd62043c566154c04cb0fa4229e83a5e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieMintingStation<br>`0x6ce1a3bb3c18c000047e763cc224cdad5947525e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieMintingStation<br>`0xdb5d0ff37b6f03c38b4fd170b3e179db0a6d5752` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | DoggieMintingStation<br>`0xe681f024252587eca80d37dda792df171d343f14` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | ERC1967Proxy<br>`0x9d304bd1cea1c4dd69a958574740d43558f97983` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | ERC1967Proxy<br>`0xacde45a2de43eb5352db38220d3dc70a9eb17f0c` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer<br>`0x1ca60d90e2fb7eb855770cf5f8837111df260b30` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer<br>`0x69616b7a951502c7543df4f9e753bbbdf2a21050` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer<br>`0xc3c548cdc8cb1b8c48ab70ecfe4ae6d444fde155` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0x08f9ebf03e140842f042c846dfd86d788df0b685` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0x1690f49adc4933f240388ad667f1e360890eecea` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0x17fc398e845697111738e02c82c081f2e8502e83` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0x4841f42e484b76b759a618a47ee091ab989a2648` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0x4b1496faba1a4faaff6bee62b27da9eac99525d9` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0xaf7ad0d18e0b783a2c21c8147ce6e5e150fab7ac` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0xc204758cd8f214e5108a5bade6e018a2fcac4e28` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0xd9d9671352c375b9c507a6e60ad99a256c04ce53` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20<br>`0xe6de34f116d332fb7000922db7fa7627c31f3374` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20FixEnd<br>`0x284670664b09ceaacf3edbb6ec62f3c04d0c3a67` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20FixEnd<br>`0x630757bf02923a8714769fa8bb97508b8be06bb7` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20FixEnd<br>`0x708173b6f27ea291fadbb145360a262bab84a0ae` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20FixEnd<br>`0x96b5270ef07a5cb092fa4bb640854625669e6db3` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20FixEnd<br>`0xb9fdf4702cdab2e7d7b2e1e2c8e4fc5d7e653e9c` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20FixEnd<br>`0xd500763b3e62d80517b0cf9d8aab758bf5862749` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer20FixEnd<br>`0xe6180f81958d45572600577d91f5c9edc7fc4c11` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer721FixEnd<br>`0x3f82781318d34e2020090bd82ef616bf1ce5ebf8` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer721FixEnd<br>`0x89ea6282ebf290fd57fdb001dc0458789ceb1c4d` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer721FixEnd<br>`0xacab3a648ea0ddf4cde6c793b3595a009e2b5654` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer721FixEnd<br>`0xbd6fed49874273453dd452515b290657e446a645` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer721FixEnd<br>`0xc2e2aab0e09719f9d1f8d4549b54dad3044d2405` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer721FixEnd<br>`0xe88f66f221c75518f1cd0c127b63949068ec731e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployer721FixEnd<br>`0xe9a1427d4c82428802cc57690b90659ec6c0276a` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployerAdmin<br>`0xac6c6c95a526653eb1b0384c257cb8311bb0693a` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmDeployerAdmin<br>`0xbb41e9798fafa48f62fdc5f5dcb4961980f19543` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | FarmZAP<br>`0x451583b6da479eaa04366443262848e27706f762` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | LPZap<br>`0xff57372f16147117520d40fe777feda51b1226ba` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Migrator<br>`0x052a3f4a50139c49471b9d158ffd3504ae6dd111` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Migrator<br>`0x2fd02cd307b66802995813c30760786453881069` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Migrator<br>`0x46b9542f58bb814de24e0ea7316584ee3cdf0e59` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Migrator<br>`0x5740d7607f88010183051e5778c75a0097019094` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Migrator<br>`0x5c588dc96a8c916a1f76af8a5afbd036467621df` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Migrator<br>`0x9ce45dbaf1de63be59d615a2fcefa766a1ffe796` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | Migrator<br>`0xfb03a41e365d8471dca8dfc40a8a1dc13eb61be1` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | MintableERC20<br>`0xb7b9f23fe2c6749e9ea1209706c2c7dd72d1414b` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | PancakeZapV1<br>`0x2cea5408fd197cb9321eb91fc8c76a2285b907d9` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | PancakeZapV1<br>`0x4be970e15b1916d28337a7ae5ae8df24143197eb` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | PinkLock<br>`0x6348ad825a0ebac49021c61746eafcbefaa05bac` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | ProfileManager<br>`0xf5a2cb466fa1bc037a463a53d5f889d9c86edd69` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | RouterFeeSetter<br>`0x6b2ce3f0af1dec26a3ae15125c771616bda4c967` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | RouterFeeSetter<br>`0x72fae1641d0bee6a42278cc88308e0391939afbf` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | RouterFeeSetter<br>`0xb8b61f1341dcf1a51e960455e7c7fc92a412d790` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | RouterFeeSetter<br>`0xc5ab742988d6a02251ef0ccf59bc6968914aa2d1` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SafeDogTestToken<br>`0x0267bb20d823b81a9634caa4cdb9e293d8de591f` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SafeDogTestToken<br>`0x85de4c2cb948b793d9a7f9fa06aada0f83c8948e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SafeDogTestToken<br>`0x9e60c7adaace93210c4490032d4539d7bcd5b08c` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SafeDogTestToken<br>`0xc5bf375d0a2051e55cd7d1415204004e807b62ef` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SafeDogTestToken<br>`0xe81ceae0c19b2ed8c6d075652da02c7cac1f9010` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SlippageCalculator<br>`0xf8f7ca3d611e1bb508a42941e6a495cc130c8fbf` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SmartChefFactory<br>`0x0608b0d2fdf03a00da4b56cf68d79005bdba7aff` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SmartChefFactory<br>`0x7751d14c5f6f195ed9199618fb8f8e522679dfcb` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | SmartChefFactory<br>`0x78d5efd49d18654226ae0ca3178bd21f2955c61e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TokenLock<br>`0x1e8fda22458f4f70bea8f00e006d0cbc7c0b3b3e` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TokenLock<br>`0x4ca3416d5ea09c0802cf5634bb48d636f5033a1d` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x01fef82e314c082ad1755d5fc9cd5a88ec9f83ff` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x1551eac5d2edaa634f713a526866ad83b82b5209` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x1b6878adfb16b949a8cef2fb28228afc84fcb6a8` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x2cd856c548b938360b2726a3fb9552fdb8517b12` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x3aea91e8574b9ca918aecbc86264a739f719c64f` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x4957952ddaf965e09f73f123120e68018cd0a920` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x784810fc094d9abd351dc5da88f7dad29e79458f` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x8bff3b364f7471cad0b7da45b5fe9fb5217ee81b` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0x8e0d303498e4e6b6966bba37e535a38ee1e185c4` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0xc535c5924c33136e1e56221a1fb186e0ecb1381f` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | source verified unclassified | TreasuryFeeManager<br>`0xcf4b5e2ab674e30ccb37ad5ea926169bbde562a0` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x06d97221979d487f33f40152d3e9943fd81579bb` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0b69970e23634188ce4f97ffe9015fb8aba900eb` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22b75c73569646a9eb424663c0d8c91199e45d71` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2bc67fcf839c840f561fd8ce41bfb2acf2085ae5` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a0c815745e6152070ddd81baedd52f46b636f06` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4fc9d52977bc3000d233771197fa64d9df1c7608` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x89d3af2fabe0c56724932615f1f6c8291122fb4f` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1c14e5a8c2fd0fd7acad2b364e522781fb700c2` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe1b202ca285eee7b50be4f1fa651f9da15603572` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe6616d8bd4bcc6f4d31027a71b0c1e9a0ada1ca9` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| ethereum | source verified unclassified | BabyDoge<br>`0xd9f092bdf2b6eaf303fc09cc952e94253ae32fae` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| ethereum | source verified unclassified | BabyDoge3DNFT<br>`0xbfafd528e04e38458bcef5d0faf33250155fe7f6` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| ethereum | source verified unclassified | console<br>`0x5faef68770ddc303ac5b49883d97e5f467134a9d` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xd260c7ae9c8e425f02354e799ca2eb276410570a` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| ethereum | source verified unclassified | Greeter<br>`0x159478459ce7f554db1a3d499bd31479dc9ce9df` | non_address_book | unknown | unknown | verified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a0c815745e6152070ddd81baedd52f46b636f06` | non_address_book | unknown | unknown | unverified | n/a | `0x85d30747868a5081f53bc7b9450301e761620a4f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/baby-doge-coin](https://skynet.certik.com/projects/baby-doge-coin) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2926] skynet.certik.com/projects/baby-doge-coin — no match: Extracted from 'Audited Files/SHA256' section listing two contracts. Date from 'Last Audit was delivered on 8/7/2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/baby-doge-coin | FarmDeployer721 | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/baby-doge-coin | ERC20FarmFixEnd | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x4693b62e5fc9c0a45f89d62e6300a03c85f43137` | BabyDogeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc9a0f685f39d05d835c369036251ee3aeaaf3c47` | BabyDogeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2926] skynet.certik.com/projects/baby-doge-coin

Fork inheritance lineage and inherited audits are included when available.
