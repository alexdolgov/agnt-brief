# Agentic Audit Brief: Ekubo

## Project Overview

- Project: Ekubo (`ekubo`)
- Website: [https://ekubo.org/](https://ekubo.org/)
- Lifecycle: active (Tier 0, 73.2% below peak)
- Generated: 2026-06-14T05:32:38.680Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-39b4
- Chains: ethereum
- Contract surface: 15 unique implementations (17 raw deployments)
- DeFi Llama TVL: $20,901,566.76
- On-chain TVL (included contracts): $5,648,264.12
- TVL by chain: Ethereum $5,648,264.12

## Project Description

Ekubo is a live decentralized exchange protocol built around concentrated liquidity and a singleton-style Core design. The project is primarily associated with Starknet and also supports Ethereum; its public interface advertises swaps on Ethereum, Arbitrum, and Starknet. The currently listed contract surface is an incomplete Ethereum-only subset and should not be treated as the full Ekubo deployment surface or as the original Starknet Core/periphery/governance surface. Arbitrum should be treated as interface-supported but outside the currently covered audited contract surface unless Arbitrum deployments are separately verified and added.

### Architecture

The EVM Contracts (V2) family extends the original Ekubo DEX to EVM chains, sharing the same concentrated liquidity design but with separate Core instances. Governance contracts are independent but may control parameters or upgrades across families via the StarknetOwnerProxy.

## Audit Coverage Summary

- Verified implementations audited: 4/9 (44.4%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 15
- Raw deployments: 17
- Audits discovered: 5
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $5,648,264.12
- Latest audit: 2026-02 (fresh)
- Staleness: 4 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: 22.2% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 2 | 22.2% | 2025-11 |
| Cairo Security Clan | Tier 2 | 1 | 11.1% | 2025-01 |
| Riley Holterhus | Tier 2 | 1 | 11.1% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Core | unknown | ethereum | 2 deployments: ethereum [`0x000000...1bd701`](./contracts/ethereum-1/0x00000000000014aa86c5d3c41765bb24e11bd701/); ethereum `0xe0e0e0...57d444` | ✅ Audited |
| Oracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x514d5d...60ada6`](./contracts/ethereum-1/0x514d5de68852628af2f1236f780866989660ada6/); ethereum `0x51d02a...42527c` | ✅ Audited |
| Router | adapter | ethereum | [`0x999585...dff931`](./contracts/ethereum-1/0x9995855c00494d039ab6792f18e368e530dff931/) | ✅ Audited |
| StarknetOwnerProxy | unknown | ethereum | [`0x1e0ef4...a6e9cc`](./contracts/ethereum-1/0x1e0ef4162e42c9bf820c307218c4e41ccca6e9cc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EkuboToken | token | ethereum | [`0x04c46e...317d0f`](./contracts/ethereum-1/0x04c46e830bb56ce22735d5d8fc9cb90309317d0f/) | ⚠️ Unaudited |
| MEVResistRouter | adapter | ethereum | [`0x0c95ea...44aeab`](./contracts/ethereum-1/0x0c95ea31e4501b3b879cae2232087e478d44aeab/) | ⚠️ Unaudited |
| Positions | unknown | ethereum | [`0xa37cc3...b63e17`](./contracts/ethereum-1/0xa37cc341634afd9e0919d334606e676dbab63e17/) | ⚠️ Unaudited |
| TokenWrapperFactory | registry | ethereum | [`0x2b8d80...0ab120`](./contracts/ethereum-1/0x2b8d80d891c1e20aca70ff8a85714aa1900ab120/) | ⚠️ Unaudited |
| TokenWrapperPeriphery | token | ethereum | [`0x2992e4...89f5d6`](./contracts/ethereum-1/0x2992e49d73cc97fbc69c5498f332984c9a89f5d6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x208bb0...b7c285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x553a2e...54c091` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a9093...8205be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91cb8a...9b408c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae1430...67c18a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4279c...2b54ec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [The Governance Starknet L1 Proxy has been audited by Cairo Security Clan and the report can be found on [GitHub]().](https://github.com/EkuboProtocol/governance/blob/main/l1_proxy/Ekubo_Governance_L1_Proxy.pdf) | Cairo Security Clan | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [Code4rena x Ekubo audit report 2025-11.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Code4rena%20x%20Ekubo%20audit%20report%202025-11.pdf) | Code4rena | Contest | 2025-11 | fresh | Direct | contract_name | 3 | high |
| [Ekubo-Auctions-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Auctions-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Ekubo-Riley-Holterhus-Audit.pdf](https://github.com/EkuboProtocol/evm-contracts/blob/main/audits/Ekubo-Riley-Holterhus-Audit.pdf) | Riley Holterhus | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x04c46e...317d0f`](./contracts/ethereum-1/0x04c46e830bb56ce22735d5d8fc9cb90309317d0f/) | EkuboToken | token | $5,648,264.12 | Verified native implementation with $5,648,264.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c95ea...44aeab`](./contracts/ethereum-1/0x0c95ea31e4501b3b879cae2232087e478d44aeab/) | MEVResistRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa37cc3...b63e17`](./contracts/ethereum-1/0xa37cc341634afd9e0919d334606e676dbab63e17/) | Positions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b8d80...0ab120`](./contracts/ethereum-1/0x2b8d80d891c1e20aca70ff8a85714aa1900ab120/) | TokenWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2992e4...89f5d6`](./contracts/ethereum-1/0x2992e49d73cc97fbc69c5498f332984c9a89f5d6/) | TokenWrapperPeriphery | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=6

Zero-match audit list:

- [1823] Ekubo-Auctions-Riley-Holterhus-Audit.pdf
- [1824] Ekubo-Feb-2026-Update-Riley-Holterhus-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
