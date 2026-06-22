# Agentic Audit Brief: Moonwell Apollo

⚠️ Lifecycle status: DECLINING - TVL changed 0.1% over 90 days

## Project Overview

- Project: Moonwell Apollo (`moonwell-apollo`)
- Website: [https://moonwell.fi](https://moonwell.fi)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T16:06:41.144Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base, ethereum, moonbeam, moonriver, optimism
- Contract surface: 60 unique implementations (105 raw deployments)
- DeFi Llama TVL: $844,247.21
- On-chain TVL (included contracts): $119,283,634.53
- TVL by chain: Ethereum $118,253,405.04 | Base $981,701.17 | Optimism $48,528.32

## Project Description

Moonwell Apollo is a decentralized lending and borrowing protocol that allows users to supply assets to earn interest and borrow against their collateral. It operates across multiple chains, including Ethereum, Optimism, Moonbeam, Moonriver, and Base, using a Compound-based architecture with additional features like staking, governance, and cross-chain voting.

### Architecture

The lending markets on each chain share a common architecture with Comptroller managing risk and MErc20 tokens representing positions, while ChainlinkOracle provides price feeds. Staking and rewards are distributed via MultiRewardDistributor, which interacts with StakedWell tokens and EcosystemReserve for reward sourcing. Governance contracts control all major protocol parameters and upgrades, with cross-chain voting enabled by MultichainGovernor and WormholeBridgeAdapter for bridging WELL tokens and votes.

## Contract Surface Quality

- Indexed contracts: 492; live-surface contracts included: 105 (105 live, 0 unknown).
- Excluded by liveness: 199 inactive, 188 singleton, 0 uninitialized.
- Deployment units: 15/97 live.
- Detected codebases: compound-v2
- Unverified dependencies: 3/53.

## Audit Coverage Summary

- Verified implementations audited: 4/53 (7.5%)
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 60
- Raw deployments: 105
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $192,011.94
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $192,011.94 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 4 | 7.5% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MErc20Delegator | token | ethereum | n/a | 6 deployments: ethereum [`0x636080...aaee9f`](./contracts/ethereum-1/0x636080eb65f1b665b646f47d31f21901cdaaee9f/); ethereum `0xb85ca1...9590c4`; ethereum `0xe65579...63e62e`; ethereum `0xeddc25...467011`; optimism `0xed37cd...8f8b33`; base `0xd64bcb...7a9682` | ✅ Audited |
| ChainlinkOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x599a01...94b654`](./contracts/ethereum-1/0x599a01297fc181558bdfa1737cafee513694b654/); base `0xec942b...a6a9d0` | ✅ Audited |
| MGlimmer | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x091608...4c7955`](./contracts/moonbeam-1284/0x091608f4e4a15335145be0a279483c0f8e4c7955/); moonriver `0x6a1a77...1cd07f` | ✅ Audited |
| Well | unknown | moonbeam | n/a | [`0x511ab5...2411e3`](./contracts/moonbeam-1284/0x511ab53f793683763e5a8829738301368a2411e3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| STIXToken | token | base | n/a | [`0xfd1013...5d0d5e`](./contracts/base-8453/0xfd1013c72cbb0ffb920d347c5836bf88965d0d5e/) | ⚠️ Unaudited |
| WethUnwrapper | token | base | n/a | 2 deployments: ethereum `0x4605da...1da2f6`; base [`0x1382cf...9e4caf`](./contracts/base-8453/0x1382cff3cee10d283dcca55a30496187759e4caf/) | ⚠️ Unaudited |
| Bundler3 | unknown | base | n/a | 2 deployments: optimism `0xfbcd3c...507c05`; base [`0x6bfd81...3920c4`](./contracts/base-8453/0x6bfd8137e702540e7a42b74178a4a49ba43920c4/) | ⚠️ Unaudited |
| ChainlinkOEVMorphoWrapper | unknown | base | unit-43062 (3 proxies) | 3 deployments: base [`0x593355...2fd66c`](./contracts/base-8453/0x593355faef3075af1b20ca22fedabf6f3d2fd66c/); base `0xaeee63...61f5f5`; base `0xf4dcca...3dadb9` | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | base | unit-43066 | [`0x696daf...19e14d`](./contracts/base-8453/0x696daf18ba0cf503fac9ef137ed3ef5aa719e14d/) | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | base | unit-43075 | [`0x98b14f...8017de`](./contracts/base-8453/0x98b14fc2cc69186d8cffa342087d9e84228017de/) | ⚠️ Unaudited |
| ChainlinkOracleProxy | operational_periphery | base | unit-43087 | [`0xe69de7...978e7b`](./contracts/base-8453/0xe69de7abfcf2a252874d66bc7aef6490b1978e7b/) | ⚠️ Unaudited |
| CypherAutoLoad | unknown | base | n/a | [`0x9e3ca3...112ac6`](./contracts/base-8453/0x9e3ca32b18316f022fdfae503eda7e788e112ac6/) | ⚠️ Unaudited |
| EcosystemReserveController | governance | ethereum | n/a | [`0x98e708...d0157f`](./contracts/ethereum-1/0x98e708bbce1f158c1bde25f206afa7562fd0157f/) | ⚠️ Unaudited |
| ERC4626RateLimitedAllowance | operational_periphery | base | n/a | [`0xf08cef...312072`](./contracts/base-8453/0xf08cef2ee2e5be584a581209637b02637f312072/) | ⚠️ Unaudited |
| Factory4626 | registry | base | n/a | [`0xe770bd...4c938a`](./contracts/base-8453/0xe770bd40b6976efbbb095174395dd2cb794c938a/) | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | base | n/a | [`0x1a8ae4...4c3cdb`](./contracts/base-8453/0x1a8ae46098ff418e2054243491544ed8564c3cdb/) | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | base | n/a | [`0xb98c94...ae746a`](./contracts/base-8453/0xb98c948cfa24072e58935bc004a8a7b376ae746a/) | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | base | n/a | 6 deployments: ethereum `0x6e13ed...76b2ed`; ethereum `0x9a714b...a39c58`; ethereum `0xb9ca0d...c1b945`; ethereum `0xe86b7b...dfc366`; base [`0x6d8cb0...474c0c`](./contracts/base-8453/0x6d8cb0c4c5caa9876939cb6e5eed8ca84d474c0c/); base `0xcf1a33...dc87a1` | ⚠️ Unaudited |
| Maximillion | unknown | moonriver | n/a | 2 deployments: moonbeam `0xe5ef93...a380c3`; moonriver [`0x1650c0...a80ccc`](./contracts/moonriver-1285/0x1650c0ad9483158f9e240fd58d0e173807a80ccc/) | ⚠️ Unaudited |
| MErc20Delegate | token | ethereum | n/a | [`0xe1eeaf...ce7d8a`](./contracts/ethereum-1/0xe1eeafbd3495b6da0a8f0afd5328b2f0f3ce7d8a/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | 4 deployments: base [`0x543257...f5a796`](./contracts/base-8453/0x543257ef2161176d7c8cd90ba65c2d4caef5a796/); base `0xa0e430...3d0ff1`; base `0xc1256a...00a2ca`; base `0xf24608...01a026` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | optimism | n/a | [`0x3520e1...29642d`](./contracts/optimism-10/0x3520e1a10038131a3c00bf2158835a75e929642d/) | ⚠️ Unaudited |
| Mfam | adapter | moonriver | n/a | [`0xbb8d88...1a58f1`](./contracts/moonriver-1285/0xbb8d88bcd9749636bc4d2be22aac4bb3b01a58f1/) | ⚠️ Unaudited |
| MoonwellGovernorApollo | governance | moonriver | n/a | [`0x2be2e2...6e7370`](./contracts/moonriver-1285/0x2be2e230e89c59c8e20e633c524ad2de246e7370/) | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonbeam | n/a | [`0xf5f2ae...ce5401`](./contracts/moonbeam-1284/0xf5f2ae75d762b7e2b42d53f48018436f52ce5401/) | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | adapter | moonbeam | n/a | [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | ⚠️ Unaudited |
| Morpho | unknown | base | n/a | [`0xbbbbbb...eeffcb`](./contracts/base-8453/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoVaultV2Views | core_logic | base | unit-43074 | [`0x8d1899...99cce0`](./contracts/base-8453/0x8d189997ccd6ab6909ef89836e5bcef94599cce0/) | ⚠️ Unaudited |
| MorphoViewsV2 | unknown | base | unit-43069 | [`0x7fc0db...d1ed31`](./contracts/base-8453/0x7fc0dbc713649b96e984b2a5935016d3a5d1ed31/) | ⚠️ Unaudited |
| MultichainGovernor | governance | moonbeam | n/a | 2 deployments: moonbeam [`0x0ea816...4209ab`](./contracts/moonbeam-1284/0x0ea81678e4deb33aad9e214df76be3158b4209ab/); moonbeam `0x65299e...a707ab` | ⚠️ Unaudited |
| MultichainGovernorV2 | governance | ethereum | unit-43000 | [`0x8769b7...d75838`](./contracts/ethereum-1/0x8769b70ac7c93af0e75de0d69877709b66d75838/) | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | optimism | unit-43009 | [`0x3c9684...037738`](./contracts/optimism-10/0x3c968481be3ba1a99fed5f73db2ff51151037738/) | ⚠️ Unaudited |
| MultichainVoteCollectionV2 | unknown | base | unit-43084 | [`0xe0278b...03e949`](./contracts/base-8453/0xe0278b32c627ff6ffbbe7de6a18ade145603e949/) | ⚠️ Unaudited |
| MultiRewards | unknown | optimism | n/a | [`0x2eed2b...223d2b`](./contracts/optimism-10/0x2eed2b7d44e2cf64a41b6b3f78be2fdc56223d2b/) | ⚠️ Unaudited |
| MWethDelegate | token | ethereum | n/a | [`0x9b1eea...1021fe`](./contracts/ethereum-1/0x9b1eeac01ded2155d93a23e9dd5e99954f1021fe/) | ⚠️ Unaudited |
| OEVProtocolFeeRedeemer | unknown | optimism | n/a | 9 deployments: ethereum `0xb41ab9...1007f5`; optimism [`0x2ad2f2...830845`](./contracts/optimism-10/0x2ad2f20ff29c11fd4bf20031e04476026c830845/); optimism `0xad3315...ff170b`; optimism `0xcb9557...d3463e`; optimism `0xee3f2c...948cf9`; base `0x75eba7...393c39`; base `0xab05f7...bfecf3`; base `0xb25b49...ff331d`; base `0xcd6e19...9cd6dd` | ⚠️ Unaudited |
| ProposalView | unknown | moonbeam | n/a | [`0xded4de...2d5c30`](./contracts/moonbeam-1284/0xded4ded0badacf87714c90405f8983efdf2d5c30/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 10 deployments: ethereum `0xb8a798...2d40e5`; ethereum `0xd5294c...991a7c`; ethereum `0xf6e7c2...9aca7f`; moonbeam `0xab9aad...386d4e`; base [`0x243cd4...93247a`](./contracts/base-8453/0x243cd4e4e139b9d999d5bcbbb0f16432a393247a/); base `0x3fca08...074dec`; base `0x7465c2...1d1486`; base `0xc7867f...8adb2c`; base `0xf4cf0f...90099f`; base `0xff0731...cde121` | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-42997 | [`0x5b7100...ea4026`](./contracts/ethereum-1/0x5b710010586c1b728b047c3e42473c700eea4026/) | ⚠️ Unaudited |
| StakedMfam | adapter | moonriver | unit-43059 | [`0xcd76e6...9fda3a`](./contracts/moonriver-1285/0xcd76e63f3abfa864c53b4b98f57c1aa6539fda3a/) | ⚠️ Unaudited |
| TemporalGovernor | governance | moonbeam | n/a | 3 deployments: moonbeam [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/); moonbeam `0x908df7...ea4689`; base `0x8b6218...df7d51` | ⚠️ Unaudited |
| TokenImplementation | token | base | unit-43092 | [`0xff8ade...03493d`](./contracts/base-8453/0xff8adec2221f9f4d8dfbafa6b9a297d17603493d/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHRouter | adapter | base | n/a | 4 deployments: ethereum `0xa218a4...93ca22`; optimism `0xc4ab8c...0e11dc`; base [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/); base `0x70778c...75d0c9` | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | ethereum | unit-42999 | [`0x734abb...a6dbb7`](./contracts/ethereum-1/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | optimism | unit-43012 | [`0x734abb...a6dbb7`](./contracts/optimism-10/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | moonbeam | n/a | [`0x48e70f...8c6412`](./contracts/moonbeam-1284/0x48e70f68712bd275982e8351dfe1993a828c6412/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | base | unit-43067 | [`0x734abb...a6dbb7`](./contracts/base-8453/0x734abbce07679c9a6b4fe3bc16325e028fa6dbb7/) | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | adapter | moonbeam | n/a | [`0x24af32...299c58`](./contracts/moonbeam-1284/0x24af32b0c4c94f0d406fbc3c8815666356299c58/) | ⚠️ Unaudited |
| XERC20Lockbox | token | moonbeam | n/a | [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/) | ⚠️ Unaudited |
| xWELL | unknown | ethereum | n/a | [`0x3b1bdd...700a7f`](./contracts/ethereum-1/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/) | ⚠️ Unaudited |
| xWELLBridgeFeePayer | operational_periphery | ethereum | n/a | [`0x342ef3...a39827`](./contracts/ethereum-1/0x342ef39c57d193258358f0095f55637c5ea39827/) | ⚠️ Unaudited |
| xWELLRouter | adapter | moonbeam | n/a | 3 deployments: moonbeam [`0x78c504...2db169`](./contracts/moonbeam-1284/0x78c504b6c0ea2adbf6a58b208c9888f3692db169/); moonbeam `0xb84543...666df4`; moonbeam `0xfb26a4...7438c5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x701551...b0f5af` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x826d8e...590c29` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11d223...44c197` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c9684...037738` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x576276...5cfc4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78c29a...02f706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92cf58...416dfb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 11 | high |
| [Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xfd1013...5d0d5e`](./contracts/base-8453/0xfd1013c72cbb0ffb920d347c5836bf88965d0d5e/) | STIXToken | token | $192,011.94 | Verified native implementation with $192,011.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1382cf...9e4caf`](./contracts/base-8453/0x1382cff3cee10d283dcca55a30496187759e4caf/) | WethUnwrapper | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6bfd81...3920c4`](./contracts/base-8453/0x6bfd8137e702540e7a42b74178a4a49ba43920c4/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e3ca3...112ac6`](./contracts/base-8453/0x9e3ca32b18316f022fdfae503eda7e788e112ac6/) | CypherAutoLoad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e708...d0157f`](./contracts/ethereum-1/0x98e708bbce1f158c1bde25f206afa7562fd0157f/) | EcosystemReserveController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf08cef...312072`](./contracts/base-8453/0xf08cef2ee2e5be584a581209637b02637f312072/) | ERC4626RateLimitedAllowance | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe770bd...4c938a`](./contracts/base-8453/0xe770bd40b6976efbbb095174395dd2cb794c938a/) | Factory4626 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a8ae4...4c3cdb`](./contracts/base-8453/0x1a8ae46098ff418e2054243491544ed8564c3cdb/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb98c94...ae746a`](./contracts/base-8453/0xb98c948cfa24072e58935bc004a8a7b376ae746a/) | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6d8cb0...474c0c`](./contracts/base-8453/0x6d8cb0c4c5caa9876939cb6e5eed8ca84d474c0c/) | JumpRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1650c0...a80ccc`](./contracts/moonriver-1285/0x1650c0ad9483158f9e240fd58d0e173807a80ccc/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1eeaf...ce7d8a`](./contracts/ethereum-1/0xe1eeafbd3495b6da0a8f0afd5328b2f0f3ce7d8a/) | MErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x543257...f5a796`](./contracts/base-8453/0x543257ef2161176d7c8cd90ba65c2d4caef5a796/) | MetaMorpho | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3520e1...29642d`](./contracts/optimism-10/0x3520e1a10038131a3c00bf2158835a75e929642d/) | MetaMorphoV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xbb8d88...1a58f1`](./contracts/moonriver-1285/0xbb8d88bcd9749636bc4d2be22aac4bb3b01a58f1/) | Mfam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x2be2e2...6e7370`](./contracts/moonriver-1285/0x2be2e230e89c59c8e20e633c524ad2de246e7370/) | MoonwellGovernorApollo | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xf5f2ae...ce5401`](./contracts/moonbeam-1284/0xf5f2ae75d762b7e2b42d53f48018436f52ce5401/) | MoonwellViewsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | MoonwellViewsV1Moonbeam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2eed2b...223d2b`](./contracts/optimism-10/0x2eed2b7d44e2cf64a41b6b3f78be2fdc56223d2b/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b1eea...1021fe`](./contracts/ethereum-1/0x9b1eeac01ded2155d93a23e9dd5e99954f1021fe/) | MWethDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2ad2f2...830845`](./contracts/optimism-10/0x2ad2f20ff29c11fd4bf20031e04476026c830845/) | OEVProtocolFeeRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xded4de...2d5c30`](./contracts/moonbeam-1284/0xded4ded0badacf87714c90405f8983efdf2d5c30/) | ProposalView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/) | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/) | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b1bdd...700a7f`](./contracts/ethereum-1/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x342ef3...a39827`](./contracts/ethereum-1/0x342ef39c57d193258358f0095f55637c5ea39827/) | xWELLBridgeFeePayer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x78c504...2db169`](./contracts/moonbeam-1284/0x78c504b6c0ea2adbf6a58b208c9888f3692db169/) | xWELLRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 6 |
| standard_library | 17 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=135

Zero-match audit list:

- [13533] Moonwell_Finance_Safety_Module_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
