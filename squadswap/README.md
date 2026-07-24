# Agentic Audit Brief: SquadSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: SquadSwap (`squadswap`)
- Website: [https://squadswap.com/](https://squadswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, blast, bsc, optimism, polygon
- Contract surface: 402 unique implementations (745 raw deployments)
- Coverage basis: 2/41 confirmed own live verified implementations (4.9%); conservative 4.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,281,098.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SquadSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across arbitrum, base, blast, bsc, optimism, polygon. Structural roles: 31 unclassified, 11 supporting, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: unclassified (31), supporting (11), core (2)
- Contract kinds: contract (41), unclassified (3)
- Detected standards: ownable (7), multicall (6), erc165 (2), erc721 (2), pausable (1)
- Frameworks: openzeppelin (10), uniswap-v3 (6), uniswap-v2 (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 92 contracts are derived from known codebases. 92 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x16fbb33001d74e4fb6d1423189a74f89da058788`, chain 10)
- UnnamedContract (`0x202de677e39616691b8493e36e2c739276b794a3`, chain 10)
- UnnamedContract (`0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a`, chain 10)
- UnnamedContract (`0x5fbd88f04963c25e51ccae20951f815577a234c9`, chain 10)
- UnnamedContract (`0x7ea21af2920e0d1e17ef82ea9531762f504a14bb`, chain 10)
- UnnamedContract (`0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898`, chain 10)
- UnnamedContract (`0x89c0619e7a798309193438b3cff11f1f31266711`, chain 10)
- UnnamedContract (`0xa1288b64f2378276d0cc56f08397f70becf7c0ea`, chain 10)
- UnnamedContract (`0xb124a847306f695e3ad44bd62a6356e75683212e`, chain 10)
- UnnamedContract (`0xb6171582c75421a740dcc15e4d873a34cb2ebb48`, chain 10)
- UnnamedContract (`0xba34aa640b8be02a439221bcbea1f48c1035eef9`, chain 10)
- UnnamedContract (`0xbee3209e04f926ce9df2a22c457d44303e543365`, chain 10)
- UnnamedContract (`0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b`, chain 10)
- UnnamedContract (`0xd432617a31807c531116c2e39c251759ac905b6a`, chain 10)
- UnnamedContract (`0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8`, chain 10)
- UnnamedContract (`0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1`, chain 10)
- UnnamedContract (`0xea006904113a96995e51cd9065ca6b9833da7fb1`, chain 10)
- UnnamedContract (`0xee8f37d490cb7ea1dae7d080c5738894731299f0`, chain 10)
- UnnamedContract (`0xf48d22968e87c52743f9052d8e608ecd41facacc`, chain 10)
- UnnamedContract (`0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85`, chain 10)
- UnnamedContract (`0x48470d8b60067d004796823fce21ed9df18d6ddb`, chain 56)
- UnnamedContract (`0xa9712bc605bfedf37742e8ce41a9e57e50fb2e4a`, chain 56)
- UnnamedContract (`0xc1fa2a15e19c62b2cf771a7c6c270ef194e217b9`, chain 56)
- UnnamedContract (`0xe2787506ca9b5f17b64a4e1bb789c017c3620acf`, chain 56)
- UnnamedContract (`0xf6dcd58e71ba7d3fbcb37ca166f4c53ffd8b9a87`, chain 56)
- UnnamedContract (`0x369967bd0bd3b7550b16d251d42def66fc78d279`, chain 137)
- UnnamedContract (`0x3a58002d40f5aabef676291e17be464bb3982286`, chain 137)
- UnnamedContract (`0x633faf3dac3677b51ea7a53a81b79aee944714dc`, chain 137)
- UnnamedContract (`0x6785dcce80e1adb0efaa602867d0f3127210ed4c`, chain 137)
- UnnamedContract (`0x7f5f5a9542a61fd6948f08966b89396fbf6fd4cf`, chain 137)
- UnnamedContract (`0x8716f18f1f5a542ce565d2e365c0a9ebdf8715a3`, chain 137)
- UnnamedContract (`0x87b10463f06767611e26ff33b7b82434a0749d09`, chain 137)
- UnnamedContract (`0xa2a1e60dc0742b43512bb3d67a148523ae482878`, chain 137)
- UnnamedContract (`0xb00152041c98a5547252f411ebc8b39637288fa2`, chain 137)
- UnnamedContract (`0xb3228e597587f7aafb1549311ada17eca59a7a19`, chain 137)
- UnnamedContract (`0xb3a2090ac9202da7948634f6e603ada179dd529e`, chain 137)
- UnnamedContract (`0xc49f63335c1e648ea2a4a75e8067241ff271d25c`, chain 137)
- UnnamedContract (`0xecfa6bcab627f1b673203ca1f334a1c44199d229`, chain 137)
- UnnamedContract (`0xee8f37d490cb7ea1dae7d080c5738894731299f0`, chain 137)
- UnnamedContract (`0xff29b10e249bd4c9e6cf3a1cd4bb77c33627c261`, chain 137)
- UnnamedContract (`0x202de677e39616691b8493e36e2c739276b794a3`, chain 8453)
- UnnamedContract (`0xb124a847306f695e3ad44bd62a6356e75683212e`, chain 8453)
- UnnamedContract (`0x0558921f7c0f32274bb957d5e8bf873ce1c0c671`, chain 42161)
- UnnamedContract (`0x110909bc7d16465d1d0fa76c3fcd498830bc1abf`, chain 42161)
- UnnamedContract (`0x11b7018204cb458741b56725422bc64cf7be7d99`, chain 42161)
- UnnamedContract (`0x2e815e8c6c02e27b54b571d27e3ba9d94394f39a`, chain 42161)
- UnnamedContract (`0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f`, chain 42161)
- UnnamedContract (`0x7da1ec4d785120eafb290a9882268b6bdef9f620`, chain 42161)
- UnnamedContract (`0x8243000e75c462de44cf6dfbb5b3508b1fb78d1c`, chain 42161)
- UnnamedContract (`0x95e8014d86af94e6abea38822082da728b9fe902`, chain 42161)
- UnnamedContract (`0x9cbb069efbd193e239b66540cf43d5b022a41691`, chain 42161)
- UnnamedContract (`0xba34aa640b8be02a439221bcbea1f48c1035eef9`, chain 42161)
- UnnamedContract (`0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2`, chain 42161)
- UnnamedContract (`0xd605072c79c4e7d85174600f59c335420cb713aa`, chain 42161)
- UnnamedContract (`0xd6bd395fca868071edc79fe6242176a48ca83e64`, chain 42161)
- UnnamedContract (`0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1`, chain 42161)
- UnnamedContract (`0xea6fd462b72cdd0f535125cacbc33b9b7ba68eed`, chain 42161)
- UnnamedContract (`0x87048e29c149577266331792bc4537201ce7e36a`, chain 81457)
- FeeManager (`0x5af85b993645af4e530f93721653fb9b6a424b00`, chain 56)
- FeeManager (`0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85`, chain 8453)
- FeeManager (`0x34bc76f2b5ae25dbe56270a73fbab17a1361f2b9`, chain 81457)
- LovelySwapInterfaceMulticall (`0x6d705b6729afae099a8447475a88c88265c7fee7`, chain 56)
- NonfungiblePositionManager (`0x501535ef0b92ee1df5c12f47720f1e479b1db7b4`, chain 56)
- NonfungiblePositionManager (`0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8`, chain 8453)
- NonfungiblePositionManager (`0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb`, chain 81457)
- NonfungibleTokenPositionDescriptorOffChain (`0x5a547c636c40246b53423e45861ecc28b06d8d59`, chain 56)
- NonfungibleTokenPositionDescriptorOffChain (`0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3`, chain 8453)
- NonfungibleTokenPositionDescriptorOffChain (`0x64d6f44907ac087d97315899bdcc35151ace3693`, chain 81457)
- SmartChefFactory (`0x6427824d446e5be25326ab1b88c8102f0d52ec16`, chain 56)
- SmartChefFactory (`0x29626c367d4f334f92fa21b1c5958bbe1dc2af09`, chain 8453)
- SmartChefFactory (`0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75`, chain 81457)
- SmartRouter (`0xfb96f59a63c60dfc8e13547b3e9e366a3c0b8b5b`, chain 56)
- SmartRouter (`0xf48d22968e87c52743f9052d8e608ecd41facacc`, chain 8453)
- SmartRouter (`0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd`, chain 81457)
- SquadInterfaceMulticall (`0xee8f37d490cb7ea1dae7d080c5738894731299f0`, chain 8453)
- SquadLimitOrder (`0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9`, chain 56)
- SquadswapRouter02 (`0xcf870c78b7985a5b67a6f3f547678387015ee48d`, chain 56)
- SquadswapRouter02 (`0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1`, chain 8453)
- SquadswapRouter02 (`0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c`, chain 81457)
- SquadV3Factory (`0x10d8612d9d8269e322ab551c18a307cb4d6bc07b`, chain 56)
- SquadV3Factory (`0xa1288b64f2378276d0cc56f08397f70becf7c0ea`, chain 8453)
- SquadV3Factory (`0x6ea64bdca26f69fdef36c1137a0eae5bf434e8fd`, chain 81457)
- SquadV3LmPoolDeployer (`0x97eed6ab0a815f054b8bb5ed98e449aceca4bc8a`, chain 81457)
- SwapRouter (`0x56956af389c6bc07f4c57837b49dd03b4238ef70`, chain 56)
- SwapRouter (`0xd432617a31807c531116c2e39c251759ac905b6a`, chain 8453)
- SwapRouter (`0x416a2ca1e6929ab47b6562c86685f72cedae4b0c`, chain 81457)
- TickLens (`0x7c9c9220b563a09167943fd327d50e858c0a6373`, chain 56)
- TickLens (`0x5fbd88f04963c25e51ccae20951f815577a234c9`, chain 8453)
- TickLens (`0xad2feaeb62e09e4b775bd497e481190eb8e6a24b`, chain 81457)
- V3Migrator (`0x9d19dd8d1967306b8bdea5efb38de693629ca47f`, chain 56)
- V3Migrator (`0xbee3209e04f926ce9df2a22c457d44303e543365`, chain 8453)
- V3Migrator (`0xa58659e37ab1c445b70a76958b02d8b399b674ab`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 44; live-surface rows included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/99 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/41 (4.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 99 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 303 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Confirmed-live implementations: 99 of 402 unique; 303 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/86
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 316
- Unique implementations: 402
- Raw deployments: 745
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 2.3% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-256955 | `0x918adf1f2c03b244823cd712e010b6e3cd653dba` | ✅ Audited |
| SquadswapRouter02 | adapter | project_anchor | own_supporting | 0 | bsc | unit-256959 | `0xcf870c78b7985a5b67a6f3f547678387015ee48d` | ✅ Audited |

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BinFeeManagerHook | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0ec6a90be27728272796d456656e05989860ab86`; bsc `0x73e5fd3b64c59f1e1a1cab159656444f16a58113`; base `0xd4db07c5998d26cb5e653781f232fbe9dfc6abdd`; base `0xda3eb4017f761f9d57c749f8c4ec18364a019426` | ⚠️ Unaudited |
| CLFeeManagerHook | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x73c5c84703540ed1f1f279614853a302cc255c0a`; bsc `0x79a4be88afed3fc8cf331905cd6dd404ab4b0b18`; base `0x84863ed76def209dceca9f8ba703366c550a2598`; base `0xf397f14acf5a0e2810c382d15d633c0308e86c97` | ⚠️ Unaudited |
| CryptoV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 27 deployments: bsc `0x14af3968913145ee83a64509125a6484262eb28a`; bsc `0x2110681156bfa4efb94b8d3ba7f75bf0ed0ede52`; bsc `0x2d53ad8eaa92ddbc221f9c691ad4f8ad763380b7`; bsc `0x3152238be04ce0e5b1bf77acd37fd157e0df8140`; bsc `0x3874f3832c77e44b3980749dcc0b2e9fd921af19`; bsc `0x39f4d94ea4413d9ce7cb4c7fa721d52ad66f01e6`; bsc `0x41c9b3c89add331780bf5511ea79d10823756fd0`; bsc `0x423a8372ab496047938b683e6131fa4fd811e6a7`; bsc `0x4645d46a2770554bd46d73ce4756fc357bb4a630`; bsc `0x4bb63aa6da3feea4f170872d04943309e654b572`; bsc `0x514fb38f992fe55987e8b330182a6e6b9b7bf3b6`; bsc `0x817d75a273259859cf233441df943dfebfb02cd1`; bsc `0x8e5c10f55cd728a5f7fececf7bef4657da038826`; bsc `0x9199c39ab122bde29264cd7ff1566b6a790bbdd1`; bsc `0xa1f15e4e182263ec25d4a1b20f487ec1d3844b1a`; bsc `0xa76cc233e9f8296e65ca0654f3904ac4aded40f5`; bsc `0xb249546c4f672a2296583277eb86473906bf7eac`; bsc `0xb4feca656abe3d7d11d51f48318b93a8b15290ec`; bsc `0xc1aa76c93941bb30c34d5b40f9d0b28ff5ef0cb9`; bsc `0xc7c00e2a9183019df1bb063c7f0bcde9e78f93e2`; bsc `0xcb20794b94b2f08d1a39b4f76ab645a915b46c45`; bsc `0xd51b468ff89ed412a3b3ace31dfe979f2301bd8d`; bsc `0xdd344b75d7bf09faa6fe9d6c925d6b6bb0faa980`; bsc `0xe4d84988e8f70b8696d94abfbfdec18327afe50f`; bsc `0xe7745b23d615e8f6b9eac33f9fb53d33719bc32f`; bsc `0xeb051603376a9c3841e42846517c62fef692322f`; bsc `0xf80812520e01bede26252125567670820670623c` | ⚠️ Unaudited |
| FarmBooster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e`; bsc `0x672d6081d56be6874577a8c521c47394e508c9ca`; bsc `0x832c70b64b1ca58f0acd941115a0910fb1421099`; bsc `0x9ee6c64db99c671b1a6d042ea75b2b3b4108a820`; base `0x7f5f5a9542a61fd6948f08966b89396fbf6fd4cf`; base `0xc589b6e676a7e716da944b73bf4ae4e75bc6061e` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 28 deployments: bsc `0x0a0c8a19a44f583a5123b7cd3f5ac6a5b3f5213b`; bsc `0x0bfbf7e0ac742e4d0156dde41127ae1e585780d1`; bsc `0x140377fbc1312b981c9ca7aea94d7262f6652975`; bsc `0x215f4bb71acf68b73f4dc6903a77c9cd2183ad95`; bsc `0x32be406e29894cb14470fb665e06fc233d436d7c`; bsc `0x368cf17adc8ec48ac16444daf43d30ee192f13c8`; bsc `0x37c1fc9cea6360e159964137fb9d6b8d50fa0f7d`; bsc `0x4b70dcf28696b2bccc078e2de44e9b8d92e58077`; bsc `0x6777b922491f5e5491859248a478f27a18607d92`; bsc `0x7a7d7495f17551bdecc1fe2df49c513240e528e9`; bsc `0x7f478bc592269ef304b94bffa46f83fd2dd225a4`; bsc `0x87983b7d9c5e27f486b77a5ce627107c45f7fae7`; bsc `0x8e3c312c06a27abdd0ebc0e00930f17cef7f004f`; bsc `0x90cea45b113b3486afa73620e569a1ad980d8e3a`; bsc `0x9d8b42760655a0ccd51f3153ee5f6b828ecafb3c`; bsc `0xaeae1575ffc254866f89ebf2a1fc6cae465e61e5`; bsc `0xb520d5873953c728e657eb9c7ce783359206fa42`; bsc `0xc6f46f1b036cdc3e40eface2430728410dc6a4e9`; bsc `0xccca34c2377c9253c85d73ee24c3754cb55efc52`; bsc `0xd5a3392993520f5b88d308b9264351fabf839939`; bsc `0xdb0e65d3750ac4187c9a22cd618c50a984a45959`; bsc `0xf950c9a32cbad8d7940a4352bd731f9f8ebff370`; bsc `0xfe30df02cf69528c25c941aed76d03d23704d591`; bsc `0xffa78f1a6ba9287aea5311a2c8ff18c484da9c9a`; base `0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2`; blast `0x4969e5f986ee7b3b8ef6164cd7b5b2c6196e7212`; blast `0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a`; blast `0xafedaf82731509d01c4e7451ce3f4d1513c3abbc` | ⚠️ Unaudited |
| FeeManager | governance | project_anchor | own_supporting | 0 | bsc | unit-256950 | `0x5af85b993645af4e530f93721653fb9b6a424b00` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | base | unit-256991 | `0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | blast | unit-256967 | `0x34bc76f2b5ae25dbe56270a73fbab17a1361f2b9` | ⚠️ Unaudited |
| IFODeployerV10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x05fff74251a29dac98e10a4314ecf05031c5fb39`; base `0x143bc7691c777f608fb0d91d777dd4d6f57d94d9` | ⚠️ Unaudited |
| LovelySwapInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 18 deployments: bsc `0x04df0e8168e5d0c42dfd6dc5c414957975e7ec09`; bsc `0x3e89ded0acfa3db3cc5ff748200f8f8a8ecc42d5`; bsc `0x4543fa3d90ed256730ff785a28401675b038c3d5`; bsc `0x48f4136d180742393ad33af443e9a10c2cff34f1`; bsc `0x5724560b82360c619b345b3065754751141b9635`; bsc `0x7230a206150720834d78d5a083b1c0758259ad17`; bsc `0x77bec3dcfd2a400b4007061b3050cfaa95f1c351`; bsc `0x902dc540dd4801d2bfbd4e73a160edc25172d38b`; bsc `0x96b68df2640ec1cda7c965b975f65d2148023a58`; bsc `0x997534c367188c2b36954c9d1bca01ab11906b88`; bsc `0x9d758e2bdd82d2a721c8f7efc4cb0ea267b43d74`; bsc `0xb148c1bf4d0ff4fbe8ae708137529281c19253ae`; bsc `0xb1d3bf7fa20caec6b949dea2322aa5364bdc81ca`; bsc `0xb4b76b115b19608368797c550c5403e7b4f1a62c`; bsc `0xb66e73588295aa0ad32010561e88bb8eec5b8039`; bsc `0xc96bf5c394772b2925e237224b5f2a7fd4e6229e`; bsc `0xd34feaf48945834b03411fe83cc7f468e8f7c4ab`; bsc `0xdf1996615e68cb847670f929045bdee69eb720ce` | ⚠️ Unaudited |
| LovelySwapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | bsc | unit-256953 | `0x6d705b6729afae099a8447475a88c88265c7fee7` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x2e881a10f682a3b2cbaaf8fc5a9a94e98d4879b4`; bsc `0x6316f6a2029532e7f088459987f50ed4b122b82a`; bsc `0xec6743618f18ba97b1973c476feab0da387a76ca`; base `0xb3a2090ac9202da7948634f6e603ada179dd529e`; base `0xb6171582c75421a740dcc15e4d873a34cb2ebb48`; base `0xc49f63335c1e648ea2a4a75e8067241ff271d25c`; blast `0xdee10310e729c36a560c72c0e8e3be0e46673063` | ⚠️ Unaudited |
| MasterChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 10 deployments: bsc `0x19bcd1034517bbf6ef9b6d0b543efc7bd9029359`; bsc `0x2ca14af00e6847c0600067f94a8b7cbfaff96868`; bsc `0x44ec8143eb368cabb00c4eff085af276260202b5`; bsc `0x87dd4bc5dbddcb7734a5fe1e01359dcda180200f`; base `0x87b10463f06767611e26ff33b7b82434a0749d09`; base `0x89c0619e7a798309193438b3cff11f1f31266711`; blast `0x16fbb33001d74e4fb6d1423189a74f89da058788`; blast `0x58fea80fbdc1612d0de866a63c7787c5f4178dc7`; blast `0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2`; blast `0xda3840837df961a710c889e0d23295df82ccff8b` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 25 deployments: bsc `0x18825ac647a9fbb684f7bfac6e806046a6a5aa02`; bsc `0x1ad99ee2474e282b0372f28968ef3b1558e7d85b`; bsc `0x1db019de39d6a6b1941536c73a498cd3b5ef7f2a`; bsc `0x3e8d242325c540414fd351f7ca252074324dc0b7`; bsc `0x43d6653b74b260b59868ad2555b1e30868492a07`; bsc `0x4d9dffd0b89d7c01d16548f9dbbbd6f7e3f496a1`; bsc `0x4f0ece46362310ae93aee49c3713e77455eda1b8`; bsc `0x50b2f731af2bff897fadf67c5728df7cf582f553`; bsc `0x5a24574043b26c521a7a212e9ad54dcd36bcde2c`; bsc `0x65259056b417e928ddee9207377cdecb7f7c423c`; bsc `0x709d098ef72b2c934a7cd74a7211a7778fce884d`; bsc `0x7bce430222060e22dd7eae28c4485048709cd10c`; bsc `0x8b3aa379b15f903937ac5b4af7c53e1c867d0a02`; bsc `0x9e6b2d4a2239608ad3a34bb66ff90e3d8c0cb071`; bsc `0xba00350f2e1797e8dfc101391bad241cc93acf04`; bsc `0xc7b97514ab35ab9f7c892f58fe82d3e050beea56`; bsc `0xc8ad447e1f50a3b7221397ba57e64a394562fadf`; bsc `0xdfc06143fe23f63896df2334f14349f824e9e9a0`; bsc `0xe5a7fe6e60ba6bfda47fd0959f6b1d0701ef0adf`; bsc `0xf3de356f5f9bc1708dacfe50cd95a65bfaef037a`; bsc `0xfc008dbc8240cbc7d2f3c05ff946867123a4a37b`; base `0x933f979e46552e776772d0cfd5794de833a409b9`; blast `0x2c0126bf08392af72a396bce44beb69922fe2d7a`; blast `0x8243000e75c462de44cf6dfbb5b3508b1fb78d1c`; blast `0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | bsc | unit-256992 | `0x501535ef0b92ee1df5c12f47720f1e479b1db7b4` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | base | unit-256987 | `0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | blast | unit-256965 | `0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 12 | bsc | n/a | 13 deployments: bsc `0x0a4224cbecec4a8337f722ed105916544e377778`; bsc `0x20dcd7f1a7f94ad89127a3941dfba7caf74c0274`; bsc `0x2f314b0677014bdbac0f7b6accc9e2bf3393d3b2`; bsc `0x3109db9514d4efc08724905638cf58ab2d5bfb4c`; bsc `0x35b936aee0acb004db068d4e657f3c828f2266fb`; bsc `0x4546db365234e69257184265a521a27fffbdb7a2`; bsc `0x5e4eddf5156a44cd2e3645161d2664f7f252e377`; bsc `0x816e5dffbd15d38258ebf7e9be7b089952c15f8b`; bsc `0x92008f34e659f6380d5d01d858a2e7089cf88317`; bsc `0xa149f97cc2afa9e8d1f598d722b9e9375bddd4f8`; bsc `0xa4a858cd8cb232bea53f6cc65709d74487d6b362`; bsc `0xa5fc801a1fc399096f21f6f2a6e5599b003d0ba2`; bsc `0xd01a4a289feda4b26ded842f5abc6dd3740d071a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 7 deployments: bsc `0x26583d87f43e09258955605e92e63fe40e792df4`; bsc `0x2bcb99de533c698183629ca0b1db61533e2cfdc4`; bsc `0x38197c62bf976de90858b7e2d3eb4f213299727b`; bsc `0x4991384d71bd8138ef6da70cb4b8ba8185370360`; bsc `0x504eba353d66490de319df4e1f08334ceb893295`; bsc `0xbb27310c711b63d4b3f87f864b40ab28e39e310d`; bsc `0xdc3dd3a66b0974324098f7e8991f9b83f3aa9be6` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x32d4a74ed5b7b62ce2e60d14ca8bfffb381d5c86`; bsc `0xac9240e776b1141b77740390ad199122bb18a7e1` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | bsc | unit-256993 | 2 deployments: bsc `0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150`; bsc `0x5a547c636c40246b53423e45861ecc28b06d8d59` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x6967cbfb72048a7efeb23b6dbb5aee51d89ed648`; bsc `0x80ff20176610b4b796c78c8aa456efbf19cf17ed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xcbdf563ec6fe9662273a9aa085d5897323968a00`; bsc `0xe5200b8b42a98ba3af9cb7f7b1566887d9cd915b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | base | unit-256995 | 2 deployments: base `0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3`; base `0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xea6fd462b72cdd0f535125cacbc33b9b7ba68eed` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | blast | n/a | 3 deployments: blast `0x295f6ad2fd02ef9fa87a30bb337f0a40221649c5`; blast `0x7da1ec4d785120eafb290a9882268b6bdef9f620`; blast `0xd432617a31807c531116c2e39c251759ac905b6a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChain | unknown | project_anchor | own_supporting | 1 | blast | unit-256994 | 2 deployments: blast `0x64d6f44907ac087d97315899bdcc35151ace3693`; blast `0x7b7a8f7d1966cd6ebb60fc11bd69b7c903cb8172` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptorOffChainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9cbbb360867fe5b10d143f870ffb699b3300e365`; bsc `0xfa0c021cec037b3baf9fbc1776b8803ce36c24d3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: bsc `0x17f24a87a6ca5788ef4c65c81a034c8bfeb107f7`; bsc `0x6221221c86e87905f1fa9b317e616e81ad921769`; bsc `0x6c8d432ff748cc3b28dcb5edac5e8b95b9f1448a`; bsc `0xa313c4e4f3c52707ba84e936d809340fce41bf13`; bsc `0xa4af76f9ebc9064915836c4c6d7e5275b1b3d7bf`; base `0x07fd20b71e3ea3e2cbe21070a042e58b42838251`; blast `0x2149e9083a9440c74062eff56cc012651b9e1a9c` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 30 deployments: bsc `0x291b831c8f61331ad2b91e36a653c9d5024b0b4b`; bsc `0x2a5d10043182de609fe0c5ce4af1fc6530d266dd`; bsc `0x330dabb7fdeb1e80df6650587623bcf0a70f4310`; bsc `0x465ccaa2c5409984cc91e289c4430361406ddff3`; bsc `0x5165572b464481055118966df58a93e7adb9f714`; bsc `0x547b40cee71b09f4303cad735da7993fdddb23a2`; bsc `0x57e621abdd6d90e535d3b16401974d6129036bee`; bsc `0x629c12dd8316427d541ee0695efae505c4197215`; bsc `0x699de5108582e281f854e0ac867316d9e47cc6a3`; bsc `0x72992fb83ef818d35ad1de32a29087193a2eab6e`; bsc `0x732431566a79016c2326b70bedf041fe99199eeb`; bsc `0x81da0d4e1157391a22a656ad84aab9b2716f21e0`; bsc `0x86a3b52dc995f2fefedc696419c2973369ac70d7`; bsc `0x9c3ab912666d7819cf3979466dff431d7089f1a0`; bsc `0xaabe3ac142c7532f26505d1b00cf86dd361e89b9`; bsc `0xaf78c3c4100070337dba8c79065339cfb77cfe7f`; bsc `0xcad9ec0f4881d7940abddc63edd390fc0e6edad5`; bsc `0xce631cfea8be8ee5a6810b896071273c613e61f9`; base `0x1444037d01234cb4d0c36dadb0cd0534b7cf27fc`; base `0x6785dcce80e1adb0efaa602867d0f3127210ed4c`; base `0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898`; base `0xb00152041c98a5547252f411ebc8b39637288fa2`; blast `0x061856959b3bbfe9353b2cc157a44ddba5186a3d`; blast `0x59378af882fd1873446560af83000ef3eac9ae42`; blast `0x7b8227c3dd6e3df8468bf1621fef1f443e085b5c`; blast `0x7e983287600aeb2f88943a1f01ed9c1b407c9a88`; blast `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb`; blast `0x829ce74128ea95c72aa379168df529feaa464aee`; blast `0xd605072c79c4e7d85174600f59c335420cb713aa`; blast `0xee8f37d490cb7ea1dae7d080c5738894731299f0` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x04e54d8d216d55bec7ae9fb528168582a79407f7`; bsc `0x28aa1b87a5d7f8cfa7f3cc3bf7bd42d5a32ce150`; base `0x7171ea998e068ab490c7c4f3afb86a146dfea1a7` | ⚠️ Unaudited |
| SmartChefFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-256952 | `0x6427824d446e5be25326ab1b88c8102f0d52ec16` | ⚠️ Unaudited |
| SmartChefFactory | unknown | project_anchor | own_supporting | 0 | base | unit-256979 | `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | ⚠️ Unaudited |
| SmartChefFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-256970 | `0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75` | ⚠️ Unaudited |
| SmartChefInitializable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc566fb4ac9bcd311b5fad9686e9b855aa217a5cb` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-256963 | `0xfb96f59a63c60dfc8e13547b3e9e366a3c0b8b5b` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | base | unit-256990 | `0xf48d22968e87c52743f9052d8e608ecd41facacc` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-256966 | `0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd` | ⚠️ Unaudited |
| SmartRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: bsc `0x8b0c61843dc450637e88e524666f5fe18ccc727b`; base `0xe55d12a1326eaa5d54e6fca257a0c0fcdf524377`; blast `0x5fbd88f04963c25e51ccae20951f815577a234c9`; blast `0x95e8014d86af94e6abea38822082da728b9fe902`; blast `0xdeb0bf2d02f9fe9f20f3dd62b73bddbd4c2870c0` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-256961 | `0xf1a0c1ce6d2f3ef752b97765f28f6c0cda79a811` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | base | unit-256981 | `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: bsc `0x5ba2470b3b771f3bc31b75cf72dcfc9d9f0d6ed3`; base `0x369967bd0bd3b7550b16d251d42def66fc78d279`; blast `0x1bc323a5a87e6c7f463b805112db39507fbb70e7`; blast `0x5dbbf70e0f50fb89e48b946e9efa2a906453312f`; blast `0xbee3209e04f926ce9df2a22c457d44303e543365` | ⚠️ Unaudited |
| SmartRouterHelper | unknown | project_anchor | own_supporting | 0 | blast | unit-256977 | `0xdfc40e4aa84acb09a55e7cb5428c38ee41ef090f` | ⚠️ Unaudited |
| SquadAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x0faf03221993513de5c03e2484c114a4c8a3ad11`; bsc `0x3234a2c6fec4d0ac9de4e84cbf70be21392e4556`; bsc `0x34426350c3edc8df5ef2b59204860ef883284381`; bsc `0x44b002ce8998dc9fef7bd2fc733dc06d0e1fc5f0`; bsc `0x6c8d189aeea5ca02acb0fdc3e632b0c001856954`; bsc `0x75dd156040c8404083f337f857bf971cbacf72ab`; bsc `0x8dd8d25a5e812ed44bcaf1b61978c95b3c45a9e8`; bsc `0xae6afd10aa970ca82164e8e05a3a13888a28985a`; bsc `0xb3456393f21c6278cd066fb591bbed6bcedb6c21`; bsc `0xb9abf7c9baa946c532af253a5ccc965fce79ec24`; bsc `0xbce603089a6e6e7163bd9e0d6c2a499b68a294d1`; bsc `0xc47b5edd38f2cf8523c09d3530022708b538a458`; bsc `0xd1ed246c5d3161783bb08e1f8465f6776d6b3f83`; bsc `0xe5104232ca7d365a4197ddaa782e93094fc130d5`; bsc `0xf48a354e3a796615d0a00d956f6a8a2a96c919d4`; bsc `0xf735d6eb05c47c0c596c5aa4ecaa981a82a90ba6` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | base | unit-256989 | `0xee8f37d490cb7ea1dae7d080c5738894731299f0` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | blast | unit-256964 | `0x02ce24a6bdb469645e3615f418676f48c8c4e691` | ⚠️ Unaudited |
| SquadInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: base `0xdee10310e729c36a560c72c0e8e3be0e46673063`; blast `0x07fd20b71e3ea3e2cbe21070a042e58b42838251`; blast `0xd6bd395fca868071edc79fe6242176a48ca83e64`; blast `0xf90391076b9365b67546d6a5b1c7de71329834c9` | ⚠️ Unaudited |
| SquadLimitOrder | unknown | project_anchor | own_supporting | 0 | bsc | unit-256951 | `0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9` | ⚠️ Unaudited |
| SquadOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x08ccb86a31270fd97d927a4e17934c6262a68b7e`; blast `0x08ccb86a31270fd97d927a4e17934c6262a68b7e` | ⚠️ Unaudited |
| SquadswapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: bsc `0x1d9f43a6195054313ac1ae423b1f810f593b6ac1`; base `0x11b7018204cb458741b56725422bc64cf7be7d99`; base `0x1bc323a5a87e6c7f463b805112db39507fbb70e7`; base `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551`; base `0xd6bd395fca868071edc79fe6242176a48ca83e64` | ⚠️ Unaudited |
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | base | unit-256984 | `0xba34aa640b8be02a439221bcbea1f48c1035eef9` | ⚠️ Unaudited |
| SquadswapFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-256969 | `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | ⚠️ Unaudited |
| SquadswapInterfaceMulticallV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4843b1247460dd9a66a70386cb9a5934f67592d` | ⚠️ Unaudited |
| SquadSwapNftStake | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb216abd79263ec6c85dd243928c7beaaffac7e41` | ⚠️ Unaudited |
| SquadswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa773b9f08643816524fd614db7f8a74f674440d1` | ⚠️ Unaudited |
| SquadswapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: bsc `0x8507743c30ae007ab2ad8523b52f6a1d5155611c`; base `0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f`; base `0x95e8014d86af94e6abea38822082da728b9fe902`; base `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c`; base `0xd605072c79c4e7d85174600f59c335420cb713aa` | ⚠️ Unaudited |
| SquadswapRouter02 | unknown | project_anchor | own_supporting | 0 | base | unit-256988 | `0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1` | ⚠️ Unaudited |
| SquadswapRouter02 | adapter | project_anchor | own_supporting | 0 | blast | unit-256974 | `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` | ⚠️ Unaudited |
| SquadToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d2567dec25c9795117228adc7fd58116d2e310c` | ⚠️ Unaudited |
| SquadV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x009c4ef7c0e0dd6bd1ea28417c01ea16341367c3`; base `0x829ce74128ea95c72aa379168df529feaa464aee`; blast `0x2ea306d820227d2d1446f5a87aa96a8bd408ebb6`; blast `0xba34aa640b8be02a439221bcbea1f48c1035eef9`; blast `0xea006904113a96995e51cd9065ca6b9833da7fb1` | ⚠️ Unaudited |
| SquadV3Factory | registry | project_anchor | own_supporting | 0 | bsc | unit-256947 | `0x10d8612d9d8269e322ab551c18a307cb4d6bc07b` | ⚠️ Unaudited |
| SquadV3Factory | unknown | project_anchor | own_supporting | 0 | base | unit-256982 | `0xa1288b64f2378276d0cc56f08397f70becf7c0ea` | ⚠️ Unaudited |
| SquadV3Factory | unknown | project_anchor | own_supporting | 0 | blast | unit-256971 | `0x6ea64bdca26f69fdef36c1137a0eae5bf434e8fd` | ⚠️ Unaudited |
| SquadV3LmPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x182b980080d172b28512432299c7208695578216`; bsc `0x8dae3d75ffbc61119be15123b1d09abfabf93a52`; blast `0x6785dcce80e1adb0efaa602867d0f3127210ed4c`; blast `0xa9e236aa88d3d9d5d4499d1b6ffa7ec170da5dca`; blast `0xc4e896271165faab8b8f44f415044d1f787ace3d` | ⚠️ Unaudited |
| SquadV3LmPoolDeployer | unknown | project_anchor | own_supporting | 0 | blast | unit-256973 | `0x97eed6ab0a815f054b8bb5ed98e449aceca4bc8a` | ⚠️ Unaudited |
| SquadV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x606d6f19081fe3db277c3400cdbfed2ea0534955`; bsc `0x9fb9815ca1417b06466aaa86521a28ba83d0bd33`; bsc `0xa95d87b443e1929465931611b7951b92c1746dae`; bsc `0xb6bb744fb59fa399d09f67ae3634942f533b577f`; bsc `0xefcb55270c5fe85fc8eb6a311dc5aa9479839f0d` | ⚠️ Unaudited |
| SquadV3PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 40 deployments: bsc `0x031e47c7abceb6703eeac7033274696a8675ae9f`; bsc `0x092f473849c2022dd7b88780610a2ff213d43135`; bsc `0x127aa917ace4a3880fa5e193947f2190829144a4`; bsc `0x18b7620b3415126d06263f16b7046810a8f2dd10`; bsc `0x2360f565bf03178f2badd91d2425fe1911ed70c3`; bsc `0x2d957799e10bc7122c0c11039db05a60ebef0097`; bsc `0x3468218a3b6340708a3238c2cf9776e5171b1653`; bsc `0x38e09d9444b41cfda398dd31eb2713ca5c3b75ea`; bsc `0x3edaf90a8e001e4cd5ace90a5562c8c59a90e5e7`; bsc `0x4394300e82059a20299264684b1f25e46c084741`; bsc `0x45352e92ba2d32a97c82231575792ca83ffa96d1`; bsc `0x47cab11e9ec8c12fe5af9525cdc44892ab3a90e2`; bsc `0x498e102cd1e18083e56037ccc6d216c939416e34`; bsc `0x4ee6a28e84279b0bded555ae594cb1e2b7bfb1ea`; bsc `0x502cbb0597bb84e1415276cef8f9d0a06efb61ad`; bsc `0x51cfd362eae038e050e9d65beba603c0c69d52e9`; bsc `0x53f10aaf656a6e48b6f84fb83e8f22b2caa3035e`; bsc `0x5a6f8e3dcd278ab13c459fa110eaa31ecb3e646c`; bsc `0x6ce6cd8f12a2a3ba15bbb673897a0c275d2e321a`; bsc `0x754489c5c63d64c839135efb0dde23f469b65bfa`; bsc `0x7cd988771dd811c6fc0b879b9a26ed45ffc76a22`; bsc `0x7cf7f5cebc7ae93a1c31a816cd64380d6ed7ff81`; bsc `0x7ddb1388c3eebb8becd8aa05635179e7663ecba7`; bsc `0xa7f93f9e1ed4d8e1d4ea931978ca4f9adafd8e92`; bsc `0xb20049e55cc5e49002f6315d4e21beebab95015c`; bsc `0xb65ce8e19244de2c9882aab53a12fcd7aed7f659`; bsc `0xbf24cac8a728f4c8af49409d0beebc1777a11b81`; bsc `0xc28e76269457e92912a0f7b0b5125542768ca944`; bsc `0xd3f8001ff237026fafe9c25841c58ddea8470692`; bsc `0xe156a7748faf2ae1e238e6259e1056811de3cfdd`; bsc `0xe2973d9855bce0d200f8905fd2920db35c021cce`; bsc `0xf747c50ba841e2e99bb5326794adf49cc5b10f76`; bsc `0xf89aa68949595fe7249a942fc786b0f2bc27e821`; bsc `0xfc86417e95947f9a488cecb5a84347c1ea4b1617`; base `0x110909bc7d16465d1d0fa76c3fcd498830bc1abf`; base `0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a`; blast `0x03ae536d3a7f0d7a4316107e6242a162ca4009f8`; blast `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09`; blast `0xf99185c93274e5de2dc8d52d3b9fd917b1dd4a35`; blast `0xfefa8e964a95950eb9c5a0362ed69b3b0d710c08` | ⚠️ Unaudited |
| SquadV3PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x391eaa90f931c6330132efe6c73ebdf77d782ef5`; base `0x9cbb069efbd193e239b66540cf43d5b022a41691` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 30 deployments: bsc `0x02190be3a410af6a2445b08147ee759947423a96`; bsc `0x0356d3999b4752ba18a4f98b81cde1eb08d32a0f`; bsc `0x06f13657d1bf5a381d82ff96090882e003e6d737`; bsc `0x275ed05e93e6965a91d1c8d4ee6a83b1a781f6de`; bsc `0x2b1a9d4f955f165ba9675affbdb906697fbebf2a`; bsc `0x499fbccfcf39a1c7b8183840db1d4c012c2a092a`; bsc `0x4a56d13fb7f8e824f425365c54e72128250580d0`; bsc `0x4cdb0a3083387675c0598dc73c663486d1fe89c4`; bsc `0x71ddad169726636cc47685a4b2b0f684c13615da`; bsc `0x882ebb20b226b4a5676fe9a64a241e294e9f5f14`; bsc `0x8a99f97483f46876945c8e76cb916138fdc79d91`; bsc `0xa5605a0ae998dd97f15abf1046a55027a9b1a438`; bsc `0xaf4b332ddba499b6116235a095cee2f2030bcbc0`; bsc `0xb0e18f12d101c73fe85450bf8237c900d2ee29b4`; bsc `0xb3339506553c07b6ad340df927ae8bc569cced5e`; bsc `0xc2fd30d7e734210c5664fe9f6de57b445a037a45`; bsc `0xc3039553a17ba870a62a9cfcb844a73b9b59e925`; bsc `0xc8b3d3cf81dd58004781f74eb286f49058f8af5f`; bsc `0xcb334219e29650555a2f091df5187c5312ef7c82`; bsc `0xcb497ad0c92e6a90421393065bce1c3cb5f70644`; bsc `0xd1d55d1c801f9c3f3aa5554779537fc02ac4ff5b`; bsc `0xe31ede3312652d8d34f1744ca3137a66e8faed69`; bsc `0xe3b51b5bba76db61b20b2dba966e854b321505db`; bsc `0xe40b58a93ed60256af3200a414bf016942011e09`; bsc `0xf0f06c18e9403b8370381006db2887de5553df01`; bsc `0xff79ba1f16bd6d5d9dbaf1e03e050951392265ba`; base `0x6daafc12f65801afb2f0b0212a8229f224acf576`; blast `0x8fb20cc634d2b7427c136e302f8aa9f10f8eb60e`; blast `0xafec6ae679b1cb1263cd626638249350f13a6b8c`; blast `0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-256949 | `0x56956af389c6bc07f4c57837b49dd03b4238ef70` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | base | unit-256986 | `0xd432617a31807c531116c2e39c251759ac905b6a` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | blast | unit-256968 | `0x416a2ca1e6929ab47b6562c86685f72cedae4b0c` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 20 deployments: bsc `0x01050803073b69754576ec026c2383e10f79d332`; bsc `0x0441c37e3e8b71eba20d407196e34695f3dc09f4`; bsc `0x154a552c5ecefb86259ba5e06cc4b28809704507`; bsc `0x2bac1ab567e697c7d6da44fe58289e8c38736d06`; bsc `0x32218b82f26d82ae0f4760b62e58e6323f2839cd`; bsc `0x330d5cca55a16f654ab5f3cbf799b614956f77d2`; bsc `0x469d09fb6542516e44f9be0e46ccb92b64e1f9b2`; bsc `0x5dee127ff670453766fbbb4e13d42b979caf14b1`; bsc `0x6162ec611b95f2502870953cdfb61991a1a013a8`; bsc `0x835e786f58e049d219ea01536db662cb3348e861`; bsc `0xabe7151f28a7ba170efde02326ff742960cd41fc`; bsc `0xcf0e4afecd2b8dbd7e29e39340a663a212d18f14`; bsc `0xf34d8bccc48a5f42073b944f4b640d9069971d44`; bsc `0xfb7448756c5efb33c6318c5d4563fd8366fee884`; bsc `0xfdadd83ac6d779365961c52c64ad4ae805c6b0b0`; bsc `0xff4432327f85b767b421730f56bd941d5bc8e39d`; base `0x633faf3dac3677b51ea7a53a81b79aee944714dc`; blast `0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f`; blast `0xd5f7beff2bda29ec47885d2b7d92f554ec7669d7`; blast `0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | bsc | unit-256954 | `0x7c9c9220b563a09167943fd327d50e858c0a6373` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | base | unit-256980 | `0x5fbd88f04963c25e51ccae20951f815577a234c9` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | blast | unit-256976 | `0xad2feaeb62e09e4b775bd497e481190eb8e6a24b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c577f2edf2f6bd580a9c5ba537f779a8d376ffb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x58fea80fbdc1612d0de866a63c7787c5f4178dc7`; base `0xc4e896271165faab8b8f44f415044d1f787ace3d` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: bsc `0x27f233059ee83406a67730fb7ca31af27ad8cfaa`; base `0x13efb07140ce67f45256f8ceb230563fc041560b` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | bsc | unit-256956 | `0x9d19dd8d1967306b8bdea5efb38de693629ca47f` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | base | unit-256985 | `0xbee3209e04f926ce9df2a22c457d44303e543365` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 21 deployments: bsc `0x129b141f64529c428974144ffd6216e0fec3227c`; bsc `0x29abee5720d666ac76671cc59acb621dac467a43`; bsc `0x3bb5ddca1930e85133659ccc01318c176275ebc5`; bsc `0x5c3969450ff03ee4c6c62f59bcf847ddfe6ff07d`; bsc `0x5d23d85cf79f60cff4d580f4bcf9111c4ad0a0ba`; bsc `0x6308a253c1ac0a50e36623676b1204c274c42749`; bsc `0x6cf90aacb88c438f3c233533adce37b113386c79`; bsc `0x791eed238aea94565a263d6f267ea5ed8750eb07`; bsc `0x7a6b59b549ea5706ad0521213f1569b525f22927`; bsc `0x9e76253c96cd729a3c89ebf8f54771a3c7b75b85`; bsc `0xa61086888ae7a2cd994f95c3f62061104c8a9918`; bsc `0xc5d3c52ff592632c3d97f1da14250265070f1571`; bsc `0xc8eb52f4047f073f812e4aa70d5512fcefc652f7`; bsc `0xcdc7f81e78d8132705294fc9a331db7b1d87b47c`; bsc `0xe5bcbf978fdc6d5757a2fdf743e6f3ac2faf8ee0`; bsc `0xf40de9236d114cf3b90d55e9b2ea72e430ee5e60`; bsc `0xf834c79a7c6eb71cf3b96149cf458a4e44b6ec56`; base `0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75`; blast `0x11b7018204cb458741b56725422bc64cf7be7d99`; blast `0x6778d8e51eb3821dbb8db69ae0973e30501a9c22`; blast `0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | blast | unit-256975 | `0xa58659e37ab1c445b70a76958b02d8b399b674ab` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (316)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xc49355f78858b4143a25a4ad7e57e48d9f5e217f) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x29fb8f97dbec6b3ee3504b556c008df9e0fab69c`; base `0xc49355f78858b4143a25a4ad7e57e48d9f5e217f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x03ae536d3a7f0d7a4316107e6242a162ca4009f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07fd20b71e3ea3e2cbe21070a042e58b42838251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x08ccb86a31270fd97d927a4e17934c6262a68b7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256897 | `0x16fbb33001d74e4fb6d1423189a74f89da058788` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256898 | `0x202de677e39616691b8493e36e2c739276b794a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256899 | `0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256900 | `0x5fbd88f04963c25e51ccae20951f815577a234c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6785dcce80e1adb0efaa602867d0f3127210ed4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256901 | `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256902 | `0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256903 | `0x89c0619e7a798309193438b3cff11f1f31266711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256904 | `0xa1288b64f2378276d0cc56f08397f70becf7c0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256905 | `0xb124a847306f695e3ad44bd62a6356e75683212e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256906 | `0xb6171582c75421a740dcc15e4d873a34cb2ebb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256907 | `0xba34aa640b8be02a439221bcbea1f48c1035eef9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256908 | `0xbee3209e04f926ce9df2a22c457d44303e543365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256909 | `0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256910 | `0xd432617a31807c531116c2e39c251759ac905b6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256911 | `0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256912 | `0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256913 | `0xea006904113a96995e51cd9065ca6b9833da7fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256914 | `0xee8f37d490cb7ea1dae7d080c5738894731299f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256915 | `0xf48d22968e87c52743f9052d8e608ecd41facacc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256916 | `0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x056ca1619c16f9184f13ed484cc8bff94eead913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08c39e24ffc156930a5e636c926f12ce8785828d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098ca9c8793a8ffe2e18d50c528d0be7ae4b988f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a704871fcd41c90e98730ea0ae4e699a4b031c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0de41ba4e1b7dbd27d2103f63dfc4985eb50ea1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6a576e2093c80452dde04ce5e0d6d236d59bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eea7b29f38ea358d9bca023ea31fa8edcd3b9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10fd1f8beff8cfe0ba9c24bcbf61b111e3df5d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x120bc159b0f616c2fc899f213cc97d73d5844fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1297904117c526d24fbb17d268e927a2f90d387d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12b57ec4eadc72dde2cbffd2afdd005131e38a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x139ca0379a667396709b5545a334b33ff52c0237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19bfb88b728b5f46e6901d75f7a29fdbe50b4b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a0ce3782a8baf2179cb8d5f84942f94102de6aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ae30b0fd16d22cdd7ab444e150d896ae58e05bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c3fa03f2c3e22e79981d7b270debdc26f6423fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d8027d6cfc9f03fa36c4090925b24d775040784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24b70e4a34b4442cc4d16c847ee517ce5f506b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252b2a4cfe60829a2ea0aa77ebf473d415e720cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27ee18f88e18b0f6ce788abf364bcbe87b812965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x286c0ddf7ee840ef43d33de3f836e9bdbb161bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ca6922539cd3fcec03f8fb7b23da8e39bac2db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cb040fa4ee634fe19864579b02dae28fb57f6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d72301c181c78659a9f69725ca2105e520e1618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2edc981337b90b35049a5002ef33a0708a548e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fa96378f761acc871a6811f5d9c8f25bde2aca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fe4984fd8e2afc798d58e9cc3db4ebebbdce453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32780b0c96ee57cdb02a543c2a800297d68f3a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x329e3eefcf36333e07fa2b4bbbf49938ee512a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32c9a3d3ff30832a5286e5e670f13169ae969740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32d73546af68c423a3bbdd520be728fd1ab12697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x336be6bdbd3318c10296ea0e0de4def374e2d11c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x354c8718345417a4e86e804d11778f0f6c27e4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36cdb4ea18ee99cba3b7d019c7e7db7bcd290cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37a76ebd1bec646deb96c86a94e91e71dfaafd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37ddd0f0577bf97ba2bf7acb972ba063238b6b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x386c4f3814d84ecf5d23ebc9a40cf8d2154ac655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x395f4bbd7356523553c317b21e4836bd5cd3d5a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ccbf55fc1277f1b8235eb1bb1465ca71207ed78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40ada5acaba5771e28102fe2d7451652baccb51d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4123e988d5d79458c2e75be7ce7e02733d53126a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41953dcd1fa555c73f56d5d89476389768695820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44d4efbd0f802b6a843b1bc659d17ec13fcf789f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46680db798765f37de467c79086c665261dbcc6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256948 | `0x48470d8b60067d004796823fce21ed9df18d6ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4962a1a551d9f15908c66716ee755467d805755f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b937c4d9febbdd0cb364731e8b3f4b18e81a94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d77ef99e996ea15d2268b1f46cc7d77b86aea6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5115303cbd6ecb7ec6bea3d336d1f1f853aaeac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d7fab31dc8d71870b4e7d0f587282874ed7e7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f9341fb458227f67786de1d6063bb09c191d0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60efb4a9ef6563b073f6d7435f8a0cf88f99d0f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61ef63c7d78204f3fa69eb651d6b151bc4a348c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x630f588d3145b95c9ea6646bf7a94596bc16c08b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6698e38ce5cd79788323a0f416972f143e66c8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x671d58e28f087bd3720d1b6e9f1df01f48ec1294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68a5c738c5f8c001b331055522cebd623905d821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2663f676936bc10d3af3614666131e2c4463ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fd3decff2e3ed0824aa0474d75b3b83dc080981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x739d61433e13dde0f1e5716eb85b3407d824ef08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b7e7667b4dd0ac13fdff1577a3c44dfa1d3cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7473faa7c75f3803d06a39a737b052bc2fd21313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77d373d9f2eedfc515474e3e836db475c8903929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x799d14077ee998e67373eb9582b57ea4ebbd2030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cafae8a5a90a8039d2edb6f6e712737de11e924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dc292bdd309c97ddf93a5cd2d3408e8c71f45fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x810c5d5c6c06312a4ef3aae9c3db0c7a273a5f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82847d8dcc8f89516748b6cfa947f06148133758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x831355278f5ffe50eea001ae08477b909a18c9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86eb5e82a1690acf8d905fbc6bbca49c990ce9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x870ab60d89e06e9d156614da3fd6e99956479450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8788d194b55badc1d2b3d62101df40f2e3095b5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x896002e7ba63321dc4510bfde90f79e08d7e2431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8973dbdb4ef50622eaa995baec07c3e82752dfef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b2e09e3011721143a22f1f1f89887cfcdcc4855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e3169ca24b468f2f92da49126020596725e06a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9070b566765c3d69f999ac6947d8e28ef03279fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92e56db94d6304d4ee085f10393f98c63b83c388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x936a39c6af9ef6c9ced8d0d66fd3d33592152246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956208d8a9a085fc71883e997077b98116d52ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9603e2e8a80533abfc0b0e3c49019385f37253ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9839426a8de5b5ee1e50dc0020c2db5e1594f740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa10d28e26a75c124e65df5d682db4d899ce59e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1551c8fc7aca2375e2de50bd9bf0fde516e128e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256957 | `0xa9712bc605bfedf37742e8ce41a9e57e50fb2e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade16fe695e3e31d47f67dccbd03cca48a8c08b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaee2b8aff749fdb329d01a3f30fd40b6f0db16cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1d7535493afcb1e9318ae83707d404ef8108183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3ba27a637badab7430def29004745d417188c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb651b2a25f8e20519a42cc8422a767753df078a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6d43d356313628bb70d292da2215126552b1198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb793db1a2e2280998432aa035262af70f9089955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb951c0f30b5f75979b02b6bda82e4487540ada88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9b1a195de1773355ad7c477962ad8b83f6b8f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9f43d25df722954b0f12fc3b2a06688a420235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba2a8b457b73d8a076766d3a899063a9320f1a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc9e03e22fd1a06d62ffef7840337e429ed06dae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256958 | `0xc1fa2a15e19c62b2cf771a7c6c270ef194e217b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2c4342e82410836af2e0b77fe68bc2ccf4ef5a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3fe3d395bf0681c833d236f363e174e9ae591a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbe6b9802d5a88bb75d7c3040eebf71a006494b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd6f94803f9e5980b46068963daec5c057b0e7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd951163b8ae8f2362e00256ac9f22571c677442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce03c21ab5bbfb3b26d499d625d0441675bb5847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfbb55026d11f95cfdebd741eaad43ea6d0a9666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd108e1dc6cd196c6c25fd8db0492bedba22918b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3d678c1cab8bf09b79a93df115de44207f3328a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd58ccf2a20f98c5edb072dbf000e74e61ccb62de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5ddc0db12c9329c66ebb97944a2ac1939c7652c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd669fef0accee0e5025f78ba06bb84c41585bd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd67021125e407ccb43d52a7203f790bb7f2d482b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6ceae2a1db8508cda2209db9e05e7edf81374a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd71dcdb551fd08200b4a96f90288748bdd326fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd748486f15ff27edc32476ea0120bc98ea17b3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd814146d1028a3f89c2f6e6e3a6fcc5b5854082f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc946e1daddc29515bf657e75f74d1bba5af6dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe10a6066214ef4449da73309803fb701e053de69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256960 | `0xe2787506ca9b5f17b64a4e1bb789c017c3620acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3ca07186b8167eec7e2eb88c4745e4f0472098b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1fbb85fc60999f4b3b56e1a5d44e1fd0f8d426f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2c8a9f6c19d60195f060f6af50a45e140b479de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf582903149d9bcd0f0e612b74ffc317c54afbec0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256962 | `0xf6dcd58e71ba7d3fbcb37ca166f4c53ffd8b9a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9b3a7b40b36042c1ecf4192724a7dfd0a82d695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa7fc5ac4fbb12dbd98c0ad3a445185c640c780f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc600bc7ffe6e4a330527fccb2e09c2574b129fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcfc677470fc09b16bc2f99f4becc0298852b13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd399f9b1281feec2a1bff0a89372020187852bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd3bc260a026bf2a2eedb3ad3194b81a35545a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdde3e8595252d7b392106e2b442fa5b6cb61000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea79d26e56e455d0d240ed579a5079cb53306fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0558921f7c0f32274bb957d5e8bf873ce1c0c671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07fd20b71e3ea3e2cbe21070a042e58b42838251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08ccb86a31270fd97d927a4e17934c6262a68b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bd41dfb989f72757d38c24f714901cfc87dc369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x110909bc7d16465d1d0fa76c3fcd498830bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11b7018204cb458741b56725422bc64cf7be7d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16fbb33001d74e4fb6d1423189a74f89da058788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bc323a5a87e6c7f463b805112db39507fbb70e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d9f43a6195054313ac1ae423b1f810f593b6ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x202de677e39616691b8493e36e2c739276b794a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2149e9083a9440c74062eff56cc012651b9e1a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d2567dec25c9795117228adc7fd58116d2e310c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e815e8c6c02e27b54b571d27e3ba9d94394f39a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256917 | `0x369967bd0bd3b7550b16d251d42def66fc78d279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256918 | `0x3a58002d40f5aabef676291e17be464bb3982286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x423a8372ab496047938b683e6131fa4fd811e6a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x572d5555946bbf44560b217dd4d8fd2a8055a91c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ebb1ff6dc0759f7a6253d0568a610650dd0d050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5fbd88f04963c25e51ccae20951f815577a234c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256919 | `0x633faf3dac3677b51ea7a53a81b79aee944714dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64d6f44907ac087d97315899bdcc35151ace3693` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256920 | `0x6785dcce80e1adb0efaa602867d0f3127210ed4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c8d189aeea5ca02acb0fdc3e632b0c001856954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6daafc12f65801afb2f0b0212a8229f224acf576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7cf7f5cebc7ae93a1c31a816cd64380d6ed7ff81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7da1ec4d785120eafb290a9882268b6bdef9f620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256921 | `0x7f5f5a9542a61fd6948f08966b89396fbf6fd4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8243000e75c462de44cf6dfbb5b3508b1fb78d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x829ce74128ea95c72aa379168df529feaa464aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8507743c30ae007ab2ad8523b52f6a1d5155611c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256922 | `0x8716f18f1f5a542ce565d2e365c0a9ebdf8715a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256923 | `0x87b10463f06767611e26ff33b7b82434a0749d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89c0619e7a798309193438b3cff11f1f31266711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95e8014d86af94e6abea38822082da728b9fe902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c486d5ce53ef6fc152594d51be70b80ffdfa96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9cbb069efbd193e239b66540cf43d5b022a41691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1288b64f2378276d0cc56f08397f70becf7c0ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256924 | `0xa2a1e60dc0742b43512bb3d67a148523ae482878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa932f8cefbe4a8d24f218c5949f9e596914dc0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9e236aa88d3d9d5d4499d1b6ffa7ec170da5dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256925 | `0xb00152041c98a5547252f411ebc8b39637288fa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb124a847306f695e3ad44bd62a6356e75683212e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256926 | `0xb3228e597587f7aafb1549311ada17eca59a7a19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256927 | `0xb3a2090ac9202da7948634f6e603ada179dd529e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4286e807a8107cc3344d3094468dc44d73b49c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbee3209e04f926ce9df2a22c457d44303e543365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256928 | `0xc49f63335c1e648ea2a4a75e8067241ff271d25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc566fb4ac9bcd311b5fad9686e9b855aa217a5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc589b6e676a7e716da944b73bf4ae4e75bc6061e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd432617a31807c531116c2e39c251759ac905b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd51b468ff89ed412a3b3ace31dfe979f2301bd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd605072c79c4e7d85174600f59c335420cb713aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6bd395fca868071edc79fe6242176a48ca83e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdee10310e729c36a560c72c0e8e3be0e46673063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea006904113a96995e51cd9065ca6b9833da7fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256929 | `0xecfa6bcab627f1b673203ca1f334a1c44199d229` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256930 | `0xee8f37d490cb7ea1dae7d080c5738894731299f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf48d22968e87c52743f9052d8e608ecd41facacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-256931 | `0xff29b10e249bd4c9e6cf3a1cd4bb77c33627c261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x061856959b3bbfe9353b2cc157a44ddba5186a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bd7037f741e28b4e8eaa63bf16b1d25216dcfbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x145e6b6964df83ea7e3172c7c389710e45874b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16fbb33001d74e4fb6d1423189a74f89da058788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f2436712027f374034dec89b2527f293dbed21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f8939d8b22ad85096de6af52a36012042773b7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256978 | `0x202de677e39616691b8493e36e2c739276b794a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ec163056d5f1864c5c9d7a95c97a6ff13e12e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31b8c63d7561f4ab13870a041f3c691d63662841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x340a67d2aa92008d581a1d04ecd4161125d7b911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x344913d17fe98fbe0ff9ce810bab2d86f6079639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34bc76f2b5ae25dbe56270a73fbab17a1361f2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35e49cf7936ce51ce28bfbba1eba6b4309500fff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a58002d40f5aabef676291e17be464bb3982286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51c97e09de0b256c4e8b2ec56477181e05fe03a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579da740a99aca213aba94801635f807761867ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58f00110b69c5b3a7a2fab8588c832c00a1c1374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5d202a477be428bfc24862b7219acdb2cd122f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5dbbf70e0f50fb89e48b946e9efa2a906453312f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67ccdf172d144779bd6524d67c9a3b5aa93a9538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8496f22d539500025c146ff387c30f73fb581964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b39a3994ce871e3aaee4611b7dafd065ace2b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93c8b21be7bea0e21e19b3f495ad88cefa119f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9627ea9988c250e954d67c4943ad60e529236a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97f426ffd0083f7bb158b70d7853125a67169fc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9caf9c90782229fef80cf01ebabf2ead1789fd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f4b9773874eab969cdbfa4d46837282921fdf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2a1e60dc0742b43512bb3d67a148523ae482878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac47c088e8ee9b30f1138eee52cb9ef001cfed58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256983 | `0xb124a847306f695e3ad44bd62a6356e75683212e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc6c58943973f9e6cb2e24f10e183e87bd4596eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd32cd3dc5f6bdbd9a65ba5bbd5af3673ee1c49b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd39f3c76263ff016ccacb4302c799362ab8659e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9d71bd49c9415ca14eda20ecdc0263e19f5d10f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdeb0bf2d02f9fe9f20f3dd62b73bddbd4c2870c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff29b10e249bd4c9e6cf3a1cd4bb77c33627c261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256932 | `0x0558921f7c0f32274bb957d5e8bf873ce1c0c671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07fd20b71e3ea3e2cbe21070a042e58b42838251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08ccb86a31270fd97d927a4e17934c6262a68b7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256933 | `0x110909bc7d16465d1d0fa76c3fcd498830bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256934 | `0x11b7018204cb458741b56725422bc64cf7be7d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16fbb33001d74e4fb6d1423189a74f89da058788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bc323a5a87e6c7f463b805112db39507fbb70e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x202de677e39616691b8493e36e2c739276b794a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2149e9083a9440c74062eff56cc012651b9e1a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256935 | `0x2e815e8c6c02e27b54b571d27e3ba9d94394f39a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256936 | `0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fbd88f04963c25e51ccae20951f815577a234c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6785dcce80e1adb0efaa602867d0f3127210ed4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6daafc12f65801afb2f0b0212a8229f224acf576` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256937 | `0x7da1ec4d785120eafb290a9882268b6bdef9f620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256938 | `0x8243000e75c462de44cf6dfbb5b3508b1fb78d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x829ce74128ea95c72aa379168df529feaa464aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89c0619e7a798309193438b3cff11f1f31266711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256939 | `0x95e8014d86af94e6abea38822082da728b9fe902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c486d5ce53ef6fc152594d51be70b80ffdfa96a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256940 | `0x9cbb069efbd193e239b66540cf43d5b022a41691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1288b64f2378276d0cc56f08397f70becf7c0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa932f8cefbe4a8d24f218c5949f9e596914dc0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9e236aa88d3d9d5d4499d1b6ffa7ec170da5dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb124a847306f695e3ad44bd62a6356e75683212e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6171582c75421a740dcc15e4d873a34cb2ebb48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256941 | `0xba34aa640b8be02a439221bcbea1f48c1035eef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbee3209e04f926ce9df2a22c457d44303e543365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256942 | `0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd432617a31807c531116c2e39c251759ac905b6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256943 | `0xd605072c79c4e7d85174600f59c335420cb713aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256944 | `0xd6bd395fca868071edc79fe6242176a48ca83e64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256945 | `0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea006904113a96995e51cd9065ca6b9833da7fb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256946 | `0xea6fd462b72cdd0f535125cacbc33b9b7ba68eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee8f37d490cb7ea1dae7d080c5738894731299f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf48d22968e87c52743f9052d8e608ecd41facacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x110909bc7d16465d1d0fa76c3fcd498830bc1abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x29fb8f97dbec6b3ee3504b556c008df9e0fab69c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-256972 | `0x87048e29c149577266331792bc4537201ce7e36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9ab779878e7698778268906c72e92e4dd302014a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9c486d5ce53ef6fc152594d51be70b80ffdfa96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa3784343254e15adb7fa1bca3a3876ef34b7a111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf48d22968e87c52743f9052d8e608ecd41facacc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 546
- Live contracts: 40
- Unknown liveness contracts: 506
- Source-verified contracts: 354
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=100, contamination review=7, exact address book overlap=27, source verified unclassified=227, unverified unclassified=184

Showing first 200 of 546 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07fd20b71e3ea3e2cbe21070a042e58b42838251` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08ccb86a31270fd97d927a4e17934c6262a68b7e` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x16fbb33001d74e4fb6d1423189a74f89da058788` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x202de677e39616691b8493e36e2c739276b794a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2149e9083a9440c74062eff56cc012651b9e1a9c` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fbd88f04963c25e51ccae20951f815577a234c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6785dcce80e1adb0efaa602867d0f3127210ed4c` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89c0619e7a798309193438b3cff11f1f31266711` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c486d5ce53ef6fc152594d51be70b80ffdfa96a` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa1288b64f2378276d0cc56f08397f70becf7c0ea` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa932f8cefbe4a8d24f218c5949f9e596914dc0c7` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb124a847306f695e3ad44bd62a6356e75683212e` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6171582c75421a740dcc15e4d873a34cb2ebb48` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbee3209e04f926ce9df2a22c457d44303e543365` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd432617a31807c531116c2e39c251759ac905b6a` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xee8f37d490cb7ea1dae7d080c5738894731299f0` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf48d22968e87c52743f9052d8e608ecd41facacc` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | ProxyAdmin<br>`0x07fd20b71e3ea3e2cbe21070a042e58b42838251` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | QuoterV2<br>`0x6785dcce80e1adb0efaa602867d0f3127210ed4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | SmartRouterHelper<br>`0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | SquadswapFactory<br>`0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | SquadswapFactory<br>`0xba34aa640b8be02a439221bcbea1f48c1035eef9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | SquadV3PoolDeployer<br>`0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xc4e896271165faab8b8f44f415044d1f787ace3d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xea6fd462b72cdd0f535125cacbc33b9b7ba68eed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | FeeManager<br>`0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | NonfungiblePositionManager<br>`0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | SmartChefFactory<br>`0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | SquadInterfaceMulticall<br>`0xee8f37d490cb7ea1dae7d080c5738894731299f0` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | SquadswapRouter02<br>`0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | SquadV3Factory<br>`0xa1288b64f2378276d0cc56f08397f70becf7c0ea` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | SwapRouter<br>`0xd432617a31807c531116c2e39c251759ac905b6a` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | TickLens<br>`0x5fbd88f04963c25e51ccae20951f815577a234c9` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | UnnamedContract<br>`0x202de677e39616691b8493e36e2c739276b794a3` | project_anchor | unknown | live | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | UnnamedContract<br>`0xb124a847306f695e3ad44bd62a6356e75683212e` | project_anchor | unknown | live | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | exact address book overlap | V3Migrator<br>`0xbee3209e04f926ce9df2a22c457d44303e543365` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | source verified unclassified | NonfungibleTokenPositionDescriptorOffChain<br>`0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | source verified unclassified | QuoterV2<br>`0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | source verified unclassified | SquadswapRouter02<br>`0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | 0xc49355f78858b4143a25a4ad7e57e48d9f5e217f<br>`0x29fb8f97dbec6b3ee3504b556c008df9e0fab69c` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | UnnamedContract<br>`0x16fbb33001d74e4fb6d1423189a74f89da058788` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | UnnamedContract<br>`0x344913d17fe98fbe0ff9ce810bab2d86f6079639` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | UnnamedContract<br>`0x35e49cf7936ce51ce28bfbba1eba6b4309500fff` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | UnnamedContract<br>`0x58fea80fbdc1612d0de866a63c7787c5f4178dc7` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | UnnamedContract<br>`0x8496f22d539500025c146ff387c30f73fb581964` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | UnnamedContract<br>`0x9caf9c90782229fef80cf01ebabf2ead1789fd75` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| base | unverified unclassified | UnnamedContract<br>`0xc49355f78858b4143a25a4ad7e57e48d9f5e217f` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | MixedRouteQuoterV1<br>`0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | ProxyAdmin<br>`0x2149e9083a9440c74062eff56cc012651b9e1a9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | QuoterV2<br>`0x59378af882fd1873446560af83000ef3eac9ae42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | QuoterV2<br>`0x7e983287600aeb2f88943a1f01ed9c1b407c9a88` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | QuoterV2<br>`0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | QuoterV2<br>`0x829ce74128ea95c72aa379168df529feaa464aee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SmartRouter<br>`0x5fbd88f04963c25e51ccae20951f815577a234c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SmartRouter<br>`0x95e8014d86af94e6abea38822082da728b9fe902` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SmartRouter<br>`0xdeb0bf2d02f9fe9f20f3dd62b73bddbd4c2870c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SmartRouterHelper<br>`0x1bc323a5a87e6c7f463b805112db39507fbb70e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SmartRouterHelper<br>`0x5dbbf70e0f50fb89e48b946e9efa2a906453312f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SmartRouterHelper<br>`0xbee3209e04f926ce9df2a22c457d44303e543365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SmartRouterHelper<br>`0xdfc40e4aa84acb09a55e7cb5428c38ee41ef090f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SquadswapFactory<br>`0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SquadV3PoolDeployer<br>`0x03ae536d3a7f0d7a4316107e6242a162ca4009f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SquadV3PoolDeployer<br>`0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SquadV3PoolDeployer<br>`0xf99185c93274e5de2dc8d52d3b9fd917b1dd4a35` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | SquadV3PoolDeployer<br>`0xfefa8e964a95950eb9c5a0362ed69b3b0d710c08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | TransparentUpgradeableProxy<br>`0x295f6ad2fd02ef9fa87a30bb337f0a40221649c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | TransparentUpgradeableProxy<br>`0x7b7a8f7d1966cd6ebb60fc11bd69b7c903cb8172` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | TransparentUpgradeableProxy<br>`0x7da1ec4d785120eafb290a9882268b6bdef9f620` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | candidate review | TransparentUpgradeableProxy<br>`0xd432617a31807c531116c2e39c251759ac905b6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | contamination review | QuoterV2<br>`0x061856959b3bbfe9353b2cc157a44ddba5186a3d` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | contamination review | SquadInterfaceMulticall<br>`0x02ce24a6bdb469645e3615f418676f48c8c4e691` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | FeeManager<br>`0x34bc76f2b5ae25dbe56270a73fbab17a1361f2b9` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | SmartChefFactory<br>`0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | SquadV3Factory<br>`0x6ea64bdca26f69fdef36c1137a0eae5bf434e8fd` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | SquadV3LmPoolDeployer<br>`0x97eed6ab0a815f054b8bb5ed98e449aceca4bc8a` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | SwapRouter<br>`0x416a2ca1e6929ab47b6562c86685f72cedae4b0c` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | TickLens<br>`0xad2feaeb62e09e4b775bd497e481190eb8e6a24b` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | UnnamedContract<br>`0x87048e29c149577266331792bc4537201ce7e36a` | project_anchor | unknown | live | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | exact address book overlap | V3Migrator<br>`0xa58659e37ab1c445b70a76958b02d8b399b674ab` | project_anchor | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | FeeManager<br>`0x4969e5f986ee7b3b8ef6164cd7b5b2c6196e7212` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | FeeManager<br>`0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | FeeManager<br>`0xafedaf82731509d01c4e7451ce3f4d1513c3abbc` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | MasterChefV2<br>`0xdee10310e729c36a560c72c0e8e3be0e46673063` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | MasterChefV3<br>`0x16fbb33001d74e4fb6d1423189a74f89da058788` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | MasterChefV3<br>`0x58fea80fbdc1612d0de866a63c7787c5f4178dc7` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | MasterChefV3<br>`0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | MasterChefV3<br>`0xda3840837df961a710c889e0d23295df82ccff8b` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | NonfungiblePositionManager<br>`0x2c0126bf08392af72a396bce44beb69922fe2d7a` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | NonfungiblePositionManager<br>`0x8243000e75c462de44cf6dfbb5b3508b1fb78d1c` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | NonfungiblePositionManager<br>`0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | NonfungibleTokenPositionDescriptorOffChain<br>`0x64d6f44907ac087d97315899bdcc35151ace3693` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | QuoterV2<br>`0x7b8227c3dd6e3df8468bf1621fef1f443e085b5c` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | QuoterV2<br>`0xd605072c79c4e7d85174600f59c335420cb713aa` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | QuoterV2<br>`0xee8f37d490cb7ea1dae7d080c5738894731299f0` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SmartChefInitializable<br>`0xc566fb4ac9bcd311b5fad9686e9b855aa217a5cb` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadInterfaceMulticall<br>`0x07fd20b71e3ea3e2cbe21070a042e58b42838251` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadInterfaceMulticall<br>`0xd6bd395fca868071edc79fe6242176a48ca83e64` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadInterfaceMulticall<br>`0xf90391076b9365b67546d6a5b1c7de71329834c9` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadV3Factory<br>`0x2ea306d820227d2d1446f5a87aa96a8bd408ebb6` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadV3Factory<br>`0xba34aa640b8be02a439221bcbea1f48c1035eef9` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadV3Factory<br>`0xea006904113a96995e51cd9065ca6b9833da7fb1` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadV3LmPoolDeployer<br>`0x6785dcce80e1adb0efaa602867d0f3127210ed4c` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadV3LmPoolDeployer<br>`0xa9e236aa88d3d9d5d4499d1b6ffa7ec170da5dca` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SquadV3LmPoolDeployer<br>`0xc4e896271165faab8b8f44f415044d1f787ace3d` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SwapRouter<br>`0x8fb20cc634d2b7427c136e302f8aa9f10f8eb60e` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SwapRouter<br>`0xafec6ae679b1cb1263cd626638249350f13a6b8c` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | SwapRouter<br>`0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | TickLens<br>`0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | TickLens<br>`0xd5f7beff2bda29ec47885d2b7d92f554ec7669d7` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | TickLens<br>`0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | V3Migrator<br>`0x11b7018204cb458741b56725422bc64cf7be7d99` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | V3Migrator<br>`0x6778d8e51eb3821dbb8db69ae0973e30501a9c22` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | source verified unclassified | V3Migrator<br>`0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b` | non_address_book | unknown | unknown | verified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | unverified unclassified | UnnamedContract<br>`0x110909bc7d16465d1d0fa76c3fcd498830bc1abf` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | unverified unclassified | UnnamedContract<br>`0x29fb8f97dbec6b3ee3504b556c008df9e0fab69c` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | unverified unclassified | UnnamedContract<br>`0x9ab779878e7698778268906c72e92e4dd302014a` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | unverified unclassified | UnnamedContract<br>`0x9c486d5ce53ef6fc152594d51be70b80ffdfa96a` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | unverified unclassified | UnnamedContract<br>`0xa3784343254e15adb7fa1bca3a3876ef34b7a111` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| blast | unverified unclassified | UnnamedContract<br>`0xf48d22968e87c52743f9052d8e608ecd41facacc` | non_address_book | unknown | unknown | unverified | n/a | `0x5eb12d3d5df72db9d66d7b1bfd94feada4d2a178` |
| bsc | currently scope matched | SquadswapFactory<br>`0x918adf1f2c03b244823cd712e010b6e3cd653dba` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | ProxyAdmin<br>`0x17f24a87a6ca5788ef4c65c81a034c8bfeb107f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | ProxyAdmin<br>`0x6221221c86e87905f1fa9b317e616e81ad921769` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | ProxyAdmin<br>`0x6c8d432ff748cc3b28dcb5edac5e8b95b9f1448a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | ProxyAdmin<br>`0xa313c4e4f3c52707ba84e936d809340fce41bf13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | ProxyAdmin<br>`0xa4af76f9ebc9064915836c4c6d7e5275b1b3d7bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | QuoterV2<br>`0x57e621abdd6d90e535d3b16401974d6129036bee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | QuoterV2<br>`0x72992fb83ef818d35ad1de32a29087193a2eab6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SmartRouterHelper<br>`0x5ba2470b3b771f3bc31b75cf72dcfc9d9f0d6ed3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SmartRouterHelper<br>`0xf1a0c1ce6d2f3ef752b97765f28f6c0cda79a811` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadswapFactory<br>`0x1d9f43a6195054313ac1ae423b1f810f593b6ac1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x031e47c7abceb6703eeac7033274696a8675ae9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x092f473849c2022dd7b88780610a2ff213d43135` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x127aa917ace4a3880fa5e193947f2190829144a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x18b7620b3415126d06263f16b7046810a8f2dd10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x2360f565bf03178f2badd91d2425fe1911ed70c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x2d957799e10bc7122c0c11039db05a60ebef0097` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x3468218a3b6340708a3238c2cf9776e5171b1653` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x38e09d9444b41cfda398dd31eb2713ca5c3b75ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x3edaf90a8e001e4cd5ace90a5562c8c59a90e5e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x4394300e82059a20299264684b1f25e46c084741` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x45352e92ba2d32a97c82231575792ca83ffa96d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x47cab11e9ec8c12fe5af9525cdc44892ab3a90e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x498e102cd1e18083e56037ccc6d216c939416e34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x4ee6a28e84279b0bded555ae594cb1e2b7bfb1ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x502cbb0597bb84e1415276cef8f9d0a06efb61ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x51cfd362eae038e050e9d65beba603c0c69d52e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x53f10aaf656a6e48b6f84fb83e8f22b2caa3035e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x5a6f8e3dcd278ab13c459fa110eaa31ecb3e646c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x6ce6cd8f12a2a3ba15bbb673897a0c275d2e321a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x754489c5c63d64c839135efb0dde23f469b65bfa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x7cd988771dd811c6fc0b879b9a26ed45ffc76a22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x7cf7f5cebc7ae93a1c31a816cd64380d6ed7ff81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0x7ddb1388c3eebb8becd8aa05635179e7663ecba7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xa7f93f9e1ed4d8e1d4ea931978ca4f9adafd8e92` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xb20049e55cc5e49002f6315d4e21beebab95015c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xb65ce8e19244de2c9882aab53a12fcd7aed7f659` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xbf24cac8a728f4c8af49409d0beebc1777a11b81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xc28e76269457e92912a0f7b0b5125542768ca944` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xd3f8001ff237026fafe9c25841c58ddea8470692` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xe156a7748faf2ae1e238e6259e1056811de3cfdd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xe2973d9855bce0d200f8905fd2920db35c021cce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xf747c50ba841e2e99bb5326794adf49cc5b10f76` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xf89aa68949595fe7249a942fc786b0f2bc27e821` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | SquadV3PoolDeployer<br>`0xfc86417e95947f9a488cecb5a84347c1ea4b1617` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x0a4224cbecec4a8337f722ed105916544e377778` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x20dcd7f1a7f94ad89127a3941dfba7caf74c0274` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x26583d87f43e09258955605e92e63fe40e792df4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2bcb99de533c698183629ca0b1db61533e2cfdc4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x2f314b0677014bdbac0f7b6accc9e2bf3393d3b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x3109db9514d4efc08724905638cf58ab2d5bfb4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x32d4a74ed5b7b62ce2e60d14ca8bfffb381d5c86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x35b936aee0acb004db068d4e657f3c828f2266fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x38197c62bf976de90858b7e2d3eb4f213299727b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x3c577f2edf2f6bd580a9c5ba537f779a8d376ffb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4546db365234e69257184265a521a27fffbdb7a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x4991384d71bd8138ef6da70cb4b8ba8185370360` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x504eba353d66490de319df4e1f08334ceb893295` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x5e4eddf5156a44cd2e3645161d2664f7f252e377` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x6967cbfb72048a7efeb23b6dbb5aee51d89ed648` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x80ff20176610b4b796c78c8aa456efbf19cf17ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x816e5dffbd15d38258ebf7e9be7b089952c15f8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x9cbbb360867fe5b10d143f870ffb699b3300e365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa149f97cc2afa9e8d1f598d722b9e9375bddd4f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa4a858cd8cb232bea53f6cc65709d74487d6b362` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xa5fc801a1fc399096f21f6f2a6e5599b003d0ba2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xd01a4a289feda4b26ded842f5abc6dd3740d071a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xdc3dd3a66b0974324098f7e8991f9b83f3aa9be6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0xe5200b8b42a98ba3af9cb7f7b1566887d9cd915b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | contamination review | FeeManager<br>`0x0a0c8a19a44f583a5123b7cd3f5ac6a5b3f5213b` | non_address_book | unknown | unknown | verified | n/a | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | contamination review | LovelySwapInterfaceMulticall<br>`0x04df0e8168e5d0c42dfd6dc5c414957975e7ec09` | non_address_book | unknown | unknown | verified | n/a | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |
| bsc | contamination review | SquadAirdrop<br>`0x0faf03221993513de5c03e2484c114a4c8a3ad11` | non_address_book | unknown | unknown | verified | n/a | `0x67b636a0815b3e5f8072396253d6436a30b23ef3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [www.cyberscope.io/audits/squadswap](https://www.cyberscope.io/audits/squadswap) | unknown | Audit | 2023-11 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [squadswap.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/squadswap.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/squadswap/v1/audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [PeckShield-Audit-Report-SquadSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3033] PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf — matched: Scope explicitly lists 8 contracts on page 5. Audit date is February 2, 2025 from cover page and version history.
- [3034] www.cyberscope.io/audits/squadswap — no match: Only one contract file mentioned in the audit report: contracts/Squad.sol. The audit date is inferred from 'Onboarded on 28/11/2023' and 'Iteration (28/11/2023)'.
- [3036] squadswap.pdf — matched: Extracted from source files table and overview sections. Audit date from 'Initial Audit 28 Dec 2023'.
- [3037] audit.pdf — matched: ambiguous_frozen_extraction_cache
- [3038] PeckShield-Audit-Report-SquadSwap-v1.0.pdf — matched: Contracts extracted from findings targets and code snippets. No explicit scope table, but contracts are clearly audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapFactory | own contract | SquadswapFactory (alternative) `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` — deployed 2024-06-27 17:52:53+03 — liveness: live (code_present_context)<br>SquadswapFactory (selected) `0x918adf1f2c03b244823cd712e010b6e3cd653dba` — deployed 2025-01-29 13:53:09+03 — liveness: live (code_present_context)<br>SquadswapFactory (alternative) `0xba34aa640b8be02a439221bcbea1f48c1035eef9` — deployed 2024-09-13 19:06:23+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-01-29 was 4d from audit; next candidate 142d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapPair | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | V2_5Migrator | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapRouter02 | own contract | SquadswapRouter02 (selected) `0xcf870c78b7985a5b67a6f3f547678387015ee48d` — deployed 2025-01-29 14:10:00+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1` — deployed 2024-09-13 19:07:05+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` — deployed 2024-06-27 18:02:53+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-01-29 was 4d from audit; next candidate 142d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SquadswapLibrary | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | V2SwapRouter | unmatched — not counted | — | listed in scope on page 5 | no |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | MixedRouteQuoterV1 | own contract | 0x16fbb3… (selected) `0x16fbb33001d74e4fb6d1423189a74f89da058788` — deployed 2024-09-13 21:31:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf | SmartRouterHelper | ambiguous — not counted | SmartRouterHelper (alternative) `0xf1a0c1ce6d2f3ef752b97765f28f6c0cda79a811` — deployed 2025-01-29 15:20:24+03 — liveness: live (current_address_book_code)<br>SmartRouterHelper (alternative) `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` — deployed 2024-09-13 21:02:57+03 — liveness: live (current_address_book_code)<br>SmartRouterHelper (alternative) `0xdfc40e4aa84acb09a55e7cb5428c38ee41ef090f` — deployed 2024-07-04 16:06:29+03 — liveness: live (current_address_book_code)<br>0x7ea21a… (alternative) `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` — deployed 2024-09-13 21:31:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.cyberscope.io/audits/squadswap | Squad | unmatched — not counted | — | listed in scope | no |
| squadswap.pdf | SquadAirdrop | unmatched — not counted | — | listed in source files and overview | no |
| squadswap.pdf | SafeBEP20 | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | ReentrancyGuard | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | MasterChefV2 | own contract | 0xb61715… (selected) `0xb6171582c75421a740dcc15e4d873a34cb2ebb48` — deployed 2024-09-14 00:00:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| squadswap.pdf | IMasterChef | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | IBEP20 | unmatched — not counted | — | listed in source files | no |
| squadswap.pdf | SquadProfile | unmatched — not counted | — | listed in source files and overview | no |
| squadswap.pdf | SmartChefInitializable | unmatched — not counted | — | listed in source files and overview | no |
| squadswap.pdf | SmartChefFactory | ambiguous — not counted | SmartChefFactory (alternative) `0x6427824d446e5be25326ab1b88c8102f0d52ec16` — deployed 2024-03-06 12:30:01+03 — liveness: live (current_address_book_code)<br>SmartChefFactory (alternative) `0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75` — deployed 2024-06-28 00:52:25+03 — liveness: live (current_address_book_code)<br>SmartChefFactory (alternative) `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` — deployed 2024-09-14 00:15:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| squadswap.pdf | IPancakeProfile | unmatched — not counted | — | listed in source files | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SquadV3LmPool | unmatched — not counted | — | Finding PVE-001 target | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | MasterChefV2 | own contract | 0xb61715… (selected) `0xb6171582c75421a740dcc15e4d873a34cb2ebb48` — deployed 2024-09-14 00:00:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SmartChefInitializable | unmatched — not counted | — | Findings PVE-004 and PVE-005 target | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SquadswapPair | unmatched — not counted | — | Finding PVE-006 target | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | SquadswapRouter02 | ambiguous — not counted | SquadswapRouter02 (alternative) `0xcf870c78b7985a5b67a6f3f547678387015ee48d` — deployed 2025-01-29 14:10:00+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1` — deployed 2024-09-13 19:07:05+03 — liveness: live (code_present_context)<br>SquadswapRouter02 (alternative) `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` — deployed 2024-06-27 18:02:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-SquadSwap-v1.0.pdf | MasterChefV3 | own contract | 0x89c061… (selected) `0x89c0619e7a798309193438b3cff11f1f31266711` — deployed 2024-09-13 21:32:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5af85b993645af4e530f93721653fb9b6a424b00` | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85` | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x34bc76f2b5ae25dbe56270a73fbab17a1361f2b9` | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6d705b6729afae099a8447475a88c88265c7fee7` | LovelySwapInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x501535ef0b92ee1df5c12f47720f1e479b1db7b4` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8` | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xac5b61a34b41292d1e6db6bf3c909ff0b66f72f3` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x64d6f44907ac087d97315899bdcc35151ace3693` | NonfungibleTokenPositionDescriptorOffChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6427824d446e5be25326ab1b88c8102f0d52ec16` | SmartChefFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x29626c367d4f334f92fa21b1c5958bbe1dc2af09` | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75` | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfb96f59a63c60dfc8e13547b3e9e366a3c0b8b5b` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf48d22968e87c52743f9052d8e608ecd41facacc` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf1a0c1ce6d2f3ef752b97765f28f6c0cda79a811` | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7ea21af2920e0d1e17ef82ea9531762f504a14bb` | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xdfc40e4aa84acb09a55e7cb5428c38ee41ef090f` | SmartRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xee8f37d490cb7ea1dae7d080c5738894731299f0` | SquadInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x02ce24a6bdb469645e3615f418676f48c8c4e691` | SquadInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9` | SquadLimitOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xba34aa640b8be02a439221bcbea1f48c1035eef9` | SquadswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x4b599f3425d54afbf94bfd41ea9931ff92ad6551` | SquadswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1` | SquadswapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c` | SquadswapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10d8612d9d8269e322ab551c18a307cb4d6bc07b` | SquadV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa1288b64f2378276d0cc56f08397f70becf7c0ea` | SquadV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x6ea64bdca26f69fdef36c1137a0eae5bf434e8fd` | SquadV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x97eed6ab0a815f054b8bb5ed98e449aceca4bc8a` | SquadV3LmPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56956af389c6bc07f4c57837b49dd03b4238ef70` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd432617a31807c531116c2e39c251759ac905b6a` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x416a2ca1e6929ab47b6562c86685f72cedae4b0c` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7c9c9220b563a09167943fd327d50e858c0a6373` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5fbd88f04963c25e51ccae20951f815577a234c9` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xad2feaeb62e09e4b775bd497e481190eb8e6a24b` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9d19dd8d1967306b8bdea5efb38de693629ca47f` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbee3209e04f926ce9df2a22c457d44303e543365` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xa58659e37ab1c445b70a76958b02d8b399b674ab` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 317 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 16 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=2, unique_name=10

Zero-match audit list:

- [3034] www.cyberscope.io/audits/squadswap

Fork inheritance lineage and inherited audits are included when available.
