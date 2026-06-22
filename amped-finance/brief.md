# Agentic Audit Brief: Amped Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 73.4% over 90 days

## Project Overview

- Project: Amped Finance (`amped-finance`)
- Website: [https://amped.finance/](https://amped.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T13:48:18.996Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: base, berachain, sonic
- Contract surface: 24 unique implementations (52 raw deployments)
- DeFi Llama TVL: $370.35
- On-chain TVL (included contracts): $93.16
- TVL by chain: Sonic $93.16

## Project Description

Amped Finance is a decentralized perpetual exchange and yield platform that enables leveraged trading, liquidity provision, and token vesting across multiple chains. It uses a multi-token system with GLP as a liquidity provider token, USDG as a stablecoin, and EsGMX for rewards, all managed through a central Vault and supporting oracles and routers.

### Architecture

Each chain deployment is a self-contained instance of the protocol with identical contract structures, sharing no cross-chain infrastructure. Within each chain, the Vault acts as the core logic hub, interacting with tokens (GLP, USDG, EsGMX), price feeds, and routers to facilitate trading and liquidity operations.

## Contract Surface Quality

- Indexed contracts: 385; live-surface contracts included: 52 (52 live, 0 unknown).
- Excluded by liveness: 333 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 12; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/21 (14.3%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 24
- Raw deployments: 52
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $93.16
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $93.16 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 9.5% | 2024-05 |
| BlockApex | Tier 2 | 1 | 4.8% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PositionRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x69e445...c34d5b`](./contracts/sonic-146/0x69e44517d74709d552a69046585bef02d8c34d5b/); base `0xff2b29...e47bdb` | ✅ Audited |
| Timelock | governance | base | n/a | 3 deployments: sonic `0xe97055...c210b5`; base [`0x69e445...c34d5b`](./contracts/base-8453/0x69e44517d74709d552a69046585bef02d8c34d5b/); berachain `0xfce9fb...7e726e` | ✅ Audited |
| YieldBearingALPVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x9a2a58...c8dd13`](./contracts/sonic-146/0x9a2a5864b906d734dcc2a352ff22046fa5c8dd13/); sonic `0xfa9a3a...8d3a34` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | sonic | n/a | 2 deployments: sonic [`0x5b8caa...49c7da`](./contracts/sonic-146/0x5b8caae7cc6ea61fb96fd251c4bc13e48749c7da/); berachain `0xc3727b...bd2f48` | ⚠️ Unaudited |
| AmpedOFT | unknown | sonic | n/a | [`0x4cae73...c04fca`](./contracts/sonic-146/0x4cae73a23078e7a94d1e828fa3baba5080c04fca/) | ⚠️ Unaudited |
| AmpedRewardsRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x0296c7...3cc3bb`](./contracts/sonic-146/0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb/); sonic `0xb2663b...65937f` | ⚠️ Unaudited |
| AmpedStakingRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x19ae11...afb768`](./contracts/sonic-146/0x19ae11ffe762b58f2595b5f7b511a6e748afb768/); sonic `0xd6d873...35a15e` | ⚠️ Unaudited |
| AmpedSwapRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x1d4ab8...acc3bc`](./contracts/sonic-146/0x1d4ab8cc7552f76654cfae4155854e5235acc3bc/); sonic `0xe8b485...2c6a4a` | ⚠️ Unaudited |
| AmpOFT | unknown | sonic | n/a | 3 deployments: sonic [`0xac6114...01c1b4`](./contracts/sonic-146/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/); base [`0xac6114...01c1b4`](./contracts/base-8453/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/); berachain [`0xac6114...01c1b4`](./contracts/berachain-80094/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/) | ⚠️ Unaudited |
| EsGMX | unknown | sonic | n/a | [`0x1ab023...6e9ed8`](./contracts/sonic-146/0x1ab02347d787a144a7fbc934a9b96420d46e9ed8/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | sonic | n/a | [`0x04417b...32f756`](./contracts/sonic-146/0x04417bb69dd1070d5c95d57534adb1365c32f756/) | ⚠️ Unaudited |
| GlpManager | governance | sonic | n/a | [`0x4de729...64e430`](./contracts/sonic-146/0x4de729b85ddb172f1bb775882f355ba25764e430/) | ⚠️ Unaudited |
| OrderBook | unknown | base | n/a | 2 deployments: sonic `0x4abaaa...644689`; base [`0x308b06...5955dc`](./contracts/base-8453/0x308b06b2c91705af88e2f90ab978084eb15955dc/) | ⚠️ Unaudited |
| PositionManager | governance | sonic | n/a | [`0x68b87d...1c02c4`](./contracts/sonic-146/0x68b87dee9f6e63c41b6b98333beff257e21c02c4/) | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x0da1ff...841a4c`](./contracts/sonic-146/0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c/); base `0xd80630...d2aab8` | ⚠️ Unaudited |
| ReferralStorage | token | sonic | n/a | [`0xb9ef21...db26ac`](./contracts/sonic-146/0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | sonic | n/a | 7 deployments: sonic [`0x2a7663...c22a6a`](./contracts/sonic-146/0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a/); sonic `0xb6600b...e5a3e6`; sonic `0xd24c21...db2b27`; sonic `0xfcb51c...3b6172`; base `0x931d55...0dedcc`; base `0xf9e2aa...58935e`; berachain `0x307793...47c54c` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | berachain | n/a | 3 deployments: sonic `0xe72a2d...68e80f`; base `0xa9b2e8...bb2a78`; berachain [`0x2d1a40...a50935`](./contracts/berachain-80094/0x2d1a4048467f84c5cd4f6efb386002a90ba50935/) | ⚠️ Unaudited |
| RewardTracker | unknown | base | n/a | 8 deployments: sonic `0x2e2367...86a5d3`; sonic `0x765d54...36f469`; sonic `0xb895e3...942ff9`; sonic `0xce0a0e...3aa081`; sonic `0xf3d911...9709a7`; base [`0x12905e...3be051`](./contracts/base-8453/0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051/); base `0x1dc520...1a07a3`; berachain `0x99f31e...5695b6` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: sonic [`0x451d21...1c5a2c`](./contracts/sonic-146/0x451d212c080267fef47fd777002c9186e61c5a2c/); base `0x700d16...917af6` | ⚠️ Unaudited |
| USDG | unknown | sonic | n/a | [`0x8846d3...bc04a3`](./contracts/sonic-146/0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x3cdd8b...37be2f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8fb00e...1803cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5384e8...62e3ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Amped Finance Final Audit Report.pdf (also discovered via alternate URL)](https://github.com/BlockApex/Audit-Reports/blob/3d1df707bc6df3f761981b33007f8f32057c6654/Amped%20Finance%20Final%20Audit%20Report.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 5 | high |
| [Amped Finance V2 (Staking).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Amped%20Finance%20V2%20(Staking).pdf) | BlockApex | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x5b8caa...49c7da`](./contracts/sonic-146/0x5b8caae7cc6ea61fb96fd251c4bc13e48749c7da/) | Vault | core_logic | $93.16 | Verified native implementation with $93.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4cae73...c04fca`](./contracts/sonic-146/0x4cae73a23078e7a94d1e828fa3baba5080c04fca/) | AmpedOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0296c7...3cc3bb`](./contracts/sonic-146/0x0296c7d4070c3a3577ef4ee8c79a7334d03cc3bb/) | AmpedRewardsRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19ae11...afb768`](./contracts/sonic-146/0x19ae11ffe762b58f2595b5f7b511a6e748afb768/) | AmpedStakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d4ab8...acc3bc`](./contracts/sonic-146/0x1d4ab8cc7552f76654cfae4155854e5235acc3bc/) | AmpedSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xac6114...01c1b4`](./contracts/sonic-146/0xac611438ae5f3953dedb47c2ea8d6650d601c1b4/) | AmpOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ab023...6e9ed8`](./contracts/sonic-146/0x1ab02347d787a144a7fbc934a9b96420d46e9ed8/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x04417b...32f756`](./contracts/sonic-146/0x04417bb69dd1070d5c95d57534adb1365c32f756/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4de729...64e430`](./contracts/sonic-146/0x4de729b85ddb172f1bb775882f355ba25764e430/) | GlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x308b06...5955dc`](./contracts/base-8453/0x308b06b2c91705af88e2f90ab978084eb15955dc/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x68b87d...1c02c4`](./contracts/sonic-146/0x68b87dee9f6e63c41b6b98333beff257e21c02c4/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0da1ff...841a4c`](./contracts/sonic-146/0x0da1ffb0e80c2bbbe3b8c7b9472c3ed21f841a4c/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb9ef21...db26ac`](./contracts/sonic-146/0xb9ef2134e2b796d348f0860b390a83ed7ddb26ac/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2a7663...c22a6a`](./contracts/sonic-146/0x2a7663a3e6961dc43becbf752dcc9798c1c22a6a/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2d1a40...a50935`](./contracts/berachain-80094/0x2d1a4048467f84c5cd4f6efb386002a90ba50935/) | RewardRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12905e...3be051`](./contracts/base-8453/0x12905eb64c3a70c6a7d3e1f0a4ba3213c23be051/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x451d21...1c5a2c`](./contracts/sonic-146/0x451d212c080267fef47fd777002c9186e61c5a2c/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8846d3...bc04a3`](./contracts/sonic-146/0x8846d38481f8e3f9a7ddcbe1dff0981db2bc04a3/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=51

Fork inheritance lineage and inherited audits are included when available.
