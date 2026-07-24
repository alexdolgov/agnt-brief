# Agentic Audit Brief: Blast L2

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 38.8% over 90 days

## Project Overview

- Project: Blast L2 (`blast-l2`)
- Website: [https://blast.io/](https://blast.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast, ethereum, sepolia
- Contract surface: 339 unique implementations (440 raw deployments)
- Coverage basis: 9/18 confirmed own live verified implementations (50.0%); conservative 45.0% with 2 needs-review implementation(s)
- DeFi Llama TVL: $47,965,904.00
- On-chain TVL (included contracts): $569.61
- TVL by chain: Blast $569.61

## Project Description

This brief describes the observed EVM deployment and audit surface for Blast L2. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across blast, ethereum, sepolia. Structural roles: 12 supporting, 5 core, 3 unclassified. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: supporting (12), core (5), unclassified (3)
- Contract kinds: contract (20)
- Detected standards: erc1967proxy (8), erc20 (2), erc165 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (13), solmate (13)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4316a00d31da1313617dbb04fd92f9ff8d1af7db`, chain 1)
- UnnamedContract (`0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2`, chain 81457)
- UnnamedContract (`0x4200000000000000000000000000000000000014`, chain 81457)
- UnnamedContract (`0x4200000000000000000000000000000000000017`, chain 81457)
- UnnamedContract (`0x4200000000000000000000000000000000000022`, chain 81457)
- UnnamedContract (`0x4200000000000000000000000000000000000024`, chain 81457)
- UnnamedContract (`0x4300000000000000000000000000000000000002`, chain 81457)
- UnnamedContract (`0x4300000000000000000000000000000000000003`, chain 81457)
- UnnamedContract (`0x4300000000000000000000000000000000000004`, chain 81457)
- UnnamedContract (`0x4e59b44847b379578588920ca78fbf26c0b4956c`, chain 81457)
- UnnamedContract (`0x7a0d94f55792c434d74a40883c6ed8545e406d12`, chain 81457)
- UnnamedContract (`0x96f6b70f8786646e0ff55813621ef4c03823139c`, chain 81457)
- UnnamedContract (`0x9d020b1697035d9d54f115194c9e04a1e4eb9af7`, chain 81457)
- UnnamedContract (`0xc0d3c0d3c0d3c0d3c0d3c0d3c0d3c0d3c3d30002`, chain 81457)
- UnnamedContract (`0xcfa3a7637547094ff06246817a35b8333c315196`, chain 81457)
- CreateX (`0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed`, chain 81457)
- DSRYieldProvider (`0x0733f618118bf420b6b604c969498ecf143681a8`, chain 1)
- GovernanceToken (`0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad`, chain 81457)
- ImmutableCreate2Factory (`0x0000000000ffe8b47b3e2130213b802212439497`, chain 81457)
- L1ChugSplashProxy (`0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115`, chain 1)
- L1ChugSplashProxy (`0x697402166fbf2f22e970df8a6486ef171dbfc524`, chain 1)
- L1ChugSplashProxy (`0x98078db053902644191f93988341e31289e1c8fe`, chain 1)
- L1ChugSplashProxy (`0xa230285d5683c74935ad14c446e137c8c8828438`, chain 1)
- Multicall3 (`0xca11bde05977b3631167028862be2a173976ca11`, chain 81457)
- OptimismMintableERC20 (`0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692`, chain 81457)
- Proxy (`0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb`, chain 1)
- Proxy (`0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76`, chain 1)
- Proxy (`0x4200000000000000000000000000000000000007`, chain 81457)
- Proxy (`0x4200000000000000000000000000000000000010`, chain 81457)
- Proxy (`0x4200000000000000000000000000000000000012`, chain 81457)
- Proxy (`0x4200000000000000000000000000000000000016`, chain 81457)
- Proxy (`0x4200000000000000000000000000000000000023`, chain 81457)
- Proxy (`0x4300000000000000000000000000000000000005`, chain 81457)
- ResolvedDelegateProxy (`0x5d4472f31bd9385709ec61305afc749f0fa8e9d0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/74 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/18 (50.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 33 own, 9 exact-address-book context/dependencies excluded, 2 exact-address-book entries needing review
- Outside the address book: 295 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 35 of 339 unique; 304 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/84
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 255
- Unique implementations: 339
- Raw deployments: 440
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $569.61
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 50.0% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $569.61 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 9 | 10.7% | 2022-09 |
| Trail of Bits | Tier 1 | 3 | 3.6% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230691 | `0x5d4472f31bd9385709ec61305afc749f0fa8e9d0` | ✅ Audited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230689 | `0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975` | ✅ Audited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230693 | `0x697402166fbf2f22e970df8a6486ef171dbfc524` | ✅ Audited |
| L2CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | blast | unit-230696 | `0x4200000000000000000000000000000000000007` | ✅ Audited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-230688 | `0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76` | ✅ Audited |
| L2StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | blast | unit-230697 | `0x4200000000000000000000000000000000000010` | ✅ Audited |
| L2ToL1MessagePasser | unknown | project_anchor | own_supporting | 1 | blast | unit-230699 | `0x4200000000000000000000000000000000000016` | ✅ Audited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | blast | unit-230687 | `0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692` | ✅ Audited |
| OptimismPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230692 | `0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GovernanceToken | token | project_anchor | own_supporting | 0 | blast | unit-230679 | `0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe064b565cf2a312a3e66fe4118890583727380c0` | ⚠️ Unaudited |
| AuthGemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x636242be41a84d49ee3d6401ea09dc645f522b35`; ethereum `0xad37fd42185ba63009177058208dd1be4b136e6b` | ⚠️ Unaudited |
| CatFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f07f426a0c1b400c17a4cb636c8ead7d1ed752f` | ⚠️ Unaudited |
| CodeHash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f211c70dc1c4bce13dc08db3c0669871265221` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2` | ⚠️ Unaudited |
| CreateX | unknown | project_anchor | needs_review (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed`; blast `0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed` | ⚠️ Unaudited |
| DaiJoinFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x64a84e558192dd025f3a96775fee8fb530f27177`; ethereum `0xcf930fb04a9514a3468e041c50cc4721f2d29b32` | ⚠️ Unaudited |
| DisableLiquidationSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77223a5a1b31b029dbb8ccaba7304c8217695165` | ⚠️ Unaudited |
| DsrManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373238337bfe1146fb49989fc222523f83081ddb` | ⚠️ Unaudited |
| DSRYieldProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230627 | `0x0733f618118bf420b6b604c969498ecf143681a8` | ⚠️ Unaudited |
| DssDecember27Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c19e029f5a1a115f3b99ad87da24d33e60a0e1` | ⚠️ Unaudited |
| DssDecember6Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf267efdda842539a2caff990259395188a86b813` | ⚠️ Unaudited |
| DssDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x733be463128228146485a7e1bf2ece72e91e51a4`; ethereum `0xbaa65281c2fa2baacb2cb550ba051525a480d3f4` | ⚠️ Unaudited |
| DssDeployPauseProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6bda13d43b7edd6cafe1f70fb98b5d40f61a1370`; ethereum `0x92d31765f06728f9c83993dbc169cb8e23b779b3` | ⚠️ Unaudited |
| DssFebruary7Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5f3abc36da63142275202454c11237f47dd170` | ⚠️ Unaudited |
| DssFlopReplaceSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x30cfdb937e46e946b1038397f9cd6fa231b90863`; ethereum `0x902f009d4de4a7828284b04b364dd43f00e51a02` | ⚠️ Unaudited |
| DssIncreaseDelay24Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a7d50b73acf1d2b4073ca5f94890a3c05c01401`; ethereum `0xdd4aa99077c5e976afc22060eeafbbd1ba34eae9` | ⚠️ Unaudited |
| DssJanuary10Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a87acb1f92c50297239ef9b0ef9387105bd4fc5` | ⚠️ Unaudited |
| DssJanuary24Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf880d43bb9a32dd212c77b82a7336be31ecaee08` | ⚠️ Unaudited |
| DssJanuary31Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48916a2b11fa7a895426eedf9acf2d70523b1677` | ⚠️ Unaudited |
| DssJanuary3Spell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x333c0501182170c5002219380ded6b12c338e272` | ⚠️ Unaudited |
| DssLaunchSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa710c994d03943d3f5346a9139c9a61363224c6d`; ethereum `0xf44113760c4f70afeeb412c63bc713b13e6e202e` | ⚠️ Unaudited |
| DSSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x365fb0e024fb179288e3d65c4aadf6f58c8ae114`; ethereum `0xbb707072ea85b4d0eee181c77996a28c5241e2c9` | ⚠️ Unaudited |
| DssProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x82ecd135dce65fbc6dbdd0e4237e0af93ffd5038`; ethereum `0xee0d5cb66c33d9858670412e3dfa09d9759de5d7` | ⚠️ Unaudited |
| DssProxyActionsDsr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07ae5dfd28adf5e408316c01b43a7af0da0f38b1`; ethereum `0x07ee93aeea0a36fff2a9b95dd22bd6049ee54f26` | ⚠️ Unaudited |
| DssProxyActionsEnd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x069b2fb501b6f16d1f5fe245b16f6993808f1008`; ethereum `0x689e53009e695ec0f2dd15d47aeac9d9ed779a34`; ethereum `0x7aff9fc9fad225e3c88cda06bc56d8aca774bc57` | ⚠️ Unaudited |
| DssSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 49 deployments: ethereum `0x049e4d10c1b7280cfed5b0d990e39f9c54529a32`; ethereum `0x057d35a858d6350d10f714785baf5c07703dbd4c`; ethereum `0x0ac7bd7ae9d4eabe2c50400cd9c1af349deff495`; ethereum `0x0f449ce32456fbd823b7ac5d162826cd34c48784`; ethereum `0x127b47d30d293afe05f3e17e4966ed4109d4bb30`; ethereum `0x1d51ca29e35b6ce30167f634dd21376da1341d9b`; ethereum `0x1f3229185e8f5759dcf85337552afd48795a4d38`; ethereum `0x261086981fc6c57ef4679af6ac253c3755850362`; ethereum `0x261cacc129fefbff9bff0a4d8e962a0a49a72bdc`; ethereum `0x3526a5858aa91c058a7084ae8ab6d323d2baebb8`; ethereum `0x43aac7f1b47ff29d33dec14dcaa7901d1bb8c006`; ethereum `0x4b46e37f032d0802291dd890acd941ac167ed61d`; ethereum `0x4bf6e7291dc01a41ec88a23d4921152e7d1e31d4`; ethereum `0x4ff0258545528b01902d826368246f330eeabd2c`; ethereum `0x529b8b4b62b5f32bd47412988a0a66d72f86ba00`; ethereum `0x569c1d105f08f685e023bb4fc6f69957e2401df8`; ethereum `0x64976c5b5062c56d91dafe661cb85dcf7e349c9d`; ethereum `0x658ec6a5d4d1cfd72d2baad14f8ad96fc2fcdd51`; ethereum `0x6941df79ac5729c36debf73d0ae4f816c3759ac1`; ethereum `0x69ec6020ba47be01557605b53a5d56e6fd96ed8c`; ethereum `0x7852bbeadd2498889ed680eaac849633db7422d9`; ethereum `0x7b540cf92de1b5697f3cc1dda39437027288c929`; ethereum `0x7f6dcc6bce0ee6b057e4f33a9e34e24c63e37599`; ethereum `0x84f411093aed2e88e3d7f62a457cf77b3032ff2b`; ethereum `0x872c49c9e90e4ac7f84452ca52161fddc849246e`; ethereum `0x8afa02a56336202b9a0b1d451f2039d76da4e0be`; ethereum `0x91e556e3cb1e2842a0a3626a768b7e67199f7589`; ethereum `0x9713187b6d7c8d54ac041efdbac13d52c2120fb9`; ethereum `0x9ab3ae47965ab3553075e8f86afc3fdfd705202f`; ethereum `0x9e361d75bdbccd061ce01acc5265646c19778140`; ethereum `0x9ef95251233e0586bf3b17f14d31e2a756454a0d`; ethereum `0xa3fa69aa788b3e51c083347bc8fc4fcf06469dec`; ethereum `0xa8692c55aab501da3931df536ad4325f5af4a75d`; ethereum `0xae6edd381095e5c110a274ffc80871c72949795a`; ethereum `0xc07d37964d1cdec72ddd8cfa380af1dcfa5381b0`; ethereum `0xca3b2e6006c996ee361b6ea6505226a463390b52`; ethereum `0xcd989b68d99ddda02c6a58b1b3985962f4d59e33`; ethereum `0xd0dd71814cc2185c3092a477217c9d64e7f3a38e`; ethereum `0xd17abf984740145db4b3d61559eebe2170a3d6da`; ethereum `0xd74cc5fce54b1797f688e4f6a5681006fc077bd4`; ethereum `0xd77ad957fcf536d13a17f5d1fffa3987f83376cf`; ethereum `0xd7af2871024fad053c0242ba4c69793ae7b94015`; ethereum `0xdb20f2e864bfb7658ae78383d55ad4b488851fe4`; ethereum `0xe8ccac37e45a0cc6ad65999a71c0af7d1fb06209`; ethereum `0xeb19d801221384d20b842d04891e47df09aab911`; ethereum `0xf132619f3aa8fc35b256c089097e91a0c2b3902a`; ethereum `0xf67de12cab72a3f3a2ece4caa99c53eb0ddff75d`; ethereum `0xf8085d74ad616d48c225f3812a610f5cd5f676da`; ethereum `0xfddeef69f5961c73ff80a1356a49a504969ba659` | ⚠️ Unaudited |
| DssSpell20200221 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2af6ef584c8937fbec4a8f50ae5ed1fe6c47bdc6`; ethereum `0xd24fbbb4497ad32308bda735683b55499ddc2cad` | ⚠️ Unaudited |
| DSValue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3ec80729bd472987169485c2076ed0b71e0fa602`; ethereum `0x54003dbf6ae6cba6ddae571ccdc34d834b44ab1e`; ethereum `0x77b68899b99b686f415d074278a9a16b336085a0`; ethereum `0xee13831ca96d191b688a670d47173694ba98f1e5` | ⚠️ Unaudited |
| EnableLiquidationSpell | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36df11cf6855b616a36eadbcf9290f7953d90fd` | ⚠️ Unaudited |
| ETHYieldManager | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230695 | `0x98078db053902644191f93988341e31289e1c8fe` | ⚠️ Unaudited |
| FlapFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f941d0b8344f28e03132d0a09fc10b6b2c6740` | ⚠️ Unaudited |
| FlipFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4acdbe9dd0d00b36ec2050e805012b8fc9974f2b`; ethereum `0x7166ee2ecb2b4d6451d134a9da72b24e8c4087b8`; ethereum `0xbab4fbea257abbfe84f4588d4eedc43656e46fc5`; ethereum `0xf9e4362e2411dd6a64df500967fd258e450953d2` | ⚠️ Unaudited |
| FlipperMom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9bddb99625a711bf9bda237044924e34e8570f75`; ethereum `0xc4be7f74ee3743bded8e0fa218ee5cf06397f472` | ⚠️ Unaudited |
| FlopFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920ff284ce06eef00082acb1e12617188c928f99` | ⚠️ Unaudited |
| Flopper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d95a049d5b0b7d32058cd3f2163015747522e99` | ⚠️ Unaudited |
| Gas | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x4300000000000000000000000000000000000001` | ⚠️ Unaudited |
| GemJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x15d34eab0fd1d1bf72918914fa3284abeed755b7`; ethereum `0x2f0b23f53734252bda2277357e97e1517d6b042a`; ethereum `0x3d0b1912b66114d4096f48a8cee3a56c231772ca`; ethereum `0x475f1a89c1ed844a08e8f6c50a00228b5e59e4a9`; ethereum `0x4bcd9b34560a383ffadedd4887e05bba3009080b`; ethereum `0xa6ea3b9c04b8a38ff5e224e7c3d6937ca44c0ef9`; ethereum `0xc7e8cd72bdee38865b4f5615956ef47ce1a7e5d0`; ethereum `0xfced114adfaea7959b58b2aaa8b94920fbb2427f` | ⚠️ Unaudited |
| GemJoin5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2600004fd1585f7270756ddc88ad9cfa10dd0428`; ethereum `0xa191e578a6736167326d05c119ce0c90849e84b7`; ethereum `0xbf72da2bd84c5170618fbe5914b0eca9638d5eb5` | ⚠️ Unaudited |
| GemJoin6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4454af7c8bb9463203b66c816220d41ed7837f44` | ⚠️ Unaudited |
| GetCdps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36a724bd100c39f0ea4d3a20f7097ee01a8ff573`; ethereum `0xf69796cc997380ea96f9b7320caeef7aeb71e58b` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4f72ee94b8ba3be7f886565d3583a7f636c58b05`; ethereum `0x67ca7ca75b69711cfd48b44ec3f64e469baf608c` | ⚠️ Unaudited |
| GovActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f5f0933158569c026d617337614d00ee6589b6e`; ethereum `0x6e2795467e070dd8b477300899b6d1c90f8ba822` | ⚠️ Unaudited |
| IlkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8b4ce5dcbb01e0e1f0521cd8dcfb31b308e52c24`; ethereum `0xbe4f921cdfef2cf5080f9cf00cc2c14f1f96bd07` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | project_anchor | own_supporting | 0 | ethereum | n/a | 3 deployments: ethereum `0x0000000000ffe8b47b3e2130213b802212439497`; ethereum `0xcfa3a7637547094ff06246817a35b8333c315196`; blast `0x0000000000ffe8b47b3e2130213b802212439497` | ⚠️ Unaudited |
| Insurance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbbe2cd60bd30ef2aacefd74c3199282ee35fbba6` | ⚠️ Unaudited |
| Insurance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcff70d7f37b1ebee89c08e485f08acab5f6ff873` | ⚠️ Unaudited |
| L1BlastBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230690 | `0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115` | ⚠️ Unaudited |
| L2BlastBridge | operational_periphery | project_anchor | own_supporting | 1 | blast | unit-230700 | `0x4300000000000000000000000000000000000005` | ⚠️ Unaudited |
| LaunchBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d` | ⚠️ Unaudited |
| LaunchBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa01def05a37850b2e13c8c839aa268845df14276` | ⚠️ Unaudited |
| MedianBATUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b4633d6e39870f398597f3c1ba8c4a41294966` | ⚠️ Unaudited |
| MedianBTCUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0f30cb149faadc7247e953746be9bbbb6b5751f` | ⚠️ Unaudited |
| MedianETHUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64de91f5a373cd4c28de3600cb34c7c6ce410c85` | ⚠️ Unaudited |
| MedianKNCUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83076a2f42dc1925537165045c9fde9a4b71ad97` | ⚠️ Unaudited |
| MedianZRXUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956ecd6a9a9a0d84e8eb4e6baac09329e202e55e` | ⚠️ Unaudited |
| MegaPoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x6b8158d8e848d15ef0305221bb88569abfc5bc1c`; ethereum `0x9885c81a6afafa98225673c165f04e6df6f96f7b`; ethereum `0xbec282dc7d575f6ec230724a3902b816d9a808b5`; ethereum `0xde9457b0ad731db06e5830d2497bfbe7bfbc6b3a`; ethereum `0xe4a37b878919ed3b3a63a9b0666a2a95b83ad7c2`; ethereum `0xf4771e43b24fa7d7f16c419f1e62a98da00d8be0` | ⚠️ Unaudited |
| MigrationProxyActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x23c800e375222693ed593d6308aec08116d980a1`; ethereum `0x2e1f6062d9fb227069741e40f89186df222fb426`; ethereum `0xe4b22d484958e582098a98229a24e8a43801b674` | ⚠️ Unaudited |
| MintManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f` | ⚠️ Unaudited |
| MkrAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6eeb68b2c7a918f36b78e2db80dcf279236ddfb8`; ethereum `0xc725e52e55929366dfdf86ac4857ae272e8bf13d` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x34f6bb84bcc8dd2fa157afd03491a053eabcf9dc`; ethereum `0x5e227ad1969ea493b43f840cff78d08a6fc17796` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | needs_review (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xca11bde05977b3631167028862be2a173976ca11`; blast `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6b916dcca661d23794e78509723a6f4348564847` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 1 | blast | unit-230698 | `0x4200000000000000000000000000000000000012` | ⚠️ Unaudited |
| OSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x7382c066801e7acb2299ac8562847b9883f5cd3c`; ethereum `0x8067259ea630601f319fcce477977e55c6078c13`; ethereum `0x81fe72b5a8d1a857d176c3e7d5bd2679a9b85763`; ethereum `0xb4eb54af9cc7882df0121d26c5b97e802915abe6`; ethereum `0xf185d0682d50819263941e5f4eacc763cc5c6c42`; ethereum `0xf36b79bd4c0904a5f350f1e4f776b81208c13069` | ⚠️ Unaudited |
| OsmMom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x76416a4d5190d071bfed309861527431304aa14f`; ethereum `0xc96f5e6590fab6fd280e56b4c4433e242bfef5bb` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2241b38558957060c0fe9760794f1b49c535e5f7` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x4200000000000000000000000000000000000015` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | blast | unit-230659 | `0x4200000000000000000000000000000000000023` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x364289230b8cc7d9120ef962af37ebcfe23ce883` | ⚠️ Unaudited |
| ScdMcdMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa91b5ef93e6a0ac4ffa7bd573f167dd0357101cd`; ethereum `0xc73e0383f3aff3215e6f04b0331d58cecf0ab849` | ⚠️ Unaudited |
| Shares | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x4300000000000000000000000000000000000000` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5531dcff39ec1ec727c4c5d2fc49835368f805a9` | ⚠️ Unaudited |
| USDYieldManager | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-230694 | `0xa230285d5683c74935ad14c446e137c8c8828438` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (255)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x004b750a71f1aa80150b18ecd510e6abf7e25480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00efe35880071c16832b3ad135885e7746adf889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01792e085cd935ffcf3046ee61cd4e45c3cb8cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0256c29e4f68dea65154e62dc098607913599ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b3fa2bb8c17146187650a9879248a286404a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x034f643a42aa11fb67f403f3f0703198d4ac780e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b030b04ab614310f725ddb3f453fd2dacfbd74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cba5da6c502aa574b65735a90c68a74ffcec62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ad28c7cace4dba6ab1bb2ec6519dfae1a5b796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e76b7d4b585bcaaef8a2f032fa479456de4a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055353984cd0030530efd40c62c9112f33e0d6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0560328fdbf78edeba4ea13cfb1467e1fb44d2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0620d80ffb33742a58639ff1daffb6969ef68204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065b863c43278321b6d78f19ca75c4f6d1f3c213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06895ea93547312da6a3285465f32e03c90865c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0740c777941bc338f1230471dcd69d9198e575fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0780e9d22ed8c5108f92f0384d7de0bf98078aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cc6a7a14275a8e78483e82976459d27e89a2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082c9b03a7f54aeb2c64c98f76ee3379b9acc306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8ec3ceb616d4b99253977439c37894192e2237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa2ebfeaf69aac878ebeb763d8aea93d389d356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6032bee59b34786448d7147d3ba5138526cc9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1c8eb3e3bfd6cc829122478cd034bac5f5ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d62918a63292f38bcf516226d47002c8364619f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1152f27ec19397ccf471329f998d4c0425ce23e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11539dce2d28b4454ac7982e47e478db30264205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x117b9083cf19296472c6e8751d3296d4ce48296c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d786b4e2a1e05af579107834202e37c51a6ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1610ccaf7a5b79f0467cbe9393a3f7acc944002e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f4c0acb65a9b9b1b98f8bad783f7ed8d8af74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1765d5fd35ad56a60163e424fd75c1baea638c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1863c0163bccfce8e979366f25db08f01bc052f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1978da8325a6f41a5880cf76e38cd921aeb77a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a361b2b9a226c45b9267ccc1cb21dd5b30fc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5ee7c64cf874c735968e3a42fa13f1c03427f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb6e6edb8d6a35ba137c7a96b6fd2804635a8b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201c006c4556863533158855eca3878b28e6e85b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2099bc293bf63ce24fc606776627ba4982ac5078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210851bfa22af6bbc08074f5ba4ec631b690c23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f33c95eda474832ad977c8a497bf97ea29d08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d94dc2cda95ae1f5ffbf7959683f9935c09e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24fe4af7a96db316c0721be371fa1ec1d93991dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2546c3a50591b57f4fd328fc4ab10f84a9aa45b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2569023f9e39ed5987093da3b5409be363a85266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26b1b9ff3a25a7d6e4468fa94696e45d066c7d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fad8718270a5a146d681b6570a1564ec909d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2757e4430e694f27b73ec9c02257cab3a498c8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2955e2a9a5c3d286517ca74d22a62f4f55da3264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bd95ccb7ec9ae1704dac0bb72dd73d0d50d268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a35fa541a8481b3a05609f01096d546c26b4a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3b28430b7b4a8ff90072cdd7ac892fb268f93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7dec53b6ae8c1a48355296cd016cd7477d08c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d76bb07626b52ed16114a02e080f597c45bedd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e278c5fb9231581f4284a253cc5728b6acd372d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fadcf4cd048dd77f821434a785a892181834c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x311ff72dfe214adf97618dd2e731637e8f41bd8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32021687b5fa850db968769ec208f254f5738817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322932b118a2ef29d8eafe380dfd1b7f3c41d328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3417a5882fabcee3d1a461ef1a7b5102f8c1ef82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34247b933a0d0c4c9ddcd379f2730217a5f564f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bccd28b0d1ea5d22685467075f9deb0f59f507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3778e388a5cf2778e0fe5fc6205738bece9cb99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7926b241355b66d66e4eeff2f33f452b2f8338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3deeb4f172f9474041c25c06c5eeb25df6c9c274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x403689148fa98a5a6fdcc0b984914ae968d788e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4249f949f7a57166bbe83dec59ddf64bea17c51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428b703efd0c3917ff0cd9955c60eeec7839f385` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230628 | `0x4316a00d31da1313617dbb04fd92f9ff8d1af7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4447a29574e8ef8253fa26f04c724714c5e5e577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f0a929889ec8cc2d5b8cd79ab55e3279945cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483ce5db3e3438e16770bd887beb39221a02aae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa05235b3b492e6892c7de733d372d84f5308ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbe5f316b0694310cbcdcc7b5b20eb3ab6d9c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0232ce5224f2d77d76051b94e0e7d7895f8674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8834369f0767c6410034cd2f4d2bbc38e80458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e5a089b8d64ab328dbd16b1aa7d92642a65daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57843b34765a9bbbe9ca4234bd4b481a53ed077c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5887dc1a04eabcfb5c8cbc9882091669af129547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599dbc54fe460d8ac3bb571b10fe5461ddbe11fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0c7ced5e486b8e40dd5072d8161a8061cf7e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b79eeef441c55ff53eab84530f0711ba4edd190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9579b9a3255f7cdebd4ae335e0707f7f646615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610165592586dd351e124a6058542afb60afeaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6157f64a2ceeeab76872ee384e4f26c9c8470aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618b9f83e7ae7bae6ed741c585e47a203fb7d3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61cc202c52c43d1a59c458431f5c43eae2666e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624f4e1548f2e725a636da71b84ce6b778840c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6374dcfc57bfd406addb546045a1cce61288b94d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x638242bac58698f619ef4dd966689f5cd0301f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a4b95b50ed9fe6507002fbb45f2139137af934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656540aacf75b1c20da899fdf99f9a5865efa7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68322ca1a9aeb8c1d610b5fc8a8920aa0fba423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683ee6fc52f014555b7d7e79d3c8984b51a81adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6897ecc2fe455a1cf2d3763fd75e1d282caff0f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697f01f5e10c43f13fef9eb796f7670e9f5f616d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69be6c6abb7781fa731cc2f257a748efcd35fb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a94dc9c2e4ae3a199d148e13682b1243999681e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b872127c273e54e847c8b67e8a8bfe07b7f0553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c42e62af5503bffdb7fe517f160d1c3a9edd885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6df6b05d7cde27eda97abde556e03c3fb04d5caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e29817b2034862a12580908903da3c4373fd20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e38f59445efc88916c2318743aa841b7fccb3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7013111f9eff306fc3712f40d9642ca484914e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718df12ebde73fb54b5946ef91c419ab56d7322f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72f7da16eafd000b65ec192f4889f141003fe0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7456695d6904c37f9fb3ab3e088d277c00f61c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6a842bbf2a23e60dd1c57694b6e0c6f28d501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77bef2e8bb81bbc2535ae4846b225c58457348e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78604eace67744c4a19fb84a4ef42dfe06e9f8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a0d94f55792c434d74a40883c6ed8545e406d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af1cf2c29629fd4072b2a0b9be41a6ae8a8de22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b21c3ffe61ce504fc2494add0447162d6e031db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f11f79dea8ce904ed0249a23930f2e59b43a385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8123253ed418ac5e448f33c90a606d9e02841ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81576ca61608b9c591c7a1c279ced3b5e70922c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x822d49cc3e88897637697f0ccb569bf7acc06557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8269f07d159a5a2a39ba6b6deba0fde0d2f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842c99972150671f88fb78a95940ad9a7c2e81c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8487f0509e6d023fa2c4defcbf55e1a066722a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8491862ae4109dfe98fc20e0dce7468e64cfc056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f2b4648990d93c0f478d5d82d3c38d98a4ee91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877fd5d58eed3c4804b9acd1458f0a6ee48c3ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8782289b33361ee1e207ba667e1be61a608956ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d7b9c943220394b569bf8382609f06d9f55617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b50dde72fa07205e0f8b9bb82b24c5efb931c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9edffa39b7b65dee91e6bd3c7a32895dab0e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc0016a54fb4ce75c94339d2853f9e23d1f7273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cd9697e7143e4d059c5e09026bdea9d59b039be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901473b80248e284caa2f056ba6d1e37a4403961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90365c14bd705d9115dadf1892fd3dbcfec6d906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90bb56053ef91129f94a2888dd468e3e72c2f8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920f55f2b2188981a8a8965c3de0f343d668ce06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9338f298f29d3918d5d1feb209aeb9915cc96333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942e30879de5bae58aba51aa38fc18c4a37ea1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x962d55a5e43dc67b643c468b724271ca799aa468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966ab3b8d797cb874ab94e342f75b8d6548d3ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x993385f8a2ad69dfa0884287801191de9805ff37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c226cb68bb32a14693ac8015311513ab6b001e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4adf4dd022e1f110ece0215b165656080b61bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c89c854f981801e50e363e0343386cfb893a7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d3ad15b44a909d4de00a81ea8e8c7d22c726825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f2944f631db13e98a2ec0e78c60416f5f321d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fef11c6bd14708b72fb9ce7da4af20f0bc72d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e99254a451eced7adf11142c5c643bb8013ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38a892975b6c3e45190fa517c4425b45203ec94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b041f7b7f78a3185b275628335a2bc90b99596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a786ef947b5c00d5fed8666c00f4aa841facdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa80e8158d69ea262c3f40e03228fd8455ae29036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85b2afcc7b75bd828df05346b23918f147c36f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ee75d81d78c36c4163004e6cc7a988eec9433e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5683e6367867729e707fdbb53a9db836095c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9478afb898a716e40203bdd695b3267bcd0bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9993f95b701d4deb4bd2e77ccfe8690a2b0b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45c64311127207643913fd83516f4a089c4e5fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5327f25169fc2fea5afea721be90f3bfaf97ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5b06a16621616875a6c2637948bf98ea57c58fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c3db264d713f0f9675bdc5f6b7922c1cd5185a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cca0f0b8fe5ae4a95043b713bb6e908c4daabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80df2bf515cbef0e62b31ba67b288fd9cc164e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4f05709a02d134ae4c6f7c4849c18aa6595c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd1af032a7d3ff453c27bce27a4b432e6f3621b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe23edc9807f6cc7207120dcf2f7ecc1577927e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe28735baafd8d438cedeb671717faf661565466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe350580fd440698dd7578c5977f73b2cc662f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7e4e577fa5b7907df2c6cd4ea3f23c0b86c8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf29e40da385d83274ca3adfb5439adef7ae301c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41c4759f67ff54c7a7314d155f40fc6504f5d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc456c0cfe0c288ffe1705896ad6cc2f9b677cb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc644cc19d2a9388b71dd1dede07cffc73237dca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687ad721f6dd1e08bf8bb1517fa95be93da962c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc907305be32123aebd8ccf1fe84791f17b2abd6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a7a6e2c27c663a40ed65b58d0e4dd69cfe632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb0e6b2ad5f6f53157bc710d23917508da6e2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd5c1a2423256ddc29510ed83d057de6586627d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcef92c70a2eaad20cb500e128037724462fef6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0fa7fadcfcef8c211f73cc52eb46700a387e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1f8f69f89bbb70a95968821d08c829959054aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27a5f3416d8791fc238c148c93630d9e3c882e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3757287bf2db4eaf5150299ce57061681eb4cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3abc8238a18331763e08b2f0c8fbbd0e3a766e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59fa5bad750d78f121422cce026bb868194adc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd886dc2d36cfb6657ce70139112e9f80b0f071af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d3274595436980ef66d714cd81d8f235514dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb7d2557be1aaad888ba6a401adbf08f95b4511c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc202ba51f3b8f2ba1986832993af29d6980d2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde1069b89b246201d57aa5c3143c1433733847e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeda8d3ccf044fe2a16217846b6e1f1cfd8e122f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdedd12bcb045c02b2fe11031c2b269bcde457410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfda046b60be09aeeffe15a5125606bb63840d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02db86b72be0d0f8da9dcf32d3cb66f1a85b4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe32c45e8312818a271c94ee9ba828ed512e38dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5401e2658edaa2f69d737e4e3ad423baa478c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f57f5bf520c96f98571f910e74569ed265120f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82a8053602180dc9ea708cee5200fd931cfc169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe865e6e81394238f0ba5c91a1d5486e781a03a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b6f2f91aa88f1b9c36267f8fa2e49054976fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed530ba33b4dc14572864bb9a776c9a42cf89fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcbe799f1b7f5155f9435401d99d6f594106b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8f2469268464a912c311de09e352b9e9132c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ffd597e45ecf511957892355402957321b396a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf15ca840ac8bb8f4c0670b335e5cedf0a0af4f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf204fdf9dac645a463777000d3e3a8b0a41c82fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf238e4665da058275d11c75e9548aa65a96e03b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28d718656aa38607eadaac974e79ede986ac226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2fb8463cc55137a9a05b5f3d6af4d729173a2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbf89b7ed68081cb040e15cf07064c7378f5d73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd64760ed7fa34fafa09d87927a9b8dd83d0470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd34e2c588a519f173d54be539a56fed4830ba53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdaeb1d201e91c885d9597f901c056d8b29a91b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe622cb3424dbbadf933d56208eb487fb16eabdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7bb16c5767694c767422912b516d9c8e94e392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd852569b533a64a5f1457a8561509b8ca900cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230651 | `0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230656 | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230657 | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230658 | `0x4200000000000000000000000000000000000022` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230660 | `0x4200000000000000000000000000000000000024` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230661 | `0x4300000000000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230662 | `0x4300000000000000000000000000000000000003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230663 | `0x4300000000000000000000000000000000000004` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230665 | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4ef0d788470e2feb6559b93075ec5be51dba737d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230669 | `0x7a0d94f55792c434d74a40883c6ed8545e406d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x83acb050aa232f97810f32afacde003303465ca5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230673 | `0x96f6b70f8786646e0ff55813621ef4c03823139c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9ac0d74176f5037f8318e00a2d26a512e2f1ebf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230676 | `0x9d020b1697035d9d54f115194c9e04a1e4eb9af7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230681 | `0xc0d3c0d3c0d3c0d3c0d3c0d3c0d3c0d3c3d30002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-230684 | `0xcfa3a7637547094ff06246817a35b8333c315196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf66f7e6f8f52b9fedd34c23ae4cc3c02e874215e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05167e2d02022adbee1f4f97aa9503f6848dc55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x092dd3e2272a372cdfbccb8f689423f09ed6242a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b015d034ec70a9c75a1f0734e1dda3291998c8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230629 | `0x26b1b9ff3a25a7d6e4468fa94696e45d066c7d08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230630 | `0x2757e4430e694f27b73ec9c02257cab3a498c8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c9f6bec10bf99b4f3e90c32ab324b69f1829e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3107b42f583c6d3921e6d305ddced95bf597b8cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230631 | `0x311ff72dfe214adf97618dd2e731637e8f41bd8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x329faf078c364a316e08bf6a17b7eee6ae75a613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35fe1ff31fc095cf584fc1a8d486100506909a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3abc19154b94a430f2b5489e7dcc4b96382d11e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x517af25240e98d0ddb266654a2c0447c62f02db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5aef300a2fd501e844b0e5c49e64483e4389f601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70e9b94c9c080ffed89d0de842f208b025b56937` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230641 | `0x7f11f79dea8ce904ed0249a23930f2e59b43a385` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230642 | `0x9338f298f29d3918d5d1feb209aeb9915cc96333` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230643 | `0x993385f8a2ad69dfa0884287801191de9805ff37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230644 | `0xc644cc19d2a9388b71dd1dede07cffc73237dca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5b3062b2f8d3735d3adc8d25302773ff948abb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230645 | `0xdeda8d3ccf044fe2a16217846b6e1f1cfd8e122f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-230646 | `0xed530ba33b4dc14572864bb9a776c9a42cf89fa5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 370
- Live contracts: 2
- Unknown liveness contracts: 368
- Source-verified contracts: 153
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=8, exact address book overlap=1, source verified unclassified=143, unverified unclassified=217

Showing first 200 of 370 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| blast | candidate review | MintManager<br>`0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x081108a2499b5a24408d45f2b4e039abcda7dae3` |
| blast | unverified unclassified | UnnamedContract<br>`0x4ef0d788470e2feb6559b93075ec5be51dba737d` | non_address_book | unknown | unknown | unverified | n/a | `0x5b590b318660afa4492aa99bbbbd186adab6dcac` |
| blast | unverified unclassified | UnnamedContract<br>`0x83acb050aa232f97810f32afacde003303465ca5` | non_address_book | unknown | unknown | unverified | n/a | `0x5b590b318660afa4492aa99bbbbd186adab6dcac` |
| blast | unverified unclassified | UnnamedContract<br>`0x9ac0d74176f5037f8318e00a2d26a512e2f1ebf3` | non_address_book | unknown | unknown | unverified | n/a | `0x5b590b318660afa4492aa99bbbbd186adab6dcac` |
| blast | unverified unclassified | UnnamedContract<br>`0xf66f7e6f8f52b9fedd34c23ae4cc3c02e874215e` | non_address_book | unknown | unknown | unverified | n/a | `0x5b590b318660afa4492aa99bbbbd186adab6dcac` |
| ethereum | currently scope matched | Proxy<br>`0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | candidate review | AddressManager<br>`0xe064b565cf2a312a3e66fe4118890583727380c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0xbbe2cd60bd30ef2aacefd74c3199282ee35fbba6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | candidate review | L1ChugSplashProxy<br>`0xcff70d7f37b1ebee89c08e485f08acab5f6ff873` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | candidate review | Proxy<br>`0x2241b38558957060c0fe9760794f1b49c535e5f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | candidate review | Proxy<br>`0x5531dcff39ec1ec727c4c5d2fc49835368f805a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | candidate review | Proxy<br>`0x6b916dcca661d23794e78509723a6f4348564847` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | candidate review | ProxyAdmin<br>`0x364289230b8cc7d9120ef962af37ebcfe23ce883` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | exact address book overlap | DSRYieldProvider<br>`0x0733f618118bf420b6b604c969498ecf143681a8` | project_anchor | unknown | live | verified | n/a | `0x263efb012774435effb168f9ebd94f7b03bdb825` |
| ethereum | source verified unclassified | LaunchBridge<br>`0xa01def05a37850b2e13c8c839aa268845df14276` | non_address_book | unknown | unknown | verified | n/a | `0x52c31c77974667bc17d3c4a336ac60a1584f18b7` |
| ethereum | source verified unclassified | AuthGemJoin<br>`0x636242be41a84d49ee3d6401ea09dc645f522b35` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | AuthGemJoin<br>`0xad37fd42185ba63009177058208dd1be4b136e6b` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | CatFab<br>`0x7f07f426a0c1b400c17a4cb636c8ead7d1ed752f` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | CodeHash<br>`0x34f211c70dc1c4bce13dc08db3c0669871265221` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DaiJoinFab<br>`0x64a84e558192dd025f3a96775fee8fb530f27177` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DaiJoinFab<br>`0xcf930fb04a9514a3468e041c50cc4721f2d29b32` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DisableLiquidationSpell<br>`0x77223a5a1b31b029dbb8ccaba7304c8217695165` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssDecember27Spell<br>`0x94c19e029f5a1a115f3b99ad87da24d33e60a0e1` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssDecember6Spell<br>`0xf267efdda842539a2caff990259395188a86b813` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssDeploy<br>`0x733be463128228146485a7e1bf2ece72e91e51a4` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssDeploy<br>`0xbaa65281c2fa2baacb2cb550ba051525a480d3f4` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssDeployPauseProxyActions<br>`0x6bda13d43b7edd6cafe1f70fb98b5d40f61a1370` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssDeployPauseProxyActions<br>`0x92d31765f06728f9c83993dbc169cb8e23b779b3` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssFebruary7Spell<br>`0x8e5f3abc36da63142275202454c11237f47dd170` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssFlopReplaceSpell<br>`0x30cfdb937e46e946b1038397f9cd6fa231b90863` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssFlopReplaceSpell<br>`0x902f009d4de4a7828284b04b364dd43f00e51a02` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssIncreaseDelay24Spell<br>`0x1a7d50b73acf1d2b4073ca5f94890a3c05c01401` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssIncreaseDelay24Spell<br>`0xdd4aa99077c5e976afc22060eeafbbd1ba34eae9` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssJanuary10Spell<br>`0x7a87acb1f92c50297239ef9b0ef9387105bd4fc5` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssJanuary24Spell<br>`0xf880d43bb9a32dd212c77b82a7336be31ecaee08` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssJanuary31Spell<br>`0x48916a2b11fa7a895426eedf9acf2d70523b1677` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssJanuary3Spell<br>`0x333c0501182170c5002219380ded6b12c338e272` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssLaunchSpell<br>`0xa710c994d03943d3f5346a9139c9a61363224c6d` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssLaunchSpell<br>`0xf44113760c4f70afeeb412c63bc713b13e6e202e` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DSSpell<br>`0x365fb0e024fb179288e3d65c4aadf6f58c8ae114` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DSSpell<br>`0xbb707072ea85b4d0eee181c77996a28c5241e2c9` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssProxyActions<br>`0x82ecd135dce65fbc6dbdd0e4237e0af93ffd5038` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssProxyActions<br>`0xee0d5cb66c33d9858670412e3dfa09d9759de5d7` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssProxyActionsDsr<br>`0x07ae5dfd28adf5e408316c01b43a7af0da0f38b1` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssProxyActionsDsr<br>`0x07ee93aeea0a36fff2a9b95dd22bd6049ee54f26` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssProxyActionsEnd<br>`0x069b2fb501b6f16d1f5fe245b16f6993808f1008` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssProxyActionsEnd<br>`0x689e53009e695ec0f2dd15d47aeac9d9ed779a34` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssProxyActionsEnd<br>`0x7aff9fc9fad225e3c88cda06bc56d8aca774bc57` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x049e4d10c1b7280cfed5b0d990e39f9c54529a32` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x057d35a858d6350d10f714785baf5c07703dbd4c` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x0ac7bd7ae9d4eabe2c50400cd9c1af349deff495` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x0f449ce32456fbd823b7ac5d162826cd34c48784` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x127b47d30d293afe05f3e17e4966ed4109d4bb30` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x1d51ca29e35b6ce30167f634dd21376da1341d9b` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x1f3229185e8f5759dcf85337552afd48795a4d38` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x261086981fc6c57ef4679af6ac253c3755850362` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x261cacc129fefbff9bff0a4d8e962a0a49a72bdc` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x3526a5858aa91c058a7084ae8ab6d323d2baebb8` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x43aac7f1b47ff29d33dec14dcaa7901d1bb8c006` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x4b46e37f032d0802291dd890acd941ac167ed61d` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x4bf6e7291dc01a41ec88a23d4921152e7d1e31d4` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x4ff0258545528b01902d826368246f330eeabd2c` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x529b8b4b62b5f32bd47412988a0a66d72f86ba00` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x569c1d105f08f685e023bb4fc6f69957e2401df8` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x64976c5b5062c56d91dafe661cb85dcf7e349c9d` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x658ec6a5d4d1cfd72d2baad14f8ad96fc2fcdd51` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x6941df79ac5729c36debf73d0ae4f816c3759ac1` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x69ec6020ba47be01557605b53a5d56e6fd96ed8c` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x7852bbeadd2498889ed680eaac849633db7422d9` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x7b540cf92de1b5697f3cc1dda39437027288c929` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x7f6dcc6bce0ee6b057e4f33a9e34e24c63e37599` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x84f411093aed2e88e3d7f62a457cf77b3032ff2b` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x872c49c9e90e4ac7f84452ca52161fddc849246e` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x8afa02a56336202b9a0b1d451f2039d76da4e0be` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x91e556e3cb1e2842a0a3626a768b7e67199f7589` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x9713187b6d7c8d54ac041efdbac13d52c2120fb9` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x9ab3ae47965ab3553075e8f86afc3fdfd705202f` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x9e361d75bdbccd061ce01acc5265646c19778140` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0x9ef95251233e0586bf3b17f14d31e2a756454a0d` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xa3fa69aa788b3e51c083347bc8fc4fcf06469dec` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xa8692c55aab501da3931df536ad4325f5af4a75d` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xae6edd381095e5c110a274ffc80871c72949795a` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xc07d37964d1cdec72ddd8cfa380af1dcfa5381b0` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xca3b2e6006c996ee361b6ea6505226a463390b52` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xcd989b68d99ddda02c6a58b1b3985962f4d59e33` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xd0dd71814cc2185c3092a477217c9d64e7f3a38e` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xd17abf984740145db4b3d61559eebe2170a3d6da` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xd74cc5fce54b1797f688e4f6a5681006fc077bd4` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xd77ad957fcf536d13a17f5d1fffa3987f83376cf` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xd7af2871024fad053c0242ba4c69793ae7b94015` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xdb20f2e864bfb7658ae78383d55ad4b488851fe4` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xe8ccac37e45a0cc6ad65999a71c0af7d1fb06209` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xeb19d801221384d20b842d04891e47df09aab911` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xf132619f3aa8fc35b256c089097e91a0c2b3902a` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xf67de12cab72a3f3a2ece4caa99c53eb0ddff75d` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xf8085d74ad616d48c225f3812a610f5cd5f676da` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell<br>`0xfddeef69f5961c73ff80a1356a49a504969ba659` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell20200221<br>`0x2af6ef584c8937fbec4a8f50ae5ed1fe6c47bdc6` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DssSpell20200221<br>`0xd24fbbb4497ad32308bda735683b55499ddc2cad` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DSValue<br>`0x3ec80729bd472987169485c2076ed0b71e0fa602` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DSValue<br>`0x54003dbf6ae6cba6ddae571ccdc34d834b44ab1e` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DSValue<br>`0x77b68899b99b686f415d074278a9a16b336085a0` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | DSValue<br>`0xee13831ca96d191b688a670d47173694ba98f1e5` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | EnableLiquidationSpell<br>`0xd36df11cf6855b616a36eadbcf9290f7953d90fd` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlapFab<br>`0x60f941d0b8344f28e03132d0a09fc10b6b2c6740` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlipFab<br>`0x4acdbe9dd0d00b36ec2050e805012b8fc9974f2b` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlipFab<br>`0x7166ee2ecb2b4d6451d134a9da72b24e8c4087b8` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlipFab<br>`0xbab4fbea257abbfe84f4588d4eedc43656e46fc5` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlipFab<br>`0xf9e4362e2411dd6a64df500967fd258e450953d2` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlipperMom<br>`0x9bddb99625a711bf9bda237044924e34e8570f75` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlipperMom<br>`0xc4be7f74ee3743bded8e0fa218ee5cf06397f472` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | FlopFab<br>`0x920ff284ce06eef00082acb1e12617188c928f99` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | Flopper<br>`0x4d95a049d5b0b7d32058cd3f2163015747522e99` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin<br>`0x15d34eab0fd1d1bf72918914fa3284abeed755b7` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin<br>`0x3d0b1912b66114d4096f48a8cee3a56c231772ca` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin<br>`0x475f1a89c1ed844a08e8f6c50a00228b5e59e4a9` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin<br>`0x4bcd9b34560a383ffadedd4887e05bba3009080b` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin<br>`0xa6ea3b9c04b8a38ff5e224e7c3d6937ca44c0ef9` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin<br>`0xc7e8cd72bdee38865b4f5615956ef47ce1a7e5d0` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin<br>`0xfced114adfaea7959b58b2aaa8b94920fbb2427f` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin5<br>`0x2600004fd1585f7270756ddc88ad9cfa10dd0428` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin5<br>`0xa191e578a6736167326d05c119ce0c90849e84b7` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin5<br>`0xbf72da2bd84c5170618fbe5914b0eca9638d5eb5` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GemJoin6<br>`0x4454af7c8bb9463203b66c816220d41ed7837f44` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GetCdps<br>`0x36a724bd100c39f0ea4d3a20f7097ee01a8ff573` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GetCdps<br>`0xf69796cc997380ea96f9b7320caeef7aeb71e58b` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GovActions<br>`0x4f5f0933158569c026d617337614d00ee6589b6e` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | GovActions<br>`0x6e2795467e070dd8b477300899b6d1c90f8ba822` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | IlkRegistry<br>`0x8b4ce5dcbb01e0e1f0521cd8dcfb31b308e52c24` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | IlkRegistry<br>`0xbe4f921cdfef2cf5080f9cf00cc2c14f1f96bd07` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MedianBATUSD<br>`0x18b4633d6e39870f398597f3c1ba8c4a41294966` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MedianBTCUSD<br>`0xe0f30cb149faadc7247e953746be9bbbb6b5751f` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MedianETHUSD<br>`0x64de91f5a373cd4c28de3600cb34c7c6ce410c85` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MedianKNCUSD<br>`0x83076a2f42dc1925537165045c9fde9a4b71ad97` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MedianZRXUSD<br>`0x956ecd6a9a9a0d84e8eb4e6baac09329e202e55e` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MegaPoker<br>`0x6b8158d8e848d15ef0305221bb88569abfc5bc1c` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MegaPoker<br>`0x9885c81a6afafa98225673c165f04e6df6f96f7b` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MegaPoker<br>`0xbec282dc7d575f6ec230724a3902b816d9a808b5` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MegaPoker<br>`0xde9457b0ad731db06e5830d2497bfbe7bfbc6b3a` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MegaPoker<br>`0xe4a37b878919ed3b3a63a9b0666a2a95b83ad7c2` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MegaPoker<br>`0xf4771e43b24fa7d7f16c419f1e62a98da00d8be0` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MigrationProxyActions<br>`0x23c800e375222693ed593d6308aec08116d980a1` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MigrationProxyActions<br>`0x2e1f6062d9fb227069741e40f89186df222fb426` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MigrationProxyActions<br>`0xe4b22d484958e582098a98229a24e8a43801b674` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MkrAuthority<br>`0x6eeb68b2c7a918f36b78e2db80dcf279236ddfb8` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | MkrAuthority<br>`0xc725e52e55929366dfdf86ac4857ae272e8bf13d` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | Multicall<br>`0x34f6bb84bcc8dd2fa157afd03491a053eabcf9dc` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OSM<br>`0x7382c066801e7acb2299ac8562847b9883f5cd3c` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OSM<br>`0x8067259ea630601f319fcce477977e55c6078c13` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OSM<br>`0x81fe72b5a8d1a857d176c3e7d5bd2679a9b85763` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OSM<br>`0xb4eb54af9cc7882df0121d26c5b97e802915abe6` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OSM<br>`0xf185d0682d50819263941e5f4eacc763cc5c6c42` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OSM<br>`0xf36b79bd4c0904a5f350f1e4f776b81208c13069` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OsmMom<br>`0x76416a4d5190d071bfed309861527431304aa14f` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | OsmMom<br>`0xc96f5e6590fab6fd280e56b4c4433e242bfef5bb` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | ScdMcdMigration<br>`0xa91b5ef93e6a0ac4ffa7bd573f167dd0357101cd` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | source verified unclassified | ScdMcdMigration<br>`0xc73e0383f3aff3215e6f04b0331d58cecf0ab849` | non_address_book | unknown | unknown | verified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x004b750a71f1aa80150b18ecd510e6abf7e25480` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00efe35880071c16832b3ad135885e7746adf889` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01792e085cd935ffcf3046ee61cd4e45c3cb8cd8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0256c29e4f68dea65154e62dc098607913599ad5` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02b3fa2bb8c17146187650a9879248a286404a83` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x034f643a42aa11fb67f403f3f0703198d4ac780e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03b030b04ab614310f725ddb3f453fd2dacfbd74` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03cba5da6c502aa574b65735a90c68a74ffcec62` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04ad28c7cace4dba6ab1bb2ec6519dfae1a5b796` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04e76b7d4b585bcaaef8a2f032fa479456de4a6f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x055353984cd0030530efd40c62c9112f33e0d6e5` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0560328fdbf78edeba4ea13cfb1467e1fb44d2ed` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0620d80ffb33742a58639ff1daffb6969ef68204` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x065b863c43278321b6d78f19ca75c4f6d1f3c213` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06895ea93547312da6a3285465f32e03c90865c4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0740c777941bc338f1230471dcd69d9198e575fc` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0780e9d22ed8c5108f92f0384d7de0bf98078aab` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07cc6a7a14275a8e78483e82976459d27e89a2c6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x082c9b03a7f54aeb2c64c98f76ee3379b9acc306` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a8ec3ceb616d4b99253977439c37894192e2237` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0aa2ebfeaf69aac878ebeb763d8aea93d389d356` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c6032bee59b34786448d7147d3ba5138526cc9a` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ca1c8eb3e3bfd6cc829122478cd034bac5f5ca9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d62918a63292f38bcf516226d47002c8364619f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1152f27ec19397ccf471329f998d4c0425ce23e8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11539dce2d28b4454ac7982e47e478db30264205` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x117b9083cf19296472c6e8751d3296d4ce48296c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15d786b4e2a1e05af579107834202e37c51a6ce6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1610ccaf7a5b79f0467cbe9393a3f7acc944002e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16f4c0acb65a9b9b1b98f8bad783f7ed8d8af74d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1765d5fd35ad56a60163e424fd75c1baea638c6a` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1863c0163bccfce8e979366f25db08f01bc052f1` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1978da8325a6f41a5880cf76e38cd921aeb77a8b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19a361b2b9a226c45b9267ccc1cb21dd5b30fc3e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a5ee7c64cf874c735968e3a42fa13f1c03427f9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fb6e6edb8d6a35ba137c7a96b6fd2804635a8b9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x201c006c4556863533158855eca3878b28e6e85b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2099bc293bf63ce24fc606776627ba4982ac5078` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x210851bfa22af6bbc08074f5ba4ec631b690c23f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21f33c95eda474832ad977c8a497bf97ea29d08a` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22d94dc2cda95ae1f5ffbf7959683f9935c09e95` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24fe4af7a96db316c0721be371fa1ec1d93991dd` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2546c3a50591b57f4fd328fc4ab10f84a9aa45b6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022_05-Bedrock_Contracts-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_05-Bedrock_Contracts-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | matched | 7 | 5 | 0 | 3 | low |
| [2022_09-Bedrock_and_Periphery-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_09-Bedrock_and_Periphery-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | matched | 9 | 8 | 0 | 10 | high |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | matched | 3 | 3 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20655] 2022_05-Bedrock_Contracts-Zeppelin.pdf — matched: The report text is garbled and incomplete. No clear scope section or date found. Contract names inferred from findings and references.
- [20658] 2022_09-Bedrock_and_Periphery-Zeppelin.pdf — matched: All contracts listed in the Scope section of the audit report.
- [20661] 2023_01-Bedrock_Updates-TrailOfBits.pdf — matched: Extracted contracts from Project Targets and Project Coverage sections. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x697402166fbf2f22e970df8a6486ef171dbfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x4200000000000000000000000000000000000010` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1OptimismPortal | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | mentioned in scope and findings | no |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismMintableERC20 | own contract | OptimismMintableERC20 (selected) `0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692` — deployed 2024-03-19 23:38:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L1ERC721Bridge | own proxy deployment | Proxy (proxy) (selected) `0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_05-Bedrock_Contracts-Zeppelin.pdf | L2ERC721Bridge | own contract | 0x420000… (selected) `0x4200000000000000000000000000000000000014` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ChugSplashProxy | ambiguous — not counted | L1ChugSplashProxy (proxy) (alternative) `0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115` — deployed 2024-02-25 01:15:23+03 — liveness: live (current_address_book_code)<br>L1ChugSplashProxy (proxy) (alternative) `0xa230285d5683c74935ad14c446e137c8c8828438` — deployed 2024-02-25 01:15:47+03 — liveness: live (code_present_context)<br>L1ChugSplashProxy (proxy) (alternative) `0x697402166fbf2f22e970df8a6486ef171dbfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code)<br>L1ChugSplashProxy (proxy) (alternative) `0x98078db053902644191f93988341e31289e1c8fe` — deployed 2024-02-25 01:15:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainEnabled | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Lib_PredeployAddresses | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1CrossDomainMessenger | own proxy deployment | ResolvedDelegateProxy (proxy) (selected) `0x5d4472f31bd9385709ec61305afc749f0fa8e9d0` — deployed 2024-02-25 01:16:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1StandardBridge | own proxy deployment | L1ChugSplashProxy (proxy) (selected) `0x697402166fbf2f22e970df8a6486ef171dbfc524` — deployed 2024-02-25 01:15:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ResourceMetering | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2CrossDomainMessenger | own proxy deployment | Proxy (proxy) (selected) `0x4200000000000000000000000000000000000007` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x4200000000000000000000000000000000000010` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ToL1MessagePasser | own proxy deployment | Proxy (proxy) (selected) `0x4200000000000000000000000000000000000016` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Hashing | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | CrossDomainMessenger | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Proxy | ambiguous — not counted | Proxy (proxy) (alternative) `0x4300000000000000000000000000000000000005` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x4200000000000000000000000000000000000007` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code)<br>Proxy (alternative) `0x4200000000000000000000000000000000000023` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x4200000000000000000000000000000000000012` — liveness: live (current_address_book_code)<br>Proxy (proxy) (alternative) `0x4200000000000000000000000000000000000010` — liveness: live (code_present_context)<br>Proxy (proxy) (alternative) `0x4200000000000000000000000000000000000016` — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | Semver | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | StandardBridge | unmatched — not counted | — | listed in scope | no |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L1ERC721Bridge | own proxy deployment | Proxy (proxy) (selected) `0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975` — deployed 2024-02-25 01:16:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022_09-Bedrock_and_Periphery-Zeppelin.pdf | L2ERC721Bridge | own contract | 0x420000… (selected) `0x4200000000000000000000000000000000000014` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | SystemConfig | unmatched — not counted | — | listed in Project Coverage section as L1 SystemConfig contract | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb` — deployed 2024-02-25 01:14:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | ResourceMetering | unmatched — not counted | — | mentioned in Coverage Limitations as updated contract | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2ToL1MessagePasser | own proxy deployment | Proxy (proxy) (selected) `0x4200000000000000000000000000000000000016` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76` — deployed 2024-02-25 01:14:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | MerkleTrie | unmatched — not counted | — | mentioned in Coverage Limitations as refactored library | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | CrossDomainMessenger | unmatched — not counted | — | mentioned in Coverage Limitations as minor changes | no |
| 2023_01-Bedrock_Updates-TrailOfBits.pdf | L1Block | unmatched — not counted | — | mentioned in Project Coverage section as predeployed L2 contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad` | GovernanceToken | token | $569.61 | Verified native implementation with $569.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0733f618118bf420b6b604c969498ecf143681a8` | DSRYieldProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98078db053902644191f93988341e31289e1c8fe` | ETHYieldManager | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115` | L1BlastBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x4300000000000000000000000000000000000005` | L2BlastBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x4200000000000000000000000000000000000012` | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa230285d5683c74935ad14c446e137c8c8828438` | USDYieldManager | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 13 |
| needs_review | 253 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (16 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 16 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=19

Fork inheritance lineage and inherited audits are included when available.
