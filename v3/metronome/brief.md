# Agentic Audit Brief: Metronome

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

- Project: Metronome (`metronome`)
- Website: [https://www.metronome.io/](https://www.metronome.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, optimism
- Contract surface: 201 unique implementations (201 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,045,296.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Metronome. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across base, ethereum, optimism. Structural roles: 4 core, 3 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (3)
- Contract kinds: contract (7)
- Detected standards: erc20 (3), erc165 (2), erc1967proxy (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2), solmate (1), uniswap (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 78 contracts are derived from known codebases. 78 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x11ead85c679eaf528c9c1fe094bf538db880048a`, chain 1)
- UnnamedContract (`0x1887e76914699b839b97a0b69ff6f8b865745321`, chain 1)
- UnnamedContract (`0x1a9551de6d56f7768398a82aa2186624a43d89e3`, chain 1)
- UnnamedContract (`0x1f9732b84e22e936cfc2ff6f2d4994097dccc93e`, chain 1)
- UnnamedContract (`0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad`, chain 1)
- UnnamedContract (`0x3364f53cb866762aef66deef2a6b1a17c1f17f46`, chain 1)
- UnnamedContract (`0x3691ef68ba22a854c36bc92f6b5f30473ef5fb0a`, chain 1)
- UnnamedContract (`0x45ac59746ea5eb74cf782855eca460a8adc8925a`, chain 1)
- UnnamedContract (`0x480e3178fa102df852643d47cabdb9adf5db0174`, chain 1)
- UnnamedContract (`0x564baa321227abf6b2e88a38557b6517077aad32`, chain 1)
- UnnamedContract (`0x5c574153b195ae284c063a84fb9c73d9fd37955f`, chain 1)
- UnnamedContract (`0x608249cc11728e3b978f7b27f1ea13f607d484ef`, chain 1)
- UnnamedContract (`0x63ec45313149b1fa677b2b91cb93880232ef63ac`, chain 1)
- UnnamedContract (`0x64351fc9810adad17a690e4e1717df5e7e085160`, chain 1)
- UnnamedContract (`0x691af94cc63b99bd36173ed6fb1ef5508b2774ec`, chain 1)
- UnnamedContract (`0x6b53c16b94c1502c661140073ed522ac7dbc5e5e`, chain 1)
- UnnamedContract (`0x7f9e66640fec701d9f46ed5ed69f925ffdbb4683`, chain 1)
- UnnamedContract (`0x8b4f8ad3801b4015dea6da1d36f063cbf4e231c7`, chain 1)
- UnnamedContract (`0x8bd81c99a2d349f6fb8e8a0b32c81704e3fe7302`, chain 1)
- UnnamedContract (`0x9e5bdf244a2fcc44f1bcbd3ae108be2a6de5e379`, chain 1)
- UnnamedContract (`0x9f6a09dd0ba23b5ad4234677c831146366678ae3`, chain 1)
- UnnamedContract (`0xa77b145c7fa5b412eb8ad41d587be892b9c1efc3`, chain 1)
- UnnamedContract (`0xab5eb14c09d416f0ac63661e57edb7aecdb9befa`, chain 1)
- UnnamedContract (`0xb93f48d3ea42a25f367fade092a6bb56dab5f7cb`, chain 1)
- UnnamedContract (`0xbcfa955b023bca29bf48568f5107b73d5128a6ab`, chain 1)
- UnnamedContract (`0xd4e20256096775d05c4852204ef911bb3653afad`, chain 1)
- UnnamedContract (`0xdaec887e37e86ea9b78852eb7470d70bbf266258`, chain 1)
- UnnamedContract (`0xe0e7ac2b0884ba8a05190fb6ceaffadc7c3aedf1`, chain 1)
- UnnamedContract (`0xe3944bef763ebbe4a9d49a7e12cf180c32f427db`, chain 1)
- UnnamedContract (`0xec37f547b27d8cb216b145744875a5861e3df6af`, chain 1)
- UnnamedContract (`0xf37982e3f33ac007c690ed6266f3402d24aa27ea`, chain 1)
- UnnamedContract (`0xf43de8e0c2596e30c77d69d158842d1d9b937d7c`, chain 1)
- UnnamedContract (`0x1610e3c85dd44af31ed7f33a63642012dca0c5a5`, chain 10)
- UnnamedContract (`0x1e6039574bbf6b1f65650bc50b2bca8911fd9b27`, chain 10)
- UnnamedContract (`0x25ee6ea9353e0ffa3155655f3df9140684671f36`, chain 10)
- UnnamedContract (`0x293aac1fef48b2ebf95d0cb3a31a7b219e8ece9e`, chain 10)
- UnnamedContract (`0x33bca143d9b41322479e8d26072a00a352404721`, chain 10)
- UnnamedContract (`0x4c6bf87b7fc1c8db85877151c6ede38ed27c34f6`, chain 10)
- UnnamedContract (`0x4e71790712424f246358d08a4de6c9896482de64`, chain 10)
- UnnamedContract (`0x564baa321227abf6b2e88a38557b6517077aad32`, chain 10)
- UnnamedContract (`0x5a962457060445c1e60299d735c8539d61b4ba54`, chain 10)
- UnnamedContract (`0x5c18f45c4c62b0687425598579b026b90785c28e`, chain 10)
- UnnamedContract (`0x62316768ef954734445aab3273fd6077005ffabf`, chain 10)
- UnnamedContract (`0x6394152946dc3e0babaa474ee9d366ef31f959c0`, chain 10)
- UnnamedContract (`0x696ee5a8c82e621eccc4909ff020950b146351a0`, chain 10)
- UnnamedContract (`0x77256d49ab301c608f8ffa466936ccf84d07a41c`, chain 10)
- UnnamedContract (`0x8d8af8c47d9277ea8d3c8f5b0873a0aaf6f7f9d3`, chain 10)
- UnnamedContract (`0x95dcff2bfd19af97267b8c9d516206dcc87eecdd`, chain 10)
- UnnamedContract (`0x9dabae7274d28a45f0b65bf8ed201a5731492ca0`, chain 10)
- UnnamedContract (`0xabf27b8e4da617fff2e666f71c137d71cf75b5f6`, chain 10)
- UnnamedContract (`0xb55ced4d5f7346a6601ebebddc98d0415c94095a`, chain 10)
- UnnamedContract (`0xc2c433d36d7184192e442a243b351a9e3055fd5f`, chain 10)
- UnnamedContract (`0xcea698cf2420433e21bec006f1718216c6198b52`, chain 10)
- UnnamedContract (`0xd2e32323686de92411639d446396afa5e6149c28`, chain 10)
- UnnamedContract (`0xe7c65eaeb1ca920f0db73cdfb4915dd31472a6a1`, chain 10)
- UnnamedContract (`0xebe91f52766dd236b6e8c1951f6a4a8bcc47a71e`, chain 10)
- UnnamedContract (`0xff11956de4c8c53fa69b0a219126cf2290e1620b`, chain 10)
- UnnamedContract (`0x2af13bf84f8b452cb86839330f514cc5c2899217`, chain 8453)
- UnnamedContract (`0x2f12dfb525564055b4a007b0b15ea5cd0bff986c`, chain 8453)
- UnnamedContract (`0x30eac06d1e495411ee15cb59714eb9da29fc200e`, chain 8453)
- UnnamedContract (`0x3a04bf2caca1345d475e0241b465c0ea4d4ce950`, chain 8453)
- UnnamedContract (`0x4372a2b9304296c06197a823f25cf03119d2fd82`, chain 8453)
- UnnamedContract (`0x526728dbc96689597f85ae4cd716d4f7fccbae9d`, chain 8453)
- UnnamedContract (`0x6f622b037f9146bde102db84fc9152df1042aa98`, chain 8453)
- UnnamedContract (`0x7ba6f01772924a82d9626c126347a28299e98c98`, chain 8453)
- UnnamedContract (`0x7bcc1deccaa98d52bf89485f17a3e8607011cfde`, chain 8453)
- UnnamedContract (`0x8b581d0013f571a792c3aa8af2a0366a309bf51e`, chain 8453)
- UnnamedContract (`0xaedf96597338fe03e8c07a1077a296df5422320e`, chain 8453)
- UnnamedContract (`0xc614136d6c5ab85bc2acf0ec2652351642d7f54e`, chain 8453)
- UnnamedContract (`0xc7f2f79daa7ea4fbbf60b45b5d6028bde2453476`, chain 8453)
- UnnamedContract (`0xe1525aa6d21a172f4e0c4420ff68c73fd38b0cc6`, chain 8453)
- GnosisSafe (`0x993946155060d4324b8fd6cb6a4d69024c23c10f`, chain 1)
- L2StandardERC20 (`0x9a2e53158e12bc09270af10c16a466cb2b5d7836`, chain 10)
- Metronome2 (`0x2ebd53d035150f328bd754d6dc66b99b0edb89aa`, chain 1)
- MStableTokenOracle (`0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09`, chain 1)
- OptimismMintableERC20 (`0x93dc5cb35627a759848c7a7f0079ea7b49e435a5`, chain 8453)
- TransparentUpgradeableProxy (`0x2f4f85be85245c91779c3e36cbddf87b4ed73e3d`, chain 8453)
- UniswapV2LikePriceProvider (`0x790e5f103ab69122fc5d9a3d5216fad11fe36acb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 78/89 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 78 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 123 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 78 of 201 unique; 123 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/130
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 201
- Raw deployments: 201
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e6ade9b7b59e151c5bcc877c9b90d50021553a` | ⚠️ Unaudited |
| AgentUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804739d527b550260f633462dedab13399c3953a` | ⚠️ Unaudited |
| AlphaHomora | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ce999d8709db87b211d3dd9a78dcdc2f9babcc` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377` | ⚠️ Unaudited |
| AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2f248e80901ae9e5b2109524546d68d425df9543` | ⚠️ Unaudited |
| AmoUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ac222833b85c3ed1ccbc8a7d45f38021d9269d8` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` | ⚠️ Unaudited |
| ATokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54525f751b71e1ea58a558649f0057451e4946b4` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a9e6d0303ec473bcfac0720b4427045317fd6d8` | ⚠️ Unaudited |
| CrossChainDispatcherUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69e35c5c52a7b009b27d1da1e547dacea068a935` | ⚠️ Unaudited |
| CrossChainDispatcherUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce774a71fb63dd92c32d41b2b7ef7e83894b19d8` | ⚠️ Unaudited |
| Crv4PoolStrategySUSDPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5708e07300e5d6ea9fb6e0dc0c6b6a22f640d9e0` | ⚠️ Unaudited |
| CTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3085721aa6f36081ee5e00583da5526d57a87e` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e6039574bbf6b1f65650bc50b2bca8911fd9b27` | ⚠️ Unaudited |
| DebtTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a8ea5ab935285dc96cb853e8dd7d21eeb245771` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04c3af72fa9f45d37228be8801bc5d2a4410521a` | ⚠️ Unaudited |
| DepositTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x084a7d7eb284dd74b1e29940a3745c8b59db9a19` | ⚠️ Unaudited |
| EarnVesperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d94ce384cf6b51f93f8c702b039333fc95d66a5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x023dcf516c349b615120ee731add909645ec35fb` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32cbc628325eb5a3000d3182c72539c77eb5ff59` | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28817036451a4de34ac3df935a6762a2a1c60c97` | ⚠️ Unaudited |
| ESMET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fc4c09a67ce412faa316d03505d67aa27e2698` | ⚠️ Unaudited |
| ESMET721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x89c4aedcd10df1b19cf2d4b540af3fcad5d4c21a` | ⚠️ Unaudited |
| ESMET721Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb699b72aefbee7fe6e77e290e60be6f7668c4aeb` | ⚠️ Unaudited |
| ESMETUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23b6f36c959e272270ba8179f8bea18474bff2b` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02fc8523510be4c6085d8d820ecced3f2a58623b` | ⚠️ Unaudited |
| ESVSP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c0a314284ace713c74add192a0b30f4014363` | ⚠️ Unaudited |
| ESVSP721Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8c5c81053581341ba45ea149982ebf862cbd4e` | ⚠️ Unaudited |
| ESVSPUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307` | ⚠️ Unaudited |
| Euler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67be8549cc27f0e10dd5925191354f7aefcc1165` | ⚠️ Unaudited |
| EulerVesperXy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b5de50a1db84dd2dc66146cd513d2688394b609` | ⚠️ Unaudited |
| FeeProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ee6ea9353e0ffa3155655f3df9140684671f36` | ⚠️ Unaudited |
| FeeProviderUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x340972195f008deec31c70700a45d6e28818cf52` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247419 | `0x993946155060d4324b8fd6cb6a4d69024c23c10f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1015bd1ff0af19d8ce63380b636907f2c4390a5c` | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d992cf60870237c74eef68def2ba1f1906fc9e6` | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a360a00f781ec5130a8e1e406d7ee144f756346` | ⚠️ Unaudited |
| InfiniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf974d7435e86db32d8a6d021934712ea51f2fb41` | ⚠️ Unaudited |
| InifniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-247371 | `0x9a2e53158e12bc09270af10c16a466cb2b5d7836` | ⚠️ Unaudited |
| MainAndFallbackOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0af15b4689cf81a9f1bfc6857d842f2813d3017` | ⚠️ Unaudited |
| MakerVesper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078` | ⚠️ Unaudited |
| MakerVesperStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2dda4d6ca0e2728bdc7b0a738d4664bf58698e1` | ⚠️ Unaudited |
| MasterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80704acdf97723963263c78f861f091ad04f46e2` | ⚠️ Unaudited |
| MetAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265714b10b9309a8a7a505dbfa6cb6c39b842309` | ⚠️ Unaudited |
| Metronome2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247265 | `0x2ebd53d035150f328bd754d6dc66b99b0edb89aa` | ⚠️ Unaudited |
| MetronomeGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cfddc60c932a2ea811ac63fb41efce95b3a34e9` | ⚠️ Unaudited |
| MetronomeVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdcbf444e601319ebbbf9b5731ece81908947de6` | ⚠️ Unaudited |
| MetronomeVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119b9ce7b2087153d02c8aa8f7dc914bb7e5fb5f` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x583e4938f95e75906b1b69514c9bf7ebc648201a` | ⚠️ Unaudited |
| MockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff7495004c01f6550ff753b0b726bfae2b5e984` | ⚠️ Unaudited |
| MockVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cda6590162a095fd7c55b1482574dd8635e3f97` | ⚠️ Unaudited |
| MStableTokenOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247338 | `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521dea8f06732e748598f2a65fc7d98849d4a5fb` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186df63e79a7089dbb325567f587ebb5a3743aa6` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ea695b91700071b161a434fed42d1dcbad9f00` | ⚠️ Unaudited |
| OFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010f0bd6576949e6ac6eea11ed8c535388340e94` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06d6347915f6b5e9dbb53fe17b988b99dbad360` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-247408 | `0x93dc5cb35627a759848c7a7f0079ea7b49e435a5` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a` | ⚠️ Unaudited |
| PingPong | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43978097ce538cb9aa09d4a6532f2b68b62badaa` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029078cc02f74a77051bfde8757e3b828aed9b25` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0fae214b4e023e0fd5005f1be17e03a5eeff6e56` | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31e41aa5eab8317187879c2f1a0e07de36260e72` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01491b3598a90c080b9429f9a86764fa6845ae65` | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39f7fc2ff177057bbb5b680a443e4118cc28af3d` | ⚠️ Unaudited |
| PoolRegistryUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x997f6dae65bb2de3824fd7425a82f93361b92ffc` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10c72fdedd8eb17916c362c33c0c453928761919` | ⚠️ Unaudited |
| PoolRewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655845ac2db0c1955815bdc33f0270bc37e03d23` | ⚠️ Unaudited |
| PoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b` | ⚠️ Unaudited |
| PoolUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53bdb9dd566e48ba35d8c2a1ecbc08274685fbf6` | ⚠️ Unaudited |
| PoolUpgraderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4ca1413ed3069c1a6aaac1152c3d205e9b0440c2` | ⚠️ Unaudited |
| PositionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c82257e30a73e268ec578f419f35dbce1ef7435` | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a21ec8ee93971d4b4093c0895fd841c7169a23` | ⚠️ Unaudited |
| Proposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x760a0a933f9597fbc3b4db86ef92d61c956269e4` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59633b825d4aa12cb0907616746d76dd88f76f40` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262b12c5701ddf1edac2870ad6338d23d5853bdd` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ecc84da119bd5539dc489d4009106534cfaa542` | ⚠️ Unaudited |
| ProxyOFTUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x305b30dc978e931642d243852b4aa5d31a0da8c4` | ⚠️ Unaudited |
| ProxyOFTUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f6fd010da1e4184b129f00f2dc5b96c16b8e866` | ⚠️ Unaudited |
| PullOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f278b7eff04add48ff81ae1a01cbc178b3dd351` | ⚠️ Unaudited |
| PythMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c2d5b1e7d7be588389bdb94138cc37dc014e85c` | ⚠️ Unaudited |
| QuoterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3c6d5e857943346b7f6dee3f3053df55357ef69` | ⚠️ Unaudited |
| RariFuse8Eth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f53ce55c412b7614beaca41ae7607405c3458a` | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e597e6c827a8527413c19065ec0725e03eeac6e` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d6d94f53c2ecb24f3c632745a535a947ee43b97` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025347f4cc7865068de5a139951411084e7bcad7` | ⚠️ Unaudited |
| RewardsDistributorUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e117b75bd4bad788abed416ff11360190a9443f` | ⚠️ Unaudited |
| RewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bdba054af6b11c85428cd817d55355b487553f2` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8b104748a0ad707ae610d0ce97686cb4dd1745` | ⚠️ Unaudited |
| SiUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931` | ⚠️ Unaudited |
| SmartFarmingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d29f7cd7ec338528f4330c5a7ff6d92acf5819a` | ⚠️ Unaudited |
| SmartFarmingManagerUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x720501250d7937ac3b6b308e24466c03a61efb70` | ⚠️ Unaudited |
| SonneVesperXy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fd49322ccc93078baf8011b70abc58ffe1a181b` | ⚠️ Unaudited |
| StableCoinProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091f06081ac7083a27a966d466e04cafec486cda` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x229f19942612a8dbdec3643cb23f88685ccd56a5` | ⚠️ Unaudited |
| SwapperUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde032fdf114b4005e5320881b96246347d2b2d6` | ⚠️ Unaudited |
| SynthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a731710215fd4b437ad0d181650cba3ba8d5794` | ⚠️ Unaudited |
| SyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x105ba4f5fa3f2a7b71582f97b77036089a27debf` | ⚠️ Unaudited |
| SyntheticTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76d20a609a9dc010b9e6d479c360458b19bf3256` | ⚠️ Unaudited |
| SyntheticTokenUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc44f15dde7b39da0e687a86b3201b4c8e8ce8cc3` | ⚠️ Unaudited |
| SynthUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00518d6e7a7589e4de60899966e4ea6d5b311cd5` | ⚠️ Unaudited |
| TBYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce811b3ee51344bf9c2d3595dae56960f9b4a3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051e40d0d7639cfb611b37e6dde25999685ea7b9` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c510878b907d6ddf69e6057ad2f865f60fb7775` | ⚠️ Unaudited |
| TokenPorter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0cef6cf59e56a9427cef967f8dfb7bde06173b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-247421 | `0x2f4f85be85245c91779c3e36cbddf87b4ed73e3d` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x12e4844258f76c07c6e4437d6c9ba3df7d81c723` | ⚠️ Unaudited |
| TreasuryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0efbfe4979da0cb457a6a80db6f3da6861e120fc` | ⚠️ Unaudited |
| UniswapV2LikePriceProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247294 | `0x790e5f103ab69122fc5d9a3d5216fad11fe36acb` | ⚠️ Unaudited |
| USDPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278957e88bdba45442acc49e07ac143d893bafb1` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe804ebeff801a63de6e746c24ceb41a9864eb1c1` | ⚠️ Unaudited |
| VesperAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639c9e4563a0ca81a1fee7d6b48128daf2cf9531` | ⚠️ Unaudited |
| VesperBridgeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbb7b6190bb2721e2b658e315692bd98cc2b9b5` | ⚠️ Unaudited |
| VesperEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3783586abde50e7b03c171bd1062354641f661` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x285a45c29a738dbc5bc092daed3efa5c579f6dbb` | ⚠️ Unaudited |
| VesperEarnSaddleLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15911b4b6fbdb83967919e2e2cd6259d7e703f8a` | ⚠️ Unaudited |
| VesperIronBankXYStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d198221d0bb53a1f03491ae902eb0dac63828a` | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd744320abd3bd4445dc3c90c889391bd454d5b30` | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707c243b59fedf29730cd3d1025fbeeea0412075` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x951397286e4b78ae5827502ed494d7902d3cca8c` | ⚠️ Unaudited |
| VetroArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359902b1e60574e56248ecdc57c1df1f20982914` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4dbe3f01abe271d3e65432c74851625a8c30aa7b` | ⚠️ Unaudited |
| VPoolTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a57ed64e1b703a7250a04f0a90f5e0a116cd2e` | ⚠️ Unaudited |
| VPoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x582ebf6d677d54d54bd26980d076047fcb9e0446` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538` | ⚠️ Unaudited |
| VspMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e` | ⚠️ Unaudited |
| VUSDArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c17cc10ddc5b352f7c6c5dda33b07769bff310a` | ⚠️ Unaudited |
| WETHAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eb9ab57844d7f36ecef07568e30e13a6d9fb88c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247251 | `0x11ead85c679eaf528c9c1fe094bf538db880048a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247255 | `0x1887e76914699b839b97a0b69ff6f8b865745321` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247257 | `0x1a9551de6d56f7768398a82aa2186624a43d89e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247260 | `0x1f9732b84e22e936cfc2ff6f2d4994097dccc93e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247261 | `0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247267 | `0x3364f53cb866762aef66deef2a6b1a17c1f17f46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247269 | `0x3691ef68ba22a854c36bc92f6b5f30473ef5fb0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247271 | `0x45ac59746ea5eb74cf782855eca460a8adc8925a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247273 | `0x480e3178fa102df852643d47cabdb9adf5db0174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247274 | `0x564baa321227abf6b2e88a38557b6517077aad32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247282 | `0x5c574153b195ae284c063a84fb9c73d9fd37955f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247284 | `0x608249cc11728e3b978f7b27f1ea13f607d484ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247286 | `0x63ec45313149b1fa677b2b91cb93880232ef63ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247288 | `0x64351fc9810adad17a690e4e1717df5e7e085160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247290 | `0x691af94cc63b99bd36173ed6fb1ef5508b2774ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247292 | `0x6b53c16b94c1502c661140073ed522ac7dbc5e5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247296 | `0x7f9e66640fec701d9f46ed5ed69f925ffdbb4683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247298 | `0x8b4f8ad3801b4015dea6da1d36f063cbf4e231c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247300 | `0x8bd81c99a2d349f6fb8e8a0b32c81704e3fe7302` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247304 | `0x9e5bdf244a2fcc44f1bcbd3ae108be2a6de5e379` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247306 | `0x9f6a09dd0ba23b5ad4234677c831146366678ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247308 | `0xa77b145c7fa5b412eb8ad41d587be892b9c1efc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247310 | `0xab5eb14c09d416f0ac63661e57edb7aecdb9befa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247314 | `0xb93f48d3ea42a25f367fade092a6bb56dab5f7cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247316 | `0xbcfa955b023bca29bf48568f5107b73d5128a6ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247320 | `0xd4e20256096775d05c4852204ef911bb3653afad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247322 | `0xdaec887e37e86ea9b78852eb7470d70bbf266258` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247328 | `0xe0e7ac2b0884ba8a05190fb6ceaffadc7c3aedf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247331 | `0xe3944bef763ebbe4a9d49a7e12cf180c32f427db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247333 | `0xec37f547b27d8cb216b145744875a5861e3df6af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247335 | `0xf37982e3f33ac007c690ed6266f3402d24aa27ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247336 | `0xf43de8e0c2596e30c77d69d158842d1d9b937d7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247340 | `0x1610e3c85dd44af31ed7f33a63642012dca0c5a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247343 | `0x1e6039574bbf6b1f65650bc50b2bca8911fd9b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247345 | `0x25ee6ea9353e0ffa3155655f3df9140684671f36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247347 | `0x293aac1fef48b2ebf95d0cb3a31a7b219e8ece9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247349 | `0x33bca143d9b41322479e8d26072a00a352404721` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247351 | `0x4c6bf87b7fc1c8db85877151c6ede38ed27c34f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247353 | `0x4e71790712424f246358d08a4de6c9896482de64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247354 | `0x564baa321227abf6b2e88a38557b6517077aad32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247356 | `0x5a962457060445c1e60299d735c8539d61b4ba54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247358 | `0x5c18f45c4c62b0687425598579b026b90785c28e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247360 | `0x62316768ef954734445aab3273fd6077005ffabf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247361 | `0x6394152946dc3e0babaa474ee9d366ef31f959c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247363 | `0x696ee5a8c82e621eccc4909ff020950b146351a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247365 | `0x77256d49ab301c608f8ffa466936ccf84d07a41c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247367 | `0x8d8af8c47d9277ea8d3c8f5b0873a0aaf6f7f9d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247369 | `0x95dcff2bfd19af97267b8c9d516206dcc87eecdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247372 | `0x9dabae7274d28a45f0b65bf8ed201a5731492ca0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247374 | `0xabf27b8e4da617fff2e666f71c137d71cf75b5f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247377 | `0xb55ced4d5f7346a6601ebebddc98d0415c94095a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247379 | `0xc2c433d36d7184192e442a243b351a9e3055fd5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247380 | `0xcea698cf2420433e21bec006f1718216c6198b52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247382 | `0xd2e32323686de92411639d446396afa5e6149c28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247384 | `0xe7c65eaeb1ca920f0db73cdfb4915dd31472a6a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247386 | `0xebe91f52766dd236b6e8c1951f6a4a8bcc47a71e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247388 | `0xff11956de4c8c53fa69b0a219126cf2290e1620b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247390 | `0x2af13bf84f8b452cb86839330f514cc5c2899217` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247391 | `0x2f12dfb525564055b4a007b0b15ea5cd0bff986c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247393 | `0x30eac06d1e495411ee15cb59714eb9da29fc200e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247395 | `0x3a04bf2caca1345d475e0241b465c0ea4d4ce950` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247397 | `0x4372a2b9304296c06197a823f25cf03119d2fd82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247400 | `0x526728dbc96689597f85ae4cd716d4f7fccbae9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247402 | `0x6f622b037f9146bde102db84fc9152df1042aa98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247403 | `0x7ba6f01772924a82d9626c126347a28299e98c98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247405 | `0x7bcc1deccaa98d52bf89485f17a3e8607011cfde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247407 | `0x8b581d0013f571a792c3aa8af2a0366a309bf51e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247410 | `0xaedf96597338fe03e8c07a1077a296df5422320e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247412 | `0xc614136d6c5ab85bc2acf0ec2652351642d7f54e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247415 | `0xc7f2f79daa7ea4fbbf60b45b5d6028bde2453476` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247417 | `0xe1525aa6d21a172f4e0c4420ff68c73fd38b0cc6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Metronome Contracts Audit _ Revision.pdf](https://github.com/autonomoussoftware/metronome-audits/blob/master/Metronome%20Contracts%20Audit%20_%20Revision.pdf) | unknown | Audit | 2018-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17647] Metronome Contracts Audit _ Revision.pdf — no match: Audit report for Metronome project. Scope includes token, auctions, and autonomous converter contracts. All contracts are in monolithic.sol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Metronome Contracts Audit _ Revision.pdf | MetronomeToken | unmatched — not counted | — | mentioned as project name and in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Auctions | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | AutonomousConverter | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Pricer | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Formula | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | MTNToken | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | SmartToken | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Mintable | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | TokenLocker | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Proceeds | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | FixedMath | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | ChainLedger | unmatched — not counted | — | mentioned in audit revision | no |
| Metronome Contracts Audit _ Revision.pdf | TokenPorter | unmatched — not counted | — | mentioned in audit revision | no |
| Metronome Contracts Audit _ Revision.pdf | ITokenPorter | unmatched — not counted | — | mentioned in notes | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x9a2e53158e12bc09270af10c16a466cb2b5d7836` | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ebd53d035150f328bd754d6dc66b99b0edb89aa` | Metronome2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | MStableTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x93dc5cb35627a759848c7a7f0079ea7b49e435a5` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 122 |
| upstream | 2 |
| standard_library | 6 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [17647] Metronome Contracts Audit _ Revision.pdf

Fork inheritance lineage and inherited audits are included when available.
