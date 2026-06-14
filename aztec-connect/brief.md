# Agentic Audit Brief: Aztec Connect

## Project Overview

- Project: Aztec Connect (`aztec-connect`)
- Website: [https://aztec.network](https://aztec.network)
- Lifecycle: active (Tier 0, 81.3% below peak)
- Generated: 2026-06-14T04:05:17.296Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-d641
- Chains: ethereum
- Contract surface: 8 unique implementations (15 raw deployments)
- DeFi Llama TVL: $4,314,065.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Aztec Connect is a privacy-preserving bridge that enables users to interact with Ethereum DeFi protocols confidentially. It uses zero-knowledge proofs to batch and anonymize transactions, shielding user activity from public view.

### Architecture

The single product family encapsulates the entire protocol, with the TransparentUpgradeableProxy serving as the upgradeable entry point to the core RollupProcessorV3 logic.

## Audit Coverage Summary

- Verified implementations audited: 3/8 (37.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 15
- Audits discovered: 12
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Staleness: 0 fresh, 0 aging, 12 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 37.5% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DefiBridgeProxy | operational_periphery | ethereum | [`0xa1bba8...b81487`](./contracts/ethereum-1/0xa1bba894a6d39d79c0d1ef9c68a2139c84b81487/) | ✅ Audited |
| RollupProcessor | unknown | ethereum | [`0x737901...42a2ba`](./contracts/ethereum-1/0x737901bea3eeb88459df9ef1be8ff3ae1b42a2ba/) | ✅ Audited |
| RollupProcessorV2 | unknown | ethereum | [`0x8430be...6f5d09`](./contracts/ethereum-1/0x8430be7b8fd28cc58ea70a25c9c7a624f26f5d09/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AztecFeeDistributor | operational_periphery | ethereum | [`0x4cf326...d64927`](./contracts/ethereum-1/0x4cf32670a53657596e641dfcc6d40f01e4d64927/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 4 deployments: ethereum [`0x23f800...e8236f`](./contracts/ethereum-1/0x23f8008159c0427458b948c3dd7795c6dbe8236f/); ethereum `0x62415c...b9389a`; ethereum `0x68a36a...4d0b9e`; ethereum `0xe298a7...1a8aad` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xc5b735...03b26b`](./contracts/ethereum-1/0xc5b735d05c26579b701be9bed253bb588503b26b/) | ⚠️ Unaudited |
| RollupProcessorV3 | unknown | ethereum | 2 deployments: ethereum [`0x7d657d...dc2728`](./contracts/ethereum-1/0x7d657ddcf7e2a5fd118dc8a6ddc3dc308adc2728/); ethereum `0xff1f2b...680455` | ⚠️ Unaudited |
| Verifier28x32 | unknown | ethereum | 4 deployments: ethereum [`0x71c0ab...178f69`](./contracts/ethereum-1/0x71c0ab7df00f00e4ec2990d4f1c8302c1d178f69/); ethereum `0x9bdc85...ae2297`; ethereum `0xb656f4...f25939`; ethereum `0xb7baa1...651cfb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Report - Aztec (1).pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20(1).pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 2 | high |
| [Audit Report - Aztec Aave Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Aave%20Bridge.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Compound Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Compound%20Bridge.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Curve Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Curve%20Bridge.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec DCA Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20DCA%20Bridge.pdf) | unknown | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Element Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Element%20Bridge.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Lido Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Lido%20Bridge.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Liquity Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Liquity%20Bridge.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Liquity Trove Bridge II.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Liquity%20Trove%20Bridge%20II.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Set Bridge.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Set%20Bridge.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - Aztec Subsidy Contract.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Audit%20Report%20-%20Aztec%20Subsidy%20Contract.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Aztec_20221014.pdf](https://github.com/AztecProtocol/aztec-security/blob/main/Audits/Aztec_20221014.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4cf326...d64927`](./contracts/ethereum-1/0x4cf32670a53657596e641dfcc6d40f01e4d64927/) | AztecFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d657d...dc2728`](./contracts/ethereum-1/0x7d657ddcf7e2a5fd118dc8a6ddc3dc308adc2728/) | RollupProcessorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71c0ab...178f69`](./contracts/ethereum-1/0x71c0ab7df00f00e4ec2990d4f1c8302c1d178f69/) | Verifier28x32 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=4

Zero-match audit list:

- [2446] Audit Report - Aztec Aave Bridge.pdf
- [2447] Audit Report - Aztec Compound Bridge.pdf
- [2448] Audit Report - Aztec Curve Bridge.pdf
- [2449] Audit Report - Aztec DCA Bridge.pdf
- [2450] Audit Report - Aztec Element Bridge.pdf
- [2451] Audit Report - Aztec Lido Bridge.pdf
- [2452] Audit Report - Aztec Liquity Bridge.pdf
- [2453] Audit Report - Aztec Liquity Trove Bridge II.pdf
- [2454] Audit Report - Aztec Set Bridge.pdf
- [2455] Audit Report - Aztec Subsidy Contract.pdf

Fork inheritance lineage and inherited audits are included when available.
