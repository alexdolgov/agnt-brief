# Agentic Audit Brief: Plasma Saving Vaults

⚠️ Lifecycle status: DECLINING - TVL dropped 48.1% over 90 days

## Project Overview

- Project: Plasma Saving Vaults (`plasma-saving-vaults`)
- Website: [https://app.plasma.to/](https://app.plasma.to/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:09.343Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: plasma
- Contract surface: 6 unique implementations (14 raw deployments)
- DeFi Llama TVL: $45,454,265.53
- On-chain TVL (included contracts): $2,646,281.07
- TVL by chain: Plasma $2,646,281.07

## Project Description

Plasma Saving Vaults is an on-chain savings/yield vault product. Its live Savings Lending Vault is publicly described as using Veda vault infrastructure to deploy deposited assets into Aave for yield. BoringVault-style vault infrastructure may be part of the checked surface, but ATokenInstance receipt-token claims and TetherTokenOFTExtension adapter scope should be treated as unconfirmed unless supported by project documentation or source verification.

### Architecture

The BoringVault serves as the main asset management contract, while multiple TetherTokenOFTExtension adapters (deployed as proxies) enable cross-chain token transfers. The ATokenInstance proxy issues receipt tokens to users, linking deposits to yield accrual.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 14
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,646,281.07
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,646,281.07 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoringVault | core_logic | plasma | [`0xd1074e...73a000`](./contracts/plasma-9745/0xd1074e0ae85610ddba0147e29ebe0d8e5873a000/) | ⚠️ Unaudited |
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | plasma | `0x779ded...713736` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0xd1074e...73a000`](./contracts/plasma-9745/0xd1074e0ae85610ddba0147e29ebe0d8e5873a000/) | BoringVault | core_logic | $2,646,281.07 | Verified native implementation with $2,646,281.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x0200c2...8470c1`](./contracts/plasma-9745/0x0200c29006150606b650577bbe7b6248f58470c1/) | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
