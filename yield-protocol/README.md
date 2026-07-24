# Agentic Audit Brief: Yield Protocol

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

- Project: Yield Protocol (`yield-protocol`)
- Website: [https://github.com/yieldprotocol](https://github.com/yieldprotocol)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 821 unique implementations (972 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $203,353.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Yield Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across arbitrum, base, ethereum, hyperliquid. Structural roles: 15 unclassified, 13 core, 5 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: unclassified (15), core (13), supporting (5)
- Contract kinds: contract (30), unclassified (3)
- Detected standards: none
- Frameworks: openzeppelin (12), foundry (2), chainlink (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 33; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 95 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 726 discovered implementations shown in the inventory but excluded from coverage (13 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 749
- Unique implementations: 821
- Raw deployments: 972
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccumulatorMultiOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263213 | `0x0ad9ef93673b6081c0c3b753ccaabddd8d2e7848` | ⚠️ Unaudited |
| Assert | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263215 | `0x3201161c97e6b3c6e0e565d8cd17ae5d0bedb5f7` | ⚠️ Unaudited |
| Assert | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263225 | `0xe1d7cd84c1e74fe06450899a8605f35d6f58fdc9` | ⚠️ Unaudited |
| Cauldron | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x22843899c962a507d2fad01d6cbfd923b677322d`; ethereum `0xbb59633fed6531d98985f7d2ae61159424c99eaa` | ⚠️ Unaudited |
| Cauldron | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263210 | `0xc88191f8cb8e6d4a668b047c1c8503432c3ca867` | ⚠️ Unaudited |
| Cauldron | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263214 | `0x23cc87fbebdd67cce167fa9ec6ad3b7fe3892e30` | ⚠️ Unaudited |
| CrabOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263198 | `0x35d753a30a750c0291cd86baedef7d27d55879f9` | ⚠️ Unaudited |
| Cvx3CrvOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263203 | `0x52e860327bcc464014259a7cd16daa5763d7dc99` | ⚠️ Unaudited |
| EmergencyBrake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0479f8de06e07ce834eefd9d7cdd50743118feef`; ethereum `0x097705d8c9071bc5152891946750f9f063f7b007`; arbitrum `0x9ca4d6fbe0ba91d553e74805d2e2545b04abefea` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263206 | `0x82375994c79e902286d347c9ede644ea12659fcc` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263209 | `0xaa7b33685e9730b4d700b8f3f190eca5ec4cf106` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263219 | `0x667f185407c4cab52aeb681f0006e4642d8091df` | ⚠️ Unaudited |
| EmergencyBrake | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263220 | `0x84066caea6186a02ed74ebf32bf008a47cbe26ad` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5da2b9174234f34c5857295776f5ea1fe70ebca` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`; ethereum `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`; base `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| FlashJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0xec202c3beacd59e6e0dcafb2e2a31ebfc3196899`; arbitrum `0xcb60bd598bf48be1e24262e8bf1e3703feca3470` | ⚠️ Unaudited |
| FlashLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f14f36b33e43b1e913dfeb14949b78af3ced36` | ⚠️ Unaudited |
| FYToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 30 deployments: ethereum `0x53c2a1ba37ff3cdaccb3ea030db3de39358e5593`; ethereum `0xb38ba395d15392796b51057490bbc790871dd6a0`; ethereum `0xfcb9b8c5160cf2999f9879d8230dced469e72eeb`; arbitrum `0x035072cb2912daab7b578f468bd6f0d32a269e32`; arbitrum `0x0e7727f4ee78d60f1d3aa30744b3ab6610f04170`; arbitrum `0x2e8f62e3620497dba8a2d7a18ea8212215805f22`; arbitrum `0x3b560caa508ca8e58f07263f58ee2353044c0d5c`; arbitrum `0x4f9b5e639447456ddc784bc441f5a6fd7ce80729`; arbitrum `0x523803c57a497c3ad0e850766c8276d4864edea5`; arbitrum `0x5655a973a49e1f9c1408bb9a617fd0dbd0352464`; arbitrum `0x5bb78e530d9365aef75664c5093e40b0001f7ccd`; arbitrum `0x5ed71c03f8d7b86ac7943a2e3cb41d0ffe01bdca`; arbitrum `0x60a6a7fabe11ff36cbe917a17666848f0ff3a60a`; arbitrum `0x68e9e0d89f96f40a98d3f42dc22430abbf662a1a`; arbitrum `0x69f402e82d549674cfaffb7d1227164596e37618`; arbitrum `0x6ef79df8ebd6e7ce4f24773a59fd3f54d79857f3`; arbitrum `0x892fa63af42585bbe8a578278c95705391ca15e1`; arbitrum `0x8c41fc42e8ebf66ea5f3190346c2d5b94a80480f`; arbitrum `0x9b19889794a30056a1e5be118ee0a6647b184c5f`; arbitrum `0x9ca40b35c3a8a717d4d54fac0905bbf889ddb281`; arbitrum `0xa3ecaf5c5e98c1a500f4596576dad3328a701c73`; arbitrum `0xa9bc738c017771a4cf01730f215e6e2b34dca9b8`; arbitrum `0xc24da474a71c44d2b644089020ba255908ada6e1`; arbitrum `0xc4b24ec9fb2dc32b3a545e0d873d2598031b80c5`; arbitrum `0xca9d3b5de1550c79155b1311ef54ebc73954d470`; arbitrum `0xcbb7eba13f9e1d97b2138f588f5ca2f5167f06cc`; arbitrum `0xd947360575e6f01ce7a210c12f2ee37f5ab12d11`; arbitrum `0xe1e878364efc19712a2833c5c60b68d215f9a4ab`; arbitrum `0xec1b42ec9a1650238ace42fd57bc719ccc87851c`; arbitrum `0xee508c827a8990c04798b242fa801c5351012b23` | ⚠️ Unaudited |
| FYTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa718ff3fa10fa9f797e98e35fd3a0bec9e0aa67c`; ethereum `0xf374ab6b299945ff81c1523008d0d407380a396f` | ⚠️ Unaudited |
| Giver | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263208 | `0xa98f3211997fdb072b6a8e2c2a26c34bc447f873` | ⚠️ Unaudited |
| IdentityOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0108c40a6d63f8018dae495745ce9fcf1e5ce1cf` | ⚠️ Unaudited |
| IdentityOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263195 | `0x15d5667115c988ddd96fecee67a0a75207d58bfc` | ⚠️ Unaudited |
| Join | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x08ffcb2d10c99f81a9edd118548efb7ab7a0eec4`; ethereum `0x5bb78e530d9365aef75664c5093e40b0001f7ccd`; ethereum `0x610498e3332740952610ca3fc2b627c94c25227d`; ethereum `0x6fb97c793f0d83cda7796f45a2bb697e73a045a8`; ethereum `0x7cb6ceabd9fa6895a8ce52e5e3459b67bc71e705`; ethereum `0xc76a01d18463d7aebea574a34b7d70d8aab389b2`; ethereum `0xd72ee212244f8a14c9c5e282c51d08caa1c0d604`; ethereum `0xd947360575e6f01ce7a210c12f2ee37f5ab12d11`; ethereum `0xee508c827a8990c04798b242fa801c5351012b23`; ethereum `0xfec8457d1bddfc52633da3323f812fc5c1800f61`; arbitrum `0x1229c71482e458fa2cd51d13eb157bd2b5d5d1ee`; arbitrum `0xaf93a04d5d8d85f69af65ed66a9717db0796fb10`; arbitrum `0xc31cce4ffa203d8f8d865b6cfaa4f36ad77e9810` | ⚠️ Unaudited |
| JoinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c2fc3ee04cfe813a6d31ffb904e5b9fcd7c9242`; ethereum `0x7297644611af0dbb1be1c2b4885de9288edd81e8` | ⚠️ Unaudited |
| Ladle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263226 | `0x6cb18ff2a33e981d1e38a663ca056c0a5265066a` | ⚠️ Unaudited |
| Ladle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb57d6abb871c9c38f33162be62fb647ae2629a75`; ethereum `0xeda38a5b1653ef0b460f10b93ff08c839bd32cc3` | ⚠️ Unaudited |
| Ladle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-263227 | `0x16e25cf364cecc305590128335b8f327975d0560` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: ethereum `0x2e4b70d0f020e62885e82bf75bc123e1aa8c79ca`; ethereum `0x3771c99c087a81df4633b50d8b149afaa83e3c9e`; ethereum `0x407353d527053f3a6140aaa7819b93af03114227`; ethereum `0x5d14ab14adb3a3d9769a67a1d09634634bde4c9b`; ethereum `0x6bac09a67ed1e1f42c29563847f77c28ec3a04fc`; ethereum `0x80142add3a597b1ed1de392a56b2cef3d8302797`; ethereum `0xef82611c6120185d3bf6e020d1993b49471e7da0`; ethereum `0xf5fd5a9db9cccc6dc9f5ef1be3a859c39983577c`; arbitrum `0x0fa29eeb169cde6c779326d7b16c54529eca1dd5`; arbitrum `0x13ab946c6a9645edff2a33880e0fc37f67122170`; arbitrum `0x6651f8e1ff6863eb366a319f9a94191346d0e323`; arbitrum `0x7fc2c417021d46a4790463030fb01a948d54fc04`; arbitrum `0x8c8a448fd8d3e44224d97146b25f4dec425af309`; arbitrum `0xf76906aa78ecd4fcfb8a7923fb40fa42c07f20d6`; arbitrum `0xfcb9b8c5160cf2999f9879d8230dced469e72eeb` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x486635abfe14b8b3e6abb277747c4042405396ed`; ethereum `0x9cc97690639c0938e5f130e01b000ea42daaddfa`; ethereum `0xe4d5a6128308b4d5c5d1a107be136ab75c9944be` | ⚠️ Unaudited |
| PoolNonTv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 38 deployments: ethereum `0xe2f6f40192f3e4568a62577e0541ac823b6f0d9e`; arbitrum `0x02dbfaca22df7e86897adf65eb74188d79dabea6`; arbitrum `0x1cd29a42882c163bad7a7c0124c3195a0584c518`; arbitrum `0x1dc344513b290f217074b86188c13aad9c9aa571`; arbitrum `0x1eec5ed8e01e0232f5ab2d70bb00231250ab2e7a`; arbitrum `0x2769abe33010c710e24ea6af8a2683c630bbd7d0`; arbitrum `0x29e0de79ef2ea2cf8e6c95c9fae8d4c3774df3f7`; arbitrum `0x2e0c2b8e1ba8d2d743972fff85a6577704f9ece4`; arbitrum `0x32cbdcfa3c11497277f6a384c2bfa9b34cb561da`; arbitrum `0x3e0a639c4a6d4d39a0deae07c228ff080de55eee`; arbitrum `0x3ea4618ce652eab330f00935fd075f5cb614e689`; arbitrum `0x530648558a27fe1d1bfc7356f67a34f4a7f06b6d`; arbitrum `0x536edc2a3db3bfe558cae74cedccd30f07f7121b`; arbitrum `0x53b0c1b8feb4decdcc068367119110e20c3bcbd3`; arbitrum `0x54d47f765fa247afee226fdf919392cdac6cbb2e`; arbitrum `0x58086b4950a6de8a0cc92020f83d979b6f1c9861`; arbitrum `0x5f55b2311180d3bfe5bc1125b2446d371bcdd6fa`; arbitrum `0x65142d171151d0a6f28385c45ce3fd642c9d155a`; arbitrum `0x7388f277441b3e1f3388f0464244e469fea30e41`; arbitrum `0x7f0dd461d77f84cdd3ced46f9d550e35f1969a24`; arbitrum `0x83e99a843607cfffc97a3aca15422ac672a463ef`; arbitrum `0x9a364e874258d6b76091d928ce69512cd905ee68`; arbitrum `0x9f873e17a629718b71e8e8f4e40f795883841efb`; arbitrum `0xa73ba15b76a165a4db56ef71b46d695a751334b6`; arbitrum `0xa8b291eef77ccc5f39db9c2d71d6a16b0edc7f15`; arbitrum `0xa98f3211997fdb072b6a8e2c2a26c34bc447f873`; arbitrum `0xb268e2c85861b74ec75fe728ae40d9a2308ad9bb`; arbitrum `0xb71db5f70fe5af728db8c05930d48553e5a0eb98`; arbitrum `0xbc62d88182ffa86918d0129f5bd35dea8df9213a`; arbitrum `0xbfcee2057bda64152becb8015a171967bfe5d8f9`; arbitrum `0xc6078e090641cc32b05a7f3f102f272a4ee19867`; arbitrum `0xcf275fdd705b321789cd046694cebbf678c45fa3`; arbitrum `0xddeb62072c1ed94bf1b1018f33abaa432a974ca3`; arbitrum `0xdf19b3f238d71198cd0017dfa29b87a45506a556`; arbitrum `0xe888e0403e3e992fdbb473650547428e90f9ddfc`; arbitrum `0xf0ba5cf116321a89b35b2d146ae5b861bd9c23d3`; arbitrum `0xf6c1bd232b1d6de368de2bbed096d821f0596c28`; arbitrum `0xf7f6eb1b097f60673e65347c83d83cb4ade82a0b` | ⚠️ Unaudited |
| PoolView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce4bc6315555411ca162350a5adff3fac2afa952` | ⚠️ Unaudited |
| PoolView | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263216 | `0x3e9d89a883c00608d932f92bbd8bd948bf1a9cf6` | ⚠️ Unaudited |
| Relay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4dab784d7feb04c4405816c50c14893df34f5f0` | ⚠️ Unaudited |
| RETHOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263197 | `0x318d5257d91bb6e73398af71a6de5b373d9b5340` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263199 | `0x39bb9cbe0221d769e30bd08d185842065bce1706` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc484f3a773bb82ca6ba8ed0bcbabc333d3577703` | ⚠️ Unaudited |
| SafeERC20Namer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263222 | `0xbd6bee8d3b9d1ee6b8105bed11a61fdcae4bff8b` | ⚠️ Unaudited |
| Solvency | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263218 | `0x5a65529ed3313a5dd3ed2d0bc196fca1acec10e9` | ⚠️ Unaudited |
| Solvency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x608274736923c5205cec92c2fa24776b228b4d3c`; arbitrum `0x78e1805c8050aa84cd3575ef8b8193de754fb2b3`; arbitrum `0x95750d6f5fba4ed1cc4dc42d2c01dfd3db9a11ec`; arbitrum `0x96f9e61207b4093a72b3f07b1ae8de68d1a3223a` | ⚠️ Unaudited |
| StEthConverter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263207 | `0x93d232213cca6e5e7105199abd8590293c3eb106` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 33 deployments: ethereum `0x1144e14e9b0aa9e181342c7e6e0a9badb4ced295`; ethereum `0x7acfe277ded15caba6a8da2972b1eb93fe1e2ccd`; ethereum `0x8e8d6ab093905c400d583efd37fbeeb1ee1c0c39`; ethereum `0x93dee161a396af75c7458a65687895299bfeb437`; ethereum `0xcda62a19da5ee9dc6e3110cf211b483046b0f7d2`; ethereum `0xfbc322415cbc532b54749e31979a803009516b5d`; arbitrum `0x067fb37dd51a4ef6fea0e006caf689db6c705812`; arbitrum `0x0a4b2e37bfef8e54dea997a87749a403353134e8`; arbitrum `0x2c918c4db3843f715556c65646f9e4a04c4bfba6`; arbitrum `0x3353e1e2976dbbc191a739871faa8e6e9d2622c7`; arbitrum `0x33e6b154efc7021dd55464c4e11a6afe1f3d0635`; arbitrum `0x3b4ffd93ce5fcf97e61aa8275ec241c76cc01a47`; arbitrum `0x4276beaa49de905eed06fcdc0ad438a19d3861dd`; arbitrum `0x4771522accac6fecf89a6365ceaf05667ed95886`; arbitrum `0x5582b8398fb586f1b79edd1a6e83f1c5aa558955`; arbitrum `0x5aeb4efaaa0d27bd606d618bd74fe883062eafd0`; arbitrum `0x7012af43f8a3c1141ee4e955cc568ad2af59c3fa`; arbitrum `0x861509a3fa7d87faa0154aae2cb6c1f92639339a`; arbitrum `0x8b814ad71e611e7a38ee64ec16ce421a477956e1`; arbitrum `0x92a5b31310a3ed4546e0541197a32101fcfbd5c8`; arbitrum `0x9847d09cb0eea77f7875a6904bfa22ae06b34cce`; arbitrum `0xa6624d8cf4a1ba950d380d1e38a2d5261b711145`; arbitrum `0xa9d104c4e020087944332632a8c5b451885fba4a`; arbitrum `0xad1983745d6c739537feab5bed45795f47a940b3`; arbitrum `0xbd7a1069f56b1d4100202f72119e5cffb4bdfe38`; arbitrum `0xc3a965beaf6e16ac98341232be2be016c0c61974`; arbitrum `0xc7d2e96ca94e1870605c286268313785886d2257`; arbitrum `0xceaf1cbf0cfdd1f7ea4c1c850c0bc032a60431db`; arbitrum `0xd5b43b2550751d372025d048553352ac60f27151`; arbitrum `0xdc705fb403dbb93da1d28388bc1dc84274593c11`; arbitrum `0xe7214af14bd70f6aac9c16b0c1ec9ee1ccc7efda`; arbitrum `0xe779cd75e6c574d83d3fd6c92f3cbe31dd32b1e1`; arbitrum `0xfe2aba5ba890af0ee8b6f2d488b1f85c9e7c5643` | ⚠️ Unaudited |
| StrategyOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263202 | `0x3ea4618ce652eab330f00935fd075f5cb614e689` | ⚠️ Unaudited |
| StrategyRescue | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263194 | `0x0702290d4da74a2004c7e77f66c4bbd91fca62bb` | ⚠️ Unaudited |
| TetherJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06aaf385809c7bc00698f1e266ed4c78d6b8ba75` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| Timelock | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263200 | `0x3b870db67a45611cf4723d44487eaf398fac51e3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x77ff810d6d687df28adbe34bba9c7a0a4276bfc6`; ethereum `0xa5e64f55f1d7244475ee3842e06295c1973482ed` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263224 | `0xd0a22827aed2ef5198ebec0093ea33a4cd641b6c` | ⚠️ Unaudited |
| Unwind | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x54523f7c7856e321c6a7d765e9a2716cda4ec648`; arbitrum `0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6`; arbitrum `0xa9871ff711c333765642d0d5343c1303e4341ea3`; arbitrum `0xc54734f39c20526c6a85fc4bf636174c9f9272b9`; arbitrum `0xe84adc045ca815c114847385c98c273cde3489a2` | ⚠️ Unaudited |
| Wand | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x21f7794cf4e9af58cbd0a71fd33c73458981239f`; ethereum `0x62b929d9054f819c1e4639c215c76b59d57d3568`; ethereum `0x804bf114530000c1a55825a8b57248af01494c63` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`; base `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| Witch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x532759c8d84172a6c9974905820c5a3191032d35`; ethereum `0x8dcc6e8d4a2e57690eab0acd009445ffc4b20f16` | ⚠️ Unaudited |
| Witch | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263204 | `0x53c3760670f6091e1ec76b4dd27f73ba4cad5061` | ⚠️ Unaudited |
| Witch | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263211 | `0x07c2c74811cb14a5003c3ccff7ec436d504fffb6` | ⚠️ Unaudited |
| Witch | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263212 | `0x08173d0885b00bdd640aae57d05abb74cd00d669` | ⚠️ Unaudited |
| WrapEtherModule | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263217 | `0x4cd01ed221d6d198e2656c16c32803bf78134568` | ⚠️ Unaudited |
| YieldMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x856ddd1a74b6e620d043efd6f74d81b8bf34868d`; ethereum `0xf003bd8a847a7ec2a76813495e734bc247ca6851`; arbitrum `0x511707b1311d6c3319e7a5be6edb12d3777be0da` | ⚠️ Unaudited |
| YieldMathExtensions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3d459b61ed77447fade80e5a3de617e947aa1e` | ⚠️ Unaudited |
| YieldMathExtensions | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263223 | `0xc445d7e3cdc96840439560675ca9023204ea9acd` | ⚠️ Unaudited |
| YieldNotionalLever | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263196 | `0x256dc66d616529baffd41172b67afe7821bd5c06` | ⚠️ Unaudited |
| YieldStEthLever | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263201 | `0x3d80583c830af6f2a2628318bee3720ce5421bc4` | ⚠️ Unaudited |
| YieldStrategyLever | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263205 | `0x5582b8398fb586f1b79edd1a6e83f1c5aa558955` | ⚠️ Unaudited |
| YoEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb` | ⚠️ Unaudited |
| YoGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf`; ethereum `0xecd62a8bbd3503710765a53218c480127b3c816e` | ⚠️ Unaudited |
| YoMorphoAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x946fd049c47beff53a32588c67df6a5a16b805f0` | ⚠️ Unaudited |
| YoRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8` | ⚠️ Unaudited |
| YoSwapAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59bad3e445e5c2d808c3e470b99386687da03f57` | ⚠️ Unaudited |
| YoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa9c5f18480fa36d4a84ebbd778c8ca6f65443052`; ethereum `0xda92d2172cd402d222131cc95a66ec7bd82dc169` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (749)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0013e17039566da4757edcb565d7d331e362ad12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0092a5552162f911ccf7f456e85f473ce259707f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b98a7fa3eaf0e35b9fd353fe58306b61d2bdd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0158fc072ff5dde8f7b9e2d00e8782093db888db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01f7fd324b366380d2145dfa6c7a76fdb75f17b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fe7dde6688c92ddacab33bb2df7c20cf8c1702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02551ded3f5b25f60ea67f258d907ed051e042b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ef55ad73ce24fa3d0b33dabcd4f27e0604e63b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x034f657f778b8441c3a89c9914dff67147bd8c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0409d36ba4bad176ed62a97faf05253b6b206a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b5179ea1ce7b3bf69e05bb7082f11af9fad718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07563293dbb881eef5f993f46da98e4116afde89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078dc7e61b410e461328aba0022197ea6a969d08` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x07df2ad9878f8797b4055230bbae5c808b8259b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086b4ecd75c494dd36641195e89c25373e06d7cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x08d2f5c96bb1f6be04b49bcd869d5af01db4c400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091356e6793a0d960174eaab4d470e39a99dd673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a058e89b904a701063fec9d0e770ba087ed3e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aeff85b59fb641c2f60cdd396294446cb93e27f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0b202757acbbdf4c65ab262c4485d1e4b54e1ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc6d6c4f7ca318c07de9ce75bbad6cc0fbb7251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c134e734b7e1e7955706f9abae7837b00f829a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c7d644fe0b0a63aa6fcfc7baad575853d4a7704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e01dbe8e854780e60491429d7adafbb84003573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e61e810f0918081cbfd2ac8c97e5866daf3f622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f12b85a331acb515e1626f707aade62e9960187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9e06c4180418b781d2816914834710360055f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fa90c028179cf116561f322edf01994fc9d84de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fbd5ca8ee61ec921b3f61b707f1d7d64456d2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff45fd2ad282b7e6e29dc10dbe6b3fc907284b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x111a2f8b843b7a20d9b1a2535c837e6cc23cc5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x112170998a34dd9fad0a92f4d2808fa7e059283f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c4e710d366cb2aaff1fa209aea5326f51b10ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12158f171c77f6341443b0700e2d094cdeabaa9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121b7580fbb1972774f74f5c1d0afb6a2783e0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x123fca954ea894305b684f56a0d043169a5aa7e4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1344a36a1b56144c3bc62e7757377d288fde0369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1349c51b28772f725e193c21597c0a41a715d504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156b3c130bcca6ccfd4d42d82a88a9548d84aece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ce5192b844a7a45e13864ac9969dc4f95b90fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16ed130f7a6dcac7e3b0617a7bafa4b470189962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1775ecc4a8d98152ba660c329e792f09bc19c726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x179a2d2408bfbc21b72d59c4a74e5010f07dc823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181900d998a8a922e68b3fc186ce0fa525c3c424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18f86644781fc9f7b4641d371f377c96744ec10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19152dda25a96d0ca244f0d7f3f13a966f392b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a751cd714910929017ce1417ead6d0732db1a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2145139516cb97568b76a2fdbe37d2bcd61e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b51b89b6c3f855ceb11710001909ec5e01a7951` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1bf78be42cd72bbfcceef67dcc0a0e2a0eb5da57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c510763432c0e65d86f313612d4e1e2d26e4332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb3391feff3806a6f7fa11b372cb70659304791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd33f81420bfce8a3622dc56bbd617b7fa3c93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ce3d734aaafaa06c46048d2371c2e507692c988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d1a531cbcb969040da7527bf1092dfc4ff7dd46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d1c4ba73f23606ca843871eaf82be9514131494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2eb98042006b1bafd10f33743ccbb573429daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f96a1592c8847591616702a9c0768849b98a3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205e4b6ff70beda203de802e53170486bbde3422` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x210f4e1942beec4038743a8f885b870e0c27b414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2166c76d081610716ab93f02891558b9ba226454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218af5cb9d59edb85dcb3d58e51b09a98792ef29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2226af65e4c9bb0550685b340529cc0e51de7a05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x22768fcafe7bb9f03e31cb49823d1ece30c0b8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x227eb3f8e867b4917553a616a550d629085bd330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e1e5337c5ba769e98d732518b2128de14b553c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x23cc87fbebdd67cce167fa9ec6ad3b7fe3892e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2446b411a95630f719ef8c78f195ecdaf3fd5e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2475b89a193c2c4eced142134a8612d9a28890a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24b5ff402440ab10618f3798253d2cd5801e40f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25bbd37e79fe182fcbdc0f98521cca0649a24067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ee011b6af5537ecd520f40ca759899a064cfcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269689d148ab0615b329bf092f6f6193d3754549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2716561755154eef59bc48eb13712510b27f167f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x27182842e098f60e3d576794a5bffb0777e025d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x280decd520da16e5571a6f2fb803a57e0c16f423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2838f999c23b480324314ac8d0c1f84d795135ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x28721b58c17a106a4846acf4e751ac3a4b670cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29000dc631b75261f11e883cdbdf65b7570ba829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a5c94fe8fa6c0c8d2a87e5c71ad628caa092ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa3c339fd86278614e6a41590a9234f4ed487b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeccb42482cc64e087b6d2e5da39f5a7a7001f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c67b0c0493e358cf368073bc0b5fa6f01e981e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc280279b8572fcdc100e2d01ca594a00031cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d8295b1c42d9055596d5a5f4c6429baf02a936c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1ab5fa05a690661ce0e7b9898bf1ba222249b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eb907fb4b71390dc5cd00e6b81b7daace358193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f201b7b1176ecaba3d9e6c3e720b1f6a923229e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f57aad5dcd2d650f92c058a79758c8b1217d341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f77cdd140d0ec7db9306b91959003872a7ceb92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe262f35c11e14597f6b4769f2ae589d9a08ab0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x30e7348163016b3b6e1621a3cb40e8cf33ce97db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30fba4a7ec8591f25b4d37fd79943a4bb6e553e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d82a1c8618c7be7fe85b2f1c44357a871d52d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3343a05bb5a831f701352e28176024ada69de869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3423c8af3a95d9fee7ec06c4e0e905d4fd559f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3519ba8a550973100676f1f00f67263e62da467d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3533f05b2c54ce1c2321cfe3c6f693a3cbbaea10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x358538ea4f52ac15c551f88c701696f6d9b38f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e1056a8f910a40710a3d106bd4851fcbbc9540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361f0201e82c9d701bca9913191086476a8df53a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366d5b255d97c5fee2283561bd89fce5566b178f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3682fb75301da93a4a472110efc42318176ea444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3728081cc9668b206665cae9dc2b43aff35acc0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375eafe4348c6aa851cdfa5f84ec268f73643235` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37aea345301b93a14b740a7b7a5b6ed62b02a9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x380cdf83748249c14a575673325aba9bd7e1ff55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x386a0a72ffeeb773381267d69b61acd1572e074d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38794ebd0a2ef0feec622be7c1bf8ed9bae3a7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b8bf13c94082001f784a642165517f8760988f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b99f86bd64a046afd85605e733c3c31ab74344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3965d75bfe40435246c22f75db2e170210b8bc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39662fff061088ca50a79a5acc3b569bb73c0271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39946ff7f4a0fe32f5b7cdcfc66c53c3d0360866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39d9590721331b13c8e9a42941a2b961b513e69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a04991503dba313fe8bb93c38312c9e1f7d985f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aaa75b701dac0592ed26a28555832a629f781e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abbd5fad059fc2b966b2de879e936a73268a0b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b376981cd74965a3226db79303d31e1796fd8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b8b09e679fd545d5b8ab1f03221497e8c0708af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c17c35ffcb41bc01eb9ff7f92126d5777c213f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c983ba3f165daf6a9950c08750bade647024c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cab97f99147012b0b1352e5e1278c933776861a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cda3599cfe80ea1c74d6d77a5857ada83914e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d31eddd017d4c9f3ad291b51fb18a44ce456494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da72a5d6fa2a46585f01a09bc6e2ee1481ee555` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4031057e802da9a7de7ed1da6401be1aff531f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x403cc0dd4831b5f896293146c96b1eb0727d30a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ecbf16ea85ff6edf62896ecf45536fc5121430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41aa57aa613429dae7dfd1941ddd3e5317038a10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x41bf71a2109fbdf7e5064a7421eaefeabf7a12f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422a2e95009f11e9e144fe7fd1a7c7a9c759bb6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c74c3d5d0cc020627dc7074a40a83636f6fb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x430ea56adb01df07f23a591f2021519ab78f1a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441aee7b24d463e98376dd7d51063feaad3b1b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44da4f0d2fdec7a8f74282c38c26f89ba8cbd0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45886dcc87b28cc5943de087b4e11ad6c70cd37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d619a4804b82c3af4c24ccb460068a8a0d8d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45fa7b0d7c7d1ef17d83287c5952ab465112bbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4688a8b1f292fdab17e9a90c8bc379dc1dbd8713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a2373fb541a5049dc31fc740e8b4036a5a2d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46c423e27e88c002c3643e332d8f62b7513a9898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47b320b42b9cbbe256010388c97acd88f5038640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47e6b83cac4e297d04c3f8548c806cf2b2e8fe77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x486b9185bcbfa780fcfd9a043ba140b3fa48e03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b95265749775310b77418ff6f9675396abe1e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ba5c2ef57b45de7736345f7f4db67818002dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496135b4421304872974cc0c01c5f0e59b7f4ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b1945510ce1f95479477dd867da6cd21da20ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d0e97ba2f4cf0e5e4f86c0d9c5c8acbacff50c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4156581914912872d8661c61910da571d3da4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d39ade31d55dfb6b9610fbb356d93a11655e600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee92ea287f4efa62b2ea6af87c3573e2d530e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eed2b20f63e3bc38e804535982f8c70a6767d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc792418b8901d5593dc89d7627d2daf2ebede9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe83b8584791bd624ac5029005ea142f3eb0366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x514f9563ace90bde2f0f00091208236e1864690f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5165b17e4e0513356e91975e5a67f32e2470cfa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51888550902159f2eb7c43b8589dbe975379aa10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52956fb3dc3361fd24713981917f2b6ef493dccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52cf307524538b2e236a48f09c98849ffd3d1696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53423db7ac663aa1941a809a6d787bffc7a5c8a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x53fba816bd69a7f2a096f58687f87dd3020d0d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ae3a1a25d361f1c1343572e9cc9a3365e2fccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54bb219281fe0eef1483bc4421e6502fe1e30a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f08092e3256131954dd57c04647de8b2e7a9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57002dd4609fd79f65e2e2a4be9aa6e901af9d9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x572dcc74c291aac86860c59ef81a69a886282f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58784379c844a00d4f572917d43f991c971f96ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59074a5e588de093fc5f04a7173d86b2b48e9d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59aa04b190ec76c95a1eb02d9a184b7fdd64b9fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59b05ca7f910f09072a9a521f691040ba7bbc353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a1af731567eab170df6118ea530335b9d697a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b3dd2d21bae032cc91d898efb97d995020095d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b63c3c6b259dfd3966f32514318d91a92dcf175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b97e660580a14c4180ddfd45d19fe9f839c796b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1e266924f8a4394e92b8441317736e255d5688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c36a0deab3531d29d848e684e8bdf5f81cdb643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c424c3d0f32b21cb3d51b780eb1b38b6ae8923f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d051deb5db151c2172dcdccd42e6a2953e27261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8d9f5b96f4438195be9b99eee6118ed4304286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e025097b3c8b3eb13e843fe188d5c8807ccd1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f11e94e0a69ac8490f45eb27a6478dcddb0227e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f4434221e4e3a5b878b71fcff42b071d1ddfd22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fbf4539a89fbd1e5d784db3f7ba6c394ac450fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc3fc6263b16f665d78075784f5a6abed00e1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fdc7e6695ec594a721f207574ffd75145c41810` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6008dbc83cd0a752b44a7e1b1a1e8b7355a90e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x602f8e2fdb449bb3a9933aa3da5e2349c668090b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612741825acedc6f88d8709319fe65bcb015c693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x617c41b9f7adee1ec0eda14edd7c090b841ae3ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f1fb3b53c79b2898b9f593be24c4f2423e645b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62bf66fc3e14a008c34e7a6bcacd99945c02deab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c66911af80994a7d3758cd77afd67098ac665e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c66d4a9d2aae2f63039c426b927b4605e333d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63757f772b8aab66f4de09617e8f257249efcb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6407ee6e27292abc96c117a6e224c0fd73cec14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65c23f235a630ca918cb1acc37533597a413ca2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x660bb2f1de01aaca46fcd8004e852234cf65f3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x662f1be7f07c90031f7b5264f71bd1ac0e975526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6759d286c4ec4febe35233385fd3eb950de5a030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e5f0db833e7e4f000a768d1eb7a8e87b31aa75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69414978558f2fc850190848e91a3b4c72e2ae4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e7f686d192413a2e5f7b193dc9648a31f0037b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a273b8e100bde88a34e3eb7283597d160a6f7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a28716e270f40b8963aa70b5a77f9fdeb07bbd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a351699bec7966cdd3ba2bb47b5fc89f626881f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b70b0ec487a28d79c59d78005da199217d7bcc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b986a60216aca687457782adfa0b002ad392ce7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6bdc1fcb2f13d1ba9d26ccec3983d5d4bf318693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e447195e3ff98e11ccba52e02676bec7cbacdb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x703f8334f10e166e9f00f49443f2e8c226dca123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f342ea72a4c476ef27b04f3bfe56f35db89002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718814062e4143a1ff3b3b7cd36e1d6c9603b85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x719993e82974f5b5ea0c5eba25c260cd5af78e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71ba37c7c0eab9f86de6d8745771c66fd3962f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x721d2c95ab9d17af925fa6f80c396e9382c48eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72ec9de3efd22552b6dc17142ead505a48940d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f53e6db6dc93c80ae7595bd3ca8da8f346e287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7652d9873f48b803fc57859f2190a4bf9f16b949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767fa190331ef7619dc0a51eb82f962ef26c88df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7697202a29acd384c889f879dfbffb6dcab17fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773844f94e81c24fe29975f9dd1a2edc38e57979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780e287ea2ef2dce34b66f1ed5a2225d8148deaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a6be1ae54153aa6fc7e4795272c63f63b2a6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79b2374bd437d031a4561fac55d62ad3e6516276` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7af5d9e7c4d07252e77658b413f9c6def97921d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b0cc121abd20acd77482b5aa95126db2e597987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c8fc181a910a4ee0c8515319cceb581c0ca8038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb8922521055a1054acecddb8a34eecd8bce3f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7cdce89594ddd8c7278fe58e2cd8fa97453fed1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cfe986657a2ccb8d7b173976cf78beb3a7b0068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d764650690e60a7a6647f2d12708f8434b87052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8b62b2ab8db3f3d085ba3437216fd10b6b4eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9819c4fd31efdd16abb9e4c2b87f9991195493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ee5ffa27debf9f94e00dac79bc498ea98f151f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f723fee1e65a7d26be51a05af0b5efee4a7d5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9536cf7826ede9abe6019c035338a60335768c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80bfa9295db8ff0a899b6aea628f2d9d8a8d1d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83085b8cb406cdb4034622198b518bda133032e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x84066caea6186a02ed74ebf32bf008a47cbe26ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8470516910062633bbf959f940232f9d300ef0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847a7b7036733f61f4f51a0812e42c702608d9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e58d8faa4e3b74d55d9fc762230f15d95570b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84edde510f22dc69841660aa21c73aca7bb73680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851a28260227f9a8e6bf39a5fa3b5132fa49c7f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85ced2ea5b044b2d6e9064a2845951df209f01f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b222d44ac6cc56e75b3df01fdad5dc371ef538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86bece3dce75dde030e0c9c2e955f8f0fb3908b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878c46978ac67e43d9d27e510f98e087e9940b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87e3cb95de2b250b51afa5e5ace3acf4b2c28e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884b74912be39e925d60ef3aa13b6321e645c893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x885d3dd787b9d417f912f4507241e771097181a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x892fa63af42585bbe8a578278c95705391ca15e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x895f0630d604fd7140d84ef9920c71171ae40fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a096f6c6d89dbd3c3df3eeba45710aa367f9a8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8a9262c7c6ec9bb143eb68798adb377c95f47138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c7c9a45916550c6fe04cdaa139672a1b5803c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8caad37f67fab806383f59048723a92b5dc4581d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cadf83daa86043a0f830857932ff6dd34ef5f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d3d711dd5be47f00bd11ac24eea7bc0efb92cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3d447ebe244db6d28e2303bca86ef3033cfad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e9ad87aa0770b30a02fe3ff49d0162f050ac84b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f9bfeea67e37174fb462674f23caf14fa251f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fb3940194819017fe6e738b7506f0dc3cceb6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc8551dd5e2dc5d2b04f2957e543d7d53a79f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901b248c49038248945b35577f3f2c8b8a55612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90896236b00a88959e427e5d47b73fd51bd82f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90c3c405716b8ff965dc905c91eee82a0b41a4ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x912105af77ebf02e3389dc74eb83ecdedaaf8e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913f575653c933ac15c8eb5996ed71a5547977d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x914255c0c289aea36e378ebb5e28293b5ed278ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91b79f4081d3522af2760b7698810d501ebc8010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x922e6e0b80ee037b32266bca33713b2043bc87d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92bb714fad1017e15de5e4e3120d78505bf00f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92dc86b93fb564131aa6f961a98465355d58a560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9359b833a06c76c0edb232c5fcacf058d8c12598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9414609789c179e1295e9a0559d629bf832b3c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945ef92aeb96f2adfcc501379d3f887d0fcbd685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946c9cac04f6f7d75190eb44cce49fa985fe6864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94e46a68814d09a3131221eec190512a374e6bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f6cb4fae0eb3fa74e9847dff2ff52fd5ec7e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x954f7cf4a0473ccde2ad4c85da65a84df03f3b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x955580c99a4c64055e8cb592d1e471f72c24c133` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x95750d6f5fba4ed1cc4dc42d2c01dfd3db9a11ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x95b3b8bf66055977e2710bd93a6958fe77cc7aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95bb968af09ac6975adae3c96d3721a47e17d6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95df7e34403becd532f2be160cacda56f0bd6ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ed5156158872dd3f2a01c8c444346a00cc94ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96323cf489ad2ab794bf03aad82bc09a7c5862df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b1ebf4877136af2f935395c3c4b179d66c4974` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x96bf9ab0e421a3da31d4506c967a825312455767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97cc93e87655d3d0f41aa0f54f86973fbd4b9af7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x97f1d43a217add678bb6dcd3c5d51f40b6729d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9946f1c5046ecedc8cee9a76ec14c42ca78463b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99745f4fe818d98bcee35abf3a2cfc80d42fc6aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x999eb1bbfabbf5a6b3cf4ea6369b3abbd51d8fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a0c630c310030c4602d1a76583a3b16972ecaa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a419cd788aaa88b485c50144cbcf76bf0c2e0bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a76b03fddd21283158325f51213d36a1bdfc52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bbd78bf99ff21d75a0d1d94582cb7dd70f07339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bfc1ca64e8065514fed89c85aa0e98161f64395` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7b863f8eadfe000c2b6ff0f43f58223ec29d84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9ca89fc21fdbde431df9080426f7b630012fe551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d34df69958675450ab8e53c8df5531203398dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df960e0a9f3a5831873dc36a2e7168d25f0ebb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fb57943926749b49a644f237a28b491c9b465e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18bc07ef3e04d263528323164dab9c76132b7f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d7350588a16f6c3e7389c6c8e606ae53e90ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa205db527f588b3c7bd5ac0c48d618cd1fbf6bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa37a279bcb057bcfc544de7d953f940599f74c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3d89401d1e68afdfa62ed6ede9b69e0ffdfc6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa40aedaac28f9574124d7c8eff59732cc77f1dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa44a8729d139b39a322a9c7754fae98b6cff6c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a54727dc9cc81d93e114f303b78cf1d7eef553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6bed16543516838692a3e1d6eb67b771007abe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d22600f5937cb58567deb8d9063915a0acbf61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa81414a544d0bd8a28257f4038d3d24b08dd9bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8c6058a32843020a59e8e65be38d60e81af5048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa921392015eb37c5977c4fd77e14dd568c59d5f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a04f40101f62397a24b3ceebbdc9660898e172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f0fb2528a8ada9b11be582ac1d13bdbfb8d437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9f31d1535e5430ae335975eb0dac378c82e9b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa7c543bae1de85c36841d55f3d6eae7856efca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaac5145f5286a3c6a06256fdfbf5b499aa965c9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab6e556046bf9647f3e1ecb15fc7db256b0b5188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad20780e69257c62d107bbd43a1db628a075416b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae04e4887cbf5f25c05ac1384bcd0b7e885a1f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf14d06a65c91541a5b2db627ecd1c92d7d9c48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf255d77114f4d34c78360bb919a9c7ab0a0bb5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcc084fdb6d7d04751773989fe243aa1b60f8d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb061818d4807249710a587b18728036bf7947465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1113cf888a019693b254da3d90f841072d85172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb12b08045c2fb403fcae579641d0a011aad8ed70` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb132c10acabcb8966fa38e5ae9745039b7c8008b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15157eb6d7256bac7f4c6bfc7940513f6b403b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15167fff26202aa3d20ecfd7f46a34fa4126e49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15b2c8da9b9a83fad34180db28be607c54e5ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2da5c7bb828d4bcec8e5d5c0e06f42962ed2d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2fff7fea1d455f0bcdd38da7dee98af0872a13a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3863d03938ead437e3f136778531dcb89f29ead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3b111ffddef82d0d519d1732d157c82c2e14761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb484dd00b0f41a42e927b601f6c10a16b265f59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6886b2c3537673941e4ead63b95eacb47173f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb69d0523a2f5b8756f27986da4b4543c68822568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a54c66e25ca43c16ec589e8f8f34686436fced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb703c1c46044d77ebdd765149502a1b82046f7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f49a45758dc0cf419f6e1eb330be0b0a879c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8129e6545f5feaa67a42c750ad9f36f9f1b4505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb87afd4b93235c155d60d578998e0aa94c9a9263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c082654bc73bba8e482be4c7827bb83c53dc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9cd42168d53836b45751774f757132ece4f5d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba43bf371a615ffabc215596b4212628833cdde0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4eb30f7f2e378249cf94e08f581e704326e9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbab0e1799450dbdede4c4532e4e1141933194481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca3061430e852fb4a563f8bc0cf58dfdfb3a6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcf05edffe4c2d7f2168a6acf0b93615ab51ac1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd6277e36686184a5343f83a4be5ced0f8cd185a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc7bdae87dfe602e91fdd019c4c0334c38f6a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe401d7e76bb71bf7fa5a4aed7f3b650c6e0bd25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4aba25915bad390edf83b7e1ca44b6145f261e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbecf0e2d89f17de8f575a80c41bfdc9ad18d2d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf12d7e41a25f449293ab8cd1364fe74a175bfa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf35529d9333feee50c17aa0a39eeabea2b3abb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc8b65c359ecf3c5b39bdf10e6cadb2e544597e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02b6dfe6bb8a791c4a36655890ce393d1dfd31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0ab10848ffa1d5422925e21acf2fd0070de9d25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc1361a14b67622f549db8dacb476bc6ff23c7e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20952b2c8bb6689e7ec2f70aeba392c378ec413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2763a6465f5c86769a1af826db270a6367b03b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc381701140f65d54e62339d2138f8728fea21e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc410b0f43f65041d5b4affe600f017faa86a8dc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc597e9ca52afc13f7f5eddac9e53def569236016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ccf95ecf7afada7cf2efb079c4298db448e0dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc64d6a2f0e79c80679bff37d3adb7687a9401113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68577c16f15cbf0645b70fe74cbe4e7804863a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f5ba780b78db117233d5f76da9e2032a312a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f754a91e626119e902be4027d86de9fe94a068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7b9c53d345ec7a00d5c085085cb882dce79d2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc87a900078f04c45b7f14e46c520d4a6f37296b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91864be1b097c9c85565cdb013ba2307ffb492a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcac9c01d1207e5d06bb0fd5b854832f35fe97e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb0900d9307da7fd4e000a9093f24ce25d937d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc297074fde7c97c27d6d1a2378e57bca1d399e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc3b67f3ac058e376e839567a3b6e9f0d62df74d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcdce5c87f691058b61f3a65913f1a3cbcbad9f52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcdcea3ebc084f24a25ad6f18fd678b0c6b33843d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfbf28db3b1b7fc8efe08f988d955270a5c4752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfc3b33996492cc8bcbccaa2d73e710b26aaac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfe200930a1e54a6f99c6cca24fcf10300d2785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3f1d83cecee26b1d4a7010123b86ced67a48d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce96038cd2682525fea3de031be25a54312a9ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf29468c20d402366956ed77391ad383d6c79b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf678e428fbd6d9173fb780e971e4a123b68877a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcfdc01eaf336133ef4dc646816e8e845aad76ca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfeaead4947f0705a14ec42ac3d44129e1ef3ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0d9e5ca8793cae9fac72f34caaf7f99e4f0fc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd150a5d5ecad43f097d5875707ed20237839e805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd162738705cdcdba11eae86794606a7fb24655f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18124029b167e03bbaab8d5d6fbb646ae020e1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b104a30518abee70e5b77023d8966a2234253d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd33f2e0173fd0ae2a64b208a7bd16bcdc68bc862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3c41a41e5430239772a4bcacae89be89dc73e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e42e568520ca2f09bfbd8d2d2312a0e111ce99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd47a7473c83a1cc145407e82def5ae15f8b338c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a36f40657899e566f48b81339b49fa6ef50142` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd5b43b2550751d372025d048553352ac60f27151` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd659565b84bcfcb23b02ee13e46cb51429f4558a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd676d720e4e8b14f545f9116f0cad47af32329dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6aa58cf21a0edb33375d6c0434b8bb5b589f021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7646011fa3d5ce8787aa86cf723fad0db1f074e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7c3dc1c36d19cf4e8cea4ea143a2f4458dd1937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd84fdb46420a21df9d4c14f6dd0c5881ca052942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf4da41aacc0439b412a138fe8274e06341024e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb7a1be29d3d3ad8231d4808ac555119ed8762e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba82dca19943eb3a1d3ef7eeffb80a68111e09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbb034a50c436359fb6d87d3d669647e0fa24d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdc3758330939a0253f30083a23e8843778348991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc8171812776898e8f06adfb2970c29e97889bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde14d5f07456c86f070c108a04ae2fafdbd2a939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde9b77de6eceac4db6ef47eedd204c58817dcd6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb33dfd88169d53857231c8d07a6af87d33f7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0632311772d362f49b5118c40d5251c44bc8b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b94a7bb45dd905c79bb1992c9879f40f1caed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe10836ba543be91e978fc9b455bf483572a44b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20048fa0f165a49b780dfa9a8caba845332f848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe303f7081be3530f66de12cdbe2a2e98c0939125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe329e81800219aefeef79d74db35f8877fe1abde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe335d314bd4ef7dd44f103dc124fefb7ce63ec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe47d1584a6dbb98cc889bb1c9cbe5387173c282b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ebb6ea270a70491c3af06376a5862a0fda7268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe569a3c7c1376cf871a46203304020932c8d49c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5ae18de0bdd7003e3b74613554f58484e432de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e7447b98c488ddd7971335b2f53b16426493dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe728eac44f19db83f7ce847ce7cdb90fd43b07b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78d09c8b6ccf9c1732d14353a708b75f6c67c67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe7a9771c692c428df17ecad6cd58d4938c010a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe801b59eb9f6dddd58f35772afdd89e499ec5b0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe854ceb7e57988b083b93195d092d289fed1d0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8f28cf944abcfd98dacdcba284acfc56a6e929b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98567885df519dfeb12c0e268dd5d9b798bd531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea4a5c4da1bd2420be0193fa56c4ec469c5997b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea7aa69dbeea9deb4294109bd344f69c79c6fdf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea7e1f2ed12b3b4a290f70f8ab9dd8f9baab8da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8cd16b9cedc799a2e3acd7f122975fb2cda98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb2577109a7c636f0e65b75d2c1cb55a54fd8ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec5c85eadb6f810c940e6b3ad571f2fa9865e87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed1546defca671d4a64d3bd7d25571355c23f4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed55183f86b73b85d4806ea1142fa94dac7d1c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9b2c747a176686238ef55a717ef086f75aa3de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb7469fbc80cc1e350341bf7b77fd272f9b25c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfc81bf63527337cd2193925f9c0cf2d537acca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee8086b240e38dfca32c466dda709ee1020fba0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee98810249cff95fca091b91db01d25315048bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeb885af7c8075aa3b93e2f95e1c0bd51c758f91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xef2cd7a05fea92fbd2ce262fda43aeee56b669e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb95036bf8d2d31e8fb24355e8ec76a2e341014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14ae88a0d2f3e40bba451c6d2da9e6ff2af17bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf19f4490a7fccfef2dab8199acdb2dc1b9027c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1dfc222b42233b9947183611f6edf6d1d7dca3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1eee0957267b1a474323ff9cff7719e964969fa` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf2f7c33234160387e5dc82b1412b522ab44876c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf35431fa697bdd436d8c4e8490e71bdcb52f6a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38a93ee78912b10ff722d187554406b0416a800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf47d7192413ac6558f48594ecce6d2dfe38b7876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52b078b3db7e2253a803f09f1a2eee0412c9ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf63f41b61991df7496a10aac3a0bbafe15e20445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6b3064a20efff9c3495fedf10f19a376510761a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72c1cf4aab54c39ff4ea0f2c6179d62f3b79348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8b25da34367e5fe6d9cd03d1ecfd227ee06021a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf94507f3dece4cc4c73b6cf228912b85eadc9cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95441f348eb2fd3d5d82f9b7b961137a734eedd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9fdb607d8b843cdf65898df4e08d1479b69002a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1f8518d3e6d69a04b88e96a9e3e7588d19ca0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa38f3717dad95085ff725aa93608af3fa1d9e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfab3b28f7c1ae22c4abc185673ed96e8e815eaad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcf3295b3b357e3e0d37ac5ee14823e06ffdfbc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe189d42177df1f5834c154b981e70c93f9eeba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe294434753a44f1a9e7ad13cfea6606fcf6ea8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfea323486456f26b6a0a9074fd4df508a6e9fa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfebc565a1c8c70dbbdc11f0e6ad8cc33b6f3dd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfecb3ffca8bbf243ac669238ec9010b98424bf89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7b4d89617d8ac9698632b14127aac55895d21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd7531ed937f703b269815950cb75bdaaa341c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01fe7dde6688c92ddacab33bb2df7c20cf8c1702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05516d6c51805d2f53f98ae6a87bf3ddd4e8d801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x058e55aacba302a1c776fb51e7b57dde0677a19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a628b2f35b2e04f121b88330479c784e659275b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a9614aa15a6ea33371aac6bd8b7b91025ba66a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c349da9aa75b41f9e53d37381999b9731dbc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c7d644fe0b0a63aa6fcfc7baad575853d4a7704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dbfd48c51e231b642eb296ad8586b4e7a5b9cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fbd5ca8ee61ec921b3f61b707f1d7d64456d2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fe5545649814a576848b66bd010c5ae0323628d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x121b7580fbb1972774f74f5c1d0afb6a2783e0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1231f1d0173bfa60f49b34a8128ecb0cd861f441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12ebe8f2760f71fde4e449b2a40080d3bde2eef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13551a7bb2122e707df2b94cad88fc37676d98ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14334b85ca27a11e32d80c898c9a9892bcb62fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x156b3c130bcca6ccfd4d42d82a88a9548d84aece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x162cb86321e7556a00b4eec2756982a304058839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x168f597e079ac7c2296424c52e7c46289525d813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16d727f22605c7e520296900acac3f9526e37cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17104eb54776b63301ba5dbbf809250918175433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x171c282aa5aab3bb8bc87be04975cc879704a161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1775ecc4a8d98152ba660c329e792f09bc19c726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18004bb3321bec99e32e3fdcaa3699930a9d43f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b51b89b6c3f855ceb11710001909ec5e01a7951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cd6989ef2430f3955c8569747d81c500155472d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fe345ee0e85f2cd6317357f4edba815ea705e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2014dcfdcdf850172c380413e4fe9989a79d9184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x207a02f33ac1052f95960b7e1ac93bb5631be0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x210f4e1942beec4038743a8f885b870e0c27b414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22e1e5337c5ba769e98d732518b2128de14b553c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25c05796bcf7874df2b41b866c86a3e0bd1bbf3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e46ad1cc867c5253a179f45e1ab46144c8abc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x269e96d9fb6200ff874d1edc945493a19c753d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2876edfc82c25668f9ef477fb97a2731366ab63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28b621e210ed06876f1f8b49587f4c5eb35e91cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x293009f7133ad3f3300e1e771f9caa66db58275b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e1ab5fa05a690661ce0e7b9898bf1ba222249b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2eb907fb4b71390dc5cd00e6b81b7daace358193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f57aad5dcd2d650f92c058a79758c8b1217d341` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x30e7348163016b3b6e1621a3cb40e8cf33ce97db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3295a74bca0d6fdfef648ba8549d305a8ba9cc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x332b65c67c371d72477a3f5f8da836a3ca998cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x337ec2c212d25a901d8cb62cd1b4ce89919ef289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33dfd5626991ed1e32275075ba0fc11fab985434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x345cf46c91927e6887a91e5f53056c931655070f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34b7fa94d07d709fb20c023858f553f8466a6574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34f1be77d5bd23de0873d7ec63b2ef94daaa7491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35d117f78a8a8c20a78c6948b1176fc3862940fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x361d1b37bcaac3ee56ff979b58da50c11af55413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36a7118946f96145fe632d48dc14f8d3de1183f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37453804d9747ecd0a2a4c916e0a1cfef13a6d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x384231bcc5652295f77b4a59b352234db860a0d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x386a0a72ffeeb773381267d69b61acd1572e074d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38b8bf13c94082001f784a642165517f8760988f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x391ff5647d6a49eba69787869f71289ec8394407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x394c7aceebbd5f6cdf5b4dc7315933ea6cbccb5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39662fff061088ca50a79a5acc3b569bb73c0271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39a4c4acd154e14d7d84562a93e2214a3acaf687` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3a717f3a896cbb979b4eff347649508f5f5c4cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3aaa75b701dac0592ed26a28555832a629f781e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c17c35ffcb41bc01eb9ff7f92126d5777c213f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3da8fc640559616f232288659fc68e4422ad5841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x403cc0dd4831b5f896293146c96b1eb0727d30a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40ecbf16ea85ff6edf62896ecf45536fc5121430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42deed29ff4980ce4e070c08ee21999265a1c7a9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x44386ddb4c44e7cb8981f97af89e928ddd4258dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45886dcc87b28cc5943de087b4e11ad6c70cd37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47e6b83cac4e297d04c3f8548c806cf2b2e8fe77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48433487e46470cf1eb01dd3bf4c4e00e03b8dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x485a129392104c4b83322e98cf8632953f147bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4869e478d8efa441c60b919a74ebaf4adb0b4f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x486b9185bcbfa780fcfd9a043ba140b3fa48e03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x497931c260a6f76294465f7bbb5071802e97e109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a5bfa6c94118d72668c26249a39175a97eede2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c05e3a558d91840b14c893c41b807e9afad23ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c4156581914912872d8661c61910da571d3da4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d25409b638b9e3d8b9559e1ed4d044f4f7cec15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4da83bb09ec994ecd048458e8a82bde3f4e79105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x506887f3c678ca2e80e2fe85fbfca90ea9fd53df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52f1cbd63ef10706c04eebb106204bc530390af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53a35a547549875cd8ddc498c3f2bd866c392900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53f5adc9a06b86a60f545f6c0bc9a30dd11baf48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53f6811191fa314d385a4f5d9a883d67d083f758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54a0fdaff2a691e623065d79b2534105748c0c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54f08092e3256131954dd57c04647de8b2e7a9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55ead03a084e565d6244175a78b2c8ee040b9526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x560925afe1eeb597aaf8971eafa3fc99817c3550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56afd1b26517b630a88e20ba1eab7b0e2808eb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f2e68891f45cbbac178f2439674ae7360ad707d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62c66911af80994a7d3758cd77afd67098ac665e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62e8d7af61575d3ed5812e2e7a6fa4e282781743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x652bcfc9d3c59c58dea86ad8c9724dc734b189ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6603ee5a5f8bbccda80f19402739874c2b43d2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c38da96acb69048d82f7d801cf55614e7752f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c9df78e1ca4a208ed44a7b4f63d6b4e9b989a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f58e7c2cba734db4b12ddc9573484c18907968b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x703f8334f10e166e9f00f49443f2e8c226dca123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x710fcbb921f0f21eb5cdb61d1634e99cecea9f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x714f8831191903d8dba928c949254a5877be06a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71b8853d95c0e3a4dc7bfb48a0b0aba88656c78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71ffbcff48c363331977cfd0c6295e7b6d233a0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x7237963eed1809976a0928a42f5d6f529e0df584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72a6bf49d4b3230af06c1c5054fb9aab3d50f172` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x750b3a18115fe090bc621f9e4b90bd442bcd02f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x763a7ea9e634b63eef2b9c479f322c7191335662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77e8f70c575467e2c787eb80f917ede81bc853f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e69677937abb1b63c083fbffecfb2841427543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790f475832695c4e523cd52d2c4ac393ca43037a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79857da1d4b976f40787daa6177e24256bc53b75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79a6be1ae54153aa6fc7e4795272c63f63b2a6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a9dc2f6bc603581b6298b1790048f0a288292bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ac9e3328a2e7e03121cd7687a79d8bb9764ec1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e42055a46030a00356ceef9a01b19933b0be2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e4ec0c90e5e8ace890c2080bd8377ef70991462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ecef61798da5d645b0af79c6753b1f0d553fe2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fadaafbe82696bb6867657f22f52e3a5ecb66bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x807073f955439fa0ef808a9b50007696b5dce971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81023a9a026605334afa4c4cbcd27d3659ff54a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81ae3d05e4f0d0dd29d6840424a0b761a7fdb51c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x83c4cb8b9eb49a8db87455a5e6bb8f6bb24d42d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84612e6ac1a1506836e14e6f30efb78c90033b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x847a7b7036733f61f4f51a0812e42c702608d9a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x853244570b8925c72b351eb0c35c2b01627e9077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85cc3f39ff907da7b11df54cfa1ddfdbff5541c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8705a962fe85bbeb4ca97e6618d4b47b2202e6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x879b1a3ce9d4027994791098ed47779e9b8301fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88d2676a4c43a36c029dfd0e35a94a7dec145dc4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x89343a24a217172a569a0bd68763bf0671a3efd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x898e9343e31e804a7986e89882d6055814727015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a468837ae2c722fcf919fe0069595dbd500baa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a9262c7c6ec9bb143eb68798adb377c95f47138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8caad37f67fab806383f59048723a92b5dc4581d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cadf83daa86043a0f830857932ff6dd34ef5f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d82f03d20ac0708c2be2d606dd86b2bfe21d5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e0524e40f481839a1b4f9531293d88018861146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8e9696345632796e7d80fb341ff4a2a60aa39c89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e9ad87aa0770b30a02fe3ff49d0162f050ac84b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fb3940194819017fe6e738b7506f0dc3cceb6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x912105af77ebf02e3389dc74eb83ecdedaaf8e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92340f190ac38f4d2b8a8b342091c16c84aa5036` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x93343c08e2055b7793a3336d659be348fc1b08f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93870da5504b09f03bd2473b3f1e99d419379378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x946c9cac04f6f7d75190eb44cce49fa985fe6864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96323cf489ad2ab794bf03aad82bc09a7c5862df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x984665ccf39467eee3e0e73fa7f3911fbecade38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b004b70ef34d7d26948a2e5eab2bc4443cc4b69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9d34df69958675450ab8e53c8df5531203398dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9df960e0a9f3a5831873dc36a2e7168d25f0ebb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e9c1c10f1cfcc97d18eef1c4c4eb32bd38dce4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ea283954fea14afda9fd480795acccd5506d00d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x9ea9971d9e032d08c2118c97fa63c7618b46c104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f186fd72fe77477115073185624542fb3b1a488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f2b08727441c3367f46076593bc30048eeff416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa205db527f588b3c7bd5ac0c48d618cd1fbf6bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa216fcf257da05830320bd58f506f804f5bfab06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa31a5fd7aa467f6d0ccc29f841fb35a34c5790e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3c4ccb9ebda3ba16e524c6173898bf334dde693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3caf61fd23d374ce13c742e4e9fa9fac23ddae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4649bc2565a3b5675baa0f09784e828b7a8e0db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa589ca023cfeea0931fda37649df1da270e9b4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6a54727dc9cc81d93e114f303b78cf1d7eef553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6e01b7b84014b0741f054b4e3c802a6394eec77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa73b1ea466c18d166b718de5af269ae177128cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa85c9d83c2eb3e95293dadf4409574f9102e6c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8c6058a32843020a59e8e65be38d60e81af5048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9078e573ec536c4066a5e89f715553ed67b13e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa93c8904262576254013cd5fa697629a7ca34245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa96bcf619f555e439f5ac363b882eed62801b5e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab5b13a831cd086f4994ee65d37ba3f4494a3dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab6e556046bf9647f3e1ecb15fc7db256b0b5188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab80f3ec64fd4985eace359323d24d7c9d0de269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac7c880dac687640ec4965f8854ba48842fcb6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacee99762457023925e535db1f52364cbebe6a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafcc084fdb6d7d04751773989fe243aa1b60f8d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb15157eb6d7256bac7f4c6bfc7940513f6b403b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb199acaecf11778ef9f2bc1bbf3e77956f52b546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb238e0562cc1a271aeab0873de35163fec3912f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2da5c7bb828d4bcec8e5d5c0e06f42962ed2d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb450936fcdb42feb333685b369925b485b1cf2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb586d3b232a167bb319944120eaf0629af512311` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263221 | `0xb5d97bfe6456008b9118bb5568d9379c5d6c8832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb683b28c4bb0955693550314207beeddf7f94987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb703c1c46044d77ebdd765149502a1b82046f7e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb8b238bba16a3f773fb7fe61213bb94371fc6b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8c082654bc73bba8e482be4c7827bb83c53dc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb958ba862d70c0a4bd0ea976f9a1907686dd41e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb8d05c5296ae3ca7e96f6e153fd44db02049ce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbcf05edffe4c2d7f2168a6acf0b93615ab51ac1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe5c6ae5f9fdcdfc91e28cf32d88ed9eace9aac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf33d793d83fd98f463c967f0dc7ebe90dcd5f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc09b89066906e5dd4b521b375ca10f0fabb00a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc171c681bfa3720306c1ba695a52b54f3f5d20a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc20952b2c8bb6689e7ec2f70aeba392c378ec413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2263a96cc4e8cb489ce543b310b14d5f9945ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3516031432d9b13be6d71e52aa097293e984165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3e9446a4191f692f96f3d81878045e86bcd8d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4cb2489a845384277564613a0906f50dd66e482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc597e9ca52afc13f7f5eddac9e53def569236016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5b4bcb2f588a5b8b16abd15f8dcb6b32f35c43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5ccf95ecf7afada7cf2efb079c4298db448e0dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc603b59514315d0ab0df9931d4237171e307e005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc64d6a2f0e79c80679bff37d3adb7687a9401113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc6f754a91e626119e902be4027d86de9fe94a068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7b3453862f8f38e2d8a4f3dd3c9f6ca2d334446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7bdd9df20458ffbb031b6dedc883b49e3eb43c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8cbdc7d237f9401d108fc6efddc90d1a9737d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca345ca661f244bacfa2d1d7892b47d2eebafdbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcaa84a393e7c1c2c9429b5aa81e994e199281de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc297074fde7c97c27d6d1a2378e57bca1d399e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccc1d9e3b0237cfa6a214921eda5bf41957cdbd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdfbf28db3b1b7fc8efe08f988d955270a5c4752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdfc3b33996492cc8bcbccaa2d73e710b26aaac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdfe200930a1e54a6f99c6cca24fcf10300d2785` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xce3d36e19de6a7b66e851c5b7e468e35dc83d29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd273b80fb6cecddc9a5a9398e63748c81e22cbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4a36f40657899e566f48b81339b49fa6ef50142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4aea765bc2c56f09074254eb5a3f5ff9d709449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd52ceb9481692a7855b46e6f79a22f4de06d3d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7646011fa3d5ce8787aa86cf723fad0db1f074e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd797aa930ae6d5a9d80c033bea589145a3891211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd81969c39ba010f857d2977d4f7a9c9f41fc2b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd983427f7800a736727c6cbc6b359abd5b4b76b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9cafbecc44cdf2b620e242ff58721d617a18c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd2ce502e50183b85a394ebabfeec16bc2f2eb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde5fbc6a180b0ec051fe3cf739e815a30c799ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeb33dfd88169d53857231c8d07a6af87d33f7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe213c68563ee4c519183ae6c8fc15d60bead95bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5147a6f6170b5c1232f6ae5645179b835f59ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe604fae70909c97e42b262e993ec53dfa23f81c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe61d7a564cb2f56b005f1111616656a8351078f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6267a0564c577b16aded919bba2eaa3d484d838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6a63e2166fceeb447bfb1c0f4f398083214b7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8ec1a61f6c86e8d33c327fedad559c20b9a66a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9054d1e653937abae4338e30f4fc3ab40c143be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea219216d4a85f02e2d02d13bad17ee29fed9ca5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xeaa886daba2b26d962efd7f98bed0e47e9455560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebb27d622fe604d49daae546a44487e91dd2e24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec5b0cccae497389a2acbdba2def7ec53bdc7fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec5c85eadb6f810c940e6b3ad571f2fa9865e87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed55183f86b73b85d4806ea1142fa94dac7d1c87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xed84bdfba3629c232953d34033545a38f0e57bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed9b2c747a176686238ef55a717ef086f75aa3de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xedc965dcd634b0a9843569577654669225955e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee702568ad99c2f493bb7112b8eeb7a0f1deface` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee98810249cff95fca091b91db01d25315048bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefa04ac1e320707499b24ad6caafd2c1120a06e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1bc6125e12bf139d47ef23cff78d7e9b558e010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2f7c33234160387e5dc82b1412b522ab44876c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf444d6ef12ce6850b61cebd0940445701c77d756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf585d6748f3113a450e23a3f322fde60f396022b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf69460b5c0a5eca34c3100b6288cd0d13cdb953c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6d447837403c090445d8721a546e08711d62383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf70abc427971c4e5e0aed78f991eb65a479c8e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf70c619389d02f021a775c1c1461a8d07ff23dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7242fb5b73a6f7e8808baae6a81bb899c86a5dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7e650427575c88343f3989f3c722854912816b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9d75fd94fd35c8014c4f7f8e3434755172e9005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9e68e8ec59257def066e5a21601e4127c2d9cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa5016af97ea070c33a25a5f32efb1f736c85534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb51559f7bb024e8e808c853abd891c6f6ea770a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb5717685db9c1fe7076eabda559a3d93919bec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe74343cb51ce4d8cf348aef1044751a6ae817c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff7b4d89617d8ac9698632b14127aac55895d21e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 867
- Live contracts: 0
- Unknown liveness contracts: 867
- Source-verified contracts: 179
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=105, contamination review=25, exact address book overlap=12, source verified unclassified=38, unverified unclassified=687

Showing first 200 of 867 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | FYToken<br>`0x53c2a1ba37ff3cdaccb3ea030db3de39358e5593` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | FYToken<br>`0xb38ba395d15392796b51057490bbc790871dd6a0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | FYTokenFactory<br>`0xa718ff3fa10fa9f797e98e35fd3a0bec9e0aa67c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | FYTokenFactory<br>`0xf374ab6b299945ff81c1523008d0d407380a396f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | Pool<br>`0x6bac09a67ed1e1f42c29563847f77c28ec3a04fc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Pool<br>`0xf5fd5a9db9cccc6dc9f5ef1be3a859c39983577c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | PoolFactory<br>`0x486635abfe14b8b3e6abb277747c4042405396ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | PoolFactory<br>`0x9cc97690639c0938e5f130e01b000ea42daaddfa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | PoolFactory<br>`0xe4d5a6128308b4d5c5d1a107be136ab75c9944be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | PoolNonTv<br>`0xe2f6f40192f3e4568a62577e0541ac823b6f0d9e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | PoolView<br>`0xce4bc6315555411ca162350a5adff3fac2afa952` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | SafeERC20Namer<br>`0x39bb9cbe0221d769e30bd08d185842065bce1706` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | SafeERC20Namer<br>`0xc484f3a773bb82ca6ba8ed0bcbabc333d3577703` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | Strategy<br>`0x1144e14e9b0aa9e181342c7e6e0a9badb4ced295` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | Strategy<br>`0x93dee161a396af75c7458a65687895299bfeb437` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Strategy<br>`0xcda62a19da5ee9dc6e3110cf211b483046b0f7d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | StrategyRescue<br>`0x0702290d4da74a2004c7e77f66c4bbd91fca62bb` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | YieldMath<br>`0x856ddd1a74b6e620d043efd6f74d81b8bf34868d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | YieldMath<br>`0xf003bd8a847a7ec2a76813495e734bc247ca6851` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | YieldMathExtensions<br>`0xea3d459b61ed77447fade80e5a3de617e947aa1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| candidate review | FYToken<br>`0x035072cb2912daab7b578f468bd6f0d32a269e32` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x0e7727f4ee78d60f1d3aa30744b3ab6610f04170` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x2e8f62e3620497dba8a2d7a18ea8212215805f22` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x3b560caa508ca8e58f07263f58ee2353044c0d5c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x5bb78e530d9365aef75664c5093e40b0001f7ccd` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | FYToken<br>`0x5ed71c03f8d7b86ac7943a2e3cb41d0ffe01bdca` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x60a6a7fabe11ff36cbe917a17666848f0ff3a60a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x68e9e0d89f96f40a98d3f42dc22430abbf662a1a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x69f402e82d549674cfaffb7d1227164596e37618` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x6ef79df8ebd6e7ce4f24773a59fd3f54d79857f3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x892fa63af42585bbe8a578278c95705391ca15e1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x8c41fc42e8ebf66ea5f3190346c2d5b94a80480f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0x9b19889794a30056a1e5be118ee0a6647b184c5f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | FYToken<br>`0xc24da474a71c44d2b644089020ba255908ada6e1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0xca9d3b5de1550c79155b1311ef54ebc73954d470` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | FYToken<br>`0xd947360575e6f01ce7a210c12f2ee37f5ab12d11` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | FYToken<br>`0xee508c827a8990c04798b242fa801c5351012b23` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Pool<br>`0x0fa29eeb169cde6c779326d7b16c54529eca1dd5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Pool<br>`0x13ab946c6a9645edff2a33880e0fc37f67122170` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Pool<br>`0x6651f8e1ff6863eb366a319f9a94191346d0e323` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Pool<br>`0x7fc2c417021d46a4790463030fb01a948d54fc04` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Pool<br>`0xf76906aa78ecd4fcfb8a7923fb40fa42c07f20d6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Pool<br>`0xfcb9b8c5160cf2999f9879d8230dced469e72eeb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | PoolNonTv<br>`0x02dbfaca22df7e86897adf65eb74188d79dabea6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x1cd29a42882c163bad7a7c0124c3195a0584c518` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x1dc344513b290f217074b86188c13aad9c9aa571` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x1eec5ed8e01e0232f5ab2d70bb00231250ab2e7a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x2769abe33010c710e24ea6af8a2683c630bbd7d0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x29e0de79ef2ea2cf8e6c95c9fae8d4c3774df3f7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x2e0c2b8e1ba8d2d743972fff85a6577704f9ece4` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x32cbdcfa3c11497277f6a384c2bfa9b34cb561da` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x3e0a639c4a6d4d39a0deae07c228ff080de55eee` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x3ea4618ce652eab330f00935fd075f5cb614e689` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | PoolNonTv<br>`0x530648558a27fe1d1bfc7356f67a34f4a7f06b6d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x536edc2a3db3bfe558cae74cedccd30f07f7121b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x53b0c1b8feb4decdcc068367119110e20c3bcbd3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x54d47f765fa247afee226fdf919392cdac6cbb2e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x58086b4950a6de8a0cc92020f83d979b6f1c9861` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x5f55b2311180d3bfe5bc1125b2446d371bcdd6fa` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x65142d171151d0a6f28385c45ce3fd642c9d155a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x7388f277441b3e1f3388f0464244e469fea30e41` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x7f0dd461d77f84cdd3ced46f9d550e35f1969a24` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x83e99a843607cfffc97a3aca15422ac672a463ef` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0x9a364e874258d6b76091d928ce69512cd905ee68` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | PoolNonTv<br>`0x9f873e17a629718b71e8e8f4e40f795883841efb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xa73ba15b76a165a4db56ef71b46d695a751334b6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xa8b291eef77ccc5f39db9c2d71d6a16b0edc7f15` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xa98f3211997fdb072b6a8e2c2a26c34bc447f873` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | PoolNonTv<br>`0xb268e2c85861b74ec75fe728ae40d9a2308ad9bb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xb71db5f70fe5af728db8c05930d48553e5a0eb98` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xbc62d88182ffa86918d0129f5bd35dea8df9213a` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xbfcee2057bda64152becb8015a171967bfe5d8f9` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xc6078e090641cc32b05a7f3f102f272a4ee19867` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xcf275fdd705b321789cd046694cebbf678c45fa3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xddeb62072c1ed94bf1b1018f33abaa432a974ca3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xdf19b3f238d71198cd0017dfa29b87a45506a556` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xe888e0403e3e992fdbb473650547428e90f9ddfc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xf0ba5cf116321a89b35b2d146ae5b861bd9c23d3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | PoolNonTv<br>`0xf6c1bd232b1d6de368de2bbed096d821f0596c28` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolNonTv<br>`0xf7f6eb1b097f60673e65347c83d83cb4ade82a0b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | PoolView<br>`0x3e9d89a883c00608d932f92bbd8bd948bf1a9cf6` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | SafeERC20Namer<br>`0xbd6bee8d3b9d1ee6b8105bed11a61fdcae4bff8b` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x067fb37dd51a4ef6fea0e006caf689db6c705812` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x0a4b2e37bfef8e54dea997a87749a403353134e8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x2c918c4db3843f715556c65646f9e4a04c4bfba6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x33e6b154efc7021dd55464c4e11a6afe1f3d0635` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x3b4ffd93ce5fcf97e61aa8275ec241c76cc01a47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Strategy<br>`0x4276beaa49de905eed06fcdc0ad438a19d3861dd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x4771522accac6fecf89a6365ceaf05667ed95886` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x5582b8398fb586f1b79edd1a6e83f1c5aa558955` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Strategy<br>`0x5aeb4efaaa0d27bd606d618bd74fe883062eafd0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| candidate review | Strategy<br>`0x7012af43f8a3c1141ee4e955cc568ad2af59c3fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x861509a3fa7d87faa0154aae2cb6c1f92639339a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x8b814ad71e611e7a38ee64ec16ce421a477956e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0x9847d09cb0eea77f7875a6904bfa22ae06b34cce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xa6624d8cf4a1ba950d380d1e38a2d5261b711145` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xa9d104c4e020087944332632a8c5b451885fba4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xad1983745d6c739537feab5bed45795f47a940b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xbd7a1069f56b1d4100202f72119e5cffb4bdfe38` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xc3a965beaf6e16ac98341232be2be016c0c61974` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xc7d2e96ca94e1870605c286268313785886d2257` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xceaf1cbf0cfdd1f7ea4c1c850c0bc032a60431db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | Strategy<br>`0xfe2aba5ba890af0ee8b6f2d488b1f85c9e7c5643` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | YieldMath<br>`0x511707b1311d6c3319e7a5be6edb12d3777be0da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| candidate review | YieldMathExtensions<br>`0xc445d7e3cdc96840439560675ca9023204ea9acd` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | Cauldron<br>`0x22843899c962a507d2fad01d6cbfd923b677322d` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| contamination review | CrabOracle<br>`0x35d753a30a750c0291cd86baedef7d27d55879f9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | Cvx3CrvOracle<br>`0x52e860327bcc464014259a7cd16daa5763d7dc99` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | EmergencyBrake<br>`0x0479f8de06e07ce834eefd9d7cdd50743118feef` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| contamination review | FlashLiquidator<br>`0xb9f14f36b33e43b1e913dfeb14949b78af3ced36` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| contamination review | Giver<br>`0xa98f3211997fdb072b6a8e2c2a26c34bc447f873` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | IdentityOracle<br>`0x0108c40a6d63f8018dae495745ce9fcf1e5ce1cf` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | Join<br>`0x08ffcb2d10c99f81a9edd118548efb7ab7a0eec4` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | JoinFactory<br>`0x0c2fc3ee04cfe813a6d31ffb904e5b9fcd7c9242` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| contamination review | Relay<br>`0xa4dab784d7feb04c4405816c50c14893df34f5f0` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| contamination review | RETHOracle<br>`0x318d5257d91bb6e73398af71a6de5b373d9b5340` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | StEthConverter<br>`0x93d232213cca6e5e7105199abd8590293c3eb106` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | StrategyOracle<br>`0x3ea4618ce652eab330f00935fd075f5cb614e689` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | Wand<br>`0x21f7794cf4e9af58cbd0a71fd33c73458981239f` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| contamination review | YieldNotionalLever<br>`0x256dc66d616529baffd41172b67afe7821bd5c06` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | YieldStEthLever<br>`0x3d80583c830af6f2a2628318bee3720ce5421bc4` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | YieldStrategyLever<br>`0x5582b8398fb586f1b79edd1a6e83f1c5aa558955` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| contamination review | AccumulatorMultiOracle<br>`0x0ad9ef93673b6081c0c3b753ccaabddd8d2e7848` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | Assert<br>`0x3201161c97e6b3c6e0e565d8cd17ae5d0bedb5f7` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | FlashJoin<br>`0xcb60bd598bf48be1e24262e8bf1e3703feca3470` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | Solvency<br>`0x5a65529ed3313a5dd3ed2d0bc196fca1acec10e9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | TetherJoin<br>`0x06aaf385809c7bc00698f1e266ed4c78d6b8ba75` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | Unwind<br>`0x54523f7c7856e321c6a7d765e9a2716cda4ec648` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | Witch<br>`0x07c2c74811cb14a5003c3ccff7ec436d504fffb6` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| contamination review | WrapEtherModule<br>`0x4cd01ed221d6d198e2656c16c32803bf78134568` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| exact address book overlap | Cauldron<br>`0xc88191f8cb8e6d4a668b047c1c8503432c3ca867` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| exact address book overlap | EmergencyBrake<br>`0x82375994c79e902286d347c9ede644ea12659fcc` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| exact address book overlap | EmergencyBrake<br>`0xaa7b33685e9730b4d700b8f3f190eca5ec4cf106` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| exact address book overlap | IdentityOracle<br>`0x15d5667115c988ddd96fecee67a0a75207d58bfc` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| exact address book overlap | Timelock<br>`0x3b870db67a45611cf4723d44487eaf398fac51e3` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| exact address book overlap | Witch<br>`0x53c3760670f6091e1ec76b4dd27f73ba4cad5061` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| exact address book overlap | Assert<br>`0xe1d7cd84c1e74fe06450899a8605f35d6f58fdc9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| exact address book overlap | Cauldron<br>`0x23cc87fbebdd67cce167fa9ec6ad3b7fe3892e30` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| exact address book overlap | EmergencyBrake<br>`0x667f185407c4cab52aeb681f0006e4642d8091df` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| exact address book overlap | EmergencyBrake<br>`0x84066caea6186a02ed74ebf32bf008a47cbe26ad` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| exact address book overlap | UnnamedContract<br>`0xb5d97bfe6456008b9118bb5568d9379c5d6c8832` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| exact address book overlap | Witch<br>`0x08173d0885b00bdd640aae57d05abb74cd00d669` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Cauldron<br>`0xbb59633fed6531d98985f7d2ae61159424c99eaa` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | EmergencyBrake<br>`0x097705d8c9071bc5152891946750f9f063f7b007` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | FlashJoin<br>`0xec202c3beacd59e6e0dcafb2e2a31ebfc3196899` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0x5bb78e530d9365aef75664c5093e40b0001f7ccd` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0x610498e3332740952610ca3fc2b627c94c25227d` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0x6fb97c793f0d83cda7796f45a2bb697e73a045a8` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0x7cb6ceabd9fa6895a8ce52e5e3459b67bc71e705` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0xc76a01d18463d7aebea574a34b7d70d8aab389b2` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0xd72ee212244f8a14c9c5e282c51d08caa1c0d604` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0xd947360575e6f01ce7a210c12f2ee37f5ab12d11` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0xee508c827a8990c04798b242fa801c5351012b23` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | Join<br>`0xfec8457d1bddfc52633da3323f812fc5c1800f61` | non_address_book | unknown | unknown | verified | n/a | `0x06fb6f89eaa936d4cfe58ffa071cf8eae17ac9ab` |
| source verified unclassified | JoinFactory<br>`0x7297644611af0dbb1be1c2b4885de9288edd81e8` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Ladle<br>`0xb57d6abb871c9c38f33162be62fb647ae2629a75` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Ladle<br>`0xeda38a5b1653ef0b460f10b93ff08c839bd32cc3` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Timelock<br>`0x77ff810d6d687df28adbe34bba9c7a0a4276bfc6` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Timelock<br>`0xa5e64f55f1d7244475ee3842e06295c1973482ed` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Wand<br>`0x62b929d9054f819c1e4639c215c76b59d57d3568` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Wand<br>`0x804bf114530000c1a55825a8b57248af01494c63` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Witch<br>`0x532759c8d84172a6c9974905820c5a3191032d35` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | Witch<br>`0x8dcc6e8d4a2e57690eab0acd009445ffc4b20f16` | non_address_book | unknown | unknown | verified | n/a | `0xa072f81fea73ca932ab2b5eda31fa29306d58708` |
| source verified unclassified | YoEscrow<br>`0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb` | non_address_book | unknown | unknown | verified | n/a | `0xe0c7562c785bfadfc76d36ed37a6388e451d99f1` |
| source verified unclassified | YoGateway<br>`0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf` | non_address_book | unknown | unknown | verified | n/a | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| source verified unclassified | YoRegistry<br>`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8` | non_address_book | unknown | unknown | verified | n/a | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| source verified unclassified | YoVault<br>`0xa9c5f18480fa36d4a84ebbd778c8ca6f65443052` | non_address_book | unknown | unknown | verified | n/a | `0xe0c7562c785bfadfc76d36ed37a6388e451d99f1` |
| source verified unclassified | YoVault<br>`0xda92d2172cd402d222131cc95a66ec7bd82dc169` | non_address_book | unknown | unknown | verified | n/a | `0xbb2518036502e5147bfbe8630caf28f5c964c9c9` |
| source verified unclassified | Escrow<br>`0xc5da2b9174234f34c5857295776f5ea1fe70ebca` | non_address_book | unknown | unknown | verified | n/a | `0xd9c452e307a9521bae23cb9e83ba71be057207ae` |
| source verified unclassified | EmergencyBrake<br>`0x9ca4d6fbe0ba91d553e74805d2e2545b04abefea` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Join<br>`0x1229c71482e458fa2cd51d13eb157bd2b5d5d1ee` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Join<br>`0xaf93a04d5d8d85f69af65ed66a9717db0796fb10` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Join<br>`0xc31cce4ffa203d8f8d865b6cfaa4f36ad77e9810` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Solvency<br>`0x608274736923c5205cec92c2fa24776b228b4d3c` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Solvency<br>`0x78e1805c8050aa84cd3575ef8b8193de754fb2b3` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Solvency<br>`0x95750d6f5fba4ed1cc4dc42d2c01dfd3db9a11ec` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Solvency<br>`0x96f9e61207b4093a72b3f07b1ae8de68d1a3223a` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Unwind<br>`0xa9871ff711c333765642d0d5343c1303e4341ea3` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Unwind<br>`0xc54734f39c20526c6a85fc4bf636174c9f9272b9` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| source verified unclassified | Unwind<br>`0xe84adc045ca815c114847385c98c273cde3489a2` | non_address_book | unknown | unknown | verified | n/a | `0xc7ae076086623ecea2450e364c838916a043f9a8` |
| unverified unclassified | UnnamedContract<br>`0x0013e17039566da4757edcb565d7d331e362ad12` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x0092a5552162f911ccf7f456e85f473ce259707f` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x00b98a7fa3eaf0e35b9fd353fe58306b61d2bdd4` | non_address_book | unknown | unknown | unverified | n/a | `0x05950b4e68f103d5abef20364de219a247e59c23` |
| unverified unclassified | UnnamedContract<br>`0x0158fc072ff5dde8f7b9e2d00e8782093db888db` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x01f7fd324b366380d2145dfa6c7a76fdb75f17b9` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x01fe7dde6688c92ddacab33bb2df7c20cf8c1702` | non_address_book | unknown | unknown | unverified | n/a | `0x05950b4e68f103d5abef20364de219a247e59c23` |
| unverified unclassified | UnnamedContract<br>`0x02551ded3f5b25f60ea67f258d907ed051e042b2` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x02ef55ad73ce24fa3d0b33dabcd4f27e0604e63b` | non_address_book | unknown | unknown | unverified | n/a | `0x05950b4e68f103d5abef20364de219a247e59c23` |
| unverified unclassified | UnnamedContract<br>`0x034f657f778b8441c3a89c9914dff67147bd8c3c` | non_address_book | unknown | unknown | unverified | n/a | `0x05950b4e68f103d5abef20364de219a247e59c23` |
| unverified unclassified | UnnamedContract<br>`0x0409d36ba4bad176ed62a97faf05253b6b206a3e` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x04b5179ea1ce7b3bf69e05bb7082f11af9fad718` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x07563293dbb881eef5f993f46da98e4116afde89` | non_address_book | unknown | unknown | unverified | n/a | `0x05950b4e68f103d5abef20364de219a247e59c23` |
| unverified unclassified | UnnamedContract<br>`0x078dc7e61b410e461328aba0022197ea6a969d08` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x086b4ecd75c494dd36641195e89c25373e06d7cb` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x091356e6793a0d960174eaab4d470e39a99dd673` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x0a058e89b904a701063fec9d0e770ba087ed3e76` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x0aeff85b59fb641c2f60cdd396294446cb93e27f` | non_address_book | unknown | unknown | unverified | n/a | `0x05950b4e68f103d5abef20364de219a247e59c23` |
| unverified unclassified | UnnamedContract<br>`0x0bc6d6c4f7ca318c07de9ce75bbad6cc0fbb7251` | non_address_book | unknown | unknown | unverified | n/a | `0x8b64fa5fd129df9c755eb82db1e16d6d0bdf5bc3` |
| unverified unclassified | UnnamedContract<br>`0x0c134e734b7e1e7955706f9abae7837b00f829a0` | non_address_book | unknown | unknown | unverified | n/a | `0xdd79dc5b781b14ff091686961adc5d47e434f4b0` |
| unverified unclassified | UnnamedContract<br>`0x0c7d644fe0b0a63aa6fcfc7baad575853d4a7704` | non_address_book | unknown | unknown | unverified | n/a | `0x05950b4e68f103d5abef20364de219a247e59c23` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [YieldV2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YieldV2.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14161] YieldV2.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| YieldV2.pdf | AccessControl | unmatched — not counted | — | — | no |
| YieldV2.pdf | Cauldron | unmatched — not counted | — | — | no |
| YieldV2.pdf | ERC20Rewards | unmatched — not counted | — | — | no |
| YieldV2.pdf | FYToken | unmatched — not counted | — | — | no |
| YieldV2.pdf | IsContract | unmatched — not counted | — | — | no |
| YieldV2.pdf | Join | unmatched — not counted | — | — | no |
| YieldV2.pdf | Ladle | unmatched — not counted | — | — | no |
| YieldV2.pdf | Math64x64 | unmatched — not counted | — | — | no |
| YieldV2.pdf | Pool | unmatched — not counted | — | — | no |
| YieldV2.pdf | PoolFactory | unmatched — not counted | — | — | no |
| YieldV2.pdf | Relay | unmatched — not counted | — | — | no |
| YieldV2.pdf | Router | unmatched — not counted | — | — | no |
| YieldV2.pdf | Strategy | unmatched — not counted | — | — | no |
| YieldV2.pdf | Timelock | unmatched — not counted | — | — | no |
| YieldV2.pdf | Witch | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 749 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14161] YieldV2.pdf

Fork inheritance lineage and inherited audits are included when available.
