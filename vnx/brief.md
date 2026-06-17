# Agentic Audit Brief: VNX

## Project Overview

- Project: VNX (`vnx`)
- Website: [https://vnx.li](https://vnx.li)
- Lifecycle: active (Tier 0, 55.9% below peak)
- Generated: 2026-06-17T07:00:32.978Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, celo, ethereum, fraxtal, polygon
- Contract surface: 5 unique implementations (32 raw deployments)
- DeFi Llama TVL: $5,443,804.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

VNX is a real-world asset tokenization project focused primarily on tokenized precious metals, especially VNX Gold (VNXAU), and also offers fiat-referenced tokens such as VEUR and VCHF where applicable. Its tokens are deployed across multiple blockchains for on-chain holding, payments, trading, and settlement.

### Architecture

The VNX family consists of token implementations (VNXCToken) and governance/registry contracts (VNXDGR) deployed behind TransparentUpgradeableProxy instances, sharing a common upgradeable infrastructure. A VNXAnyTransferProvider likely facilitates cross-chain or arbitrary transfer logic, supporting the multi-chain token ecosystem.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 24 inactive, 34 singleton, 0 uninitialized.
- Deployment units: 1/12 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 32
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VNXAnyTransferProvider | unknown | arbitrum | n/a | 5 deployments: fraxtal `0x54849d...859173`; base `0xae80e9...fb649b`; arbitrum [`0x2cf31b...7225d6`](./contracts/arbitrum-42161/0x2cf31b8c4b4da736ce551db514258f5a567225d6/); celo `0x974587...04796e`; avalanche `0x75203f...4cbd26` | ⚠️ Unaudited |
| VNXDGR | unknown | polygon | unit-20845 | [`0xc8bb8e...400400`](./contracts/polygon-137/0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400/) | ⚠️ Unaudited |
| VNXDGR | unknown | arbitrum | n/a | 4 deployments: fraxtal `0xd0b03c...cac886`; arbitrum [`0x0bd934...a910eb`](./contracts/arbitrum-42161/0x0bd93484ca448205ed78f77b2de7596a49a910eb/); celo `0xdf4910...40bceb`; avalanche `0x1512c8...2c9f54` | ⚠️ Unaudited |
| VNXManager | governance | fraxtal | n/a | 11 deployments: ethereum `0xcdb386...84c9ae`; fraxtal [`0x7e36bf...ea13dc`](./contracts/fraxtal-252/0x7e36bf17c4791832c005ea4078fe1af807ea13dc/); fraxtal `0x81c2e3...21737f`; base `0xb6622a...cb60ee`; base `0xc4c917...cf7d9d`; arbitrum `0xa67ec5...c10278`; arbitrum `0xd4e94d...9b9cc2`; celo `0x86f3f1...6c387b`; celo `0xfc4210...d50eee`; avalanche `0x8b84f7...ffc31a`; avalanche `0x94b1fb...7654bf` | ⚠️ Unaudited |
| VNXProxyAdmin | governance | base | n/a | 11 deployments: ethereum `0xc8bb8e...400400`; fraxtal `0x516fec...13af5b`; fraxtal `0xa67ec5...c10278`; base [`0x172476...b762c2`](./contracts/base-8453/0x1724768a253476159a622a1689146862d3b762c2/); base `0x35bb28...6b79e8`; arbitrum `0x200db8...b9c7f3`; arbitrum `0x3d3830...0a7165`; celo `0x20aac9...e7827f`; celo `0xe003bd...72fabc`; avalanche `0x511942...0cd8c3`; avalanche `0x9b357f...25a660` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x2cf31b...7225d6`](./contracts/arbitrum-42161/0x2cf31b8c4b4da736ce551db514258f5a567225d6/) | VNXAnyTransferProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0bd934...a910eb`](./contracts/arbitrum-42161/0x0bd93484ca448205ed78f77b2de7596a49a910eb/) | VNXDGR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x7e36bf...ea13dc`](./contracts/fraxtal-252/0x7e36bf17c4791832c005ea4078fe1af807ea13dc/) | VNXManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x172476...b762c2`](./contracts/base-8453/0x1724768a253476159a622a1689146862d3b762c2/) | VNXProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
