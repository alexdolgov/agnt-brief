# Agentic Audit Brief: Xfai

## Project Overview

- Project: Xfai (`xfai`)
- Lifecycle: active (Tier 0, 66.3% below peak)
- Generated: 2026-06-11T04:10:24.774Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-026d
- Chains: linea
- Contract surface: 48 unique implementations (67 raw deployments)
- DeFi Llama TVL: $1,030,555.93
- On-chain TVL (included contracts): $2.00
- TVL by chain: Linea $2.00

## Project Description

Xfai is a decentralized exchange on Linea for token swaps and entangled liquidity pools. USD+/portfolio-management, Mark2Market, HedgeExchanger, PythOracle, and strategy-yield narratives should not be described as part of Xfai unless supported by project documentation; upstream oracle infrastructure should be treated as a third-party dependency rather than Xfai-owned core contracts.

### Architecture

The Xfai family shares infrastructure through proxy-based upgradeability, with core contracts like PortfolioManager and Exchange interacting with various strategy contracts (e.g., StrategyEts, StrategyUsdc) to manage assets. Yield-bearing tokens (UsdPlusTokenV3) are minted via these strategies, and Mark2Market provides valuation, while HedgeExchanger facilitates asset swaps.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 48
- Raw deployments: 67
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StrategyUsdt | core_logic | linea | 2 deployments: linea [`0x80b417...82d087`](./contracts/linea-59144/0x80b41782b3a87f6b72f7f54b1b194cfa1f82d087/); linea `0x8500ab...f0a04b` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | linea | 2 deployments: linea [`0x1e1f50...3b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd0...de4376` | ⚠️ Unaudited |
| AgentTimelock | governance | linea | 2 deployments: linea [`0x80522e...df05d9`](./contracts/linea-59144/0x80522ed45676b765c2b43733829bce8139df05d9/); linea `0xb5f161...34c5eb` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | linea | 2 deployments: linea [`0x6d5acd...88a5a3`](./contracts/linea-59144/0x6d5acde39ce07e05ccb0e5448eaad18c0c88a5a3/); linea `0x9d934d...aa8a58` | ⚠️ Unaudited |
| Exchange | unknown | linea | 2 deployments: linea [`0x083f01...b3b4b7`](./contracts/linea-59144/0x083f016e9928a3eaa3aca0ff9f4e4ded5db3b4b7/); linea `0xbe2408...5add27` | ⚠️ Unaudited |
| LineaPayoutListener | unknown | linea | [`0x7a645a...378f8d`](./contracts/linea-59144/0x7a645a2ab6bdcb9cf7913635d35e3e63d5378f8d/) | ⚠️ Unaudited |
| PortfolioManager | governance | linea | 2 deployments: linea [`0x0932bb...8420e0`](./contracts/linea-59144/0x0932bb4c7e4bdd9cd717331b86d999046f8420e0/); linea `0x27b12f...78f7b8` | ⚠️ Unaudited |
| RebaseToken | token | linea | 3 deployments: linea [`0x2253bd...1fb6a1`](./contracts/linea-59144/0x2253bdd62ea63f7cbbf92785eedccac7521fb6a1/); linea `0x985bdc...2810bc`; linea `0xc98c43...3fa12a` | ⚠️ Unaudited |
| StrategyEts | core_logic | linea | 3 deployments: linea [`0x30f868...df9ab8`](./contracts/linea-59144/0x30f8685fa6c2c9f75f6242f36c4b00dfc2df9ab8/); linea `0x375ca8...5a4d85`; linea `0x800637...37d628` | ⚠️ Unaudited |
| StrategyMendiUsdc | core_logic | linea | 2 deployments: linea [`0x6e24a0...9f7010`](./contracts/linea-59144/0x6e24a0e4697370c7d4102928931181bc889f7010/); linea `0x745b1f...0d827a` | ⚠️ Unaudited |
| StrategyMendiUsdt | core_logic | linea | 2 deployments: linea [`0xd51c03...e1763e`](./contracts/linea-59144/0xd51c03f8a24aa836874d6107fc74c0c2efe1763e/); linea `0xf6dc12...c2ea73` | ⚠️ Unaudited |
| StrategyUsdc | core_logic | linea | 3 deployments: linea [`0x41e9f4...d130f6`](./contracts/linea-59144/0x41e9f45dd11a09731814a7d9c4df257bc2d130f6/); linea `0x9ea35c...bc14c0`; linea `0xa34870...55f826` | ⚠️ Unaudited |
| UsdPlusToken | token | linea | [`0x441df9...d84277`](./contracts/linea-59144/0x441df98011ad427c5692418999ba2150e6d84277/) | ⚠️ Unaudited |
| XfaiINFT | token | linea | 3 deployments: linea [`0xa155f1...c5239a`](./contracts/linea-59144/0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a/); linea `0xca4cec...edc7f8`; linea `0xf85cf3...b235fe` | ⚠️ Unaudited |
| XfaiLibrary | unknown | linea | 2 deployments: linea [`0x0db4a7...34c540`](./contracts/linea-59144/0x0db4a7a61762a42e56a31b0b844464d56934c540/); linea `0x59eaeb...50d315` | ⚠️ Unaudited |
| XfaiV0Core | unknown | linea | 2 deployments: linea [`0x8d58ee...8bc01a`](./contracts/linea-59144/0x8d58ee2d23f7920ea32e534aad8d6753c88bc01a/); linea `0xb7d108...06c06e` | ⚠️ Unaudited |
| XfaiV0Periphery03 | periphery | linea | 2 deployments: linea [`0x2205eb...afd5a4`](./contracts/linea-59144/0x2205ebb740c7c98ed52cf7f0fc302eb8a4afd5a4/); linea `0x4e4a59...2c2f0d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | linea | `0x08c1f9...27a5b1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x090b87...02fade` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x096d98...c51d6c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x113a34...631b0d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1b3b7b...716c53` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1e7fb1...1c6fd6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2504ab...a45f0f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x33b35d...e7d1cb` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3774c5...aab8b0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5c203a...a8478c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x642ab9...ecb14e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7dea1f...b89501` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x84e88a...b58fd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x871765...702e44` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x908080...8ef78f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa27f6f...d031fe` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa5136e...3eca26` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa7e51d...94f4a0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xabc372...690996` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb77022...77b8f8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb86fb1...32440d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbde939...f81eb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc1aada...df17ea` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd18fee...5a461b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd4e520...8f796c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd538be...b0ef33` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd58bcb...b0c421` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe93a09...c8fdad` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xed0508...fcf5b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf3f341...6f2a3c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfff4c2...9d6d85` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://xfai.com/audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x80b417...82d087`](./contracts/linea-59144/0x80b41782b3a87f6b72f7f54b1b194cfa1f82d087/) | StrategyUsdt | core_logic | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x80522e...df05d9`](./contracts/linea-59144/0x80522ed45676b765c2b43733829bce8139df05d9/) | AgentTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x083f01...b3b4b7`](./contracts/linea-59144/0x083f016e9928a3eaa3aca0ff9f4e4ded5db3b4b7/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7a645a...378f8d`](./contracts/linea-59144/0x7a645a2ab6bdcb9cf7913635d35e3e63d5378f8d/) | LineaPayoutListener | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd51c03...e1763e`](./contracts/linea-59144/0xd51c03f8a24aa836874d6107fc74c0c2efe1763e/) | StrategyMendiUsdt | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x41e9f4...d130f6`](./contracts/linea-59144/0x41e9f45dd11a09731814a7d9c4df257bc2d130f6/) | StrategyUsdc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x441df9...d84277`](./contracts/linea-59144/0x441df98011ad427c5692418999ba2150e6d84277/) | UsdPlusToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xa155f1...c5239a`](./contracts/linea-59144/0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a/) | XfaiINFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0db4a7...34c540`](./contracts/linea-59144/0x0db4a7a61762a42e56a31b0b844464d56934c540/) | XfaiLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8d58ee...8bc01a`](./contracts/linea-59144/0x8d58ee2d23f7920ea32e534aad8d6753c88bc01a/) | XfaiV0Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2205eb...afd5a4`](./contracts/linea-59144/0x2205ebb740c7c98ed52cf7f0fc302eb8a4afd5a4/) | XfaiV0Periphery03 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3227] DL audit link

Fork inheritance lineage and inherited audits are included when available.
