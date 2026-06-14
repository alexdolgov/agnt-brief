# Agentic Audit Brief: Credit Coop

⚠️ Lifecycle status: UNKNOWN - TVL dropped 35.6% over 90 days

## Project Overview

- Project: Credit Coop (`credit-coop`)
- Website: [https://www.creditcoop.xyz/](https://www.creditcoop.xyz/)
- Lifecycle: unknown (Tier 0, 48.5% below peak)
- Generated: 2026-06-14T00:12:02.525Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-24d8
- Chains: base, ethereum
- Contract surface: 7 unique implementations (17 raw deployments)
- DeFi Llama TVL: $4,587,572.59
- On-chain TVL (included contracts): $4,587,361.68
- TVL by chain: Ethereum $2,511,563.19 | Base $2,075,798.49

## Project Description

Credit Coop is a decentralized lending protocol for real-world-asset-backed loans. It uses native LendingVault contracts to pool deposited assets and issue loans; USDC should be treated as an external settlement/deposit token dependency, not as a Credit Coop product line or project-owned contract surface.

### Architecture

The Credit Coop lending vaults rely on the PayFi Vault's USDC tokens as the deposit and loan currency. All vaults interact with the same USDC contracts, sharing a common settlement layer across Ethereum and Base.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 17
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,587,361.68
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 2 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $4,587,361.68 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendingVault | core_logic | base | 4 deployments: ethereum `0x6c99a7...e01dbc`; ethereum `0x6dacaf...88b623`; base [`0x0cf11a...5fcf9d`](./contracts/base-8453/0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d/); base `0x214699...dc85ce` | ⚠️ Unaudited |
| CreditStrategy | unknown | ethereum | 2 deployments: ethereum [`0xb8c65c...beef6d`](./contracts/ethereum-1/0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d/); ethereum `0xf65c1f...42f6f4` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | 2 deployments: ethereum `0xa0b869...06eb48`; base [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| LendingVaultFactory | registry | base | 3 deployments: ethereum `0xecfd3e...a6fa63`; base [`0x1c4226...ebf83d`](./contracts/base-8453/0x1c4226eb7e7d2fa8a92ad0e181abe5718aebf83d/); base `0x445b79...f02801` | ⚠️ Unaudited |
| LiquidStrategy | unknown | base | 4 deployments: ethereum `0x6df7ff...9d11f5`; ethereum `0xd462e8...87ac14`; base [`0x57184d...627e56`](./contracts/base-8453/0x57184d7ec2d4cf5dbb77cde2d39e127391627e56/); base `0xe2c119...1ce960` | ⚠️ Unaudited |
| SpigotFactory | registry | base | [`0x360b33...c35ae0`](./contracts/base-8453/0x360b330f47a9b2f54aa53a962911366b37c35ae0/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | `0x0b4105...9ff4c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0cf11a...5fcf9d`](./contracts/base-8453/0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d/) | LendingVault | core_logic | $4,587,361.68 | Verified native implementation with $4,587,361.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8c65c...beef6d`](./contracts/ethereum-1/0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d/) | CreditStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c4226...ebf83d`](./contracts/base-8453/0x1c4226eb7e7d2fa8a92ad0e181abe5718aebf83d/) | LendingVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x57184d...627e56`](./contracts/base-8453/0x57184d7ec2d4cf5dbb77cde2d39e127391627e56/) | LiquidStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x360b33...c35ae0`](./contracts/base-8453/0x360b330f47a9b2f54aa53a962911366b37c35ae0/) | SpigotFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11579] IndexDIMv3AuditReport.md
- [11580] IndexIcUSDAuditReport.md
- [11581] IndexPRTAuditReport.md

Fork inheritance lineage and inherited audits are included when available.
