# Agentic Audit Brief: Yield Protocol

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

- Project: Yield Protocol (`yield-protocol`)
- Website: [https://github.com/yieldprotocol](https://github.com/yieldprotocol)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 141 unique implementations (292 raw deployments)
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
- Outside the address book: 46 discovered implementations shown in the inventory but excluded from coverage (13 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 141
- Raw deployments: 292
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

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x07df2ad9878f8797b4055230bbae5c808b8259b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x08d2f5c96bb1f6be04b49bcd869d5af01db4c400` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0b202757acbbdf4c65ab262c4485d1e4b54e1ab6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1344a36a1b56144c3bc62e7757377d288fde0369` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1bf78be42cd72bbfcceef67dcc0a0e2a0eb5da57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x210f4e1942beec4038743a8f885b870e0c27b414` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x22768fcafe7bb9f03e31cb49823d1ece30c0b8ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x23cc87fbebdd67cce167fa9ec6ad3b7fe3892e30` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x27182842e098f60e3d576794a5bffb0777e025d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x28721b58c17a106a4846acf4e751ac3a4b670cbd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x30e7348163016b3b6e1621a3cb40e8cf33ce97db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x358538ea4f52ac15c551f88c701696f6d9b38f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3682fb75301da93a4a472110efc42318176ea444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37aea345301b93a14b740a7b7a5b6ed62b02a9f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4031057e802da9a7de7ed1da6401be1aff531f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x41bf71a2109fbdf7e5064a7421eaefeabf7a12f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x53fba816bd69a7f2a096f58687f87dd3020d0d5c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6008dbc83cd0a752b44a7e1b1a1e8b7355a90e17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x660bb2f1de01aaca46fcd8004e852234cf65f3fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6bdc1fcb2f13d1ba9d26ccec3983d5d4bf318693` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7af5d9e7c4d07252e77658b413f9c6def97921d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7cdce89594ddd8c7278fe58e2cd8fa97453fed1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x84066caea6186a02ed74ebf32bf008a47cbe26ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x892fa63af42585bbe8a578278c95705391ca15e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8a9262c7c6ec9bb143eb68798adb377c95f47138` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x95750d6f5fba4ed1cc4dc42d2c01dfd3db9a11ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x95b3b8bf66055977e2710bd93a6958fe77cc7aa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x96bf9ab0e421a3da31d4506c967a825312455767` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x97f1d43a217add678bb6dcd3c5d51f40b6729d06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9ca89fc21fdbde431df9080426f7b630012fe551` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa81414a544d0bd8a28257f4038d3d24b08dd9bb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb061818d4807249710a587b18728036bf7947465` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb132c10acabcb8966fa38e5ae9745039b7c8008b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc1361a14b67622f549db8dacb476bc6ff23c7e99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc597e9ca52afc13f7f5eddac9e53def569236016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcdce5c87f691058b61f3a65913f1a3cbcbad9f52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcdcea3ebc084f24a25ad6f18fd678b0c6b33843d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce96038cd2682525fea3de031be25a54312a9ced` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xcfdc01eaf336133ef4dc646816e8e845aad76ca3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd47a7473c83a1cc145407e82def5ae15f8b338c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd5b43b2550751d372025d048553352ac60f27151` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd659565b84bcfcb23b02ee13e46cb51429f4558a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdc3758330939a0253f30083a23e8843778348991` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe7a9771c692c428df17ecad6cd58d4938c010a2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xef2cd7a05fea92fbd2ce262fda43aeee56b669e7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf2f7c33234160387e5dc82b1412b522ab44876c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25c05796bcf7874df2b41b866c86a3e0bd1bbf3e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x30e7348163016b3b6e1621a3cb40e8cf33ce97db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3a717f3a896cbb979b4eff347649508f5f5c4cde` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x44386ddb4c44e7cb8981f97af89e928ddd4258dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x7237963eed1809976a0928a42f5d6f529e0df584` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x750b3a18115fe090bc621f9e4b90bd442bcd02f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x83c4cb8b9eb49a8db87455a5e6bb8f6bb24d42d9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x89343a24a217172a569a0bd68763bf0671a3efd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8e9696345632796e7d80fb341ff4a2a60aa39c89` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x93343c08e2055b7793a3336d659be348fc1b08f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9d34df69958675450ab8e53c8df5531203398dc9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x9ea9971d9e032d08c2118c97fa63c7618b46c104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9078e573ec536c4066a5e89f715553ed67b13e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263221 | `0xb5d97bfe6456008b9118bb5568d9379c5d6c8832` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xb8b238bba16a3f773fb7fe61213bb94371fc6b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4cb2489a845384277564613a0906f50dd66e482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc597e9ca52afc13f7f5eddac9e53def569236016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xce3d36e19de6a7b66e851c5b7e468e35dc83d29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6a63e2166fceeb447bfb1c0f4f398083214b7ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xeaa886daba2b26d962efd7f98bed0e47e9455560` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xed84bdfba3629c232953d34033545a38f0e57bd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xedc965dcd634b0a9843569577654669225955e8a` | ❓ Unverified |

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
| needs_review | 69 |

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
