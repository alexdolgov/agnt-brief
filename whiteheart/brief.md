# Agentic Audit Brief: Whiteheart

⚠️ Lifecycle status: DECLINING - TVL dropped 8.5% over 90 days

## Project Overview

- Project: Whiteheart (`whiteheart`)
- Lifecycle: declining (Tier 0, 99.9% below peak)
- Generated: 2026-06-19T20:58:53.387Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $6,314.21
- On-chain TVL (included contracts): $89,108.32
- TVL by chain: Ethereum $89,108.32

## Project Description

Whiteheart is a DeFi options protocol that provides hedged exposure to ETH and USDC through tokenized vaults. It allows users to deposit assets into pools that automatically manage option strategies to generate yield or protect against downside risk.

### Architecture

The WhiteUSDCPool serves as the core logic contract managing the options strategy, while WHERC20v2 and WHETHv2 are tokenized representations of the hedged positions, likely minted upon deposit into the pool.

## Contract Surface Quality

- Indexed contracts: 97; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 91 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 47; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/6 (16.7%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $89,042.26
- Latest audit: 2021-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $89,042.26 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 16.7% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WHERC20v2 | token | ethereum | n/a | [`0xf19c3f...739dc4`](./contracts/ethereum-1/0xf19c3fafb0171484d2301af1838cb5c6ea739dc4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20PresetFixedSupply | token | ethereum | n/a | [`0x60e46a...fe7ea8`](./contracts/ethereum-1/0x60e46a4dd91d10506d8efa2caa266e7191fe7ea8/) | ⚠️ Unaudited |
| HegicStaking | unknown | ethereum | n/a | [`0xc9ac1f...b897a2`](./contracts/ethereum-1/0xc9ac1f2571748c4d02774b8d0fe5981ee4b897a2/) | ⚠️ Unaudited |
| HLTPs | unknown | ethereum | n/a | [`0xbc8942...55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | ⚠️ Unaudited |
| OptionsManager | governance | ethereum | n/a | [`0x1ba4b4...c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | ⚠️ Unaudited |
| WhiteStakingUSDC | unknown | ethereum | n/a | [`0xc0425f...83be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Whiteheart-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Whiteheart-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1ba4b4...c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | OptionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0425f...83be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | WhiteStakingUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
