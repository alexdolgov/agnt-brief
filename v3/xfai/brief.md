# Agentic Audit Brief: Xfai

## Project Overview

- Project: Xfai (`xfai`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:16.475Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: linea
- Contract surface: 47 unique implementations (66 raw deployments)
- DeFi Llama TVL: $891,262.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 21 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (strategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 84; live-surface contracts included: 57 (23 live, 34 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 47
- Raw deployments: 66
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentTimelock | unknown | linea | n/a | 2 deployments: linea [`0x80522e...df05d9`](./contracts/linea-59144/0x80522ed45676b765c2b43733829bce8139df05d9/); linea `0xb5f161...34c5eb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x08c1f9...27a5b1`](./contracts/linea-59144/0x08c1f9cf8601ed74d7b89ba64c7b23d13127a5b1/); linea `0x6d5acd...88a5a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x1e7fb1...1c6fd6`](./contracts/linea-59144/0x1e7fb1f8d5badfe029e5197c12883cf03c1c6fd6/); linea `0x9d934d...aa8a58` | ⚠️ Unaudited |
| Exchange | unknown | linea | n/a | 2 deployments: linea [`0x260284...5dc72a`](./contracts/linea-59144/0x2602848d8eb53aa9bff5b41b38656439c15dc72a/); linea `0x7cb1b3...ca2789` | ⚠️ Unaudited |
| HedgeExchanger | unknown | linea | n/a | 3 deployments: linea [`0x40ae10...2631f1`](./contracts/linea-59144/0x40ae104c59af1b9d23dcd9c5715780e2132631f1/); linea `0x631e1a...b50503`; linea `0x88280f...7f71dd` | ⚠️ Unaudited |
| Mark2Market | unknown | linea | n/a | 3 deployments: linea [`0x1f4947...a9e6fb`](./contracts/linea-59144/0x1f4947cd5a5c058dd5ea6fd1ccd5c311ada9e6fb/); linea `0x3d6765...fade41`; linea `0x431bf3...d48403` | ⚠️ Unaudited |
| PortfolioManager | unknown | linea | n/a | 2 deployments: linea [`0x0932bb...8420e0`](./contracts/linea-59144/0x0932bb4c7e4bdd9cd717331b86d999046f8420e0/); linea `0x27b12f...78f7b8` | ⚠️ Unaudited |
| RebaseToken | unknown | linea | n/a | 3 deployments: linea [`0x2253bd...1fb6a1`](./contracts/linea-59144/0x2253bdd62ea63f7cbbf92785eedccac7521fb6a1/); linea `0x985bdc...2810bc`; linea `0xc98c43...3fa12a` | ⚠️ Unaudited |
| StrategyEts | unknown | linea | n/a | 3 deployments: linea [`0x30f868...df9ab8`](./contracts/linea-59144/0x30f8685fa6c2c9f75f6242f36c4b00dfc2df9ab8/); linea `0x375ca8...5a4d85`; linea `0x800637...37d628` | ⚠️ Unaudited |
| StrategyMendiUsdc | unknown | linea | n/a | 2 deployments: linea [`0x6e24a0...9f7010`](./contracts/linea-59144/0x6e24a0e4697370c7d4102928931181bc889f7010/); linea `0x745b1f...0d827a` | ⚠️ Unaudited |
| StrategyMendiUsdt | unknown | linea | n/a | 2 deployments: linea [`0xd51c03...e1763e`](./contracts/linea-59144/0xd51c03f8a24aa836874d6107fc74c0c2efe1763e/); linea `0xf6dc12...c2ea73` | ⚠️ Unaudited |
| StrategyUsdc | unknown | linea | n/a | 3 deployments: linea [`0x41e9f4...d130f6`](./contracts/linea-59144/0x41e9f45dd11a09731814a7d9c4df257bc2d130f6/); linea `0x9ea35c...bc14c0`; linea `0xa34870...55f826` | ⚠️ Unaudited |
| StrategyUsdt | unknown | linea | n/a | 2 deployments: linea [`0x80b417...82d087`](./contracts/linea-59144/0x80b41782b3a87f6b72f7f54b1b194cfa1f82d087/); linea `0x8500ab...f0a04b` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | linea | n/a | 2 deployments: linea [`0x1e1f50...3b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd0...de4376` | ⚠️ Unaudited |
| XfaiINFT | token | linea | n/a | [`0xa155f1...c5239a`](./contracts/linea-59144/0xa155f12d3be29bf20b615e1e7f066ae9e3c5239a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | linea | n/a | `0x090b87...02fade` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x096d98...c51d6c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x113a34...631b0d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1b3b7b...716c53` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2504ab...a45f0f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x33b35d...e7d1cb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3774c5...aab8b0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5c203a...a8478c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x642ab9...ecb14e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7dea1f...b89501` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x84e88a...b58fd8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x871765...702e44` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x908080...8ef78f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9a8aeb...2a77f8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa27f6f...d031fe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa5136e...3eca26` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa7e51d...94f4a0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xabbe92...a0883f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xabc372...690996` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb694ce...a49a4e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb77022...77b8f8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb86fb1...32440d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbde939...f81eb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc1aada...df17ea` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd18fee...5a461b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd4e520...8f796c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd538be...b0ef33` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd58bcb...b0c421` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe93a09...c8fdad` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xed0508...fcf5b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf3f341...6f2a3c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfff4c2...9d6d85` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://xfai.com/audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3227] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
