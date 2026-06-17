# Agentic Audit Brief: ZEROBASE CeDeFi

## Project Overview

- Project: ZEROBASE CeDeFi (`zerobase-cedefi`)
- Website: [https://app.zerobase.pro/](https://app.zerobase.pro/)
- Lifecycle: active (Tier 0, 89.6% below peak)
- Generated: 2026-06-17T07:00:46.663Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 11 unique implementations (40 raw deployments)
- DeFi Llama TVL: $56,776,831.24
- On-chain TVL (included contracts): $1,036.51
- TVL by chain: Ethereum $1,035.88 | Optimism $0.63

## Project Description

ZEROBASE CeDeFi is a zk-powered stablecoin staking and CeDeFi yield protocol tied to prover-node security and ZKP generation. Users stake or deposit stablecoins into vault/staking flows and can withdraw through the protocol, while deposited funds are used for CeDeFi yield generation including arbitrage activity via Binance.

### Architecture

The protocol consists of a single product family with multiple vault instances sharing the same core logic, deployed across different chains to facilitate basis trading.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 40 (11 live, 29 unknown).
- Excluded by liveness: 65 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/7 (71.4%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 1
- Unverified implementations: 4
- Unique implementations: 11
- Raw deployments: 40
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 2 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Salus Security | Tier 2 | 4 | 57.1% | 2025-09 |
| unknown | Tier 2 | 3 | 42.9% | 2024-12 |
| PeckShield | Tier 2 | 2 | 28.6% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x9ef52d...093685`; optimism `0xcc5df5...5228e4`; polygon `0xcc5df5...5228e4`; base `0xcc5df5...5228e4`; arbitrum [`0x75c6a2...8e0d99`](./contracts/arbitrum-42161/0x75c6a251b422606bb132cae39526d3efed8e0d99/); arbitrum `0xcc5df5...5228e4`; arbitrum `0xd0f3db...40532b` | ✅ Audited |
| Utils | unknown | bsc | unit-28150 | [`0xcc5df5...5228e4`](./contracts/bsc-56/0xcc5df5c68d8c991035b6a437d4e00a99875228e4/) | ✅ Audited |
| Utils | unknown | arbitrum | n/a | 4 deployments: polygon `0xa07f34...0661ac`; arbitrum [`0x254bd9...1045dd`](./contracts/arbitrum-42161/0x254bd92fae14e595ad2cf6652941684aa01045dd/); arbitrum `0x887b00...d13f19`; arbitrum `0xa07f34...0661ac` | ✅ Audited |
| WithdrawVault | operational_periphery | arbitrum | n/a | 4 deployments: polygon `0xe2c792...3ded45`; arbitrum [`0x6562d6...11c21f`](./contracts/arbitrum-42161/0x6562d6dcfa8e7e3c6772a4d619eec2029f11c21f/); arbitrum `0xa541a6...2b8528`; arbitrum `0xe2c792...3ded45` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | operational_periphery | polygon | n/a | 4 deployments: polygon [`0x1bd704...49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum [`0x1bd704...49157d`](./contracts/arbitrum-42161/0x1bd704634a64654c2ff203823772561b2c49157d/); arbitrum `0xd2c7cb...3eee77`; arbitrum `0xfba9a6...003dfa` | ⚠️ Unaudited |
| MockERC20 | token | arbitrum | n/a | 4 deployments: arbitrum [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/); arbitrum `0x29da64...d44311`; arbitrum `0x8e99c0...7933d0`; arbitrum `0x982521...093370` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| zkToken | unknown | avalanche | n/a | 12 deployments: ethereum `0x7336c8...338a16`; polygon `0xa6c17e...53958e`; polygon `0xdfdaa3...7c3f2d`; base `0xdfdaa3...7c3f2d`; arbitrum `0x3f80a2...ad2232`; arbitrum `0x443d48...657978`; arbitrum `0x804a5e...2054ae`; arbitrum `0x90d0d2...960d2f`; arbitrum `0xa6c17e...53958e`; arbitrum `0xc683dd...89ffc6`; arbitrum `0xdfdaa3...7c3f2d`; avalanche [`0x2a4473...6a99a4`](./contracts/avalanche-43114/0x2a447358e273555a9eced1106b0cba5dfb6a99a4/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x1d5cbc...de397d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a9a07...5b64a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf652b...782088` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3e900...24f829` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.openzeppelin.com/news/zerobase-token-audit](https://www.openzeppelin.com/news/zerobase-token-audit) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [ZeroBase_V2_audit_report_2025-09-16.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2025/ZeroBase_V2_audit_report_2025-09-16.pdf) | Salus Security | Audit | 2025-09 | fresh | Direct | contract_name | 26 | high |
| [PeckShield-Audit-Report-ZKFI-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZKFI-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 8 | high |
| [ZeroBase_report_2024-12-24.pdf](https://github.com/Salusec/Salus-audit/blob/main/2024/ZeroBase_report_2024-12-24.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x1bd704...49157d`](./contracts/polygon-137/0x1bd704634a64654c2ff203823772561b2c49157d/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a5f8f...d7aae8`](./contracts/arbitrum-42161/0x1a5f8fd6892132c4a297d353a49601148bd7aae8/) | MockERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=71

Zero-match audit list:

- [4681] www.openzeppelin.com/news/zerobase-token-audit

Fork inheritance lineage and inherited audits are included when available.
