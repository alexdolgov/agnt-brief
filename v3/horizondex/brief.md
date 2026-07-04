# Agentic Audit Brief: HorizonDEX

## Project Overview

- Project: HorizonDEX (`horizondex`)
- Website: [https://horizondex.io](https://horizondex.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.655Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base, linea
- Contract surface: 65 unique implementations (89 raw deployments)
- DeFi Llama TVL: $60,314.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 42 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (basesplitcodefactory, ksadmin, routertokenhelper). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 109; live-surface contracts included: 76 (37 live, 39 unknown).
- Excluded by liveness: 33 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/29 (24.1%)
- Deployed-live implementations: 29 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/29
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 65
- Raw deployments: 89
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| DEFIMOON | Tier 2 | 7 | 24.1% | 2023-07 |
| Solidproof | Tier 2 | 5 | 17.2% | 2023-07 |
| unknown | Tier 2 | 5 | 17.2% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AntiSnipAttackPositionManager | governance | base | n/a | [`0xb3cc48...d84555`](./contracts/base-8453/0xb3cc484a60bc300719aaefbd158a4e8e59d84555/) | ✅ Audited |
| AntiSnipAttackPositionManager | governance | linea | n/a | [`0x438670...60dbf4`](./contracts/linea-59144/0x438670d41d5118003b2f42cc0466fbadd760dbf4/) | ✅ Audited |
| Factory | registry | linea | n/a | [`0x9fe607...6cb2c5`](./contracts/linea-59144/0x9fe607e5dcd0ea318dbb4d8a7b04fa553d6cb2c5/) | ✅ Audited |
| PrivateSaleOverflow | unknown | linea | n/a | [`0x81f76e...0371cd`](./contracts/linea-59144/0x81f76e9af21379cfa1bdfe7f5786c710300371cd/) | ✅ Audited |
| PublicSaleOverflow | unknown | linea | n/a | [`0xba0869...2e0402`](./contracts/linea-59144/0xba0869c4253c2be7f6b2cc3fb3081317532e0402/) | ✅ Audited |
| Router | adapter | base | n/a | [`0x99aec5...363827`](./contracts/base-8453/0x99aec509174cbf06f8f7e15ddeeb7bcc32363827/) | ✅ Audited |
| Router | adapter | linea | n/a | [`0x272e15...f926bb`](./contracts/linea-59144/0x272e156df8da513c69cb41cc7a99185d53f926bb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentTimelock | unknown | linea | n/a | 2 deployments: linea [`0x80522e...df05d9`](./contracts/linea-59144/0x80522ed45676b765c2b43733829bce8139df05d9/); linea `0xb5f161...34c5eb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x08c1f9...27a5b1`](./contracts/linea-59144/0x08c1f9cf8601ed74d7b89ba64c7b23d13127a5b1/); linea `0x6d5acd...88a5a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x1e7fb1...1c6fd6`](./contracts/linea-59144/0x1e7fb1f8d5badfe029e5197c12883cf03c1c6fd6/); linea `0x9d934d...aa8a58` | ⚠️ Unaudited |
| Exchange | unknown | linea | n/a | 2 deployments: linea [`0x260284...5dc72a`](./contracts/linea-59144/0x2602848d8eb53aa9bff5b41b38656439c15dc72a/); linea `0x7cb1b3...ca2789` | ⚠️ Unaudited |
| HedgeExchanger | unknown | linea | n/a | 3 deployments: linea [`0x40ae10...2631f1`](./contracts/linea-59144/0x40ae104c59af1b9d23dcd9c5715780e2132631f1/); linea `0x631e1a...b50503`; linea `0x88280f...7f71dd` | ⚠️ Unaudited |
| Horizon | unknown | linea | n/a | [`0x0b1a02...8a3ac1`](./contracts/linea-59144/0x0b1a02a7309dfbfad1cd4adc096582c87e8a3ac1/) | ⚠️ Unaudited |
| LockedEpoch1HZN | unknown | linea | n/a | [`0x75d3aa...420a79`](./contracts/linea-59144/0x75d3aa57f7181bf4136438cc9cdddd86fd420a79/) | ⚠️ Unaudited |
| Mark2Market | unknown | linea | n/a | 3 deployments: linea [`0x1f4947...a9e6fb`](./contracts/linea-59144/0x1f4947cd5a5c058dd5ea6fd1ccd5c311ada9e6fb/); linea `0x3d6765...fade41`; linea `0x431bf3...d48403` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0x649d0b...3d6d5b`](./contracts/linea-59144/0x649d0b066e2e68fb0497ad6128cd0edb903d6d5b/) | ⚠️ Unaudited |
| PoolOracle | unknown | base | n/a | 2 deployments: base [`0x272e15...f926bb`](./contracts/base-8453/0x272e156df8da513c69cb41cc7a99185d53f926bb/); base `0x9fe607...6cb2c5` | ⚠️ Unaudited |
| PoolOracle | unknown | linea | n/a | 2 deployments: linea [`0x79756d...94d93a`](./contracts/linea-59144/0x79756d90a882a1621ec35723849dac785694d93a/); linea `0xa749ad...708335` | ⚠️ Unaudited |
| PortfolioManager | unknown | linea | n/a | 2 deployments: linea [`0x0932bb...8420e0`](./contracts/linea-59144/0x0932bb4c7e4bdd9cd717331b86d999046f8420e0/); linea `0x27b12f...78f7b8` | ⚠️ Unaudited |
| RebaseToken | unknown | linea | n/a | 3 deployments: linea [`0x2253bd...1fb6a1`](./contracts/linea-59144/0x2253bdd62ea63f7cbbf92785eedccac7521fb6a1/); linea `0x985bdc...2810bc`; linea `0xc98c43...3fa12a` | ⚠️ Unaudited |
| StrategyEts | unknown | linea | n/a | 3 deployments: linea [`0x30f868...df9ab8`](./contracts/linea-59144/0x30f8685fa6c2c9f75f6242f36c4b00dfc2df9ab8/); linea `0x375ca8...5a4d85`; linea `0x800637...37d628` | ⚠️ Unaudited |
| StrategyMendiUsdc | unknown | linea | n/a | 2 deployments: linea [`0x6e24a0...9f7010`](./contracts/linea-59144/0x6e24a0e4697370c7d4102928931181bc889f7010/); linea `0x745b1f...0d827a` | ⚠️ Unaudited |
| StrategyMendiUsdt | unknown | linea | n/a | 2 deployments: linea [`0xd51c03...e1763e`](./contracts/linea-59144/0xd51c03f8a24aa836874d6107fc74c0c2efe1763e/); linea `0xf6dc12...c2ea73` | ⚠️ Unaudited |
| StrategyUsdc | unknown | linea | n/a | 3 deployments: linea [`0x41e9f4...d130f6`](./contracts/linea-59144/0x41e9f45dd11a09731814a7d9c4df257bc2d130f6/); linea `0x9ea35c...bc14c0`; linea `0xa34870...55f826` | ⚠️ Unaudited |
| StrategyUsdt | unknown | linea | n/a | 2 deployments: linea [`0x80b417...82d087`](./contracts/linea-59144/0x80b41782b3a87f6b72f7f54b1b194cfa1f82d087/); linea `0x8500ab...f0a04b` | ⚠️ Unaudited |
| SwapRouter | adapter | linea | n/a | [`0xc3454b...fc7a11`](./contracts/linea-59144/0xc3454bcb7164a83549022ffea307352d4afc7a11/) | ⚠️ Unaudited |
| TokenPositionDescriptor | unknown | base | n/a | 2 deployments: base [`0x438670...60dbf4`](./contracts/base-8453/0x438670d41d5118003b2f42cc0466fbadd760dbf4/); base `0xc67c90...8a8aeb` | ⚠️ Unaudited |
| TokenPositionDescriptor | unknown | linea | n/a | 2 deployments: linea [`0x94ddde...c30d73`](./contracts/linea-59144/0x94ddde405a00180891ed79dc1147f0d841c30d73/); linea `0x99aec5...363827` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | linea | n/a | 2 deployments: linea [`0x1e1f50...3b7f13`](./contracts/linea-59144/0x1e1f509963a6d33e169d9497b11c7dbfe73b7f13/); linea `0xb79dd0...de4376` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xa57c15e2ac3ee73cbc6f8c20634e8e909bfc4a32) | unknown | linea | n/a | 2 deployments: linea `0x079f12...56261a`; linea `0xa57c15...fc4a32` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x090b87...02fade` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x096d98...c51d6c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x113a34...631b0d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1b3b7b...716c53` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1b41c3...244f58` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x22ccb8...042511` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2e1cba...f79a39` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x33b35d...e7d1cb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3774c5...aab8b0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5797a5...2af732` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x58abb3...90b03a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5c203a...a8478c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x642ab9...ecb14e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6dfec8...14122d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x871765...702e44` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x908080...8ef78f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa171b8...455583` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa17dc9...d1ba3b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa27f6f...d031fe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa7e51d...94f4a0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb3cc48...d84555` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb86fb1...32440d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba504e...2900e9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbde939...f81eb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc1aada...df17ea` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcea306...fd73b3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd18fee...5a461b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd4e520...8f796c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe8f6f0...d428c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe93a09...c8fdad` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xef3406...7ef06b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf1df26...972b9f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf3f341...6f2a3c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf7b48f...97f51b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfff4c2...9d6d85` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Logo.png](https://github.com/solidproof/projects/blob/main/2023/Horizon%20DEX/Logo.png) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HorizonDEX_SC Comparison Report_11.07.2023_SA-1644 (2).pdf](https://github.com/Horizon-Dex/Audits/blob/a1c7f31238a7b0d3390f37d178d855cf284cdcee/HorizonDEX_SC%20Comparison%20Report_11.07.2023_SA-1644%20(2).pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 1 | n/a |
| [Horizon-Dex.pdf](https://github.com/Defimoonorg/Audit-Report/blob/main/Horizon-Dex.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [Horizon-Sale_Reaudit.pdf](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Sale_Reaudit.pdf) | DEFIMOON | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Horizon-Dex-Defimoon.pdf](https://github.com/Horizon-Dex/Audits/blob/main/Horizon-Dex-Defimoon.pdf) | Defimoon | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [SmartContract_Audit_Solidproof_HorizonDEX.pdf](https://github.com/Horizon-Dex/Audits/blob/main/SmartContract_Audit_Solidproof_HorizonDEX.pdf) | Solidproof | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [www.chainsecurity.com/security-audit/kyberswap-elastic](https://www.chainsecurity.com/security-audit/kyberswap-elastic) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Horizon DEX (GitHub directory)](https://github.com/solidproof/projects/tree/main/2023/Horizon%20DEX) | SOLIDProof | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Arbalest Vault (GitHub directory)](https://github.com/solidproof/projects/blob/main/2023/%20Arbalest%20Vault) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=16, extraction_exact=2

Zero-match audit list:

- [13240] Logo.png
- [13248] www.chainsecurity.com/security-audit/kyberswap-elastic
- [16192] Horizon DEX (GitHub directory)
- [16197] Arbalest Vault (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
