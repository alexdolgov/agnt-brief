# Agentic Audit Brief: Arcade.xyz

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 6 audit(s)
- Eligible audit results: 10 (6 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DEAD - TVL dropped 59.5% over 90 days

## Project Overview

- Project: Arcade.xyz (`arcade.xyz`)
- Website: [https://www.arcade.xyz](https://www.arcade.xyz)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, goerli, sepolia
- Contract surface: 153 unique implementations (225 raw deployments)
- Coverage basis: 7/20 confirmed own live verified implementations (35.0%); conservative 35.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,748,668.10
- On-chain TVL (included contracts): $164,450.65
- TVL by chain: Ethereum $164,450.65

## Project Description

This brief describes the observed EVM deployment and audit surface for Arcade.xyz. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across ethereum, goerli, sepolia. Structural roles: 11 unclassified, 5 core, 5 supporting, 1 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: unclassified (11), core (5), supporting (5), infra (1)
- Contract kinds: contract (22)
- Detected standards: erc165 (4), erc1967proxy (4), accesscontrol (2), erc20permit (2), erc721 (2), ownable (1), pausable (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0585a675029c68a6af41ba1350bc8172d6172320`, chain 1)
- UnnamedContract (`0x1f563cdd688ad47b75e474fde74e87c643d129b7`, chain 1)
- UnnamedContract (`0x24ec19f05fc4a29d49617e1221ce7dc8a1ed5a3d`, chain 1)
- UnnamedContract (`0x59e57f9a313a2eb1c7357ecc331ddca14209f403`, chain 1)
- UnnamedContract (`0x6ddb57101a17854109c3b9feb80ae19662ea950f`, chain 1)
- UnnamedContract (`0x945aff9253c840401166c3d24ff78180fe0a05df`, chain 1)
- UnnamedContract (`0x9b458e2b9c0cd34a62a26b846f45eb829aebc96e`, chain 1)
- UnnamedContract (`0xaef68c90057886a1d3f590d0cfee0597e4a89f35`, chain 1)
- UnnamedContract (`0xd96e4d03420aa33a3fe91f57d03d8ef69de1e863`, chain 1)
- AssetVault (`0x833835fe565008fa66fff31156b78a1fd710bcb5`, chain 1)
- AssetVault (`0xd898456e39a461b102ce4626aac191582c38acb6`, chain 1)
- CallWhitelist (`0xb4496f9798cebd003c5d5a956b5b8f3933178c82`, chain 1)
- CallWhitelistApprovals (`0xb4515a8e5616005f7138d9eb25b581362d9fdb95`, chain 1)
- ERC1967Proxy (`0x666faa632e5f7ba20a7fce36596a6736f87133be`, chain 1)
- ERC1967Proxy (`0x6e9b4c2f6bd57b7b924d29b5dcfca1273ecc94a2`, chain 1)
- ERC1967Proxy (`0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9`, chain 1)
- FeeController (`0x41e538817c3311ed032653bee5487a113f8cff9f`, chain 1)
- FlashRollover (`0x24611fad669350ca869fbed4b62877d1a409da12`, chain 1)
- FlashRolloverStakingVaultUpgrade (`0x094db3031258d6204a4cfc99415eb66f9a01a8c6`, chain 1)
- FlashRolloverV1toV2 (`0x07352ed030c6fd8d12f8258d2df6f99cba533dc9`, chain 1)
- PromissoryNote (`0x337104a4f06260ff327d6734c555a0f5d8f863aa`, chain 1)
- PunksVerifier (`0x16d99ec34aa91162d71c84bcbe7a7ead5908b8e2`, chain 1)
- RepaymentController (`0xb39dab85fa05c381767ff992ccde4c94619993d4`, chain 1)
- VaultDepositRouter (`0x4b95640d56f81fc851f952793f4e5485e352bed2`, chain 1)
- VaultDepositRouter (`0xfdda20a20cb4249e73e3356f468ddfdfb61483f6`, chain 1)
- VaultFactory (`0x21b346622e607fcc936a320d3ab8224fb36b3c0c`, chain 1)
- VaultFactory (`0x371e4f7698760caac721989e5f1af72b7d6c596f`, chain 1)
- VaultInventoryReporter (`0x3a0f9a98714ed4a36cd5ebc07f364f39c88c2e8a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/97 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/20 (35.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 56 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 27 of 153 unique; 126 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/61
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 153
- Raw deployments: 225
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 25.0% (Trail of Bits)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 11.5% | 2024-03 |
| Trail of Bits | Tier 1 | 5 | 8.2% | 2023-07 |
| Quantstamp | Tier 2 | 4 | 6.6% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArcadeItemsVerifier | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379272 | `0xabfd9d9e4157695db5812eee279d923a4f948df0` | ✅ Audited |
| AssetVault | core_logic | project_anchor | own_core | 0 | ethereum | n/a | 6 deployments: ethereum `0x584503250fc246ce459e117195a64cf96544f027`; ethereum `0x6079f3beffd5660ba3eadebb923550b5ad88de5d`; ethereum `0x796c486a2215da68f4f5a752923659444889f4bd`; ethereum `0x9988d4918d85a814149225642175a4f7e5992fd9`; ethereum `0xb56a5ccad374c0d7fb4820322cc336fec5d1424a`; ethereum `0xd898456e39a461b102ce4626aac191582c38acb6` | ✅ Audited |
| CallWhitelist | unknown | project_anchor | own_core | 0 | ethereum | n/a | 6 deployments: ethereum `0x0e8ea5e5415b30dc1873df03ae9f7beecf74805f`; ethereum `0x1f2dfcfea1c2a7190225635b05075f00ecdd8eaa`; ethereum `0x2a62005db1c5ae759552e28981d1bb55af2c690f`; ethereum `0x5e87d274dd30c621fd2f12391d9f3725709f0597`; ethereum `0xb4496f9798cebd003c5d5a956b5b8f3933178c82`; ethereum `0xf5399cfa412ea2f817b973ae0ae043ba82f9df5b` | ✅ Audited |
| CallWhitelistApprovals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379275 | `0xb4515a8e5616005f7138d9eb25b581362d9fdb95` | ✅ Audited |
| FeeController | governance | project_anchor | own_supporting | 0 | ethereum | n/a | 6 deployments: ethereum `0x0facdc440d496798e095f87e50a8ed3a5680d133`; ethereum `0x41e538817c3311ed032653bee5487a113f8cff9f`; ethereum `0x4cccc5c5ef1d8c4a6ad6765a36651ef523e42e75`; ethereum `0x78ff43ea7ddbca2bf8f00cbd3d7d53e3192eda7b`; ethereum `0xe6e2337a95e195dd5f744340bc1bf485ca67b753`; ethereum `0xf764442856eb3fe68a0828e07246a4b395e800fa` | ✅ Audited |
| FlashRollover | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379261 | `0x24611fad669350ca869fbed4b62877d1a409da12` | ✅ Audited |
| PunksVerifier | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379259 | `0x16d99ec34aa91162d71c84bcbe7a7ead5908b8e2` | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArcadeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe020b01b6fbd83066aa2e8ee0ccd1eb8d9cc70bf` | ⚠️ Unaudited |
| NFTBoostVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe951d1b791c6878eec5d9129adeb72a28d59e68` | ⚠️ Unaudited |
| AirdropSeason1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7de71bc6694ca827e043b18102caf01518c0b54d` | ⚠️ Unaudited |
| AirdropSingleSidedStaking | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72854fbb44d3dd87109d46a9298aeb0d018740f0` | ⚠️ Unaudited |
| ArcadeAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x21fc22c02a298488e7d60a3b4fb974bc4ed75fd1`; ethereum `0x2b49c3b0340df9eca71d9f130084821c63c9ae38`; ethereum `0x910a1accd978377baab783329af1dbb028d9892b` | ⚠️ Unaudited |
| ArcadeCoreVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b6f11b2a783c928799c4e561da89cd06894a279`; ethereum `0x54b7235db74103395dd48a2c3dd993e3b7d39856` | ⚠️ Unaudited |
| ArcadeGSCVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd2d1c8809a271e892046a23185423a52a149f62` | ⚠️ Unaudited |
| ArcadeItemsVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc39c5d2fc523f26b5a83ab6c0c802c6e80a4df1d` | ⚠️ Unaudited |
| ArcadeParadice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bad2399f43a827ba3434cdd9b3ad1b5bac52244` | ⚠️ Unaudited |
| ArcadeStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80bddd56b947c547ab8964d80e98e42ff77a5793` | ⚠️ Unaudited |
| ArcadeTokenDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99121bd49c333be024ab28f7792d6e81170d187` | ⚠️ Unaudited |
| ArcadeTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac2b57b372e198f09d4bf5f445ca1228771c12c5` | ⚠️ Unaudited |
| ARCDVestingVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae40af135c060e10b218c617c2d74a370b09c40f` | ⚠️ Unaudited |
| ArtBlocksVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4501c338203ad2510c7c71a6ce26d70a70fb809d`; ethereum `0x6eeeed5d103c9230ba155ea9a9d6438dfcf3ae1a` | ⚠️ Unaudited |
| AssetVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379269 | `0x833835fe565008fa66fff31156b78a1fd710bcb5` | ⚠️ Unaudited |
| AssetWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cb803c31e8f4f895a3ab19d8218646dc63e9dc2` | ⚠️ Unaudited |
| BadgeDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdac5cd4b03aacbb8b24ba54c6a95f244fad13cc` | ⚠️ Unaudited |
| BalanceQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7730a89b50779e28b9f06f805874bf28ae419c9` | ⚠️ Unaudited |
| CallWhitelistAllExtensions | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x133570b0fd9e39611e29d3e47201ff8fe21707a1`; ethereum `0x28992ca7ba49a83f3bc391e9312730de78bf51ca`; ethereum `0xc185afaa3ff6decf908263802a831b18df1c62a3`; ethereum `0xc58ed1772f8c165d0c61ff114a9c552a013f17c4` | ⚠️ Unaudited |
| CollectionWideOfferVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6e58aae43bfd2a435aa348f3328f3137dda544` | ⚠️ Unaudited |
| FlashRolloverStakingVaultUpgrade | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379258 | `0x094db3031258d6204a4cfc99415eb66f9a01a8c6` | ⚠️ Unaudited |
| FlashRolloverV1toV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379257 | `0x07352ed030c6fd8d12f8258d2df6f99cba533dc9` | ⚠️ Unaudited |
| FlashRolloverV1toV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677eae7f60266608ed2d1f9a75021102a5e69c1b` | ⚠️ Unaudited |
| ImmutableVestingVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd7a92062d1939357fb17a66288cde30b3711e53` | ⚠️ Unaudited |
| LoanCore | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a50c25f11cb96a30bfcba4dc0c44da1907dd935`; ethereum `0x4845b43b8f84653dab594fe7a12e9697b9408a9a` | ⚠️ Unaudited |
| LoanCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3bbd0b701755130f14ebb81c8581e1be55eb6b15`; ethereum `0x606e4a441290314aeaf494194467fd2bb844064a`; ethereum `0x7691ee8febd406968d46f9de96cb8cc18fc8b325`; ethereum `0x89bc08ba00f135d608bc335f6b33d7a9abcc98af`; ethereum `0xcb98358dcecbd4aa884b4453a0734a9980654047`; ethereum `0xecbaac1ad75d9444b621d309b0f9c045455d78f5` | ⚠️ Unaudited |
| LoanCore | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f80d1a3fdfadc4eec9cd7f7ab2039d544032d43`; ethereum `0xf7950d9e686247916c319bc175fffaf4fe6df89d` | ⚠️ Unaudited |
| LoanCore | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379351 | 2 deployments: ethereum `0x6ddb57101a17854109c3b9feb80ae19662ea950f`; ethereum `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` | ⚠️ Unaudited |
| LP1Migration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa78f3ec4a858341fc9cae5672f7381e4e74e657b`; ethereum `0xd4bd6295e0581f97191dda1562ba6de7a40ec5b9` | ⚠️ Unaudited |
| LP1MigrationWithItems | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x466e3e08deb46f7ba9ce269d2e0858347b359759`; ethereum `0xad8e69f2a97541d1e3524d08a89d3dcbefa0adad` | ⚠️ Unaudited |
| OriginationController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2df5c801f2f082287241c8cb7f3d517c3cba2620`; ethereum `0x7c2a27485b69f490945943464541236a025161f6`; ethereum `0xb7bfcca7d7ff0f371867b770856fac184b185878`; ethereum `0xb80f8861c050477acdf3a24f70240f04c16ecc51` | ⚠️ Unaudited |
| OriginationController | governance | project_anchor | own_supporting | 1 | ethereum | unit-379352 | 2 deployments: ethereum `0x4c52ca29388a8a854095fd2beb83191d68dc840b`; ethereum `0xaef68c90057886a1d3f590d0cfee0597e4a89f35` | ⚠️ Unaudited |
| OriginationController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x567ccb050e793235574f1261c24ea2304436c117`; ethereum `0x5fa8e713a058b2eef293ef0317e629ba88e9b88c` | ⚠️ Unaudited |
| PromissoryNote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x1123710f81cb573ab22dd6de90de17692f8ee8b0`; ethereum `0x430d820fe598e2ab872d4e95bb971cbc761ed280`; ethereum `0x562803b258cc1b5ecc1398443940e6ff15f649d2`; ethereum `0x5783d0698a053762bcc9ee0b403b26448dbb0414`; ethereum `0x6397141fad44502bad00e0ccbe80a910ec9bbc87`; ethereum `0x8d366662b3dae8037cb50d099986d699f1ab8e15`; ethereum `0x92ed78b41537c902ad287608d8535bb6780a7618`; ethereum `0xa5f4b242bb44ba742f08dbaf3b154cda7e172ac0`; ethereum `0xa75b02c9b55d7854a727e67fc662e932d50ee4c4`; ethereum `0xd45ce8173262655c1acba3b376b1a77e4d7cdc7f`; ethereum `0xe5b12befaf3a91065da7fdd461ded2d8f8ecb7be` | ⚠️ Unaudited |
| PromissoryNote | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379263 | `0x337104a4f06260ff327d6734c555a0f5d8f863aa` | ⚠️ Unaudited |
| PromissoryNote | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379264 | `0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee` | ⚠️ Unaudited |
| ReflectiveURIDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa888a801fc7b7e5e847239e58dd4e2dc621fd5` | ⚠️ Unaudited |
| RepaymentController | governance | project_anchor | own_core | 0 | ethereum | n/a | 7 deployments: ethereum `0x251440b8cbcc973a8e7f0b7814ec3ecc6bcfcbc9`; ethereum `0x74241e1a9c021643289476426b9b70229ab40d53`; ethereum `0x9217487e2b750fd6f4c5795b9bf488591ddf43a0`; ethereum `0x9ece636e942bcb67f9e0b7b6c51a56570ef6f38d`; ethereum `0xb39dab85fa05c381767ff992ccde4c94619993d4`; ethereum `0xd7b4586b4ed87e2b98ad2df37a6c949c5ab1b1db`; ethereum `0xf6c8ee885dab34025ca275e269f8ec4bd85ad7fb` | ⚠️ Unaudited |
| ReputationBadge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a5a551b41bbe3d3a61ffd8280f6569f6715612a` | ⚠️ Unaudited |
| StaticURIDescriptor | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x2055f71ef369d26db683da0b8f8c62469bdafc75`; ethereum `0x5a49a36f8fa1c2cd38ade89159f3992cf35727e8`; ethereum `0x81a86c874e7c3f618145c9e4c6ccf7ec192c065e`; ethereum `0x957896415bddae8aee2a231e3f912eb87fb998c3`; ethereum `0x9a07c4382149608a183ea45241bae2cd5fc2e77e`; ethereum `0xa3e495088c2481fe76f28b16357654fce13cc5e9`; ethereum `0xad8a07804389842758d215abad7c722b6ba79f22`; ethereum `0xe237f018d2f6c719107ac38903c81f4791372dfb`; ethereum `0xe3ce55da7e779be80fa705fd75b00128afd81a94`; ethereum `0xfde563e83fa013e3eeccf0e357c6c6759784cfcc` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x47511465c397875deab7cf8f008d7922d041ff01`; ethereum `0xf3e9cdfa736f363a95a8ca62bdf69bbca4c5a973` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06af8c358c0787640588734e4733a779961a2bca` | ⚠️ Unaudited |
| V2ToV3Rollover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0bc05fc8ebfb362592f9703a33fc8c3953ea0ed4`; ethereum `0x1f59f83c3962481e8d490c9d65484202e4a3f9db`; ethereum `0xdb0655752a3cd23b8fd360af596e71ee924c5253` | ⚠️ Unaudited |
| V2ToV3RolloverWithItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c77269ca7f4ac42b6f0bfc10d9f44406351d396`; ethereum `0xac33e4abf40293452422283730ed54a6af139e7b` | ⚠️ Unaudited |
| VaultDepositRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379267 | `0x4b95640d56f81fc851f952793f4e5485e352bed2` | ⚠️ Unaudited |
| VaultDepositRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379278 | `0xfdda20a20cb4249e73e3356f468ddfdfb61483f6` | ⚠️ Unaudited |
| VaultFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-379349 | 2 deployments: ethereum `0x21b346622e607fcc936a320d3ab8224fb36b3c0c`; ethereum `0x6e9b4c2f6bd57b7b924d29b5dcfca1273ecc94a2` | ⚠️ Unaudited |
| VaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x269363665dbb1582b143099a3cb467e98a476d55`; ethereum `0x38e01bae236e727ef3dafd914a1ba03df7dacdf6`; ethereum `0x7d43e6c1f25dbd5d235236ae564df45bfed767b5` | ⚠️ Unaudited |
| VaultFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-379350 | 2 deployments: ethereum `0x371e4f7698760caac721989e5f1af72b7d6c596f`; ethereum `0x666faa632e5f7ba20a7fce36596a6736f87133be` | ⚠️ Unaudited |
| VaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4cf03ba5332bbfee54db0701f15b480c39bc54b1`; ethereum `0x8334812a584b5f7cb7f794484e07692e1748de7c` | ⚠️ Unaudited |
| VaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4e6a527c7ffcfbe2fa16d14bf9c96d8fcec4ab7c`; ethereum `0x86eb882404bfee5847b5067f70da498ec8efdb03` | ⚠️ Unaudited |
| VaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7594916540e60fc8d6e9ba5c3c83632f7001cf53` | ⚠️ Unaudited |
| VaultInventoryReporter | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144b1535a3ff4007aad8921419ee2e02cfdb8e1d` | ⚠️ Unaudited |
| VaultInventoryReporter | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379265 | `0x3a0f9a98714ed4a36cd5ebc07f364f39c88c2e8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f8ce6d77691807831abf88be8e525141350aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379256 | `0x0585a675029c68a6af41ba1350bc8172d6172320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac4742c05a8f61a382e428a0adbcf378bd0d5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199150b87ca83f8672e092baacb6fecba7e7dd0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379260 | `0x1f563cdd688ad47b75e474fde74e87c643d129b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c55ec2b20b72f30bcde3e24aaedb8af24b030b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379262 | `0x24ec19f05fc4a29d49617e1221ce7dc8a1ed5a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26dcdc1a4cf5b5a3876ec98cd5ca030465c601b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ed938ff4d532332c2701866d7869edcb39d7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ea7e9d91bdc7dc1ca0135d6f485bd731799bf56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35eb4dbc2436ddc6bc3ed94a397ac32bba99968a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x384582c4d2f4ee74a5bad88d1ab699160ba3ceaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39375ef4d5a9a5df5562f82eedcf9b7ae8dcb4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541ebfd631ceee05c11ff2f348c53d1adbb5dbbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379268 | `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8a475ca76626168d9e0e59360ad74d2313a958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c866452ef99f82e900dd3d35f0ad1f1e3e10b11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379270 | `0x945aff9253c840401166c3d24ff78180fe0a05df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d332078bbf57e0f46539fa930c93f95e063fbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379271 | `0x9b458e2b9c0cd34a62a26b846f45eb829aebc96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac442678408b7591588bc7437f0a00106b5186c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61517330cc03210e83bc2e98bc648eeb15ddc6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06f3ec8601dc3e8116edd05d5a1721dc2d7250e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc14e61ceb80b52ad48d3122046b904e05a5dacc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3b2705a875305bc6b67ef000fc08183e48f7eb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379277 | `0xd96e4d03420aa33a3fe91f57d03d8ef69de1e863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1a6dadfafa203a8e086428d91c302568dda5dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72516d0d038ec8c0ef0fe8f7f4eead8ee1c31e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc2b8d5c60c8e8bbf8d6dc685f03193472e39587` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379306 | `0x0028badf5d154dae44f874ac58ffcd3fa56d9586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379307 | `0x055357612455c53718a8d79f9f710c0648efe137` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379308 | `0x0888774c51841a994899ecf67e65dc30d707376a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379309 | `0x0a5ecac03acb40206abbb8e7238aaf491375923c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379310 | `0x0e8f3fc7542185b5f6e22b59d48a235cb3c5f5a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379311 | `0x122a2d5d54a546708a80e7275b96d772f3826ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379312 | `0x1f35a2d7746ef2569ff7a809609c4348353a4016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379313 | `0x23ce21be3ebd1c86325100460d58d14a1d143e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379314 | `0x252c58a1998ad26f9c0909e4cc8a389125b982fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379315 | `0x3806587d479b2ec44038e8f644fe3d2d82e4ff7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379316 | `0x393577385b03571ccbd95afe6b14cd7382ab16c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379317 | `0x398deeb51c56819880f2a2343705510a0c868747` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379318 | `0x3a54241cb7801bdea625565aacb0e873e79c0649` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379319 | `0x42de174663dc5f339aee2d58744a622f88da8c09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379320 | `0x4b95640d56f81fc851f952793f4e5485e352bed2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379321 | `0x7354334e99dcd64f964510129215aa28aad887bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379322 | `0x782b2e4cca4b5c75392846e73fae83d3f6ae85e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379323 | `0x7988fb6d7bac5fe3f9746b2df21013aa4747dcf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379324 | `0x7bb0a098bca96200fbe19ee54ddbdd52d86df423` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379325 | `0x7d1481418541812ef06217d2ed53fc8d0ff39d67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379326 | `0x812cd1bbcd6279f9537d77acdf3034ffaaa94571` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379327 | `0x824793838f4e6d621ab661462cae831b36b74dff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379328 | `0x8a12bb999100846b9e56aba4906762353c416952` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379329 | `0x8fb52cb2bb677464b3ae9755925de08a78ddac18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379330 | `0x968915b9bc4d88f5b0664f400dc9fd79d37470dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379331 | `0xa54171e4db46d680461a1cf7c465724f82713cd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379332 | `0xa66ccb968392cd6652e32b8768ae6343a65400cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379333 | `0xaef48370a5f37cfb760ce44e6cbf986c4deff389` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379334 | `0xb74c4b3f3ea71e2ffb382c633ff66527978fdce8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379335 | `0xc0209d538888c7779a9c5b43224f2d49eabf86fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379336 | `0xcdfd42b5695f45dabdbae0b5356d823cd38e83a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379337 | `0xd624d1879429a606f54f48b08b56126c3fe70049` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379338 | `0xd691039144519d36bc819bc98c3202b46cb80293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379339 | `0xdeabbbe620edf275f06e75e8fab18183389d606f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379340 | `0xe27e2fe60c25d338d4773c30992d54727f1e5fe2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379341 | `0xe4a1917ebe8fd2cafd79799c82adaa7e81ac6d47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379342 | `0xe60064e31f71f8c61b66e834757396c1f1f7abbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379343 | `0xee6b65f040aa6c811e7e21637a532ac6819cdae0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379344 | `0xf5fb026f9ee9e0854a1b8aa0867a8a76608b591e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379345 | `0xf925cc109f489fb930f793468a17d39d45c51abb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379346 | `0xfe046149bc8830d989a007e81a9d7f8a3b575f36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379347 | `0xff130c83706281dff47c509bc729e797bf0e2f08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379348 | `0xffae061d1e2d416bc3b8320145277052dba68923` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379279 | `0x055357612455c53718a8d79f9f710c0648efe137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x065a0fb8a09482318898e47cd092df310c1c6e1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379280 | `0x0888774c51841a994899ecf67e65dc30d707376a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379281 | `0x0a5ecac03acb40206abbb8e7238aaf491375923c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14c61bce30882ef9658c43891adb30c14e367328` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379282 | `0x23ce21be3ebd1c86325100460d58d14a1d143e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379284 | `0x3a54241cb7801bdea625565aacb0e873e79c0649` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379285 | `0x42de174663dc5f339aee2d58744a622f88da8c09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c6327629d8aeb1bea2fd0aafee1867a3ade69df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379292 | `0x7bb0a098bca96200fbe19ee54ddbdd52d86df423` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379294 | `0x8a12bb999100846b9e56aba4906762353c416952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d4cdab126793aa53847e029b9f6d5d89ca761a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379296 | `0xaef48370a5f37cfb760ce44e6cbf986c4deff389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf05e0d47cdf6bdcc351f2f72c49cd38a1a815db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb7c7b5769ae10e048359752ff4274bc7db1819c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379299 | `0xd624d1879429a606f54f48b08b56126c3fe70049` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379302 | `0xdeabbbe620edf275f06e75e8fab18183389d606f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379303 | `0xe4a1917ebe8fd2cafd79799c82adaa7e81ac6d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4fd45dd0047ddbb1e6b8c13d4696828d2531525` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379305 | `0xfe046149bc8830d989a007e81a9d7f8a3b575f36` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 141
- Live contracts: 18
- Unknown liveness contracts: 123
- Source-verified contracts: 112
- Currently scope-matched contracts retained as-is: 7
- Classification counts: currently scope matched=7, candidate review=29, exact address book overlap=9, source verified unclassified=67, unverified unclassified=29

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | ArcadeItemsVerifier<br>`0xabfd9d9e4157695db5812eee279d923a4f948df0` | project_anchor | periphery | live | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| currently scope matched | AssetVault<br>`0xd898456e39a461b102ce4626aac191582c38acb6` | project_anchor | core_logic | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| currently scope matched | CallWhitelist<br>`0xb4496f9798cebd003c5d5a956b5b8f3933178c82` | project_anchor | unknown | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| currently scope matched | CallWhitelistApprovals<br>`0xb4515a8e5616005f7138d9eb25b581362d9fdb95` | project_anchor | unknown | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| currently scope matched | FeeController<br>`0x41e538817c3311ed032653bee5487a113f8cff9f` | project_anchor | governance | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| currently scope matched | FlashRollover<br>`0x24611fad669350ca869fbed4b62877d1a409da12` | project_anchor | unknown | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| currently scope matched | PunksVerifier<br>`0x16d99ec34aa91162d71c84bcbe7a7ead5908b8e2` | project_anchor | periphery | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | ArcadeItemsVerifier<br>`0xc39c5d2fc523f26b5a83ab6c0c802c6e80a4df1d` | non_address_book | periphery | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | ERC1967Proxy<br>`0x3f80d1a3fdfadc4eec9cd7f7ab2039d544032d43` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | ERC1967Proxy<br>`0x4845b43b8f84653dab594fe7a12e9697b9408a9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | ERC1967Proxy<br>`0x4c52ca29388a8a854095fd2beb83191d68dc840b` | project_anchor | governance | live | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | ERC1967Proxy<br>`0x567ccb050e793235574f1261c24ea2304436c117` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | ERC1967Proxy<br>`0x8334812a584b5f7cb7f794484e07692e1748de7c` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | ERC1967Proxy<br>`0x86eb882404bfee5847b5067f70da498ec8efdb03` | non_address_book | registry | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | LoanCore<br>`0x3a50c25f11cb96a30bfcba4dc0c44da1907dd935` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | LoanCore<br>`0x3bbd0b701755130f14ebb81c8581e1be55eb6b15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | LoanCore<br>`0x606e4a441290314aeaf494194467fd2bb844064a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | LoanCore<br>`0x7691ee8febd406968d46f9de96cb8cc18fc8b325` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | LoanCore<br>`0xcb98358dcecbd4aa884b4453a0734a9980654047` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | LoanCore<br>`0xecbaac1ad75d9444b621d309b0f9c045455d78f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | LoanCore<br>`0xf7950d9e686247916c319bc175fffaf4fe6df89d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0x1123710f81cb573ab22dd6de90de17692f8ee8b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0x430d820fe598e2ab872d4e95bb971cbc761ed280` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0x562803b258cc1b5ecc1398443940e6ff15f649d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0x5783d0698a053762bcc9ee0b403b26448dbb0414` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0x6397141fad44502bad00e0ccbe80a910ec9bbc87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0x8d366662b3dae8037cb50d099986d699f1ab8e15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0xa5f4b242bb44ba742f08dbaf3b154cda7e172ac0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0xa75b02c9b55d7854a727e67fc662e932d50ee4c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | PromissoryNote<br>`0xd45ce8173262655c1acba3b376b1a77e4d7cdc7f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | V2ToV3Rollover<br>`0x0bc05fc8ebfb362592f9703a33fc8c3953ea0ed4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | V2ToV3Rollover<br>`0x1f59f83c3962481e8d490c9d65484202e4a3f9db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | V2ToV3Rollover<br>`0xdb0655752a3cd23b8fd360af596e71ee924c5253` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | V2ToV3RolloverWithItems<br>`0x3c77269ca7f4ac42b6f0bfc10d9f44406351d396` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| candidate review | V2ToV3RolloverWithItems<br>`0xac33e4abf40293452422283730ed54a6af139e7b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | AssetVault<br>`0x833835fe565008fa66fff31156b78a1fd710bcb5` | project_anchor | core_logic | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | FlashRolloverStakingVaultUpgrade<br>`0x094db3031258d6204a4cfc99415eb66f9a01a8c6` | project_anchor | core_logic | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | FlashRolloverV1toV2<br>`0x07352ed030c6fd8d12f8258d2df6f99cba533dc9` | project_anchor | unknown | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | RepaymentController<br>`0xb39dab85fa05c381767ff992ccde4c94619993d4` | project_anchor | governance | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | VaultDepositRouter<br>`0x4b95640d56f81fc851f952793f4e5485e352bed2` | project_anchor | adapter | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | VaultDepositRouter<br>`0xfdda20a20cb4249e73e3356f468ddfdfb61483f6` | project_anchor | adapter | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | VaultFactory<br>`0x21b346622e607fcc936a320d3ab8224fb36b3c0c` | project_anchor | registry | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | VaultFactory<br>`0x371e4f7698760caac721989e5f1af72b7d6c596f` | project_anchor | registry | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| exact address book overlap | VaultInventoryReporter<br>`0x3a0f9a98714ed4a36cd5ebc07f364f39c88c2e8a` | project_anchor | core_logic | live | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | AirdropSeason1<br>`0x7de71bc6694ca827e043b18102caf01518c0b54d` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArcadeAirdrop<br>`0x21fc22c02a298488e7d60a3b4fb974bc4ed75fd1` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArcadeAirdrop<br>`0x910a1accd978377baab783329af1dbb028d9892b` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArcadeCoreVoting<br>`0x2b6f11b2a783c928799c4e561da89cd06894a279` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArcadeGSCVault<br>`0xfd2d1c8809a271e892046a23185423a52a149f62` | non_address_book | core_logic | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArcadeParadice<br>`0x4bad2399f43a827ba3434cdd9b3ad1b5bac52244` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArcadeTokenDistributor<br>`0xd99121bd49c333be024ab28f7792d6e81170d187` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArcadeTreasury<br>`0xac2b57b372e198f09d4bf5f445ca1228771c12c5` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArtBlocksVerifier<br>`0x4501c338203ad2510c7c71a6ce26d70a70fb809d` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ArtBlocksVerifier<br>`0x6eeeed5d103c9230ba155ea9a9d6438dfcf3ae1a` | non_address_book | periphery | unknown | verified | n/a | `0x0a606524006a48c4d93662aa935aec203cac98c1` |
| source verified unclassified | AssetVault<br>`0x584503250fc246ce459e117195a64cf96544f027` | non_address_book | core_logic | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | AssetVault<br>`0x6079f3beffd5660ba3eadebb923550b5ad88de5d` | non_address_book | core_logic | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | AssetVault<br>`0x796c486a2215da68f4f5a752923659444889f4bd` | non_address_book | core_logic | unknown | verified | n/a | `0x0a606524006a48c4d93662aa935aec203cac98c1` |
| source verified unclassified | AssetVault<br>`0x9988d4918d85a814149225642175a4f7e5992fd9` | non_address_book | core_logic | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | AssetVault<br>`0xb56a5ccad374c0d7fb4820322cc336fec5d1424a` | non_address_book | core_logic | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | AssetWrapper<br>`0x5cb803c31e8f4f895a3ab19d8218646dc63e9dc2` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | BadgeDescriptor<br>`0xfdac5cd4b03aacbb8b24ba54c6a95f244fad13cc` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | BalanceQuery<br>`0xc7730a89b50779e28b9f06f805874bf28ae419c9` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelist<br>`0x0e8ea5e5415b30dc1873df03ae9f7beecf74805f` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelist<br>`0x1f2dfcfea1c2a7190225635b05075f00ecdd8eaa` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelist<br>`0x2a62005db1c5ae759552e28981d1bb55af2c690f` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelist<br>`0x5e87d274dd30c621fd2f12391d9f3725709f0597` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelist<br>`0xf5399cfa412ea2f817b973ae0ae043ba82f9df5b` | non_address_book | unknown | unknown | verified | n/a | `0x0a606524006a48c4d93662aa935aec203cac98c1` |
| source verified unclassified | CallWhitelistAllExtensions<br>`0x133570b0fd9e39611e29d3e47201ff8fe21707a1` | non_address_book | adapter | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelistAllExtensions<br>`0x28992ca7ba49a83f3bc391e9312730de78bf51ca` | non_address_book | adapter | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelistAllExtensions<br>`0xc185afaa3ff6decf908263802a831b18df1c62a3` | non_address_book | adapter | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CallWhitelistAllExtensions<br>`0xc58ed1772f8c165d0c61ff114a9c552a013f17c4` | non_address_book | adapter | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | CollectionWideOfferVerifier<br>`0x1b6e58aae43bfd2a435aa348f3328f3137dda544` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | FeeController<br>`0x0facdc440d496798e095f87e50a8ed3a5680d133` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | FeeController<br>`0x4cccc5c5ef1d8c4a6ad6765a36651ef523e42e75` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | FeeController<br>`0x78ff43ea7ddbca2bf8f00cbd3d7d53e3192eda7b` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | FeeController<br>`0xe6e2337a95e195dd5f744340bc1bf485ca67b753` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | FeeController<br>`0xf764442856eb3fe68a0828e07246a4b395e800fa` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | FlashRolloverV1toV2<br>`0x677eae7f60266608ed2d1f9a75021102a5e69c1b` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | LP1Migration<br>`0xa78f3ec4a858341fc9cae5672f7381e4e74e657b` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | LP1Migration<br>`0xd4bd6295e0581f97191dda1562ba6de7a40ec5b9` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | LP1MigrationWithItems<br>`0x466e3e08deb46f7ba9ce269d2e0858347b359759` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | LP1MigrationWithItems<br>`0xad8e69f2a97541d1e3524d08a89d3dcbefa0adad` | non_address_book | operational_periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | NFTBoostVault<br>`0xbe951d1b791c6878eec5d9129adeb72a28d59e68` | non_address_book | core_logic | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | OriginationController<br>`0x2df5c801f2f082287241c8cb7f3d517c3cba2620` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | OriginationController<br>`0x5fa8e713a058b2eef293ef0317e629ba88e9b88c` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | OriginationController<br>`0x7c2a27485b69f490945943464541236a025161f6` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | OriginationController<br>`0xb80f8861c050477acdf3a24f70240f04c16ecc51` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ReflectiveURIDescriptor<br>`0x7fa888a801fc7b7e5e847239e58dd4e2dc621fd5` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | RepaymentController<br>`0x251440b8cbcc973a8e7f0b7814ec3ecc6bcfcbc9` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | RepaymentController<br>`0x9217487e2b750fd6f4c5795b9bf488591ddf43a0` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | RepaymentController<br>`0x9ece636e942bcb67f9e0b7b6c51a56570ef6f38d` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | RepaymentController<br>`0xd7b4586b4ed87e2b98ad2df37a6c949c5ab1b1db` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | RepaymentController<br>`0xf6c8ee885dab34025ca275e269f8ec4bd85ad7fb` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | ReputationBadge<br>`0x3a5a551b41bbe3d3a61ffd8280f6569f6715612a` | non_address_book | unknown | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0x2055f71ef369d26db683da0b8f8c62469bdafc75` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0x5a49a36f8fa1c2cd38ade89159f3992cf35727e8` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0x81a86c874e7c3f618145c9e4c6ccf7ec192c065e` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0x957896415bddae8aee2a231e3f912eb87fb998c3` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0x9a07c4382149608a183ea45241bae2cd5fc2e77e` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0xa3e495088c2481fe76f28b16357654fce13cc5e9` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0xad8a07804389842758d215abad7c722b6ba79f22` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0xe237f018d2f6c719107ac38903c81f4791372dfb` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0xe3ce55da7e779be80fa705fd75b00128afd81a94` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | StaticURIDescriptor<br>`0xfde563e83fa013e3eeccf0e357c6c6759784cfcc` | non_address_book | periphery | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | Timelock<br>`0x47511465c397875deab7cf8f008d7922d041ff01` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | Timelock<br>`0xf3e9cdfa736f363a95a8ca62bdf69bbca4c5a973` | non_address_book | governance | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | VaultFactory<br>`0x38e01bae236e727ef3dafd914a1ba03df7dacdf6` | non_address_book | registry | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | VaultFactory<br>`0x4cf03ba5332bbfee54db0701f15b480c39bc54b1` | non_address_book | registry | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | VaultFactory<br>`0x4e6a527c7ffcfbe2fa16d14bf9c96d8fcec4ab7c` | non_address_book | registry | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | VaultFactory<br>`0x7d43e6c1f25dbd5d235236ae564df45bfed767b5` | non_address_book | registry | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| source verified unclassified | VaultInventoryReporter<br>`0x144b1535a3ff4007aad8921419ee2e02cfdb8e1d` | non_address_book | core_logic | unknown | verified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x01f8ce6d77691807831abf88be8e525141350aee` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x0ac4742c05a8f61a382e428a0adbcf378bd0d5e8` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x199150b87ca83f8672e092baacb6fecba7e7dd0a` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x24c55ec2b20b72f30bcde3e24aaedb8af24b030b` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x26dcdc1a4cf5b5a3876ec98cd5ca030465c601b7` | non_address_book | unknown | unknown | unverified | n/a | `0x0370a10714f5528bf7db525e087086f59f5fc7e3` |
| unverified unclassified | UnnamedContract<br>`0x27ed938ff4d532332c2701866d7869edcb39d7e4` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x2ea7e9d91bdc7dc1ca0135d6f485bd731799bf56` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x35eb4dbc2436ddc6bc3ed94a397ac32bba99968a` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x384582c4d2f4ee74a5bad88d1ab699160ba3ceaf` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x39375ef4d5a9a5df5562f82eedcf9b7ae8dcb4d1` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x541ebfd631ceee05c11ff2f348c53d1adbb5dbbe` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x6d8a475ca76626168d9e0e59360ad74d2313a958` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x7c866452ef99f82e900dd3d35f0ad1f1e3e10b11` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0x98d332078bbf57e0f46539fa930c93f95e063fbc` | non_address_book | unknown | unknown | unverified | n/a | `0x0370a10714f5528bf7db525e087086f59f5fc7e3` |
| unverified unclassified | UnnamedContract<br>`0xac442678408b7591588bc7437f0a00106b5186c9` | non_address_book | unknown | unknown | unverified | n/a | `0x0370a10714f5528bf7db525e087086f59f5fc7e3` |
| unverified unclassified | UnnamedContract<br>`0xb61517330cc03210e83bc2e98bc648eeb15ddc6d` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0xc06f3ec8601dc3e8116edd05d5a1721dc2d7250e` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0xc14e61ceb80b52ad48d3122046b904e05a5dacc9` | non_address_book | unknown | unknown | unverified | n/a | `0x0370a10714f5528bf7db525e087086f59f5fc7e3` |
| unverified unclassified | UnnamedContract<br>`0xc3b2705a875305bc6b67ef000fc08183e48f7eb1` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0xe1a6dadfafa203a8e086428d91c302568dda5dd5` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0xf72516d0d038ec8c0ef0fe8f7f4eead8ee1c31e2` | non_address_book | unknown | unknown | unverified | n/a | `0x02c845ac4bac48a6cd1e1c88a84195b7d5805b82` |
| unverified unclassified | UnnamedContract<br>`0xfc2b8d5c60c8e8bbf8d6dc685f03193472e39587` | non_address_book | unknown | unknown | unverified | n/a | `0x0370a10714f5528bf7db525e087086f59f5fc7e3` |
| unverified unclassified | UnnamedContract<br>`0x065a0fb8a09482318898e47cd092df310c1c6e1a` | non_address_book | unknown | unknown | unverified | n/a | `0x9b419fd36837558d8a3197a28a5e580ace44f64f` |
| unverified unclassified | UnnamedContract<br>`0x14c61bce30882ef9658c43891adb30c14e367328` | non_address_book | unknown | unknown | unverified | n/a | `0x9b419fd36837558d8a3197a28a5e580ace44f64f` |
| unverified unclassified | UnnamedContract<br>`0x4c6327629d8aeb1bea2fd0aafee1867a3ade69df` | non_address_book | unknown | unknown | unverified | n/a | `0x9b419fd36837558d8a3197a28a5e580ace44f64f` |
| unverified unclassified | UnnamedContract<br>`0x9d4cdab126793aa53847e029b9f6d5d89ca761a8` | non_address_book | unknown | unknown | unverified | n/a | `0x9b419fd36837558d8a3197a28a5e580ace44f64f` |
| unverified unclassified | UnnamedContract<br>`0xbf05e0d47cdf6bdcc351f2f72c49cd38a1a815db` | non_address_book | unknown | unknown | unverified | n/a | `0x9b419fd36837558d8a3197a28a5e580ace44f64f` |
| unverified unclassified | UnnamedContract<br>`0xcb7c7b5769ae10e048359752ff4274bc7db1819c` | non_address_book | unknown | unknown | unverified | n/a | `0x9b419fd36837558d8a3197a28a5e580ace44f64f` |
| unverified unclassified | UnnamedContract<br>`0xf4fd45dd0047ddbb1e6b8c13d4696828d2531525` | non_address_book | unknown | unknown | unverified | n/a | `0x9b419fd36837558d8a3197a28a5e580ace44f64f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [V1_Lending_LeastAuthority_2021-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_LeastAuthority_2021-08.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [V1_Lending_Macro_2022-04.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_Macro_2022-04.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 4 | high |
| [V2_Lending_Quantstamp_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Quantstamp_2022_06.pdf) | Quantstamp | Audit | 2022-06 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 45 | high |
| [V2_Lending_Roku_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Roku_2022_06.pdf) | unknown | Audit | 2022-06 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [V3_Lending_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 20 | high |
| [V3_Lending_TrailOfBits_2023-07.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_TrailOfBits_2023-07.pdf) | Trail of Bits | Audit | 2023-07 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 11 | high |
| [V3_Rollovers_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Rollovers_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [V4_Lending_Renascence_2024_02.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V4_Lending_Renascence_2024_02.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [arcade-staking-report-final.pdf](https://github.com/arcadexyz/dao-contracts/blob/main/audits/arcade-staking-report-final.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [07152023_Omniscia_Audit_Arcade_Governance.pdf](https://github.com/arcadexyz/governance/blob/main/audits/07152023_Omniscia_Audit_Arcade_Governance.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7720] V1_Lending_LeastAuthority_2021-08.pdf — no match: Extracted contract names from scope section and file paths. Audit date is from the cover page.
- [7721] V1_Lending_Macro_2022-04.pdf — matched: All contracts listed in the 'Source Code' section of the audit report.
- [7722] V2_Lending_Quantstamp_2022_06.pdf — matched: All contracts listed in the file signatures appendix are considered in scope. The audit date is from the final report date.
- [7723] V2_Lending_Roku_2022_06.pdf — matched: Scope defined as 'every contract in the contacts folder, except test folder'. Extracted contract names from findings and comments.
- [7724] V3_Lending_Omniscia_2023-08.pdf — matched: All contracts listed in the 'Files in Scope' tables were extracted. The audit date is from the cover page: August 19, 2023.
- [7725] V3_Lending_TrailOfBits_2023-07.pdf — matched: Extracted 16 contracts from Project Targets and Project Coverage sections. Audit date from cover page.
- [7726] V3_Rollovers_Omniscia_2023-08.pdf — no match: Extracted 4 contracts from the scope table and audit date from the cover page.
- [7727] V4_Lending_Renascence_2024_02.pdf — matched: Extracted contract names from scope table and findings. Audit date from cover page: February 22, 2024.
- [7733] arcade-staking-report-final.pdf — no match: No reason recorded
- [7734] 07152023_Omniscia_Audit_Arcade_Governance.pdf — no match: Extracted 21 contract names from the 'Files in Scope' and 'Contracts Assessed' tables. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| V1_Lending_LeastAuthority_2021-08.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` — deployed 2021-08-31 00:34:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_LeastAuthority_2021-08.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a675029c68a6af41ba1350bc8172d6172320` — deployed 2021-08-31 01:15:49+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_LeastAuthority_2021-08.pdf | ERC721Permit | unmatched — not counted | — | Mentioned in System Design section as examined. | no |
| V1_Lending_LeastAuthority_2021-08.pdf | IPromissoryNote | unmatched — not counted | — | Mentioned in Suggestion 3 as a file with less comprehensive documentation. | no |
| V1_Lending_Macro_2022-04.pdf | AssetWrapper | own contract | 0x1f563c… (selected) `0x1f563cdd688ad47b75e474fde74e87c643d129b7` — deployed 2021-07-17 00:05:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V1_Lending_Macro_2022-04.pdf | FeeController | own contract | FeeController (selected) `0x41e538817c3311ed032653bee5487a113f8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V1_Lending_Macro_2022-04.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` — deployed 2021-08-31 00:34:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | FlashRollover | own contract | FlashRollover (selected) `0x24611fad669350ca869fbed4b62877d1a409da12` — deployed 2021-11-24 11:41:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V1_Lending_Macro_2022-04.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a675029c68a6af41ba1350bc8172d6172320` — deployed 2021-08-31 01:15:49+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff9253c840401166c3d24ff78180fe0a05df` — deployed 2021-08-31 01:12:25+03 — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab85fa05c381767ff992ccde4c94619993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104a4f06260ff327d6734c555a0f5d8f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | PunkRouter | own contract | 0x24ec19… (selected) `0x24ec19f05fc4a29d49617e1221ce7dc8a1ed5a3d` — deployed 2021-08-31 01:17:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a675029c68a6af41ba1350bc8172d6172320` — deployed 2021-08-31 01:15:49+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` — deployed 2021-08-31 00:34:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | FeeController | own contract | FeeController (selected) `0x41e538817c3311ed032653bee5487a113f8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff9253c840401166c3d24ff78180fe0a05df` — deployed 2021-08-31 01:12:25+03 — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab85fa05c381767ff992ccde4c94619993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | ERC721Permit | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ERC721PermitUpgradeable | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104a4f06260ff327d6734c555a0f5d8f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | InstallmentsCalc | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | PunkRouter | own contract | 0x24ec19… (selected) `0x24ec19f05fc4a29d49617e1221ce7dc8a1ed5a3d` — deployed 2021-08-31 01:17:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | ICallWhitelist | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IFeeController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IERC721Permit | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ICallDelegator | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ISignatureVerifier | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IInstallmentsCalc | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IFlashRollover | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IVaultFactory | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IPromissoryNote | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ILoanCore | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IERC721PermitUpgradeable | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IAssetVault | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IOriginationController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IRepaymentController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa632e5f7ba20a7fce36596a6736f87133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c2f6bd57b7b924d29b5dcfca1273ecc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346622e607fcc936a320d3ab8224fb36b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f7698760caac721989e5f1af72b7d6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f9798cebd003c5d5a956b5b8f3933178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | AssetVault | own contract | AssetVault (alternative) `0x833835fe565008fa66fff31156b78a1fd710bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (selected) `0xd898456e39a461b102ce4626aac191582c38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-06-28 was 12d from audit; next candidate 174d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | OwnableERC721 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | LendingUtils | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | Lending | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ILendingPool | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IWrappedPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | LoanLibrary | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ItemsVerifier | own contract | ArcadeItemsVerifier (selected) `0xabfd9d9e4157695db5812eee279d923a4f948df0` — deployed 2022-07-22 19:33:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC1155 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockLendingPool | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | Templates | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC1271Lender | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockOpenVault | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC20 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | VaultFactoryV2 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | LoanCoreV2Mock | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | UserProxy | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockOriginationController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockCallDelegator | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | CryptoPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | WrappedPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC721 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ERC721ReceiverMock | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Roku_2022_06.pdf | AssetVault | own contract | AssetVault (alternative) `0x833835fe565008fa66fff31156b78a1fd710bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (selected) `0xd898456e39a461b102ce4626aac191582c38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-06-28 was 26d from audit; next candidate 188d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Roku_2022_06.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f9798cebd003c5d5a956b5b8f3933178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Roku_2022_06.pdf | FeeCollector | unmatched — not counted | — | mentioned in L-2 | no |
| V2_Lending_Roku_2022_06.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` — deployed 2021-08-31 00:34:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Roku_2022_06.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a675029c68a6af41ba1350bc8172d6172320` — deployed 2021-08-31 01:15:49+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Roku_2022_06.pdf | PunkRouter | own contract | 0x24ec19… (selected) `0x24ec19f05fc4a29d49617e1221ce7dc8a1ed5a3d` — deployed 2021-08-31 01:17:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Roku_2022_06.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff9253c840401166c3d24ff78180fe0a05df` — deployed 2021-08-31 01:12:25+03 — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab85fa05c381767ff992ccde4c94619993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Roku_2022_06.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa632e5f7ba20a7fce36596a6736f87133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c2f6bd57b7b924d29b5dcfca1273ecc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346622e607fcc936a320d3ab8224fb36b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f7698760caac721989e5f1af72b7d6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | AssetVault | ambiguous — not counted | AssetVault (alternative) `0x833835fe565008fa66fff31156b78a1fd710bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (alternative) `0xd898456e39a461b102ce4626aac191582c38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | ArtBlocksVerifier | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | ArcadeItemsVerifier | own contract | ArcadeItemsVerifier (selected) `0xabfd9d9e4157695db5812eee279d923a4f948df0` — deployed 2022-07-22 19:33:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | BaseURIDescriptor | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CallBlacklist | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f9798cebd003c5d5a956b5b8f3933178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelistApprovals | own contract | CallWhitelistApprovals (selected) `0xb4515a8e5616005f7138d9eb25b581362d9fdb95` — deployed 2022-12-06 23:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelistDelegation | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelistAllExtensions | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CollectionWideOfferVerifier | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | ERC721Permit | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | FeeLookups | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | FeeController | own contract | FeeController (selected) `0x41e538817c3311ed032653bee5487a113f8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | InterestCalculator | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | Lending | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` — deployed 2021-08-31 00:34:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | LoanLibrary | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | OwnableERC721 | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a675029c68a6af41ba1350bc8172d6172320` — deployed 2021-08-31 01:15:49+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | PunksVerifier | own contract | PunksVerifier (selected) `0x16d99ec34aa91162d71c84bcbe7a7ead5908b8e2` — deployed 2022-08-02 20:44:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104a4f06260ff327d6734c555a0f5d8f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff9253c840401166c3d24ff78180fe0a05df` — deployed 2021-08-31 01:12:25+03 — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab85fa05c381767ff992ccde4c94619993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | UnvaultedItemsVerifier | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa632e5f7ba20a7fce36596a6736f87133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c2f6bd57b7b924d29b5dcfca1273ecc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346622e607fcc936a320d3ab8224fb36b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f7698760caac721989e5f1af72b7d6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` — deployed 2021-08-31 00:34:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a675029c68a6af41ba1350bc8172d6172320` — deployed 2021-08-31 01:15:49+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff9253c840401166c3d24ff78180fe0a05df` — deployed 2021-08-31 01:12:25+03 — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab85fa05c381767ff992ccde4c94619993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | FeeController | own contract | FeeController (selected) `0x41e538817c3311ed032653bee5487a113f8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104a4f06260ff327d6734c555a0f5d8f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa632e5f7ba20a7fce36596a6736f87133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c2f6bd57b7b924d29b5dcfca1273ecc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346622e607fcc936a320d3ab8224fb36b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f7698760caac721989e5f1af72b7d6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | AssetVault | ambiguous — not counted | AssetVault (alternative) `0x833835fe565008fa66fff31156b78a1fd710bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (alternative) `0xd898456e39a461b102ce4626aac191582c38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f9798cebd003c5d5a956b5b8f3933178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelistApprovals | own contract | CallWhitelistApprovals (selected) `0xb4515a8e5616005f7138d9eb25b581362d9fdb95` — deployed 2022-12-06 23:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelistDelegation | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelistAllExtensions | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | ItemsVerifier | own contract | ArcadeItemsVerifier (selected) `0xabfd9d9e4157695db5812eee279d923a4f948df0` — deployed 2022-07-22 19:33:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | CollectionWideOfferVerifier | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | UnvaultedItemsVerifier | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | PunksVerifier | own contract | PunksVerifier (selected) `0x16d99ec34aa91162d71c84bcbe7a7ead5908b8e2` — deployed 2022-08-02 20:44:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | ArtBlocksVerifier | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Rollovers_Omniscia_2023-08.pdf | RolloverErrors | unmatched — not counted | — | listed in scope table | no |
| V3_Rollovers_Omniscia_2023-08.pdf | V2ToV3Rollover | unmatched — not counted | — | listed in scope table | no |
| V3_Rollovers_Omniscia_2023-08.pdf | V2ToV3RolloverBase | unmatched — not counted | — | listed in scope table | no |
| V3_Rollovers_Omniscia_2023-08.pdf | V2ToV3RolloverWithItems | unmatched — not counted | — | listed in scope table | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationControllerMigrate | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f9a313a2eb1c7357ecc331ddca14209f403` — deployed 2021-08-31 00:34:45+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V4_Lending_Renascence_2024_02.pdf | RefinanceController | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | InterestCalculator | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff9253c840401166c3d24ff78180fe0a05df` — deployed 2021-08-31 01:12:25+03 — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab85fa05c381767ff992ccde4c94619993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationCalculator | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a675029c68a6af41ba1350bc8172d6172320` — deployed 2021-08-31 01:15:49+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationConfiguration | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationLibrary | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | FeeController | own contract | FeeController (selected) `0x41e538817c3311ed032653bee5487a113f8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V4_Lending_Renascence_2024_02.pdf | V3RepaymentController | unmatched — not counted | — | mentioned in M-01 context | no |
| V4_Lending_Renascence_2024_02.pdf | ILoanCoreV3 | unmatched — not counted | — | mentioned in M-01 context | no |
| V4_Lending_Renascence_2024_02.pdf | IRepaymentControllerV3 | unmatched — not counted | — | mentioned in M-01 context | no |
| V4_Lending_Renascence_2024_02.pdf | IERC1271 | unmatched — not counted | — | mentioned in M-07 context | no |
| V4_Lending_Renascence_2024_02.pdf | IExpressBorrow | unmatched — not counted | — | mentioned in M-09 context | no |
| V4_Lending_Renascence_2024_02.pdf | IMigrationBase | unmatched — not counted | — | mentioned in H-1 context | no |
| V4_Lending_Renascence_2024_02.pdf | IRefinanceController | unmatched — not counted | — | mentioned in L-2 context | no |
| V4_Lending_Renascence_2024_02.pdf | Lending | unmatched — not counted | — | mentioned in L-1 recommendation | no |
| arcade-staking-report-final.pdf | ArcadeRewardsRecipient | unmatched — not counted | — | — | no |
| arcade-staking-report-final.pdf | ArcadeStakingRewards | unmatched — not counted | — | — | no |
| arcade-staking-report-final.pdf | BoundedHistory | unmatched — not counted | — | — | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Airdrop | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeToken | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeAirdrop | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeGSCVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeTreasury | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ARCDVestingVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeGSCCoreVoting | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeMerkleRewards | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeTokenDistributor | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ARCDVestingVaultStorage | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Badge | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | BadgeDescriptor | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | BaseVotingVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Governance | ambiguous — not counted | RepaymentController (alternative) `0xb39dab85fa05c381767ff992ccde4c94619993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca29388a8a854095fd2beb83191d68dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code)<br>FeeController (alternative) `0x41e538817c3311ed032653bee5487a113f8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | HashedStorageReentrancyBlock | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ImmutableVestingVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | NFTBoostVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | NFTBoostVaultStorage | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ReputationBadge | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Token | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Treasury | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x833835fe565008fa66fff31156b78a1fd710bcb5` | AssetVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x094db3031258d6204a4cfc99415eb66f9a01a8c6` | FlashRolloverStakingVaultUpgrade | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07352ed030c6fd8d12f8258d2df6f99cba533dc9` | FlashRolloverV1toV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x337104a4f06260ff327d6734c555a0f5d8f863aa` | PromissoryNote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee` | PromissoryNote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x251440b8cbcc973a8e7f0b7814ec3ecc6bcfcbc9` | RepaymentController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b95640d56f81fc851f952793f4e5485e352bed2` | VaultDepositRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdda20a20cb4249e73e3356f468ddfdfb61483f6` | VaultDepositRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x21b346622e607fcc936a320d3ab8224fb36b3c0c` | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x371e4f7698760caac721989e5f1af72b7d6c596f` | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a0f9a98714ed4a36cd5ebc07f364f39c88c2e8a` | VaultInventoryReporter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 23 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 31 ambiguous, 103 unmatched
- Matched-own operational status: 23 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: temporal_name=2, unique_name=21

Zero-match audit list:

- [7720] V1_Lending_LeastAuthority_2021-08.pdf
- [7726] V3_Rollovers_Omniscia_2023-08.pdf
- [7733] arcade-staking-report-final.pdf
- [7734] 07152023_Omniscia_Audit_Arcade_Governance.pdf

Fork inheritance lineage and inherited audits are included when available.
