# Agentic Audit Brief: ZEROBASE CeDeFi

## Project Overview

- Project: ZEROBASE CeDeFi (`zerobase-cedefi`)
- Website: [https://app.zerobase.pro/](https://app.zerobase.pro/)
- Lifecycle: active (Tier 0, 89.6% below peak)
- Generated: 2026-05-27T16:53:00.154Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: arbitrum, avalanche, base, ethereum, optimism, polygon
- Contract surface: 7 unique implementations (54 raw deployments)
- DeFi Llama TVL: $58,318,541.70
- On-chain TVL (included contracts): $1,036.51
- TVL by chain: Ethereum $1,035.88 | Optimism $0.63

## Project Description

ZEROBASE CeDeFi is a basis trading protocol that allows users to deposit assets into vaults to earn yield from delta-neutral strategies across multiple chains.

### Architecture

The protocol consists of a single product family with multiple vault instances sharing the same core logic, deployed across different chains to facilitate basis trading.

## Audit Coverage Summary

- Verified implementations audited: 4/6 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 1
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 54
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 2 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Salus Security | Tier 2 | 4 | 66.7% | 2025-09 |
| PeckShield | Tier 2 | 1 | 16.7% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | arbitrum | 7 deployments: ethereum `0x9ef52d...093685`; optimism `0xcc5df5...5228e4`; polygon `0xcc5df5...5228e4`; base `0xcc5df5...5228e4`; arbitrum [`0x75c6a2...8e0d99`](./contracts/arbitrum-42161/0x75c6a251b422606bb132cae39526d3efed8e0d99/); arbitrum `0xcc5df5...5228e4`; arbitrum `0xd0f3db...40532b` | ✅ Audited |
| Utils | unknown | arbitrum | 9 deployments: ethereum `0x8724d1...c9c117`; ethereum `0xa07f34...0661ac`; ethereum `0xa6c17e...53958e`; optimism `0xa07f34...0661ac`; polygon `0xa07f34...0661ac`; base `0xa07f34...0661ac`; arbitrum [`0x254bd9...1045dd`](./contracts/arbitrum-42161/0x254bd92fae14e595ad2cf6652941684aa01045dd/); arbitrum `0x887b00...d13f19`; arbitrum `0xa07f34...0661ac` | ✅ Audited |
| WithdrawVault | operational_periphery | arbitrum | 8 deployments: ethereum `0xc4a718...1498d4`; ethereum `0xe2c792...3ded45`; optimism `0xe2c792...3ded45`; polygon `0xe2c792...3ded45`; base `0xe2c792...3ded45`; arbitrum [`0x6562d6...11c21f`](./contracts/arbitrum-42161/0x6562d6dcfa8e7e3c6772a4d619eec2029f11c21f/); arbitrum `0xa541a6...2b8528`; arbitrum `0xe2c792...3ded45` | ✅ Audited |
| zkToken | token | ethereum | 15 deployments: ethereum [`0x1ee6e9...bb917f`](./contracts/ethereum-1/0x1ee6e93134aee641bdbe470df2417af476bb917f/); ethereum `0x7336c8...338a16`; ethereum `0xdfdaa3...7c3f2d`; optimism `0xa6c17e...53958e`; optimism `0xdfdaa3...7c3f2d`; polygon `0xa6c17e...53958e`; polygon `0xdfdaa3...7c3f2d`; base `0xdfdaa3...7c3f2d`; arbitrum `0x3f80a2...ad2232`; arbitrum `0x443d48...657978`; arbitrum `0x804a5e...2054ae`; arbitrum `0x90d0d2...960d2f`; arbitrum `0xa6c17e...53958e`; arbitrum `0xc683dd...89ffc6`; arbitrum `0xdfdaa3...7c3f2d` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MockERC20 | token | arbitrum | 4 deployments: arbitrum [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/); arbitrum `0x29da64...d44311`; arbitrum `0x8e99c0...7933d0`; arbitrum `0x982521...093370` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Airdrop | unknown | ethereum | 10 deployments: ethereum [`0x1bd704...49157d`](./contracts/ethereum-1/0x1bd704634a64654c2ff203823772561b2c49157d/); ethereum `0xcb60b1...a5e543`; ethereum `0xcc5df5...5228e4`; optimism [`0x1bd704...49157d`](./contracts/optimism-10/0x1bd704634a64654c2ff203823772561b2c49157d/); polygon [`0x1bd704...49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/); base [`0x1bd704...49157d`](./contracts/base-8453/0x1bd704634a64654c2ff203823772561b2c49157d/); base `0xa6c17e...53958e`; arbitrum [`0x1bd704...49157d`](./contracts/arbitrum-42161/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum `0xd2c7cb...3eee77`; arbitrum `0xfba9a6...003dfa` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0xc3e900...24f829` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.openzeppelin.com/news/zerobase-token-audit](https://www.openzeppelin.com/news/zerobase-token-audit) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [ZeroBase_V2_audit_report_2025-09-16.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2025/ZeroBase_V2_audit_report_2025-09-16.pdf) | Salus Security | Audit | 2025-09 | fresh | Direct | contract_name | 39 | high |
| [PeckShield-Audit-Report-ZKFI-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZKFI-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1bd704...49157d`](./contracts/ethereum-1/0x1bd704634a64654c2ff203823772561b2c49157d/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=46

Zero-match audit list:

- [4681] www.openzeppelin.com/news/zerobase-token-audit

Fork inheritance lineage and inherited audits are included when available.
