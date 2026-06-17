# Agentic Audit Brief: Decentralized Euro

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Website: [https://deuro.com/](https://deuro.com/)
- Lifecycle: active (Tier 0, 71.5% below peak)
- Generated: 2026-06-17T07:00:33.294Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 30 unique implementations (48 raw deployments)
- DeFi Llama TVL: $1,835,041.72
- On-chain TVL (included contracts): $171,189,272.81
- TVL by chain: Ethereum $171,171,082.27 | Polygon $18,190.54

## Project Description

Decentralized Euro is a collateralized debt position (CDP) protocol that issues the EUR-pegged dEURO stablecoin against supported collateral assets. Its in-scope protocol surface is focused on dEURO minting/CDP functionality, savings, and protocol-share/governance-related tokens; external euro stablecoins, bridges, and standard tokens should be treated only as integrations or counterparty assets, not as dEURO-owned protocol contracts.

### Architecture

The Decentralized Euro Core family provides the foundational CDP and stablecoin logic, while the Active EUR Stablecoin Bridges family extends it cross-chain. SavingsVault, MintingHub, PositionFactory, and PositionRoller families interact with the core to manage vaults, minting, and positions, and the DEPS/nDEPS tokens serve as governance and equity across the system.

## Contract Surface Quality

- Indexed contracts: 106; live-surface contracts included: 48 (48 live, 0 unknown).
- Excluded by liveness: 54 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 8/11 live.
- Detected codebases: none
- Dependencies extracted: 23; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 11/29 (37.9%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 30
- Raw deployments: 48
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $171,189,272.81
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: 37.9% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 37.9% | 2025-04 |
| unknown | Tier 2 | 8 | 27.6% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DecentralizedEURO | unknown | ethereum | n/a | [`0xba3f53...e0a3ea`](./contracts/ethereum-1/0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea/) | ✅ Audited |
| DEPSWrapper | unknown | ethereum | n/a | [`0x103747...ffa380`](./contracts/ethereum-1/0x103747924e74708139a9400e4ab4bea79fffa380/) | ✅ Audited |
| Equity | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ba267...e341b2`](./contracts/ethereum-1/0x1ba26788dfde592fec8bcb0eaff472a42be341b2/); ethereum `0xc71104...fe8ee6` | ✅ Audited |
| FrontendGateway | unknown | ethereum | n/a | [`0x5c49c0...180994`](./contracts/ethereum-1/0x5c49c00f897bd970d964bfb8c3065ae65a180994/) | ✅ Audited |
| MintingHub | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66acc5...684f7b`](./contracts/ethereum-1/0x66acc54a0c64255137b8993cb4972b0901684f7b/); ethereum `0x754676...265219` | ✅ Audited |
| MintingHubGateway | unknown | ethereum | n/a | [`0x8b3c41...604618`](./contracts/ethereum-1/0x8b3c41c649b9c7085c171cbb82337889b3604618/) | ✅ Audited |
| PositionFactory | registry | ethereum | n/a | [`0x3a3985...defe81`](./contracts/ethereum-1/0x3a3985a96b1b51e6d914bc7c9e89fd6ba6defe81/) | ✅ Audited |
| PositionRoller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ce0ab...57dc79`](./contracts/ethereum-1/0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79/); ethereum `0x5c22d5...f7c5cd` | ✅ Audited |
| Savings | unknown | ethereum | n/a | 3 deployments: ethereum [`0x760233...90d3d9`](./contracts/ethereum-1/0x760233b90e45d186a9a98e911b115f7f4b90d3d9/); ethereum `0x79a5db...d75b12`; ethereum `0xb50a67...6b3eb5` | ✅ Audited |
| SavingsGateway | unknown | ethereum | n/a | [`0x073493...972303`](./contracts/ethereum-1/0x073493d73258c4beb6542e8dd3e1b2891c972303/) | ✅ Audited |
| StablecoinBridge | operational_periphery | ethereum | n/a | 13 deployments: ethereum [`0x0423f4...1d5d2a`](./contracts/ethereum-1/0x0423f419de1c44151b6b000e2daa51859c1d5d2a/); ethereum `0x05620f...771702`; ethereum `0x20b0a1...19f1a7`; ethereum `0x3ed40f...9e1fee`; ethereum `0x3ef3d0...630341`; ethereum `0x4dfd46...3a13b1`; ethereum `0x73f38c...4f5897`; ethereum `0x76d8f5...43692b`; ethereum `0x7f5173...4f2e11`; ethereum `0xb4ff74...092fd1`; ethereum `0xb66a40...8c9afe`; ethereum `0xd03cd3...182dbe`; ethereum `0xdc6450...be0130` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EURSToken | token | ethereum | unit-21116 | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| HadronToken | token | ethereum | unit-21110 | [`0x50753c...91e408`](./contracts/ethereum-1/0x50753cfaf86c094925bf976f218d043f8791e408/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | unit-21115 | [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/); ethereum `0x75beb3...612979` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-21118 | [`0xc2ff25...f14e47`](./contracts/polygon-137/0xc2ff25dd99e467d2589b2c26edd270f220f14e47/) | ⚠️ Unaudited |
| AgEURNameable | unknown | ethereum | unit-21108 | [`0x1a7e4e...fcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| BridgedDecentralizedEURO | operational_periphery | base | n/a | [`0x1b5f7f...65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | ⚠️ Unaudited |
| BridgedDEPS | operational_periphery | base | n/a | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | ⚠️ Unaudited |
| ClonableBeaconProxy | token | arbitrum | n/a | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ⚠️ Unaudited |
| CoinLendingGateway | core_logic | ethereum | n/a | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | ⚠️ Unaudited |
| EUR | unknown | ethereum | n/a | [`0x3231cb...da273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-21109 | [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | ⚠️ Unaudited |
| FPSWrapper | unknown | ethereum | n/a | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | ⚠️ Unaudited |
| Frankencoin | unknown | ethereum | n/a | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | [`0x9d74de...0acacb`](./contracts/polygon-137/0x9d74de101e2a54ad42198f37bdcce0a0160acacb/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-21117 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| VNXCToken | token | ethereum | unit-21112 | [`0x6ba75d...89b5d3`](./contracts/ethereum-1/0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x215587...668d8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.chainsecurity.com/security-audit/deuro-smart-contracts](https://www.chainsecurity.com/security-audit/deuro-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deuro_audit_report.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 22 | high |
| [ChainSecurity_dEURO_dEURO_audit.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | 25 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | EURSToken | token | $151,685,596.69 | Verified native implementation with $151,685,596.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/) | SavingsVaultDEURO | core_logic | $1,118,381.75 | Verified native implementation with $1,118,381.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b5f7f...65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | BridgedDecentralizedEURO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | BridgedDEPS | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ClonableBeaconProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | CoinLendingGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3231cb...da273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | EUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | FPSWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | Frankencoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 3 |
| standard_library | 3 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=51

Zero-match audit list:

- [2927] www.chainsecurity.com/security-audit/deuro-smart-contracts

Fork inheritance lineage and inherited audits are included when available.
