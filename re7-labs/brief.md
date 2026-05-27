# Agentic Audit Brief: Re7 Labs

## Project Overview

- Project: Re7 Labs (`re7-labs`)
- Website: [https://www.re7labs.xyz](https://www.re7labs.xyz)
- Lifecycle: active (Tier 0, 90.4% below peak)
- Generated: 2026-05-27T12:40:13.961Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: avalanche, base, ethereum, sonic
- Contract surface: 6 unique implementations (13 raw deployments)
- DeFi Llama TVL: $82,888,616.27
- On-chain TVL (included contracts): $1,582,085.40
- TVL by chain: Ethereum $1,582,085.40

## Project Description

Re7 Labs is a risk curation protocol that deploys and manages yield-generating vaults across multiple chains. It provides users with optimized DeFi strategies through MultiVault and MellowVaultCompat contracts, governed by multisig wallets.

### Architecture

All vaults are governed by Gnosis Safe multisigs, which control upgrades and parameter changes. The vaults share common implementation contracts (MultiVault and MellowVaultCompat) deployed via TransparentUpgradeableProxy, enabling consistent risk management across chains.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 13
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,582,085.40
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiVault | core_logic | ethereum | 6 deployments: ethereum [`0x2759e4...8f2faf`](./contracts/ethereum-1/0x2759e4741b370506be2ccef898960108e98f2faf/); ethereum `0x4c690c...3c48d6`; ethereum `0x617895...0ad40c`; ethereum `0x62f0ba...3e041c`; ethereum `0x84631c...a9f93a`; ethereum `0x8b0e80...32a2e8` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | ethereum | 3 deployments: ethereum [`0x3a828c...45b4c7`](./contracts/ethereum-1/0x3a828c183b3f382d030136c824844ea30145b4c7/); ethereum `0x7f43fd...9ce444`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xe86399...a04433`](./contracts/ethereum-1/0xe86399fe6d7007fdecb08a2ee1434ee677a04433/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | [`0xd8b0f4...99c940`](./contracts/base-8453/0xd8b0f4e54a8dac04e0a57392f5a630cedb99c940/) | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | [`0x3ba156...62be65`](./contracts/sonic-146/0x3ba1566ed39f865baf4c1eb9ace53f3d2062be65/) | ⚠️ Unaudited |
| SafeProxy | unknown | avalanche | [`0x3ba156...62be65`](./contracts/avalanche-43114/0x3ba1566ed39f865baf4c1eb9ace53f3d2062be65/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2759e4...8f2faf`](./contracts/ethereum-1/0x2759e4741b370506be2ccef898960108e98f2faf/) | MultiVault | core_logic | $1,072,258.76 | Verified native implementation with $1,072,258.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a828c...45b4c7`](./contracts/ethereum-1/0x3a828c183b3f382d030136c824844ea30145b4c7/) | MellowVaultCompat | core_logic | $509,826.64 | Verified native implementation with $509,826.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
