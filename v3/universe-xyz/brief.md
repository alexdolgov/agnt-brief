# Agentic Audit Brief: Universe XYZ

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Universe XYZ (`universe-xyz`)
- Website: [https://universe.xyz/](https://universe.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 50 unique implementations (236 raw deployments)
- Coverage basis: 5/15 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,590,712.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Universe XYZ. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across ethereum. Structural roles: 7 unclassified, 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (7), core (5), supporting (3)
- Contract kinds: contract (15)
- Detected standards: ownable (2), erc165 (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7263ca0d7225bb4313e9bc3e799eb2a48ecdf003`, chain 1)
- UnnamedContract (`0x8aa4387412f18543b8d4cf16ef60e868a74f1f0d`, chain 1)
- CommunityVault (`0xc6f269bcde85cba7c9d91ae5fb91f5612ff9bd8e`, chain 1)
- Rewards (`0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205`, chain 1)
- Staking (`0x2d615795a8bdb804541c69798f13331126ba0c09`, chain 1)
- Supernova (`0x7b86600211e62b597e7cea03476b9efeb6872962`, chain 1)
- YieldFarmGenericToken (`0x0ef4852645fa17fdad5f15f7b4021251090ea0c7`, chain 1)
- YieldFarmGenericToken (`0x1d59a853085c2b34abc433e71ae652186bd7fc8f`, chain 1)
- YieldFarmGenericToken (`0x1f926b0924f64175db5d10f652628e7849d0185e`, chain 1)
- YieldFarmGenericToken (`0x49e01d04f5ab5cbc110d4f15eee983e4729fdf29`, chain 1)
- YieldFarmGenericToken (`0x4c82b95202f936afc3f493e6779fb9d3452811a9`, chain 1)
- YieldFarmGenericToken (`0x9f8b01b9aa4eefb8809c550cf3fe8e904c7ea659`, chain 1)
- YieldFarmGenericToken (`0xe3e1860a5653c030818226e0cb1efb4a477a5f32`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/15 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 16 of 50 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/37
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 50
- Raw deployments: 236
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 5 | 13.5% | 2021-02 |
| Haechi | Tier 2 | 4 | 10.8% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DiamondCutFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395318 | `0x441710f49efe5cb0f50ffa4c24066269c141a68e` | ✅ Audited |
| DiamondLoupeFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395326 | `0x75e333b48d71886c433c7beb879a6601bd801ec3` | ✅ Audited |
| Governance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395332 | `0xa8047c2a86d5a188b0e15c3c10e2bc144cb272c2` | ✅ Audited |
| OwnershipFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395321 | `0x5c7cb19978cf51594a121c650d031761c73e75cc` | ✅ Audited |
| Rewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395340 | `0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Artifaqt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34d565bddcff2dd74bc98e056ebd32dd5f5e1d34` | ⚠️ Unaudited |
| BarnBridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0391d2021f89dc339f60fff84546ea23e337750f` | ⚠️ Unaudited |
| CommunityVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395334 | `0xc6f269bcde85cba7c9d91ae5fb91f5612ff9bd8e` | ⚠️ Unaudited |
| DevFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e72f91f6319b50d64536fe6777c9c0a8b083d7` | ⚠️ Unaudited |
| EscrowedIlluvium2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e77dcb127f99ece88230a64db8d595f31f1b068` | ⚠️ Unaudited |
| HolderToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4e6685a84eb1a597c7f794700893ab8ffd04f4` | ⚠️ Unaudited |
| IlluvinatiCouncil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69` | ⚠️ Unaudited |
| IlluviumERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767fe9edc9e0df98e07454847909b5e959d7ca0e` | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4222b2a98daa443c6a0a761300d7d6bfd9161e52` | ⚠️ Unaudited |
| IlluviumNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf`; ethereum `0xb901614d588ef8db45045ffbb2145e1c36cbf8b9` | ⚠️ Unaudited |
| ILVPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b72209b2514940606910dd9ad309ee1e5e201c6` | ⚠️ Unaudited |
| ILVPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d`; ethereum `0xdb0a2a38f30a3f43fbfae98c85b132702df20cb3` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a` | ⚠️ Unaudited |
| MockedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6` | ⚠️ Unaudited |
| NFTClaimManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c` | ⚠️ Unaudited |
| NFTDisperser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1`; ethereum `0x9dca38d109c6c69790fb70bcfdeaf27c4394597c` | ⚠️ Unaudited |
| PreIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xabdef64e297a6dd56e0efa3005972da47d78f11f`; ethereum `0xc657f5697a952b33cd0598828847fdc5be536d36` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395317 | `0x2d615795a8bdb804541c69798f13331126ba0c09` | ⚠️ Unaudited |
| Supernova | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395342 | 2 deployments: ethereum `0x7b86600211e62b597e7cea03476b9efeb6872962`; ethereum `0x8aa4387412f18543b8d4cf16ef60e868a74f1f0d` | ⚠️ Unaudited |
| SushiLPPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe98477bdc16126bb0877c6e3882e3edd72571cc2` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbdb106a806173d1eea1640961533ff3114d69a` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 174 deployments: ethereum `0x0321d99ef353fd25a29b0805125f9203c75352f8`; ethereum `0x036654cf1f0fea99d58ef045e5bad6587efded99`; ethereum `0x04f1dcc48dc36958ff441893c3d30f0ab5e521f2`; ethereum `0x074bbf1d2169370201d514b912d575cd5f461249`; ethereum `0x07afd4d6b73fa8de268868f398d4a50f1a10a7cc`; ethereum `0x09840046a34caacc193afcea76b81426f67fb963`; ethereum `0x0c19ef41fa36433d380b09ac6cc44432ea268d2c`; ethereum `0x0c638d2ca0f41a01da831f57087cb09a4438531e`; ethereum `0x0cd11ee015b766a61932caf6261d7586123c8a1d`; ethereum `0x0cda7fecc1e1c32426833fa7eca097ad4906157a`; ethereum `0x0d90a3a4275be9dc5cb95d0f83e3e24c0669601c`; ethereum `0x0ed3b3e9cec482a42f77a3cb5e494892d2b9a8c3`; ethereum `0x0faea946a18f4feead8f33833c0ce3ccf40bc70f`; ethereum `0x10f27e99b6b0c30ee19035c4b5aec556178c35cc`; ethereum `0x11131648a7961439f5d92af074d03eadfb5ee755`; ethereum `0x1133b8ed56629b44d29ec12d0e323a30d07f6490`; ethereum `0x11dd9d239d9b047d3b8ec870f40ad207c1dcb414`; ethereum `0x14dbff41743d389a69fd208a7f41021cc8fb9ccf`; ethereum `0x14f768075368d21095416dc9504c91f77288cb34`; ethereum `0x1531d969050a3851b3c0b82006ff1259d18a988e`; ethereum `0x1568b2efd0e98bdbabca879f2a778f7eaa2323de`; ethereum `0x15b789a6ef80836c10233a1153740cdb95993386`; ethereum `0x15c93650f483247d6380a404c0d0879f2344ae0a`; ethereum `0x16d85c49889f1e404d53f1c7f4c182bbfaf7674d`; ethereum `0x18c5203287bdd3a7098d11ad7f67cb1e66e7e7c5`; ethereum `0x191e56ab8febf1caf14859c7720b201eecbd5a3e`; ethereum `0x19b1351891e8a5589ef5df4af6cb0a0f3cee853e`; ethereum `0x1cc6316ef595f7e299065ea33c74d11a1cf1eea3`; ethereum `0x1fdc8d2e6b73329677011d9f2a1c2ec4d9dc00f7`; ethereum `0x2181d9e6508259ca7b0d9c3cfb445305a8d1d1be`; ethereum `0x222c142d8ac0adf27d20801464de93431c00f822`; ethereum `0x230407fe2f5cb31d5ac6db1f1f8b8b5b275c4f20`; ethereum `0x25ea79601432559245d938372735e341dd10b242`; ethereum `0x26e1164582258851889a0256d4bbc11c47deead1`; ethereum `0x29c9563bd9a79ada30a4c232f4ed45da9899f9ae`; ethereum `0x2b014d5869a827c86a4dc68ec442c38e414f88d1`; ethereum `0x2e7f9b3e12510d7a0f41a8bdb3975d27569ea347`; ethereum `0x2f25c243bc59f4f4dfc52a0828bc7eefdcdadfe9`; ethereum `0x2f50076ebbbe0430957be1cef0db487f2bb65676`; ethereum `0x3363fac31fdbd00707c339bb117992b0fff8a5dc`; ethereum `0x3395c2e42599cd88342a9802115c33e2d8ec63e0`; ethereum `0x3736ceb4a896f7dddde7df29e3958dc74ef10214`; ethereum `0x386153ebb6ce46199fb6d675100ceab2172e47ab`; ethereum `0x3a50b410af330bdddedb497f33ca2c81fbb74d8f`; ethereum `0x3ac7c6e8753fc52dd6c1022a555cb02c4e94ce29`; ethereum `0x3bc624ed8c8d3b620b46939092c238583a938a76`; ethereum `0x3d282d2861fefdb0da6c038b05435beda49a9b86`; ethereum `0x3d44a19ae6217381bdb782505b6d2b0642aa4a13`; ethereum `0x3e26b62df967da08eba64b9800cc422a8c79caa8`; ethereum `0x3f2de6badba37f387d6a02be77671e1314acce7c`; ethereum `0x40fcb910b9fefc9c6402750b733e469b4bcd44d1`; ethereum `0x41092c27ca1ce17ed8c4caa34c4469cdbc75d757`; ethereum `0x4243b297ccfbfc6f7615fb4b4e6e3373ecf2955b`; ethereum `0x454e0edcee4a1d71079f608c834753adf7e7bda9`; ethereum `0x45b90ed252646dbf744a1f6ab315cf19239c6039`; ethereum `0x4808a637016a1a25a3602eaf40fd1c6d6adb7486`; ethereum `0x4865976e6c1400b68150466b9ece305ec8b75958`; ethereum `0x4955ca593e557674b4a9fee2466be9295b8242db`; ethereum `0x4cc488da00dd587f1d664c7af5345a9d6cfe1807`; ethereum `0x4d0640b22c701ff95d6f66faa1bddd76c1c9e8ab`; ethereum `0x4d116df3420b0281386f7157db7303c1d85d1b78`; ethereum `0x51022e453e2b779ff943b4e95b23e3fd2946d607`; ethereum `0x5384b6ae4ec81822c07f182ca9e1282520450630`; ethereum `0x54ae049c62935d6d7b40b7135717e1467a2b49cb`; ethereum `0x5520a5ef5d5093b8fd650a7a9602ed4418ca2060`; ethereum `0x559896623dde78808bbfc18d83003805a44d0ec2`; ethereum `0x55a8e686de4530378636cef5f892678da1bc2976`; ethereum `0x5f6a1e45df5eaffa82148c23115ba989bc2749cc`; ethereum `0x63ed6e696c5783409c396ddca3ced1f8e9b7c206`; ethereum `0x640d370f813c444a86d0be7216e8374993e0ff7a`; ethereum `0x642bbe39fe70450267d206d5151998c49c6e050e`; ethereum `0x646d08da23adb3d71004c44ae99caa2ebfb43a0c`; ethereum `0x64ddfc6cb4d81e06eef5271fabfac9bb103d6c3c`; ethereum `0x64f9f22fa7f761c21d169df2b3343b18a9b50a15`; ethereum `0x6592fbeeb3de5aca466167e49ec66e0258a4115b`; ethereum `0x6b0f2f581df2a857d562cfcf9d89a0f14d7510f7`; ethereum `0x6b91b1893e9be183baede5ad32c9418ec5fd56eb`; ethereum `0x6b96e1df9529ec1a39514767b15167b2ad1bb61f`; ethereum `0x6c132088def7c6b6c2f245362c3c14f9a7ebef85`; ethereum `0x6cf3da61bd2d9482ba74e885f752b32301aaa110`; ethereum `0x6d85379da4d0ff46677dba31b602af66d4e7123f`; ethereum `0x7058045ab6cd975ec81c47ceb4abffd04a0a68f3`; ethereum `0x709d44adadda2004c0b0681421d59c321df6cef8`; ethereum `0x72af11a5fbe278a225209d7ac055f51a2f8fa1b4`; ethereum `0x7336afa7198e913376d3a34563ec034ba6f2f191`; ethereum `0x73e68bfd4c173021de72a312a5e3140e3d34930b`; ethereum `0x7800cde240aeb966be7b8d77f41d8ebc1431751e`; ethereum `0x783cf9cf627c87ac5790fc6a9d78e348f890e42f`; ethereum `0x786ee8962a30d5bee8a848e98cf75c6a01eb190a`; ethereum `0x7ba69955b1565abbdae1d0e1d75c567115e9290c`; ethereum `0x7bd02b53c3e8d400379176f310eff63fcab9ac45`; ethereum `0x7d0fe8d45edce3d95e410f224e958db83590ee4a`; ethereum `0x7d2691f5ceb0f423d9d5f0ee411b29ae56f8aeda`; ethereum `0x82bcd4e405fdc2851b400c5fb36bbddf66a9ff83`; ethereum `0x8315124c30ccfd55a204a34badd7e20fecb45765`; ethereum `0x846f0da84167a161cd8132b7934d765ed3d54451`; ethereum `0x852077c6d03ea6c3848f708c5fe1f06156d69b9c`; ethereum `0x853448412a14cb3b324bfc5a2aeb120e0b7ac342`; ethereum `0x85409ffe72353eb685f6f575a8615cfc9bd019f3`; ethereum `0x854a238c133fed2a40a875729c679a1341e9e9ca`; ethereum `0x889a70b0f8b49340812fee9f1ba229225bc47b95`; ethereum `0x8957ecc1820d13f9169b56ab933a47fde00ce2b8`; ethereum `0x8a77cd92851c4d52d79302bb46ba131d89314007`; ethereum `0x8b53814a884309dc7e280907582ecabb5a8cccb4`; ethereum `0x8c9596046b81e8747a9c2cbbe4e916a2e1690efc`; ethereum `0x90ea42354892aebf1676cfd5df823e8951c68aca`; ethereum `0x910fa90bb0335f7d5539775fd9a494e64e1a0785`; ethereum `0x965e039e0b844d7dd441ce25b08d0073738257f0`; ethereum `0x99cd8c52da9bce099fc443ee968e00f3bbbc31f5`; ethereum `0x9c9cbc1b82672aabb26d76b1e09035a354b9991a`; ethereum `0x9d063ca9c7f92089614da196b2d88afdf343b0c7`; ethereum `0xa1bbadb01f9b85176b0ced3e344b7a8141043841`; ethereum `0xa2e754ab02cd8b9780e872c3dd1b7735373351e5`; ethereum `0xa3e080d9ace354c3a6c0e3b2b0a9f23298d94353`; ethereum `0xa5d9b86abd9c5be4d82ace958dde9e6d1ea315db`; ethereum `0xa9a534ea789b0fa20266fb6a036f5aa318b61e85`; ethereum `0xaaff4c18e871e26edaa5f2443382d4f3f1917c5b`; ethereum `0xac545197817c592b4a3202c561e6f6ee27a3a36c`; ethereum `0xad6eb0fb104091fa71e2c3861eccbc3a6916c75a`; ethereum `0xb19683cc2a11ccff68cbb9c0d25f99b9b3437bae`; ethereum `0xb43b25ce9cbd9a6073fbe5b3ffc0aef8f49373ac`; ethereum `0xb7d4079d6890f7fdca7be2329cf985fbfd6209a7`; ethereum `0xb9adef4f1938884f2b82095c6e837b77e5d39af1`; ethereum `0xb9c6a671beab22ca56ef6e92c67795e9ce7d685c`; ethereum `0xbb4b3faf0c70ed12be6752446d88548f91e06173`; ethereum `0xbb773d84bc0e24c66abf9c94dbdca278de0ab3c6`; ethereum `0xbf1ac089bbac2c749a7c011bebcbbe0628d1e194`; ethereum `0xc0e835b13fb4fa5d524b2c02fe74e66d21ca275a`; ethereum `0xc25045167526951c1dc50034efc6ea71e2d60154`; ethereum `0xc387dce727163bed366dc3c8a681974df0b4ef87`; ethereum `0xc77719515e7304fdbb25d6bc4a0e58dae4955961`; ethereum `0xc94c554bfcc7d5fdbabd46817d235892e2d62201`; ethereum `0xca46fd4e7c14c3c095dc0e226abcb24b511ded64`; ethereum `0xce49e21c6107589068229d10d30ae8750362b7b4`; ethereum `0xd0bd07a31411423d10752a03c18f0fd26eb6937d`; ethereum `0xd0f6a858728e00c841c978ade75e288be24c85f6`; ethereum `0xd292c518636e37ad622a1f96b1b55535cc97e95c`; ethereum `0xd397951a94342b8a9bd5dc6518e304e75f225882`; ethereum `0xd480c9325029528740376ce567e8b39bf27a98fc`; ethereum `0xd5ca084b66b4c6279e75e0a79246140b189c6e32`; ethereum `0xd6173b942766e250cc87e1841d572f8c214c3cc4`; ethereum `0xd756ea477f5e14e9971fae626d1251efd07fe2a6`; ethereum `0xd847d728964f0bfe5246f487cc56701a4d5608c5`; ethereum `0xdb87d27d47fe0bb4a96c72a8dd02b02e4ce735c0`; ethereum `0xdc6a0c905083e1a9417468180790150af914e2c8`; ethereum `0xdd510bc858eb0cfba39e3e2f328f6ef91fb50d3e`; ethereum `0xdd6506a5619a0a0a2e779ffeb237f808c3b1d4d7`; ethereum `0xdd76ea5a131982fc99480a46f928f8a5f368de6f`; ethereum `0xded5c1693a4d1362c9ae250d9b4b10380ac9f690`; ethereum `0xdf206fbaab393ed9053653aba0d557c769dba130`; ethereum `0xdf42c0e8c1d80f3b02f298a8ab00b9b68ccdd5b3`; ethereum `0xdfb5124b60d03cb33405d86d2906a52804955f27`; ethereum `0xe050e0696fb9eb7c2a424025aad3bdcc5b877793`; ethereum `0xe24dde54a55585dd456c0bdf64c4c7dd5e0dd847`; ethereum `0xe6fa7cc2ab8cab5f77a752d8161a0e9978ea2935`; ethereum `0xe7ca02be246e0bcb649c8ab2a0ff42696dd2b0f9`; ethereum `0xe83aab72f4e016cde12ada331d28a4dafa3b74f3`; ethereum `0xe9d10f1559de30dcd48fb22ab1151a40b0f9b433`; ethereum `0xea0c0cc51608207aac3975c948066c6cef41d036`; ethereum `0xead154c123c345923265b29f7945094575ced8ba`; ethereum `0xed15b185fb42003b03b89fa185ee6a6de0778618`; ethereum `0xef243965ac864423b43335d0a4c23067755e7f4c`; ethereum `0xef2abbd50d83e40219af4f66c50e6789a70c26e5`; ethereum `0xf081eec13be8d99eafcc2e6ced6091ce7a18b764`; ethereum `0xf25ecb13715e9d0bfd9db4e6a499b0ff0cf05b3e`; ethereum `0xf2bdbef1240ba2052e81546197f662907bc27c68`; ethereum `0xf386ccbc27a5c24694eca0a7e98e0d9bebaef64a`; ethereum `0xf38cc32a49435e5c272362193580177b31b13abf`; ethereum `0xf4a302c5e6a0d975cc4c613d4a9dc0d754ec56b9`; ethereum `0xf4ab1932c85b8fd52c7b605e108e1e01a069da18`; ethereum `0xf8a3d840a522a281c432f3d4c162a15569f97454`; ethereum `0xf8e6c795c41592548d2b955451ba5c85a669024f`; ethereum `0xfea490228b441f03076a69ba5e084ae2c6e057e1`; ethereum `0xffa1cd61e21b16b78e3fd3481267e67d3316980e` | ⚠️ Unaudited |
| VotingIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x035dc7dd0e90de650bc8b94196a5419e33b08207`; ethereum `0x04da3f7e8289685d88ab0c73f9ea2de75421392c`; ethereum `0x19ac5036e66dee56c0afa73a7e50e87fc4413945`; ethereum `0x2e15eae33cb3e569638746e0cd3525a5c214b71b`; ethereum `0x487e58fe51af1e6fcb1c95aefdac68394a173032`; ethereum `0x5f04cae38f09c044101b95456fda38ba2c436418`; ethereum `0x98c7c18e1b1379fd9135ec82593c902891ca0c76`; ethereum `0xbf9a925c860367eca4e024683d078ad81c8ce17e`; ethereum `0xe8d3c555d4f984a81bf9ab43cbd4e71acd73fb00` | ⚠️ Unaudited |
| XYZToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618679df9efcd19694bb1daa8d00718eacfa2883` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395314 | `0x0ef4852645fa17fdad5f15f7b4021251090ea0c7` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395315 | `0x1d59a853085c2b34abc433e71ae652186bd7fc8f` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395316 | `0x1f926b0924f64175db5d10f652628e7849d0185e` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395319 | `0x49e01d04f5ab5cbc110d4f15eee983e4729fdf29` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395320 | `0x4c82b95202f936afc3f493e6779fb9d3452811a9` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395330 | `0x9f8b01b9aa4eefb8809c550cf3fe8e904c7ea659` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395339 | `0xe3e1860a5653c030818226e0cb1efb4a477a5f32` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088823fa2c0ceb120198d9e1006bf2596bcae7b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10033f0ab5100acde53b649b1db272bdeb24130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b71388b8ef47eb99b683f8121981cdbacb8a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db7976721ab913987bcf87431e626fba6b888c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257377343fc60658c1cf716951d28602629fc96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d07e106b5d280e4ccc2d10deee62441c91d4340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d50a5d8b2470f91cf587effc838c711e454e45e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a897e57ff051a2f713f90db4f010d117042cfc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395323 | `0x7263ca0d7225bb4313e9bc3e799eb2a48ecdf003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b42d3ffc89cee457665c02f3fd0a8cadc4c2419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa305cd856e06905a5543dff5dc0c3ad0a9a3dc70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae37e65a77553a1758ded55442cc29d87259e819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd293ed74c082a06310626ac422256c538a8ce487` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 229
- Live contracts: 15
- Unknown liveness contracts: 214
- Source-verified contracts: 215
- Currently scope-matched contracts retained as-is: 4
- Classification counts: currently scope matched=4, candidate review=3, contamination review=4, exact address book overlap=11, source verified unclassified=195, unverified unclassified=12

Showing first 200 of 229 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | DiamondCutFacet<br>`0x441710f49efe5cb0f50ffa4c24066269c141a68e` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| currently scope matched | DiamondLoupeFacet<br>`0x75e333b48d71886c433c7beb879a6601bd801ec3` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| currently scope matched | Governance<br>`0xa8047c2a86d5a188b0e15c3c10e2bc144cb272c2` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| currently scope matched | OwnershipFacet<br>`0x5c7cb19978cf51594a121c650d031761c73e75cc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| candidate review | ERC1967Proxy<br>`0x384aa03d8b7cc6a818e7cb7a037ba0cd81af9fdf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| candidate review | ERC1967Proxy<br>`0x7f5f854ffb6b7701540a00c69c4ab2de2b34291d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| candidate review | ERC1967Proxy<br>`0x9dca38d109c6c69790fb70bcfdeaf27c4394597c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| contamination review | Artifaqt<br>`0x34d565bddcff2dd74bc98e056ebd32dd5f5e1d34` | non_address_book | unknown | unknown | verified | n/a | `0xc73add416e2119d20ce80e0904fc1877e33ef246` |
| contamination review | DevFund<br>`0xf1e72f91f6319b50d64536fe6777c9c0a8b083d7` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| contamination review | MockedPool<br>`0xa1b1c05b3d00e5803c1c502d9175f3e39fe5a8c6` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| contamination review | NFTDisperser<br>`0xf5df4f4bb2cc79949b37a0a7ea7ce09248b3233c` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| exact address book overlap | CommunityVault<br>`0xc6f269bcde85cba7c9d91ae5fb91f5612ff9bd8e` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | Supernova<br>`0x7b86600211e62b597e7cea03476b9efeb6872962` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | UnnamedContract<br>`0x7263ca0d7225bb4313e9bc3e799eb2a48ecdf003` | project_anchor | unknown | live | unverified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | UnnamedContract<br>`0x8aa4387412f18543b8d4cf16ef60e868a74f1f0d` | project_anchor | unknown | live | unverified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | YieldFarmGenericToken<br>`0x0ef4852645fa17fdad5f15f7b4021251090ea0c7` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | YieldFarmGenericToken<br>`0x1d59a853085c2b34abc433e71ae652186bd7fc8f` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | YieldFarmGenericToken<br>`0x1f926b0924f64175db5d10f652628e7849d0185e` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | YieldFarmGenericToken<br>`0x49e01d04f5ab5cbc110d4f15eee983e4729fdf29` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | YieldFarmGenericToken<br>`0x4c82b95202f936afc3f493e6779fb9d3452811a9` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | YieldFarmGenericToken<br>`0x9f8b01b9aa4eefb8809c550cf3fe8e904c7ea659` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| exact address book overlap | YieldFarmGenericToken<br>`0xe3e1860a5653c030818226e0cb1efb4a477a5f32` | project_anchor | unknown | live | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | EscrowedIlluvium2<br>`0x7e77dcb127f99ece88230a64db8d595f31f1b068` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | HolderToken<br>`0x5e4e6685a84eb1a597c7f794700893ab8ffd04f4` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | IlluvinatiCouncil<br>`0xaebd9bd588f044cbdec8f3cf1e80277a7a52dc69` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | IlluviumERC20<br>`0x767fe9edc9e0df98e07454847909b5e959d7ca0e` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | IlluviumIDOCollection<br>`0x4222b2a98daa443c6a0a761300d7d6bfd9161e52` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | IlluviumNFT<br>`0xb901614d588ef8db45045ffbb2145e1c36cbf8b9` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | ILVPool<br>`0x6b72209b2514940606910dd9ad309ee1e5e201c6` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | ILVPool<br>`0xdb0a2a38f30a3f43fbfae98c85b132702df20cb3` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | MerkleDistributor<br>`0xa904f27b1de7e82ba587677ee1f5af0ad0a8c79a` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | NFTClaimManager<br>`0x3fa9f416955fb4a27f6f2bf617ecbe609baa9c4c` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | PoolFactory<br>`0x53aff3b5059a48e4ee37e63c03e3ad563756d6e1` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | PreIlluvium<br>`0xabdef64e297a6dd56e0efa3005972da47d78f11f` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | PreIlluvium<br>`0xc657f5697a952b33cd0598828847fdc5be536d36` | non_address_book | unknown | unknown | verified | n/a | `0x0691f5804d4227925f19b031821b530b48fff38f` |
| source verified unclassified | Vesting<br>`0x0321d99ef353fd25a29b0805125f9203c75352f8` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x036654cf1f0fea99d58ef045e5bad6587efded99` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x04f1dcc48dc36958ff441893c3d30f0ab5e521f2` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x074bbf1d2169370201d514b912d575cd5f461249` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x07afd4d6b73fa8de268868f398d4a50f1a10a7cc` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x09840046a34caacc193afcea76b81426f67fb963` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x0c19ef41fa36433d380b09ac6cc44432ea268d2c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x0c638d2ca0f41a01da831f57087cb09a4438531e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x0cd11ee015b766a61932caf6261d7586123c8a1d` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x0cda7fecc1e1c32426833fa7eca097ad4906157a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x0d90a3a4275be9dc5cb95d0f83e3e24c0669601c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x0ed3b3e9cec482a42f77a3cb5e494892d2b9a8c3` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x0faea946a18f4feead8f33833c0ce3ccf40bc70f` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x10f27e99b6b0c30ee19035c4b5aec556178c35cc` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x11131648a7961439f5d92af074d03eadfb5ee755` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x1133b8ed56629b44d29ec12d0e323a30d07f6490` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x11dd9d239d9b047d3b8ec870f40ad207c1dcb414` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x14dbff41743d389a69fd208a7f41021cc8fb9ccf` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x14f768075368d21095416dc9504c91f77288cb34` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x1531d969050a3851b3c0b82006ff1259d18a988e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x1568b2efd0e98bdbabca879f2a778f7eaa2323de` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x15b789a6ef80836c10233a1153740cdb95993386` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x15c93650f483247d6380a404c0d0879f2344ae0a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x16d85c49889f1e404d53f1c7f4c182bbfaf7674d` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x18c5203287bdd3a7098d11ad7f67cb1e66e7e7c5` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x191e56ab8febf1caf14859c7720b201eecbd5a3e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x19b1351891e8a5589ef5df4af6cb0a0f3cee853e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x1cc6316ef595f7e299065ea33c74d11a1cf1eea3` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x1fdc8d2e6b73329677011d9f2a1c2ec4d9dc00f7` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x2181d9e6508259ca7b0d9c3cfb445305a8d1d1be` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x222c142d8ac0adf27d20801464de93431c00f822` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x230407fe2f5cb31d5ac6db1f1f8b8b5b275c4f20` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x25ea79601432559245d938372735e341dd10b242` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x26e1164582258851889a0256d4bbc11c47deead1` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x29c9563bd9a79ada30a4c232f4ed45da9899f9ae` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x2b014d5869a827c86a4dc68ec442c38e414f88d1` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x2e7f9b3e12510d7a0f41a8bdb3975d27569ea347` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x2f25c243bc59f4f4dfc52a0828bc7eefdcdadfe9` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x2f50076ebbbe0430957be1cef0db487f2bb65676` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3363fac31fdbd00707c339bb117992b0fff8a5dc` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3395c2e42599cd88342a9802115c33e2d8ec63e0` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3736ceb4a896f7dddde7df29e3958dc74ef10214` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x386153ebb6ce46199fb6d675100ceab2172e47ab` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3a50b410af330bdddedb497f33ca2c81fbb74d8f` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3ac7c6e8753fc52dd6c1022a555cb02c4e94ce29` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3bc624ed8c8d3b620b46939092c238583a938a76` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3d282d2861fefdb0da6c038b05435beda49a9b86` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3d44a19ae6217381bdb782505b6d2b0642aa4a13` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3e26b62df967da08eba64b9800cc422a8c79caa8` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x3f2de6badba37f387d6a02be77671e1314acce7c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x40fcb910b9fefc9c6402750b733e469b4bcd44d1` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x41092c27ca1ce17ed8c4caa34c4469cdbc75d757` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x4243b297ccfbfc6f7615fb4b4e6e3373ecf2955b` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x454e0edcee4a1d71079f608c834753adf7e7bda9` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x45b90ed252646dbf744a1f6ab315cf19239c6039` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x4808a637016a1a25a3602eaf40fd1c6d6adb7486` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x4865976e6c1400b68150466b9ece305ec8b75958` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x4955ca593e557674b4a9fee2466be9295b8242db` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x4cc488da00dd587f1d664c7af5345a9d6cfe1807` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x4d0640b22c701ff95d6f66faa1bddd76c1c9e8ab` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x4d116df3420b0281386f7157db7303c1d85d1b78` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x51022e453e2b779ff943b4e95b23e3fd2946d607` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x5384b6ae4ec81822c07f182ca9e1282520450630` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x54ae049c62935d6d7b40b7135717e1467a2b49cb` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x5520a5ef5d5093b8fd650a7a9602ed4418ca2060` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x559896623dde78808bbfc18d83003805a44d0ec2` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x55a8e686de4530378636cef5f892678da1bc2976` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x5f6a1e45df5eaffa82148c23115ba989bc2749cc` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x63ed6e696c5783409c396ddca3ced1f8e9b7c206` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x640d370f813c444a86d0be7216e8374993e0ff7a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x642bbe39fe70450267d206d5151998c49c6e050e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x646d08da23adb3d71004c44ae99caa2ebfb43a0c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x64ddfc6cb4d81e06eef5271fabfac9bb103d6c3c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x64f9f22fa7f761c21d169df2b3343b18a9b50a15` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x6592fbeeb3de5aca466167e49ec66e0258a4115b` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x6b0f2f581df2a857d562cfcf9d89a0f14d7510f7` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x6b91b1893e9be183baede5ad32c9418ec5fd56eb` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x6b96e1df9529ec1a39514767b15167b2ad1bb61f` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x6c132088def7c6b6c2f245362c3c14f9a7ebef85` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x6cf3da61bd2d9482ba74e885f752b32301aaa110` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x6d85379da4d0ff46677dba31b602af66d4e7123f` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x7058045ab6cd975ec81c47ceb4abffd04a0a68f3` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x709d44adadda2004c0b0681421d59c321df6cef8` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x72af11a5fbe278a225209d7ac055f51a2f8fa1b4` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x7336afa7198e913376d3a34563ec034ba6f2f191` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x73e68bfd4c173021de72a312a5e3140e3d34930b` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x7800cde240aeb966be7b8d77f41d8ebc1431751e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x783cf9cf627c87ac5790fc6a9d78e348f890e42f` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x786ee8962a30d5bee8a848e98cf75c6a01eb190a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x7ba69955b1565abbdae1d0e1d75c567115e9290c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x7bd02b53c3e8d400379176f310eff63fcab9ac45` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x7d0fe8d45edce3d95e410f224e958db83590ee4a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x7d2691f5ceb0f423d9d5f0ee411b29ae56f8aeda` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x82bcd4e405fdc2851b400c5fb36bbddf66a9ff83` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x8315124c30ccfd55a204a34badd7e20fecb45765` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x846f0da84167a161cd8132b7934d765ed3d54451` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x852077c6d03ea6c3848f708c5fe1f06156d69b9c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x853448412a14cb3b324bfc5a2aeb120e0b7ac342` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x85409ffe72353eb685f6f575a8615cfc9bd019f3` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x854a238c133fed2a40a875729c679a1341e9e9ca` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x889a70b0f8b49340812fee9f1ba229225bc47b95` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x8957ecc1820d13f9169b56ab933a47fde00ce2b8` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x8a77cd92851c4d52d79302bb46ba131d89314007` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x8b53814a884309dc7e280907582ecabb5a8cccb4` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x8c9596046b81e8747a9c2cbbe4e916a2e1690efc` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x90ea42354892aebf1676cfd5df823e8951c68aca` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x910fa90bb0335f7d5539775fd9a494e64e1a0785` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x965e039e0b844d7dd441ce25b08d0073738257f0` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x99cd8c52da9bce099fc443ee968e00f3bbbc31f5` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x9c9cbc1b82672aabb26d76b1e09035a354b9991a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0x9d063ca9c7f92089614da196b2d88afdf343b0c7` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xa1bbadb01f9b85176b0ced3e344b7a8141043841` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xa2e754ab02cd8b9780e872c3dd1b7735373351e5` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xa3e080d9ace354c3a6c0e3b2b0a9f23298d94353` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xa5d9b86abd9c5be4d82ace958dde9e6d1ea315db` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xa9a534ea789b0fa20266fb6a036f5aa318b61e85` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xaaff4c18e871e26edaa5f2443382d4f3f1917c5b` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xac545197817c592b4a3202c561e6f6ee27a3a36c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xad6eb0fb104091fa71e2c3861eccbc3a6916c75a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xb19683cc2a11ccff68cbb9c0d25f99b9b3437bae` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xb43b25ce9cbd9a6073fbe5b3ffc0aef8f49373ac` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xb7d4079d6890f7fdca7be2329cf985fbfd6209a7` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xb9adef4f1938884f2b82095c6e837b77e5d39af1` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xb9c6a671beab22ca56ef6e92c67795e9ce7d685c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xbb4b3faf0c70ed12be6752446d88548f91e06173` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xbb773d84bc0e24c66abf9c94dbdca278de0ab3c6` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xbf1ac089bbac2c749a7c011bebcbbe0628d1e194` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xc0e835b13fb4fa5d524b2c02fe74e66d21ca275a` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xc25045167526951c1dc50034efc6ea71e2d60154` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xc387dce727163bed366dc3c8a681974df0b4ef87` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xc77719515e7304fdbb25d6bc4a0e58dae4955961` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xc94c554bfcc7d5fdbabd46817d235892e2d62201` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xca46fd4e7c14c3c095dc0e226abcb24b511ded64` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xce49e21c6107589068229d10d30ae8750362b7b4` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd0bd07a31411423d10752a03c18f0fd26eb6937d` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd0f6a858728e00c841c978ade75e288be24c85f6` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd292c518636e37ad622a1f96b1b55535cc97e95c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd397951a94342b8a9bd5dc6518e304e75f225882` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd480c9325029528740376ce567e8b39bf27a98fc` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd5ca084b66b4c6279e75e0a79246140b189c6e32` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd6173b942766e250cc87e1841d572f8c214c3cc4` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd756ea477f5e14e9971fae626d1251efd07fe2a6` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xd847d728964f0bfe5246f487cc56701a4d5608c5` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdb87d27d47fe0bb4a96c72a8dd02b02e4ce735c0` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdc6a0c905083e1a9417468180790150af914e2c8` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdd510bc858eb0cfba39e3e2f328f6ef91fb50d3e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdd6506a5619a0a0a2e779ffeb237f808c3b1d4d7` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdd76ea5a131982fc99480a46f928f8a5f368de6f` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xded5c1693a4d1362c9ae250d9b4b10380ac9f690` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdf206fbaab393ed9053653aba0d557c769dba130` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdf42c0e8c1d80f3b02f298a8ab00b9b68ccdd5b3` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xdfb5124b60d03cb33405d86d2906a52804955f27` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xe050e0696fb9eb7c2a424025aad3bdcc5b877793` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xe24dde54a55585dd456c0bdf64c4c7dd5e0dd847` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xe6fa7cc2ab8cab5f77a752d8161a0e9978ea2935` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xe7ca02be246e0bcb649c8ab2a0ff42696dd2b0f9` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xe83aab72f4e016cde12ada331d28a4dafa3b74f3` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xe9d10f1559de30dcd48fb22ab1151a40b0f9b433` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xea0c0cc51608207aac3975c948066c6cef41d036` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xead154c123c345923265b29f7945094575ced8ba` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xed15b185fb42003b03b89fa185ee6a6de0778618` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xef243965ac864423b43335d0a4c23067755e7f4c` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xef2abbd50d83e40219af4f66c50e6789a70c26e5` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xf081eec13be8d99eafcc2e6ced6091ce7a18b764` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |
| source verified unclassified | Vesting<br>`0xf25ecb13715e9d0bfd9db4e6a499b0ff0cf05b3e` | non_address_book | unknown | unknown | verified | n/a | `0xdf342ac052b1dd10552df81be77ef4a84b4cae60` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [HAECHI-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/HAECHI-DAO.pdf) | Haechi | Audit | 2021-01 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [PerfectAbstractions-Marketplace-Audit.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/PerfectAbstractions-Marketplace-Audit.pdf) | Perfect Abstractions | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [Quantstamp-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/Quantstamp-DAO.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | n/a | matched | 5 | 0 | 0 | 22 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14702] HAECHI-DAO.pdf — matched: Contracts listed in 'Contracts Subject to Audit' section. Date from cover page.
- [14703] PerfectAbstractions-Marketplace-Audit.pdf — no match: All contracts listed in the scope section of the audit report.
- [14704] Quantstamp-DAO.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HAECHI-DAO.pdf | Barn | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Reward | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Parameters | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Governance | own contract | Governance (selected) `0xa8047c2a86d5a188b0e15c3c10e2bc144cb272c2` — deployed 2021-05-25 12:02:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | BarnFacet | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | DiamondCutFacet | own contract | DiamondCutFacet (selected) `0x441710f49efe5cb0f50ffa4c24066269c141a68e` — deployed 2021-05-25 12:39:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | DiamondLoupeFacet | own contract | DiamondLoupeFacet (selected) `0x75e333b48d71886c433c7beb879a6601bd801ec3` — deployed 2021-05-25 12:40:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | OwnershipFacet | own contract | OwnershipFacet (selected) `0x5c7cb19978cf51594a121c650d031761c73e75cc` — deployed 2021-05-25 12:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | LibBarnStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibDiamondStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibOwnership | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseMarketplaceCore | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseMarketplace | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC721FloorBidMatcher | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | TransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC721LazyMintTransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC20TransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | SimpleTransferManager | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseTransferManager | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | TransferExecutor | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC2981Royalties | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | HasSecondarySaleFees | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | RoyaltiesRegistry | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | OrderValidator | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | OperatorRole | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | BpLibrary | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibAsset | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibERC1155LazyMint | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibERC721LazyMint | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibFeeSide | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibFill | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibOrderData | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibPart | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibSignature | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibTransfer | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | AssetMatcher | unmatched — not counted | — | listed in scope | no |
| Quantstamp-DAO.pdf | Barn | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | BarnFacet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | BarnMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Bridge | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | ChangeRewardsFacet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | DiamondCutFacet | own contract | DiamondCutFacet (selected) `0x441710f49efe5cb0f50ffa4c24066269c141a68e` — deployed 2021-05-25 12:39:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | DiamondLoupeFacet | own contract | DiamondLoupeFacet (selected) `0x75e333b48d71886c433c7beb879a6601bd801ec3` — deployed 2021-05-25 12:40:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | ERC20Mock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Governance | own contract | Governance (selected) `0xa8047c2a86d5a188b0e15c3c10e2bc144cb272c2` — deployed 2021-05-25 12:02:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | IBarn | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IBridge | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IDiamondCut | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IDiamondLoupe | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IERC165 | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IERC173 | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IRewards | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibBarnStorage | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibDiamond | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibDiamondStorage | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibOwnership | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | MulticallMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | OwnershipFacet | own contract | OwnershipFacet (selected) `0x5c7cb19978cf51594a121c650d031761c73e75cc` — deployed 2021-05-25 12:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | Parameters | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Rewards | own contract | Rewards (selected) `0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205` — deployed 2021-05-25 12:45:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | RewardsMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Test1Facet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Test2Facet | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc6f269bcde85cba7c9d91ae5fb91f5612ff9bd8e` | CommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d615795a8bdb804541c69798f13331126ba0c09` | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b86600211e62b597e7cea03476b9efeb6872962` | Supernova | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ef4852645fa17fdad5f15f7b4021251090ea0c7` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d59a853085c2b34abc433e71ae652186bd7fc8f` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f926b0924f64175db5d10f652628e7849d0185e` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49e01d04f5ab5cbc110d4f15eee983e4729fdf29` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c82b95202f936afc3f493e6779fb9d3452811a9` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f8b01b9aa4eefb8809c550cf3fe8e904c7ea659` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3e1860a5653c030818226e0cb1efb4a477a5f32` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 58 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=9

Zero-match audit list:

- [14703] PerfectAbstractions-Marketplace-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
