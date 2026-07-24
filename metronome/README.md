# Agentic Audit Brief: Metronome

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

- Project: Metronome (`metronome`)
- Website: [https://www.metronome.io/](https://www.metronome.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, optimism
- Contract surface: 537 unique implementations (545 raw deployments)
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
- Outside the address book: 459 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 78 of 537 unique; 459 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/130
- Verified + Unaudited implementations: 130
- Verified by bytecode match: 0
- Unverified implementations: 407
- Unique implementations: 537
- Raw deployments: 545
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
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x023dcf516c349b615120ee731add909645ec35fb`; ethereum `0x884c34b865907648ffa2d6fdb8576291f3ecedc6` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32cbc628325eb5a3000d3182c72539c77eb5ff59` | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28817036451a4de34ac3df935a6762a2a1c60c97` | ⚠️ Unaudited |
| ESMET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fc4c09a67ce412faa316d03505d67aa27e2698` | ⚠️ Unaudited |
| ESMET721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x89c4aedcd10df1b19cf2d4b540af3fcad5d4c21a`; ethereum `0xcc15e7b7071a73ae97c86ce0f54f6ba3fb2d437a` | ⚠️ Unaudited |
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
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0fae214b4e023e0fd5005f1be17e03a5eeff6e56`; ethereum `0x955613704cf4f99e270e7a470c020f7af1379b95` | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31e41aa5eab8317187879c2f1a0e07de36260e72` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01491b3598a90c080b9429f9a86764fa6845ae65` | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39f7fc2ff177057bbb5b680a443e4118cc28af3d` | ⚠️ Unaudited |
| PoolRegistryUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x997f6dae65bb2de3824fd7425a82f93361b92ffc` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10c72fdedd8eb17916c362c33c0c453928761919`; ethereum `0x877d05e606b9b8a572f8fa084b62506741d05be9` | ⚠️ Unaudited |
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
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d6d94f53c2ecb24f3c632745a535a947ee43b97`; ethereum `0x4979585df899130aed4e2d945e89bbfeb01c51c0` | ⚠️ Unaudited |
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
| SyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x105ba4f5fa3f2a7b71582f97b77036089a27debf`; ethereum `0x782f0052e5039f18e357edcf5cf490b9c864d504` | ⚠️ Unaudited |
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
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x285a45c29a738dbc5bc092daed3efa5c579f6dbb`; ethereum `0x311b514e369eac678d25a6b54bdcdf621f8cee4d` | ⚠️ Unaudited |
| VesperEarnSaddleLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15911b4b6fbdb83967919e2e2cd6259d7e703f8a` | ⚠️ Unaudited |
| VesperIronBankXYStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d198221d0bb53a1f03491ae902eb0dac63828a` | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd744320abd3bd4445dc3c90c889391bd454d5b30` | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707c243b59fedf29730cd3d1025fbeeea0412075` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x951397286e4b78ae5827502ed494d7902d3cca8c` | ⚠️ Unaudited |
| VetroArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359902b1e60574e56248ecdc57c1df1f20982914` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4dbe3f01abe271d3e65432c74851625a8c30aa7b`; ethereum `0xd948ba1b50c474199db204ef128ba413c49fd9b8` | ⚠️ Unaudited |
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

### ❓ Unverified (407)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0078253265ca73eb2e81d20920365995f63f7bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x017cc576e12c700660f98481affdf46dcbf78a1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x102507268748cca215871f571f0bafc7f5842428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fde8c254a100674439d707628569686c8580fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1113e626282c6a87e568f244a00513e0bf7f1047` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247251 | `0x11ead85c679eaf528c9c1fe094bf538db880048a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x122deb548bdfc9c3d40ad1dcb522674bcf1cf4e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12fdffb52297a13a29041299ad43458ebcfc89d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1425188a9c286ad3cce85eef40d93ad1259bea5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161fe0ca2152693e72d8f7f5761a7bd391d08050` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247255 | `0x1887e76914699b839b97a0b69ff6f8b865745321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a19a413b3343468c7007e18fa553cbb3f02872a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247257 | `0x1a9551de6d56f7768398a82aa2186624a43d89e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cacd2d64edccd5df47824a0b85a1dacca4b7102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f39f9639b1a5a32bcd896c2b68128f7b64f72fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247260 | `0x1f9732b84e22e936cfc2ff6f2d4994097dccc93e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2005e43c86cefe594c1e8e7d72077dadcda17994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x206b88b20d9b2709153ab596add007b21124eb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210e1b607f995f687bc6d1a1574dfcdf1346f585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2377e249494645394d5406e2b25b7e8fffd54466` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247261 | `0x24f2d1ac81ecfd8a808001a97349185ef1bcf4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d80c30884cba6cd6e5d801ac74ca41789f8b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27f4de8f9bb7a47a6550508573036a5547addaec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293aac1fef48b2ebf95d0cb3a31a7b219e8ece9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7534a2a4293068931e7d287efbce7889031794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b70e663ba015c59556b6186822d90159d5f7c16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cb31dccb77c7f8099e0b83fc241de9d6c406046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e372b09201b58fe83be9ef2eba1b1d0f9c73a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e483597c86f7aa81cbc0015ace371c0ff711f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312f8f1df85a193c9ff1bbd89da3721b12313764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247267 | `0x3364f53cb866762aef66deef2a6b1a17c1f17f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f081a0f0240d0ed7e45c36848c01d7ad8038e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x341c2abe8901353e12b955b1f3462afe7ba1e27d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x347eacc4710eb045ccf0c56c0635d81840689847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34c4837e4a996287d87fa446e1f3bac0d25e445a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ca6624e88898eb909a5b81195ae26a2aa9aa3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247269 | `0x3691ef68ba22a854c36bc92f6b5f30473ef5fb0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x377f0a6f7c64cb5ce5004c25892bc4127ca2b2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ff84f9ebe44530074142de42469ae40051b92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b889c2176dca3d5ba940487657998ef34d097b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b98566f90119b87205ee64cb9f2da37e7b3fefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bc3aedf492df5d3f2dce7cbd5ad38a06f415e36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c043951c8ce42d0a484425c8a945b2bb9a6aca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c672d92b547ac60ede36640aebd312d868ff572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8ff08ad701cd411392bc99ad32b6239218c42a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f18ab22298b5faca652c267bf0b6a5bca078bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40a544b0d4535a11fc7d1ebfffe904751258eea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420ec761a5422cc97655a2900f3ea67905073d44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bcd2f63c1bea571d96a127724d5be53e14c6be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247271 | `0x45ac59746ea5eb74cf782855eca460a8adc8925a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46667f3771514e7d76c3948acad6dda378db63f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4681a847863f1d1a584c298ae5a7ac4343704e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46b13e7e8f1aef156973ae3ed975e738cafb08c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247273 | `0x480e3178fa102df852643d47cabdb9adf5db0174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x486b92c950dc7abd78c6aba9e3ffb0f7040ec1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4889f992220345dc3e4375c933ab441e5513f9c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c7f02414bb98adeebea86f8b2c014b1942f470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac736761cad443931e3f8f2ec54234e8c984a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c02b2f1b003b1a454a2f401203bed2499798b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c6bf87b7fc1c8db85877151c6ede38ed27c34f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e71790712424f246358d08a4de6c9896482de64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7b98af072df0c50ba1e775a9a28828ea23a2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1d2b92ef396a17b25234238644e14e9e16b3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f746baa8775a5cb7c69bd79b4d4ebc203cfefe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50361afaafd269c1e9b74866a14579bbc512a41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5079e29313b3d9021bc4a82194b6bc32abe8315b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x516f93d90afdf3d663db1fe35c05727736e900fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x530e54138266f6e3eb7b3b828c2ed98c6cab151a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5323427696cbce0e15d2e21627e8aa646a5f5d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53ec1069091d819f0f25236c095ba6f76f6a3ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542ffafff05e076478b62871f7ff2e156fa3d919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5524263bffaa482d7e7ea922ba1602a825833ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x559fe5aef2c472100d77bd7184565ddec06d09d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247274 | `0x564baa321227abf6b2e88a38557b6517077aad32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ab1b9d07b640427bc5d42003aeb7bdff0ee1cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c18f45c4c62b0687425598579b026b90785c28e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247282 | `0x5c574153b195ae284c063a84fb9c73d9fd37955f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec16ffe81107ee403f1a95db184c4caf351f7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee76b705c636ab5ea26e84af076b0a3daa6de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6c71f41232a1aeae2623c4ac7b111c38406834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604879c83784b1aabd1f8e00d90bafe4b1f06c14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247284 | `0x608249cc11728e3b978f7b27f1ea13f607d484ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60958e4c8d39fdd8d0f631fd942870851afa3414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618d0b1f16b87de1231cd9ec224700046aad9b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6394152946dc3e0babaa474ee9d366ef31f959c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247286 | `0x63ec45313149b1fa677b2b91cb93880232ef63ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247288 | `0x64351fc9810adad17a690e4e1717df5e7e085160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650cd45dedb19c33160acc522ad1a82d9701036a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6671745a4ff7a3358beae215495040179a881942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6674f7eaafabed615b7261174e95e8a501bd05ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247290 | `0x691af94cc63b99bd36173ed6fb1ef5508b2774ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247292 | `0x6b53c16b94c1502c661140073ed522ac7dbc5e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d7d6db99dbb341b32b48b6248112304c3018578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc34784c84b74dc928b5977812f4603e56def93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd3bdfb588df6f37ed9cba3bd17b43d1208707c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f57db31ae6d62f75297c0f542e1567e0d41650a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70845de4d1cc8fa169c42574e329a298ebcf44d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7094d850782bec83b2047994860fd8193b1df4e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72cf2fd2f18902ec26a50f77635278e6fca605d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751e5e3f4b22641d693593cff60932980386d23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75bd920b39ecd63817eb9daef807008b938cefef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a2111ea9c7289f48f98da653386198eb54be67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d20a609a9dc010b9e6d479c360458b19bf3256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf63dc91f68e0adf5692acf17cb632dc17417bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cebe35b46b8078e7ffbf754eec4a48653c47524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7efc392f66af226903f8952dce674f15c24b560a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f58bb64aa5138a5d0147024f5e3474321e5f66c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247296 | `0x7f9e66640fec701d9f46ed5ed69f925ffdbb4683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ff95072875ca9cd735ac57f29bf71b5e8ac0969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82539b0448daed2d7e488155c8364797b8c92aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858a0a2be8f117e8f25bf3c7b8da49ac8bc1bd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85cbb45f819704a0b2ff8e8fd8cf1c3983244777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8642f7b63824c64453f38da0c0d8e75443431c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a65a97d96b48007cfd01a501ab0daa62c6bbf0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247298 | `0x8b4f8ad3801b4015dea6da1d36f063cbf4e231c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247300 | `0x8bd81c99a2d349f6fb8e8a0b32c81704e3fe7302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d8af8c47d9277ea8d3c8f5b0873a0aaf6f7f9d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e697a12ce228823e9ec58de186c94e2606a4020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f6cfbf5aff373f0ad7e0869c348ec934950a5b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906cd020ed17e5a82ebc32a7ca070ea27848e9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b8450a582814d504caecd07ac9d138cfd728f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90bb3e3aa5fa88f0a83dcb9485f65d2592f4307e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9105a793a24de69b1ac6f2051036d69670843ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91f92f75e547db066c39dea4d4a8b45f4b8ede4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x927367b4cecb2ac2723488411eae967eb70393d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942fc516b6ad30e8b6c55d3ee00a93b916b800f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945e05d2f519908c18758a905e5d31dd94892bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x952a7dfa706806f1d744ff150dd231c0616e33d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9585d3706758b251e37541d808e3ea11ead5b819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x965498a6888a60c2e799679cedc64e0890890e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968563eed04e0289ccc79d7029bfc79f040605f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9691612836c3cf2268c73429f3cbaef371cdd130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9697407fe3c1882e5a3c13f2964968f201453b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96f82d791580deef662b8d552f21b4ac14a8cf80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99bfef73a7935492a19b63526d983e21eb37b12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c5eda88fe62805d13310c766a9ff9696960442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b62d5e13250d41cc00b61c6006d413ce5f48428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dabae7274d28a45f0b65bf8ed201a5731492ca0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247304 | `0x9e5bdf244a2fcc44f1bcbd3ae108be2a6de5e379` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247306 | `0x9f6a09dd0ba23b5ad4234677c831146366678ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f71f7e34567c25672ed6b6e51b5da602757b8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f9dacf7a44c961b747a550631a6086e71bf696b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d7046fdda8ec7758b687b88b6803ef7a9aa3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2220a2f080c85dff67acdfab4f9b653adde4a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa28d70795a61dc925d4c220762a4344803876bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29839b1f8b7ac6659dc79ae05183c62a01f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ae3ad4b6c580f8d28aa67b7502a7fe4e89dce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa464bc3760d0fa7426eefbfd76117f1d014d0325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4afce93028307d09dcfae9f66f04897042d47e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa574a43c881639cb173d355413c187e6d4cdc67f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a4db8d44769c0420742a750fc8a5c4ec077585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d77cc044bc3f32d055bb993e9cc8e9bdab9a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa716249b1f06483d08c2073a46e4308b9539ae13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247308 | `0xa77b145c7fa5b412eb8ad41d587be892b9c1efc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7c21fd948c44830541b8561b31abde09cc32719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d20cab70a24a50da1972e0a458e1dafbf9fcda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8868579c6152bbbb8db46606354b56bfd8819b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa889d4993c44ea78e2c87bc5897c74977a126dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa924b6725f7ea2650c6e3f09eb0d36a76486c5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9515623514532b526674b49fc3899024fc71695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa958a7ecc4996f69ab91d09dd08d5aea75837126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa59006ae8dcfc7137a352e6142b39c2dee8622e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa7584c7d375694b4351e520af1097d9a36fcee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1231f553206916c3e582de91aee08dd52169b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247310 | `0xab5eb14c09d416f0ac63661e57edb7aecdb9befa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac6369fa74dc3585a85c5efcd59f869fc01fb90d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacca7cd8c908b6acbc488c8990a22a6a41a4638d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad8b320245c2008551803e184e181a935e1523cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb01f1a5041e6d2a6499e0cff1ee5cb3e65db6fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb298aa5b1b8540413f4804a6eecd5074f67a129f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3fa4a7323b86fece91639eb8f312fed4bf01792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb412e98f1ec54b0161aa81d6846c96a2440ba854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5144e9ead98d7c0b47b7549f3b2e0b89eb585c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb63e995a3b986596a1df30c09d8eceb0aa652aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d187ce5c5b172984cd1544d1679eacaf107aec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247314 | `0xb93f48d3ea42a25f367fade092a6bb56dab5f7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb975a3813aacc7c9a8b61bff5c3a0276154dda2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e4632b141856308d6f811589f04b7abf71b8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5c18708ca81782133ed995b26131f96bb9c394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb668c34e57da9e3f99b29e68e1d5b1bd21b7971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc50dafd976d4bd7854a8329646fb88d7fa1018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcb6081c01e2d2c1a3a2f871cb949e762de0fe29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcfa47099dcce482e90ebd75a53f4bf012ca30ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247316 | `0xbcfa955b023bca29bf48568f5107b73d5128a6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf903d93f5625950670f487db4d9157062474fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf2e3f32422f8f770f04663fb56a957130940c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf571976e411cbec9e5a3bce817ae9e4fc570115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfeb32a40a0678208c28cfe4438bcbba96bbc4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00a3923c0486f56596d182e95656fe31a6ee134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc070472392fb85938368d3caeb9ba12f43c495dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc097a77eb6831957508050c6645423253661b3ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1efbee3a8dabd30d1d789138bc6ea43a399c335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2228b31ed970e9eaf8acd40e3dade805937cc7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ffbf93b39e2f3b082c640fafc922527750f48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6be0eea986acfcd6379cf080b7b766b358572bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c05aec2f1c353d3a9d8d543fa7dc756806c477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78cbc990cc75db5be1cc80511747fcc9c4b8ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8697de7c190244bfd63d276823aa20035cb5a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc882316b15b0dec45fdb4550167cdaf7d58433cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca5a5b83fc6ed8577102e0b3b19379683f33b346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7e22e8c8fa860ff6cd7a90c34e466ee0bd950c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3831814de36d631f6f0a6ba7d4622afb088639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce91056e4c9a12871d66fa17f2ff2f9237fdf13e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc7ed8003b2e21098fdce4c125bbf4084b0bdff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd01681ed053be94de5ba3b0a3ccaa3e74abc5de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0aab6695b8ad921baa1ac8821e54d062c400e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd11d9b4c0b3bd5ec324123b241fb07af19caeac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18709acc6db21c7db15fc077154dd6c2e2076f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd25ee8509302bd23dc11d1ab867fe995cdd7b531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2a807d8bfd8a8666fa22e2d76acd38bf893f244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bd28a160cc2ae5ad5a24513173fc109929c85a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4c12f84a88f5078f42e79452138920c2b542580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4de85da9f2ca8c7c63dcdb417d0b5ce65a6f1be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247320 | `0xd4e20256096775d05c4852204ef911bb3653afad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd55d884fd3f9adc545a24fb491a0a93fef3028fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd66b769b99714e49d599d6ed6bc46a01fa409661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b25b33bdd66a021c8385a85c3fce4d331a9f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88e30794d3baa5accedeabd08ed76b8a968a720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a7ceccecbeded9f5350f4ca8faf55ab92f3390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda09586ff22f4521dabe2538692d8114bab294da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab66fd2daf2935ffc2e1f1828e61d170166626c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247322 | `0xdaec887e37e86ea9b78852eb7470d70bbf266258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd9f61a85ffe73e41ef889817972f0b0aae6d6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe002c5c9ad8f533c17c25df21c453f31849e0ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08acc210b828588947cab3ec4dc8d4f4fabd828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247328 | `0xe0e7ac2b0884ba8a05190fb6ceaffadc7c3aedf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe19fa8bfc59c216f2db9cc9e6fcf73a1cda41c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2131907e2a999d60e765660e96decca0d4372d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2a466df120fb847520763461d99c22ea5ba8cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe32ad0e671a9ec7cdeec85c6664466efb5548682` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247331 | `0xe3944bef763ebbe4a9d49a7e12cf180c32f427db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cd926a63d821820b9700be717096c8369e17f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4dfd8bf9fa718af957a808b9bf8ec3fe5ed31c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55744ebb196d0e4ddea70204142eaf517ef005a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe647951b8e67247643abd45b5acb80096f561624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69d411ebb798638cd9aa4c668d48f09378d6fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76517fabb230eba6e2491dd75bf6c33237556c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8109320737bafa017ee6ee2e22ac4d72ca7f26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f4d8cf2cc7fd70d048b6188bc1d17e6a58245e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe908c4bf65f9d02d98eaed6030111305211ef306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90c137d296e08b4a135f6423121a135fe7405ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea454c961287222150780f656e3f7e27dfb50038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1df74c87875be3eef1a2407aa906665bfa5684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeba312e290444cd4bb5d0b127a869322c37d5d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebf4c7e909157db518475b8d3b073d54f8a2023d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247333 | `0xec37f547b27d8cb216b145744875a5861e3df6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecd7790fd35e5f529a63cf3e058b555f2ff23234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xede48867af081d747242944f2f3c747974736d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3d01b4de5496efa5642b4d8f29f5b98cfe6950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1010d8994c45429ea635bb8f8db10b89362f54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1543e97c79b3581a2ed60184f5dac840efb20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1886aa6f728d9006141644207ebc7f4090c17ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247335 | `0xf37982e3f33ac007c690ed6266f3402d24aa27ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3d0cdc22672ecf1eda6438bfa88126ac382aec6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247336 | `0xf43de8e0c2596e30c77d69d158842d1d9b937d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf538f18c3cc1cdb70aa054cc3d0c2c2262ba95e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf54f2d9eeb59746219e79050e9018b16d40133ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ae3095be887004a5df20ef6f2786563836acca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6cd68d27cdddf12de9226ecfa9fcbb84e86ace9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf86472575d9c56b2034651870f977787b25bd807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9eeae6a02c91914f046331bf2dc4c4a9ca7ef51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb9b6481aa3c4b55db99db42ab9e03482e1f7d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc53fe3d426dfe6ff891f0351a8fca7f5dc8fffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc667c88bc4a114b10235c9085601869d0820ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc8acf5ef1e8839ec94151740cfed95d7e579afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd07a07505f73c63a6f8ff03b7474a90c0b3c5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd5216426b516008137e9b7ec33d2b0931690773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffdf74b401dcaff0b051fcb8ced890663fc042e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0557b0a016166fa113cc090869c3d98bbfe911fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x119b9ce7b2087153d02c8aa8f7dc914bb7e5fb5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247340 | `0x1610e3c85dd44af31ed7f33a63642012dca0c5a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a1d1a249cf3a5fb2c4f981a9eae26360ebd1336` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247343 | `0x1e6039574bbf6b1f65650bc50b2bca8911fd9b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22c799230d837958fc24920f8da9bd1254a5538c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2355c18b6bb0601945f42feb2f13287af8baf74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25dcb9f75b4e401606ccdbc8db121e444f805f19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247345 | `0x25ee6ea9353e0ffa3155655f3df9140684671f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x275468d5fe0e128868afc0b60723751d821e8815` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247347 | `0x293aac1fef48b2ebf95d0cb3a31a7b219e8ece9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ed29cc067a0df094b8d2d08e0698e511ea72c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f6ef744b1f47f5a4e91213b55c69dab10c6d535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x313c7563d8520df9543e23641d2bc5a9159126aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247349 | `0x33bca143d9b41322479e8d26072a00a352404721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37280b28008d104f5490507c7b8441ec54722e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3cfced99229deb4393847758b6feae55c5fe7ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x402272715ef46163fdbb06b3367f2505045b5200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x407a10a43e2fd5a75dad87829c47feab9f104e5d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247351 | `0x4c6bf87b7fc1c8db85877151c6ede38ed27c34f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247353 | `0x4e71790712424f246358d08a4de6c9896482de64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4ec48afce52b1ed5999ac459965d888dfc37e290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5130fe2f1be4ed7436c42f9daf927d4ef5efe937` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247354 | `0x564baa321227abf6b2e88a38557b6517077aad32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247356 | `0x5a962457060445c1e60299d735c8539d61b4ba54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247358 | `0x5c18f45c4c62b0687425598579b026b90785c28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61185b0da42b631874f5d871f672940bfb2a7ecd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247360 | `0x62316768ef954734445aab3273fd6077005ffabf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247361 | `0x6394152946dc3e0babaa474ee9d366ef31f959c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247363 | `0x696ee5a8c82e621eccc4909ff020950b146351a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b53c16b94c1502c661140073ed522ac7dbc5e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d0624449b144fe1e6fa8ccb3e21fb3af55dc831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6dd3bdfb588df6f37ed9cba3bd17b43d1208707c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247365 | `0x77256d49ab301c608f8ffa466936ccf84d07a41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82a9c9f5ffe06f2e5f403b8f90e13388c6c07085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x839a9bd5e17442aaef2aa1ee23a031ee6b84b7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x850c8d57f6c5fef42d9a44df9e99feaa807e4ccc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247367 | `0x8d8af8c47d9277ea8d3c8f5b0873a0aaf6f7f9d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247369 | `0x95dcff2bfd19af97267b8c9d516206dcc87eecdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9927a742001fff5763100542eff5bacba9b078d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247372 | `0x9dabae7274d28a45f0b65bf8ed201a5731492ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9fba263f1f95c73cdd2f7a0958e0a116edf6be25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa8ed06e96eafd4b89a66728434722bb4e8a2cbba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247374 | `0xabf27b8e4da617fff2e666f71c137d71cf75b5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0175d9223f9662a616415f76b4c667f5d6f4500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb220f093e308ee702a8f6e0740712bba5ea65fa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247377 | `0xb55ced4d5f7346a6601ebebddc98d0415c94095a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd09366bc8fba86fa5391d5017806b49b4f1710b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbdf0380e921b4c0d73b9ef86a5b4c08869acc23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbfeb32a40a0678208c28cfe4438bcbba96bbc4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc070472392fb85938368d3caeb9ba12f43c495dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247379 | `0xc2c433d36d7184192e442a243b351a9e3055fd5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc89b9167077f2cdb54932de1d105b64da4e559e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd618dec2ecbd3688672cf53a90425211f38283f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247380 | `0xcea698cf2420433e21bec006f1718216c6198b52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247382 | `0xd2e32323686de92411639d446396afa5e6149c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdcd6dae2440ddb14995e3d27c7d2eee639695eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdfa805d2b9c3cd7cfe546b6a8530a5ebe4ea7307` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247384 | `0xe7c65eaeb1ca920f0db73cdfb4915dd31472a6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8322e75d1e7a38e160ae4c6ca122ea3cea460cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247386 | `0xebe91f52766dd236b6e8c1951f6a4a8bcc47a71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xece3ee44388d4957782445a90290ba41ca3e32c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeea83856a4ca19cef13adbec1cc14bf245ff90e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf02480fcfab8b6c9a37236f71d5358b4c88a2e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf538f18c3cc1cdb70aa054cc3d0c2c2262ba95e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf708bc4a9a8fa089d5bb0558eb6ac581b63658d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb02e32b29a44a0ef789580ad7806d76f33c52d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc0c88ee4f41e15499808a48965eb541b4d57f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfd9ea99b89ed42a4ef0bcfdeeecccb51b700f1b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247388 | `0xff11956de4c8c53fa69b0a219126cf2290e1620b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xff826655c76d38274bf1107b54a45127ca5feb38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a9e6d0303ec473bcfac0720b4427045317fd6d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d62a9c4a8e7d38e4d78b40de8278786f09696bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2144b696beba98f077531e96023a7df821bc4586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a62975b1dc4f6f8201e15c97e400f51724c8158` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247390 | `0x2af13bf84f8b452cb86839330f514cc5c2899217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b63a64693fb0ade57ac5c364861c14a56f427bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247391 | `0x2f12dfb525564055b4a007b0b15ea5cd0bff986c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247393 | `0x30eac06d1e495411ee15cb59714eb9da29fc200e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x329846f9e19daa7fd9844065a62ed01bcf63cf69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3506b5efea8d0719e47cdcabc81b6e60b5fa73b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247395 | `0x3a04bf2caca1345d475e0241b465c0ea4d4ce950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3cfced99229deb4393847758b6feae55c5fe7ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e5c739dec75ac5b8bc11d763b02b2a777046802` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247397 | `0x4372a2b9304296c06197a823f25cf03119d2fd82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247400 | `0x526728dbc96689597f85ae4cd716d4f7fccbae9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a91b77f22a6f2b48dc5b8c69715dfc2d557fbd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a9f5fc7ee767eaa43688c1822f5352ba19fe735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61129aafaa83dfd817fe827d7570ee478ed5a4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x631e4efe520152b9aa98aca50739a7f6a8f21319` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247402 | `0x6f622b037f9146bde102db84fc9152df1042aa98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x747b4932d6166c30ea34f425498272e65d99ea67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247403 | `0x7ba6f01772924a82d9626c126347a28299e98c98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247405 | `0x7bcc1deccaa98d52bf89485f17a3e8607011cfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c18646ac536d5186b6f6fc47d593e4127216c39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x850c8829395400e57919364762a0ccab918185ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a5b4719d6020d0823cd9c2dce509f1a520c3ced` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247407 | `0x8b581d0013f571a792c3aa8af2a0366a309bf51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x913ece180df83a2b81a4976f83ca88543a0c51b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x934ab2262c6258fafd619cb63be7d89b20c19633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94020a4636bcdca343014988114d755984b44175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98dac76f26c6b067eb9fc13714b068d787c899de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bf24739310fb7f79af48ecc38557e2172469eee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247410 | `0xaedf96597338fe03e8c07a1077a296df5422320e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0e9bed6fa74b7183583959ed3ced760db4fa4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd700f301dc8e644dc074023369fe5bdf6051b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe1edc53663212a464ddc37f02f381a116d3738e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf6ccbbfa9d488a944e7637531102b490112ad07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247412 | `0xc614136d6c5ab85bc2acf0ec2652351642d7f54e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247415 | `0xc7f2f79daa7ea4fbbf60b45b5d6028bde2453476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd493db09ee4eadddb6036ea3af49f093017a9792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd7a192f7cfc7cc28275c7c0fe81359913d64e6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd911e197f8e4797061817ddbf11a93d8d4573d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb25df8da72501472938220eb834e4998e67f2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb9bd9eb1cdd9ae62a2e9569075a5154296cd632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddd9864c68072a4723889644b5e7075452718ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf2aa7026bae7e131d7d5af30345173843d22afb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247417 | `0xe1525aa6d21a172f4e0c4420ff68c73fd38b0cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7eb345866e07201f0dfe9afb3a8f0637d998fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecfe7634abcd2140bede1fb34753a7f5d412c881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed0ab2997a87d738e630eb9c287bdd0ee6f059d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed6673f4bfadd4d269be68c7dbcc516218c0bad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf014336fd2e817b1e7f62bad1aef5908809c9c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3ecd63bb9a4934c85026f8924b49ed7deb69985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3f1b456fb3a61d96024dfbb8ef9be510b689ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf55d146d5a496d6b5576a1661e8861cf5c5fff9f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 344
- Live contracts: 0
- Unknown liveness contracts: 344
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=344

Showing first 200 of 344 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0078253265ca73eb2e81d20920365995f63f7bf8` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x017cc576e12c700660f98481affdf46dcbf78a1b` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x102507268748cca215871f571f0bafc7f5842428` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x10fde8c254a100674439d707628569686c8580fa` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x1113e626282c6a87e568f244a00513e0bf7f1047` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x122deb548bdfc9c3d40ad1dcb522674bcf1cf4e3` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x12fdffb52297a13a29041299ad43458ebcfc89d7` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x1425188a9c286ad3cce85eef40d93ad1259bea5d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x161fe0ca2152693e72d8f7f5761a7bd391d08050` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x1a19a413b3343468c7007e18fa553cbb3f02872a` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x1cacd2d64edccd5df47824a0b85a1dacca4b7102` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x1f39f9639b1a5a32bcd896c2b68128f7b64f72fa` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x2005e43c86cefe594c1e8e7d72077dadcda17994` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x206b88b20d9b2709153ab596add007b21124eb26` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x210e1b607f995f687bc6d1a1574dfcdf1346f585` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x2182c3e3b7a4399f69ea8da7c52e9d080e9c43ad` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2377e249494645394d5406e2b25b7e8fffd54466` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x25d80c30884cba6cd6e5d801ac74ca41789f8b2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x27f4de8f9bb7a47a6550508573036a5547addaec` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x293aac1fef48b2ebf95d0cb3a31a7b219e8ece9e` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x2a7534a2a4293068931e7d287efbce7889031794` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x2b70e663ba015c59556b6186822d90159d5f7c16` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2cb31dccb77c7f8099e0b83fc241de9d6c406046` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x2e372b09201b58fe83be9ef2eba1b1d0f9c73a25` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x2e483597c86f7aa81cbc0015ace371c0ff711f77` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x311b514e369eac678d25a6b54bdcdf621f8cee4d` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x312f8f1df85a193c9ff1bbd89da3721b12313764` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x335e4ba7152c96dd19db8c7138c55b8bd74ea53a` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x33f081a0f0240d0ed7e45c36848c01d7ad8038e9` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x3416311bbaed3cf69c494c2badf5ceb4b201e4f9` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x341c2abe8901353e12b955b1f3462afe7ba1e27d` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x347eacc4710eb045ccf0c56c0635d81840689847` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x34c4837e4a996287d87fa446e1f3bac0d25e445a` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x35ca6624e88898eb909a5b81195ae26a2aa9aa3a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x377f0a6f7c64cb5ce5004c25892bc4127ca2b2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x37ff84f9ebe44530074142de42469ae40051b92b` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x3b889c2176dca3d5ba940487657998ef34d097b9` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x3b98566f90119b87205ee64cb9f2da37e7b3fefa` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x3bc3aedf492df5d3f2dce7cbd5ad38a06f415e36` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x3c043951c8ce42d0a484425c8a945b2bb9a6aca1` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x3c672d92b547ac60ede36640aebd312d868ff572` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x3c8ff08ad701cd411392bc99ad32b6239218c42a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x3f18ab22298b5faca652c267bf0b6a5bca078bac` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x40a544b0d4535a11fc7d1ebfffe904751258eea6` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x420ec761a5422cc97655a2900f3ea67905073d44` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x43bcd2f63c1bea571d96a127724d5be53e14c6be` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x46667f3771514e7d76c3948acad6dda378db63f5` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x4681a847863f1d1a584c298ae5a7ac4343704e8f` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x46b13e7e8f1aef156973ae3ed975e738cafb08c8` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x4762e77b8f448f0755eca2b6be6cbcd4db0f28a9` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x486b92c950dc7abd78c6aba9e3ffb0f7040ec1bd` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x4889f992220345dc3e4375c933ab441e5513f9c1` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x48c7f02414bb98adeebea86f8b2c014b1942f470` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x4979585df899130aed4e2d945e89bbfeb01c51c0` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x4ac736761cad443931e3f8f2ec54234e8c984a99` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x4c02b2f1b003b1a454a2f401203bed2499798b54` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x4c6bf87b7fc1c8db85877151c6ede38ed27c34f6` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x4e71790712424f246358d08a4de6c9896482de64` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x4e7b98af072df0c50ba1e775a9a28828ea23a2c5` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x4f1d2b92ef396a17b25234238644e14e9e16b3fe` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x4f746baa8775a5cb7c69bd79b4d4ebc203cfefe0` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x50361afaafd269c1e9b74866a14579bbc512a41c` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x5079e29313b3d9021bc4a82194b6bc32abe8315b` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x516f93d90afdf3d663db1fe35c05727736e900fd` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x530e54138266f6e3eb7b3b828c2ed98c6cab151a` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x5323427696cbce0e15d2e21627e8aa646a5f5d83` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x53ec1069091d819f0f25236c095ba6f76f6a3ff8` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x542ffafff05e076478b62871f7ff2e156fa3d919` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x5524263bffaa482d7e7ea922ba1602a825833ca7` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x559fe5aef2c472100d77bd7184565ddec06d09d6` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x5ab1b9d07b640427bc5d42003aeb7bdff0ee1cbb` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x5c18f45c4c62b0687425598579b026b90785c28e` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x5ec16ffe81107ee403f1a95db184c4caf351f7a6` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x5ed27617cc2fb7b4faab67ed30efde9cc7d84527` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x5ee76b705c636ab5ea26e84af076b0a3daa6de99` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x5f6c71f41232a1aeae2623c4ac7b111c38406834` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x604879c83784b1aabd1f8e00d90bafe4b1f06c14` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x60958e4c8d39fdd8d0f631fd942870851afa3414` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x618d0b1f16b87de1231cd9ec224700046aad9b2b` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x6218f149c5bbcc719e4fddc60c9e8f0d97e633da` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x6394152946dc3e0babaa474ee9d366ef31f959c0` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x650cd45dedb19c33160acc522ad1a82d9701036a` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x6671745a4ff7a3358beae215495040179a881942` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x6674f7eaafabed615b7261174e95e8a501bd05ce` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x6d7d6db99dbb341b32b48b6248112304c3018578` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x6dc34784c84b74dc928b5977812f4603e56def93` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x6dd3bdfb588df6f37ed9cba3bd17b43d1208707c` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x6f57db31ae6d62f75297c0f542e1567e0d41650a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x70845de4d1cc8fa169c42574e329a298ebcf44d8` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x7094d850782bec83b2047994860fd8193b1df4e1` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x72cf2fd2f18902ec26a50f77635278e6fca605d9` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x751e5e3f4b22641d693593cff60932980386d23a` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x75bd920b39ecd63817eb9daef807008b938cefef` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x76a2111ea9c7289f48f98da653386198eb54be67` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x76d20a609a9dc010b9e6d479c360458b19bf3256` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x782f0052e5039f18e357edcf5cf490b9c864d504` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x7bf63dc91f68e0adf5692acf17cb632dc17417bb` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x7cebe35b46b8078e7ffbf754eec4a48653c47524` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x7efc392f66af226903f8952dce674f15c24b560a` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x7f58bb64aa5138a5d0147024f5e3474321e5f66c` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x7ff95072875ca9cd735ac57f29bf71b5e8ac0969` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x82539b0448daed2d7e488155c8364797b8c92aad` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x858a0a2be8f117e8f25bf3c7b8da49ac8bc1bd1c` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x85cbb45f819704a0b2ff8e8fd8cf1c3983244777` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x8642f7b63824c64453f38da0c0d8e75443431c2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x877d05e606b9b8a572f8fa084b62506741d05be9` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x884c34b865907648ffa2d6fdb8576291f3ecedc6` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x8a65a97d96b48007cfd01a501ab0daa62c6bbf0c` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x8d8af8c47d9277ea8d3c8f5b0873a0aaf6f7f9d3` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x8e697a12ce228823e9ec58de186c94e2606a4020` | non_address_book | unknown | unknown | unverified | n/a | `0x98579428140acad902f30ea2731a49396cb0284f` |
| unverified unclassified | UnnamedContract<br>`0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x8f6cfbf5aff373f0ad7e0869c348ec934950a5b8` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x906cd020ed17e5a82ebc32a7ca070ea27848e9a8` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x90b8450a582814d504caecd07ac9d138cfd728f6` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x90bb3e3aa5fa88f0a83dcb9485f65d2592f4307e` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x9105a793a24de69b1ac6f2051036d69670843ee9` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x91f92f75e547db066c39dea4d4a8b45f4b8ede4a` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x927367b4cecb2ac2723488411eae967eb70393d4` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x942fc516b6ad30e8b6c55d3ee00a93b916b800f1` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x945e05d2f519908c18758a905e5d31dd94892bd5` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x952a7dfa706806f1d744ff150dd231c0616e33d1` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x955613704cf4f99e270e7a470c020f7af1379b95` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x9585d3706758b251e37541d808e3ea11ead5b819` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x965498a6888a60c2e799679cedc64e0890890e40` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x968563eed04e0289ccc79d7029bfc79f040605f0` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x9691612836c3cf2268c73429f3cbaef371cdd130` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x9697407fe3c1882e5a3c13f2964968f201453b59` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x96f82d791580deef662b8d552f21b4ac14a8cf80` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x99bfef73a7935492a19b63526d983e21eb37b12e` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x99c5eda88fe62805d13310c766a9ff9696960442` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0x9b62d5e13250d41cc00b61c6006d413ce5f48428` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x9dabae7274d28a45f0b65bf8ed201a5731492ca0` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0x9f71f7e34567c25672ed6b6e51b5da602757b8d0` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0x9f9dacf7a44c961b747a550631a6086e71bf696b` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xa1d7046fdda8ec7758b687b88b6803ef7a9aa3ee` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xa2220a2f080c85dff67acdfab4f9b653adde4a6f` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xa28d70795a61dc925d4c220762a4344803876bb8` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xa29839b1f8b7ac6659dc79ae05183c62a01f5a4a` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xa3ae3ad4b6c580f8d28aa67b7502a7fe4e89dce3` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa464bc3760d0fa7426eefbfd76117f1d014d0325` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa4afce93028307d09dcfae9f66f04897042d47e7` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xa574a43c881639cb173d355413c187e6d4cdc67f` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa6a4db8d44769c0420742a750fc8a5c4ec077585` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa6d77cc044bc3f32d055bb993e9cc8e9bdab9a29` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xa716249b1f06483d08c2073a46e4308b9539ae13` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xa7c21fd948c44830541b8561b31abde09cc32719` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xa7d20cab70a24a50da1972e0a458e1dafbf9fcda` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xa8868579c6152bbbb8db46606354b56bfd8819b9` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xa889d4993c44ea78e2c87bc5897c74977a126dee` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xa924b6725f7ea2650c6e3f09eb0d36a76486c5b0` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xa9515623514532b526674b49fc3899024fc71695` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xa958a7ecc4996f69ab91d09dd08d5aea75837126` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xaa59006ae8dcfc7137a352e6142b39c2dee8622e` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xaa7584c7d375694b4351e520af1097d9a36fcee2` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xab1231f553206916c3e582de91aee08dd52169b5` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xac6369fa74dc3585a85c5efcd59f869fc01fb90d` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xacca7cd8c908b6acbc488c8990a22a6a41a4638d` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xad8b320245c2008551803e184e181a935e1523cf` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xb01f1a5041e6d2a6499e0cff1ee5cb3e65db6fa0` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb298aa5b1b8540413f4804a6eecd5074f67a129f` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xb3fa4a7323b86fece91639eb8f312fed4bf01792` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb412e98f1ec54b0161aa81d6846c96a2440ba854` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xb5144e9ead98d7c0b47b7549f3b2e0b89eb585c6` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xb63e995a3b986596a1df30c09d8eceb0aa652aa5` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0xb8d187ce5c5b172984cd1544d1679eacaf107aec` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xb975a3813aacc7c9a8b61bff5c3a0276154dda2e` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xb9e4632b141856308d6f811589f04b7abf71b8bf` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xbaf4eaed7cc1cbb3d6f2f3b89493dbb9764e8b44` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xbb5c18708ca81782133ed995b26131f96bb9c394` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xbb668c34e57da9e3f99b29e68e1d5b1bd21b7971` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0xbbc50dafd976d4bd7854a8329646fb88d7fa1018` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xbcb6081c01e2d2c1a3a2f871cb949e762de0fe29` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xbcfa47099dcce482e90ebd75a53f4bf012ca30ba` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xbdf903d93f5625950670f487db4d9157062474fa` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xbf2e3f32422f8f770f04663fb56a957130940c1b` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xbf571976e411cbec9e5a3bce817ae9e4fc570115` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xbfeb32a40a0678208c28cfe4438bcbba96bbc4c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0xc00a3923c0486f56596d182e95656fe31a6ee134` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xc070472392fb85938368d3caeb9ba12f43c495dd` | non_address_book | unknown | unknown | unverified | n/a | `0x7eeef54df0596633dbf6fa3c88deb1e3ea85ece8` |
| unverified unclassified | UnnamedContract<br>`0xc097a77eb6831957508050c6645423253661b3ad` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xc1efbee3a8dabd30d1d789138bc6ea43a399c335` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xc2228b31ed970e9eaf8acd40e3dade805937cc7b` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xc2ffbf93b39e2f3b082c640fafc922527750f48c` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xc6be0eea986acfcd6379cf080b7b766b358572bf` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xc6c05aec2f1c353d3a9d8d543fa7dc756806c477` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xc78cbc990cc75db5be1cc80511747fcc9c4b8ff0` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xc8697de7c190244bfd63d276823aa20035cb5a12` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xc882316b15b0dec45fdb4550167cdaf7d58433cc` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xca5a5b83fc6ed8577102e0b3b19379683f33b346` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xcc15e7b7071a73ae97c86ce0f54f6ba3fb2d437a` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xcc7e22e8c8fa860ff6cd7a90c34e466ee0bd950c` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xce3831814de36d631f6f0a6ba7d4622afb088639` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xce91056e4c9a12871d66fa17f2ff2f9237fdf13e` | non_address_book | unknown | unknown | unverified | n/a | `0x76d266dfd3754f090488ae12f6bd115cd7e77ebd` |
| unverified unclassified | UnnamedContract<br>`0xcfc7ed8003b2e21098fdce4c125bbf4084b0bdff` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |
| unverified unclassified | UnnamedContract<br>`0xd01681ed053be94de5ba3b0a3ccaa3e74abc5de8` | non_address_book | unknown | unknown | unverified | n/a | `0x421af9abc87197a917b87f8d2b2d8b0213d47dbe` |
| unverified unclassified | UnnamedContract<br>`0xd0aab6695b8ad921baa1ac8821e54d062c400e06` | non_address_book | unknown | unknown | unverified | n/a | `0xf5f5195cf6998c57c651f9f0bbfa7cfc72a6fac1` |

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
| needs_review | 407 |

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
