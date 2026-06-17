# Agentic Audit Brief: toupee.tech

⚠️ Lifecycle status: DECLINING - TVL changed 3.6% over 90 days

## Project Overview

- Project: toupee.tech (`toupee.tech`)
- Website: [https://www.toupee.tech](https://www.toupee.tech)
- Lifecycle: declining (Tier 0, 74.5% below peak)
- Generated: 2026-06-17T07:00:41.282Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 9 unique implementations (10 raw deployments)
- DeFi Llama TVL: $4,937,999.37
- On-chain TVL (included contracts): $0.49
- TVL by chain: Base $0.49

## Project Description

Toupee.tech is an incentive coordination protocol on Base centered on WIG, oWIG, and vWIG mechanics. The protocol combines farm emission voting, staking and farming rewards, voting rewards, WETH-backed bonding-curve/floor-price liquidity mechanics, and vWIG-backed borrowing. Gauge and plugin integrations with external protocols may be used as implementation details for directing incentives and rewards, but the primary product is incentive coordination rather than generic yield optimization.

### Architecture

The BASE Mainnet family contains all core and supporting contracts. The governance contracts (Controller, TOKENGovernor) manage the TOKEN and its emissions, while the Voter contract directs rewards to gauges created by GaugeFactory. Plugin factories (AeroGaugePluginFactory, VelociGaugePluginFactory, etc.) deploy plugin instances that integrate with external protocols, and these plugins are used by the core Pool and Voter to optimize yield. The testnet family only includes a Multicall contract for testing purposes.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 10 (7 live, 3 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 43; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 10
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.49
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $0.49 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TOKENFees | token | base | n/a | [`0x8d05ef...ecd6c1`](./contracts/base-8453/0x8d05ef8093a746101cee1a0578edd277f3ecd6c1/) | ⚠️ Unaudited |
| AeroGaugePlugin | operational_periphery | base | n/a | [`0x25a7e6...89f040`](./contracts/base-8453/0x25a7e6a89f06ef3f90b844f69f1f0b63d389f040/) | ⚠️ Unaudited |
| AeroPairPlugin | unknown | base | n/a | 2 deployments: base [`0xd1ca9d...3ed715`](./contracts/base-8453/0xd1ca9d78005b5a891c8a6bd8408ed308b33ed715/); base `0xef0487...2755bd` | ⚠️ Unaudited |
| OTOKEN | token | base | n/a | [`0xbe1053...9a2b79`](./contracts/base-8453/0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79/) | ⚠️ Unaudited |
| ScaleGaugePlugin | operational_periphery | base | n/a | [`0xf19a7b...5290b8`](./contracts/base-8453/0xf19a7b64809dc969b173f40d3f8c6734935290b8/) | ⚠️ Unaudited |
| TOKEN | token | base | n/a | [`0x58dd17...79e9b9`](./contracts/base-8453/0x58dd173f30ecffdfebcd242c71241fb2f179e9b9/) | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x756fc5...492452`](./contracts/base-8453/0x756fc5e6bdb26a85594346d7d0520e1c0e492452/) | ⚠️ Unaudited |
| VTOKEN | token | base | n/a | [`0x60c087...b11515`](./contracts/base-8453/0x60c08737877a5262bdb1c1cac8fb90b5e5b11515/) | ⚠️ Unaudited |
| VTOKENRewarder | token | base | n/a | [`0xdd3e79...1de558`](./contracts/base-8453/0xdd3e797522e15c3ede6ed468738cba754e1de558/) | ⚠️ Unaudited |

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
| [DL audit link](https://2268926613-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5qfDTx0sJybWgitP8x4j%2Fuploads%2FnzcUOiAySnZr2UQCCpsK%2FPeckShield-Audit-Report-LilToken-v1.0rc%20(1).pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://2268926613-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5qfDTx0sJybWgitP8x4j%2Fuploads%2F0dGTom7KMTseCGo56Xg0%2FZokyoAudit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x8d05ef...ecd6c1`](./contracts/base-8453/0x8d05ef8093a746101cee1a0578edd277f3ecd6c1/) | TOKENFees | token | $0.49 | Verified native implementation with $0.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25a7e6...89f040`](./contracts/base-8453/0x25a7e6a89f06ef3f90b844f69f1f0b63d389f040/) | AeroGaugePlugin | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbe1053...9a2b79`](./contracts/base-8453/0xbe1053ec4ac137c9a5b4462d53d5c2c0b89a2b79/) | OTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x58dd17...79e9b9`](./contracts/base-8453/0x58dd173f30ecffdfebcd242c71241fb2f179e9b9/) | TOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x756fc5...492452`](./contracts/base-8453/0x756fc5e6bdb26a85594346d7d0520e1c0e492452/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60c087...b11515`](./contracts/base-8453/0x60c08737877a5262bdb1c1cac8fb90b5e5b11515/) | VTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdd3e79...1de558`](./contracts/base-8453/0xdd3e797522e15c3ede6ed468738cba754e1de558/) | VTOKENRewarder | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12597] DL audit link
- [12598] DL audit link

Fork inheritance lineage and inherited audits are included when available.
