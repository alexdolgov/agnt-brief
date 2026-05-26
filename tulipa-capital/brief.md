# Agentic Audit Brief: Tulipa Capital

## Project Overview

- Project: Tulipa Capital (`tulipa-capital`)
- Website: [https://www.tulipa.capital](https://www.tulipa.capital)
- Lifecycle: active (Tier 0, 74.1% below peak)
- Generated: 2026-05-26T11:49:27.169Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: avalanche, base, ethereum
- Contract surface: 4 unique implementations (28 raw deployments)
- DeFi Llama TVL: $49,287,690.74
- On-chain TVL (included contracts): $55,689,527.85
- TVL by chain: Ethereum $55,352,746.80 | Avalanche $336,780.01 | Base $1.04

## Project Description

Tulipa Capital is a risk curation protocol that deploys user deposits into yield-bearing strategies via a system of upgradeable vaults and proxies. It operates across Ethereum, Base, and Avalanche, offering structured products that optimize returns while managing risk.

### Architecture

All product families share the same proxy-based upgradeability pattern, with BeaconProxy and OptinProxy instances pointing to a small set of Vault implementations. The TokenizedAccount contract likely serves as a user-facing entry point or receipt token, while BoringVault and LendingVault represent specialized strategy vaults within the same infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 28
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $55,689,527.85
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | ethereum | 25 deployments: ethereum [`0x065ef7...0d8950`](./contracts/ethereum-1/0x065ef71bcdc43adb76bd0585d02ffe7c9e0d8950/); ethereum `0x097c94...602976`; ethereum `0x166483...714228`; ethereum `0x45b696...096d50`; ethereum `0x652716...23ab20`; ethereum `0x66dcb6...38fda8`; ethereum `0x6a5ea3...8aa98a`; ethereum `0x71652d...9d82f2`; ethereum `0x7895a0...6f6396`; ethereum `0x7a12d4...37e428`; ethereum `0x7efa7a...93e7d8`; ethereum `0x8092ca...6f88f0`; ethereum `0x936fac...d81bc7`; ethereum `0xab4ac2...5c010c`; ethereum `0xaba1a2...ff745c`; ethereum `0xb09f76...314f98`; ethereum `0xb60d5a...6d165f`; ethereum `0xbb7568...ca8f31`; ethereum `0xbc29b6...c8a6f2`; ethereum `0xce0b79...b574f3`; ethereum `0xdc7312...fc0766`; ethereum `0xe29619...389560`; ethereum `0xee6a60...c8b150`; avalanche `0x304892...db54af`; avalanche `0xb893c8...0d25e3` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | [`0x6bf340...1c3ddf`](./contracts/ethereum-1/0x6bf340db729d82af1f6443a0ea0d79647b1c3ddf/) | ⚠️ Unaudited |
| TokenizedAccount | core_logic | ethereum | [`0x686c83...365e29`](./contracts/ethereum-1/0x686c83aa81ba206354fdcbc2cd282b4531365e29/) | ⚠️ Unaudited |
| LendingVault | core_logic | base | [`0x61a860...ae47d4`](./contracts/base-8453/0x61a8606e04d350dfa1d1aaa68b37260746ae47d4/) | ⚠️ Unaudited |

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
| ethereum | [`0x065ef7...0d8950`](./contracts/ethereum-1/0x065ef71bcdc43adb76bd0585d02ffe7c9e0d8950/) | Vault | core_logic | $55,662,011.95 | Verified native implementation with $55,662,011.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bf340...1c3ddf`](./contracts/ethereum-1/0x6bf340db729d82af1f6443a0ea0d79647b1c3ddf/) | BoringVault | core_logic | $18,913.08 | Verified native implementation with $18,913.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x61a860...ae47d4`](./contracts/base-8453/0x61a8606e04d350dfa1d1aaa68b37260746ae47d4/) | LendingVault | core_logic | $1.04 | Verified native implementation with $1.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
