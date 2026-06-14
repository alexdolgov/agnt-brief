# Agentic Audit Brief: Templar DAO

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Templar DAO (`templar-dao`)
- Website: [https://templar.finance/](https://templar.finance/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-14T09:07:41.155Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-403f
- Chains: bsc, moonriver
- Contract surface: 41 unique implementations (66 raw deployments)
- DeFi Llama TVL: $2,184,081.00
- On-chain TVL (included contracts): $1,554,255.18
- TVL by chain: Bsc $1,554,255.18

## Project Description

Templar DAO is described in current public metadata as a reserve-currency and hedge-fund/treasury-reverse protocol, available cross-chain on BSC and MOVR. Its BSC contract surface includes TemplarToken/TEM-related token, treasury, and staking components; the current evidence does not independently verify use of the TEMPLAR symbol over TEM/TemplarToken.

### Architecture

The TemplarToken is the central asset, while Staking and MasterChef contracts distribute rewards to stakers, likely using the token as the primary incentive.

## Audit Coverage Summary

- Verified implementations audited: 0/26 (0.0%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 41
- Raw deployments: 66
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,554,255.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $1,554,255.18 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TemplarToken | token | bsc | [`0x19e6bf...45df01`](./contracts/bsc-56/0x19e6bfc1a6e4b042fb20531244d47e252445df01/) | ⚠️ Unaudited |
| BondDepository | unknown | bsc | 10 deployments: bsc [`0x061bb1...a79ac8`](./contracts/bsc-56/0x061bb1a6aecb179b79ae5da6bae179f1d1a79ac8/); bsc `0x09f67d...0588d4`; bsc `0x0d4f50...2d8273`; bsc `0x1b8338...8dc710`; bsc `0x374100...4e48f7`; bsc `0x8baaef...94780f`; bsc `0xd93e4d...59ab7e`; bsc `0xe59551...fcbe74`; bsc `0xe6f0a8...278ee2`; bsc `0xf171ef...973d62` | ⚠️ Unaudited |
| BondingCalculator | unknown | bsc | [`0xd7fe34...0a5ddd`](./contracts/bsc-56/0xd7fe341fce9f3882d57eba5692221877830a5ddd/) | ⚠️ Unaudited |
| BondManager | governance | bsc | [`0xfb0c26...fcff58`](./contracts/bsc-56/0xfb0c2645a7bc2c466a3834e6170437d239fcff58/) | ⚠️ Unaudited |
| BondReferral | unknown | bsc | [`0xc90490...a1de3c`](./contracts/bsc-56/0xc90490ae5f2a5a4161343e525e0aa204eba1de3c/) | ⚠️ Unaudited |
| BridgeHelper | operational_periphery | bsc | [`0xaf4053...140b2d`](./contracts/bsc-56/0xaf4053d37309df4d295a6e0f64bc8b2039140b2d/) | ⚠️ Unaudited |
| BridgeReceiver | operational_periphery | bsc | [`0x3df667...0a967b`](./contracts/bsc-56/0x3df6678e78ad7b5fb2e307dc8033dff2b10a967b/) | ⚠️ Unaudited |
| DAOsFund | unknown | bsc | [`0xfd67f4...e60a2d`](./contracts/bsc-56/0xfd67f44f1814e178ee963d3926e21e85dbe60a2d/) | ⚠️ Unaudited |
| Distributor | operational_periphery | bsc | [`0x377896...891c13`](./contracts/bsc-56/0x377896d053a2b17cabcb9d7b1afdada5af891c13/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | [`0xea724d...1fe788`](./contracts/bsc-56/0xea724dea000b5e5206d28f4bc2dad5f2fa1fe788/) | ⚠️ Unaudited |
| ManagerFund | governance | bsc | 4 deployments: bsc [`0x1e1ed3...026c61`](./contracts/bsc-56/0x1e1ed3f2cb818ed165f2018d1c776b4e69026c61/); bsc `0x6ca5c8...5a80ba`; bsc `0x8049ff...94b6fa`; bsc `0xc06cd9...a0bbe2` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | 2 deployments: bsc [`0x4832b9...d88b20`](./contracts/bsc-56/0x4832b9911114af706d529251979894405fd88b20/); bsc `0xffc7b9...2d0eb5` | ⚠️ Unaudited |
| PoolFund | core_logic | bsc | 2 deployments: bsc [`0x77316b...0e30ae`](./contracts/bsc-56/0x77316b0dacc23cce10f1fcfce388ac81870e30ae/); bsc `0xa1dcc9...14cb45` | ⚠️ Unaudited |
| RedeemHelper | periphery | bsc | [`0x38b306...2a075e`](./contracts/bsc-56/0x38b306cdb3d35e03cff6bc59da96b1212d2a075e/) | ⚠️ Unaudited |
| ReserveFund | unknown | bsc | [`0xebe9da...7c9f93`](./contracts/bsc-56/0xebe9da74d7d5dc5203776264e7610ae76d7c9f93/) | ⚠️ Unaudited |
| Staking | unknown | bsc | 2 deployments: bsc [`0xa1f61c...5a9324`](./contracts/bsc-56/0xa1f61ca61fe8655d2a204b518f6de964145a9324/); moonriver [`0xa1f61c...5a9324`](./contracts/moonriver-1285/0xa1f61ca61fe8655d2a204b518f6de964145a9324/) | ⚠️ Unaudited |
| StakingHelper | periphery | bsc | [`0x8dd1ff...feea87`](./contracts/bsc-56/0x8dd1ff96c1b2766c4479c802687b44c5e8feea87/) | ⚠️ Unaudited |
| StakingWarmup | unknown | bsc | [`0xcbffde...d88105`](./contracts/bsc-56/0xcbffdeb456aa6b35ac345dbe14776c1d99d88105/) | ⚠️ Unaudited |
| SwordToken | token | bsc | [`0x8c9827...2334b9`](./contracts/bsc-56/0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9/) | ⚠️ Unaudited |
| TemplarBridge | operational_periphery | bsc | 2 deployments: bsc [`0x26bcad...b82f70`](./contracts/bsc-56/0x26bcadd5f0082e59194e271252568c1a56b82f70/); bsc `0xd1e549...2d156b` | ⚠️ Unaudited |
| TemplarMoney | unknown | bsc | [`0x194d1d...cc2966`](./contracts/bsc-56/0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966/) | ⚠️ Unaudited |
| TemplarRouter | adapter | bsc | 5 deployments: bsc [`0x122668...57db5e`](./contracts/bsc-56/0x12266820147fcca397f3607a814df6982557db5e/); bsc `0x8d1ae2...106c40`; bsc `0x9ce6ee...a255d8`; bsc `0xc0f143...c6385c`; bsc `0xfce936...104754` | ⚠️ Unaudited |
| TemplarRouterMin | adapter | bsc | [`0x26cb3f...87fa99`](./contracts/bsc-56/0x26cb3f08133be04bf502cd4bf95536c43087fa99/) | ⚠️ Unaudited |
| Timelock | governance | bsc | [`0x6056d9...e14b71`](./contracts/bsc-56/0x6056d9271d4784ed8a33bd6adc10f372c0e14b71/) | ⚠️ Unaudited |
| Treasury | operational_periphery | bsc | 6 deployments: bsc [`0x1cc499...e39752`](./contracts/bsc-56/0x1cc4994bc2bbc6e5ada11c7b90005e57eee39752/); bsc `0x49f368...e248dd`; bsc `0x650e26...6d118a`; bsc `0xca5eea...d463e8`; bsc `0xd01e8d...2b4c27`; moonriver `0xd01e8d...2b4c27` | ⚠️ Unaudited |
| WrapSword | unknown | bsc | [`0x66972b...36dabb`](./contracts/bsc-56/0x66972b14e525374dce713ce14c8d080f3036dabb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x12d0ee...48ff22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x142457...e246de` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x24a53d...6b9051` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x441a8e...727219` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x778f61...b59fee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8216a2...c620cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9e8cbb...849bfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa26078...fc4952` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa9aa47...0db743` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xafde5a...760c23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb68c0b...c1f01d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc3cfb3...a2a47e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc90500...9b00e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc91b6e...961116` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe1dbcd...1af364` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x19e6bf...45df01`](./contracts/bsc-56/0x19e6bfc1a6e4b042fb20531244d47e252445df01/) | TemplarToken | token | $1,554,255.18 | Verified native implementation with $1,554,255.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x061bb1...a79ac8`](./contracts/bsc-56/0x061bb1a6aecb179b79ae5da6bae179f1d1a79ac8/) | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd7fe34...0a5ddd`](./contracts/bsc-56/0xd7fe341fce9f3882d57eba5692221877830a5ddd/) | BondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfb0c26...fcff58`](./contracts/bsc-56/0xfb0c2645a7bc2c466a3834e6170437d239fcff58/) | BondManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc90490...a1de3c`](./contracts/bsc-56/0xc90490ae5f2a5a4161343e525e0aa204eba1de3c/) | BondReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaf4053...140b2d`](./contracts/bsc-56/0xaf4053d37309df4d295a6e0f64bc8b2039140b2d/) | BridgeHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3df667...0a967b`](./contracts/bsc-56/0x3df6678e78ad7b5fb2e307dc8033dff2b10a967b/) | BridgeReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd67f4...e60a2d`](./contracts/bsc-56/0xfd67f44f1814e178ee963d3926e21e85dbe60a2d/) | DAOsFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x377896...891c13`](./contracts/bsc-56/0x377896d053a2b17cabcb9d7b1afdada5af891c13/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e1ed3...026c61`](./contracts/bsc-56/0x1e1ed3f2cb818ed165f2018d1c776b4e69026c61/) | ManagerFund | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4832b9...d88b20`](./contracts/bsc-56/0x4832b9911114af706d529251979894405fd88b20/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x77316b...0e30ae`](./contracts/bsc-56/0x77316b0dacc23cce10f1fcfce388ac81870e30ae/) | PoolFund | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x38b306...2a075e`](./contracts/bsc-56/0x38b306cdb3d35e03cff6bc59da96b1212d2a075e/) | RedeemHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xebe9da...7c9f93`](./contracts/bsc-56/0xebe9da74d7d5dc5203776264e7610ae76d7c9f93/) | ReserveFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa1f61c...5a9324`](./contracts/bsc-56/0xa1f61ca61fe8655d2a204b518f6de964145a9324/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8dd1ff...feea87`](./contracts/bsc-56/0x8dd1ff96c1b2766c4479c802687b44c5e8feea87/) | StakingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcbffde...d88105`](./contracts/bsc-56/0xcbffdeb456aa6b35ac345dbe14776c1d99d88105/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c9827...2334b9`](./contracts/bsc-56/0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9/) | SwordToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26bcad...b82f70`](./contracts/bsc-56/0x26bcadd5f0082e59194e271252568c1a56b82f70/) | TemplarBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x194d1d...cc2966`](./contracts/bsc-56/0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966/) | TemplarMoney | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x122668...57db5e`](./contracts/bsc-56/0x12266820147fcca397f3607a814df6982557db5e/) | TemplarRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26cb3f...87fa99`](./contracts/bsc-56/0x26cb3f08133be04bf502cd4bf95536c43087fa99/) | TemplarRouterMin | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6056d9...e14b71`](./contracts/bsc-56/0x6056d9271d4784ed8a33bd6adc10f372c0e14b71/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1cc499...e39752`](./contracts/bsc-56/0x1cc4994bc2bbc6e5ada11c7b90005e57eee39752/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66972b...36dabb`](./contracts/bsc-56/0x66972b14e525374dce713ce14c8d080f3036dabb/) | WrapSword | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
