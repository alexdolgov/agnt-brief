# Agentic Audit Brief: Easedefi.org

## Project Overview

- Project: Easedefi.org (`easedefi.org`)
- Website: [https://easedefi.org](https://easedefi.org)
- Lifecycle: active (Tier 0, 66.3% below peak)
- Generated: 2026-06-12T05:36:34.356Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: ethereum
- Contract surface: 9 unique implementations (13 raw deployments)
- DeFi Llama TVL: $3,607,399.18
- On-chain TVL (included contracts): $1,479,521.36
- TVL by chain: Ethereum $1,479,521.36

## Project Description

EaseDeFi is a DeFi coverage protocol on Ethereum offering multiple coverage and yield-related products, including stNXM underwriting, premium-free Uninsurance mutual coverage without traditional premium purchases, and in-development cross-asset yield vaults. The currently recorded contract surface covers only the OwnedUpgradeabilityProxy at 0x1337def1fc06783d4b03cb8c1bf3ebf7d0593fc4 with implementation 0xc38bfa29f70b3f0f40784d7861f1665e47f37f2e, and should not be treated as representing the entire current Ease protocol unless additional product contract addresses are verified.

### Architecture

The protocol consists of a single product family centered around the arNXMVault, which is deployed behind an OwnedUpgradeabilityProxy for upgradeability. All insurance logic, including premium collection and claim payouts, is handled within this vault contract.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 13
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,479,521.36
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenSwap | token | ethereum | [`0xea5ede...fe6935`](./contracts/ethereum-1/0xea5edef17986eabb7333bacdc9e2f574c7fe6935/) | ⚠️ Unaudited |
| GvToken | token | ethereum | [`0xea5ede...ae1550`](./contracts/ethereum-1/0xea5edef1edb2f47b9637c029a6ac3b80a7ae1550/) | ⚠️ Unaudited |
| arNXMVault | core_logic | ethereum | 2 deployments: ethereum [`0x1337de...593fc4`](./contracts/ethereum-1/0x1337def1fc06783d4b03cb8c1bf3ebf7d0593fc4/); ethereum `0xc38bfa...f37f2e` | ⚠️ Unaudited |
| BribePot | operational_periphery | ethereum | [`0xea5ede...f1e28c`](./contracts/ethereum-1/0xea5edef17c9be57228389962ba50b98397f1e28c/) | ⚠️ Unaudited |
| GovernorBravoDelegate | governance | ethereum | [`0xea5ede...3de587`](./contracts/ethereum-1/0xea5edef17c4fce9c120790f3c54d6e04823de587/) | ⚠️ Unaudited |
| RcaController | unknown | ethereum | [`0xea5ede...d94767`](./contracts/ethereum-1/0xea5edef1a7106d9e2024240299df3d00c7d94767/) | ⚠️ Unaudited |
| RcaShieldBadger | unknown | ethereum | 3 deployments: ethereum [`0xea5ede...1b7af6`](./contracts/ethereum-1/0xea5edef1169713c425ce57cf5c154d732b1b7af6/); ethereum `0xea5ede...347bc8`; ethereum `0xea5ede...45218c` | ⚠️ Unaudited |
| StNXM | unknown | ethereum | 2 deployments: ethereum [`0x5b423e...967cda`](./contracts/ethereum-1/0x5b423e07dfba087d72840851f63a51cbe1967cda/); ethereum `0xaaf02d...a9e5f3` | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0xea5ede...0e557a`](./contracts/ethereum-1/0xea5edef1401e8c312c797c27a9842e03eb0e557a/) | ⚠️ Unaudited |

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
| [Dedaub_RCA_Audit.pdf](https://github.com/EaseDeFi/Audits/blob/main/Dedaub_RCA_Audit.pdf) | Dedaub | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2584] Dedaub_RCA_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
