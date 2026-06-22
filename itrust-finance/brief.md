# Agentic Audit Brief: iTrust Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 15.6% over 90 days

## Project Overview

- Project: iTrust Finance (`itrust-finance`)
- Website: [https://itrust.finance](https://itrust.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T12:26:20.597Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 25 unique implementations (42 raw deployments)
- DeFi Llama TVL: $365,754.38
- On-chain TVL (included contracts): $10,165.00
- TVL by chain: Ethereum $10,165.00

## Project Description

iTrust Finance is a DeFi insurance protocol that allows users to hedge against smart contract and protocol risks by purchasing coverage. It pools user funds into risk tranches and uses yield-generating strategies to provide payouts in the event of covered loss events.

### Architecture

The protocol's core insurance logic is implemented in the IdleCDO and its variants, which manage risk tranches and interact with yield strategies (e.g., IdleEulerStrategy, ConvexStrategy) to generate returns. Supporting contracts like IdleCreditVault and IdleTokenFungible handle tokenized positions and liquidity, while governance and batch conversion contracts provide administrative and user-experience infrastructure.

## Contract Surface Quality

- Indexed contracts: 672; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 400 inactive, 230 singleton, 0 uninitialized.
- Deployment units: 0/88 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 5/104.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 1
- Unverified implementations: 7
- Unique implementations: 25
- Raw deployments: 42
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,165.00
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $10,165.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20 | token | ethereum | n/a | [`0xf93842...72e91e`](./contracts/ethereum-1/0xf938424f7210f31df2aee3011291b658f872e91e/) | ⚠️ Unaudited |
| BarnBridgeToken | operational_periphery | ethereum | n/a | [`0x0391d2...37750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | ⚠️ Unaudited |
| FalconXAAAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0x48fc1a...f57724`](./contracts/ethereum-1/0x48fc1a04e5e18c994c3165c9ad0d3553d7f57724/); ethereum `0x8fed61...83667e`; ethereum `0xefffa4...2c8fa2` | ⚠️ Unaudited |
| Idle | unknown | ethereum | n/a | [`0x875773...c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | ⚠️ Unaudited |
| IdleCDOEpochQueue | unknown | ethereum | n/a | [`0xdb1947...340d37`](./contracts/ethereum-1/0xdb1947aac0bb38bb467ae251f6ddaf2d6a340d37/) | ⚠️ Unaudited |
| IdleCDOEpochVariant | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6de6ea...a1a53f`](./contracts/ethereum-1/0x6de6ea8659c8cea1f2aaf29758e40ff4c8a1a53f/); ethereum `0x9f3a30...8b62de`; ethereum `0xd85ad3...b6837d` | ⚠️ Unaudited |
| IdleCreditVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x3daceb...888dba`](./contracts/ethereum-1/0x3daceb62bc64cdd4d12f7df6376b9f7ee6888dba/); ethereum `0x625688...8fe489`; ethereum `0xc49992...b3855a` | ⚠️ Unaudited |
| IdleCreditVaultFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x2dcb01...b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/); ethereum `0x59aabd...906626`; ethereum `0xb744aa...0b0706` | ⚠️ Unaudited |
| IdleCreditVaultImpliedPrice | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1745c0...500663`](./contracts/ethereum-1/0x1745c027ab3082c3b1019db69af295f095500663/); ethereum `0x55bdb8...ae383e`; ethereum `0xb05cff...f4c477` | ⚠️ Unaudited |
| IdleCreditVaultWriteOffEscrow | operational_periphery | ethereum | n/a | [`0xe6584f...071507`](./contracts/ethereum-1/0xe6584f3484494d7014e420080f50b69e5e071507/) | ⚠️ Unaudited |
| IdleUsdcOtcSwap | unknown | ethereum | n/a | [`0x863a08...33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | ⚠️ Unaudited |
| KeyringIdleWhitelist | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1a4d23...2bcc68`](./contracts/ethereum-1/0x1a4d23403c31ba26a4b84af09364d503ad2bcc68/); ethereum `0x42e645...3d7cbd`; ethereum `0x637595...bf2688`; ethereum `0x6a6a91...0450e3`; ethereum `0xb84957...0d77a0`; ethereum `0xda7514...dbf80c` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x071163...843f5b`](./contracts/ethereum-1/0x07116391a797e4b3cfbea13912a15845fa843f5b/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | n/a | [`0xda86e1...575a44`](./contracts/ethereum-1/0xda86e15d0cda3a05db930b248d7a2f775e575a44/) | ⚠️ Unaudited |
| TranchesChainlinkOracle | operational_periphery | ethereum | n/a | [`0x5bae51...aca4a0`](./contracts/ethereum-1/0x5bae5119d4c6be71b1a318a7dfbeae85d5aca4a0/) | ⚠️ Unaudited |
| VisorFactory | registry | ethereum | n/a | [`0xae0323...e6f20a`](./contracts/ethereum-1/0xae03233307865623aaef76da9ade669b86e6f20a/) | ⚠️ Unaudited |
| wNXM | unknown | ethereum | n/a | [`0x0d438f...432bde`](./contracts/ethereum-1/0x0d438f3b5175bebc262bf23753c1e53d03432bde/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProgrammableBorrower | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x01d079...6d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/); ethereum `0x3d6418...e75588`; ethereum `0xb13d29...fbcee6` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3c2789...97bfd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7c49c...d4cf3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd82c32...63c238` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd94736...613326` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd5962...94a18d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4104c...620978` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf55f33...3a61ec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://assets.website-files.com/5f99eb79d508ca853be5f2e8/60fd80c015025a7033cf6ede_iTrust.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf93842...72e91e`](./contracts/ethereum-1/0xf938424f7210f31df2aee3011291b658f872e91e/) | ERC20 | token | $10,165.00 | Verified native implementation with $10,165.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0391d2...37750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | BarnBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x875773...c5d39e`](./contracts/ethereum-1/0x875773784af8135ea0ef43b5a374aad105c5d39e/) | Idle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb1947...340d37`](./contracts/ethereum-1/0xdb1947aac0bb38bb467ae251f6ddaf2d6a340d37/) | IdleCDOEpochQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6de6ea...a1a53f`](./contracts/ethereum-1/0x6de6ea8659c8cea1f2aaf29758e40ff4c8a1a53f/) | IdleCDOEpochVariant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3daceb...888dba`](./contracts/ethereum-1/0x3daceb62bc64cdd4d12f7df6376b9f7ee6888dba/) | IdleCreditVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dcb01...b52a7e`](./contracts/ethereum-1/0x2dcb01bbf8c1a68b4a063250fa5ee01ee7b52a7e/) | IdleCreditVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1745c0...500663`](./contracts/ethereum-1/0x1745c027ab3082c3b1019db69af295f095500663/) | IdleCreditVaultImpliedPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6584f...071507`](./contracts/ethereum-1/0xe6584f3484494d7014e420080f50b69e5e071507/) | IdleCreditVaultWriteOffEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x863a08...33e765`](./contracts/ethereum-1/0x863a08bfc7ae938c4f96c2c3ef82fa309b33e765/) | IdleUsdcOtcSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a4d23...2bcc68`](./contracts/ethereum-1/0x1a4d23403c31ba26a4b84af09364d503ad2bcc68/) | KeyringIdleWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d079...6d069b`](./contracts/ethereum-1/0x01d0799a2f740120dacbfec33c5374b9086d069b/) | ProgrammableBorrower | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda86e1...575a44`](./contracts/ethereum-1/0xda86e15d0cda3a05db930b248d7a2f775e575a44/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5bae51...aca4a0`](./contracts/ethereum-1/0x5bae5119d4c6be71b1a318a7dfbeae85d5aca4a0/) | TranchesChainlinkOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae0323...e6f20a`](./contracts/ethereum-1/0xae03233307865623aaef76da9ade669b86e6f20a/) | VisorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d438f...432bde`](./contracts/ethereum-1/0x0d438f3b5175bebc262bf23753c1e53d03432bde/) | wNXM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13301] DL audit link

Fork inheritance lineage and inherited audits are included when available.
