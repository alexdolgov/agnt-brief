# Agentic Audit Brief: T RIZE

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: T RIZE (`t-rize`)
- Website: [https://www.t-rize.io](https://www.t-rize.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 32 unique implementations (315 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,000,000.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for T RIZE. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base. Structural roles: 2 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (1), erc165 (1), erc1967proxy (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5f03d0a97a972597c0a4a6dc4159aec0a0989335`, chain 8453)
- AccessList (`0x136a429bee94a5a02240ff74023b46347cae87c9`, chain 8453)
- RizeToken (`0x9818b6c09f5ecc843060927e8587c427c7c93583`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 32 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 32
- Raw deployments: 315
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x038fa58bd4da1c938d2783941e657164d497c4b6`; base `0x16f542bc40723dfe8976a334564ef0c3cfd602fd`; base `0x23e47a253776f1fce32e5f2d5d342ca5d6edd226`; base `0x330ec3210511cc8f5a87a737a08905092e033af3`; base `0x484cc23fee336291e3c8803cf27e16b9bee68744`; base `0x4c83489a62d52ee68a800dd09410f790a14a5d95`; base `0x5d427e797c665ad7413a4e0ff4ceb3e31959c4c5`; base `0x6f22c6925b27bcf9713fae2ab6f4397549d684b8`; base `0x735326bcc0479e3f23ed65dc83310d63eba6250d`; base `0xaa1399a25ab0f9a5464f44963ba77626937d1523`; base `0xad25818438b2908caa1815d2291d6fb3c41b6f3e`; base `0xea990bccb5b4da5023b6dc88480297405fd222c3`; base `0xf3764b1fc0ab831f75d3edd7435abfe4af675c9a` | ⚠️ Unaudited |
| AccessList | unknown | project_anchor | own_supporting | 0 | base | unit-393830 | `0x136a429bee94a5a02240ff74023b46347cae87c9` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38660c8cc222c0192b635c2ac09687b4f25cce5f` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc842c69d54f83170c42c4d556b4f6b2ca53dd3e8` | ⚠️ Unaudited |
| BaseRizeMintBurnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xd3736143ab05224c1edce1b632a8dc1404ac8f43`; base `0xd4d129df31bf9d9ef7ff030adf984f3d028e16a0` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 42 deployments: base `0x03f255a5a8040efb81f7b7d77cddb8d2c9cafc38`; base `0x0786b7e2093cdef04fca83f4483a3dad185ee86a`; base `0x0a995a72d8346683c97514990f802f4778b7ac72`; base `0x0db8a980ad6a011c0cda1e3a61417524cb4152a0`; base `0x0f0f719a2417c01d9aff5de6fad2813ee4dbd917`; base `0x1568a4131760231712e59778dab9efe67911f4ff`; base `0x162a6d638c6d0a97ccd89f1d4e312191d27b8e00`; base `0x194173317f55e0e9c33b41464e805c3ede070c75`; base `0x19ef16366ec4d8c8f022a3708735289538ef6d16`; base `0x1c9ee196c33db91cf14c4a5ba90678b3f0f3c107`; base `0x1e89f91ee35d7d21c8e8238c79146daf7ab8bb94`; base `0x227400d5552f386a6df24758c7491fbe10a5a9da`; base `0x25fad433d68d83cb997985f7c6128ab5a1bdcd93`; base `0x34bc9beb51d98b7e40862b3b4eda97ad68d0475e`; base `0x3640a6b166e2e4a7bd9e2d4b15ad2ed9a47bf8ed`; base `0x3b01cb86d071b20915883525c0e039659d4ee6b8`; base `0x419cbf914c3fd8d1b315e9a2fcacb47af2039228`; base `0x5e3eb998e2583d960a4bd464e3f22fbba1ca8f31`; base `0x5f8b0b4f5fc720ad10e0fbe5eb0aab3062347989`; base `0x6ba2116b540150f2da19837c5a419838e38048e9`; base `0x7c7b15c7e71986a63de5486b4c4386264782bcba`; base `0x88c053e833370b46f71204e3e9d4258eabab9def`; base `0x8cce61e1756dd01d3b9b27eef8c68650d8f69e69`; base `0x9118c2bf2b98a4463ee6c0f28ef343c4376f7372`; base `0x919d984c78c7dff32095bb3a36cdbfbe90032f2c`; base `0x926f1b7216072b00bd4ae70101f162ad23acda96`; base `0xa2d1bc00495c8263d4c04f742a470e1415d454f1`; base `0xa84a33295c869e9ad2131ea66e9674a61805ac4c`; base `0xa8619f141572f6f1b9271beee3edadd1b71fe0bd`; base `0xac9b7fac15312fecb73e889118c009b2d2cd5a71`; base `0xb5e3477feb00f79a2af25c001dd4882d9fcd4545`; base `0xbb9c6a900068a3eb6b039fb009719a6725178258`; base `0xbd0800f29eff2edb39dd3e8c95fb6adec2ef77fa`; base `0xc253cb15b44a032a68328062a39059a3b6dd06b6`; base `0xc3c6c182d85676f5d81d6865c2cd3b62bc5d1cca`; base `0xd0c34cb5438b624e1af94544e9779f58b8a8bd4e`; base `0xd216622e392cc9e69c50466574926786d06aad64`; base `0xd54fe63dbd928ca9bb89db502f939de673518eb7`; base `0xda5aa67b0ca4d9f3de7207170fd9bd2ff1b13b6f`; base `0xe0f53a45daacabbc9ee3dfc5d50984c655a3b52e`; base `0xe6d4696a18496720962fd74de1198743fa3bbefa`; base `0xedfd7676ddaa7e05574b844b8e7c079bfdd2e811` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 56 deployments: base `0x13d579664baab9adcc4c6b19956f7b7eadbb036f`; base `0x154d09db12e6e1ef94e57ca1889ffecbb90ce034`; base `0x1766bcbcd6f56d3d984c40b24e76c050db14c5dc`; base `0x1cb5a9215a10dd4d056af7664b3c6b5aa58f0b00`; base `0x1cee35fc20ad680e9a2285e9ae260161b6447b57`; base `0x1e88d63b8805c36f96c530c37bde113361ac6cc0`; base `0x206e9a22b384d3863b606c41030ec2a19d3cbb95`; base `0x288b9b6b365c2b5dcb301cdaf7b55a58b25afbb0`; base `0x2f6f662512d85612d5a42874b0a4a24524a8074f`; base `0x335cad1ea3ab44fe800da89fc31e0071e044ef34`; base `0x3ea696a4aae34df5f93291365884d6f5dd73019e`; base `0x3efd833f03239699f208339842c87ee77f1b77a8`; base `0x43fadc7b2929078f0f318e0bec6b31dc2bf1c309`; base `0x4d87cbff8187c4b3e00fdf534cb310724536ea4c`; base `0x53cf4d9d05edd2ecc2a34635700bc375e2ead7ee`; base `0x5800177ab2cefd1f7704a4e7ea8a309d98072fcb`; base `0x5c7509de3d2c8913acd3bce14ab13fcdcc7a09cf`; base `0x5f49e300bbb9c7b4662327fee5d66bffe525e121`; base `0x64474126728d87101d86aaf3ae8528874a8209e0`; base `0x69797ecf7acd6ca73a8c42cfb4268f7572047346`; base `0x6f82c3d9237e873eb2d09a96462bcb5c3fce22a4`; base `0x7159e9bc4446fa83b408f5c9f66437885bfa095d`; base `0x71aafdfd646dabe23bdaf21b239ec6ca5da54729`; base `0x797c54f6e028c70d76c0031e03ab43eb1b80fa74`; base `0x7deafd0d66eee6243674164f2e1e81cb0d7f5052`; base `0x8aa50883f5f62eb081d16c90fdadad9e227206c6`; base `0x8fd4886c62c10fe367a3894f8abb616624a142af`; base `0x9061247649e327b7dfd256d882dcc0a0d6d86a8e`; base `0x935b221ea3eaa45cdf2b12964bda0b4704a5b383`; base `0x9c764e7db0962d5528bd043109e52c477bafe5db`; base `0x9d5665f2c06c77df7b3f3bbee0a14e63dcd614b2`; base `0xa12f40f25fdc9004eebff0be19c02ee5a47b32b3`; base `0xa2302b687d0630f2073d3c5b26f35fc90fa8c110`; base `0xa688993b1195aa6e64f4f835415c854a2c83bc21`; base `0xa77ca3b16aee1e177fd8eff038f929819b75490f`; base `0xa9b67934d59ae3dc8728a9f92febd24e81695495`; base `0xaa0f8801e7f601af6fb709fc7768a933bfc6aab4`; base `0xafc7e9fdd13aff368b1d8d16e04f4977e68128e1`; base `0xb90079d2a2872122da0c8235110249127cacd54d`; base `0xb96ae076e7ca4c3e913034aecc71e3f781e74115`; base `0xbee038af079a702b2ed0af7886da101443ddb1ce`; base `0xbfcff67cc8a236b25fc043a4a2b8bf5b122adc44`; base `0xc45f5445382e3726f85326e66d2e564fc93c9e7b`; base `0xc6ed8b0f0ea029e73f182492d11f31fe399ccfde`; base `0xcaf4e8ed1cbdd5fb9b1359e98d9185dafe01b943`; base `0xd206eb75877ed56efd58f93512934015a8a07d6b`; base `0xded11e542988ebc286a39e28066d91d270c38997`; base `0xdfeaa4acb814564ab8c756a95e8269c620ed9dee`; base `0xe197238d4c0d25cc84f3fd2b79334b76e72fcfec`; base `0xe45e35ba80e96b1caa1fb0e13fb84e5a6483ceef`; base `0xe8e17c4e16ede9ed62580b48bf784b71197279b8`; base `0xee9ea9b65475ee7693e0ec9b9c308ca2d536e7ea`; base `0xf0247d9f123c3ff8e35d1ec7741da9ebedb69f69`; base `0xf3fbbaaba50095f49ceb3c52559a41f1bde685f7`; base `0xfe8671c82036b1afef2fd423d1aadef5dc735a43`; base `0xffa859a3b4cc279eefadb9b96eaae4b34d6c4fce` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20dd6b66e0453b5f3c7cb2fd008370cac24041a7` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 46 deployments: base `0x01b21f0351638b309678c289fe112787882cc42e`; base `0x0753dabe522a1bb9ea18005a015e3da5a833aac3`; base `0x0ae3c2c7fb789bd05a450cd3075d11f6c2ca4f77`; base `0x16f72c15165f7c9d74c12fdf188e399d4d3724e4`; base `0x174e3cb44b5ed0b85a874b7207a5f3487a2c3472`; base `0x17891fe60a577c5e1e4a4ddd78e642428a56039f`; base `0x1ccd0d49e283789a73e882b0ed4b5b1163675c3c`; base `0x229890d5d246dfa4b5d223d938158cce4c961292`; base `0x275db63edfc4414a2ce04d69403575652ca8c053`; base `0x282741d803842bab33ce9c18e47fcf3bf0411fc2`; base `0x2d3fc7f8b03718157359266ac06af6373afee2f1`; base `0x327e13f54c7871a2416006b33b4822eaad357916`; base `0x36b3ea37c05f961f736bcacae594deb053bc95cf`; base `0x398d2164a3f61353b4619814a31cc74a7741612e`; base `0x3d4d676fea08738a1f1c090cccff16aeb8cc8a9c`; base `0x452750efb32ad2a5a226e988f6f7070ebd59c1f5`; base `0x4cdca702b014bcd5989953fc2d6337b54ef409ea`; base `0x52b5b4f3cc50e38f736f23897f192430e131ccb8`; base `0x565f70396ff82c23d25dd3e57a9a66367dccdf3b`; base `0x575f920e3ef294ea80efb1a4c815ef4b8a67878f`; base `0x5f2ce9e04f6016c9d66f16d386e4e32a0141d411`; base `0x672dbdc3af7ee37436fe101531d33266d85f33c9`; base `0x69a2f5b53df23b48a9a86758105d4613324aa9bc`; base `0x6fbe67969942cc0654f8ee4aa0408d0a91cc4d98`; base `0x700c6715734111a6d1cf414f46d85627b298b5dd`; base `0x725f05c01f5129d04421f1610b93587c1c1010a4`; base `0x7acda49e8b3ec84b80ed9fdd070b0a3a9a5b50e9`; base `0x862642baa2fee1a247bad12913d1667c9e356f20`; base `0x87e77c47388b8fa3a9412014083fd323d93bf6e1`; base `0x932d6d5c6647e6495ed3473ff0f4e31a6056d837`; base `0x96fc2dd483edd2719b9925a0503e080b4689a1d9`; base `0x98f3dd7e6e3eac9606e6e2bca142a4a5332625ce`; base `0x9ae73644ef42c52cfc19184f041fd323fcb512b7`; base `0x9d55227cd0ade01589608f68abcc699f5c598326`; base `0xa8fa8ae51db9661e7d1c21141d967d07110036cb`; base `0xaedbe55633f74a291f0a43daa0fd719615b78363`; base `0xb40659aacb709d1d54c80fc0d38b15705358ce0b`; base `0xb719616e732581b570232dfb13ca49d27667af9f`; base `0xc4a8b1f1f44b2845acc6d952f818f4b168dd62a4`; base `0xccb2222b459aa96543185b1e958e8daff7ef839a`; base `0xcff74ce766b2886479b7fdb15018bb0f21347985`; base `0xd0b13be4c53a6262b47c5ddd36f0257aa714f562`; base `0xdd2f2f9d9fc3aef672979ac5d3b5f0fd2e56b75b`; base `0xde480ad68a54001beb0274f0e2fbab04e002f2d7`; base `0xf97127e77252284ec9d4bc13c247c9d1a99f72b0`; base `0xfb35d36f2775938baa42d3a2e2f3c3c64826be78` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: base `0x1eba1d6941088c8fce2cbcac80754c77871ad093`; base `0x3e3a6bd129a63564fe7abde85fa67c3950569060`; base `0x63af8341b62e683b87bb540896bf283d96b4d385`; base `0x676c4c6c31d97a5581d3204c04a8125b350e2f9d`; base `0x868a501e68f3d1e89cfc0d22f6b22e8dabce5f04`; base `0x88a98431c25329aa422b21d147c1518b34dd36f4`; base `0x975043adbb80fc32276cbf9bbcfd4a601a12462d`; base `0xa669e5272e60f78299f4824495ce01a3923f4380`; base `0xaa98ae504658766dfe11f31c5d95a0bdcabde0b1`; base `0xd7818272b9e248357d13057aab0b417af31e817d`; base `0xe3971ed6f1a5903321479ef3148b5950c0612075`; base `0xf397bf97280b488ca19ee3093e81c0a77f02e9a5`; base `0xff8c37ab9d23582784c17bbf476316f6fd99eaba` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 46 deployments: base `0x03ee839151e48cee69f5e4e8d28b35ce2eae0446`; base `0x0a44db4366385483cbcc9460fa55a75345553286`; base `0x10ab904e9f423c748577b9cf86dbb9f9814f581e`; base `0x12aaadfed6627174702f20cea9eac6c118eea829`; base `0x15f54fdd37ccc8e5a0b64633c95ef8209fd86401`; base `0x18095fbd53184a50c2bb3929a6c62ca328732062`; base `0x1861edddecc78b7d0c4bf5c6f52e9ea327e1b12b`; base `0x25f8fc7a0917ea9bbf72205b18f4f285d2bf1504`; base `0x260ac27e82166e57e887a497bb22f829bc90da7e`; base `0x300977dba924af14e166b31f4926892b1f310661`; base `0x335581943ef47030e52e4fe921d4b72d15a20ab3`; base `0x391b9b016c3bba61f02e7ddd345130415908b9c7`; base `0x45d524b6fe99c005c52c65c578dc0e02d9751083`; base `0x48a51f5d38be630ddd6417ea2d9052b8efc91a18`; base `0x5204a4c69e0551ffd6376c3558eff24f7ecd1af1`; base `0x53ab03801579793b31edd3afc16fc9a25eddfdab`; base `0x61c3f6d72c80a3d1790b213c4cb58c3d4aafccdf`; base `0x62fae5161e830d75738f38de535ac30233233cca`; base `0x639dc04368006544eba7cbc959f3e4361bfeab0d`; base `0x6d1eef3dfb4e8b6df481a52c8657246942ae1da9`; base `0x73a600f80061627dcc68abc4f33063eb51aa6e96`; base `0x74d574d11977fc8d40f8590c419504cbe178adb7`; base `0x75f29f058b31106f99cafdc17c9b26adfcc7b5d7`; base `0x7d38c6363d5e4dfd500a691bc34878b383f58d93`; base `0x7e2b07909827e458ee58b54765b0d1dd674dfe10`; base `0x8345f2ff67e5a65e85dc955de1414832608e00ad`; base `0x8531e63ae9279a1f0d09eba566cd1b092b95f3d5`; base `0x9001d632834faf4c6ce717c5ccad7e0c4b0803c0`; base `0x90e04b0871ba9781dcd869251b7a6a101d08f13d`; base `0x941f0e2e0556acf60fe0f09972f599d9f8916f01`; base `0x98b7a92f4c92b495f0652862eded7b0af1c8dd9a`; base `0x9c095e52145123afc81641dc5760179ec8497653`; base `0x9c32dfe3237d280dc703ee8d42aae379b7bdea73`; base `0xa24d3bc3a59798a57af58f69c89dc1c8afd78f18`; base `0xaa2805a3b6fc019b2f00e00f09b42e7273cd18e9`; base `0xbd3b19d345124166d64f9145b5dec4f2a0d4a404`; base `0xc18ef0e347cab790debb3bb746511983039f72b6`; base `0xca04169671a81e4fb8768cfad46c347ae65371f1`; base `0xd3680ae2d6b8373c01114d20e2109c3dc657913e`; base `0xd4736362efd058b0d48359bad2034e945a5a907c`; base `0xd8fc838d5a50f9b56a1c01bb4b78c9945eec2926`; base `0xe4e567386e8dc83e81763466b1d0ec4e1b97a4d7`; base `0xec0cfe335a4d53dba70cb650ab56eec32788f0bb`; base `0xeff089f24baed3f84918b6ddb265620b97247d9d`; base `0xf50c0d2a8b6db60f1d93e60f03d0413d56153e4f`; base `0xfc30bfe46b11d4e25c6f7492fd064a70fbf18848` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 50 deployments: base `0x048f2f9961a93bb87cd5b35a01088343aa85c332`; base `0x064f0960ab66f44a5e6c7d2335b19de4bb75aa0d`; base `0x11897f348736c4a85908db38721014038b8423ef`; base `0x1c179c2c67953478966a6b460ab4873585b2f341`; base `0x1e5ca70d1e7a1b26061125738a880bbea42feb21`; base `0x223953db4e0a4c33bac1b17b0df1c22919984c60`; base `0x2c855798e88e6079e838fe9ff381a961cd0d9a12`; base `0x31389d2162b5829ee73ecf5f00299d95534eac52`; base `0x362e6be957c18e268ad91046ca6b47eb09ad98c1`; base `0x3db8bea142e41ca3633890d0e5640f99a895d6a5`; base `0x4be6e0f97ea849ff80773af7a317356e6c646fd7`; base `0x4db62b3121149dd7319f5b9e788f1583d2dfeed3`; base `0x557540566f7120b4671c1b0e89aed1e7b06b6c1c`; base `0x56b30a0dcd8dc87ec08b80fa09502bab801fa78e`; base `0x588990d1a7a54d23aa1c2586cb9d6f053814a285`; base `0x5d519191f0bc6ac6d8497b41113551d79aa65c9c`; base `0x5de068a87f081ea01932769807ca569265e4f622`; base `0x626accbddd73532df1caedb5628fdc40c5f429ba`; base `0x62e8d138c561a7fce23538c464e9336a08abe3f9`; base `0x757dad0b4017fca8e3399b4b3b23e0a6587723d1`; base `0x75d1a886ecc7404321851f6a5b1f936269f044d6`; base `0x7898d0b2edcf7a79969e2868a708109eb4db287e`; base `0x88ced349c02630b073d9879d30f79d6ed56b9268`; base `0x9292f98469f964c50f91aba09a12f91328ea639a`; base `0x98eecf2ee1b4f0c6efed66be6a85c122981d2790`; base `0x9a59832b85217c20b17a990a45bd5d0f3de36266`; base `0x9d0ffa76c7f82c34be313b5bfc6d42a72da8ca69`; base `0xac58a3a17d61b5d8233d73300a694f5d7a20df4b`; base `0xadfe8e513b594c8429904de68c8c79ecd8224c46`; base `0xb1dddde9c1e88df7751f8f2cf18569b13c8af670`; base `0xbc8e6602aea1fe65dc5656b77360ddabbb52f894`; base `0xbd15d0db16369083fb4ad81be0dc50d6b95c5977`; base `0xbd852e81d7425c00da09b2181bec99703b1a27db`; base `0xbe5a9e336d9614024b4fa10d8112671fc9a42d96`; base `0xbe6b55a0d720c4106bfca7bea3908a77ce3c31a2`; base `0xc06dc9fa031f7eaccb08285aaa632730dd700ce5`; base `0xccc32e2794ead73f0a0a514ac1c78d048968ab81`; base `0xcdd0e963e0708a4e936202396983e458cfa4a363`; base `0xd3bde678bb706cf727a512515c254bcf021dd203`; base `0xd44371bfde87f2db3ea6df242091351a06c2e181`; base `0xd531e3424ced77fe86c78f046508125ca6786d26`; base `0xd952feacdd5919cc5e9454b53bf45d4e73dd6457`; base `0xdcfb24aebcb9edfb6746a045ddcae402381f984b`; base `0xdd4fb402d41beb0eeef6cfb1bf445f50bdc8c981`; base `0xdea286dc0e01cb4755650a6cf8d1076b454ea1cb`; base `0xe5fd5a0ec3657ad58e875518e73f6264e00eb754`; base `0xe96563b8a6b4ea245e7fcefaba813104fc889c6c`; base `0xea20366b66c1fd262eb600cb4c721c39ac5d2c68`; base `0xeb50fc6f57aac6bf060a2dfc6479fed592e6e184`; base `0xf2bf69d4a687d2c38de865eabd611648daccad93` | ⚠️ Unaudited |
| GovernanceBonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a134098bdbeb05da9eac35439c5624547ed26ee` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xdc4855ac349097be4c840d9325b5c6c6837f266d`; base `0xdea04d42e30ad4f82c74e7e9a3f092fd2169fdb8` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x56b82775d7f442c4ac1d76e6ed570bff10ae8dc7`; base `0xc64f6e56a19678190b8263f05beeed9fc5cbc01f` | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6426fd15a8531bf53d13d74e697e0c0d4c873a98` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1ba15c57c8b74cd32443d7583e7f6d7c638acf46`; base `0x6337a58d4bd7ba691b66341779e8f87d4679923a`; base `0xb1b31de6788a5092e32624af5479b30c2212ee78`; base `0xc792246cf4f41100ca3c67cbf3888d5cf8fed50b` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a5f2d0c090ddb7ee437051da5e6f03b6bae1a77`; base `0xb0f1e5ba45e425c466b6b9dbc93fa22f9716d4d7` | ⚠️ Unaudited |
| RizeToken | token | project_anchor | own_supporting | 0 | base | unit-393832 | `0x9818b6c09f5ecc843060927e8587c427c7c93583` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x41ec51afa59b762d1c7698154d7f4d91186f93c7`; base `0x91cb19e7c4ba9b08cf544cdc9143042150b007c3` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x673aa85efd75080031d44fca061575d1da427a28`; base `0x881e3a65b4d4a04dd529061dd0071cf975f58bcd`; base `0xa631240d8d803f3acf55c58b89f4deed629b29a7`; base `0xcd06f191359cfa6db55f7d38134c9f89a2d5ba56` | ⚠️ Unaudited |
| TokenAdminRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f6c373d09c07425baae72317863d7f6bb731e37` | ⚠️ Unaudited |
| UnallocatedVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x0151988326ded907853c7b75641d6a7897959510`; base `0x0604eb364fb4afd20169fae0402678b38a484c5c`; base `0x1c07bf8dcf081a802e97fbc1b2c3a4317d69c669`; base `0x6d596a1d2c317f39029ee7ccea3fe1d6460811eb`; base `0xaafe9d7422e7f0ea1788ccafd0a55f6cf29fb70c`; base `0xad12b1421d14130633700af043445115d16f5f2d` | ⚠️ Unaudited |
| UnnamedContract | proxy | project_anchor | own_supporting | 0 | base | unit-393831 | `0x5f03d0a97a972597c0a4a6dc4159aec0a0989335` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x13f967f4431a44b604990ad4ad27bc0616acb6d5`; base `0x55a5786ca51c31623f3efb8bbfcc8df9a4c61ba9` | ⚠️ Unaudited |
| VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x036460e6092ef3f1f73e4fa2d6f32de19e083937`; base `0x2cfb5f389d1c3a1bcac18d250ee1ca7c9ae5ca1c`; base `0x3100e9c606bc8b742d7aeff4de5d0108274daf64`; base `0x431727a6a79bd39cc33aa2ab64041be50a63507b`; base `0x44ef2422f0452148c64b7a150df17538822e6728`; base `0x79bbcbab3a0a0fc213b0af89d7ea26581451f6c8`; base `0x9525df984b7062c7c0fb103bc745467396241e7b`; base `0x9ec184a32a1246e5259a73edfc83e4da332ccd23` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x054ba10739033d4a552113f5c0dce1dff612c53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x891e30eaa435a4efc9e1405fac14009bc39b829c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa03bbdac472f65d30e3e014e7c303f0248fc00d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa824db559057ffc05f64c73e044ce64dde73cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc94cc207e014ed50e7a3061c63d2aa2471ca9c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0a6141b1005e91f957ae71db67b90752b0155b9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 306
- Live contracts: 0
- Unknown liveness contracts: 306
- Source-verified contracts: 300
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=144, contamination review=6, source verified unclassified=150, unverified unclassified=6

Showing first 200 of 306 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | BaseRizeMintBurnPool<br>`0xd3736143ab05224c1edce1b632a8dc1404ac8f43` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1829a3f35f4ef621f410e2c487499a8e933da885` |
| candidate review | CommitStore<br>`0x0ae3c2c7fb789bd05a450cd3075d11f6c2ca4f77` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x16f72c15165f7c9d74c12fdf188e399d4d3724e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x174e3cb44b5ed0b85a874b7207a5f3487a2c3472` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x17891fe60a577c5e1e4a4ddd78e642428a56039f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x1ccd0d49e283789a73e882b0ed4b5b1163675c3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x229890d5d246dfa4b5d223d938158cce4c961292` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x275db63edfc4414a2ce04d69403575652ca8c053` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x282741d803842bab33ce9c18e47fcf3bf0411fc2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x2d3fc7f8b03718157359266ac06af6373afee2f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x327e13f54c7871a2416006b33b4822eaad357916` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x36b3ea37c05f961f736bcacae594deb053bc95cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x398d2164a3f61353b4619814a31cc74a7741612e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x3d4d676fea08738a1f1c090cccff16aeb8cc8a9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x452750efb32ad2a5a226e988f6f7070ebd59c1f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x4cdca702b014bcd5989953fc2d6337b54ef409ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x52b5b4f3cc50e38f736f23897f192430e131ccb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x565f70396ff82c23d25dd3e57a9a66367dccdf3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x575f920e3ef294ea80efb1a4c815ef4b8a67878f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x5f2ce9e04f6016c9d66f16d386e4e32a0141d411` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x672dbdc3af7ee37436fe101531d33266d85f33c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x69a2f5b53df23b48a9a86758105d4613324aa9bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x6fbe67969942cc0654f8ee4aa0408d0a91cc4d98` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x700c6715734111a6d1cf414f46d85627b298b5dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x725f05c01f5129d04421f1610b93587c1c1010a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x7acda49e8b3ec84b80ed9fdd070b0a3a9a5b50e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x862642baa2fee1a247bad12913d1667c9e356f20` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x87e77c47388b8fa3a9412014083fd323d93bf6e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x932d6d5c6647e6495ed3473ff0f4e31a6056d837` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x96fc2dd483edd2719b9925a0503e080b4689a1d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x98f3dd7e6e3eac9606e6e2bca142a4a5332625ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x9ae73644ef42c52cfc19184f041fd323fcb512b7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0x9d55227cd0ade01589608f68abcc699f5c598326` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xa8fa8ae51db9661e7d1c21141d967d07110036cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xaedbe55633f74a291f0a43daa0fd719615b78363` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xb40659aacb709d1d54c80fc0d38b15705358ce0b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xb719616e732581b570232dfb13ca49d27667af9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xc4a8b1f1f44b2845acc6d952f818f4b168dd62a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xccb2222b459aa96543185b1e958e8daff7ef839a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xcff74ce766b2886479b7fdb15018bb0f21347985` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xd0b13be4c53a6262b47c5ddd36f0257aa714f562` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xdd2f2f9d9fc3aef672979ac5d3b5f0fd2e56b75b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xde480ad68a54001beb0274f0e2fbab04e002f2d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xf97127e77252284ec9d4bc13c247c9d1a99f72b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | CommitStore<br>`0xfb35d36f2775938baa42d3a2e2f3c3c64826be78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x03ee839151e48cee69f5e4e8d28b35ce2eae0446` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x0a44db4366385483cbcc9460fa55a75345553286` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x10ab904e9f423c748577b9cf86dbb9f9814f581e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x12aaadfed6627174702f20cea9eac6c118eea829` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x15f54fdd37ccc8e5a0b64633c95ef8209fd86401` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x18095fbd53184a50c2bb3929a6c62ca328732062` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x1861edddecc78b7d0c4bf5c6f52e9ea327e1b12b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x25f8fc7a0917ea9bbf72205b18f4f285d2bf1504` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x260ac27e82166e57e887a497bb22f829bc90da7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x300977dba924af14e166b31f4926892b1f310661` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x335581943ef47030e52e4fe921d4b72d15a20ab3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x391b9b016c3bba61f02e7ddd345130415908b9c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x45d524b6fe99c005c52c65c578dc0e02d9751083` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x48a51f5d38be630ddd6417ea2d9052b8efc91a18` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x5204a4c69e0551ffd6376c3558eff24f7ecd1af1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x53ab03801579793b31edd3afc16fc9a25eddfdab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x61c3f6d72c80a3d1790b213c4cb58c3d4aafccdf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x62fae5161e830d75738f38de535ac30233233cca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x639dc04368006544eba7cbc959f3e4361bfeab0d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x6d1eef3dfb4e8b6df481a52c8657246942ae1da9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x73a600f80061627dcc68abc4f33063eb51aa6e96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x74d574d11977fc8d40f8590c419504cbe178adb7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x75f29f058b31106f99cafdc17c9b26adfcc7b5d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x7d38c6363d5e4dfd500a691bc34878b383f58d93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x7e2b07909827e458ee58b54765b0d1dd674dfe10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x8345f2ff67e5a65e85dc955de1414832608e00ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x8531e63ae9279a1f0d09eba566cd1b092b95f3d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x9001d632834faf4c6ce717c5ccad7e0c4b0803c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x90e04b0871ba9781dcd869251b7a6a101d08f13d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x941f0e2e0556acf60fe0f09972f599d9f8916f01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x98b7a92f4c92b495f0652862eded7b0af1c8dd9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x9c095e52145123afc81641dc5760179ec8497653` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0x9c32dfe3237d280dc703ee8d42aae379b7bdea73` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xa24d3bc3a59798a57af58f69c89dc1c8afd78f18` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xaa2805a3b6fc019b2f00e00f09b42e7273cd18e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xbd3b19d345124166d64f9145b5dec4f2a0d4a404` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xc18ef0e347cab790debb3bb746511983039f72b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xca04169671a81e4fb8768cfad46c347ae65371f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xd3680ae2d6b8373c01114d20e2109c3dc657913e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xd4736362efd058b0d48359bad2034e945a5a907c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xd8fc838d5a50f9b56a1c01bb4b78c9945eec2926` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xe4e567386e8dc83e81763466b1d0ec4e1b97a4d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xec0cfe335a4d53dba70cb650ab56eec32788f0bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xeff089f24baed3f84918b6ddb265620b97247d9d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xf50c0d2a8b6db60f1d93e60f03d0413d56153e4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOffRamp<br>`0xfc30bfe46b11d4e25c6f7492fd064a70fbf18848` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x048f2f9961a93bb87cd5b35a01088343aa85c332` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x064f0960ab66f44a5e6c7d2335b19de4bb75aa0d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x11897f348736c4a85908db38721014038b8423ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x1c179c2c67953478966a6b460ab4873585b2f341` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x1e5ca70d1e7a1b26061125738a880bbea42feb21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x223953db4e0a4c33bac1b17b0df1c22919984c60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x2c855798e88e6079e838fe9ff381a961cd0d9a12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x31389d2162b5829ee73ecf5f00299d95534eac52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x362e6be957c18e268ad91046ca6b47eb09ad98c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x3db8bea142e41ca3633890d0e5640f99a895d6a5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x4be6e0f97ea849ff80773af7a317356e6c646fd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x4db62b3121149dd7319f5b9e788f1583d2dfeed3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x557540566f7120b4671c1b0e89aed1e7b06b6c1c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x56b30a0dcd8dc87ec08b80fa09502bab801fa78e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x588990d1a7a54d23aa1c2586cb9d6f053814a285` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x5d519191f0bc6ac6d8497b41113551d79aa65c9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x5de068a87f081ea01932769807ca569265e4f622` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x626accbddd73532df1caedb5628fdc40c5f429ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x62e8d138c561a7fce23538c464e9336a08abe3f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x757dad0b4017fca8e3399b4b3b23e0a6587723d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x75d1a886ecc7404321851f6a5b1f936269f044d6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x7898d0b2edcf7a79969e2868a708109eb4db287e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x88ced349c02630b073d9879d30f79d6ed56b9268` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x9292f98469f964c50f91aba09a12f91328ea639a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x98eecf2ee1b4f0c6efed66be6a85c122981d2790` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x9a59832b85217c20b17a990a45bd5d0f3de36266` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0x9d0ffa76c7f82c34be313b5bfc6d42a72da8ca69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xac58a3a17d61b5d8233d73300a694f5d7a20df4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xadfe8e513b594c8429904de68c8c79ecd8224c46` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xb1dddde9c1e88df7751f8f2cf18569b13c8af670` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xbc8e6602aea1fe65dc5656b77360ddabbb52f894` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xbd15d0db16369083fb4ad81be0dc50d6b95c5977` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xbd852e81d7425c00da09b2181bec99703b1a27db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xbe5a9e336d9614024b4fa10d8112671fc9a42d96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xbe6b55a0d720c4106bfca7bea3908a77ce3c31a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xc06dc9fa031f7eaccb08285aaa632730dd700ce5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xccc32e2794ead73f0a0a514ac1c78d048968ab81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xcdd0e963e0708a4e936202396983e458cfa4a363` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xd3bde678bb706cf727a512515c254bcf021dd203` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xd44371bfde87f2db3ea6df242091351a06c2e181` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xd531e3424ced77fe86c78f046508125ca6786d26` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xd952feacdd5919cc5e9454b53bf45d4e73dd6457` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xdcfb24aebcb9edfb6746a045ddcae402381f984b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xdd4fb402d41beb0eeef6cfb1bf445f50bdc8c981` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xdea286dc0e01cb4755650a6cf8d1076b454ea1cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xe5fd5a0ec3657ad58e875518e73f6264e00eb754` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xe96563b8a6b4ea245e7fcefaba813104fc889c6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xea20366b66c1fd262eb600cb4c721c39ac5d2c68` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xeb50fc6f57aac6bf060a2dfc6479fed592e6e184` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | EVM2EVMOnRamp<br>`0xf2bf69d4a687d2c38de865eabd611648daccad93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | RMN<br>`0x41ec51afa59b762d1c7698154d7f4d91186f93c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | RMN<br>`0x91cb19e7c4ba9b08cf544cdc9143042150b007c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| candidate review | USDCTokenPool<br>`0x55a5786ca51c31623f3efb8bbfcc8df9a4c61ba9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| contamination review | ARM<br>`0x38660c8cc222c0192b635c2ac09687b4f25cce5f` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| contamination review | ARMProxy<br>`0xc842c69d54f83170c42c4d556b4f6b2ca53dd3e8` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| contamination review | CommitStore<br>`0x01b21f0351638b309678c289fe112787882cc42e` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| contamination review | CommitStore<br>`0x0753dabe522a1bb9ea18005a015e3da5a833aac3` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| contamination review | EACAggregatorProxy<br>`0x1eba1d6941088c8fce2cbcac80754c77871ad093` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| contamination review | RegistryModuleOwnerCustom<br>`0x1a5f2d0c090ddb7ee437051da5e6f03b6bae1a77` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x038fa58bd4da1c938d2783941e657164d497c4b6` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x16f542bc40723dfe8976a334564ef0c3cfd602fd` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x23e47a253776f1fce32e5f2d5d342ca5d6edd226` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x330ec3210511cc8f5a87a737a08905092e033af3` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x484cc23fee336291e3c8803cf27e16b9bee68744` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x4c83489a62d52ee68a800dd09410f790a14a5d95` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x5d427e797c665ad7413a4e0ff4ceb3e31959c4c5` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x6f22c6925b27bcf9713fae2ab6f4397549d684b8` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0x735326bcc0479e3f23ed65dc83310d63eba6250d` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xaa1399a25ab0f9a5464f44963ba77626937d1523` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xad25818438b2908caa1815d2291d6fb3c41b6f3e` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xea990bccb5b4da5023b6dc88480297405fd222c3` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | AccessControlledOffchainAggregator<br>`0xf3764b1fc0ab831f75d3edd7435abfe4af675c9a` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x03f255a5a8040efb81f7b7d77cddb8d2c9cafc38` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x0786b7e2093cdef04fca83f4483a3dad185ee86a` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x0a995a72d8346683c97514990f802f4778b7ac72` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x0db8a980ad6a011c0cda1e3a61417524cb4152a0` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x0f0f719a2417c01d9aff5de6fad2813ee4dbd917` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x1568a4131760231712e59778dab9efe67911f4ff` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x162a6d638c6d0a97ccd89f1d4e312191d27b8e00` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x194173317f55e0e9c33b41464e805c3ede070c75` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x19ef16366ec4d8c8f022a3708735289538ef6d16` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x1c9ee196c33db91cf14c4a5ba90678b3f0f3c107` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x1e89f91ee35d7d21c8e8238c79146daf7ab8bb94` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x227400d5552f386a6df24758c7491fbe10a5a9da` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x25fad433d68d83cb997985f7c6128ab5a1bdcd93` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x34bc9beb51d98b7e40862b3b4eda97ad68d0475e` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x3640a6b166e2e4a7bd9e2d4b15ad2ed9a47bf8ed` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x3b01cb86d071b20915883525c0e039659d4ee6b8` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x419cbf914c3fd8d1b315e9a2fcacb47af2039228` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x5e3eb998e2583d960a4bd464e3f22fbba1ca8f31` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x5f8b0b4f5fc720ad10e0fbe5eb0aab3062347989` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x6ba2116b540150f2da19837c5a419838e38048e9` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x7c7b15c7e71986a63de5486b4c4386264782bcba` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x88c053e833370b46f71204e3e9d4258eabab9def` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x8cce61e1756dd01d3b9b27eef8c68650d8f69e69` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x9118c2bf2b98a4463ee6c0f28ef343c4376f7372` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x919d984c78c7dff32095bb3a36cdbfbe90032f2c` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0x926f1b7216072b00bd4ae70101f162ad23acda96` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xa2d1bc00495c8263d4c04f742a470e1415d454f1` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xa84a33295c869e9ad2131ea66e9674a61805ac4c` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xa8619f141572f6f1b9271beee3edadd1b71fe0bd` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xac9b7fac15312fecb73e889118c009b2d2cd5a71` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xb5e3477feb00f79a2af25c001dd4882d9fcd4545` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xbb9c6a900068a3eb6b039fb009719a6725178258` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xbd0800f29eff2edb39dd3e8c95fb6adec2ef77fa` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xc253cb15b44a032a68328062a39059a3b6dd06b6` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xc3c6c182d85676f5d81d6865c2cd3b62bc5d1cca` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xd0c34cb5438b624e1af94544e9779f58b8a8bd4e` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |
| source verified unclassified | BurnMintTokenPool<br>`0xd216622e392cc9e69c50466574926786d06aad64` | non_address_book | unknown | unknown | verified | n/a | `0x6aa06e0cb77fab16e6963196a3ebd81c90e4a98c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hashlock.com/audits/t-rize](https://hashlock.com/audits/t-rize) | unknown | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21130] hashlock.com/audits/t-rize — no match: The provided text is a marketing page for Hashlock's audit services, not an actual audit report. It mentions 'T-Rize Rizenet Governance Token Audit Updates' with a last audit date of March 2025, but no specific contract names or scope details are given.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x136a429bee94a5a02240ff74023b46347cae87c9` | AccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9818b6c09f5ecc843060927e8587c427c7c93583` | RizeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

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

- [21130] hashlock.com/audits/t-rize

Fork inheritance lineage and inherited audits are included when available.
