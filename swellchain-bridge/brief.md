# Agentic Audit Brief: Swellchain Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 56.4% over 90 days

## Project Overview

- Project: Swellchain Bridge (`swellchain-bridge`)
- Website: [https://superbridge.swellnetwork.io](https://superbridge.swellnetwork.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:16.922Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 10 unique implementations (16 raw deployments)
- DeFi Llama TVL: $1,158,516.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Swellchain Bridge is the canonical bridge for Swellchain, enabling asset transfers between Ethereum and the Swellchain L2. It uses the OP Stack bridge architecture to lock assets on L1 and mint equivalent representations on L2.

### Architecture

The bridge family consists of core OP Stack contracts (L1StandardBridge, OptimismPortal2) and an additional L1ERC20TokenBridge for token bridging, all deployed via proxies. These contracts share the same deployer cluster and form a unified bridge infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 16
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1ERC20TokenBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x7e9793...5e65a2`](./contracts/ethereum-1/0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2/); ethereum `0xecf337...d24121` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | [`0x7aa496...5aacc8`](./contracts/ethereum-1/0x7aa4960908b13d104bf056b23e2c76b43c5aacc8/) | ⚠️ Unaudited |
| OFTAdapterSwETH | adapter | ethereum | [`0x2c1b34...6f94e2`](./contracts/ethereum-1/0x2c1b3426e557d6756d8a8859a0779373236f94e2/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | [`0x758e0e...b87812`](./contracts/ethereum-1/0x758e0ee66102816f5c3ec9ecc1188860fbb87812/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x674822...0931a9`](./contracts/ethereum-1/0x6748220a79446867eb41a824b4f74a92fc0931a9/); ethereum `0x95e8ba...151ef6` | ⚠️ Unaudited |
| RSwellOFTAdapter | adapter | ethereum | [`0x428cda...b2ac58`](./contracts/ethereum-1/0x428cda6c1994b926f75a4830d5baedee9db2ac58/) | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | ethereum | 2 deployments: ethereum [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/); ethereum `0xa5bd95...2aa3e2` | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | ethereum | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | ⚠️ Unaudited |
| SwETHOFTAdapter | adapter | ethereum | 2 deployments: ethereum [`0x9b07fb...33f562`](./contracts/ethereum-1/0x9b07fb810ef909b01f959911cef2cc834433f562/); ethereum `0xd98f5c...c27b5e` | ⚠️ Unaudited |
| SymbioticAdapter | adapter | ethereum | 3 deployments: ethereum [`0x2a6a2b...c0caf8`](./contracts/ethereum-1/0x2a6a2beebf6d65e03246087a41812db1c5c0caf8/); ethereum `0x69dda9...41836a`; ethereum `0x9e07af...3fdae7` | ⚠️ Unaudited |

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
| ethereum | [`0x7e9793...5e65a2`](./contracts/ethereum-1/0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2/) | L1ERC20TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1b34...6f94e2`](./contracts/ethereum-1/0x2c1b3426e557d6756d8a8859a0779373236f94e2/) | OFTAdapterSwETH | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x428cda...b2ac58`](./contracts/ethereum-1/0x428cda6c1994b926f75a4830d5baedee9db2ac58/) | RSwellOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/) | SwBtcOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | SwellOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b07fb...33f562`](./contracts/ethereum-1/0x9b07fb810ef909b01f959911cef2cc834433f562/) | SwETHOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
