# Agentic Audit Brief: LlamaPay

## Project Overview

- Project: LlamaPay (`llamapay`)
- Website: [https://llamapay.io](https://llamapay.io)
- Lifecycle: active (Tier 0, 71.7% below peak)
- Generated: 2026-06-10T20:59:07.021Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, cronos, ethereum, fantom, fraxtal, gnosis, mantle, mode, optimism, polygon, sonic, zora
- Contract surface: 19 unique implementations (98 raw deployments)
- DeFi Llama TVL: $25,777,577.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

LlamaPay is a multi-chain protocol for by-the-second recurring payment streams, commonly used for salaries, grants, subscriptions, and other continuous token payments. It also supports related vesting and escrow functionality through factory-deployed payment contracts. Claim automation/bots and upstream Disperse-style batch distribution utilities should be treated as supporting or external utilities rather than the core product purpose.

### Architecture

The Live family's LlamaPayFactory and Vesting Escrow Factory deploy TokenEscrow instances from the Scheduled Payments family, which hold and release funds. LlamaPayBot contracts interact with these escrows to automate payment execution, while Disperse assists in batch token distributions.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 3
- Unverified implementations: 11
- Unique implementations: 19
- Raw deployments: 98
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LlamaPayBot | unknown | ethereum | 17 deployments: ethereum [`0x0327a0...ae948e`](./contracts/ethereum-1/0x0327a00f37115115038c289827480ddaabae948e/); ethereum `0xc5a4fe...074ab9`; ethereum `0xe10eb2...218ee9`; optimism `0x6f9fb4...56301a`; optimism `0xc5a4fe...074ab9`; bsc `0xc5a4fe...074ab9`; polygon `0xc5a4fe...074ab9`; arbitrum `0xb1870e...b184e0`; avalanche [`0x0327a0...ae948e`](./contracts/avalanche-43114/0x0327a00f37115115038c289827480ddaabae948e/); avalanche `0x0e52b1...c258cf`; avalanche `0x3addfd...b6cb0f`; avalanche `0x57547f...0353d7`; avalanche `0x9410fb...1b633c`; avalanche `0xb7caa9...8b268c`; avalanche `0xda33d4...5294d1`; avalanche `0xe10eb2...218ee9`; avalanche `0xf13563...bac057` | ⚠️ Unaudited |
| LlamaPayFactory | registry | sonic | 14 deployments: ethereum `0xde1c04...f84c7f`; optimism `0xde1c04...f84c7f`; bsc `0xde1c04...f84c7f`; gnosis `0xde1c04...f84c7f`; polygon `0xde1c04...f84c7f`; sonic [`0x09c39b...3aea07`](./contracts/sonic-146/0x09c39b8311e4b7c678cbdad76556877ecd3aea07/); base [`0x09c39b...3aea07`](./contracts/base-8453/0x09c39b8311e4b7c678cbdad76556877ecd3aea07/); arbitrum `0xde1c04...f84c7f`; avalanche `0x27fba1...247f9b`; avalanche `0x402ab0...dd76b2`; avalanche `0x6bbafc...9fd768`; avalanche `0x7d507b...25f4a3`; avalanche `0xedf040...38c481`; berachain [`0x09c39b...3aea07`](./contracts/berachain-80094/0x09c39b8311e4b7c678cbdad76556877ecd3aea07/) | ⚠️ Unaudited |
| SimpleVestingEscrow | operational_periphery | mode | [`0x4ace3e...2b84bd`](./contracts/mode-34443/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/) | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | ethereum | 7 deployments: ethereum [`0x02266e...121c01`](./contracts/ethereum-1/0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01/); ethereum `0x056e39...532b72`; optimism `0xb4e9d1...404779`; bsc [`0x02266e...121c01`](./contracts/bsc-56/0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01/); polygon [`0x02266e...121c01`](./contracts/polygon-137/0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01/); arbitrum `0x1564d7...528734`; avalanche `0x4c48f1...84fa0c` | ⚠️ Unaudited |
| VestingEscrowFactory | operational_periphery | mode | [`0x62e13b...cd4c10`](./contracts/mode-34443/0x62e13be78af77c86d38a027ae432f67d9ecd4c10/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Simple Vesting Escrow | operational_periphery | optimism | 13 deployments: ethereum `0x9dd5cf...14bad2`; optimism [`0x4ace3e...2b84bd`](./contracts/optimism-10/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); bsc [`0x4ace3e...2b84bd`](./contracts/bsc-56/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); gnosis [`0x4ace3e...2b84bd`](./contracts/gnosis-100/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); polygon [`0x4ace3e...2b84bd`](./contracts/polygon-137/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); sonic `0xb61915...75a8b4`; mantle [`0x4ace3e...2b84bd`](./contracts/mantle-5000/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); base [`0x4ace3e...2b84bd`](./contracts/base-8453/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); base `0xb61915...75a8b4`; arbitrum [`0x4ace3e...2b84bd`](./contracts/arbitrum-42161/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); avalanche [`0x4ace3e...2b84bd`](./contracts/avalanche-43114/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); berachain `0xb93427...10411a`; blast [`0x4ace3e...2b84bd`](./contracts/blast-81457/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/) | ⚠️ Unaudited (bytecode match) |
| Vesting Escrow Factory | operational_periphery | berachain | 13 deployments: ethereum `0xcf6178...6ab347`; optimism `0x62e13b...cd4c10`; bsc `0x62e13b...cd4c10`; gnosis `0x62e13b...cd4c10`; polygon `0x62e13b...cd4c10`; sonic `0xb93427...10411a`; mantle `0x62e13b...cd4c10`; base `0x62e13b...cd4c10`; arbitrum `0x62e13b...cd4c10`; avalanche `0x62e13b...cd4c10`; berachain [`0x4ace3e...2b84bd`](./contracts/berachain-80094/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/); berachain `0xb61915...75a8b4`; blast `0x62e13b...cd4c10` | ⚠️ Unaudited (bytecode match) |
| Vyper_contract | unknown | ethereum | 21 deployments: ethereum [`0xb61915...75a8b4`](./contracts/ethereum-1/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); ethereum `0xb93427...10411a`; optimism [`0xb61915...75a8b4`](./contracts/optimism-10/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); optimism `0xb93427...10411a`; bsc [`0xb61915...75a8b4`](./contracts/bsc-56/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); bsc `0xb93427...10411a`; gnosis [`0xb61915...75a8b4`](./contracts/gnosis-100/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); gnosis `0xb93427...10411a`; polygon [`0xb61915...75a8b4`](./contracts/polygon-137/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); polygon `0xb93427...10411a`; mantle [`0xb61915...75a8b4`](./contracts/mantle-5000/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); mantle `0xb93427...10411a`; base `0xb93427...10411a`; mode [`0xb61915...75a8b4`](./contracts/mode-34443/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); mode `0xb93427...10411a`; arbitrum [`0xb61915...75a8b4`](./contracts/arbitrum-42161/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); arbitrum `0xb93427...10411a`; avalanche [`0xb61915...75a8b4`](./contracts/avalanche-43114/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); avalanche `0xb93427...10411a`; blast [`0xb61915...75a8b4`](./contracts/blast-81457/0xb61915609e6dc7a7261b678073c53bac5875a8b4/); blast `0xb93427...10411a` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | cronos | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc5a4fe...074ab9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xda33d4...5294d1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xde1c04...f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x4ace3e...2b84bd` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xb61915...75a8b4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | `0xb93427...10411a` | ❓ Unverified |
| UnnamedContract | unknown | zora | `0x62e13b...cd4c10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-LlamaPay-v1.0.pdf](https://github.com/LlamaPay/llamapay/blob/master/audits/PeckShield-Audit-Report-LlamaPay-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x09c39b...3aea07`](./contracts/sonic-146/0x09c39b8311e4b7c678cbdad76556877ecd3aea07/) | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4ace3e...2b84bd`](./contracts/mode-34443/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/) | SimpleVestingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02266e...121c01`](./contracts/ethereum-1/0x02266e3b5ce26d62ea73ea7f2c542ebc24121c01/) | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4ace3e...2b84bd`](./contracts/berachain-80094/0x4ace3edd57eff1176a862e7b72db090ecf2b84bd/) | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x62e13b...cd4c10`](./contracts/mode-34443/0x62e13be78af77c86d38a027ae432f67d9ecd4c10/) | VestingEscrowFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5984] PeckShield-Audit-Report-LlamaPay-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
