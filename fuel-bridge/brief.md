# Agentic Audit Brief: Fuel Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 14.6% over 90 days

## Project Overview

- Project: Fuel Bridge (`fuel-bridge`)
- Website: [https://app.fuel.network/bridge](https://app.fuel.network/bridge)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:04.068Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 18 unique implementations (44 raw deployments)
- DeFi Llama TVL: $10,575,231.14
- On-chain TVL (included contracts): $10,748,049.19
- TVL by chain: Ethereum $10,748,049.19

## Project Description

Fuel Bridge is an Ethereum-Fuel Ignition bridge for asset transfers and cross-chain messaging. Staking, reward distribution, sequencing, and Icon Link-related contracts should be treated as a separate related surface unless independently documented as part of Fuel Bridge.

### Architecture

The Fuel Bridge family handles cross-chain asset transfers, while the Icon Link family provides staking, rewards, and sequencing infrastructure. Both families share the FuelERC20GatewayV4 and FuelMessagePortalV3 contracts, which are used for bridging and are also part of the Icon Link family's token and message handling.

## Audit Coverage Summary

- Verified implementations audited: 4/15 (26.7%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 18
- Raw deployments: 44
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $7,633,472.42
- Latest audit: 2025-11 (fresh)
- Staleness: 1 fresh, 3 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $7,633,472.42 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 4 | 26.7% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FuelERC20GatewayV4 | token | ethereum | 3 deployments: ethereum [`0xa4ca04...f43f67`](./contracts/ethereum-1/0xa4ca04d02bfdc3a2df56b9b6994520e69df43f67/); ethereum `0xb31090...04069d`; ethereum `0xde2d79...cc3fab` | ✅ Audited |
| FuelChainState | unknown | ethereum | 2 deployments: ethereum [`0x725b2b...036559`](./contracts/ethereum-1/0x725b2b1a15d818e1f25c68be77816802e6036559/); ethereum `0xf3d20d...90f130` | ✅ Audited |
| FuelMessagePortalV3 | unknown | ethereum | 5 deployments: ethereum [`0x05f886...655b16`](./contracts/ethereum-1/0x05f886ddee0fe07496f6e38b0e140f8ef4655b16/); ethereum `0x2c4df1...6f2e67`; ethereum `0x5a725f...57d577`; ethereum `0x6d6785...b10639`; ethereum `0xaeb0c0...f65ddf` | ✅ Audited |
| PreDeposits | unknown | ethereum | 3 deployments: ethereum [`0x19b5cc...4c2c14`](./contracts/ethereum-1/0x19b5cc75846bf6286d599ec116536a333c4c2c14/); ethereum `0x36fa1d...5a9e45`; ethereum `0xd2f5cc...229ddf` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | ethereum | 2 deployments: ethereum [`0x4ced05...7a5972`](./contracts/ethereum-1/0x4ced0596344b58dd3b11ffc621da85f7f57a5972/); ethereum `0x675b68...92079c` | ⚠️ Unaudited |
| FuelStreamX | token | ethereum | 4 deployments: ethereum [`0x27ee61...04df94`](./contracts/ethereum-1/0x27ee61849f38bb8122ce40f11620d9ff6504df94/); ethereum `0x3b9f8e...4a5c8e`; ethereum `0x481aee...4b0b59`; ethereum `0x6c644c...c99626` | ⚠️ Unaudited |
| ProtobufAnyLib | unknown | ethereum | [`0x33d3b4...ed52cb`](./contracts/ethereum-1/0x33d3b4b66ae89e640d048e10f857ef0e20ed52cb/) | ⚠️ Unaudited |
| RecoveryRegistry | registry | ethereum | 2 deployments: ethereum [`0x6d5e30...a260a6`](./contracts/ethereum-1/0x6d5e306825ea6193ca57f3df754adf36a6a260a6/); ethereum `0xe2c3af...6c0cdd` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | ethereum | 2 deployments: ethereum [`0x1cd617...63b1a8`](./contracts/ethereum-1/0x1cd61731ce62e5691de2e547fa740bcd0663b1a8/); ethereum `0xc20c2e...41fc18` | ⚠️ Unaudited |
| Rig | unknown | ethereum | [`0x9ba9d8...b5cd7e`](./contracts/ethereum-1/0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e/) | ⚠️ Unaudited |
| SequencerInterface | unknown | ethereum | 4 deployments: ethereum [`0x5865cc...b7f96c`](./contracts/ethereum-1/0x5865cc20c4ad480ff537c89ae797f26ca6b7f96c/); ethereum `0xb0b005...c61d7b`; ethereum `0xca0c6b...87d866`; ethereum `0xf52f83...4ea155` | ⚠️ Unaudited |
| SequencerProxy | unknown | ethereum | 3 deployments: ethereum [`0x2972eb...5b3714`](./contracts/ethereum-1/0x2972ebb62e95d639d4282f78633f2cd05e5b3714/); ethereum `0xba0e6b...23ecc3`; ethereum `0xd31f45...8a3279` | ⚠️ Unaudited |
| TokenMigrator | token | ethereum | 6 deployments: ethereum [`0x0eb53e...9f027c`](./contracts/ethereum-1/0x0eb53e434854af3d8d24283fe803242e989f027c/); ethereum `0x50ed39...5edfe8`; ethereum `0x788d6f...a6a9c5`; ethereum `0xa02f60...03bf9e`; ethereum `0xb3a8b7...ad7349`; ethereum `0xe384ca...f5ee03` | ⚠️ Unaudited |
| TokenRelease | token | ethereum | [`0xde8a1c...508fe1`](./contracts/ethereum-1/0xde8a1c2d142bc8f3bf3181a2e301a37471508fe1/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0x6c1d97...c25e71`](./contracts/ethereum-1/0x6c1d9710b04a903fcfd61aef43632fd22fc25e71/); ethereum `0xd57d30...c169ee` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x5450ff...ce0da9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x574051...2c2ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb73a81...0395bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Fuel-Bridge-apr24(Public) (including Diffs).pdf](https://github.com/FuelLabs/audits/blob/master/Fuel-Bridge-apr24(Public)%20(including%20Diffs).pdf) | Unknown | Audit | 2024-04 | stale | Direct | contract_name | 10 | high |
| [fuel-audit-september-2024(Connectors Predicates)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Connectors%20Predicates)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 10 | high |
| [fuel-audit-september-2024(Points Migration Function)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Points%20Migration%20Function)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 3 | high |
| [fuel_fast_bridge_audit_final.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_fast_bridge_audit_final.pdf) | Unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4ced05...7a5972`](./contracts/ethereum-1/0x4ced0596344b58dd3b11ffc621da85f7f57a5972/) | Token | token | $7,633,472.42 | Verified native implementation with $7,633,472.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33d3b4...ed52cb`](./contracts/ethereum-1/0x33d3b4b66ae89e640d048e10f857ef0e20ed52cb/) | ProtobufAnyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cd617...63b1a8`](./contracts/ethereum-1/0x1cd61731ce62e5691de2e547fa740bcd0663b1a8/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5865cc...b7f96c`](./contracts/ethereum-1/0x5865cc20c4ad480ff537c89ae797f26ca6b7f96c/) | SequencerInterface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2972eb...5b3714`](./contracts/ethereum-1/0x2972ebb62e95d639d4282f78633f2cd05e5b3714/) | SequencerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eb53e...9f027c`](./contracts/ethereum-1/0x0eb53e434854af3d8d24283fe803242e989f027c/) | TokenMigrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde8a1c...508fe1`](./contracts/ethereum-1/0xde8a1c2d142bc8f3bf3181a2e301a37471508fe1/) | TokenRelease | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c1d97...c25e71`](./contracts/ethereum-1/0x6c1d9710b04a903fcfd61aef43632fd22fc25e71/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=23

Zero-match audit list:

- [2057] fuel-audit-september-2024(Connectors Predicates)(Public).pdf
- [2062] fuel_fast_bridge_audit_final.pdf

Fork inheritance lineage and inherited audits are included when available.
