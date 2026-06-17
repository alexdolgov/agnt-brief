# Agentic Audit Brief: Hegic

## Project Overview

- Project: Hegic (`hegic`)
- Website: [https://www.hegic.co](https://www.hegic.co)
- Lifecycle: active (Tier 0, 91.2% below peak)
- Generated: 2026-06-17T07:00:57.541Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $8,506,910.82
- On-chain TVL (included contracts): $79.12
- TVL by chain: Ethereum $79.12

## Project Description

Hegic is a peer-to-pool on-chain options protocol tracked on Arbitrum and Ethereum. The current product lets users trade ETH and WBTC call and put options, including ATM and OTM options, and offers one-click option strategies backed by protocol liquidity pools. Legacy Ethereum HegicCALL/HegicPUT and HegicETHPool/HegicERCPool deployments should be distinguished from the current multi-chain Hegic options system, whose TVL is primarily on Arbitrum.

### Architecture

The Hegic contract acts as a registry or access control layer for the option contracts (HegicCALL and HegicPUT), which in turn draw liquidity from the shared HegicETHPool and HegicERCPool. These pools serve as the common underwriting infrastructure for all option types.

## Contract Surface Quality

- Indexed contracts: 111; live-surface contracts included: 18 (10 live, 8 unknown).
- Excluded by liveness: 93 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 59; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/18 (33.3%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $79.12
- Latest audit: 2022-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 33.3% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HegicETHPool | core_logic | ethereum | n/a | [`0x878f15...4e140b`](./contracts/ethereum-1/0x878f15ffc8b894a1ba7647c7176e4c01f74e140b/) | ✅ Audited |
| CoverPool | core_logic | arbitrum | n/a | [`0xd47ef9...b231be`](./contracts/arbitrum-42161/0xd47ef934e301e0ee3b1ce0e3eebcb64de8b231be/) | ✅ Audited |
| HegicERCPool | core_logic | ethereum | n/a | [`0x20dd9e...ad5de7`](./contracts/ethereum-1/0x20dd9e22d22dd0a6ef74a520cb08303b5fad5de7/) | ✅ Audited |
| HegicETHOptions | unknown | ethereum | n/a | [`0xefc0ee...9ecfa2`](./contracts/ethereum-1/0xefc0eeadc1132a12c9487d800112693bf49ecfa2/) | ✅ Audited |
| HegicStaking | unknown | ethereum | n/a | [`0xc9ac1f...b897a2`](./contracts/ethereum-1/0xc9ac1f2571748c4d02774b8d0fe5981ee4b897a2/) | ✅ Audited |
| OperationalTreasury | unknown | arbitrum | n/a | [`0xec096e...377371`](./contracts/arbitrum-42161/0xec096ea6eb9aa5ea689b0cf00882366e92377371/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WHERC20v2 | token | ethereum | n/a | [`0xf19c3f...739dc4`](./contracts/ethereum-1/0xf19c3fafb0171484d2301af1838cb5c6ea739dc4/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x5f4ec3...5b8419`](./contracts/ethereum-1/0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419/) | ⚠️ Unaudited |
| Hegic | unknown | ethereum | n/a | [`0x584bc1...768430`](./contracts/ethereum-1/0x584bc13c7d411c00c01a62e8019472de68768430/) | ⚠️ Unaudited |
| HegicOperationalTreasury | unknown | arbitrum | n/a | [`0xb0f9f0...7b4ab3`](./contracts/arbitrum-42161/0xb0f9f032158510cd4a926f9263abc86baf7b4ab3/) | ⚠️ Unaudited |
| HegicStakeAndCover | unknown | arbitrum | n/a | [`0x60898d...9d5d5d`](./contracts/arbitrum-42161/0x60898dfa3c6e8ba4998b5f3be25fb0b0b69d5d5d/) | ⚠️ Unaudited |
| HegicStrategyCall | unknown | arbitrum | n/a | [`0x05458b...c87560`](./contracts/arbitrum-42161/0x05458b7d9531ead242290de60beaa3cc10c87560/) | ⚠️ Unaudited |
| HegicStrategyInverseLongCondor | unknown | arbitrum | n/a | [`0x87dfcf...e42686`](./contracts/arbitrum-42161/0x87dfcfee4715dad66e8b50f7ebdde8aa66e42686/) | ⚠️ Unaudited |
| HegicStrategyPut | unknown | arbitrum | n/a | [`0xaa0dfb...9b22aa`](./contracts/arbitrum-42161/0xaa0dfbfb8da7f45bb41c0fb68b71faeb959b22aa/) | ⚠️ Unaudited |
| HLTPs | unknown | ethereum | n/a | [`0xbc8942...55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | ⚠️ Unaudited |
| OptionsManager | governance | ethereum | n/a | [`0x1ba4b4...c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | ⚠️ Unaudited |
| PositionsManager | unknown | arbitrum | n/a | [`0x5fe380...9a76d5`](./contracts/arbitrum-42161/0x5fe380d68fee022d8acd42dc4d36fbfb249a76d5/) | ⚠️ Unaudited |
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
| [PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf](https://github.com/hegic/contracts/blob/main/packages/herge/docs/PeckShield-Audit-Report-Hegic-Herge-Protocol-Upgrade-v1.0.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Hegic-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Hegic-v1.0.pdf) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf19c3f...739dc4`](./contracts/ethereum-1/0xf19c3fafb0171484d2301af1838cb5c6ea739dc4/) | WHERC20v2 | token | $79.12 | Verified native implementation with $79.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x584bc1...768430`](./contracts/ethereum-1/0x584bc13c7d411c00c01a62e8019472de68768430/) | Hegic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb0f9f0...7b4ab3`](./contracts/arbitrum-42161/0xb0f9f032158510cd4a926f9263abc86baf7b4ab3/) | HegicOperationalTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60898d...9d5d5d`](./contracts/arbitrum-42161/0x60898dfa3c6e8ba4998b5f3be25fb0b0b69d5d5d/) | HegicStakeAndCover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05458b...c87560`](./contracts/arbitrum-42161/0x05458b7d9531ead242290de60beaa3cc10c87560/) | HegicStrategyCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x87dfcf...e42686`](./contracts/arbitrum-42161/0x87dfcfee4715dad66e8b50f7ebdde8aa66e42686/) | HegicStrategyInverseLongCondor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaa0dfb...9b22aa`](./contracts/arbitrum-42161/0xaa0dfbfb8da7f45bb41c0fb68b71faeb959b22aa/) | HegicStrategyPut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc8942...55f0d1`](./contracts/ethereum-1/0xbc89428adb14384453c04d08d8f530455e55f0d1/) | HLTPs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba4b4...c1e97f`](./contracts/ethereum-1/0x1ba4b447d0df64da64024e5ec47da94458c1e97f/) | OptionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5fe380...9a76d5`](./contracts/arbitrum-42161/0x5fe380d68fee022d8acd42dc4d36fbfb249a76d5/) | PositionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0425f...83be29`](./contracts/ethereum-1/0xc0425f0c7f84956d21ad767abd1892344783be29/) | WhiteStakingUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
