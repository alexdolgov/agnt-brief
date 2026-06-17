# Agentic Audit Brief: Symbiosis

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: active (Tier 0, 76.5% below peak)
- Generated: 2026-06-17T07:00:37.501Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: cronos, ethereum
- Contract surface: 27 unique implementations (28 raw deployments)
- DeFi Llama TVL: $8,537,200.98
- On-chain TVL (included contracts): $236,145,411.90
- TVL by chain: Ethereum $236,145,411.90

## Project Description

Symbiosis is an active cross-chain bridge and liquidity protocol that enables users to swap and transfer assets across multiple blockchains. The currently analyzed contract inventory should be treated as a limited discovered subset, not the full live protocol surface; staking, pools, relayers, depository, TON/non-EVM integrations, and supported EVM-chain deployments may be out of scope unless separately inventoried.

### Architecture

The Symbiosis family relies on Portal contracts as the main entry points for cross-chain operations, with MetaRouter handling routing logic and WOFTAdapterFactory managing token adapters. Supporting proxy contracts provide upgradeability and access control, while verifier contracts ensure transaction integrity.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 28 (21 live, 7 unknown).
- Excluded by liveness: 35 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 4/11 live.
- Detected codebases: none
- Dependencies extracted: 20; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/18 (16.7%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 27
- Raw deployments: 28
- Audits discovered: 15
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/symbiosis/information))
- ASD (verified + unaudited TVL): $236,145,411.90
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 2 aging, 10 stale, 0 unknown
- Tier 1 coverage: 11.1% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashCloak | Tier 2 | 2 | 11.1% | 2022-04 |
| Omniscia | Tier 2 | 2 | 11.1% | 2022-03 |
| SlowMist | Tier 1 | 2 | 11.1% | 2022-02 |
| Zokyo | Tier 2 | 2 | 11.1% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Portal | unknown | ethereum | unit-23703 | [`0xb8f275...9e81a8`](./contracts/ethereum-1/0xb8f275fbf7a959f4bce59999a2ef122a099e81a8/) | ✅ Audited |
| Symbiosis | unknown | ethereum | n/a | [`0xd38bb4...c76dd9`](./contracts/ethereum-1/0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9/) | ✅ Audited |
| SyntERC20 | token | ethereum | n/a | [`0x70b7f7...a0cda1`](./contracts/ethereum-1/0x70b7f7044d2ca8e2f1e999b90ef16d7cb7a0cda1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | unit-23704 | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| GravityTokenG | token | ethereum | n/a | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ⚠️ Unaudited |
| FflonkVerifier | periphery | ethereum | n/a | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-23701 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xe05de6...cc6df2`](./contracts/ethereum-1/0xe05de631122d95ef347f6fca85d1bb149fcc6df2/) | ⚠️ Unaudited |
| OFTMock | unknown | ethereum | n/a | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ad82b...0778d4`](./contracts/ethereum-1/0x8ad82b29261a9657a89a299dac3bfe01880778d4/); ethereum `0x943ed4...1ca66e` | ⚠️ Unaudited |
| SymbiosisTokenVesting | operational_periphery | ethereum | n/a | [`0x931c67...9f48f6`](./contracts/ethereum-1/0x931c6728470394507049f5642bab16da029f48f6/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x292fc5...824d62` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2e818e...c5d3d7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x50c42d...f2634b` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xaa5b84...64076c` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xbc1000...000000` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe34c91...48b693` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/symbiosis/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Symbiosis Staking - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) | Decurity | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2022 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2024 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) | Decurity | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [Symbiosis Frontend App - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) | Decurity | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol Audit - HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) | HashCloak | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |
| [Symbiosis Protocol Audit - Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) | Omniscia | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |
| [Symbiosis Protocol Audit - SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | 2 | high |
| [Symbiosis Protocol Audit - Zokyo.pdf (also discovered via alternate URL)](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-02 | stale | Direct | contract_name | 2 | high |
| [Symbiosis Depository Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol MRv3 Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |
| [Symbiosis Onchain Swap Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) | Decurity | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Pool Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge v2 - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | FflonkVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x931c67...9f48f6`](./contracts/ethereum-1/0x931c6728470394507049f5642bab16da029f48f6/) | SymbiosisTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 7 |
| standard_library | 4 |
| needs_review | 11 |

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
