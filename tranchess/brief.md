# Agentic Audit Brief: Tranchess

⚠️ Lifecycle status: DEAD - TVL changed 4.9% over 90 days

## Project Overview

- Project: Tranchess (`tranchess`)
- Website: [https://tranchess.com](https://tranchess.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-18T04:50:35.423Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: bsc, ethereum, scroll
- Contract surface: 40 unique implementations (175 raw deployments)
- DeFi Llama TVL: $4,696,006.00
- On-chain TVL (included contracts): $1,944.78
- TVL by chain: Bsc $1,944.78

## Project Description

Tranchess is a DeFi protocol offering structured yield products through tranched funds. It allows users to gain leveraged exposure or stable returns by splitting a single fund into multiple risk/return profiles, and provides liquid staking and yield optimization across Ethereum, BSC, and Scroll.

### Architecture

All families share the Chess token and governance infrastructure (VotingEscrowV4) for protocol incentives. Tranchess and Tranchess Yield both use BishopStableSwap pools to facilitate trading between tranche tokens, while Tranchess Ether appears as a standalone liquid staking product.

## Contract Surface Quality

- Indexed contracts: 557; live-surface contracts included: 175 (175 live, 0 unknown).
- Excluded by liveness: 354 inactive, 28 singleton, 0 uninitialized.
- Deployment units: 2/16 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 14/81.

## Audit Coverage Summary

- Verified implementations audited: 7/38 (18.4%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 40
- Raw deployments: 175
- Audits discovered: 9
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $1,944.78
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $1,944.78 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 13.2% | 2023-12 |
| CertiK | Tier 2 | 3 | 7.9% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Chess | unknown | bsc | n/a | [`0x20de22...4c82a6`](./contracts/bsc-56/0x20de22029ab63cf9a7cf5feb2b737ca1ee4c82a6/) | ✅ Audited |
| FeeDistributor | operational_periphery | bsc | n/a | 6 deployments: bsc [`0x67eb54...fed35b`](./contracts/bsc-56/0x67eb546a69c7e4d83f3c66018fa549dff5fed35b/); bsc `0x857486...20e0e7`; bsc `0x85ae5e...8bcda8`; bsc `0xa4ecd9...fafb69`; bsc `0xa80287...b76ea2`; bsc `0xe06f85...639dae` | ✅ Audited |
| FundV5 | unknown | ethereum | n/a | [`0x811c9d...5dd0fa`](./contracts/ethereum-1/0x811c9dd8b7b670a78d02fac592ebbe465e5dd0fa/) | ✅ Audited |
| PrimaryMarket | unknown | bsc | n/a | [`0x19ca3b...a1008d`](./contracts/bsc-56/0x19ca3baaeaf37b857026dfed3a0ba63987a1008d/) | ✅ Audited |
| PrimaryMarketV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x25c601...01eb17`](./contracts/bsc-56/0x25c601a3fca896be827ef47e52bfcab18601eb17/); bsc `0x991c55...977f24`; bsc `0xec887f...85f522` | ✅ Audited |
| PrimaryMarketV4 | unknown | ethereum | n/a | [`0xcf1163...c4c829`](./contracts/ethereum-1/0xcf116313bc9c3712a8165d9a8e1c311567c4c829/) | ✅ Audited |
| Share | unknown | bsc | n/a | 9 deployments: bsc [`0x15d031...f4c648`](./contracts/bsc-56/0x15d0318fddf785ac0d3ba690c0033b3bedf4c648/); bsc `0x3a632b...ef9fb1`; bsc `0x80da8c...fab7ef`; bsc `0x8cc456...dc6f85`; bsc `0x9fd554...ad1a90`; bsc `0xa0c1a9...e4dcbb`; bsc `0xed3805...9fca43`; bsc `0xf8d829...8d2c3a`; bsc `0xfff9fc...b75dd9` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyOFTPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x25cd49...e76815`](./contracts/ethereum-1/0x25cd496d66708166a06da16ed641dd286ce76815/); bsc `0x38f51b...672d59`; scroll `0xf440e3...4f5970` | ⚠️ Unaudited |
| AnyswapChess | unknown | scroll | n/a | 2 deployments: ethereum `0xd61232...5e2e73`; scroll [`0x9735fb...1bccf9`](./contracts/scroll-534352/0x9735fb1126b521a913697a541f768376011bccf9/) | ⚠️ Unaudited |
| BatchOperationHelper | periphery | bsc | n/a | 3 deployments: ethereum `0x97238b...55a1d5`; bsc [`0x5647be...52529d`](./contracts/bsc-56/0x5647bed4a4d7544d667aeaabf71b13f1c152529d/); scroll `0xbefeb1...9d6e68` | ⚠️ Unaudited |
| BatchUpgradeTool | periphery | bsc | n/a | [`0xd7d848...cde071`](./contracts/bsc-56/0xd7d8484c835487c2a88c5e653f75e570eecde071/) | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | bsc | n/a | 19 deployments: bsc [`0x01209a...c21f4e`](./contracts/bsc-56/0x01209a232daf2068136d15e76c867c7f7fc21f4e/); bsc `0x094277...1400aa`; bsc `0x2fa534...311698`; bsc `0x399bbb...d62b07`; bsc `0x6da3a0...1dd970`; bsc `0xa6d9ad...473596`; bsc `0xb4c672...0893e6`; bsc `0xba5a53...336c2b`; bsc `0xbbb1aa...bdd28f`; bsc `0xc36553...e75dbe`; bsc `0xd0cc89...6e735c`; bsc `0xd33926...1ab9f7`; bsc `0xd3d475...b6256e`; bsc `0xda3bd7...9d1ad4`; bsc `0xf4302b...ed2bbb`; bsc `0xf443f2...5651bc`; scroll `0x3d9f20...d71ca6`; scroll `0xd151ce...9ffc6f`; scroll `0xec8bfa...a5ff00` | ⚠️ Unaudited |
| ConstAprOracle | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x9060da...038d86`](./contracts/bsc-56/0x9060dac075f6b96e7d753a321652626cec038d86/); bsc `0xa09679...8b6e48`; bsc `0xc61198...fe83ea`; bsc `0xfdc433...ebc56c` | ⚠️ Unaudited |
| ConstPriceOracle | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x64d5af...25715c`](./contracts/bsc-56/0x64d5af5ee4e2a6e9b7adc04b340723011a25715c/); bsc `0x7a5a11...6f38a7`; bsc `0x894738...0fbc6c`; bsc `0x8ceb0f...3b476f` | ⚠️ Unaudited |
| ControllerBallotV2 | governance | bsc | n/a | [`0xd1d463...faf8d3`](./contracts/bsc-56/0xd1d463d180bc057d104a11654fad4c5493faf8d3/) | ⚠️ Unaudited |
| CrossChainWrappedToken | token | bsc | n/a | [`0x352e9a...ab6da8`](./contracts/bsc-56/0x352e9a93498c4aa72734a32433bca094f5ab6da8/) | ⚠️ Unaudited |
| FeeConverter | unknown | bsc | n/a | 4 deployments: bsc [`0x6b0c7d...1aeaf3`](./contracts/bsc-56/0x6b0c7dd95e9db7edd2ed5adf056bc502eb1aeaf3/); bsc `0x911237...09e57a`; bsc `0xc36b90...87368f`; bsc `0xfced57...ce8885` | ⚠️ Unaudited |
| FlashSwapRouter | adapter | bsc | n/a | [`0x0d5108...fda0e0`](./contracts/bsc-56/0x0d5108377c86f4dcfe473177e0ca555095fda0e0/) | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | bsc | n/a | 2 deployments: ethereum `0xd46227...6e0c95`; bsc [`0x5f2217...c60024`](./contracts/bsc-56/0x5f2217f0e67af3a6571cf4356dd8f6aeb6c60024/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | unit-35246 | [`0x1bf019...ff3a7b`](./contracts/ethereum-1/0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-35253 | [`0x1bf019...ff3a7b`](./contracts/bsc-56/0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b/) | ⚠️ Unaudited |
| InterestRateBallotV2 | operational_periphery | bsc | n/a | [`0xe5cf95...828a0e`](./contracts/bsc-56/0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e/) | ⚠️ Unaudited |
| LiquidityGauge | operational_periphery | bsc | n/a | [`0x3f586a...744fc2`](./contracts/bsc-56/0x3f586aa29c61488f25748911be3c52246c744fc2/) | ⚠️ Unaudited |
| LiquidityGaugeV2 | operational_periphery | scroll | n/a | [`0x3c8465...e6d464`](./contracts/scroll-534352/0x3c8465c04e7478b11c7b5cee3919781db5e6d464/) | ⚠️ Unaudited |
| LiquidityGaugeV3 | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x70548d...cd52e3`](./contracts/bsc-56/0x70548df45cd73ea326dedcf2f6f774e165cd52e3/); bsc `0xa1e3f7...42da66`; bsc `0xc837be...0cd295`; bsc `0xf11a10...52371c` | ⚠️ Unaudited |
| MaturityFund | unknown | bsc | n/a | 7 deployments: bsc [`0x155ded...b0ec37`](./contracts/bsc-56/0x155ded598a186148b8a2f1c7b442f9ceaab0ec37/); bsc `0x2383a2...1b8df0`; bsc `0x29a90f...be387e`; bsc `0x91b07b...befd34`; bsc `0xac05ff...a51fe6`; bsc `0xc41097...0609ed`; bsc `0xcb00aa...ffe6b6` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | bsc | n/a | 18 deployments: bsc [`0x07a2d8...bf5559`](./contracts/bsc-56/0x07a2d8c053015b57c2dfc2b7450d521de1bf5559/); bsc `0x188fe2...59f274`; bsc `0x27b5dc...dd7fc4`; bsc `0x2c5752...78033a`; bsc `0x4346d5...8b93f5`; bsc `0x64e30f...4d8a45`; bsc `0x756889...b8602a`; bsc `0x7a7bbe...47459d`; bsc `0x9af013...04198b`; bsc `0x9fb23b...22ead0`; bsc `0xb26009...a0eb2f`; bsc `0xc66710...8e29eb`; bsc `0xc94231...842166`; bsc `0xf2b1eb...a111c0`; bsc `0xfaf336...0eeac9`; scroll `0x088e2f...41679d`; scroll `0x21366d...791cee`; scroll `0x47b391...f194d4` | ⚠️ Unaudited |
| PrimaryMarketRouter | adapter | bsc | n/a | 2 deployments: bsc [`0xa61f3d...e2f6e1`](./contracts/bsc-56/0xa61f3d8073f7d83c21761a123b8083ff73e2f6e1/); bsc `0xd5396f...2673ee` | ⚠️ Unaudited |
| PrimaryMarketRouterV2 | adapter | bsc | n/a | 5 deployments: bsc [`0x01a45d...7eb9ee`](./contracts/bsc-56/0x01a45d60af80c42aa3199899f37a9867a87eb9ee/); bsc `0x245a73...134123`; bsc `0x55ab1f...4c3dd6`; bsc `0xbd1450...bdfe17`; bsc `0xc5d5f9...79c343` | ⚠️ Unaudited |
| PrimaryMarketV5 | unknown | ethereum | n/a | [`0xa8be5a...477e22`](./contracts/ethereum-1/0xa8be5ab62794a647254e1e62844201efc8477e22/) | ⚠️ Unaudited |
| QueenStableSwap | unknown | bsc | n/a | [`0xfcf44d...ba5773`](./contracts/bsc-56/0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773/) | ⚠️ Unaudited |
| RewardCashier | unknown | bsc | n/a | 2 deployments: bsc [`0x79e8ea...dcfe0d`](./contracts/bsc-56/0x79e8ea3cf94327ebf1b23fb67c1afdb835dcfe0d/); bsc `0xacc5b8...505e37` | ⚠️ Unaudited |
| ShareStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x66f9d1...7d4b70`](./contracts/bsc-56/0x66f9d16db828d340858b1fd4859c4030247d4b70/); bsc `0xaf098f...2aa1b4`; bsc `0xfa7b73...701c76` | ⚠️ Unaudited |
| ShareV2 | unknown | bsc | n/a | 50 deployments: ethereum `0x379e8d...0d3934`; ethereum `0x93ef1e...292e7d`; ethereum `0xd2df8d...158690`; bsc [`0x081829...3723b7`](./contracts/bsc-56/0x0818293f0c6c4e752c4927fff881cbad1f3723b7/); bsc `0x0a229c...64223f`; bsc `0x0e5304...5ac4a4`; bsc `0x1094ee...d6f175`; bsc `0x1424ca...0a5bd3`; bsc `0x1d56ee...387e2b`; bsc `0x20d269...57ddf3`; bsc `0x21944a...385ff1`; bsc `0x3f1436...6a4c7a`; bsc `0x40faca...45d52f`; bsc `0x47cc4b...d74759`; bsc `0x4c1e90...e222b2`; bsc `0x53ef5c...a471fd`; bsc `0x5aa903...c79da8`; bsc `0x5d3c94...59557f`; bsc `0x636939...2fea89`; bsc `0x65067c...b9df6d`; bsc `0x716155...2f5e21`; bsc `0x81607f...cdbdde`; bsc `0x89035e...f68bbc`; bsc `0x9c1829...e82244`; bsc `0xa14424...fa3547`; bsc `0xa5235d...ec4e7b`; bsc `0xa5b757...60d7e7`; bsc `0xa8494c...f6389e`; bsc `0xaa107d...a125b4`; bsc `0xb87967...be45d5`; bsc `0xbe7ee1...d601e1`; bsc `0xc28fb6...01d76c`; bsc `0xcdd85b...6390c3`; bsc `0xce2a34...9d9955`; bsc `0xd4b3c0...c7188a`; bsc `0xd4c753...18856e`; bsc `0xd94f01...ae5f00`; bsc `0xdbeb5f...0ce0b9`; bsc `0xe94a3e...0f4665`; bsc `0xecd4a7...92653a`; bsc `0xf87e3d...77e77e`; bsc `0xf9cd7a...1b9926`; bsc `0xfdc8a3...991286`; bsc `0xff2326...b79c7c`; scroll `0x097508...79165b`; scroll `0x3b97cc...493eea`; scroll `0x6e20e4...35d92d`; scroll `0x6f2d7c...35ff4a`; scroll `0x820144...a7fea2`; scroll `0xbf4ff7...67112e` | ⚠️ Unaudited |
| SwapBonus | unknown | bsc | n/a | 4 deployments: bsc [`0x32b67c...6d33ae`](./contracts/bsc-56/0x32b67cb26f8fb268c6c4f289e809173f4f6d33ae/); bsc `0x6911a9...8a6594`; bsc `0x7813b3...fcd0c3`; bsc `0x7c29a6...b1fc71` | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | 2 deployments: ethereum `0x657498...6c3314`; bsc [`0x3599dd...5cadc2`](./contracts/bsc-56/0x3599ddc1efce801f8657f64127acb07c0b5cadc2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | n/a | [`0xffd177...f8f5ba`](./contracts/scroll-534352/0xffd17794bf2e3ba798170f358225763f1af8f5ba/) | ⚠️ Unaudited |
| WstETHBishopStableSwap | unknown | ethereum | n/a | [`0xad06a2...57bdb5`](./contracts/ethereum-1/0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | scroll | n/a | `0x0e6a00...92ccaa` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xb5e3d3...105839` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Tranchess-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Tranchess-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://skynet.certik.com/projects/tranchess) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [certik-2021-06-02.pdf](https://github.com/tranchess/contract-core/blob/main/audits/certik-2021-06-02.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 11 | high |
| [peckshield-2021-06-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-06-28.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [peckshield-2021-09-10.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-09-10.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 0 | n/a |
| [peckshield-2021-12-24.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-12-24.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 0 | n/a |
| [peckshield-2022-05-20.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-05-20.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 9 | high |
| [peckshield-2022-10-30.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-10-30.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [peckshield-2023-12-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2023-12-28.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x25cd49...e76815`](./contracts/ethereum-1/0x25cd496d66708166a06da16ed641dd286ce76815/) | ProxyOFTPool | core_logic | $1,944.78 | Verified native implementation with $1,944.78 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5647be...52529d`](./contracts/bsc-56/0x5647bed4a4d7544d667aeaabf71b13f1c152529d/) | BatchOperationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd7d848...cde071`](./contracts/bsc-56/0xd7d8484c835487c2a88c5e653f75e570eecde071/) | BatchUpgradeTool | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01209a...c21f4e`](./contracts/bsc-56/0x01209a232daf2068136d15e76c867c7f7fc21f4e/) | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9060da...038d86`](./contracts/bsc-56/0x9060dac075f6b96e7d753a321652626cec038d86/) | ConstAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64d5af...25715c`](./contracts/bsc-56/0x64d5af5ee4e2a6e9b7adc04b340723011a25715c/) | ConstPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd1d463...faf8d3`](./contracts/bsc-56/0xd1d463d180bc057d104a11654fad4c5493faf8d3/) | ControllerBallotV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x352e9a...ab6da8`](./contracts/bsc-56/0x352e9a93498c4aa72734a32433bca094f5ab6da8/) | CrossChainWrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b0c7d...1aeaf3`](./contracts/bsc-56/0x6b0c7dd95e9db7edd2ed5adf056bc502eb1aeaf3/) | FeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d5108...fda0e0`](./contracts/bsc-56/0x0d5108377c86f4dcfe473177e0ca555095fda0e0/) | FlashSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f2217...c60024`](./contracts/bsc-56/0x5f2217f0e67af3a6571cf4356dd8f6aeb6c60024/) | FlashSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe5cf95...828a0e`](./contracts/bsc-56/0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e/) | InterestRateBallotV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f586a...744fc2`](./contracts/bsc-56/0x3f586aa29c61488f25748911be3c52246c744fc2/) | LiquidityGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x3c8465...e6d464`](./contracts/scroll-534352/0x3c8465c04e7478b11c7b5cee3919781db5e6d464/) | LiquidityGaugeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x70548d...cd52e3`](./contracts/bsc-56/0x70548df45cd73ea326dedcf2f6f774e165cd52e3/) | LiquidityGaugeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x155ded...b0ec37`](./contracts/bsc-56/0x155ded598a186148b8a2f1c7b442f9ceaab0ec37/) | MaturityFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07a2d8...bf5559`](./contracts/bsc-56/0x07a2d8c053015b57c2dfc2b7450d521de1bf5559/) | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa61f3d...e2f6e1`](./contracts/bsc-56/0xa61f3d8073f7d83c21761a123b8083ff73e2f6e1/) | PrimaryMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01a45d...7eb9ee`](./contracts/bsc-56/0x01a45d60af80c42aa3199899f37a9867a87eb9ee/) | PrimaryMarketRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8be5a...477e22`](./contracts/ethereum-1/0xa8be5ab62794a647254e1e62844201efc8477e22/) | PrimaryMarketV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfcf44d...ba5773`](./contracts/bsc-56/0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773/) | QueenStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x79e8ea...dcfe0d`](./contracts/bsc-56/0x79e8ea3cf94327ebf1b23fb67c1afdb835dcfe0d/) | RewardCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66f9d1...7d4b70`](./contracts/bsc-56/0x66f9d16db828d340858b1fd4859c4030247d4b70/) | ShareStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x081829...3723b7`](./contracts/bsc-56/0x0818293f0c6c4e752c4927fff881cbad1f3723b7/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32b67c...6d33ae`](./contracts/bsc-56/0x32b67cb26f8fb268c6c4f289e809173f4f6d33ae/) | SwapBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3599dd...5cadc2`](./contracts/bsc-56/0x3599ddc1efce801f8657f64127acb07c0b5cadc2/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad06a2...57bdb5`](./contracts/ethereum-1/0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5/) | WstETHBishopStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=146

Zero-match audit list:

- [2426] DL audit link
- [14942] peckshield-2021-09-10.pdf
- [14943] peckshield-2021-12-24.pdf

Fork inheritance lineage and inherited audits are included when available.
