# Agentic Audit Brief: SashimiSwap

⚠️ Lifecycle status: DEAD - TVL changed 8.6% over 90 days

## Project Overview

- Project: SashimiSwap (`sashimiswap`)
- Website: [https://sashimi.cool/home/swap](https://sashimi.cool/home/swap)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-17T07:00:42.405Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, heco
- Contract surface: 28 unique implementations (31 raw deployments)
- DeFi Llama TVL: $4,560,827.06
- On-chain TVL (included contracts): $67,794.64
- TVL by chain: Ethereum $67,794.64

## Project Description

SashimiSwap is primarily a multi-chain automated market maker decentralized exchange (AMM/DEX) for token swaps and exchange-pool liquidity. Lending, staking, and cross-chain contracts may exist in the historical or indexed contract surface, but should not be presented as currently supported public products unless supported by current documentation or homepage evidence.

### Architecture

The SashimiToken serves as the central governance and incentive token, interacting with the SashimiBar staking contract and the lending markets controlled by the Unitroller/Comptroller. The UniswapV2Factory manages liquidity pools for token swaps, while ShardTokens represent cross-chain or synthetic assets, and proxy contracts like SLErc20Delegator and CrossChainDelegator provide upgradeability and cross-chain functionality.

## Contract Surface Quality

- Indexed contracts: 114; live-surface contracts included: 31 (8 live, 23 unknown).
- Excluded by liveness: 66 inactive, 17 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: compound-v2, uniswap-v2
- Unverified dependencies: 3/24.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 28
- Raw deployments: 31
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $67,794.64
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $67,794.64 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SashimiToken | token | ethereum | n/a | [`0xc28e27...b464c2`](./contracts/ethereum-1/0xc28e27870558cf22add83540d2126da2e4b464c2/) | ⚠️ Unaudited |
| Dipper | unknown | ethereum | n/a | [`0x786448...eb2368`](./contracts/ethereum-1/0x786448439d9401e0a8427acf7ca66a5114eb2368/) | ⚠️ Unaudited |
| LpBar | unknown | ethereum | n/a | [`0xc8b5b7...4635bd`](./contracts/ethereum-1/0xc8b5b728165f5e59690ba486e4086027f34635bd/) | ⚠️ Unaudited |
| SashimiPlate | unknown | ethereum | n/a | 4 deployments: ethereum [`0x422133...541ca6`](./contracts/ethereum-1/0x4221330f24b26f20457f7c7c925cfc46b1541ca6/); ethereum `0x56bb94...fd6168`; ethereum `0x8e95bc...778648`; ethereum `0xc5d00a...60de7f` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0xe4fe6a...db9410`](./contracts/ethereum-1/0xe4fe6a45f354e845f954cddee6084603cedb9410/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5b8c75...e1a302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7578fd...56de11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a7707...0af831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbacbd1...66c3fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1b43f...ae87cd` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x06068d...47fd31` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x377dca...15a9a1` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x389eec...796e1b` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x3f3aaa...e39a4e` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x611e93...3272df` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x6c606f...b44d5a` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x6cb9d7...5c00fa` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x6ccbc3...956655` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x818bbc...890632` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x891daa...1721e2` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x937a48...5f076f` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xae399a...a39431` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc28e27...b464c2` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc2d36a...e67736` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xc597f8...ca5d82` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe2a246...7f25ba` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xe9c958...11903f` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xeaac96...737d8a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sashimi.cool/files/sashimi_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc28e27...b464c2`](./contracts/ethereum-1/0xc28e27870558cf22add83540d2126da2e4b464c2/) | SashimiToken | token | $67,794.64 | Verified native implementation with $67,794.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x786448...eb2368`](./contracts/ethereum-1/0x786448439d9401e0a8427acf7ca66a5114eb2368/) | Dipper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8b5b7...4635bd`](./contracts/ethereum-1/0xc8b5b728165f5e59690ba486e4086027f34635bd/) | LpBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x422133...541ca6`](./contracts/ethereum-1/0x4221330f24b26f20457f7c7c925cfc46b1541ca6/) | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2521] DL audit link

Fork inheritance lineage and inherited audits are included when available.
