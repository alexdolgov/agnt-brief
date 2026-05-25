# Agentic Audit Brief: Pickle

⚠️ Lifecycle status: DECLINING - TVL dropped 27.7% over 90 days

## Project Overview

- Project: Pickle (`pickle`)
- Website: [https://pickle.finance/](https://pickle.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-25T14:19:40.212Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: ethereum
- Contract surface: 235 unique implementations (622 raw deployments)
- DeFi Llama TVL: $4,727,983.85
- On-chain TVL (included contracts): $2,881,379.54
- TVL by chain: Ethereum $2,881,379.54

## Project Description

Pickle is a yield aggregator that optimizes returns on deposited assets by automatically compounding rewards and shifting funds between strategies. It uses its native PICKLE token for governance and incentives.

### Architecture

The Timelocks & Multisig family governs the Pickle family by controlling parameters like gauge weights and reward emissions. The MasterChef contract likely distributes PICKLE rewards to stakers, bridging governance decisions to user incentives.

## Audit Coverage Summary

- Verified implementations audited: 4/148 (2.7%)
- Verified + Unaudited implementations: 144
- Verified by bytecode match: 0
- Unverified implementations: 87
- Unique implementations: 235
- Raw deployments: 622
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $2,881,379.54
- Latest audit: 2021-03 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,881,379.54 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Haechi | Tier 2 | 2 | 1.4% | 2020-11 |
| PeckShield | Tier 2 | 2 | 1.4% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Gauge | operational_periphery | ethereum | [`0xfaa267...fd3fd8`](./contracts/ethereum-1/0xfaa267c3bb25a82cfdb604136a29895d30fd3fd8/) | ✅ Audited |
| GaugeProxy | operational_periphery | ethereum | 3 deployments: ethereum [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/); ethereum `0x9104b6...716230`; ethereum `0xc99e8c...9c79c9` | ✅ Audited |
| MasterChef | unknown | ethereum | 4 deployments: ethereum [`0x667610...23a2f9`](./contracts/ethereum-1/0x6676104752d856ef55867299d7a057fb9d23a2f9/); ethereum `0x931f5e...fd9180`; ethereum `0xbd17b1...394b0d`; ethereum `0xee6113...dfcf50` | ✅ Audited |
| Timelock | governance | ethereum | 7 deployments: ethereum [`0x0040e0...278416`](./contracts/ethereum-1/0x0040e05ce9a5fc9c0abf89889f7b60c2fc278416/); ethereum `0x1994b5...929b81`; ethereum `0x7985a7...5000a4`; ethereum `0xc2d82a...467bc0`; ethereum `0xd92c7f...eaa0d3`; ethereum `0xf437e2...04c0a0`; ethereum `0xf7aa32...a8c4ed` | ✅ Audited |

### ⚠️ Verified + Unaudited (144)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| yVault | core_logic | ethereum | 25 deployments: ethereum [`0x0fcda6...367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/); ethereum `0x13137d...e970a8`; ethereum `0x20d98b...82ee0e`; ethereum `0x299452...99bbed`; ethereum `0x2f0811...9faf18`; ethereum `0x3495e6...bea71d`; ethereum `0x365c4b...2a43d3`; ethereum `0x37d19d...eda74a`; ethereum `0x43161a...a6d2ab`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x75abd8...1fdaa7`; ethereum `0x7ff566...e9d0f6`; ethereum `0x8f40b1...28d6ce`; ethereum `0x986ee0...7c9e79`; ethereum `0x9e8493...e06588`; ethereum `0xaa32fc...9391ab`; ethereum `0xacd43e...a6f952`; ethereum `0xaf140e...af486b`; ethereum `0xba2e7f...b94fe1`; ethereum `0xba6dc9...6d12bd`; ethereum `0xceeabf...6c17f9`; ethereum `0xe1237a...4d16c7`; ethereum `0xec0d8d...693c90` | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | 12 deployments: ethereum [`0x2088ba...b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/); ethereum `0x29e240...f9f324`; ethereum `0x2a5903...d1bd43`; ethereum `0x2ada28...4418f7`; ethereum `0x2ee2b7...566200`; ethereum `0x3923d5...e59930`; ethereum `0x4be1af...cbad14`; ethereum `0x4f2ba4...71662f`; ethereum `0x8ee2a5...cc0eba`; ethereum `0x93670b...3e9642`; ethereum `0x97297b...dd0215`; ethereum `0xa81ff1...aa7069` | ⚠️ Unaudited |
| yWBTC | token | ethereum | 2 deployments: ethereum [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/); ethereum `0x04ef81...2514e9` | ⚠️ Unaudited |
| PickleToken | token | ethereum | 4 deployments: ethereum [`0x2a7ffb...beed4e`](./contracts/ethereum-1/0x2a7ffb6909e15e608854bc2b96a23f4444beed4e/); ethereum `0x429881...891ca5`; ethereum `0xbb4013...a5abcb`; ethereum `0xcb9e10...7135aa` | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| yUSDT | token | ethereum | 7 deployments: ethereum [`0x3118ee...b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/); ethereum `0x4d96fb...b66311`; ethereum `0x83f798...f1707d`; ethereum `0x90339d...20e249`; ethereum `0xa17872...a1dd14`; ethereum `0xa1e644...0436bf`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
| ycUSDT | token | ethereum | 4 deployments: ethereum [`0x631d66...3931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/); ethereum `0xcfca35...2ac22c`; ethereum `0xd17cbb...5f5cf5`; ethereum `0xf9dd46...413628` | ⚠️ Unaudited |
| StrategySNXSUSD | core_logic | ethereum | 4 deployments: ethereum [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/); ethereum `0x5ce157...4b78ca`; ethereum `0x6e8d08...07329b`; ethereum `0xb681c1...6ead77` | ⚠️ Unaudited |
| insuredVault | core_logic | ethereum | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | ⚠️ Unaudited |
| StrategyControllerV2 | core_logic | ethereum | 4 deployments: ethereum [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/); ethereum `0x372039...93b4cf`; ethereum `0x81cb2e...87dbde`; ethereum `0x85a24b...773adf` | ⚠️ Unaudited |
| Address | unknown | ethereum | [`0x1ed976...ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | ⚠️ Unaudited |
| AHv2Repayment | unknown | ethereum | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | ⚠️ Unaudited |
| APROracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x4ddc33...919361`](./contracts/ethereum-1/0x4ddc33689380e6b56783a5442999b75a5b919361/); ethereum `0x7c9e73...0b36e7`; ethereum `0xc0fe08...c9f4c9`; ethereum `0xe008d3...cd47c0` | ⚠️ Unaudited |
| APRWithPoolOracle | operational_periphery | ethereum | 16 deployments: ethereum [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/); ethereum `0x0daea7...e9cda6`; ethereum `0x2069b7...cc76b2`; ethereum `0x36bb9a...627e5a`; ethereum `0x622026...d939ae`; ethereum `0x71d43c...c415f3`; ethereum `0x7959b6...518401`; ethereum `0x8b954a...49b49e`; ethereum `0x96acff...6709fa`; ethereum `0x9aefb2...3b0e12`; ethereum `0x9f0842...6254d7`; ethereum `0xae8f37...7a7ba6`; ethereum `0xdae803...5f5a54`; ethereum `0xe233b8...fc6177`; ethereum `0xec3add...002bbc`; ethereum `0xf3d032...1c1185` | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | ethereum | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | ⚠️ Unaudited |
| CollateralMaximizer | unknown | ethereum | 4 deployments: ethereum [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/); ethereum `0x6ae0b2...bcca84`; ethereum `0xa0807c...5d7fd3`; ethereum `0xbc8c63...0158d1` | ⚠️ Unaudited |
| CompensationEscrow | operational_periphery | ethereum | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | ⚠️ Unaudited |
| COMPfarming | unknown | ethereum | 4 deployments: ethereum [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/); ethereum `0x885f9e...514979`; ethereum `0xbdba8b...58e821`; ethereum `0xef9f5d...8198a0` | ⚠️ Unaudited |
| Controller | governance | ethereum | 14 deployments: ethereum [`0x2e6556...1dc4c8`](./contracts/ethereum-1/0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8/); ethereum `0x31317f...96a37c`; ethereum `0x399415...de4d2b`; ethereum `0x57efa6...8417fd`; ethereum `0x5b59d0...f50f04`; ethereum `0x62d858...aa70f1`; ethereum `0x66dfe5...dc30b9`; ethereum `0x9bd9e9...ff3af8`; ethereum `0x9e65ad...d91080`; ethereum `0xb8db75...bbce51`; ethereum `0xbc5fdd...98b34a`; ethereum `0xe21bd3...c8c64c`; ethereum `0xf91306...04e2a1`; ethereum `0xff5c95...0d9277` | ⚠️ Unaudited |
| ControllerV2 | governance | ethereum | 4 deployments: ethereum [`0x47b637...6f1996`](./contracts/ethereum-1/0x47b63741e040e73e9e953239e0f64338406f1996/); ethereum `0x90e1ad...f034db`; ethereum `0xd373f6...496a25`; ethereum `0xe106db...d9f47e` | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | ethereum | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ⚠️ Unaudited |
| CRON | unknown | ethereum | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | ⚠️ Unaudited |
| DistributeYFI | unknown | ethereum | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | ethereum | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | ⚠️ Unaudited |
| DSSLeverage | unknown | ethereum | 4 deployments: ethereum [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/); ethereum `0x4c14ed...ddbca2`; ethereum `0xb847df...23e36a`; ethereum `0xd226d0...2a6c7c` | ⚠️ Unaudited |
| DynamicSwap | unknown | ethereum | 6 deployments: ethereum [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/); ethereum `0x8b6079...4fafdf`; ethereum `0xaaae75...97ed7b`; ethereum `0xabd26d...15f97e`; ethereum `0xdd6a80...6f9690`; ethereum `0xf8800c...65e8c2` | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | 13 deployments: ethereum [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/); ethereum `0x5ade7a...d221e8`; ethereum `0x68d8ff...5b9e20`; ethereum `0xa1b22c...e44991`; ethereum `0xb387e9...71da8c`; ethereum `0xc08f38...dec198`; ethereum `0xc52fc7...be18ba`; ethereum `0xd39169...24efc8`; ethereum `0xd77c2a...9ee175`; ethereum `0xd9194d...ab029d`; ethereum `0xe4ffd6...02830e`; ethereum `0xe6fd46...671259`; ethereum `0xed3519...b095bf` | ⚠️ Unaudited |
| FairLaunchCapitalVault | core_logic | ethereum | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | ⚠️ Unaudited |
| Faketroller | unknown | ethereum | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | ⚠️ Unaudited |
| fKRW | unknown | ethereum | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | ⚠️ Unaudited |
| fUSD | unknown | ethereum | 2 deployments: ethereum [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/); ethereum `0xd191b9...328c86` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x9d074e...38db17`](./contracts/ethereum-1/0x9d074e37d408542fd38be78848e8814afb38db17/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | 2 deployments: ethereum [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/); ethereum `0xeefb72...f1efd9` | ⚠️ Unaudited |
| HegicERCPool | core_logic | ethereum | 2 deployments: ethereum [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/); ethereum `0xc21aa9...911302` | ⚠️ Unaudited |
| HegicOptions | unknown | ethereum | 3 deployments: ethereum [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/); ethereum `0x7d9b2a...b16cb9`; ethereum `0x946d3c...8afc40` | ⚠️ Unaudited |
| HegicOptionsFactory | registry | ethereum | 2 deployments: ethereum [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/); ethereum `0x272cdb...cfef72` | ⚠️ Unaudited |
| iCollateral | unknown | ethereum | 3 deployments: ethereum [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/); ethereum `0xacd746...3a4cfc`; ethereum `0xcc784c...a3defa` | ⚠️ Unaudited |
| iCollateralVaultFactory | registry | ethereum | 2 deployments: ethereum [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/); ethereum `0xe60fc2...5af312` | ⚠️ Unaudited |
| iCollateralVaultProxy | core_logic | ethereum | 9 deployments: ethereum [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/); ethereum `0x144282...18c569`; ethereum `0x1b596d...28f82f`; ethereum `0x22fad1...cfb799`; ethereum `0x44efce...442e37`; ethereum `0x624ab8...f746b7`; ethereum `0x70f2d0...0eedbf`; ethereum `0xde354f...62e597`; ethereum `0xf9d1ae...39f3c1` | ⚠️ Unaudited |
| iDAI | unknown | ethereum | 2 deployments: ethereum [`0x6c5f9d...ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/); ethereum `0x87b728...a4978d` | ⚠️ Unaudited |
| iDAIZapSwap | adapter | ethereum | 3 deployments: ethereum [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/); ethereum `0x91f173...ee70c7`; ethereum `0xada375...7571b9` | ⚠️ Unaudited |
| IEarnAPR | unknown | ethereum | 2 deployments: ethereum [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/); ethereum `0xdc0c13...430337` | ⚠️ Unaudited |
| IEarnAPRWithPool | core_logic | ethereum | 5 deployments: ethereum [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/); ethereum `0x67ae39...e493b3`; ethereum `0xcd5f61...6900d4`; ethereum `0xdd6d64...5a48a8`; ethereum `0xf9d1f0...f9225f` | ⚠️ Unaudited |
| IEarnManager | governance | ethereum | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | ⚠️ Unaudited |
| IEarnProvider | unknown | ethereum | [`0x7b3680...884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | ⚠️ Unaudited |
| IEther | unknown | ethereum | 7 deployments: ethereum [`0x75a4d0...cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/); ethereum `0x8d5e61...614cec`; ethereum `0x9dde7c...9fd4c0`; ethereum `0xac263a...9dccdc`; ethereum `0xd79966...0347ae`; ethereum `0xdff329...9f90e6`; ethereum `0xfb9e9a...b6bbd3` | ⚠️ Unaudited |
| insurerVault | core_logic | ethereum | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | ⚠️ Unaudited |
| iTrade | unknown | ethereum | 7 deployments: ethereum [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/); ethereum `0x29f16e...e215b1`; ethereum `0x5861ca...d53a0f`; ethereum `0x59c0d3...527829`; ethereum `0x7cb964...5e9b08`; ethereum `0xe23353...db68ca`; ethereum `0xf2cf40...d60d2f` | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | 14 deployments: ethereum [`0x30f358...2f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/); ethereum `0x4bf466...4f88c1`; ethereum `0x4ff017...181544`; ethereum `0x5a09ad...3746e9`; ethereum `0x5e85e8...0b0e3f`; ethereum `0x6559a9...44729c`; ethereum `0x86887e...440c00`; ethereum `0x90a1de...60ae6f`; ethereum `0x9696fe...e54b32`; ethereum `0xb0a150...8b00b2`; ethereum `0xb63650...b6a8fe`; ethereum `0xb920eb...412b5b`; ethereum `0xc8c839...68a927`; ethereum `0xf9c461...398288` | ⚠️ Unaudited |
| Keep3rHelper | periphery | ethereum | [`0xb41772...af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | ⚠️ Unaudited |
| Keep3rJob | unknown | ethereum | [`0xb68e7d...02d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | 2 deployments: ethereum [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/); ethereum `0x5bab9e...c5f95e` | ⚠️ Unaudited |
| Keep3rV1Helper | periphery | ethereum | 9 deployments: ethereum [`0x1530a2...5a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/); ethereum `0x24e156...3a9fd2`; ethereum `0x2c8281...935a80`; ethereum `0x80ad49...d2c91b`; ethereum `0x93747c...28617f`; ethereum `0xab6f27...1d9781`; ethereum `0xbcd4e9...56e703`; ethereum `0xc952a9...365aa0`; ethereum `0xe84418...8ca8c6` | ⚠️ Unaudited |
| Keep3rV1JobRegistry | registry | ethereum | [`0x739689...ab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | ⚠️ Unaudited |
| Keep3rV1Library | unknown | ethereum | 2 deployments: ethereum [`0xdaef20...924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/); ethereum `0xfc38b6...96b6f1` | ⚠️ Unaudited |
| Keep3rV1Oracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x733538...70282c`](./contracts/ethereum-1/0x73353801921417f465377c8d898c6f4c0270282c/); ethereum `0xd5d745...1661e9` | ⚠️ Unaudited |
| Keep3rV1OracleUSD | operational_periphery | ethereum | 9 deployments: ethereum [`0x0a03b4...f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/); ethereum `0x0dd459...6197f6`; ethereum `0x13dbd9...b28a32`; ethereum `0x31b06a...216e1c`; ethereum `0x5eb63b...623fd0`; ethereum `0x6bcc7e...d361f2`; ethereum `0xa4b065...280c76`; ethereum `0xaa1d14...f559df`; ethereum `0xdd6eb7...67e078` | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | ethereum | 10 deployments: ethereum [`0x173ed6...132dc9`](./contracts/ethereum-1/0x173ed6531818456f29fc74011a3b1fb4b6132dc9/); ethereum `0x36e4d2...d16017`; ethereum `0x54eef4...c23033`; ethereum `0x5854a8...9b4532`; ethereum `0x5890ed...0d50b8`; ethereum `0x65f3ed...9b52df`; ethereum `0xaa1869...293776`; ethereum `0xb6467b...404822`; ethereum `0xccdfcb...e9659d`; ethereum `0xf10c45...e729a0` | ⚠️ Unaudited |
| Keep3rV2Helper | periphery | ethereum | 2 deployments: ethereum [`0x1bf162...c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/); ethereum `0x272053...e8067a` | ⚠️ Unaudited |
| Keep3rV2OracleFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x2266be...7880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/); ethereum `0xaed599...7bacfd`; ethereum `0xe2b5d2...80f666` | ⚠️ Unaudited |
| Keep3rV3OracleUSD | operational_periphery | ethereum | [`0x1542ec...ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | ⚠️ Unaudited |
| LazyHarvest | operational_periphery | ethereum | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | ⚠️ Unaudited |
| LiquidationOracle | operational_periphery | ethereum | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | 2 deployments: ethereum [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/); ethereum `0x6e97f4...c78a85` | ⚠️ Unaudited |
| Logic | unknown | ethereum | [`0xd7054d...afe355`](./contracts/ethereum-1/0xd7054d07e2bd5f0ed91dbd8d44f8a10a56afe355/) | ⚠️ Unaudited |
| MetaKeep3r | unknown | ethereum | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | ⚠️ Unaudited |
| Minter | operational_periphery | ethereum | [`0x708f45...82fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | ⚠️ Unaudited |
| NexusMutualCover | unknown | ethereum | [`0x93a288...de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | 3 deployments: ethereum [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/); ethereum `0xd7a73b...8ce5b9`; ethereum `0xfe0704...0e1e8f` | ⚠️ Unaudited |
| OptionsV1Library | unknown | ethereum | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | ethereum | 9 deployments: ethereum [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/); ethereum `0x2d9ed3...29d9c4`; ethereum `0x380783...1bd1e7`; ethereum `0x3d07f2...c18ec3`; ethereum `0x92210d...ebf134`; ethereum `0xc8c6c6...2b6c92`; ethereum `0xd75096...6e97c2`; ethereum `0xf4c80c...191ca1`; ethereum `0xfb5745...2a0b89` | ⚠️ Unaudited |
| OSMedianizer | unknown | ethereum | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | ⚠️ Unaudited |
| PickleJar | unknown | ethereum | 11 deployments: ethereum [`0x2385d3...997ffd`](./contracts/ethereum-1/0x2385d31f1eb3736be0c3629e6f03c4b3cd997ffd/); ethereum `0x3a41ab...0e94d8`; ethereum `0x439923...5262ef`; ethereum `0x46206e...79258b`; ethereum `0x9299c5...42966a`; ethereum `0xac0854...bda154`; ethereum `0xc83d3a...99df98`; ethereum `0xd1dd70...00d759`; ethereum `0xf64419...63b5b3`; ethereum `0xf6d463...fef0d2`; ethereum `0xf79ae8...95d55b` | ⚠️ Unaudited |
| PickleMigrator | periphery | ethereum | [`0xc0cf2c...6dbe82`](./contracts/ethereum-1/0xc0cf2cbd0c6bb1da4c671fbb07d40e88676dbe82/) | ⚠️ Unaudited |
| PickleVoteProxy | unknown | ethereum | [`0x47b7b0...8af191`](./contracts/ethereum-1/0x47b7b0983bf3b1d8d5b773006809edcb208af191/) | ⚠️ Unaudited |
| PriceProxy | operational_periphery | ethereum | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | ⚠️ Unaudited |
| RiskOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/); ethereum `0x4cc91e...fa8d1d`; ethereum `0x5d114f...c76a15`; ethereum `0x728bd7...2d473f`; ethereum `0x74db0f...8db7ad`; ethereum `0xa6db1c...4320e1`; ethereum `0xe8be74...913e16` | ⚠️ Unaudited |
| SafetyRedundancy | unknown | ethereum | 2 deployments: ethereum [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/); ethereum `0x6e3246...549c66` | ⚠️ Unaudited |
| Signer | unknown | ethereum | 5 deployments: ethereum [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/); ethereum `0x171e66...f5a06f`; ethereum `0x72cec0...c8401a`; ethereum `0x79d0e6...82e3fd`; ethereum `0x81d6a9...7717c3` | ⚠️ Unaudited |
| SingleSidedAMM | unknown | ethereum | 2 deployments: ethereum [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/); ethereum `0xc48c39...c3f785` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | 3 deployments: ethereum [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/); ethereum `0x29b490...d5d02b`; ethereum `0x34d670...43ef36` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | 2 deployments: ethereum [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/); ethereum `0xca7197...e0b7a4` | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | 26 deployments: ethereum [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/); ethereum `0x0ca209...f19d54`; ethereum `0x13b9fb...ac48de`; ethereum `0x13dfa8...a3012d`; ethereum `0x1e7167...9f16f0`; ethereum `0x21d0a2...786377`; ethereum `0x2bc7d7...276c84`; ethereum `0x4436e9...e2e6cb`; ethereum `0x4b8089...c8ae92`; ethereum `0x549479...7e73b1`; ethereum `0x5cb5e2...7ec3bf`; ethereum `0x5f8e07...7e72e0`; ethereum `0x6d52d3...12d333`; ethereum `0x7cec7f...0a4e49`; ethereum `0x818046...7db288`; ethereum `0x944bb4...17c60c`; ethereum `0x967fb0...bf7019`; ethereum `0xa17ebd...bfb248`; ethereum `0xa612f9...8f3e6a`; ethereum `0xab43ca...96bf84`; ethereum `0xb31ea0...3b4e88`; ethereum `0xc0f568...9b6a15`; ethereum `0xc66f85...501ee4`; ethereum `0xd45cb0...687b4e`; ethereum `0xf1c62c...db8ab0`; ethereum `0xf33608...b7c75f` | ⚠️ Unaudited |
| StableCreditHelper | periphery | ethereum | 9 deployments: ethereum [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/); ethereum `0x71797b...e34b47`; ethereum `0x8941fd...7f8626`; ethereum `0x942f44...921be2`; ethereum `0x95e0c1...90f8d5`; ethereum `0x9f1c14...1b5139`; ethereum `0xb73ae6...44999f`; ethereum `0xc3abfe...31ddc8`; ethereum `0xe0ca06...05ec69` | ⚠️ Unaudited |
| StableCreditProtocol | unknown | ethereum | 8 deployments: ethereum [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/); ethereum `0x1c1f6f...6800ec`; ethereum `0x20d5bf...048858`; ethereum `0x423f2a...7b6185`; ethereum `0x4f4131...ea1f77`; ethereum `0xb5a137...ce81d6`; ethereum `0xf0bea7...6277a6`; ethereum `0xff807e...496920` | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | 6 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x2122e8...57e4eb`; ethereum `0x71b629...f14fac`; ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261`; ethereum `0xf3504e...d47ede` | ⚠️ Unaudited |
| StrategyCreamYFI | core_logic | ethereum | 2 deployments: ethereum [`0x40bd98...549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/); ethereum `0x5ceb83...9c27f4` | ⚠️ Unaudited |
| StrategyDForceDAI | core_logic | ethereum | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | ⚠️ Unaudited |
| StrategyDForceUSDC | core_logic | ethereum | 5 deployments: ethereum [`0x01b354...11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/); ethereum `0x0f13c2...0b08d7`; ethereum `0x92bc65...678b3b`; ethereum `0xa30d1d...60b897`; ethereum `0xba3489...4e4a57` | ⚠️ Unaudited |
| StrategyDForceUSDT | core_logic | ethereum | [`0x787c77...a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | core_logic | ethereum | 12 deployments: ethereum [`0x28e5a4...e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/); ethereum `0x2f3236...63921b`; ethereum `0x350e46...f09607`; ethereum `0x390bb4...4aef91`; ethereum `0x66b2d8...236224`; ethereum `0x6ce2c0...972529`; ethereum `0x6f6194...6e1e95`; ethereum `0x8bf3ec...9548bb`; ethereum `0x932fc4...1c0b15`; ethereum `0x93b78b...30e2b4`; ethereum `0xc159c4...4713b5`; ethereum `0xd215e9...642a6a` | ⚠️ Unaudited |
| StrategyMStableSavings | core_logic | ethereum | 2 deployments: ethereum [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/); ethereum `0xb17cae...387503` | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | core_logic | ethereum | 2 deployments: ethereum [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/); ethereum `0xd62143...4de8e8` | ⚠️ Unaudited |
| StrategyProxy | core_logic | ethereum | 11 deployments: ethereum [`0x16c20c...597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/); ethereum `0x3d9fae...ac1fca`; ethereum `0x5886e4...d12081`; ethereum `0x61a62d...bb4bde`; ethereum `0x632570...6cc473`; ethereum `0x68296f...581575`; ethereum `0x6a7e2f...ed31e9`; ethereum `0x9a1656...3a231b`; ethereum `0x9a3a03...8d960e`; ethereum `0xc17adf...85b16f`; ethereum `0xd3fde9...77a8b1` | ⚠️ Unaudited |
| StrategyUniEthDaiLpV1 | core_logic | ethereum | 2 deployments: ethereum [`0xc732a2...940747`](./contracts/ethereum-1/0xc732a299684726a9feb2a72ff29f1af785940747/); ethereum `0xcb6c15...17da36` | ⚠️ Unaudited |
| StrategyUniEthDaiLpV2 | core_logic | ethereum | [`0xa39412...ac4520`](./contracts/ethereum-1/0xa39412c169d15dd1163b0f7d0d28ba696fac4520/) | ⚠️ Unaudited |
| StrategyUniEthDaiLpV3 | core_logic | ethereum | [`0xe33540...add453`](./contracts/ethereum-1/0xe335400d7b046587989e47bd85ae1e43abadd453/) | ⚠️ Unaudited |
| StrategyUniEthUsdcLpV1 | core_logic | ethereum | [`0x93bb0d...694923`](./contracts/ethereum-1/0x93bb0df4bf901e44e4c998543cd7284015694923/) | ⚠️ Unaudited |
| StrategyUniEthUsdcLpV2 | core_logic | ethereum | [`0xf92b09...c0cabe`](./contracts/ethereum-1/0xf92b0916d938ec57dea03de4806846eee7c0cabe/) | ⚠️ Unaudited |
| StrategyUniEthUsdcLpV3 | core_logic | ethereum | [`0xcbecd4...34303c`](./contracts/ethereum-1/0xcbecd4d8c8ef80377f019addb8f071e9b034303c/) | ⚠️ Unaudited |
| StrategyUniEthUsdtLpV1 | core_logic | ethereum | [`0xa7edc2...4348f1`](./contracts/ethereum-1/0xa7edc2905ae0bbdbe24f24b0962df77dc64348f1/) | ⚠️ Unaudited |
| StrategyUniEthUsdtLpV2 | core_logic | ethereum | [`0x6cb797...559893`](./contracts/ethereum-1/0x6cb797f795bbef9381fc299e3d707c22e2559893/) | ⚠️ Unaudited |
| StrategyUniEthUsdtLpV3 | core_logic | ethereum | [`0x88dfc0...6c8c01`](./contracts/ethereum-1/0x88dfc02fcb034e7986b12173d0c852934f6c8c01/) | ⚠️ Unaudited |
| StrategyVaultTUSD | core_logic | ethereum | 3 deployments: ethereum [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/); ethereum `0x3adc5e...589c58`; ethereum `0x860ec4...b2ad79` | ⚠️ Unaudited |
| StrategyVaultUSDC | core_logic | ethereum | 5 deployments: ethereum [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/); ethereum `0x4d03b8...01f645`; ethereum `0x687607...41d844`; ethereum `0x86c486...a20dc5`; ethereum `0xf2010f...1d4efa` | ⚠️ Unaudited |
| StrategyYffi | core_logic | ethereum | 2 deployments: ethereum [`0xbe197e...da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/); ethereum `0xde2361...ed8377` | ⚠️ Unaudited |
| StrategyYFIGovernance | core_logic | ethereum | 2 deployments: ethereum [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/); ethereum `0x84baca...315d33` | ⚠️ Unaudited |
| StrategyYfii | core_logic | ethereum | 5 deployments: ethereum [`0x2de055...edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/); ethereum `0x382185...34ed72`; ethereum `0x8816b2...7e68cf`; ethereum `0x8fcb1c...6dc1ad`; ethereum `0x963567...69ba90` | ⚠️ Unaudited |
| SupplyFactory | registry | ethereum | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | ⚠️ Unaudited |
| Synthetic | unknown | ethereum | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | ethereum | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | ⚠️ Unaudited |
| SynthetixAMM | unknown | ethereum | 7 deployments: ethereum [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/); ethereum `0x61cbdb...3718e2`; ethereum `0x70d8cd...f2090d`; ethereum `0x7b0b93...e73cc9`; ethereum `0xc2759c...6823b8`; ethereum `0xd2ed2e...5aaded`; ethereum `0xe0ccb6...95630c` | ⚠️ Unaudited |
| SynthetixExchange | unknown | ethereum | 4 deployments: ethereum [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/); ethereum `0x56cd54...3e0abf`; ethereum `0x859de2...41d896`; ethereum `0x99200b...276bd7` | ⚠️ Unaudited |
| TendiesFarm | unknown | ethereum | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | ⚠️ Unaudited |
| TimeLoanPairFactory | registry | ethereum | 2 deployments: ethereum [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/); ethereum `0xfe491b...b30821` | ⚠️ Unaudited |
| TimelockGovernance | governance | ethereum | 5 deployments: ethereum [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/); ethereum `0x14160d...00137f`; ethereum `0x87c48b...49676a`; ethereum `0xd728e1...2d4437`; ethereum `0xed3948...5d50e1` | ⚠️ Unaudited |
| TreasuryVault | operational_periphery | ethereum | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | ⚠️ Unaudited |
| UniOracleFactory | operational_periphery | ethereum | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0xdc9855...32a819`](./contracts/ethereum-1/0xdc98556ce24f007a5ef6dc1ce96322d65832a819/) | ⚠️ Unaudited |
| UniUniConverter | unknown | ethereum | [`0x153d01...8668af`](./contracts/ethereum-1/0x153d01e1e2d882eadfe884624623b3e7f88668af/) | ⚠️ Unaudited |
| VestingVault | operational_periphery | ethereum | 2 deployments: ethereum [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/); ethereum `0xc491c6...f41989` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 3 deployments: ethereum [`0x5553b9...5c5fcc`](./contracts/ethereum-1/0x5553b9b8cfe6163f89941af22779c747565c5fcc/); ethereum `0xbbcf16...8b29cf`; ethereum `0xed4064...ff5c4d` | ⚠️ Unaudited |
| WrappedYFI | unknown | ethereum | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | ⚠️ Unaudited |
| xVault | core_logic | ethereum | 7 deployments: ethereum [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/); ethereum `0x109a32...9dd9e6`; ethereum `0x2ead6d...58d285`; ethereum `0x38f1e3...4d8189`; ethereum `0x67c472...06c365`; ethereum `0x797921...920922`; ethereum `0xc1531e...9a62b1` | ⚠️ Unaudited |
| yAffiliateFactoryV2 | registry | ethereum | 2 deployments: ethereum [`0x44ff2a...53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/); ethereum `0x5fce23...c00150` | ⚠️ Unaudited |
| yBUSD | unknown | ethereum | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | ⚠️ Unaudited |
| yCollateralVaultProxy | core_logic | ethereum | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | ⚠️ Unaudited |
| yCRV | unknown | ethereum | 7 deployments: ethereum [`0x170411...2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/); ethereum `0x3e6c2a...ee412b`; ethereum `0x4f565a...8837df`; ethereum `0x55e3cb...4e7c3f`; ethereum `0x652c3c...44dca5`; ethereum `0x7548a3...0cda6e`; ethereum `0x9ce551...ed306c` | ⚠️ Unaudited |
| ycUSDC | unknown | ethereum | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ⚠️ Unaudited |
| yDAI | unknown | ethereum | 11 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0x22b3dc...1a8346`; ethereum `0x541d0e...3ae926`; ethereum `0x81b6fc...da39a2`; ethereum `0x9d2505...da4cdd`; ethereum `0xaddc92...c1228d`; ethereum `0xb3cb94...73d7b1`; ethereum `0xc0a487...bea210`; ethereum `0xc2cb10...24ce32`; ethereum `0xee5eda...c68755`; ethereum `0xf86d55...8ee982` | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | ethereum | [`0x56ab71...a6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | ⚠️ Unaudited |
| yDelegate | unknown | ethereum | 2 deployments: ethereum [`0x610258...a05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/); ethereum `0xb53943...11ecbb` | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | ethereum | [`0x41303e...343eeb`](./contracts/ethereum-1/0x41303e87db5be5b1c7a341440d04ec6a11343eeb/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | 5 deployments: ethereum [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/); ethereum `0x34b150...e3933d`; ethereum `0x7a7a38...0ccb3d`; ethereum `0xaafc9f...35d52c`; ethereum `0xcb597a...1cae93` | ⚠️ Unaudited |
| yInsureView | unknown | ethereum | [`0x6d2738...98340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | 2 deployments: ethereum [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/); ethereum `0xf61718...b45600` | ⚠️ Unaudited |
| yTokenProxy | token | ethereum | 2 deployments: ethereum [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/); ethereum `0x5d0360...191335` | ⚠️ Unaudited |
| yTokenRebalance | token | ethereum | 2 deployments: ethereum [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/); ethereum `0xb7dbf3...641e5e` | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSD | unknown | ethereum | 4 deployments: ethereum [`0x12c068...af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/); ethereum `0x1aaf33...6651d0`; ethereum `0x8623ac...e41e87`; ethereum `0xac2b33...e2497d` | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | 6 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0x2b9c2f...b98897`; ethereum `0xa2609b...01e3da`; ethereum `0xac38a8...a4bda9`; ethereum `0xd6ad7a...a3436e`; ethereum `0xf7c9c5...b81bb4` | ⚠️ Unaudited |
| yVaultCheck | core_logic | ethereum | 3 deployments: ethereum [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/); ethereum `0xa9c441...736780`; ethereum `0xe30997...db4103` | ⚠️ Unaudited |
| yVaultFactory | registry | ethereum | 2 deployments: ethereum [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/); ethereum `0xe576ee...874509` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (87)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x002058...2b5ebe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03a9aa...bdcf52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x092bca...ca243b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b71d5...22dd83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1201a9...551bfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12115b...05017d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1226ff...d3a024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15342f...b571f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x182f0c...bb50c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c9df1...f6c854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d4a09...fcf11e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1eb53f...6fc883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f0d2e...9317df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2497a2...fbe68d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28443b...4b3e46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e0fd6...52c95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36d603...6b7af0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b047f...8976cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b8dbf...04063b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bb50c...18e6e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41c9d3...aa81e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x43f6ee...c5cfc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4629d7...bd76ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x478113...44cb17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47e00e...fed7d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49f7ad...40e960` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a8aaa...4b3245` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b76fa...6ae468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c697d...f961c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d465a...692257` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e0202...b70c6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e81c6...4a40c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x547573...ac73ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x583cb3...d06b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b3df8...4979de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e92d2...ba0c3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65811a...7be05d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65a55d...c33a0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x68be4c...612fe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6dd25a...f55a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6eb722...600fce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7182f8...0ffce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x73917f...e049f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7821a0...853c98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78b689...a21dcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a08f5...a1a25f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a78e3...98f365` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f5794...5e0967` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8469d2...feda9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84c9a0...ed6c86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x863cd3...81f8f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x885db6...1e6fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8bd90b...44414f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f5c54...f2cb70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f8ace...db0cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x907fd7...22bfed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91cf35...357fd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95d4d1...60cba6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98388b...83ae54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d1f80...7ea3cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9fa559...be99a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa08f90...a12407` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5f67b...9e9762` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa94704...76254f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xacac9b...5a0c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf19e5...40f8f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb3654d...4fbdc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4ca26...89ce8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4cfea...662934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5fedb...934252` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbde9cb...040f1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7777b...ada16c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc907ae...f7a2ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb5868...b8fee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb83ff...f90e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd041b3...c95c51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1de2f...e02730` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd2269e...5be971` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd25d46...db7277` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda54e4...1e8d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2ba38...f0bcd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe3a6bf...6c2fe9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe4fc03...7f5539` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb52d2...d849d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xee2330...4887ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf14421...8b30cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb96ed...82f28a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_All_Strategies.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [here (also discovered via alternate URL)](https://raw.githubusercontent.com/pickle-finance/protocol/master/audits/Haechi_Audit.pdf) | Haechi | Audit | 2020-11 | stale | Direct | contract_name | 11 | high |
| [here](https://github.com/pickle-finance/protocol/blob/master/audits/PeckShield-Audit-Report-Gauge-GaugeProxy-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 4 | high |
| [MixBytes_Audit_Curve_Strategy.pdf](https://github.com/pickle-finance/protocol/blob/master/audits/MixBytes_Audit_Curve_Strategy.pdf) | MixBytes | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2088ba...b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/) | yDelegatedVault | core_logic | $481,987.29 | Verified native implementation with $481,987.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | yWBTC | token | $83,973.23 | Verified native implementation with $83,973.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a7ffb...beed4e`](./contracts/ethereum-1/0x2a7ffb6909e15e608854bc2b96a23f4444beed4e/) | PickleToken | token | $75,396.00 | Verified native implementation with $75,396.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | core_logic | $3,014.26 | Verified native implementation with $3,014.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | StrategySNXSUSD | core_logic | $3.05 | Verified native implementation with $3.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | insuredVault | core_logic | $0.14 | Verified native implementation with $0.14 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | StrategyControllerV2 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | APRWithPoolOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | BlackScholesEstimate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | CollateralMaximizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | CompensationEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e6556...1dc4c8`](./contracts/ethereum-1/0x2e65565cf7fbb37bac2c0d84e3a54c592e1dc4c8/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47b637...6f1996`](./contracts/ethereum-1/0x47b63741e040e73e9e953239e0f64338406f1996/) | ControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ConverterDAItoYCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | DistributionRewardsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | DSSLeverage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | DynamicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | FairLaunchCapitalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | fUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d074e...38db17`](./contracts/ethereum-1/0x9d074e37d408542fd38be78848e8814afb38db17/) | GnosisSafe | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | iCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | iCollateralVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | iCollateralVaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | iDAIZapSwap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | IEarnAPR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | IEarnAPRWithPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | IEarnManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | insurerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | LazyHarvest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7054d...afe355`](./contracts/ethereum-1/0xd7054d07e2bd5f0ed91dbd8d44f8a10a56afe355/) | Logic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x708f45...82fb7b`](./contracts/ethereum-1/0x708f456c0d5496e0117ea8c1472cf0cc6782fb7b/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | Normalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | OptionsV1Library | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | OptionsV1Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2385d3...997ffd`](./contracts/ethereum-1/0x2385d31f1eb3736be0c3629e6f03c4b3cd997ffd/) | PickleJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0cf2c...6dbe82`](./contracts/ethereum-1/0xc0cf2cbd0c6bb1da4c671fbb07d40e88676dbe82/) | PickleMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47b7b0...8af191`](./contracts/ethereum-1/0x47b7b0983bf3b1d8d5b773006809edcb208af191/) | PickleVoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | PriceProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | RiskOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | SafetyRedundancy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | StableCreditHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40bd98...549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | StrategyCreamYFI | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | StrategyDForceDAI | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b354...11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | StrategyDForceUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x787c77...a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | StrategyDForceUSDT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28e5a4...e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | StrategyMKRVaultDAIDelegate | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | StrategyMStableSavings | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | StrategyMStableSavingsTUSD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16c20c...597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | StrategyProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc732a2...940747`](./contracts/ethereum-1/0xc732a299684726a9feb2a72ff29f1af785940747/) | StrategyUniEthDaiLpV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39412...ac4520`](./contracts/ethereum-1/0xa39412c169d15dd1163b0f7d0d28ba696fac4520/) | StrategyUniEthDaiLpV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe33540...add453`](./contracts/ethereum-1/0xe335400d7b046587989e47bd85ae1e43abadd453/) | StrategyUniEthDaiLpV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93bb0d...694923`](./contracts/ethereum-1/0x93bb0df4bf901e44e4c998543cd7284015694923/) | StrategyUniEthUsdcLpV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf92b09...c0cabe`](./contracts/ethereum-1/0xf92b0916d938ec57dea03de4806846eee7c0cabe/) | StrategyUniEthUsdcLpV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbecd4...34303c`](./contracts/ethereum-1/0xcbecd4d8c8ef80377f019addb8f071e9b034303c/) | StrategyUniEthUsdcLpV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7edc2...4348f1`](./contracts/ethereum-1/0xa7edc2905ae0bbdbe24f24b0962df77dc64348f1/) | StrategyUniEthUsdtLpV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cb797...559893`](./contracts/ethereum-1/0x6cb797f795bbef9381fc299e3d707c22e2559893/) | StrategyUniEthUsdtLpV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88dfc0...6c8c01`](./contracts/ethereum-1/0x88dfc02fcb034e7986b12173d0c852934f6c8c01/) | StrategyUniEthUsdtLpV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | StrategyVaultTUSD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | StrategyVaultUSDC | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe197e...da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | StrategyYffi | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | StrategyYFIGovernance | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2de055...edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | StrategyYfii | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | SupplyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | Synthetic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | TendiesFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | TimeLoanPairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | TimelockGovernance | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | TreasuryVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153d01...8668af`](./contracts/ethereum-1/0x153d01e1e2d882eadfe884624623b3e7f88668af/) | UniUniConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | xVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | yBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | yCollateralVaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ycUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ySUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | yTokenProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | yTokenRebalance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | yVaultCheck | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | yVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 103 |
| upstream | 32 |
| standard_library | 1 |
| needs_review | 99 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=26

Zero-match audit list:

- [3374] here
- [3378] MixBytes_Audit_Curve_Strategy.pdf

Fork inheritance lineage and inherited audits are included when available.
