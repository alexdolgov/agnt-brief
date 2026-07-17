# Agentic Audit Brief: Moonwell

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Moonwell (`moonwell`)
- Website: [https://moonwell.fi](https://moonwell.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, moonbeam, moonriver, optimism
- Contract surface: 226 unique implementations (433 raw deployments)
- Coverage basis: 3/65 confirmed own live verified implementations (4.6%); conservative 4.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,910,394.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Moonwell. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 121 contract row(s) across base, ethereum, moonbeam, moonriver, optimism. Structural roles: 68 unclassified, 30 supporting, 23 core. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 121
- Structural roles: unclassified (68), supporting (30), core (23)
- Contract kinds: contract (119), abstract (2)
- Detected standards: erc20 (15), ownable (10), erc1967proxy (8), erc20permit (5), erc4626 (5), multicall (5), ownable2step (5), pausable (3)
- Frameworks: openzeppelin (34), openzeppelin-upgradeable (12), solmate (3), chainlink (1), permit2 (1)
- Upgradeable-pattern rows: 13

## Fork Analysis

2 of 101 contracts are derived from known codebases. 99 contracts have no detected origin.

### Forked Contracts

**GeneralAdapter1** (`0xb98c948cfa24072e58935bc004a8a7b376ae746a`, chain 8453)
Origin: singularv (`0x4a6c312ec70e8747a587ee860a0353cd42be0ae0`)
Containment: 80.8% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- morphoWrapperDepositFor(address,uint256)
- morphoWrapperWithdrawTo(address,uint256)
- stakeEth(uint256,uint256,address,address)
- unwrapStEth(uint256,address)
- wrapStEth(uint256,address)

**MoonwellGovernorArtemis** (`0xfc4dfb17101a12c5cec5eedd8e92b5b16557666d`, chain 1284)
Origin: moonwell (`0x2be2e230e89c59c8e20e633c524ad2de246e7370`)
Containment: 90.5% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- setQuorumVotes(uint256)

Removals (removed from original):
- getQuorum()
- setQuorumCaps(uint256,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x181ba797ccf779d8ab339721ed6ee827e758668e`, chain 10)
- UnnamedContract (`0x2f1490bd6ad10c9ce42a2829afa13eac0b746dcf`, chain 10)
- UnnamedContract (`0x79481c87f24a3c4332442a2e9faaf675e5f141f0`, chain 10)
- UnnamedContract (`0x866b838b97ee43f2c818b3cb5cc77a0dc22003fc`, chain 10)
- UnnamedContract (`0x90aa62dd4fd10955a46f77176019d908849451f8`, chain 10)
- UnnamedContract (`0xb8051464c8c92209c92f3a4cd9c73746c4c3cfb3`, chain 10)
- UnnamedContract (`0xd6c66868f937f00604d0fb860241970d6cc2cbfe`, chain 10)
- UnnamedContract (`0x1c55649f73cda2f72cef3dd6c5ca3d49efcf484c`, chain 1284)
- UnnamedContract (`0x22b1a40e3178fe7c7109efcc247c5bb2b34abe32`, chain 1284)
- UnnamedContract (`0x5402447a0db03eee98c98b924f7d346bd19cdd17`, chain 1284)
- UnnamedContract (`0x744b1756e7651c6d57f5311767eafe5e931d615b`, chain 1284)
- UnnamedContract (`0x7793e08eb4525309c46c9ba394ce33361a167ba4`, chain 1284)
- UnnamedContract (`0x8568a675384d761f36ec269d695d6ce4423cfab1`, chain 1284)
- UnnamedContract (`0x8e00d5e02e65a19337cdba98bba9f84d4186a180`, chain 1284)
- UnnamedContract (`0xaaa20c5a584a9fecdfedd71e46da7858b774a9ce`, chain 1284)
- UnnamedContract (`0xb6c94b3a378537300387b57ab1cc0d2083f9aeac`, chain 1284)
- UnnamedContract (`0xb8a798a50a7274a13449b7f2dd6df22faf2d40e5`, chain 1284)
- UnnamedContract (`0xd22da948c0ab3a27f5570b604f3adef5f68211c3`, chain 1284)
- UnnamedContract (`0xe76c8b8706fac85a8fbdcac3c42e3e7823c73994`, chain 1284)
- UnnamedContract (`0x3bf93770f2d4a794c3d9ebefbaebae2a8f09a5e5`, chain 8453)
- UnnamedContract (`0x628ff693426583d9a7fb391e54366292f509d457`, chain 8453)
- UnnamedContract (`0x703843c3379b52f9ff486c9f5892218d2a065cc8`, chain 8453)
- UnnamedContract (`0x73b06d8d18de422e269645eace15400de7462417`, chain 8453)
- UnnamedContract (`0xb682c840b5f4fc58b20769e691a6fa1305a501a2`, chain 8453)
- UnnamedContract (`0xc72fcc9793a10b9c363eeaacaabe422e0672b42b`, chain 8453)
- UnnamedContract (`0xe9005b078701e2a0948d2eac43010d35870ad9d2`, chain 8453)
- UnnamedContract (`0xec942be8a8114bfd0396a5052c36027f2ca6a9d0`, chain 8453)
- UnnamedContract (`0xedc817a28e8b93b03976fbd4a3ddbc9f7d176c22`, chain 8453)
- UnnamedContract (`0xfbb21d0380bee3312b33c4353c8936a0f13ef26c`, chain 8453)
- BridgeToken (`0xff8adec2221f9f4d8dfbafa6b9a297d17603493d`, chain 8453)
- Bundler3 (`0xfbcd3c258feb131d8e038f2a3a670a7be0507c05`, chain 10)
- Bundler3 (`0x6bfd8137e702540e7a42b74178a4a49ba43920c4`, chain 8453)
- ChainlinkOracle (`0x599a01297fc181558bdfa1737cafee513694b654`, chain 1)
- ChainlinkOracle (`0xed301cd3eb27217bdb05c4e9b820a8a3c8b665f9`, chain 1284)
- EcosystemReserve (`0x437113e54e5e6dfbe9741d699b312eea110d04d5`, chain 1)
- EcosystemReserve (`0x3343b3efebb99b543da30d272d6363d672372af1`, chain 8453)
- EcosystemReserveController (`0xca889f40aae37fff165bccf69aef1e82b5c511b9`, chain 1284)
- Factory4626 (`0xe770bd40b6976efbbb095174395dd2cb794c938a`, chain 8453)
- Maximillion (`0xe5ef9310cc7e3437bad83466675f24fd62a380c3`, chain 1284)
- MErc20Delegator (`0x636080eb65f1b665b646f47d31f21901cdaaee9f`, chain 1)
- MErc20Delegator (`0xb85ca1decc4971f8094da7676f8b71002a9590c4`, chain 1)
- MErc20Delegator (`0xe655790552c68f2871eb44b2cfe3dcfe6a63e62e`, chain 1)
- MErc20Delegator (`0xeddc25b67d474eeecfa4f69227b81d870c467011`, chain 1)
- MErc20Delegator (`0x3fe782c2fe7668c2f1eb313acf3022a31fead6b2`, chain 10)
- MErc20Delegator (`0x4c2e35e3ec4a0c82849637bc04a4609dbe53d321`, chain 10)
- MErc20Delegator (`0x6e6ca598a06e609c913551b729a228b023f06fdb`, chain 10)
- MErc20Delegator (`0x8e08617b0d66359d73aa11e11017834c29155525`, chain 10)
- MErc20Delegator (`0x95c84f369bd0251ca903052600a3c96838d78ba1`, chain 10)
- MErc20Delegator (`0x9fc345a20541bf8773988515c5950ed69af01847`, chain 10)
- MErc20Delegator (`0xa3a53899ee8f9f6e963437c5b3f805fec538bf84`, chain 10)
- MErc20Delegator (`0xb4104c02bbf4e9be85aaa41a62974e4e28d59a33`, chain 10)
- MErc20Delegator (`0xbb3b1ab66efb43b10923b87460c0106643b83f9d`, chain 10)
- MErc20Delegator (`0xed37cd7872c6fe4020982d35104be7919b8f8b33`, chain 10)
- MErc20Delegator (`0x42a96c0681b74838ec525adbd13c37f66388f289`, chain 1284)
- MErc20Delegator (`0x10ff57877b79e9bd949b3815220ec87b9fc5d2ee`, chain 8453)
- MErc20Delegator (`0x2f90bb22eb3979f5ffad31ea6c3f0792ca66da32`, chain 8453)
- MErc20Delegator (`0x627fe393bc6edda28e99ae648fd6ff362514304b`, chain 8453)
- MErc20Delegator (`0x6308204872bdb7432df97b04b42443c714904f3e`, chain 8453)
- MErc20Delegator (`0x73902f619ceb9b31fd8efecf435cbdf89e369ba6`, chain 8453)
- MErc20Delegator (`0x9a858ebff1beb0d3495bb0e2897c1528ed84a218`, chain 8453)
- MErc20Delegator (`0xb4fb8fed5b3aaa8434f0b19b1b623d977e07e86d`, chain 8453)
- MErc20Delegator (`0xb6419c6c2e60c4025d6d06ee4f913ce89425a357`, chain 8453)
- MErc20Delegator (`0xb8051464c8c92209c92f3a4cd9c73746c4c3cfb3`, chain 8453)
- MErc20Delegator (`0xcb1dacd30638ae38f2b94ea64f066045b7d45f44`, chain 8453)
- MErc20Delegator (`0xd64bcb70c613a6d1f4d7d57ba64bb4a0767a9682`, chain 8453)
- MErc20Delegator (`0xdc7810b47eaab250de623f0ee07764afa5f71ed1`, chain 8453)
- MErc20Delegator (`0xde8df9d942d78ede3ca06e60712582f79cfffc64`, chain 8453)
- MErc20Delegator (`0xf877acafa28c19b96727966690b2f44d35ad5976`, chain 8453)
- MErc20Delegator (`0xfc41b49d064ac646015b459c522820db9472f4b5`, chain 8453)
- MetaMorpho (`0x543257ef2161176d7c8cd90ba65c2d4caef5a796`, chain 8453)
- MetaMorpho (`0xa0e430870c4604ccfc7b38ca7845b1ff653d0ff1`, chain 8453)
- MetaMorpho (`0xc1256ae5ff1cf2719d4937adb3bbccab2e00a2ca`, chain 8453)
- MetaMorpho (`0xf24608e0ccb972b0b0f4a6446a0bbf58c701a026`, chain 8453)
- MetaMorphoV1_1 (`0x3520e1a10038131a3c00bf2158835a75e929642d`, chain 10)
- Mfam (`0xbb8d88bcd9749636bc4d2be22aac4bb3b01a58f1`, chain 1285)
- MGlimmer (`0x091608f4e4a15335145be0a279483c0f8e4c7955`, chain 1284)
- MoonwellViewsV1 (`0x2a55ba986a8c6ee17979f6233985414a865a280f`, chain 1285)
- MoonwellViewsV2 (`0x29ea8b56341ee95c819f4438bc048c6239ae5b71`, chain 8453)
- Morpho (`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`, chain 8453)
- SafeProxy (`0x5b710010586c1b728b047c3e42473c700eea4026`, chain 1)
- StakedWell (`0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af`, chain 1)
- StakedWell (`0x78feb72aea00b912ac45438e0764a02213266568`, chain 10)
- StakedWell (`0xe2747a3f7dd8585eb04c7632a9561d9616454b29`, chain 8453)
- TemporalGovernor (`0x17c9ba3fda7ec71ccfd75f978ef31e21927aff3d`, chain 10)
- TemporalGovernor (`0x908df70c2edea165ee22fe63549af46944ea4689`, chain 1284)
- TemporalGovernor (`0x8b621804a7637b781e2bbd58e256a591f2df7d51`, chain 8453)
- Timelock (`0x3a9249d70dcb4a4e9ef4f3af99a3a130452ec19b`, chain 1284)
- TransparentUpgradeableProxy (`0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7`, chain 1)
- TransparentUpgradeableProxy (`0x8769b70ac7c93af0e75de0d69877709b66d75838`, chain 1)
- TransparentUpgradeableProxy (`0x3c968481be3ba1a99fed5f73db2ff51151037738`, chain 10)
- TransparentUpgradeableProxy (`0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7`, chain 10)
- TransparentUpgradeableProxy (`0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7`, chain 8453)
- TransparentUpgradeableProxy (`0xe0278b32c627ff6ffbbe7de6a18ade145603e949`, chain 8453)
- Well (`0x511ab53f793683763e5a8829738301368a2411e3`, chain 1284)
- WETHRouter (`0xa218a4776e2487eaa25e738e6d6a64f21593ca22`, chain 1)
- WETHRouter (`0xc4ab8c031717d7ecccd653be898e0f92410e11dc`, chain 10)
- WETHRouter (`0x70778cfcfc475c7ea0f24cc625baf6eae475d0c9`, chain 8453)
- WethUnwrapper (`0x1382cff3cee10d283dcca55a30496187759e4caf`, chain 8453)
- xWELLRouter (`0xb84543e036054e2cd5394a9d99fa701eef666df4`, chain 1284)

## Contract Surface Quality

- Logic-topography rows: 121; live-surface rows included: 121 (100 live, 21 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 94/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/65 (4.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 94 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 121 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 85
- Confirmed-live implementations: 94 of 226 unique; 132 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/149
- Verified + Unaudited implementations: 146
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 226
- Raw deployments: 433
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 3 | 2.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MGlimmer | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389269 | `0x091608f4e4a15335145be0a279483c0f8e4c7955` | ✅ Audited |
| Timelock | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389272 | `0x3a9249d70dcb4a4e9ef4f3af99a3a130452ec19b` | ✅ Audited |
| Well | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389273 | `0x511ab53f793683763e5a8829738301368a2411e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (146)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutomationDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a949a62e0603115ea004ecb3a4e749823ffde96` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | optimism | unit-389268 | `0xfbcd3c258feb131d8e038f2a3a670a7be0507c05` | ⚠️ Unaudited |
| Bundler3 | unknown | project_anchor | own_supporting | 0 | base | unit-389302 | `0x6bfd8137e702540e7a42b74178a4a49ba43920c4` | ⚠️ Unaudited |
| ChainlinkBoundedCompositeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x31d099c106cd73e731972fdf1390cab77f59dade` | ⚠️ Unaudited |
| ChainlinkOEVMorphoWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 3 deployments: base `0x593355faef3075af1b20ca22fedabf6f3d2fd66c`; base `0xaeee6335f50e1f8af924df0742b1879c9761f5f5`; base `0xf4dccae864edf2b218b40a950c4407c3383dadb9` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-389250 | `0x599a01297fc181558bdfa1737cafee513694b654` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x2f5d370cdee0d42127a4f6ae04efd11fd085bc38`; moonbeam `0x61aa898af7a6ddf54f33d86b3d6e18364a612561`; moonbeam `0xdeef6ce0863aa22ee27d38695d9c4c4304ecb9cd` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | project_anchor | own_supporting | 0 | moonbeam | unit-389288 | `0xed301cd3eb27217bdb05c4e9b820a8a3c8b665f9` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389294 | `0x892be716dcf0a6199677f355f45ba8cc123baf60` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x696daf18ba0cf503fac9ef137ed3ef5aa719e14d` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x98b14fc2cc69186d8cffa342087d9e84228017de` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe69de7abfcf2a252874d66bc7aef6490b1978e7b` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389324 | 2 deployments: ethereum `0x6698e617ff739ebd03ba11bb69fd2579ef08f58b`; ethereum `0xdec80bb934397575594e91970b37baf65f5b21be` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | optimism | unit-389335 | 2 deployments: optimism `0x8dfbb21dbd61af533092d54b293660cf77a30ce2`; optimism `0xca889f40aae37fff165bccf69aef1e82b5c511b9` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 4 deployments: moonbeam `0x08cdbe8cf5d0c231c615ff493583e7af297b43cd`; moonbeam `0x29c66af1d44ab776d1e413f0da9d8e8ddcc70ab6`; moonbeam `0xa962f2974a846b30366251f4634384c1e42aef16`; moonbeam `0xd4d8de9f436245f65ff467326241ff047a61f96c` | ⚠️ Unaudited |
| Comptroller | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389345 | 2 deployments: moonriver `0x0b7a0eaa884849c6af7a129e899536dddca4905e`; moonriver `0x8529ea4dbdca738aa928d682ea9c1382bf2ff098` | ⚠️ Unaudited |
| ComptrollerRewardViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf2a9706b18534cc777a4c31d84a3c346fb1b1620` | ⚠️ Unaudited |
| Core | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7fbfcb63eab03e04c5455c770a0502ef73570b0e` | ⚠️ Unaudited |
| CypherAutoLoad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e3ca32b18316f022fdfae503eda7e788e112ac6` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389322 | 2 deployments: ethereum `0x437113e54e5e6dfbe9741d699b312eea110d04d5`; ethereum `0xabd65097f869f36f56be9ec60dfb4a441a00c47c` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | optimism | unit-389330 | 2 deployments: optimism `0x0cada1745973f63ab2aad29f67d1f1183bba2a10`; optimism `0x966450ee0757846963f17f7978a8a906e078ef4b` | ⚠️ Unaudited |
| EcosystemReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: moonriver `0xc0ad7d4d8d9d97c5857ed5e599ec81fecccf4a2e`; moonriver `0xcac0718b6f79824b27623212408b905b04a09fc5`; base `0xd1108da3a3ef1b5892e9c70530de5afd96e9cec4`; base `0xe007a0e0dc3ee601e9d8ef82136d5d64cbbb5060` | ⚠️ Unaudited |
| EcosystemReserve | unknown | project_anchor | own_supporting | 1 | base | unit-389350 | 2 deployments: base `0x3343b3efebb99b543da30d272d6363d672372af1`; base `0x65a633e8e379f9358c389c75ff1d913a92ab95b8` | ⚠️ Unaudited |
| EcosystemReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7e1d5f2fe42858708c7d007cc589b995f1c3cf4c`; base `0xa4908a340b516e35f799ebc8627821d0ef417307` | ⚠️ Unaudited |
| EcosystemReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xbad37dcaf815a96670416be2bfaf9a9474472e6c`; base `0xf65194b515265f60c5817a8254fdeb0ebc4e55e0` | ⚠️ Unaudited |
| EcosystemReserveController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0x98e708bbce1f158c1bde25f206afa7562fd0157f`; optimism `0x1d776f9dc5fb96a2b60862973d90418d684dee1e`; moonriver `0x300fc6cb2f5bd222521710855cfb747487fc9ad9`; moonriver `0xee793a6509d673cca29a3646f43b7e9ae9ee435c`; base `0x2011161f2790a4937ec00540611cc0ca072f90b3`; base `0x5865695ad39ed8fe7b12cd6035c90983bf19aa25`; base `0x938fd93cbc45ecc4bb8f2d1a69f45e593eeed514` | ⚠️ Unaudited |
| EcosystemReserveController | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389284 | `0xca889f40aae37fff165bccf69aef1e82b5c511b9` | ⚠️ Unaudited |
| EcosystemReserveController | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389296 | `0xd94f826c17e870a6327b7b1de6b43c5a9ef21044` | ⚠️ Unaudited |
| EcosystemReserveMoonriver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonbeam `0xf88f94f85444cbdbf9c41c0a213b93e2fe4be756`; moonriver `0x7793e08eb4525309c46c9ba394ce33361a167ba4` | ⚠️ Unaudited |
| EcosystemReserveMoonriver | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389342 | `0xba17581bb6d89954b42fb84294e476e97588908b` | ⚠️ Unaudited |
| ERC4626EthRouter | unknown | project_anchor | own_supporting | 0 | base | unit-389311 | `0xc095cb1a6b41a5cd7daaf993a904afdd74758d71` | ⚠️ Unaudited |
| ERC4626RateLimitedAllowance | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf08cef2ee2e5be584a581209637b02637f312072` | ⚠️ Unaudited |
| Factory4626 | registry | project_anchor | own_supporting | 0 | base | unit-389315 | `0xe770bd40b6976efbbb095174395dd2cb794c938a` | ⚠️ Unaudited |
| Factory4626Eth | unknown | project_anchor | own_supporting | 0 | base | unit-389300 | `0x6250e204ba6f722c7d498f659f8d3c5550ec811e` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a8ae46098ff418e2054243491544ed8564c3cdb` | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | project_anchor | own_supporting | 0 | base | unit-389309 | `0xb98c948cfa24072e58935bc004a8a7b376ae746a` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389343 | `0x5ded9d1025a158554ab19540ae83182d890bb8db` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 39 deployments: ethereum `0x6e13ed42145d4ab8b7951da267c28442bd76b2ed`; ethereum `0x9a714bfd5421eb0246cc37b2ef07799450a39c58`; ethereum `0xb9ca0ddc46438e2dcaa4a25f9822cd2df5c1b945`; ethereum `0xe86b7b1481fc365576b29352cfcafca1a0dfc366`; optimism `0x04e6322d196e0e4ccbb2610dd8b8f2871e160bd7`; optimism `0x2a55ba986a8c6ee17979f6233985414a865a280f`; optimism `0x612e737586ae0ccf4a55df3fcaf19993c16db9e9`; optimism `0x69ff8b55d6f08e2266feb10092ace88217e0668e`; optimism `0x7b2fabffa53f59203ae5db1dd8e0e9a4d50c744e`; optimism `0x7c94e5bddfddb4a22c0432873844224036dfb4c1`; optimism `0xbd2fcfb778fef7a1650e19a6e0754e982f0faae2`; optimism `0xdada7db2cc9a5d3d3c12509b71964e82d4ae76d6`; optimism `0xea952acfa68ed588313134d81ed9b19411e99b80`; optimism `0xeb7605508225517fe289c46406999f31b96c3b4a`; optimism `0xf5e4b63b8447879e8f44a988128ab1836f21f12a`; moonbeam `0x0b5f126fa3116dbb769f6b8404d1a78c54c6acf5`; moonbeam `0x1ce7e4928943d6a4820375ebe737204dc1e73755`; moonbeam `0x4c2e35e3ec4a0c82849637bc04a4609dbe53d321`; moonbeam `0xdada7db2cc9a5d3d3c12509b71964e82d4ae76d6`; moonriver `0xc862a3af64a8d3c146e6c505a18c2b6c6a6601bf`; base `0x01177f591c4d4fc89cdee039f7e17d7412ce9a7b`; base `0x048442d10e4c54655440f1c580bfcd27961b5bd8`; base `0x0738483add6ab8620b731aec0121d1d3a70bd6ea`; base `0x1007100ffc1ac1e63813fb983bb3d3a8df1cc193`; base `0x13820aa528dc5ce2de39f9a4495272e9500452c2`; base `0x2a62ac4f8be9e07bb0686c070a811027452d4da1`; base `0x310fbf531ba386b0f4cc207dcde9f8bdbfdbdb52`; base `0x36bd01e31834a1ea271f0a135e92517a6320b511`; base `0x55d58f7a3d3b9575eefa1661785538bc6f4dd0ce`; base `0x63f9f904ce2912853c2f7bb43dd1c1a6136f09b1`; base `0x6ac79df84fa8a704711a2fb8c3763e48ed2c0ed6`; base `0x6d8cb0c4c5caa9876939cb6e5eed8ca84d474c0c`; base `0x8b2988b4defc78412ebadbf7de5f9c76a3e4e7ca`; base `0x8e834e4c505a113a76f5851ff2aaa8cb2d9efd76`; base `0x96e03a0f2dcac38c86b5069d018341077f48cb1c`; base `0xcb95579c706144f3150f7c3b1bd3f24a48d3463e`; base `0xcd72a11d178803fa8d619660625281026888e8be`; base `0xcf1a3322977ef557899ad2bf3056d8411edc87a1`; base `0xfea5a5927645c0dc5c1e740ec1b24ad320c7e58f` | ⚠️ Unaudited |
| MamoStrategyRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecd80fbc47b1689445a1adfc278bcb41eb9bc766` | ⚠️ Unaudited |
| Math | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 7 deployments: moonbeam `0x405e3c3b71789af23e3ebac44f0a2af01941bb3a`; moonbeam `0x7befeec582002ab9850c4eaeb77c9e4167996e1a`; moonbeam `0x8abfd27795d07fd1c0131f46168a3bf2e5adc05e`; base `0x405e3c3b71789af23e3ebac44f0a2af01941bb3a`; base `0x6a85d8f29b5ed0a0463a026262d9f46dbf8acdbc`; base `0x7befeec582002ab9850c4eaeb77c9e4167996e1a`; base `0x8abfd27795d07fd1c0131f46168a3bf2e5adc05e` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x35f59bb88e6e3ee861ddaef22e443cdf99e86869`; moonbeam `0x9fc345a20541bf8773988515c5950ed69af01847`; moonbeam `0xf5e4b63b8447879e8f44a988128ab1836f21f12a` | ⚠️ Unaudited |
| Maximillion | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389286 | `0xe5ef9310cc7e3437bad83466675f24fd62a380c3` | ⚠️ Unaudited |
| Maximillion | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389291 | `0x1650c0ad9483158f9e240fd58d0e173807a80ccc` | ⚠️ Unaudited |
| MErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x21d851585840942b0ef9f20d842c00c5f3735eaf` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 8 | optimism | unit-389336 (8 proxies) | 9 deployments: optimism `0x3fe782c2fe7668c2f1eb313acf3022a31fead6b2`; optimism `0x4c2e35e3ec4a0c82849637bc04a4609dbe53d321`; optimism `0x6e6ca598a06e609c913551b729a228b023f06fdb`; optimism `0x8e08617b0d66359d73aa11e11017834c29155525`; optimism `0x95c84f369bd0251ca903052600a3c96838d78ba1`; optimism `0x9fc345a20541bf8773988515c5950ed69af01847`; optimism `0xa3a53899ee8f9f6e963437c5b3f805fec538bf84`; optimism `0xa9ce0a4de55791c5792b50531b18befc30b09dcc`; optimism `0xbb3b1ab66efb43b10923b87460c0106643b83f9d` | ⚠️ Unaudited |
| MErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | `0x298f2e346b82d69a473bf25f329bdf869e17dec8` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-389340 | `0x42a96c0681b74838ec525adbd13c37f66388f289` | ⚠️ Unaudited |
| MErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: ethereum `0xe1eeafbd3495b6da0a8f0afd5328b2f0f3ce7d8a`; moonbeam `0x73bbca91949919d081c51042b5ac0f86b5bb8e21` | ⚠️ Unaudited |
| MErc20Delegate | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 6 | moonriver | unit-389344 (6 proxies) | 7 deployments: moonriver `0x36918b66f9a3ec7a59d0007d8458db17bdffbf21`; moonriver `0x45d17fe87e65064b2e85f91a9ff3ad0c7b6cf75d`; moonriver `0x6503d905338e2ebb550c9ec39ced525b612e77ae`; moonriver `0x6e745367f4ad2b3da7339aee65dc85d416614d90`; moonriver `0x93ef8b7c6171bab1c0a51092b2c9da8dc2ba0e9d`; moonriver `0xa0d116513bd0b8f3f14e6ea41556c6ec34688e0f`; moonriver `0xd0670aee3698f66e2d4daf071eb9c690d978bfa8` | ⚠️ Unaudited |
| MErc20Delegate | unknown | project_anchor | own_supporting | 14 | base | unit-389347 (14 proxies) | 14 deployments: base `0x10ff57877b79e9bd949b3815220ec87b9fc5d2ee`; base `0x2f90bb22eb3979f5ffad31ea6c3f0792ca66da32`; base `0x627fe393bc6edda28e99ae648fd6ff362514304b`; base `0x6308204872bdb7432df97b04b42443c714904f3e`; base `0x73902f619ceb9b31fd8efecf435cbdf89e369ba6`; base `0x9a858ebff1beb0d3495bb0e2897c1528ed84a218`; base `0xb4fb8fed5b3aaa8434f0b19b1b623d977e07e86d`; base `0xb6419c6c2e60c4025d6d06ee4f913ce89425a357`; base `0xb8051464c8c92209c92f3a4cd9c73746c4c3cfb3`; base `0xcb1dacd30638ae38f2b94ea64f066045b7d45f44`; base `0xdc7810b47eaab250de623f0ee07764afa5f71ed1`; base `0xde8df9d942d78ede3ca06e60712582f79cfffc64`; base `0xf877acafa28c19b96727966690b2f44d35ad5976`; base `0xfc41b49d064ac646015b459c522820db9472f4b5` | ⚠️ Unaudited |
| MErc20DelegateFixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x47dffebef33719315bd5a91db6bfb81691347914` | ⚠️ Unaudited |
| MErc20DelegateMadFixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf19b9e20c24c8304b89373dec84b7c017e98b4fc` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389251 | `0x636080eb65f1b665b646f47d31f21901cdaaee9f` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389253 | `0xb85ca1decc4971f8094da7676f8b71002a9590c4` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389254 | `0xe655790552c68f2871eb44b2cfe3dcfe6a63e62e` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | ethereum | unit-389255 | `0xeddc25b67d474eeecfa4f69227b81d870c467011` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | optimism | unit-389267 | `0xed37cd7872c6fe4020982d35104be7919b8f8b33` | ⚠️ Unaudited |
| MErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 19 deployments: moonbeam `0x04e6322d196e0e4ccbb2610dd8b8f2871e160bd7`; moonbeam `0x1c478c3d21e4f1d69c4b1bab8c9ac09a02eb3eb2`; moonbeam `0x21d851585840942b0ef9f20d842c00c5f3735eaf`; moonbeam `0x2be2e230e89c59c8e20e633c524ad2de246e7370`; moonbeam `0x314d8ba8292fd23659fde5cf02822a6d95bbb5de`; moonbeam `0x3fe782c2fe7668c2f1eb313acf3022a31fead6b2`; moonbeam `0x64a815090ca8d4afa53ad2e8ff574c52e1ff199e`; moonbeam `0x69ff8b55d6f08e2266feb10092ace88217e0668e`; moonbeam `0x7a1bf5d21e5b51f3e6ec4fd578a2f98f979b1d1b`; moonbeam `0x8618f8302a189cda1e95be5dae406c71d32f9f36`; moonbeam `0x9f3d5a5308b8c2b62ef13b5e96098557b77bb49b`; moonbeam `0x9f785f479f620c2ae8ba180a1ca0e4319ba67ede`; moonbeam `0xa27aba7f954bb829f5b7a978a75c3a9789121b2d`; moonbeam `0xcc56c39ff32647dd485f3a5ec018a1004432964f`; moonbeam `0xfbb7fe66053634dc52a956e4a395fa6159a1fb38`; moonriver `0x159814eafbfea46cca6fe9dacf09d75f2a832840`; base `0x866b838b97ee43f2c818b3cb5cc77a0dc22003fc`; base `0xbb801e513811b1d79c09dda14588079edf39aaf2`; base `0xcb75657fe2d13dea2a05727ad257448b290fc8a3` | ⚠️ Unaudited |
| MErc20Delegator | token | project_anchor | own_supporting | 0 | base | unit-389314 | `0xd64bcb70c613a6d1f4d7d57ba64bb4a0767a9682` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389299 | `0x543257ef2161176d7c8cd90ba65c2d4caef5a796` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389307 | `0xa0e430870c4604ccfc7b38ca7845b1ff653d0ff1` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389312 | `0xc1256ae5ff1cf2719d4937adb3bbccab2e00a2ca` | ⚠️ Unaudited |
| MetaMorpho | unknown | project_anchor | own_supporting | 0 | base | unit-389319 | `0xf24608e0ccb972b0b0f4a6446a0bbf58c701a026` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | optimism | unit-389259 | `0x3520e1a10038131a3c00bf2158835a75e929642d` | ⚠️ Unaudited |
| Mfam | adapter | project_anchor | own_supporting | 0 | moonriver | unit-389295 | `0xbb8d88bcd9749636bc4d2be22aac4bb3b01a58f1` | ⚠️ Unaudited |
| MGlimmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x23d71838f6d40a7c35c6a7b8eb2972b7785145f2`; moonbeam `0x7b2fabffa53f59203ae5db1dd8e0e9a4d50c744e`; moonbeam `0xa3a53899ee8f9f6e963437c5b3f805fec538bf84` | ⚠️ Unaudited |
| MGlimmer | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389293 | `0x6a1a771c7826596652dadc9145feaae62b1cd07f` | ⚠️ Unaudited |
| MoonwellGovernorApollo | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389292 | `0x2be2e230e89c59c8e20e633c524ad2de246e7370` | ⚠️ Unaudited |
| MoonwellGovernorArtemis | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389289 | `0xfc4dfb17101a12c5cec5eedd8e92b5b16557666d` | ⚠️ Unaudited |
| MoonwellStakingViews | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcb44138f3e2e25b72338372488d2a74a580a0e15`; ethereum `0xf5f2ae75d762b7e2b42d53f48018436f52ce5401` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: moonbeam `0xf0a4a985254f5d419e70e52f634b75d36e668d1a`; moonbeam `0xf5f2ae75d762b7e2b42d53f48018436f52ce5401` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | project_anchor | own_supporting | 1 | moonriver | unit-389341 | 2 deployments: moonriver `0x2a55ba986a8c6ee17979f6233985414a865a280f`; moonriver `0xb4104c02bbf4e9be85aaa41a62974e4e28d59a33` | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x54ff1a86ab91a8f85e89c65bef92f02e5343310f` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389349 | 2 deployments: base `0x29ea8b56341ee95c819f4438bc048c6239ae5b71`; base `0x6834770aba6c2028f448e3259ddee4bcb879d459` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x511ab53f793683763e5a8829738301368a2411e3`; base `0xac7b31f5cb15c8273f81d4c065c7350d52aa2e91` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76871de49adbc457dcba809de8d95b4ecf938f51` | ⚠️ Unaudited |
| MoonwellViewsV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389329 | 2 deployments: ethereum `0x2d85b9c48a8c582f0aa244e134e9c6f30cf7786e`; ethereum `0xde51872589cad0d03d1b040bd85118903a1c9ad7` | ⚠️ Unaudited |
| Morpho | unknown | project_anchor | own_supporting | 0 | base | unit-389310 | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MorphoVaultV2Views | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8d189997ccd6ab6909ef89836e5bcef94599cce0` | ⚠️ Unaudited |
| MorphoViewsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7fc0dbc713649b96e984b2a5935016d3a5d1ed31` | ⚠️ Unaudited |
| MultichainGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x0ea81678e4deb33aad9e214df76be3158b4209ab`; moonbeam `0x65299eb6a77ee1b1a7ef7051cce71005b2a707ab`; moonbeam `0xc9ac406cda5d9dcbcb49a25e3ca9073951236b5d` | ⚠️ Unaudited |
| MultichainGovernor | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-389339 | `0x9a8464c4c11cea17e191653deb7cdc1be30f1af4` | ⚠️ Unaudited |
| MultichainGovernorV2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-389326 | `0x8769b70ac7c93af0e75de0d69877709b66d75838` | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-389334 | `0x3c968481be3ba1a99fed5f73db2ff51151037738` | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | project_anchor | own_supporting | 1 | base | unit-389352 | `0xe0278b32c627ff6ffbbe7de6a18ade145603e949` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389323 | 2 deployments: ethereum `0x54ff1a86ab91a8f85e89c65bef92f02e5343310f`; ethereum `0x60142b8d76fac5b88cfb422ba1aa905d2171851c` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | project_anchor | own_supporting | 1 | optimism | unit-389338 | 2 deployments: optimism `0xf9524bfa18c19c3e605fbfe8dfd05c6e967574aa`; optimism `0xff0731337f615ac5403cb243623283bc04cde121` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x2eed2b7d44e2cf64a41b6b3f78be2fdc56223d2b`; optimism `0xc92ab4d562a94232f244eef4a90d2f2dc10c309c` | ⚠️ Unaudited |
| MWethDelegate | unknown | project_anchor | own_supporting | 1 | optimism | unit-389332 | 2 deployments: optimism `0x66fb793e75053a07301c7c21a3cf77616123227b`; optimism `0xb4104c02bbf4e9be85aaa41a62974e4e28d59a33` | ⚠️ Unaudited |
| MWethDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: ethereum `0x9b1eeac01ded2155d93a23e9dd5e99954f1021fe`; base `0x599d4a1538d686814ee11b331eacbba166d7c41a` | ⚠️ Unaudited |
| MWethOwnerWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1796720c9441f8f18a3aa570ab7c10597a57c08e`; base `0x82e5e038a1d93f371f02768b09b2c6c4b98f6250` | ⚠️ Unaudited |
| OEVProtocolFeeRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: ethereum `0xb41ab921702e70f31df6309b77d213d96c1007f5`; optimism `0x2ad2f20ff29c11fd4bf20031e04476026c830845`; optimism `0xad3315f8b0c17f3bf97186b65ef91da9fbff170b`; optimism `0xcb95579c706144f3150f7c3b1bd3f24a48d3463e`; optimism `0xee3f2ca26f6f0526c50a14083113059abb948cf9`; base `0x75eba76fb3f99efb569b73fb3fa01265a6393c39`; base `0xab05f7216b4ecd0594e703f21fb0de6183bfecf3`; base `0xb25b49c555a458c3c4de3205040da6a582ff331d`; base `0xcd6e19dc27d63979c9e29d6f2e126a57b59cd6dd` | ⚠️ Unaudited |
| ProposalView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xded4ded0badacf87714c90405f8983efdf2d5c30` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 21 deployments: ethereum `0xb8a798a50a7274a13449b7f2dd6df22faf2d40e5`; ethereum `0xd5294cdbc1a1699d48a101bcc58a7ab287991a7c`; ethereum `0xf6e7c22db18d8a6a1fb21d0b70bc6865cb9aca7f`; optimism `0x8568a675384d761f36ec269d695d6ce4423cfab1`; moonbeam `0x0c2b0f1fcbcf3a27f19cd4afe564fe63f3b57b33`; moonbeam `0x2700d9e77ead93d4d1af913b6a619e7728ea9ff6`; moonbeam `0x5b50c39798bc0b2ca949bda60000875fe0ac0955`; moonbeam `0x8649a57252a1bf245f723fbfa570efb2a5d1a4a8`; moonbeam `0xa017a06586eb56da66a477a653b6c880a6a497dd`; moonbeam `0xab9aadace66937185ad9345e6ac291af82386d4e`; moonbeam `0xb0ee65140c89a24db5931d7ddf2c2a7c6f1d9f5b`; moonriver `0x6658ed2f38e4e76ba8f3cb88061372bfda2821a0`; moonriver `0x6e6ca598a06e609c913551b729a228b023f06fdb`; moonriver `0xce760284a8ea0f9513ab37b4aa310cfbb8a9ceb5`; base `0x243cd4e4e139b9d999d5bcbbb0f16432a393247a`; base `0x3fca08493283e79cbd1e733ca3cb8ec8c6074dec`; base `0x7465c2cfa4a9ab6acaacbf8eaa28257f6a1d1486`; base `0x9837b1bba284360f6b7ab37e740087fd2c9e0bc3`; base `0xc7867f143a6550e32df4d880a2c1cee3ab8adb2c`; base `0xf4cf0fdfb2f55da6916887675c332fac1e90099f`; base `0xff0731337f615ac5403cb243623283bc04cde121` | ⚠️ Unaudited |
| RateLimitCommonLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbec9ead15808c273d6ff4ba13e66de110a627057` | ⚠️ Unaudited |
| RateLimitMidpointCommonLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 6 deployments: moonbeam `0x56ed993b9883e39741c524a6eabe5f4625103c4d`; moonbeam `0xbae1c9d72f7de4d82c41ab68344370f1b7113e22`; moonbeam `0xc6cda501b6cd72eb5fa7dbdf78fdef1e488822da`; base `0x56ed993b9883e39741c524a6eabe5f4625103c4d`; base `0xbae1c9d72f7de4d82c41ab68344370f1b7113e22`; base `0xc6cda501b6cd72eb5fa7dbdf78fdef1e488822da` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389321 | `0x5b710010586c1b728b047c3e42473c700eea4026` | ⚠️ Unaudited |
| StakedMfam | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonriver `0x740d4c227129e55aa00169433024b77339da8bde`; moonriver `0xb0ee65140c89a24db5931d7ddf2c2a7c6f1d9f5b` | ⚠️ Unaudited |
| StakedMfam | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | moonriver | unit-389346 | `0xcd76e63f3abfa864c53b4b98f57c1aa6539fda3a` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389325 | 2 deployments: ethereum `0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af`; ethereum `0xb3a9e0dcf37658a48aa9f018c44f90378ddd4357` | ⚠️ Unaudited |
| StakedWell | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xeb56c57cec4d56072942caf90a8f694ed766012a`; ethereum `0xf03499f8ae0b883e630558f23760a6a89b1dae7e` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | optimism | unit-389333 | 2 deployments: optimism `0x78feb72aea00b912ac45438e0764a02213266568`; optimism `0xfb26a4947a38cb53e2d083c6490060ccce7438c5` | ⚠️ Unaudited |
| StakedWell | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 6 deployments: optimism `0xabd65097f869f36f56be9ec60dfb4a441a00c47c`; moonbeam `0x3a21d8b01c5fa6c61d88677fbb38fe05f0ff106a`; moonbeam `0xbec923f9038f245f90f0bc8ad57ac80ec556f72e`; moonbeam `0xd7689cd163374fae8cb853d1d3842d4ab4c29d77`; base `0x4439640c018e541ec6b29a5828bc876327cf556c`; base `0xdbffbce64e930e51c352878d3c2ca7da140f9e24` | ⚠️ Unaudited |
| StakedWell | unknown | project_anchor | own_supporting | 1 | base | unit-389354 | 2 deployments: base `0xe2747a3f7dd8585eb04c7632a9561d9616454b29`; base `0xe66e3a37c3274ac24fe8590f7d84a2427194dc17` | ⚠️ Unaudited |
| STIXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd1013c72cbb0ffb920d347c5836bf88965d0d5e` | ⚠️ Unaudited |
| TemporalGovernor | unknown | project_anchor | own_supporting | 0 | optimism | unit-389256 | `0x17c9ba3fda7ec71ccfd75f978ef31e21927aff3d` | ⚠️ Unaudited |
| TemporalGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1e336faa789426ee30dccf975f582ac8bd7fb563` | ⚠️ Unaudited |
| TemporalGovernor | governance | project_anchor | own_supporting | 0 | moonbeam | unit-389279 | `0x908df70c2edea165ee22fe63549af46944ea4689` | ⚠️ Unaudited |
| TemporalGovernor | governance | project_anchor | own_supporting | 0 | base | unit-389306 | `0x8b621804a7637b781e2bbd58e256a591f2df7d51` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | unit-389290 | `0x04e6322d196e0e4ccbb2610dd8b8f2871e160bd7` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonriver `0x66fb793e75053a07301c7c21a3cf77616123227b`; moonriver `0xa4230d045286b92427ac70ad748dde4a63483019`; moonriver `0xf27d728af08f813b4932df580b0c966284785c67` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | base | unit-389351 | `0xff8adec2221f9f4d8dfbafa6b9a297d17603493d` | ⚠️ Unaudited |
| TokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x17c9ba3fda7ec71ccfd75f978ef31e21927aff3d`; moonriver `0xac7b31f5cb15c8273f81d4c065c7350d52aa2e91` | ⚠️ Unaudited |
| TokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x2936354078e2c4bbb68f29b912a56dc45962b9cf`; moonriver `0x8568a675384d761f36ec269d695d6ce4423cfab1` | ⚠️ Unaudited |
| TokenSaleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonbeam `0xc7a3ba4fbcec6e227c5c304bbb553e2656605977`; moonbeam `0xefeadebb3465ea276f140c36af947200d83a7247`; moonriver `0xbec923f9038f245f90f0bc8ad57ac80ec556f72e` | ⚠️ Unaudited |
| TokenSaleDistributorProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonbeam `0x472292b645df051aa30b7d9926c6531343db627c`; moonbeam `0xe7e1ff175fad382479a34e9733c7cae32760af58`; moonriver `0x29ea8b56341ee95c819f4438bc048c6239ae5b71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x50837bff055a2bf724ec9f74612657a436cead56` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 5 deployments: moonbeam `0x32b1985b6e50359f2470d244f8fc4c0d2cf40392`; moonbeam `0x70f6073d7bec0883765b513649a4c1c727baf1e3`; moonbeam `0xa81f7ad5c66cf990cdcabc151a74c4b826af3e12`; moonbeam `0xa9ce0a4de55791c5792b50531b18befc30b09dcc`; moonbeam `0xb8790a51ecdd679fdc0df1944ad72aa3a14f1acb` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1e336faa789426ee30dccf975f582ac8bd7fb563`; ethereum `0x908df70c2edea165ee22fe63549af46944ea4689` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xbac3dd6d0333ea14f957b7b0796bcd59e8771501`; optimism `0xf2af8f06409628c6d2f8852b696a9deebe75c2a1` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af`; base `0xb3a9e0dcf37658a48aa9f018c44f90378ddd4357` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-389252 | `0xa218a4776e2487eaa25e738e6d6a64f21593ca22` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | optimism | unit-389265 | `0xc4ab8c031717d7ecccd653be898e0f92410e11dc` | ⚠️ Unaudited |
| WETHRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4`; base `0x41f2b791694fafe23a77bc97bcf5d68ae4fbcdc9` | ⚠️ Unaudited |
| WETHRouter | adapter | project_anchor | own_supporting | 0 | base | unit-389304 | `0x70778cfcfc475c7ea0f24cc625baf6eae475d0c9` | ⚠️ Unaudited |
| WethUnwrapper | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x4605da8b6b0d8d8ac4389606ea135e27b61da2f6`; base `0x7414dfe385d20d807402138ea157e02990e381b7`; base `0x876fa6f4eb3aad22f9893f82784095401499d6ca`; base `0xcd57f6d5162174d16b0215841b4414ff2a0441ac` | ⚠️ Unaudited |
| WethUnwrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-389263 | `0xa962f2974a846b30366251f4634384c1e42aef16` | ⚠️ Unaudited |
| WethUnwrapper | token | project_anchor | own_supporting | 0 | base | unit-389297 | `0x1382cff3cee10d283dcca55a30496187759e4caf` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-389327 | `0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-389337 | `0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 2 deployments: moonbeam `0x48e70f68712bd275982e8351dfe1993a828c6412`; moonbeam `0xef68c8f8bdeef8e938f519ee818dec80e320ce6b` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | base | unit-389348 | `0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7` | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8318f3c525fdac18993b9fe5dd823c4743b37e84` | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf9ebc3b140d802240ae2ebf1a3d388e5cd670872` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24af32b0c4c94f0d406fbc3c8815666356299c58` | ⚠️ Unaudited |
| XERC20Lockbox | token | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x0d45033775b290d69462944289b7a402a651b460`; moonbeam `0xd12a18b8ad26c2957138cef6687675d2985128da`; moonbeam `0xd95c2d570c35eb85537b7cbbe0b3e1dc5efce7df` | ⚠️ Unaudited |
| xWELL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3b1bddc0998058dd266e2a0ac855d0d750700a7f`; moonbeam `0x3b1bddc0998058dd266e2a0ac855d0d750700a7f`; base `0x3b1bddc0998058dd266e2a0ac855d0d750700a7f` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389328 | 2 deployments: ethereum `0xa88594d404727625a9437c3f886c7643872296ae`; ethereum `0xb84543e036054e2cd5394a9d99fa701eef666df4` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | optimism | unit-389331 | 2 deployments: optimism `0x3b1bddc0998058dd266e2a0ac855d0d750700a7f`; optimism `0xa88594d404727625a9437c3f886c7643872296ae` | ⚠️ Unaudited |
| xWELL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2585d82da7a7f8a85b10e6964814a74d999a14e3`; base `0x87e09769683058d4425c7cb80e1eba836ae5dd69` | ⚠️ Unaudited |
| xWELL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x54720dbdb9bc6bcce6796b3c57d4527e848e5873`; base `0xe5fa985320031010f371870107ea8fb4a408d0c8` | ⚠️ Unaudited |
| xWELL | unknown | project_anchor | own_supporting | 1 | base | unit-389353 | 2 deployments: base `0xa88594d404727625a9437c3f886c7643872296ae`; base `0xbe08a91ade130ad61193be2321ea06c4c39e124a` | ⚠️ Unaudited |
| xWELLBridgeFeePayer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342ef39c57d193258358f0095f55637c5ea39827` | ⚠️ Unaudited |
| xWELLRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | 3 deployments: moonbeam `0x0c87f9f6c052060b28dea1e4acfd24a407ac33fa`; moonbeam `0x78c504b6c0ea2adbf6a58b208c9888f3692db169`; moonbeam `0xfb26a4947a38cb53e2d083c6490060ccce7438c5` | ⚠️ Unaudited |
| xWELLRouter | adapter | project_anchor | own_supporting | 0 | moonbeam | unit-389282 | `0xb84543e036054e2cd5394a9d99fa701eef666df4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389257 | `0x181ba797ccf779d8ab339721ed6ee827e758668e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389258 | `0x2f1490bd6ad10c9ce42a2829afa13eac0b746dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389260 | `0x79481c87f24a3c4332442a2e9faaf675e5f141f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389261 | `0x866b838b97ee43f2c818b3cb5cc77a0dc22003fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389262 | `0x90aa62dd4fd10955a46f77176019d908849451f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389264 | `0xb8051464c8c92209c92f3a4cd9c73746c4c3cfb3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-389266 | `0xd6c66868f937f00604d0fb860241970d6cc2cbfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389270 | `0x1c55649f73cda2f72cef3dd6c5ca3d49efcf484c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389271 | `0x22b1a40e3178fe7c7109efcc247c5bb2b34abe32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389274 | `0x5402447a0db03eee98c98b924f7d346bd19cdd17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389275 | `0x744b1756e7651c6d57f5311767eafe5e931d615b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389276 | `0x7793e08eb4525309c46c9ba394ce33361a167ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x826d8ecd5e9ec46a63f1b0a2da7a8929a8590c29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389277 | `0x8568a675384d761f36ec269d695d6ce4423cfab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389278 | `0x8e00d5e02e65a19337cdba98bba9f84d4186a180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389280 | `0xaaa20c5a584a9fecdfedd71e46da7858b774a9ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389281 | `0xb6c94b3a378537300387b57ab1cc0d2083f9aeac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389283 | `0xb8a798a50a7274a13449b7f2dd6df22faf2d40e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389285 | `0xd22da948c0ab3a27f5570b604f3adef5f68211c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-389287 | `0xe76c8b8706fac85a8fbdcac3c42e3e7823c73994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2f5d370cdee0d42127a4f6ae04efd11fd085bc38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x504bd1938c9121a5cc71c8948317616d97f3fdc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x511ab53f793683763e5a8829738301368a2411e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9837b1bba284360f6b7ab37e740087fd2c9e0bc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdada7db2cc9a5d3d3c12509b71964e82d4ae76d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03ca79b01573fb4a710fcd907fbf38e6f2982aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11d223f745240c9d151bb332fa5988237b44c197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13426365c702a6229b9e86f619533b9ebcc4622b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17c9ba3fda7ec71ccfd75f978ef31e21927aff3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x181ba797ccf779d8ab339721ed6ee827e758668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f1490bd6ad10c9ce42a2829afa13eac0b746dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3520e1a10038131a3c00bf2158835a75e929642d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36918b66f9a3ec7a59d0007d8458db17bdffbf21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389298 | `0x3bf93770f2d4a794c3d9ebefbaebae2a8f09a5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c968481be3ba1a99fed5f73db2ff51151037738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fe782c2fe7668c2f1eb313acf3022a31fead6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2e35e3ec4a0c82849637bc04a4609dbe53d321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5762765a07de6807531b38b31cc5a43bd65cfc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60142b8d76fac5b88cfb422ba1aa905d2171851c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389301 | `0x628ff693426583d9a7fb391e54366292f509d457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6503d905338e2ebb550c9ec39ced525b612e77ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e6ca598a06e609c913551b729a228b023f06fdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e745367f4ad2b3da7339aee65dc85d416614d90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389303 | `0x703843c3379b52f9ff486c9f5892218d2a065cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389305 | `0x73b06d8d18de422e269645eace15400de7462417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78c29acf593fb715ddc7b64eee950f8c4802f706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79481c87f24a3c4332442a2e9faaf675e5f141f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e08617b0d66359d73aa11e11017834c29155525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90aa62dd4fd10955a46f77176019d908849451f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92cf58e617b9302479f2feee2a539f994b416dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93ef8b7c6171bab1c0a51092b2c9da8dc2ba0e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95c84f369bd0251ca903052600a3c96838d78ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x966450ee0757846963f17f7978a8a906e078ef4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fc345a20541bf8773988515c5950ed69af01847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0d116513bd0b8f3f14e6ea41556c6ec34688e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3a53899ee8f9f6e963437c5b3f805fec538bf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa962f2974a846b30366251f4634384c1e42aef16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9ce0a4de55791c5792b50531b18befc30b09dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4104c02bbf4e9be85aaa41a62974e4e28d59a33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389308 | `0xb682c840b5f4fc58b20769e691a6fa1305a501a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb3b1ab66efb43b10923b87460c0106643b83f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc104a4387f3282645f6fb0101bc37065902c5896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc4ab8c031717d7ecccd653be898e0f92410e11dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389313 | `0xc72fcc9793a10b9c363eeaacaabe422e0672b42b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca889f40aae37fff165bccf69aef1e82b5c511b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd76e63f3abfa864c53b4b98f57c1aa6539fda3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0670aee3698f66e2d4daf071eb9c690d978bfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6c66868f937f00604d0fb860241970d6cc2cbfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389316 | `0xe9005b078701e2a0948d2eac43010d35870ad9d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389317 | `0xec942be8a8114bfd0396a5052c36027f2ca6a9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed37cd7872c6fe4020982d35104be7919b8f8b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389318 | `0xedc817a28e8b93b03976fbd4a3ddbc9f7d176c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9524bfa18c19c3e605fbfe8dfd05c6e967574aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb26a4947a38cb53e2d083c6490060ccce7438c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389320 | `0xfbb21d0380bee3312b33c4353c8936a0f13ef26c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbcd3c258feb131d8e038f2a3a670a7be0507c05` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 11 | high |
| [Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13530] Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: Scope section lists repository and commit ID; contracts identified from file paths in findings and code locations.
- [13531] Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Scope section lists 'Moonwell Finance Safety Module Contracts' with repository and commit ID, but no specific contract names. Contract names extracted from code locations in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | ChainlinkOracle | ambiguous — not counted | ChainlinkOracle (alternative) `0x599a01297fc181558bdfa1737cafee513694b654` — deployed 2026-05-27 21:33:11+03 — liveness: live (current_address_book_code)<br>ChainlinkOracle (alternative) `0xed301cd3eb27217bdb05c4e9b820a8a3c8b665f9` — deployed 2022-06-21 23:54:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Comptroller | ambiguous — not counted | Unitroller (proxy) (alternative) `0xca889f40aae37fff165bccf69aef1e82b5c511b9` — deployed 2024-07-11 04:29:23+03 — liveness: live (code_present_context)<br>Unitroller (proxy) (alternative) `0xdec80bb934397575594e91970b37baf65f5b21be` — deployed 2026-05-27 21:23:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DAIInterestRateModel | unmatched — not counted | — | mentioned in findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DAIInterestRateModelV3 | unmatched — not counted | — | mentioned in findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MErc20 | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MErc20Delegator | ambiguous — not counted | MErc20Delegator (proxy) (alternative) `0x3fe782c2fe7668c2f1eb313acf3022a31fead6b2` — deployed 2024-07-11 04:32:29+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb8051464c8c92209c92f3a4cd9c73746c4c3cfb3` — deployed 2024-08-06 22:57:31+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xa3a53899ee8f9f6e963437c5b3f805fec538bf84` — deployed 2024-07-11 04:32:01+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xed37cd7872c6fe4020982d35104be7919b8f8b33` — deployed 2025-05-07 18:56:17+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x95c84f369bd0251ca903052600a3c96838d78ba1` — deployed 2024-07-11 04:34:25+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0x636080eb65f1b665b646f47d31f21901cdaaee9f` — deployed 2026-05-27 21:32:23+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x6308204872bdb7432df97b04b42443c714904f3e` — deployed 2025-04-01 15:18:57+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x627fe393bc6edda28e99ae648fd6ff362514304b` — deployed 2023-11-07 08:31:23+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x73902f619ceb9b31fd8efecf435cbdf89e369ba6` — deployed 2024-04-29 22:45:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xcb1dacd30638ae38f2b94ea64f066045b7d45f44` — deployed 2023-11-14 06:07:13+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb4fb8fed5b3aaa8434f0b19b1b623d977e07e86d` — deployed 2025-06-13 17:01:13+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x9a858ebff1beb0d3495bb0e2897c1528ed84a218` — deployed 2025-01-23 19:49:45+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xbb3b1ab66efb43b10923b87460c0106643b83f9d` — deployed 2024-07-11 04:33:55+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb6419c6c2e60c4025d6d06ee4f913ce89425a357` — deployed 2025-01-23 19:36:29+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x2f90bb22eb3979f5ffad31ea6c3f0792ca66da32` — deployed 2025-10-10 21:10:21+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xb4104c02bbf4e9be85aaa41a62974e4e28d59a33` — deployed 2024-07-11 04:33:27+03 — liveness: live (code_present_context)<br>MErc20Delegator (proxy) (alternative) `0x42a96c0681b74838ec525adbd13c37f66388f289` — deployed 2023-02-09 00:45:42+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x8e08617b0d66359d73aa11e11017834c29155525` — deployed 2024-07-11 04:31:33+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x9fc345a20541bf8773988515c5950ed69af01847` — deployed 2024-07-11 04:35:51+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xf877acafa28c19b96727966690b2f44d35ad5976` — deployed 2024-09-05 23:26:15+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xeddc25b67d474eeecfa4f69227b81d870c467011` — deployed 2026-05-27 21:30:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xdc7810b47eaab250de623f0ee07764afa5f71ed1` — deployed 2025-01-08 20:29:13+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xde8df9d942d78ede3ca06e60712582f79cfffc64` — deployed 2025-01-29 21:52:49+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xb85ca1decc4971f8094da7676f8b71002a9590c4` — deployed 2026-05-27 21:28:23+03 — liveness: live (code_present_context)<br>MErc20Delegator (alternative) `0xe655790552c68f2871eb44b2cfe3dcfe6a63e62e` — deployed 2026-05-27 21:29:35+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x10ff57877b79e9bd949b3815220ec87b9fc5d2ee` — deployed 2025-01-24 02:47:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (alternative) `0xd64bcb70c613a6d1f4d7d57ba64bb4a0767a9682` — deployed 2026-03-19 01:15:01+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x4c2e35e3ec4a0c82849637bc04a4609dbe53d321` — deployed 2024-07-11 04:34:53+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0x6e6ca598a06e609c913551b729a228b023f06fdb` — deployed 2024-07-11 04:32:59+03 — liveness: live (current_address_book_code)<br>MErc20Delegator (proxy) (alternative) `0xfc41b49d064ac646015b459c522820db9472f4b5` — deployed 2024-10-12 01:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MErc20Immutable | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MGlimmer | own contract | MGlimmer (selected) `0x091608f4e4a15335145be0a279483c0f8e4c7955` — deployed 2022-06-21 23:49:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MToken | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Reservoir | unmatched — not counted | — | listed in scope and findings | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Timelock | own contract | Timelock (selected) `0x3a9249d70dcb4a4e9ef4f3af99a3a130452ec19b` — deployed 2022-08-15 22:12:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Unitroller | ambiguous — not counted | Unitroller (proxy) (alternative) `0xca889f40aae37fff165bccf69aef1e82b5c511b9` — deployed 2024-07-11 04:29:23+03 — liveness: live (code_present_context)<br>Unitroller (proxy) (alternative) `0xdec80bb934397575594e91970b37baf65f5b21be` — deployed 2026-05-27 21:23:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Well | own contract | Well (selected) `0x511ab53f793683763e5a8829738301368a2411e3` — deployed 2022-05-12 00:11:30+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | StakedToken | unmatched — not counted | — | Code Location in findings | no |
| Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | EcosystemReserve | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x966450ee0757846963f17f7978a8a906e078ef4b` — deployed 2024-07-12 05:02:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a633e8e379f9358c389c75ff1d913a92ab95b8` — deployed 2024-03-23 06:32:25+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xabd65097f869f36f56be9ec60dfb4a441a00c47c` — deployed 2026-01-28 20:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DistributionManager | unmatched — not counted | — | Code Location in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xfbcd3c258feb131d8e038f2a3a670a7be0507c05` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6bfd8137e702540e7a42b74178a4a49ba43920c4` | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6698e617ff739ebd03ba11bb69fd2579ef08f58b` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8dfbb21dbd61af533092d54b293660cf77a30ce2` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x437113e54e5e6dfbe9741d699b312eea110d04d5` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0cada1745973f63ab2aad29f67d1f1183bba2a10` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3343b3efebb99b543da30d272d6363d672372af1` | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xca889f40aae37fff165bccf69aef1e82b5c511b9` | EcosystemReserveController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc095cb1a6b41a5cd7daaf993a904afdd74758d71` | ERC4626EthRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe770bd40b6976efbbb095174395dd2cb794c938a` | Factory4626 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6250e204ba6f722c7d498f659f8d3c5550ec811e` | Factory4626Eth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb98c948cfa24072e58935bc004a8a7b376ae746a` | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xe5ef9310cc7e3437bad83466675f24fd62a380c3` | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3fe782c2fe7668c2f1eb313acf3022a31fead6b2` | MErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x42a96c0681b74838ec525adbd13c37f66388f289` | MErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x10ff57877b79e9bd949b3815220ec87b9fc5d2ee` | MErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x636080eb65f1b665b646f47d31f21901cdaaee9f` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb85ca1decc4971f8094da7676f8b71002a9590c4` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe655790552c68f2871eb44b2cfe3dcfe6a63e62e` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeddc25b67d474eeecfa4f69227b81d870c467011` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xed37cd7872c6fe4020982d35104be7919b8f8b33` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd64bcb70c613a6d1f4d7d57ba64bb4a0767a9682` | MErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xbb8d88bcd9749636bc4d2be22aac4bb3b01a58f1` | Mfam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xfc4dfb17101a12c5cec5eedd8e92b5b16557666d` | MoonwellGovernorArtemis | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x2a55ba986a8c6ee17979f6233985414a865a280f` | MoonwellViewsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x29ea8b56341ee95c819f4438bc048c6239ae5b71` | MoonwellViewsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d85b9c48a8c582f0aa244e134e9c6f30cf7786e` | MoonwellViewsV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54ff1a86ab91a8f85e89c65bef92f02e5343310f` | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf9524bfa18c19c3e605fbfe8dfd05c6e967574aa` | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x66fb793e75053a07301c7c21a3cf77616123227b` | MWethDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x78feb72aea00b912ac45438e0764a02213266568` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2747a3f7dd8585eb04c7632a9561d9616454b29` | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x17c9ba3fda7ec71ccfd75f978ef31e21927aff3d` | TemporalGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x908df70c2edea165ee22fe63549af46944ea4689` | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8b621804a7637b781e2bbd58e256a591f2df7d51` | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xff8adec2221f9f4d8dfbafa6b9a297d17603493d` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa218a4776e2487eaa25e738e6d6a64f21593ca22` | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xc4ab8c031717d7ecccd653be898e0f92410e11dc` | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x70778cfcfc475c7ea0f24cc625baf6eae475d0c9` | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa962f2974a846b30366251f4634384c1e42aef16` | WethUnwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1382cff3cee10d283dcca55a30496187759e4caf` | WethUnwrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7` | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7` | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7` | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa88594d404727625a9437c3f886c7643872296ae` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3b1bddc0998058dd266e2a0ac855d0d750700a7f` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa88594d404727625a9437c3f886c7643872296ae` | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xb84543e036054e2cd5394a9d99fa701eef666df4` | xWELLRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 21 |
| standard_library | 4 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 9 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Zero-match audit list:

- [13531] Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
