# Agentic Audit Brief: Symbiosis

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: active (Tier 0, 76.5% below peak)
- Generated: 2026-06-11T03:25:36.528Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-ce25
- Chains: cronos, ethereum, scroll
- Contract surface: 40 unique implementations (77 raw deployments)
- DeFi Llama TVL: $8,716,214.46
- On-chain TVL (included contracts): $236,145,411.90
- TVL by chain: Ethereum $236,145,411.90

## Project Description

Symbiosis is an active cross-chain bridge and liquidity protocol that enables users to swap and transfer assets across multiple blockchains. The currently analyzed contract inventory should be treated as a limited discovered subset, not the full live protocol surface; staking, pools, relayers, depository, TON/non-EVM integrations, and supported EVM-chain deployments may be out of scope unless separately inventoried.

### Architecture

The Symbiosis family relies on Portal contracts as the main entry points for cross-chain operations, with MetaRouter handling routing logic and WOFTAdapterFactory managing token adapters. Supporting proxy contracts provide upgradeability and access control, while verifier contracts ensure transaction integrity.

## Audit Coverage Summary

- Verified implementations audited: 4/26 (15.4%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 40
- Raw deployments: 77
- Audits discovered: 15
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/symbiosis/information))
- ASD (verified + unaudited TVL): $236,145,411.90
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 2 aging, 10 stale, 0 unknown
- Tier 1 coverage: 7.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashCloak | Tier 2 | 3 | 11.5% | 2022-04 |
| Zokyo | Tier 2 | 3 | 11.5% | 2024-10 |
| Omniscia | Tier 2 | 2 | 7.7% | 2022-03 |
| SlowMist | Tier 1 | 2 | 7.7% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MetaRouter | adapter | ethereum | [`0xe75c7e...ba9877`](./contracts/ethereum-1/0xe75c7e85fe6add07077467064ad15847e6ba9877/) | ✅ Audited |
| Portal | unknown | ethereum | 2 deployments: ethereum [`0x8a7f93...e3dedf`](./contracts/ethereum-1/0x8a7f930003bedd63a1ebd99c5917fd6ae7e3dedf/); ethereum `0xb8f275...9e81a8` | ✅ Audited |
| Symbiosis | unknown | ethereum | [`0xd38bb4...c76dd9`](./contracts/ethereum-1/0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9/) | ✅ Audited |
| SyntERC20 | token | ethereum | [`0x70b7f7...a0cda1`](./contracts/ethereum-1/0x70b7f7044d2ca8e2f1e999b90ef16d7cb7a0cda1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SimpleToken | token | ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| GravityTokenG | token | ethereum | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | 7 deployments: ethereum [`0x076c1e...239bcf`](./contracts/ethereum-1/0x076c1e3a551082fa84042ce5fff53bc795239bcf/); ethereum `0x4a63c5...2ed089`; ethereum `0xb6cd0d...cae97a`; ethereum `0xbd8ea1...107b5e`; ethereum `0xbe574b...5f1ae8`; ethereum `0xef5a2f...d6de34`; ethereum `0xf1815b...045d14` | ⚠️ Unaudited |
| FflonkVerifier | periphery | ethereum | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xe05de6...cc6df2`](./contracts/ethereum-1/0xe05de631122d95ef347f6fca85d1bb149fcc6df2/) | ⚠️ Unaudited |
| MovementWAB | unknown | ethereum | [`0xb48086...6ee114`](./contracts/ethereum-1/0xb4808618b63384f50ff9eee14fe47aee646ee114/) | ⚠️ Unaudited |
| OFTMock | unknown | ethereum | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ⚠️ Unaudited |
| Proxy | proxy | ethereum | [`0xb73603...5016fb`](./contracts/ethereum-1/0xb73603c5d87fa094b7314c74ace2e64d165016fb/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 4 deployments: ethereum [`0x8ad82b...0778d4`](./contracts/ethereum-1/0x8ad82b29261a9657a89a299dac3bfe01880778d4/); ethereum `0x943ed4...1ca66e`; ethereum `0xc95801...726782`; ethereum `0xd04a69...86ec39` | ⚠️ Unaudited |
| Reservoir | unknown | ethereum | [`0xf911f2...22bbc3`](./contracts/ethereum-1/0xf911f2f5b5e4b12bb2d5cbdcec717d3c6222bbc3/) | ⚠️ Unaudited |
| SafeL2 | unknown | scroll | [`0xd58811...50c4f8`](./contracts/scroll-534352/0xd588116a2cc55ed7c926405f425f22f72450c4f8/) | ⚠️ Unaudited |
| SignatureChecker | unknown | ethereum | [`0xdf7108...f86b6c`](./contracts/ethereum-1/0xdf7108f8b10f9b9ec1aba01cca057268cbf86b6c/) | ⚠️ Unaudited |
| SymbiosisTokenVesting | operational_periphery | ethereum | 4 deployments: ethereum [`0x6ef7dd...7231bf`](./contracts/ethereum-1/0x6ef7dd4d7782c27a4c509585db60695d8c7231bf/); ethereum `0x931c67...9f48f6`; ethereum `0xc5ebd4...0a848d`; ethereum `0xe99a09...8c1fcb` | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0x3086ac...c76827`](./contracts/ethereum-1/0x3086ac03b0347bee2ce3fd9079452db13fc76827/) | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WBTC | token | ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | 12 deployments: ethereum [`0x015fd5...9c9329`](./contracts/ethereum-1/0x015fd589f4f1a33ce4487e12714e1b15129c9329/); ethereum `0x5b58c9...2dfd2b`; ethereum `0x674843...38cbc8`; ethereum `0x69bfc7...a74d9f`; ethereum `0x74c9f2...89de67`; ethereum `0x7ac729...16beb8`; ethereum `0x880f61...89167f`; ethereum `0xb1eead...2b86c3`; ethereum `0xbab93b...7cc500`; ethereum `0xbb0d08...e31c2e`; ethereum `0xd8cf92...d6ff4d`; ethereum `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | adapter | ethereum | 14 deployments: ethereum [`0x02dedc...7f808d`](./contracts/ethereum-1/0x02dedca9ccfdaa3a68fac4f368644416be7f808d/); ethereum `0x1a9dd4...41ce06`; ethereum `0x4175d9...13ebe3`; ethereum `0x5c2973...be7362`; ethereum `0x6cea30...795848`; ethereum `0x734cef...f9610a`; ethereum `0x7bcdc4...8629d6`; ethereum `0x7bf810...fac855`; ethereum `0x8ac372...8c90ef`; ethereum `0xa2d339...19ee3f`; ethereum `0xa460c9...955839`; ethereum `0xb8b21b...4e9339`; ethereum `0xfe146a...b4a337`; ethereum `0xfe634e...6e001f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1ee741...fc7bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x542fda...7e677d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x824d8f...4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9001db...d25001` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b3093...8fa3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x292fc5...824d62` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x2e818e...c5d3d7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x50c42d...f2634b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xaa5b84...64076c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xbc1000...000000` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xe34c91...48b693` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/symbiosis/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Symbiosis Staking - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) | Decurity | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2022 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2024 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) | Decurity | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Symbiosis Frontend App - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) | Decurity | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol Audit - Zokyo.pdf (also discovered via alternate URL)](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Near/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-11 | stale | Direct | contract_name | 4 | high |
| [Symbiosis Protocol Audit - HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) | HashCloak | Audit | 2022-04 | stale | Direct | contract_name | 4 | high |
| [Symbiosis Protocol Audit - Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) | Omniscia | Audit | 2022-03 | stale | Direct | contract_name | 3 | high |
| [Symbiosis Protocol Audit - SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |
| [Symbiosis Depository Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol MRv3 Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | contract_name | 4 | high |
| [Symbiosis Onchain Swap Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) | Decurity | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Pool Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge v2 - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | FflonkVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb48086...6ee114`](./contracts/ethereum-1/0xb4808618b63384f50ff9eee14fe47aee646ee114/) | MovementWAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf911f2...22bbc3`](./contracts/ethereum-1/0xf911f2f5b5e4b12bb2d5cbdcec717d3c6222bbc3/) | Reservoir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ef7dd...7231bf`](./contracts/ethereum-1/0x6ef7dd4d7782c27a4c509585db60695d8c7231bf/) | SymbiosisTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3086ac...c76827`](./contracts/ethereum-1/0x3086ac03b0347bee2ce3fd9079452db13fc76827/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015fd5...9c9329`](./contracts/ethereum-1/0x015fd589f4f1a33ce4487e12714e1b15129c9329/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02dedc...7f808d`](./contracts/ethereum-1/0x02dedca9ccfdaa3a68fac4f368644416be7f808d/) | wstETHOFTAdapterUpgradeable | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=21

Zero-match audit list:

- [2094] Symbiosis Staking - Decurity.pdf
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf
- [2096] Symbiosis Relayers Network 2024 - Decurity.pdf
- [2097] Symbiosis Frontend App - Decurity.pdf
- [3440] Symbiosis Depository Audit - Decurity.pdf
- [3442] Symbiosis Onchain Swap Audit - Decurity.pdf
- [3443] Symbiosis Pool Audit - Zokyo.pdf
- [3444] Symbiosis TON Bridge - Zokyo.pdf
- [3445] Symbiosis TON Bridge v2 - Zokyo.pdf

Fork inheritance lineage and inherited audits are included when available.
