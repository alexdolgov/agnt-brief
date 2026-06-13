# Agentic Audit Brief: Suzaku

## Project Overview

- Project: Suzaku (`suzaku`)
- Website: [https://www.suzaku.network/](https://www.suzaku.network/)
- Lifecycle: active (Tier 0, 88.1% below peak)
- Generated: 2026-06-13T23:02:07.064Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-ab91
- Chains: avalanche
- Contract surface: 52 unique implementations (105 raw deployments)
- DeFi Llama TVL: $1,077,074.96
- On-chain TVL (included contracts): $1,179,921.48
- TVL by chain: Avalanche $1,179,921.48

## Project Description

Suzaku is an Avalanche L1 and sovereign-network decentralization and (re)staking hub that connects builders, stakers, and operators.

### Architecture

The SuzakuToken is the core liquid staking token, while LSTWrapper handles wrapping of staked assets. RewardsNativeToken distributes native token rewards, and BalancerValidatorManager manages validator operations, all supporting the restaking infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 2/24 (8.3%)
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 52
- Raw deployments: 105
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,179,921.48
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: 8.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 8.3% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DefaultCollateral | unknown | avalanche | 8 deployments: avalanche [`0x0cec09...aaf9af`](./contracts/avalanche-43114/0x0cec099933f0da490dff91724b02e2203faaf9af/); avalanche `0x1d8bd3...5fef62`; avalanche `0x203e91...19df0d`; avalanche `0x51111e...fd634d`; avalanche `0x8f1dea...caee5f`; avalanche `0xa53e12...7d4c41`; avalanche `0xc96d49...8dce5a`; avalanche `0xe3c983...93d5b7` | ✅ Audited |
| DefaultCollateralFactory | registry | avalanche | [`0xe52966...41a93c`](./contracts/avalanche-43114/0xe5296638aa86bd4175d802a210e158688e41a93c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SuzakuToken | token | avalanche | [`0x451532...f6f5ef`](./contracts/avalanche-43114/0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef/) | ⚠️ Unaudited |
| AlgebraPool | core_logic | avalanche | [`0x9ee747...f995de`](./contracts/avalanche-43114/0x9ee7478ddf586d19bd946bc4ad7f523a4bf995de/) | ⚠️ Unaudited |
| AvalancheL1Middleware | unknown | avalanche | 8 deployments: avalanche [`0x1bdc44...2427a7`](./contracts/avalanche-43114/0x1bdc44dd7195b067b945bc8d034b592aff2427a7/); avalanche `0x3fc510...56f00b`; avalanche `0x4817d2...636710`; avalanche `0x881f38...cbb037`; avalanche `0x8d453f...791830`; avalanche `0x941130...f0dc34`; avalanche `0xa6170c...a7e14b`; avalanche `0xbd02b1...2b26f4` | ⚠️ Unaudited |
| BalancerValidatorManager | governance | avalanche | [`0xcff0fc...fa8ac7`](./contracts/avalanche-43114/0xcff0fc701ef47d6217fdf9def903990b7afa8ac7/) | ⚠️ Unaudited |
| BoringVault | core_logic | avalanche | 3 deployments: avalanche [`0x72ab67...75d9b5`](./contracts/avalanche-43114/0x72ab674ec8fb2b2626cf48131fe34fc95075d9b5/); avalanche `0xdf788a...f52f67`; avalanche `0xe684f6...9f0025` | ⚠️ Unaudited |
| DelegatorFactory | registry | avalanche | [`0x657741...c8c2be`](./contracts/avalanche-43114/0x657741f081e7c7ea74cabb8e9c9004c913c8c2be/) | ⚠️ Unaudited |
| L1Registry | registry | avalanche | [`0xaa59b1...746110`](./contracts/avalanche-43114/0xaa59b19a7636bf6d821aa124a14eee6c92746110/) | ⚠️ Unaudited |
| L1RestakeDelegator | unknown | avalanche | 2 deployments: avalanche [`0x826414...598096`](./contracts/avalanche-43114/0x8264147715e6da0900c11143c6e5879aa6598096/); avalanche `0xd90a72...3273ef` | ⚠️ Unaudited |
| LSTWrapper | token | avalanche | 4 deployments: avalanche [`0x017d60...eef453`](./contracts/avalanche-43114/0x017d60fbf9e82ebf77860500e052287280eef453/); avalanche `0x119c46...16b68c`; avalanche `0xa1c16a...438c7e`; avalanche `0xdc1c44...0da403` | ⚠️ Unaudited |
| LSTWrapperFactory | registry | avalanche | 2 deployments: avalanche [`0x6389b8...dfefcb`](./contracts/avalanche-43114/0x6389b838d11a04ad68c56a9bf0a569c041dfefcb/); avalanche `0xd096f4...535a77` | ⚠️ Unaudited |
| MiddlewareVaultManager | core_logic | avalanche | 25 deployments: avalanche [`0x08c151...a64f81`](./contracts/avalanche-43114/0x08c1512f016ac9c1f7a3fff0c457d23010a64f81/); avalanche `0x14d4fe...d23a76`; avalanche `0x21a2b3...09f328`; avalanche `0x239023...72bff8`; avalanche `0x2d4c52...f96a66`; avalanche `0x348d67...b8b082`; avalanche `0x382db9...c080dd`; avalanche `0x3d078d...00559a`; avalanche `0x430d60...86faed`; avalanche `0x6a1212...fe4d41`; avalanche `0x763afa...c1fad9`; avalanche `0x7e844e...fadb0d`; avalanche `0x91e112...36e329`; avalanche `0xb2a341...2c083f`; avalanche `0xbb2676...8d8a6f`; avalanche `0xbb9f20...f4d84f`; avalanche `0xbd1550...d8dfbf`; avalanche `0xc3b4d9...4aa5b8`; avalanche `0xc5f945...dca1b4`; avalanche `0xcc0bd1...6a2129`; avalanche `0xcf29f0...d2c418`; avalanche `0xd8e7db...648592`; avalanche `0xea47a2...153e4d`; avalanche `0xf34617...66e189`; avalanche `0xfd9387...27b408` | ⚠️ Unaudited |
| OperatorL1OptInService | unknown | avalanche | [`0x48a990...1fa574`](./contracts/avalanche-43114/0x48a990a31ec2b994a54f248bfd560954991fa574/) | ⚠️ Unaudited |
| OperatorRegistry | registry | avalanche | [`0xcccb4e...36936e`](./contracts/avalanche-43114/0xcccb4ec6408bf2c9d057d63dab01e55bb536936e/) | ⚠️ Unaudited |
| OperatorVaultOptInService | core_logic | avalanche | [`0xe437b5...92da47`](./contracts/avalanche-43114/0xe437b5efa4c0717ec15aced13a82bbd8ce92da47/) | ⚠️ Unaudited |
| PoASecurityModule | unknown | avalanche | [`0x01daeb...56fafd`](./contracts/avalanche-43114/0x01daeb143b95372fc7bfc37187160739be56fafd/) | ⚠️ Unaudited |
| RewardsNativeToken | token | avalanche | 4 deployments: avalanche [`0x0f388c...dbcb00`](./contracts/avalanche-43114/0x0f388c7c6201014ad836400e9e2ebd211bdbcb00/); avalanche `0x3d0330...5d6d32`; avalanche `0x430e1e...d1d077`; avalanche `0xff5d88...9efdd4` | ⚠️ Unaudited |
| SlasherFactory | registry | avalanche | [`0x2eb000...5f4415`](./contracts/avalanche-43114/0x2eb000900452bcf56f607480f4872c07d45f4415/) | ⚠️ Unaudited |
| UptimeTracker | unknown | avalanche | 2 deployments: avalanche [`0x2e0425...698639`](./contracts/avalanche-43114/0x2e04257da6a8a835c0aeb6d40b9fd4b04f698639/); avalanche `0xd6ecff...44ceaf` | ⚠️ Unaudited |
| VaultFactory | registry | avalanche | [`0x3e669b...75694a`](./contracts/avalanche-43114/0x3e669b3aec2227f1454cdad4b475a636e575694a/) | ⚠️ Unaudited |
| VaultHelper | core_logic | avalanche | 3 deployments: avalanche [`0x76e0b9...98402a`](./contracts/avalanche-43114/0x76e0b9d2c716840f597b3af1e2833f4b4098402a/); avalanche `0x9677f7...8d95b8`; avalanche `0x9985e0...1bf970` | ⚠️ Unaudited |
| VaultTokenized | core_logic | avalanche | 2 deployments: avalanche [`0xc9a25f...2471a2`](./contracts/avalanche-43114/0xc9a25f0a8436de76e999787bd509edba0d2471a2/); avalanche `0xce634f...e2f8ed` | ⚠️ Unaudited |
| VestingWallet | operational_periphery | avalanche | 2 deployments: avalanche [`0x42de24...fc1aa0`](./contracts/avalanche-43114/0x42de24a11f50e66b755056c3daa832c5cbfc1aa0/); avalanche `0x9afb65...9bef1f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x073626...b03b3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x128af5...ed6d13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x21de60...a5632a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2385be...087ff6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4537f5...d79c13` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x49c0d6...b441ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4df49f...506a33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5681e8...dbd327` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x78e17c...7083fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x79aca8...893171` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x81a170...b38b52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x82dec7...93393b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x879436...bc3876` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ee73c...4e9c02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x963fd1...1d3779` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa24a69...3b2f82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa2767e...5fbd6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa59bea...bdb626` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb29799...0ad0b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb322a6...e4e78d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc504d5...5efb7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcffcba...1ed685` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd3ebe0...8d6220` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdd7011...c7eae0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xec25e1...366337` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf385b2...f69574` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf8a6b2...e3453b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe9f3a...ca0cc9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/ChainSecurity_DefaultCollateral.pdf) | ChainSecurity | Audit | 2024-05 | stale | Direct | contract_name | 9 | high |
| [Statemind_DefaultCollateral.pdf](https://github.com/symbioticfi/collateral/blob/main/audits/Statemind_DefaultCollateral.pdf) | Statemind | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x451532...f6f5ef`](./contracts/avalanche-43114/0x451532f1c9eb7e4dc2d493db52b682c0acf6f5ef/) | SuzakuToken | token | $1,179,711.62 | Verified native implementation with $1,179,711.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1bdc44...2427a7`](./contracts/avalanche-43114/0x1bdc44dd7195b067b945bc8d034b592aff2427a7/) | AvalancheL1Middleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72ab67...75d9b5`](./contracts/avalanche-43114/0x72ab674ec8fb2b2626cf48131fe34fc95075d9b5/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x657741...c8c2be`](./contracts/avalanche-43114/0x657741f081e7c7ea74cabb8e9c9004c913c8c2be/) | DelegatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa59b1...746110`](./contracts/avalanche-43114/0xaa59b19a7636bf6d821aa124a14eee6c92746110/) | L1Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x826414...598096`](./contracts/avalanche-43114/0x8264147715e6da0900c11143c6e5879aa6598096/) | L1RestakeDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x017d60...eef453`](./contracts/avalanche-43114/0x017d60fbf9e82ebf77860500e052287280eef453/) | LSTWrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6389b8...dfefcb`](./contracts/avalanche-43114/0x6389b838d11a04ad68c56a9bf0a569c041dfefcb/) | LSTWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x08c151...a64f81`](./contracts/avalanche-43114/0x08c1512f016ac9c1f7a3fff0c457d23010a64f81/) | MiddlewareVaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x48a990...1fa574`](./contracts/avalanche-43114/0x48a990a31ec2b994a54f248bfd560954991fa574/) | OperatorL1OptInService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcccb4e...36936e`](./contracts/avalanche-43114/0xcccb4ec6408bf2c9d057d63dab01e55bb536936e/) | OperatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe437b5...92da47`](./contracts/avalanche-43114/0xe437b5efa4c0717ec15aced13a82bbd8ce92da47/) | OperatorVaultOptInService | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x01daeb...56fafd`](./contracts/avalanche-43114/0x01daeb143b95372fc7bfc37187160739be56fafd/) | PoASecurityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2eb000...5f4415`](./contracts/avalanche-43114/0x2eb000900452bcf56f607480f4872c07d45f4415/) | SlasherFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2e0425...698639`](./contracts/avalanche-43114/0x2e04257da6a8a835c0aeb6d40b9fd4b04f698639/) | UptimeTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3e669b...75694a`](./contracts/avalanche-43114/0x3e669b3aec2227f1454cdad4b475a636e575694a/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x76e0b9...98402a`](./contracts/avalanche-43114/0x76e0b9d2c716840f597b3af1e2833f4b4098402a/) | VaultHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc9a25f...2471a2`](./contracts/avalanche-43114/0xc9a25f0a8436de76e999787bd509edba0d2471a2/) | VaultTokenized | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x42de24...fc1aa0`](./contracts/avalanche-43114/0x42de24a11f50e66b755056c3daa832c5cbfc1aa0/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9

Zero-match audit list:

- [14292] Statemind_DefaultCollateral.pdf

Fork inheritance lineage and inherited audits are included when available.
