# Agentic Audit Brief: Vesper

## Project Overview

- Project: Vesper (`vesper`)
- Website: [https://vesper.finance/](https://vesper.finance/)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-10T20:59:18.586Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 44 unique implementations (147 raw deployments)
- DeFi Llama TVL: $44,440,251.37
- On-chain TVL (included contracts): $693,983.87
- TVL by chain: Ethereum $693,983.87

## Project Description

Vesper is a multi-chain yield platform where users deposit assets into pools and related yield products that allocate funds across DeFi strategies to generate returns. The protocol includes pool-based deposits, protocol/institutional yield offerings, VSP governance/rewards, and related Metronome synthetics messaging across supported chains.

### Architecture

The VSP token serves as the governance and reward token across the protocol, while VVSP is a derivative token likely used for staking or enhanced rewards. All pools and rewards contracts are part of a single product family, sharing the same deployer and upgradeable proxy infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 20/39 (51.3%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 44
- Raw deployments: 147
- Audits discovered: 30
- Scoreable audits (matched contracts): 25
- ASD (verified + unaudited TVL): $351,723.50
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 30 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 15 | 38.5% | 2022-03 |
| CertiK | Tier 2 | 7 | 17.9% | 2021-06 |
| Dedaub | Tier 2 | 7 | 17.9% | 2022-04 |
| yAudit | Tier 2 | 4 | 10.3% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VPool | core_logic | ethereum | 17 deployments: ethereum [`0x0538c8...9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0x05b143...c8b4b6`; ethereum `0x43ef34...34f841`; ethereum `0x479dfa...2778ca`; ethereum `0x4b8a42...d807fe`; ethereum `0x4da20a...bbcf29`; ethereum `0x7e198a...5c5dd7`; ethereum `0x7f0088...9d5c0f`; ethereum `0x8b3c86...8e3639`; ethereum `0x8c2d8b...8ec6f3`; ethereum `0x8c657a...c48770`; ethereum `0xad680b...f440b5`; ethereum `0xb4edce...fd5f7d`; ethereum `0xb7cec2...6d27bf`; ethereum `0xba680a...f26e47`; ethereum `0xda92f9...42cf04`; ethereum `0xff43c3...42c257` | ✅ Audited |
| Crv3PoolStrategyDAI | core_logic | ethereum | 4 deployments: ethereum [`0x0c712f...e29ce3`](./contracts/ethereum-1/0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3/); ethereum `0x656636...e1db6f`; ethereum `0xd11e67...b3be75`; ethereum `0xe94046...1dfd1d` | ✅ Audited |
| CollateralManager | governance | ethereum | 6 deployments: ethereum [`0x6349e8...82aa83`](./contracts/ethereum-1/0x6349e8dda81c2e997130bc99827284355e82aa83/); ethereum `0x684647...d259df`; ethereum `0x8d0b8e...f3e899`; ethereum `0xabc648...bf8c18`; ethereum `0xf8ffaa...4f70bc`; ethereum `0xfa3552...a666f5` | ✅ Audited |
| Controller | governance | ethereum | 2 deployments: ethereum [`0xa4f167...bd0217`](./contracts/ethereum-1/0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217/); ethereum `0xf8ea0e...3f6067` | ✅ Audited |
| CreamStrategyETH | core_logic | ethereum | 3 deployments: ethereum [`0x3e89f1...4b447d`](./contracts/ethereum-1/0x3e89f1a781e2776bbecd101164b8d98c914b447d/); ethereum `0x7b2db7...4484ec`; ethereum `0xb92d60...e569e6` | ✅ Audited |
| Minter | operational_periphery | ethereum | 2 deployments: ethereum [`0x4bc1a2...370599`](./contracts/ethereum-1/0x4bc1a26ec4ab5948b950a64479a4046701370599/); ethereum `0x7c1482...f11397` | ✅ Audited |
| PaymentSplitter | operational_periphery | ethereum | 3 deployments: ethereum [`0x097ee0...6dafd7`](./contracts/ethereum-1/0x097ee00f42f9d7512929a6434185ae94ac6dafd7/); ethereum `0x223809...13152c`; ethereum `0xecc4be...7524df` | ✅ Audited |
| PoolAccountant | operational_periphery | ethereum | 24 deployments: ethereum [`0x011881...ca7128`](./contracts/ethereum-1/0x011881efbdbb250702f9d7ca2a74788b26ca7128/); ethereum `0x042565...760213`; ethereum `0x0879f1...e89542`; ethereum `0x13c88a...91b1fd`; ethereum `0x16cdfe...055659`; ethereum `0x2337c5...c442c0`; ethereum `0x45aba6...e5e94e`; ethereum `0x4d71a0...e5d674`; ethereum `0x64a76d...3619b5`; ethereum `0x6cf8b8...bcee2a`; ethereum `0x762ff5...20380d`; ethereum `0x7c6226...0e639e`; ethereum `0x804cd6...7bc7ed`; ethereum `0x8ad5b3...a62e0a`; ethereum `0xa17f64...a6088c`; ethereum `0xa92951...5b2cbb`; ethereum `0xc5bdba...8e5a04`; ethereum `0xc88a0a...93c4b6`; ethereum `0xd01062...b1de7c`; ethereum `0xd87b3b...25b421`; ethereum `0xdd3662...1117b4`; ethereum `0xec8c44...6f0505`; ethereum `0xfb0df6...94561a`; ethereum `0xfb7fa7...24eb44` | ✅ Audited |
| PoolRewards | core_logic | ethereum | 20 deployments: ethereum [`0x17eff8...4d417b`](./contracts/ethereum-1/0x17eff816ef9646481c8bac6a50b3c9a67f4d417b/); ethereum `0x31d9b0...8ee863`; ethereum `0x3a7644...d16653`; ethereum `0x4279cc...c01106`; ethereum `0x479a86...295f8d`; ethereum `0x487f4f...9e9211`; ethereum `0x4a5398...bd5486`; ethereum `0x4a7ce5...951d5c`; ethereum `0x6d7746...e64153`; ethereum `0x8a36f2...f6fbb7`; ethereum `0x935673...9dc738`; ethereum `0xa72054...a0bfaa`; ethereum `0xb8208c...c8906d`; ethereum `0xc1fe9a...d17749`; ethereum `0xca9aee...2fdec5`; ethereum `0xd59996...0343b0`; ethereum `0xe2751f...acb121`; ethereum `0xe82cec...2e7a9f`; ethereum `0xec5a0f...512a3e`; ethereum `0xf9fbc8...cc064c` | ✅ Audited |
| SwapManager | governance | ethereum | [`0xc48ea9...010174`](./contracts/ethereum-1/0xc48ea9a2daa4d816e4c9333d6689c70070010174/) | ✅ Audited |
| VBTC | unknown | ethereum | [`0xd773ca...af168b`](./contracts/ethereum-1/0xd773ca264b5363f25f7f96319076753849af168b/) | ✅ Audited |
| VesperEarnDrip | unknown | ethereum | 5 deployments: ethereum [`0x339b20...6b3b08`](./contracts/ethereum-1/0x339b20136282a9de3a6fc448b5ba9534116b3b08/); ethereum `0x7b0729...829eef`; ethereum `0xb76ec4...a641f9`; ethereum `0xbc390a...68dff6`; ethereum `0xea6c37...564791` | ✅ Audited |
| VesperMakerStrategyETH | core_logic | ethereum | [`0x980e76...c8e697`](./contracts/ethereum-1/0x980e7693fdbba39ba75a9be85cda6c336ec8e697/) | ✅ Audited |
| VesperMakerStrategyLINK | core_logic | ethereum | 2 deployments: ethereum [`0x59543a...ad29c0`](./contracts/ethereum-1/0x59543a595b69897b295f12964d3c7c37b3ad29c0/); ethereum `0x636a02...f54409` | ✅ Audited |
| VETH | unknown | ethereum | 4 deployments: ethereum [`0x103cc1...e54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/); ethereum `0x804f33...c82ea3`; ethereum `0xa89566...07d2b3`; ethereum `0xe4e3da...f39a29` | ✅ Audited |
| VLINK | unknown | ethereum | [`0x0a27e9...93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ✅ Audited |
| VSP | unknown | ethereum | [`0x1b4018...998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ✅ Audited |
| VSPStrategy | core_logic | ethereum | 4 deployments: ethereum [`0x2a1b6f...bc94f4`](./contracts/ethereum-1/0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4/); ethereum `0x94c7c5...334e7e`; ethereum `0xd5579a...e32aa2`; ethereum `0xfd61f9...5794b6` | ✅ Audited |
| VUSDC | unknown | ethereum | 7 deployments: ethereum [`0x0648e5...7957cf`](./contracts/ethereum-1/0x0648e517670d71ba46d7a27ba04677db7c7957cf/); ethereum `0x0c4906...bf113d`; ethereum `0x4a4a54...411101`; ethereum `0x56ee98...2e581b`; ethereum `0x777a78...49cf85`; ethereum `0x85c786...547a46`; ethereum `0xb1c0d6...3bcde5` | ✅ Audited |
| VVSP | unknown | ethereum | [`0xba4cfe...ecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VWBTC | token | ethereum | 2 deployments: ethereum [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/); ethereum `0xcc9be1...ac0605` | ⚠️ Unaudited |
| VBetaWBTC | token | ethereum | [`0x74cc5b...88a8af`](./contracts/ethereum-1/0x74cc5bc20b0c396df5680ee4aeb6169a6288a8af/) | ⚠️ Unaudited |
| VUSDT | token | ethereum | [`0x95c0b3...13bdff`](./contracts/ethereum-1/0x95c0b30c6276e67ae95127af458573a63113bdff/) | ⚠️ Unaudited |
| Address | unknown | ethereum | 2 deployments: ethereum [`0x6b9eb0...65e679`](./contracts/ethereum-1/0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679/); ethereum `0x7d1e43...eee6be` | ⚠️ Unaudited |
| CreamStrategyUSDT | core_logic | ethereum | 3 deployments: ethereum [`0x5a6aad...5f6314`](./contracts/ethereum-1/0x5a6aad61ca0e3d45457628f82d493101a85f6314/); ethereum `0x8eacba...89590b`; ethereum `0xc7e98c...5fd6c8` | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | 3 deployments: ethereum [`0x469c9f...400d2f`](./contracts/ethereum-1/0x469c9fb59ebc19e141927c0308d98f2a9c400d2f/); ethereum `0x693c78...2b6cfb`; ethereum `0xe67516...94bf73` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | ethereum | 2 deployments: ethereum [`0x5d72a9...afca80`](./contracts/ethereum-1/0x5d72a9f081990219c97af877e0e79eadaeafca80/); ethereum `0xda5e6d...368b2d` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x19a02f...2798ca`](./contracts/ethereum-1/0x19a02f3512bdf78114b3c50f7d22a34b1b2798ca/) | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 5 deployments: ethereum [`0x0d858d...cb754f`](./contracts/ethereum-1/0x0d858d6d96a8b40414ec54b3019aaee431cb754f/); ethereum `0x11e21c...cc80ed`; ethereum `0x23140f...94db99`; ethereum `0x6cb3b9...727fff`; ethereum `0xbdb0fb...5d93ae` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 4 deployments: ethereum [`0x0e2ba4...7faf49`](./contracts/ethereum-1/0x0e2ba4df2ab32fcc0a6975093e040568b37faf49/); ethereum `0x813e89...902bd8`; ethereum `0x8b609c...14b9d9`; ethereum `0xe6cffe...76ff12` | ⚠️ Unaudited |
| VBetaETH | unknown | ethereum | [`0x2c3619...b87abf`](./contracts/ethereum-1/0x2c361913e2da663e1898162ec01497c46eb87abf/) | ⚠️ Unaudited |
| VBetaUSDC | unknown | ethereum | [`0x1e8604...a7097f`](./contracts/ethereum-1/0x1e86044468b92c310800d4b350e0f83387a7097f/) | ⚠️ Unaudited |
| VDAI | unknown | ethereum | [`0xca0c34...014d80`](./contracts/ethereum-1/0xca0c34a3f35520b9490c1d58b35a19ab64014d80/) | ⚠️ Unaudited |
| VesperV3StrategyDAI | core_logic | ethereum | [`0x0e2ddf...4d3db4`](./contracts/ethereum-1/0x0e2ddfc22afed1ac0476685fb81cc237434d3db4/) | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VSPT | unknown | ethereum | [`0xaff40f...f1a736`](./contracts/ethereum-1/0xaff40fc748bb27ceffed88c0e9fd39027ff1a736/) | ⚠️ Unaudited |
| VUNI | unknown | ethereum | [`0xf858a3...fb40ae`](./contracts/ethereum-1/0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x334fa9...4cabd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x37b54f...60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x861db1...71a0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0222d...4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf502d1...4602ce` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-Bloq-11_11_20.pdf](https://github.com/vesperfi/doc/blob/main/audit/v1/REP-Bloq-11_11_20.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 32 | high |
| [REP-Bloq-VesperPools-20_01_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq-VesperPools-20_01_2021.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | high |
| [REP-Bloq_15_02_2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/REP-Bloq_15_02_2021.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 3 | high |
| [Vesper Pools Security - Fourth Audit v210119.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Fourth%20Audit%20v210119.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 6 | high |
| [Vesper Pools Security - PaymentSplitter Audit v210210.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20PaymentSplitter%20Audit%20v210210.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 3 | high |
| [Vesper Pools Security - Second Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Second%20Audit%20v201230.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 32 | high |
| [Vesper Pools Security - Third Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20-%20Third%20Audit%20v201230.pdf) | unknown | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |
| [Vesper Pools Security Audit v201230.pdf](https://github.com/vesperfi/doc/blob/main/audit/v2/Vesper%20Pools%20Security%20Audit%20v201230.pdf) | yAudit | Audit | 2020-09 | stale | Direct | contract_name | 13 | high |
| [Coinspect - Smart Contract Audit - Vesper - Nov 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20-%20Nov%202021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 52 | high |
| [Coinspect - Smart Contract Audit - Vesper Earn - September 2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Earn%20-%20September%202021.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 24 | high |
| [Coinspect - Smart Contract Audit - Vesper Pools February 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20February%202022.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 61 | high |
| [Coinspect - Smart Contract Audit - Vesper Pools January 2022.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Vesper%20Pools%20January%202022.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 70 | high |
| [PRE-Bloq_ Vesper Pools V3-2021-06-26-certik.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/PRE-Bloq_%20Vesper%20Pools%20V3-2021-06-26-certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 55 | high |
| [Vesper Pools audit-poolv2-dedaub-April-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20audit-poolv2-dedaub-April-2021.pdf) | Dedaub | Audit | 2021-04 | stale | Direct | contract_name | 8 | high |
| [Vesper Pools v3 audit-dedaub-May-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub-May-2021.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | contract_name | 7 | high |
| [Vesper Pools v3 audit-dedaub.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%20v3%20audit-dedaub.pdf) | Dedaub | Audit | 2021-05 | stale | Direct | contract_name | 7 | high |
| [Vesper Pools+Strategies September-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools%2BStrategies%20September-2021.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Vesper Pools-Dedaub-Nov-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Pools-Dedaub-Nov-2021.pdf) | Dedaub | Audit | 2021-11 | stale | Direct | contract_name | 20 | high |
| [Vesper Strategies - April v210428.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20Strategies%20-%20April%20v210428.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 8 | high |
| [Vesper V3 - 2nd Review - v2-may-2021.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v2-may-2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | medium |
| [Vesper V3 - 2nd Review - v210519 (1).pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper%20V3%20-%202nd%20Review%20-%20v210519%20(1).pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | medium |
| [Vesper-Pools-Audit-Coinspect-Jan21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Jan21.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 6 | high |
| [Vesper-Pools-Audit-Coinspect-March21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March21.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | 11 | high |
| [Vesper-Pools-Audit-Coinspect-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-March22.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Audit-Coinspect-Nov21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Nov21.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 52 | high |
| [Vesper-Pools-Audit-Coinspect-Sept21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Coinspect-Sept21.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 24 | high |
| [Vesper-Pools-Audit-Dedaub-April 22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-April%2022.pdf) | Dedaub | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Audit-Dedaub-Oct21.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Audit-Dedaub-Oct21.pdf) | Dedaub | Audit | 2021-10 | stale | Direct | contract_name | 20 | high |
| [Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf) | Halborn | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf](https://github.com/vesperfi/doc/blob/main/audit/v3%2B/Vesper-Pools-Synth-VUSD-Deltas-Dedaub-March22.pdf) | Dedaub | Audit | 2022-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4b2e76...b1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | VWBTC | token | $351,350.94 | Verified native implementation with $351,350.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74cc5b...88a8af`](./contracts/ethereum-1/0x74cc5bc20b0c396df5680ee4aeb6169a6288a8af/) | VBetaWBTC | token | $369.56 | Verified native implementation with $369.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95c0b3...13bdff`](./contracts/ethereum-1/0x95c0b30c6276e67ae95127af458573a63113bdff/) | VUSDT | token | $3.00 | Verified native implementation with $3.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a6aad...5f6314`](./contracts/ethereum-1/0x5a6aad61ca0e3d45457628f82d493101a85f6314/) | CreamStrategyUSDT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469c9f...400d2f`](./contracts/ethereum-1/0x469c9fb59ebc19e141927c0308d98f2a9c400d2f/) | MerkleBox | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d72a9...afca80`](./contracts/ethereum-1/0x5d72a9f081990219c97af877e0e79eadaeafca80/) | MiniArmyKnife | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915ce...7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2ba4...7faf49`](./contracts/ethereum-1/0x0e2ba4df2ab32fcc0a6975093e040568b37faf49/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c3619...b87abf`](./contracts/ethereum-1/0x2c361913e2da663e1898162ec01497c46eb87abf/) | VBetaETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e8604...a7097f`](./contracts/ethereum-1/0x1e86044468b92c310800d4b350e0f83387a7097f/) | VBetaUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca0c34...014d80`](./contracts/ethereum-1/0xca0c34a3f35520b9490c1d58b35a19ab64014d80/) | VDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2ddf...4d3db4`](./contracts/ethereum-1/0x0e2ddfc22afed1ac0476685fb81cc237434d3db4/) | VesperV3StrategyDAI | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb791a8...a47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | VirtualDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaff40f...f1a736`](./contracts/ethereum-1/0xaff40fc748bb27ceffed88c0e9fd39027ff1a736/) | VSPT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf858a3...fb40ae`](./contracts/ethereum-1/0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae/) | VUNI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677ddb...da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=23, medium=2
- Match method counts: extraction_exact=520

Zero-match audit list:

- [4867] Vesper Pools Security - Third Audit v201230.pdf
- [4877] Vesper Pools+Strategies September-2021.pdf
- [4884] Vesper-Pools-Audit-Coinspect-March22.pdf
- [4887] Vesper-Pools-Audit-Dedaub-April 22.pdf
- [4889] Vesper-Pools-Strategies-Audit-Halborn-Aug-22.pdf

Fork inheritance lineage and inherited audits are included when available.
