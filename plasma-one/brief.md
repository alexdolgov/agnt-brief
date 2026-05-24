# Agentic Audit Brief: Plasma One

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Plasma One (`plasma-one`)
- Website: [https://www.plasma.to/one](https://www.plasma.to/one)
- Lifecycle: unknown (Tier 0, 48.3% below peak)
- Generated: 2026-05-24T14:04:40.729Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: plasma
- Contract surface: 7 unique implementations (15 raw deployments)
- DeFi Llama TVL: $2,165,242.84
- On-chain TVL (included contracts): $0.62
- TVL by chain: Plasma $0.62

## Project Description

Plasma One is a crypto card issuer that enables users to spend digital assets via a card product. It leverages cross-chain token bridges and yield-bearing vaults to manage and transfer value.

### Architecture

The BoringVault holds user deposits and generates yield, while ATokenInstance represents tokenized positions. Multiple TetherTokenOFTExtension adapters enable cross-chain USDT transfers, and OUpgradeable contracts likely manage oracle or upgrade logic, all sharing the same deployer cluster.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 7
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.62
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $0.62 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoringVault | core_logic | plasma | [`0x1cf1c7...c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | ⚠️ Unaudited |
| ATokenInstance | token | plasma | [`0x5d72a9...30a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/) | ⚠️ Unaudited |
| OUpgradeable | proxy | plasma | 4 deployments: plasma [`0x0200c2...8470c1`](./contracts/plasma-9745/0x0200c29006150606b650577bbe7b6248f58470c1/); plasma `0x4970ea...0e8752`; plasma `0x63ab93...08e6f7`; plasma `0xc00e2c...ae65c1` | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | 2 deployments: plasma [`0x322483...773772`](./contracts/plasma-9745/0x3224831b5f45c616f8accba907798c6236773772/); plasma `0x5be536...47d8b2` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | plasma | 5 deployments: plasma [`0x1b64b9...d4d193`](./contracts/plasma-9745/0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193/); plasma `0x4a5cd3...7a6e0e`; plasma `0xb8ce59...625ebb`; plasma `0xcab8f3...f50b90`; plasma `0xf555a1...db34b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | plasma | `0x42529d...e11acc` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x779ded...713736` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x1cf1c7...c53d77`](./contracts/plasma-9745/0x1cf1c71440ebd9cc998ce0b1b25ccef275c53d77/) | BoringVault | core_logic | $0.62 | Verified native implementation with $0.62 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
