# Agentic Audit Brief: BIM

## Project Overview

- Project: BIM (`bim`)
- Website: [https://exchange.bim.finance/](https://exchange.bim.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.454Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $232,342.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 8 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/8 (12.5%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/11
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 22 (22 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 16 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 1 | 9.1% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BIM | unknown | base | n/a | [`0x555fff...2e8379`](./contracts/base-8453/0x555fff48549c1a25a723bd8e7ed10870d82e8379/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BimOracle | unknown | base | n/a | [`0x62ff2b...da76d2`](./contracts/base-8453/0x62ff2b90a14c2e312c8b1c4c08f61af710da76d2/) | ⚠️ Unaudited |
| BimSwapper | unknown | base | n/a | [`0xb32a52...e067ef`](./contracts/base-8453/0xb32a5263eb60c56610bb44b566f6d44b6ae067ef/) | ⚠️ Unaudited |
| BimVaultV7 | unknown | base | n/a | [`0xee9550...31304b`](./contracts/base-8453/0xee95508e0f52dbea2aaa507462735a3de731304b/) | ⚠️ Unaudited |
| BimZapRouter | unknown | base | n/a | [`0xa8c850...42a856`](./contracts/base-8453/0xa8c8504bf1dc659d93ca5a05dc77d7104142a856/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0xccf8a7...a36263`](./contracts/base-8453/0xccf8a786c25b3b4a0ed498bfcb670cc3e8a36263/) | ⚠️ Unaudited |
| StrategyFactory | unknown | base | n/a | [`0x3f44a3...560948`](./contracts/base-8453/0x3f44a33091f5b18a5ea411f927c6106f5d560948/) | ⚠️ Unaudited |
| StrategyVelodromeFactory | unknown | base | n/a | [`0x19fd67...4a6216`](./contracts/base-8453/0x19fd67135a6c101d1a72f4ed315f2f546a4a6216/) | ⚠️ Unaudited |
| StrategyVelodromeGaugeV2 | unknown | base | n/a | [`0xdba417...cffe3f`](./contracts/base-8453/0xdba417c3a34c03ef2b360a9a2d5dc70bfccffe3f/) | ⚠️ Unaudited |
| TimelockController | unknown | base | n/a | [`0x20ee7c...84163b`](./contracts/base-8453/0x20ee7cc55345db9296d32b4a86bb72939284163b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x270b04...a9dd29`](./contracts/base-8453/0x270b04518596851d67de4074845f37dcdea9dd29/) | ⚠️ Unaudited |

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
| [<mark style="color:orange;">Cyberscope</mark>](https://www.cyberscope.io/audits/1-bim) | Cyberscope | Audit | 2023-10 | stale | Direct | contract_name | 1 | high |
| [<mark style="color:orange;">Certik</mark>](https://skynet.certik.com/projects/bim-finance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<mark style="color:orange;">beefy Vault</mark> (also discovered via alternate URL)](https://github.com/beefyfinance/beefy-audits/blob/master/2021-03-05-Beefy-CertiK-Final-For-Beefy-Contracts.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [<mark style="color:orange;">beefy Vault V3</mark>](https://github.com/beefyfinance/beefy-audits/blob/master/2021-06-24-Beefy-Smart-Contract.pdf) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [<mark style="color:orange;">Zap beefy</mark>](https://github.com/beefyfinance/beefy-audits/blob/master/2023-12-15-Beefy-OZ-Zap-Audit.pdf) | Beefy (OZ) | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/beefyfinance/beefy-audits/e19a496ea5e46f6067aa5a64fd435e6796fa06b5/2021-06-24-Beefy-Smart-Contract.pdf) | Ottersec | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/beefyfinance/beefy-audits/e19a496ea5e46f6067aa5a64fd435e6796fa06b5/2023-12-15-Beefy-OZ-Zap-Audit.pdf) | Ottersec | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/paltalabs/defindex/a0fcabfae38f1c7b0c9c2f10ff51d225f8edc2f1/audits/2025_03_18_ottersec_defindex_audit.pdf) | Ottersec | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [01-2025 - Mayan Implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/01-2025%20-%20Mayan%20Implementation%20-%20Decurity.pdf) | Decurity | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [02-2023 - Gateway - Consensys Diligence.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/02-2023%20-%20Gateway%20-%20Consensys%20Diligence.pdf) | Consensys Diligence | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [04-2024 - Hop L2 implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/04-2024%20-%20Hop%20L2%20implementation%20-%20Decurity.pdf) | Decurity | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [04-2025 - CCTPV2 Bungee Auto Implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/04-2025%20-%20CCTPV2%20Bungee%20Auto%20Implementation%20-%20Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [08-2024 - Stargate v2 implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/08-2024%20-%20Stargate%20v2%20implementation%20-%20Decurity.pdf) | Decurity | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [09-2021 - Registry - PeckShield.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/09-2021%20-%20Registry%20-%20PeckShield.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [11-2024 - Mantle Implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/11-2024%20-%20Mantle%20Implementation%20-%20Decurity.pdf) | Decurity | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [12-2024 - Bungee Protocol - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/12-2024%20-%20Bungee%20Protocol%20-%20Hexens.pdf) | Hexens | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [01-2024 - Super Token - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/01-2024%20-%20Super%20Token%20-%20Hexens.pdf) | Hexens | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [03-2024 - Supermodular Plugs - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/03-2024%20-%20Supermodular%20Plugs%20-%20Hexens.pdf) | Hexens | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [07-2023 - Data Layer - Zellic.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/07-2023%20-%20Data%20Layer%20-%20Zellic.pdf) | Zellic | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [08-2023 - Data Layer Core - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/08-2023%20-%20Data%20Layer%20Core%20-%20Hexens.pdf) | Hexens | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [08-2023 - Super Bridge - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/08-2023%20-%20Super%20Bridge%20-%20Hexens.pdf) | Hexens | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-OpenRouter-v1.0.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/PeckShield-Audit-Report-OpenRouter-v1.0.pdf) | PeckShield | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x62ff2b...da76d2`](./contracts/base-8453/0x62ff2b90a14c2e312c8b1c4c08f61af710da76d2/) | BimOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb32a52...e067ef`](./contracts/base-8453/0xb32a5263eb60c56610bb44b566f6d44b6ae067ef/) | BimSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xee9550...31304b`](./contracts/base-8453/0xee95508e0f52dbea2aaa507462735a3de731304b/) | BimVaultV7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa8c850...42a856`](./contracts/base-8453/0xa8c8504bf1dc659d93ca5a05dc77d7104142a856/) | BimZapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f44a3...560948`](./contracts/base-8453/0x3f44a33091f5b18a5ea411f927c6106f5d560948/) | StrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x19fd67...4a6216`](./contracts/base-8453/0x19fd67135a6c101d1a72f4ed315f2f546a4a6216/) | StrategyVelodromeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdba417...cffe3f`](./contracts/base-8453/0xdba417c3a34c03ef2b360a9a2d5dc70bfccffe3f/) | StrategyVelodromeGaugeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 21
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [19548] <mark style="color:orange;">Certik</mark>
- [19549] <mark style="color:orange;">beefy Vault</mark>
- [19550] <mark style="color:orange;">beefy Vault V3</mark>
- [19551] <mark style="color:orange;">Zap beefy</mark>
- [19552] Rendered PDF capture
- [19553] Rendered PDF capture
- [19554] Rendered PDF capture
- [19556] 01-2025 - Mayan Implementation - Decurity.pdf
- [19557] 02-2023 - Gateway - Consensys Diligence.pdf
- [19558] 04-2024 - Hop L2 implementation - Decurity.pdf
- [19559] 04-2025 - CCTPV2 Bungee Auto Implementation - Decurity.pdf
- [19560] 08-2024 - Stargate v2 implementation - Decurity.pdf
- [19561] 09-2021 - Registry - PeckShield.pdf
- [19562] 11-2024 - Mantle Implementation - Decurity.pdf
- [19563] 12-2024 - Bungee Protocol - Hexens.pdf
- [19564] 01-2024 - Super Token - Hexens.pdf
- [19565] 03-2024 - Supermodular Plugs - Hexens.pdf
- [19566] 07-2023 - Data Layer - Zellic.pdf
- [19567] 08-2023 - Data Layer Core - Hexens.pdf
- [19568] 08-2023 - Super Bridge - Hexens.pdf
- [19569] PeckShield-Audit-Report-OpenRouter-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
