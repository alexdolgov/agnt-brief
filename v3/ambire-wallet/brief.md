# Agentic Audit Brief: Ambire Wallet

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Ambire Wallet (`ambire-wallet`)
- Website: [https://www.ambire.com](https://www.ambire.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-03T21:05:27.103Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $8,998,043.13
- On-chain TVL (included contracts): $8,796,446.28
- TVL by chain: Ethereum $8,796,446.28

## Project Description

Wallets. Structurally: 2 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s).

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 10 (2 live, 8 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $8,796,446.28
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $8,796,446.28 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WALLETToken | token | ethereum | n/a | [`0x888000...2794ae`](./contracts/ethereum-1/0x88800092ff476844f74dc2fc427974bbee2794ae/) | ⚠️ Unaudited |
| StakingPool | core_logic | ethereum | n/a | [`0x47cd7e...c12935`](./contracts/ethereum-1/0x47cd7e91c3cbaaf266369fe8518345fc4fc12935/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0604f2...ceaee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e3c4f...f4bf3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1955db...f6440b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bba61...b1b2dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f6a77...1c8dcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa69b80...24aaff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde0ed7...7b9159` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2dd37...4b110b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf) | Hunter Security | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Ambire-Hunter-Security-Assessment-26-01-2024.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-Hunter-Security-Assessment-26-01-2024.pdf) | Hunter Security | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf) | Hunter Security | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf) | Hunter Security | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [CuriousApple-AmbireRewview01.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/CuriousApple-AmbireRewview01.md) | CuriousApple | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [ERC6492-Hunter-Security-Audit-Report-V1.0.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/ERC6492-Hunter-Security-Audit-Report-V1.0.pdf) | Hunter Security | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Pashov-Ambire-second-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-second-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pashov-Ambire-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pashov-Ambire-third-security-review.md](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Pashov-Ambire-third-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Shieldify-Ambire-Security-Review.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/Shieldify-Ambire-Security-Review.pdf) | Shieldify | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [code4rena - Ambire Wallet - Invitational.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/code4rena%20-%20Ambire%20Wallet%20-%20Invitational.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf](https://github.com/AmbireTech/ambire-common/blob/v2/audits/facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf) | Facu | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x888000...2794ae`](./contracts/ethereum-1/0x88800092ff476844f74dc2fc427974bbee2794ae/) | WALLETToken | token | $8,796,446.28 | Verified native implementation with $8,796,446.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47cd7e...c12935`](./contracts/ethereum-1/0x47cd7e91c3cbaaf266369fe8518345fc4fc12935/) | StakingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2301] Ambire-EIP-7702-Update-Hunter-Security-Audit-Report-0.1.pdf
- [2302] Ambire-Hunter-Security-Assessment-26-01-2024.pdf
- [2303] Ambire-stkWALLET-Hunter-Security-Audit-26-02-2024-1.pdf
- [2304] Ambire-stkWallet-Hunter-Security-Audit-Report-2025-1.pdf
- [2305] CuriousApple-AmbireRewview01.md
- [2306] ERC6492-Hunter-Security-Audit-Report-V1.0.pdf
- [2307] Pashov-Ambire-second-security-review.md
- [2308] Pashov-Ambire-security-review.md
- [2309] Pashov-Ambire-third-security-review.md
- [2310] Shieldify-Ambire-Security-Review.pdf
- [2311] code4rena - Ambire Wallet - Invitational.pdf
- [2312] facu_2023-09-28_Ambire_Smart_Contracts_Audit_Report-1.pdf

Fork inheritance lineage and inherited audits are included when available.
