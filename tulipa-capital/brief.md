# Agentic Audit Brief: Tulipa Capital

## Project Overview

- Project: Tulipa Capital (`tulipa-capital`)
- Website: [https://www.tulipa.capital](https://www.tulipa.capital)
- Lifecycle: active (Tier 0, 74.1% below peak)
- Generated: 2026-06-12T09:21:32.003Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-645a
- Chains: avalanche, base, berachain, ethereum
- Contract surface: 6 unique implementations (35 raw deployments)
- DeFi Llama TVL: $40,980,856.82
- On-chain TVL (included contracts): $56,244,075.31
- TVL by chain: Ethereum $55,906,926.89 | Avalanche $336,780.01 | Berachain $367.37 | Base $1.04

## Project Description

Tulipa Capital is a DeFi risk-curation project focused on lending markets and vaults, emphasizing capital protection, transparency, and institutional-scale capital deployment. Its indexed contract set includes vaults and proxy-based deployments on Ethereum and Avalanche, while its broader DefiLlama-listed footprint spans additional chains; the indexed contracts should not be treated as the full multichain project surface.

### Architecture

All product families share the same proxy-based upgradeability pattern, with BeaconProxy and OptinProxy instances pointing to a small set of Vault implementations. The TokenizedAccount contract likely serves as a user-facing entry point or receipt token, while BoringVault and LendingVault represent specialized strategy vaults within the same infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 35
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $56,244,075.31
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
| Vault | core_logic | ethereum | 27 deployments: ethereum [`0x065ef7...0d8950`](./contracts/ethereum-1/0x065ef71bcdc43adb76bd0585d02ffe7c9e0d8950/); ethereum `0x097c94...602976`; ethereum `0x166483...714228`; ethereum `0x45b696...096d50`; ethereum `0x652716...23ab20`; ethereum `0x66dcb6...38fda8`; ethereum `0x6a5ea3...8aa98a`; ethereum `0x71652d...9d82f2`; ethereum `0x7895a0...6f6396`; ethereum `0x7a12d4...37e428`; ethereum `0x7efa7a...93e7d8`; ethereum `0x8092ca...6f88f0`; ethereum `0x936fac...d81bc7`; ethereum `0xab4ac2...5c010c`; ethereum `0xaba1a2...ff745c`; ethereum `0xb09f76...314f98`; ethereum `0xb60d5a...6d165f`; ethereum `0xbb7568...ca8f31`; ethereum `0xbc29b6...c8a6f2`; ethereum `0xce0b79...b574f3`; ethereum `0xdc7312...fc0766`; ethereum `0xe29619...389560`; ethereum `0xee6a60...c8b150`; base `0xee6a60...c8b150`; avalanche `0x304892...db54af`; avalanche `0x33f65c...81d465`; avalanche `0xb893c8...0d25e3` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 2 deployments: ethereum [`0x699e04...976490`](./contracts/ethereum-1/0x699e04f98de2fc395a7dcbf36b48ec837a976490/); ethereum `0x6bf340...1c3ddf` | ⚠️ Unaudited |
| TokenizedAccount | unknown | ethereum | 2 deployments: ethereum [`0x1175f2...1b8ae7`](./contracts/ethereum-1/0x1175f223c088d3583ce76f6766778a848d1b8ae7/); ethereum `0x686c83...365e29` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | 2 deployments: ethereum [`0x3b028b...73f228`](./contracts/ethereum-1/0x3b028b4b6c567ef5f8ca1144da4fbaa0d973f228/); berachain `0xe932da...54c444` | ⚠️ Unaudited |
| LendingVault | core_logic | base | [`0x61a860...ae47d4`](./contracts/base-8453/0x61a8606e04d350dfa1d1aaa68b37260746ae47d4/) | ⚠️ Unaudited |
| EquilibriaCrutch | unknown | ethereum | [`0xb10794...77ad62`](./contracts/ethereum-1/0xb107943bbf7c6874af38ebf49c15b383b077ad62/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
