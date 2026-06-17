# Agentic Audit Brief: INIT Capital

⚠️ Lifecycle status: DECLINING - TVL dropped 36.4% over 90 days

## Project Overview

- Project: INIT Capital (`init-capital`)
- Website: [https://app.init.capital](https://app.init.capital)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:42.955Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: blast, mantle
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $2,446,519.78
- On-chain TVL (included contracts): $66,152,699.74
- TVL by chain: Mantle $66,152,699.74

## Project Description

INIT Capital is a decentralized lending and money-market protocol with native pool, hook, oracle, configuration, risk, position, and periphery contracts. External assets such as USDC, USDT, WBTC, METH, cmETH, FBTC, and similar token contracts should be treated as underlying assets, not INIT-owned protocol/product contracts.

### Architecture

Lending Pools rely on Core Contracts for governance (Config, RiskManager), position tracking (PosManager), and price feeds (InitOracle). Hooks like MoneyMarketHook and MarginTradingHook extend pool behavior, while tokens from the INIT Capital family serve as the assets within these pools.

## Contract Surface Quality

- Indexed contracts: 164; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 62 inactive, 93 singleton, 0 uninitialized.
- Deployment units: 3/39 live.
- Detected codebases: none
- Unverified dependencies: 2/29.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $66,152,699.74
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $66,152,699.74 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| METHL2 | token | mantle | unit-26386 | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | ⚠️ Unaudited |
| BVM_ETH | unknown | mantle | n/a | [`0xdeadde...ad1111`](./contracts/mantle-5000/0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | unit-26389 | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| USDeOFT | unknown | mantle | n/a | [`0x5d3a1f...52ef34`](./contracts/mantle-5000/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| USDYW | unknown | mantle | unit-26379 | [`0x5be265...57c5a6`](./contracts/mantle-5000/0x5be26527e817998a7206475496fde1e68957c5a6/) | ⚠️ Unaudited |
| WMANTLE | unknown | mantle | n/a | [`0x78c1b0...7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mantle | n/a | `0xb5695d...d3520b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x546851...c834f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7971ad...172df9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Code4rena_Audit_Report_1.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_1.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Code4rena_Audit_Report_2.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_2.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/PeckShield_Audit_Report_v1.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | 0 | n/a |
| [Sparkware_Security_Audit_Report_1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_1.pdf) | Sparkware | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sparkware_Security_Audit_Report_2.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_2.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [Sparkware_Security_Audit_Report_3.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_3.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [Trust_Security_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Trust_Security_Audit_Report_v1.pdf) | Trust Security | Audit | 2023-12 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=72

Zero-match audit list:

- [3587] Code4rena_Audit_Report_1.md
- [3588] Code4rena_Audit_Report_2.md
- [3589] PeckShield_Audit_Report_v1.pdf
- [3590] Sparkware_Security_Audit_Report_1.pdf
- [3591] Sparkware_Security_Audit_Report_2.pdf
- [3592] Sparkware_Security_Audit_Report_3.pdf
- [3593] Trust_Security_Audit_Report_v1.pdf

Fork inheritance lineage and inherited audits are included when available.
