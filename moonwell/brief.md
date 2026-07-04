# Agentic Audit Brief: Moonwell

## Project Overview

- Project: Moonwell (`moonwell`)
- Website: [https://moonwell.fi](https://moonwell.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:36.823Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, ethereum, moonbeam, moonriver, optimism
- Contract surface: 124 unique implementations (285 raw deployments)
- DeFi Llama TVL: $132,910,394.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 115 project-authored contract(s) across 5 chain(s); 2 ERC4626 vaults, 27 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 48 common project-authored base contract(s) (proxy, erc1967upgrade, xerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 371; live-surface contracts included: 271 (256 live, 15 unknown).
- Excluded by liveness: 100 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/90 (7.8%)
- Deployed-live implementations: 109 of 124 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/109
- Verified + Unaudited implementations: 101
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 124
- Raw deployments: 285
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 8 | 7.3% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainlinkOracle | operational_periphery | moonbeam | n/a | 6 deployments: ethereum `0x599a01...94b654`; moonbeam [`0x2f5d37...85bc38`](./contracts/moonbeam-1284/0x2f5d370cdee0d42127a4f6ae04efd11fd085bc38/); moonbeam `0x61aa89...612561`; moonbeam `0xdeef6c...ecb9cd`; moonbeam `0xed301c...b665f9`; moonriver `0x892be7...3baf60` | ✅ Audited |
| Comptroller | unknown | moonbeam | n/a | 4 deployments: moonbeam [`0x08cdbe...7b43cd`](./contracts/moonbeam-1284/0x08cdbe8cf5d0c231c615ff493583e7af297b43cd/); moonbeam `0x29c66a...c70ab6`; moonbeam `0xa962f2...2aef16`; moonbeam `0xd4d8de...61f96c` | ✅ Audited |
| EcosystemReserve | unknown | moonriver | n/a | 2 deployments: moonriver [`0xc0ad7d...cf4a2e`](./contracts/moonriver-1285/0xc0ad7d4d8d9d97c5857ed5e599ec81fecccf4a2e/); moonriver `0xcac071...a09fc5` | ✅ Audited |
| MErc20Delegator | token | moonbeam | n/a | 22 deployments: ethereum `0x636080...aaee9f`; ethereum `0xb85ca1...9590c4`; ethereum `0xe65579...63e62e`; ethereum `0xeddc25...467011`; optimism `0xed37cd...8f8b33`; moonbeam [`0x04e632...160bd7`](./contracts/moonbeam-1284/0x04e6322d196e0e4ccbb2610dd8b8f2871e160bd7/); moonbeam `0x1c478c...eb3eb2`; moonbeam `0x21d851...735eaf`; moonbeam `0x2be2e2...6e7370`; moonbeam `0x314d8b...bbb5de`; moonbeam `0x3fe782...ead6b2`; moonbeam `0x64a815...ff199e`; moonbeam `0x69ff8b...e0668e`; moonbeam `0x7a1bf5...9b1d1b`; moonbeam `0x8618f8...2f9f36`; moonbeam `0x9f3d5a...7bb49b`; moonbeam `0x9f785f...a67ede`; moonbeam `0xa27aba...121b2d`; moonbeam `0xcc56c3...32964f`; moonbeam `0xfbb7fe...a1fb38`; moonriver `0x159814...832840`; base `0xd64bcb...7a9682` | ✅ Audited |
| MGlimmer | unknown | moonbeam | n/a | 5 deployments: moonbeam [`0x091608...4c7955`](./contracts/moonbeam-1284/0x091608f4e4a15335145be0a279483c0f8e4c7955/); moonbeam `0x23d718...5145f2`; moonbeam `0x7b2fab...0c744e`; moonbeam `0xa3a538...38bf84`; moonriver `0x6a1a77...1cd07f` | ✅ Audited |
| Timelock | governance | moonriver | n/a | 5 deployments: moonbeam `0x3a9249...2ec19b`; moonriver [`0x04e632...160bd7`](./contracts/moonriver-1285/0x04e6322d196e0e4ccbb2610dd8b8f2871e160bd7/); moonriver `0x66fb79...23227b`; moonriver `0xa4230d...483019`; moonriver `0xf27d72...785c67` | ✅ Audited |
| Unitroller | unknown | moonbeam | n/a | 5 deployments: moonbeam [`0x32b198...f40392`](./contracts/moonbeam-1284/0x32b1985b6e50359f2470d244f8fc4c0d2cf40392/); moonbeam `0x70f607...baf1e3`; moonbeam `0xa81f7a...af3e12`; moonbeam `0xa9ce0a...b09dcc`; moonbeam `0xb8790a...4f1acb` | ✅ Audited |
| Well | unknown | moonbeam | n/a | [`0x511ab5...2411e3`](./contracts/moonbeam-1284/0x511ab53f793683763e5a8829738301368a2411e3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (101)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bundler3 | unknown | base | n/a | 2 deployments: optimism `0xfbcd3c...507c05`; base [`0x6bfd81...3920c4`](./contracts/base-8453/0x6bfd8137e702540e7a42b74178a4a49ba43920c4/) | ⚠️ Unaudited |
| ChainlinkBoundedCompositeOracle | unknown | base | n/a | [`0x31d099...59dade`](./contracts/base-8453/0x31d099c106cd73e731972fdf1390cab77f59dade/) | ⚠️ Unaudited |
| ChainlinkOEVMorphoWrapper | unknown | base | n/a | 3 deployments: base [`0x593355...2fd66c`](./contracts/base-8453/0x593355faef3075af1b20ca22fedabf6f3d2fd66c/); base `0xaeee63...61f5f5`; base `0xf4dcca...3dadb9` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | base | n/a | [`0x696daf...19e14d`](./contracts/base-8453/0x696daf18ba0cf503fac9ef137ed3ef5aa719e14d/) | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | base | n/a | [`0x98b14f...8017de`](./contracts/base-8453/0x98b14fc2cc69186d8cffa342087d9e84228017de/) | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | base | n/a | [`0xe69de7...978e7b`](./contracts/base-8453/0xe69de7abfcf2a252874d66bc7aef6490b1978e7b/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6698e6...08f58b`](./contracts/ethereum-1/0x6698e617ff739ebd03ba11bb69fd2579ef08f58b/); ethereum `0xdec80b...5b21be` | ⚠️ Unaudited |
| Comptroller | unknown | optimism | n/a | 2 deployments: optimism [`0x8dfbb2...a30ce2`](./contracts/optimism-10/0x8dfbb21dbd61af533092d54b293660cf77a30ce2/); optimism `0xca889f...c511b9` | ⚠️ Unaudited |
| Comptroller | unknown | moonriver | n/a | 2 deployments: moonriver [`0x0b7a0e...a4905e`](./contracts/moonriver-1285/0x0b7a0eaa884849c6af7a129e899536dddca4905e/); moonriver `0x8529ea...2ff098` | ⚠️ Unaudited |
| ComptrollerRewardViewer | periphery | moonbeam | n/a | [`0xf2a970...1b1620`](./contracts/moonbeam-1284/0xf2a9706b18534cc777a4c31d84a3c346fb1b1620/) | ⚠️ Unaudited |
| Core | unknown | base | n/a | [`0x7fbfcb...570b0e`](./contracts/base-8453/0x7fbfcb63eab03e04c5455c770a0502ef73570b0e/) | ⚠️ Unaudited |
| CypherAutoLoad | unknown | base | n/a | [`0x9e3ca3...112ac6`](./contracts/base-8453/0x9e3ca32b18316f022fdfae503eda7e788e112ac6/) | ⚠️ Unaudited |
| EcosystemReserve | unknown | ethereum | n/a | 2 deployments: ethereum [`0x437113...0d04d5`](./contracts/ethereum-1/0x437113e54e5e6dfbe9741d699b312eea110d04d5/); ethereum `0xabd650...00c47c` | ⚠️ Unaudited |
| EcosystemReserve | unknown | optimism | n/a | 2 deployments: optimism [`0x0cada1...ba2a10`](./contracts/optimism-10/0x0cada1745973f63ab2aad29f67d1f1183bba2a10/); optimism `0x966450...78ef4b` | ⚠️ Unaudited |
| EcosystemReserve | unknown | base | n/a | 2 deployments: base [`0x3343b3...372af1`](./contracts/base-8453/0x3343b3efebb99b543da30d272d6363d672372af1/); base `0x65a633...ab95b8` | ⚠️ Unaudited |
| EcosystemReserve | unknown | base | n/a | 2 deployments: base [`0x7e1d5f...c3cf4c`](./contracts/base-8453/0x7e1d5f2fe42858708c7d007cc589b995f1c3cf4c/); base `0xa4908a...417307` | ⚠️ Unaudited |
| EcosystemReserve | unknown | base | n/a | 2 deployments: base [`0xbad37d...472e6c`](./contracts/base-8453/0xbad37dcaf815a96670416be2bfaf9a9474472e6c/); base `0xf65194...4e55e0` | ⚠️ Unaudited |
| EcosystemReserveController | governance | moonriver | n/a | 5 deployments: ethereum `0x98e708...d0157f`; moonbeam `0xca889f...c511b9`; moonriver [`0x300fc6...fc9ad9`](./contracts/moonriver-1285/0x300fc6cb2f5bd222521710855cfb747487fc9ad9/); moonriver `0xd94f82...f21044`; moonriver `0xee793a...ee435c` | ⚠️ Unaudited |
| EcosystemReserveMoonriver | unknown | moonriver | n/a | 2 deployments: moonbeam `0xf88f94...4be756`; moonriver [`0x7793e0...167ba4`](./contracts/moonriver-1285/0x7793e08eb4525309c46c9ba394ce33361a167ba4/) | ⚠️ Unaudited |
| EcosystemReserveMoonriver | unknown | moonriver | n/a | [`0xba1758...88908b`](./contracts/moonriver-1285/0xba17581bb6d89954b42fb84294e476e97588908b/) | ⚠️ Unaudited |
| ERC4626EthRouter | unknown | base | n/a | [`0xc095cb...758d71`](./contracts/base-8453/0xc095cb1a6b41a5cd7daaf993a904afdd74758d71/) | ⚠️ Unaudited |
| ERC4626RateLimitedAllowance | operational_periphery | base | n/a | [`0xf08cef...312072`](./contracts/base-8453/0xf08cef2ee2e5be584a581209637b02637f312072/) | ⚠️ Unaudited |
| Factory4626 | registry | base | n/a | [`0xe770bd...4c938a`](./contracts/base-8453/0xe770bd40b6976efbbb095174395dd2cb794c938a/) | ⚠️ Unaudited |
| Factory4626Eth | unknown | base | n/a | [`0x6250e2...ec811e`](./contracts/base-8453/0x6250e204ba6f722c7d498f659f8d3c5550ec811e/) | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | base | n/a | [`0x1a8ae4...4c3cdb`](./contracts/base-8453/0x1a8ae46098ff418e2054243491544ed8564c3cdb/) | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | base | n/a | [`0xb98c94...ae746a`](./contracts/base-8453/0xb98c948cfa24072e58935bc004a8a7b376ae746a/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | moonriver | n/a | [`0x5ded9d...0bb8db`](./contracts/moonriver-1285/0x5ded9d1025a158554ab19540ae83182d890bb8db/) | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | moonbeam | n/a | 11 deployments: ethereum `0x6e13ed...76b2ed`; ethereum `0x9a714b...a39c58`; ethereum `0xb9ca0d...c1b945`; ethereum `0xe86b7b...dfc366`; moonbeam [`0x0b5f12...c6acf5`](./contracts/moonbeam-1284/0x0b5f126fa3116dbb769f6b8404d1a78c54c6acf5/); moonbeam `0x1ce7e4...e73755`; moonbeam `0x4c2e35...53d321`; moonbeam `0xdada7d...ae76d6`; moonriver `0xc862a3...6601bf`; base `0x6d8cb0...474c0c`; base `0xcf1a33...dc87a1` | ⚠️ Unaudited |
| Math | unknown | moonbeam | n/a | 7 deployments: moonbeam [`0x405e3c...41bb3a`](./contracts/moonbeam-1284/0x405e3c3b71789af23e3ebac44f0a2af01941bb3a/); moonbeam `0x7befee...996e1a`; moonbeam `0x8abfd2...adc05e`; base [`0x405e3c...41bb3a`](./contracts/base-8453/0x405e3c3b71789af23e3ebac44f0a2af01941bb3a/); base `0x6a85d8...8acdbc`; base `0x7befee...996e1a`; base `0x8abfd2...adc05e` | ⚠️ Unaudited |
| Maximillion | unknown | moonriver | n/a | 5 deployments: moonbeam `0x35f59b...e86869`; moonbeam `0x9fc345...f01847`; moonbeam `0xe5ef93...a380c3`; moonbeam `0xf5e4b6...21f12a`; moonriver [`0x1650c0...a80ccc`](./contracts/moonriver-1285/0x1650c0ad9483158f9e240fd58d0e173807a80ccc/) | ⚠️ Unaudited |
| MErc20Delegate | unknown | moonriver | n/a | 4 deployments: ethereum `0xe1eeaf...ce7d8a`; optimism `0xa9ce0a...b09dcc`; moonbeam `0x73bbca...bb8e21`; moonriver [`0x45d17f...6cf75d`](./contracts/moonriver-1285/0x45d17fe87e65064b2e85f91a9ff3ad0c7b6cf75d/) | ⚠️ Unaudited |
| MErc20DelegateFixer | unknown | moonbeam | n/a | [`0x47dffe...347914`](./contracts/moonbeam-1284/0x47dffebef33719315bd5a91db6bfb81691347914/) | ⚠️ Unaudited |
| MErc20DelegateMadFixer | unknown | moonbeam | n/a | [`0xf19b9e...98b4fc`](./contracts/moonbeam-1284/0xf19b9e20c24c8304b89373dec84b7c017e98b4fc/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | 4 deployments: base [`0x543257...f5a796`](./contracts/base-8453/0x543257ef2161176d7c8cd90ba65c2d4caef5a796/); base `0xa0e430...3d0ff1`; base `0xc1256a...00a2ca`; base `0xf24608...01a026` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | optimism | n/a | [`0x3520e1...29642d`](./contracts/optimism-10/0x3520e1a10038131a3c00bf2158835a75e929642d/) | ⚠️ Unaudited |
| Mfam | adapter | moonriver | n/a | [`0xbb8d88...1a58f1`](./contracts/moonriver-1285/0xbb8d88bcd9749636bc4d2be22aac4bb3b01a58f1/) | ⚠️ Unaudited |
| MoonwellGovernorApollo | governance | moonriver | n/a | [`0x2be2e2...6e7370`](./contracts/moonriver-1285/0x2be2e230e89c59c8e20e633c524ad2de246e7370/) | ⚠️ Unaudited |
| MoonwellGovernorArtemis | governance | moonbeam | n/a | [`0xfc4dfb...57666d`](./contracts/moonbeam-1284/0xfc4dfb17101a12c5cec5eedd8e92b5b16557666d/) | ⚠️ Unaudited |
| MoonwellStakingViews | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcb4413...0a0e15`](./contracts/ethereum-1/0xcb44138f3e2e25b72338372488d2a74a580a0e15/); ethereum `0xf5f2ae...ce5401` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xf0a4a9...668d1a`](./contracts/moonbeam-1284/0xf0a4a985254f5d419e70e52f634b75d36e668d1a/); moonbeam `0xf5f2ae...ce5401` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonriver | n/a | 2 deployments: moonriver [`0x2a55ba...5a280f`](./contracts/moonriver-1285/0x2a55ba986a8c6ee17979f6233985414a865a280f/); moonriver `0xb4104c...d59a33` | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | adapter | moonbeam | n/a | [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | base | n/a | 2 deployments: base [`0x29ea8b...ae5b71`](./contracts/base-8453/0x29ea8b56341ee95c819f4438bc048c6239ae5b71/); base `0x683477...79d459` | ⚠️ Unaudited |
| MoonwellViewsV2 | unknown | base | n/a | 2 deployments: base [`0x511ab5...2411e3`](./contracts/base-8453/0x511ab53f793683763e5a8829738301368a2411e3/); base `0xac7b31...aa2e91` | ⚠️ Unaudited |
| MoonwellViewsV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d85b9...f7786e`](./contracts/ethereum-1/0x2d85b9c48a8c582f0aa244e134e9c6f30cf7786e/); ethereum `0xde5187...1c9ad7` | ⚠️ Unaudited |
| Morpho | unknown | base | n/a | [`0xbbbbbb...eeffcb`](./contracts/base-8453/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoVaultV2Views | core_logic | base | n/a | [`0x8d1899...99cce0`](./contracts/base-8453/0x8d189997ccd6ab6909ef89836e5bcef94599cce0/) | ⚠️ Unaudited |
| MorphoViewsV2 | unknown | base | n/a | [`0x7fc0db...d1ed31`](./contracts/base-8453/0x7fc0dbc713649b96e984b2a5935016d3a5d1ed31/) | ⚠️ Unaudited |
| MultichainGovernor | governance | moonbeam | n/a | 3 deployments: moonbeam [`0x0ea816...4209ab`](./contracts/moonbeam-1284/0x0ea81678e4deb33aad9e214df76be3158b4209ab/); moonbeam `0x65299e...a707ab`; moonbeam `0xc9ac40...236b5d` | ⚠️ Unaudited |
| MultichainGovernor | unknown | moonbeam | n/a | [`0x9a8464...0f1af4`](./contracts/moonbeam-1284/0x9a8464c4c11cea17e191653deb7cdc1be30f1af4/) | ⚠️ Unaudited |
| MultichainGovernorV2 | governance | ethereum | n/a | [`0x8769b7...d75838`](./contracts/ethereum-1/0x8769b70ac7c93af0e75de0d69877709b66d75838/) | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | optimism | n/a | [`0x3c9684...037738`](./contracts/optimism-10/0x3c968481be3ba1a99fed5f73db2ff51151037738/) | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | base | n/a | [`0xe0278b...03e949`](./contracts/base-8453/0xe0278b32c627ff6ffbbe7de6a18ade145603e949/) | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x54ff1a...43310f`](./contracts/ethereum-1/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/); ethereum `0x60142b...71851c` | ⚠️ Unaudited |
| MultiRewardDistributor | unknown | optimism | n/a | 2 deployments: optimism [`0xf9524b...7574aa`](./contracts/optimism-10/0xf9524bfa18c19c3e605fbfe8dfd05c6e967574aa/); optimism `0xff0731...cde121` | ⚠️ Unaudited |
| MultiRewards | unknown | optimism | n/a | [`0x2eed2b...223d2b`](./contracts/optimism-10/0x2eed2b7d44e2cf64a41b6b3f78be2fdc56223d2b/) | ⚠️ Unaudited |
| MWethDelegate | unknown | base | n/a | 3 deployments: ethereum `0x9b1eea...1021fe`; optimism `0x66fb79...23227b`; base [`0x599d4a...d7c41a`](./contracts/base-8453/0x599d4a1538d686814ee11b331eacbba166d7c41a/) | ⚠️ Unaudited |
| MWethOwnerWrapper | unknown | base | n/a | 2 deployments: base [`0x179672...57c08e`](./contracts/base-8453/0x1796720c9441f8f18a3aa570ab7c10597a57c08e/); base `0x82e5e0...8f6250` | ⚠️ Unaudited |
| OEVProtocolFeeRedeemer | unknown | ethereum | n/a | [`0xb41ab9...1007f5`](./contracts/ethereum-1/0xb41ab921702e70f31df6309b77d213d96c1007f5/) | ⚠️ Unaudited |
| ProposalView | unknown | moonbeam | n/a | [`0xded4de...2d5c30`](./contracts/moonbeam-1284/0xded4ded0badacf87714c90405f8983efdf2d5c30/) | ⚠️ Unaudited |
| ProxyAdmin | governance | moonbeam | n/a | 21 deployments: ethereum `0xb8a798...2d40e5`; ethereum `0xd5294c...991a7c`; ethereum `0xf6e7c2...9aca7f`; optimism `0x8568a6...3cfab1`; moonbeam [`0x0c2b0f...b57b33`](./contracts/moonbeam-1284/0x0c2b0f1fcbcf3a27f19cd4afe564fe63f3b57b33/); moonbeam `0x2700d9...ea9ff6`; moonbeam `0x5b50c3...ac0955`; moonbeam `0x8649a5...d1a4a8`; moonbeam `0xa017a0...a497dd`; moonbeam `0xab9aad...386d4e`; moonbeam `0xb0ee65...1d9f5b`; moonriver `0x6658ed...2821a0`; moonriver `0x6e6ca5...f06fdb`; moonriver `0xce7602...a9ceb5`; base `0x243cd4...93247a`; base `0x3fca08...074dec`; base `0x7465c2...1d1486`; base `0x9837b1...9e0bc3`; base `0xc7867f...8adb2c`; base `0xf4cf0f...90099f`; base `0xff0731...cde121` | ⚠️ Unaudited |
| RateLimitCommonLibrary | unknown | base | n/a | [`0xbec9ea...627057`](./contracts/base-8453/0xbec9ead15808c273d6ff4ba13e66de110a627057/) | ⚠️ Unaudited |
| RateLimitMidpointCommonLibrary | unknown | moonbeam | n/a | 6 deployments: moonbeam [`0x56ed99...103c4d`](./contracts/moonbeam-1284/0x56ed993b9883e39741c524a6eabe5f4625103c4d/); moonbeam `0xbae1c9...113e22`; moonbeam `0xc6cda5...8822da`; base [`0x56ed99...103c4d`](./contracts/base-8453/0x56ed993b9883e39741c524a6eabe5f4625103c4d/); base `0xbae1c9...113e22`; base `0xc6cda5...8822da` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x5b7100...ea4026`](./contracts/ethereum-1/0x5b710010586c1b728b047c3e42473c700eea4026/) | ⚠️ Unaudited |
| StakedMfam | adapter | moonriver | n/a | 2 deployments: moonriver [`0x740d4c...da8bde`](./contracts/moonriver-1285/0x740d4c227129e55aa00169433024b77339da8bde/); moonriver `0xb0ee65...1d9f5b` | ⚠️ Unaudited |
| StakedMfam | adapter | moonriver | n/a | [`0xcd76e6...9fda3a`](./contracts/moonriver-1285/0xcd76e63f3abfa864c53b4b98f57c1aa6539fda3a/) | ⚠️ Unaudited |
| StakedWell | unknown | ethereum | n/a | 2 deployments: ethereum [`0x701551...b0f5af`](./contracts/ethereum-1/0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af/); ethereum `0xb3a9e0...dd4357` | ⚠️ Unaudited |
| StakedWell | unknown | ethereum | n/a | 2 deployments: ethereum [`0xeb56c5...66012a`](./contracts/ethereum-1/0xeb56c57cec4d56072942caf90a8f694ed766012a/); ethereum `0xf03499...1dae7e` | ⚠️ Unaudited |
| StakedWell | unknown | optimism | n/a | 2 deployments: optimism [`0x78feb7...266568`](./contracts/optimism-10/0x78feb72aea00b912ac45438e0764a02213266568/); optimism `0xfb26a4...7438c5` | ⚠️ Unaudited |
| StakedWell | token | moonbeam | n/a | 3 deployments: moonbeam [`0x3a21d8...ff106a`](./contracts/moonbeam-1284/0x3a21d8b01c5fa6c61d88677fbb38fe05f0ff106a/); moonbeam `0xbec923...56f72e`; moonbeam `0xd7689c...c29d77` | ⚠️ Unaudited |
| StakedWell | unknown | base | n/a | 2 deployments: base [`0xe2747a...454b29`](./contracts/base-8453/0xe2747a3f7dd8585eb04c7632a9561d9616454b29/); base `0xe66e3a...94dc17` | ⚠️ Unaudited |
| STIXToken | unknown | base | n/a | [`0xfd1013...5d0d5e`](./contracts/base-8453/0xfd1013c72cbb0ffb920d347c5836bf88965d0d5e/) | ⚠️ Unaudited |
| TemporalGovernor | governance | moonbeam | n/a | 3 deployments: moonbeam [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/); moonbeam `0x908df7...ea4689`; base `0x8b6218...df7d51` | ⚠️ Unaudited |
| TokenImplementation | token | base | n/a | [`0xff8ade...03493d`](./contracts/base-8453/0xff8adec2221f9f4d8dfbafa6b9a297d17603493d/) | ⚠️ Unaudited |
| TokenSaleDistributor | unknown | moonriver | n/a | 2 deployments: moonriver [`0x17c9ba...7aff3d`](./contracts/moonriver-1285/0x17c9ba3fda7ec71ccfd75f978ef31e21927aff3d/); moonriver `0xac7b31...aa2e91` | ⚠️ Unaudited |
| TokenSaleDistributor | unknown | moonriver | n/a | 2 deployments: moonriver [`0x293635...62b9cf`](./contracts/moonriver-1285/0x2936354078e2c4bbb68f29b912a56dc45962b9cf/); moonriver `0x8568a6...3cfab1` | ⚠️ Unaudited |
| TokenSaleDistributor | operational_periphery | moonriver | n/a | 3 deployments: moonbeam `0xc7a3ba...605977`; moonbeam `0xefeade...3a7247`; moonriver [`0xbec923...56f72e`](./contracts/moonriver-1285/0xbec923f9038f245f90f0bc8ad57ac80ec556f72e/) | ⚠️ Unaudited |
| TokenSaleDistributorProxy | operational_periphery | moonriver | n/a | 3 deployments: moonbeam `0x472292...db627c`; moonbeam `0xe7e1ff...60af58`; moonriver [`0x29ea8b...ae5b71`](./contracts/moonriver-1285/0x29ea8b56341ee95c819f4438bc048c6239ae5b71/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | moonriver | n/a | [`0x50837b...cead56`](./contracts/moonriver-1285/0x50837bff055a2bf724ec9f74612657a436cead56/) | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e336f...7fb563`](./contracts/ethereum-1/0x1e336faa789426ee30dccf975f582ac8bd7fb563/); ethereum `0x908df7...ea4689` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | optimism | n/a | 2 deployments: optimism [`0xbac3dd...771501`](./contracts/optimism-10/0xbac3dd6d0333ea14f957b7b0796bcd59e8771501/); optimism `0xf2af8f...75c2a1` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | base | n/a | 2 deployments: base [`0x701551...b0f5af`](./contracts/base-8453/0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af/); base `0xb3a9e0...dd4357` | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHRouter | adapter | base | n/a | 4 deployments: ethereum `0xa218a4...93ca22`; optimism `0xc4ab8c...0e11dc`; base [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/); base `0x70778c...75d0c9` | ⚠️ Unaudited |
| WethUnwrapper | token | base | n/a | 6 deployments: ethereum `0x4605da...1da2f6`; optimism `0xa962f2...2aef16`; base [`0x1382cf...9e4caf`](./contracts/base-8453/0x1382cff3cee10d283dcca55a30496187759e4caf/); base `0x7414df...e381b7`; base `0x876fa6...99d6ca`; base `0xcd57f6...0441ac` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | ethereum | n/a | [`0x734abb...a6dbb7`](./contracts/ethereum-1/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | optimism | n/a | [`0x734abb...a6dbb7`](./contracts/optimism-10/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | moonbeam | n/a | 2 deployments: moonbeam [`0x48e70f...8c6412`](./contracts/moonbeam-1284/0x48e70f68712bd275982e8351dfe1993a828c6412/); moonbeam `0xef68c8...20ce6b` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | base | n/a | [`0x734abb...a6dbb7`](./contracts/base-8453/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | base | n/a | [`0x8318f3...b37e84`](./contracts/base-8453/0x8318f3c525fdac18993b9fe5dd823c4743b37e84/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | base | n/a | [`0xf9ebc3...670872`](./contracts/base-8453/0xf9ebc3b140d802240ae2ebf1a3d388e5cd670872/) | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | adapter | moonbeam | n/a | [`0x24af32...299c58`](./contracts/moonbeam-1284/0x24af32b0c4c94f0d406fbc3c8815666356299c58/) | ⚠️ Unaudited |
| XERC20Lockbox | token | moonbeam | n/a | 3 deployments: moonbeam [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/); moonbeam `0xd12a18...5128da`; moonbeam `0xd95c2d...fce7df` | ⚠️ Unaudited |
| xWELL | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b1bdd...700a7f`](./contracts/ethereum-1/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/); moonbeam [`0x3b1bdd...700a7f`](./contracts/moonbeam-1284/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/); base [`0x3b1bdd...700a7f`](./contracts/base-8453/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/) | ⚠️ Unaudited |
| xWELL | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa88594...2296ae`](./contracts/ethereum-1/0xa88594d404727625a9437c3f886c7643872296ae/); ethereum `0xb84543...666df4` | ⚠️ Unaudited |
| xWELL | unknown | optimism | n/a | 2 deployments: optimism [`0x3b1bdd...700a7f`](./contracts/optimism-10/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/); optimism `0xa88594...2296ae` | ⚠️ Unaudited |
| xWELL | unknown | base | n/a | 2 deployments: base [`0x2585d8...9a14e3`](./contracts/base-8453/0x2585d82da7a7f8a85b10e6964814a74d999a14e3/); base `0x87e097...e5dd69` | ⚠️ Unaudited |
| xWELL | unknown | base | n/a | 2 deployments: base [`0x54720d...8e5873`](./contracts/base-8453/0x54720dbdb9bc6bcce6796b3c57d4527e848e5873/); base `0xe5fa98...08d0c8` | ⚠️ Unaudited |
| xWELL | unknown | base | n/a | 2 deployments: base [`0xa88594...2296ae`](./contracts/base-8453/0xa88594d404727625a9437c3f886c7643872296ae/); base `0xbe08a9...9e124a` | ⚠️ Unaudited |
| xWELLBridgeFeePayer | operational_periphery | ethereum | n/a | [`0x342ef3...a39827`](./contracts/ethereum-1/0x342ef39c57d193258358f0095f55637c5ea39827/) | ⚠️ Unaudited |
| xWELLRouter | adapter | moonbeam | n/a | 4 deployments: moonbeam [`0x0c87f9...ac33fa`](./contracts/moonbeam-1284/0x0c87f9f6c052060b28dea1e4acfd24a407ac33fa/); moonbeam `0x78c504...2db169`; moonbeam `0xb84543...666df4`; moonbeam `0xfb26a4...7438c5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x701551...b0f5af` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x826d8e...590c29` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2f5d37...85bc38` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x504bd1...f3fdc1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x511ab5...2411e3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9837b1...9e0bc3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdada7d...ae76d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03ca79...982aa1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11d223...44c197` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x134263...c4622b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c9684...037738` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x576276...5cfc4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78c29a...02f706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92cf58...416dfb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc104a4...2c5896` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 7 | n/a |
| [Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x6bfd81...3920c4`](./contracts/base-8453/0x6bfd8137e702540e7a42b74178a4a49ba43920c4/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x593355...2fd66c`](./contracts/base-8453/0x593355faef3075af1b20ca22fedabf6f3d2fd66c/) | ChainlinkOEVMorphoWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6698e6...08f58b`](./contracts/ethereum-1/0x6698e617ff739ebd03ba11bb69fd2579ef08f58b/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8dfbb2...a30ce2`](./contracts/optimism-10/0x8dfbb21dbd61af533092d54b293660cf77a30ce2/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0b7a0e...a4905e`](./contracts/moonriver-1285/0x0b7a0eaa884849c6af7a129e899536dddca4905e/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xf2a970...1b1620`](./contracts/moonbeam-1284/0xf2a9706b18534cc777a4c31d84a3c346fb1b1620/) | ComptrollerRewardViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7fbfcb...570b0e`](./contracts/base-8453/0x7fbfcb63eab03e04c5455c770a0502ef73570b0e/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e3ca3...112ac6`](./contracts/base-8453/0x9e3ca32b18316f022fdfae503eda7e788e112ac6/) | CypherAutoLoad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x437113...0d04d5`](./contracts/ethereum-1/0x437113e54e5e6dfbe9741d699b312eea110d04d5/) | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0cada1...ba2a10`](./contracts/optimism-10/0x0cada1745973f63ab2aad29f67d1f1183bba2a10/) | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3343b3...372af1`](./contracts/base-8453/0x3343b3efebb99b543da30d272d6363d672372af1/) | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7e1d5f...c3cf4c`](./contracts/base-8453/0x7e1d5f2fe42858708c7d007cc589b995f1c3cf4c/) | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbad37d...472e6c`](./contracts/base-8453/0xbad37dcaf815a96670416be2bfaf9a9474472e6c/) | EcosystemReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x300fc6...fc9ad9`](./contracts/moonriver-1285/0x300fc6cb2f5bd222521710855cfb747487fc9ad9/) | EcosystemReserveController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x7793e0...167ba4`](./contracts/moonriver-1285/0x7793e08eb4525309c46c9ba394ce33361a167ba4/) | EcosystemReserveMoonriver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xba1758...88908b`](./contracts/moonriver-1285/0xba17581bb6d89954b42fb84294e476e97588908b/) | EcosystemReserveMoonriver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc095cb...758d71`](./contracts/base-8453/0xc095cb1a6b41a5cd7daaf993a904afdd74758d71/) | ERC4626EthRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf08cef...312072`](./contracts/base-8453/0xf08cef2ee2e5be584a581209637b02637f312072/) | ERC4626RateLimitedAllowance | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe770bd...4c938a`](./contracts/base-8453/0xe770bd40b6976efbbb095174395dd2cb794c938a/) | Factory4626 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6250e2...ec811e`](./contracts/base-8453/0x6250e204ba6f722c7d498f659f8d3c5550ec811e/) | Factory4626Eth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a8ae4...4c3cdb`](./contracts/base-8453/0x1a8ae46098ff418e2054243491544ed8564c3cdb/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb98c94...ae746a`](./contracts/base-8453/0xb98c948cfa24072e58935bc004a8a7b376ae746a/) | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0b5f12...c6acf5`](./contracts/moonbeam-1284/0x0b5f126fa3116dbb769f6b8404d1a78c54c6acf5/) | JumpRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x405e3c...41bb3a`](./contracts/moonbeam-1284/0x405e3c3b71789af23e3ebac44f0a2af01941bb3a/) | Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1650c0...a80ccc`](./contracts/moonriver-1285/0x1650c0ad9483158f9e240fd58d0e173807a80ccc/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x45d17f...6cf75d`](./contracts/moonriver-1285/0x45d17fe87e65064b2e85f91a9ff3ad0c7b6cf75d/) | MErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x47dffe...347914`](./contracts/moonbeam-1284/0x47dffebef33719315bd5a91db6bfb81691347914/) | MErc20DelegateFixer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xf19b9e...98b4fc`](./contracts/moonbeam-1284/0xf19b9e20c24c8304b89373dec84b7c017e98b4fc/) | MErc20DelegateMadFixer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xbb8d88...1a58f1`](./contracts/moonriver-1285/0xbb8d88bcd9749636bc4d2be22aac4bb3b01a58f1/) | Mfam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x2be2e2...6e7370`](./contracts/moonriver-1285/0x2be2e230e89c59c8e20e633c524ad2de246e7370/) | MoonwellGovernorApollo | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xfc4dfb...57666d`](./contracts/moonbeam-1284/0xfc4dfb17101a12c5cec5eedd8e92b5b16557666d/) | MoonwellGovernorArtemis | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb4413...0a0e15`](./contracts/ethereum-1/0xcb44138f3e2e25b72338372488d2a74a580a0e15/) | MoonwellStakingViews | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xf0a4a9...668d1a`](./contracts/moonbeam-1284/0xf0a4a985254f5d419e70e52f634b75d36e668d1a/) | MoonwellViewsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x2a55ba...5a280f`](./contracts/moonriver-1285/0x2a55ba986a8c6ee17979f6233985414a865a280f/) | MoonwellViewsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | MoonwellViewsV1Moonbeam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x29ea8b...ae5b71`](./contracts/base-8453/0x29ea8b56341ee95c819f4438bc048c6239ae5b71/) | MoonwellViewsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x511ab5...2411e3`](./contracts/base-8453/0x511ab53f793683763e5a8829738301368a2411e3/) | MoonwellViewsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d85b9...f7786e`](./contracts/ethereum-1/0x2d85b9c48a8c582f0aa244e134e9c6f30cf7786e/) | MoonwellViewsV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54ff1a...43310f`](./contracts/ethereum-1/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf9524b...7574aa`](./contracts/optimism-10/0xf9524bfa18c19c3e605fbfe8dfd05c6e967574aa/) | MultiRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2eed2b...223d2b`](./contracts/optimism-10/0x2eed2b7d44e2cf64a41b6b3f78be2fdc56223d2b/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x599d4a...d7c41a`](./contracts/base-8453/0x599d4a1538d686814ee11b331eacbba166d7c41a/) | MWethDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x179672...57c08e`](./contracts/base-8453/0x1796720c9441f8f18a3aa570ab7c10597a57c08e/) | MWethOwnerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb41ab9...1007f5`](./contracts/ethereum-1/0xb41ab921702e70f31df6309b77d213d96c1007f5/) | OEVProtocolFeeRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xded4de...2d5c30`](./contracts/moonbeam-1284/0xded4ded0badacf87714c90405f8983efdf2d5c30/) | ProposalView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbec9ea...627057`](./contracts/base-8453/0xbec9ead15808c273d6ff4ba13e66de110a627057/) | RateLimitCommonLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x56ed99...103c4d`](./contracts/moonbeam-1284/0x56ed993b9883e39741c524a6eabe5f4625103c4d/) | RateLimitMidpointCommonLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x740d4c...da8bde`](./contracts/moonriver-1285/0x740d4c227129e55aa00169433024b77339da8bde/) | StakedMfam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xcd76e6...9fda3a`](./contracts/moonriver-1285/0xcd76e63f3abfa864c53b4b98f57c1aa6539fda3a/) | StakedMfam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x701551...b0f5af`](./contracts/ethereum-1/0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af/) | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb56c5...66012a`](./contracts/ethereum-1/0xeb56c57cec4d56072942caf90a8f694ed766012a/) | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x78feb7...266568`](./contracts/optimism-10/0x78feb72aea00b912ac45438e0764a02213266568/) | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3a21d8...ff106a`](./contracts/moonbeam-1284/0x3a21d8b01c5fa6c61d88677fbb38fe05f0ff106a/) | StakedWell | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe2747a...454b29`](./contracts/base-8453/0xe2747a3f7dd8585eb04c7632a9561d9616454b29/) | StakedWell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfd1013...5d0d5e`](./contracts/base-8453/0xfd1013c72cbb0ffb920d347c5836bf88965d0d5e/) | STIXToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/) | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xff8ade...03493d`](./contracts/base-8453/0xff8adec2221f9f4d8dfbafa6b9a297d17603493d/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x17c9ba...7aff3d`](./contracts/moonriver-1285/0x17c9ba3fda7ec71ccfd75f978ef31e21927aff3d/) | TokenSaleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x293635...62b9cf`](./contracts/moonriver-1285/0x2936354078e2c4bbb68f29b912a56dc45962b9cf/) | TokenSaleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xbec923...56f72e`](./contracts/moonriver-1285/0xbec923f9038f245f90f0bc8ad57ac80ec556f72e/) | TokenSaleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x29ea8b...ae5b71`](./contracts/moonriver-1285/0x29ea8b56341ee95c819f4438bc048c6239ae5b71/) | TokenSaleDistributorProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e336f...7fb563`](./contracts/ethereum-1/0x1e336faa789426ee30dccf975f582ac8bd7fb563/) | VotingPowerAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbac3dd...771501`](./contracts/optimism-10/0xbac3dd6d0333ea14f957b7b0796bcd59e8771501/) | VotingPowerAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x701551...b0f5af`](./contracts/base-8453/0x701551a3cd30a29ccc012e8f160fb2cac9b0f5af/) | VotingPowerAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/) | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1382cf...9e4caf`](./contracts/base-8453/0x1382cff3cee10d283dcca55a30496187759e4caf/) | WethUnwrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x734abb...a6dbb7`](./contracts/ethereum-1/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x734abb...a6dbb7`](./contracts/optimism-10/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x48e70f...8c6412`](./contracts/moonbeam-1284/0x48e70f68712bd275982e8351dfe1993a828c6412/) | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x734abb...a6dbb7`](./contracts/base-8453/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8318f3...b37e84`](./contracts/base-8453/0x8318f3c525fdac18993b9fe5dd823c4743b37e84/) | WormholeBridgeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf9ebc3...670872`](./contracts/base-8453/0xf9ebc3b140d802240ae2ebf1a3d388e5cd670872/) | WormholeBridgeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x24af32...299c58`](./contracts/moonbeam-1284/0x24af32b0c4c94f0d406fbc3c8815666356299c58/) | WormholeUnwrapperAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b1bdd...700a7f`](./contracts/ethereum-1/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa88594...2296ae`](./contracts/ethereum-1/0xa88594d404727625a9437c3f886c7643872296ae/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3b1bdd...700a7f`](./contracts/optimism-10/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2585d8...9a14e3`](./contracts/base-8453/0x2585d82da7a7f8a85b10e6964814a74d999a14e3/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x54720d...8e5873`](./contracts/base-8453/0x54720dbdb9bc6bcce6796b3c57d4527e848e5873/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa88594...2296ae`](./contracts/base-8453/0xa88594d404727625a9437c3f886c7643872296ae/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x342ef3...a39827`](./contracts/ethereum-1/0x342ef39c57d193258358f0095f55637c5ea39827/) | xWELLBridgeFeePayer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0c87f9...ac33fa`](./contracts/moonbeam-1284/0x0c87f9f6c052060b28dea1e4acfd24a407ac33fa/) | xWELLRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 90 |
| upstream | 15 |
| standard_library | 4 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Fork inheritance lineage and inherited audits are included when available.
