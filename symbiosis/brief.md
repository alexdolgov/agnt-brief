# Agentic Audit Brief: Symbiosis

## Project Overview

- Project: Symbiosis (`symbiosis`)
- Website: [https://symbiosis.finance](https://symbiosis.finance)
- Lifecycle: active (Tier 0, 76.5% below peak)
- Generated: 2026-06-19T06:14:46.543Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, avalanche, base, cronos, ethereum, optimism, polygon
- Contract surface: 48 unique implementations (58 raw deployments)
- DeFi Llama TVL: $8,537,200.98
- On-chain TVL (included contracts): $236,145,411.90
- TVL by chain: Ethereum $236,145,411.90

## Project Description

Symbiosis is an active cross-chain bridge and liquidity protocol that enables users to swap and transfer assets across multiple blockchains. The currently analyzed contract inventory should be treated as a limited discovered subset, not the full live protocol surface; staking, pools, relayers, depository, TON/non-EVM integrations, and supported EVM-chain deployments may be out of scope unless separately inventoried.

### Architecture

The Symbiosis family relies on Portal contracts as the main entry points for cross-chain operations, with MetaRouter handling routing logic and WOFTAdapterFactory managing token adapters. Supporting proxy contracts provide upgradeability and access control, while verifier contracts ensure transaction integrity.

## Contract Surface Quality

- Indexed contracts: 109; live-surface contracts included: 58 (43 live, 15 unknown).
- Excluded by liveness: 37 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 18/27 live.
- Detected codebases: none
- Unverified dependencies: 3/9.

## Audit Coverage Summary

- Verified implementations audited: 18/38 (47.4%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 48
- Raw deployments: 58
- Audits discovered: 15
- Scoreable audits (matched contracts): 8
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/symbiosis/information))
- ASD (verified + unaudited TVL): $236,145,411.90
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 2 aging, 10 stale, 0 unknown
- Tier 1 coverage: 34.2% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 16 | 42.1% | 2024-10 |
| Omniscia | Tier 2 | 13 | 34.2% | 2022-03 |
| SlowMist | Tier 1 | 13 | 34.2% | 2022-02 |
| Decurity | Tier 2 | 2 | 5.3% | 2025-07 |
| HashCloak | Tier 2 | 2 | 5.3% | 2022-04 |
| yAudit | Tier 2 | 1 | 2.6% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | unknown | arbitrum | unit-33758 | [`0x85700e...56263f`](./contracts/arbitrum-42161/0x85700ed7c30625ed28613d75e85c58ef0056263f/) | ✅ Audited |
| BridgeV2 | unknown | ethereum | unit-33735 | [`0x552398...d7227e`](./contracts/ethereum-1/0x5523985926aa12ba58dc5ad00ddca99678d7227e/) | ✅ Audited |
| BridgeV2 | unknown | polygon | unit-33749 | [`0x552398...d7227e`](./contracts/polygon-137/0x5523985926aa12ba58dc5ad00ddca99678d7227e/) | ✅ Audited |
| BridgeV2 | unknown | base | unit-33751 | [`0x8097f0...bb222f`](./contracts/base-8453/0x8097f0b9f06c27af9579f75762f971d745bb222f/) | ✅ Audited |
| BridgeV2 | unknown | arbitrum | unit-33756 | [`0x552398...d7227e`](./contracts/arbitrum-42161/0x5523985926aa12ba58dc5ad00ddca99678d7227e/) | ✅ Audited |
| BridgeV2 | unknown | avalanche | unit-33759 | [`0x292fc5...824d62`](./contracts/avalanche-43114/0x292fc50e4eb66c3f6514b9e402dbc25961824d62/) | ✅ Audited |
| Depository | unknown | arbitrum | n/a | 3 deployments: ethereum `0x84deb7...f941a8`; arbitrum [`0x84b104...108a73`](./contracts/arbitrum-42161/0x84b10469db07446d5fc7156aefdd6b7117108a73/); avalanche `0xe7eb02...3f5c4e` | ✅ Audited |
| MetaRouter | adapter | optimism | n/a | 4 deployments: ethereum `0xf621fb...66ff7f`; optimism [`0x0f9105...68f5d2`](./contracts/optimism-10/0x0f91052dc5b4bae53d0fea5dae561a117268f5d2/); polygon `0xa260e3...077978`; arbitrum `0xf7e962...f45dde` | ✅ Audited |
| MetaRouterGateway | adapter | optimism | n/a | 5 deployments: ethereum `0xfcef2f...512bcd`; optimism [`0x200a0f...fd12b5`](./contracts/optimism-10/0x200a0fe876421dc49a26508e3efd0a1008fd12b5/); polygon `0xab8365...b0f30c`; arbitrum `0x80dddd...fedaf9`; avalanche `0x4cfa66...c64e4a` | ✅ Audited |
| Portal | unknown | ethereum | unit-33743 | [`0xb8f275...9e81a8`](./contracts/ethereum-1/0xb8f275fbf7a959f4bce59999a2ef122a099e81a8/) | ✅ Audited |
| Portal | unknown | optimism | unit-33748 | [`0x292fc5...824d62`](./contracts/optimism-10/0x292fc50e4eb66c3f6514b9e402dbc25961824d62/) | ✅ Audited |
| Portal | unknown | polygon | unit-33750 | [`0xb8f275...9e81a8`](./contracts/polygon-137/0xb8f275fbf7a959f4bce59999a2ef122a099e81a8/) | ✅ Audited |
| Portal | unknown | arbitrum | unit-33752 | [`0x01a3c8...9c24d9`](./contracts/arbitrum-42161/0x01a3c8e513b758ebb011f7afaf6c37616c9c24d9/) | ✅ Audited |
| Portal | unknown | avalanche | unit-33760 | [`0xe75c7e...ba9877`](./contracts/avalanche-43114/0xe75c7e85fe6add07077467064ad15847e6ba9877/) | ✅ Audited |
| Symbiosis | unknown | ethereum | n/a | [`0xd38bb4...c76dd9`](./contracts/ethereum-1/0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9/) | ✅ Audited |
| SyntERC20 | token | ethereum | n/a | [`0x70b7f7...a0cda1`](./contracts/ethereum-1/0x70b7f7044d2ca8e2f1e999b90ef16d7cb7a0cda1/) | ✅ Audited |
| SyntFabric | unknown | ethereum | unit-33744 | [`0xbbfb7c...769428`](./contracts/ethereum-1/0xbbfb7cb70f84fb6fe1cb13e42a0b71efde769428/) | ✅ Audited |
| Synthesis | unknown | ethereum | unit-33745 | [`0xd7c3df...dd38b3`](./contracts/ethereum-1/0xd7c3df25683871d18bc838e4f619126442dd38b3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | unit-33746 | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| GravityTokenG | token | ethereum | n/a | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | ⚠️ Unaudited |
| BranchedUnlocker | unknown | ethereum | n/a | [`0x22278f...5fd9a1`](./contracts/ethereum-1/0x22278fe9a52a8ccb3a914f3f61bb6c70fe5fd9a1/) | ⚠️ Unaudited |
| BtcRefundUnlocker | unknown | ethereum | n/a | [`0x9a99eb...10c9f0`](./contracts/ethereum-1/0x9a99eb7e9794ef5a7c00c87d64ee067cfc10c9f0/) | ⚠️ Unaudited |
| DepositoryDst | unknown | arbitrum | unit-33755 | [`0x4ac560...3be547`](./contracts/arbitrum-42161/0x4ac560a3a8fadd1662cf9439bb1114abaa3be547/) | ⚠️ Unaudited |
| DepositorySrc | unknown | arbitrum | unit-33757 | [`0x695eea...02e840`](./contracts/arbitrum-42161/0x695eeaece7ce4502850b1f6b4f14b97dba02e840/) | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ⚠️ Unaudited |
| FflonkVerifier | periphery | ethereum | n/a | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-33741 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| OFTMock | unknown | ethereum | n/a | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ad82b...0778d4`](./contracts/ethereum-1/0x8ad82b29261a9657a89a299dac3bfe01880778d4/); ethereum `0x943ed4...1ca66e` | ⚠️ Unaudited |
| SymbiosisTokenVesting | operational_periphery | ethereum | n/a | [`0x931c67...9f48f6`](./contracts/ethereum-1/0x931c6728470394507049f5642bab16da029f48f6/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimedUnlocker | unknown | ethereum | n/a | [`0xec148f...ed8a3b`](./contracts/ethereum-1/0xec148f80d699b0eaf65dd5438cde4b380ded8a3b/) | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WithdrawUnlocker | unknown | ethereum | n/a | [`0xcd1080...34341e`](./contracts/ethereum-1/0xcd108089057dd0e9f841eb9e00fcf5105534341e/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

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
| UnnamedContract | unknown | avalanche | n/a | `0x6f0f63...a139cf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/symbiosis/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Symbiosis Staking - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Staking/Symbiosis%20Staking%20-%20Decurity.pdf) | Decurity | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2022 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202022%20-%20Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Relayers Network 2024 - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Relayers%20Network/Symbiosis%20Relayers%20Network%202024%20-%20Decurity.pdf) | Decurity | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [Symbiosis Frontend App - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Frontend%20App/Symbiosis%20Frontend%20App%20-%20Decurity.pdf) | Decurity | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Protocol Audit - HashCloak.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol%20Terra/core/Symbiosis%20Protocol%20Audit%20-%20HashCloak.pdf) | HashCloak | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |
| [Symbiosis Protocol Audit - Omniscia.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Omniscia.pdf) | Omniscia | Audit | 2022-03 | stale | Direct | contract_name | 13 | high |
| [Symbiosis Protocol Audit - SlowMist.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20SlowMist.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | 13 | high |
| [Symbiosis Protocol Audit - Zokyo.pdf (also discovered via alternate URL)](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/core/Symbiosis%20Protocol%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-02 | stale | Direct | contract_name | 18 | high |
| [Symbiosis Depository Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/depository/Symbiosis%20Depository%20Audit%20-%20Decurity.pdf) | yAudit | Audit | 2025-10 | fresh | Direct | contract_name | 3 | high |
| [Symbiosis Protocol MRv3 Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/metarouter-v3/Symbiosis%20Protocol%20MRv3%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | contract_name | 22 | high |
| [Symbiosis Onchain Swap Audit - Decurity.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/onchain-swap/Symbiosis%20Onchain%20Swap%20Audit%20-%20Decurity.pdf) | Decurity | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis Pool Audit - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/pool/Symbiosis%20Pool%20Audit%20-%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [Symbiosis TON Bridge v2 - Zokyo.pdf](https://github.com/symbiosis-finance/audits/blob/master/Symbiosis%20Protocol/ton-bridge/Symbiosis%20TON%20Bridge%20v2%20-%20Zokyo.pdf) | Zokyo | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x22278f...5fd9a1`](./contracts/ethereum-1/0x22278fe9a52a8ccb3a914f3f61bb6c70fe5fd9a1/) | BranchedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a99eb...10c9f0`](./contracts/ethereum-1/0x9a99eb7e9794ef5a7c00c87d64ee067cfc10c9f0/) | BtcRefundUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9a0e...38e6e9`](./contracts/ethereum-1/0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9/) | FflonkVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | OFTMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x931c67...9f48f6`](./contracts/ethereum-1/0x931c6728470394507049f5642bab16da029f48f6/) | SymbiosisTokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec148f...ed8a3b`](./contracts/ethereum-1/0xec148f80d699b0eaf65dd5438cde4b380ded8a3b/) | TimedUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd1080...34341e`](./contracts/ethereum-1/0xcd108089057dd0e9f841eb9e00fcf5105534341e/) | WithdrawUnlocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 3 |
| standard_library | 19 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=95

Zero-match audit list:

- [2094] Symbiosis Staking - Decurity.pdf
- [2095] Symbiosis Relayers Network 2022 - Decurity.pdf
- [2097] Symbiosis Frontend App - Decurity.pdf
- [14787] Symbiosis Onchain Swap Audit - Decurity.pdf
- [14788] Symbiosis Pool Audit - Zokyo.pdf
- [14789] Symbiosis TON Bridge - Zokyo.pdf

Fork inheritance lineage and inherited audits are included when available.
