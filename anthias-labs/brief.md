# Agentic Audit Brief: Anthias Labs

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Anthias Labs (`anthias-labs`)
- Website: [https://anthias.xyz](https://anthias.xyz)
- Lifecycle: unknown (Tier 0, 19.4% below peak)
- Generated: 2026-05-31T07:11:25.255Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: base
- Contract surface: 2 unique implementations (9 raw deployments)
- DeFi Llama TVL: $21,649,055.52
- On-chain TVL (included contracts): $705,349.17
- TVL by chain: Base $705,349.17

## Project Description

Anthias Labs provides risk curation services for DeFi protocols, deploying and managing vaults that optimize yield and risk parameters. The project operates on Base and utilizes VaultV2 and MetaMorpho contracts to implement these strategies.

### Architecture

All contracts are deployed under the single Anthias Labs family, with VaultV2 and MetaMorpho contracts likely sharing common risk management logic and infrastructure, though no explicit supporting contracts are identified.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 9
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $705,349.17
- Latest audit: 2024-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $705,349.17 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| VaultV2 | core_logic | base | 5 deployments: base [`0x48a90e...c79965`](./contracts/base-8453/0x48a90e85be5c56b0a669985a12ee7c449fc79965/); base `0x5083b1...3f7c48`; base `0x89bedb...4d6f53`; base `0xbb2f06...d977c9`; base `0xdba76b...09f7a8` | ⚠️ Unaudited |
| MetaMorpho | unknown | base | 4 deployments: base [`0x543257...f5a796`](./contracts/base-8453/0x543257ef2161176d7c8cd90ba65c2d4caef5a796/); base `0xa0e430...3d0ff1`; base `0xc1256a...00a2ca`; base `0xf24608...01a026` | ⚠️ Unaudited |

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
| [Liquidity Providers Taking Position of Volatility.pdf](https://github.com/anthias-labs/research/blob/main/Liquidity%20Providers%20Taking%20Position%20of%20Volatility.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Anthias Liquip Score Measuring Liquidation Probability.pdf](https://github.com/anthias-labs/research/blob/main/Anthias%20Liquip%20Score%20Measuring%20Liquidation%20Probability.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [A Framework for Designing Corruption-Resistant Operator Networks.pdf](https://github.com/anthias-labs/research/blob/main/A%20Framework%20for%20Designing%20Corruption-Resistant%20Operator%20Networks.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x48a90e...c79965`](./contracts/base-8453/0x48a90e85be5c56b0a669985a12ee7c449fc79965/) | VaultV2 | core_logic | $705,349.17 | Verified native implementation with $705,349.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [6091] Liquidity Providers Taking Position of Volatility.pdf
- [6092] Anthias Liquip Score Measuring Liquidation Probability.pdf
- [6093] A Framework for Designing Corruption-Resistant Operator Networks.pdf

Fork inheritance lineage and inherited audits are included when available.
