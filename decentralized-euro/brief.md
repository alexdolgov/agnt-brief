# Agentic Audit Brief: Decentralized Euro

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Website: [https://deuro.com/](https://deuro.com/)
- Lifecycle: active (Tier 0, 71.5% below peak)
- Generated: 2026-06-18T09:42:48.321Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5311
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 38 unique implementations (61 raw deployments)
- DeFi Llama TVL: $1,835,041.72
- On-chain TVL (included contracts): $181,039,634.80
- TVL by chain: Ethereum $171,171,082.27 | Polygon $9,868,552.53

## Project Description

Decentralized Euro is a collateralized debt position (CDP) protocol that issues the EUR-pegged dEURO stablecoin against supported collateral assets. Its in-scope protocol surface is focused on dEURO minting/CDP functionality, savings, and protocol-share/governance-related tokens; external euro stablecoins, bridges, and standard tokens should be treated only as integrations or counterparty assets, not as dEURO-owned protocol contracts.

### Architecture

The Decentralized Euro Core family provides the foundational CDP and stablecoin logic, while the Active EUR Stablecoin Bridges family extends it cross-chain. SavingsVault, MintingHub, PositionFactory, and PositionRoller families interact with the core to manage vaults, minting, and positions, and the DEPS/nDEPS tokens serve as governance and equity across the system.

## Contract Surface Quality

- Indexed contracts: 205; live-surface contracts included: 61 (61 live, 0 unknown).
- Excluded by liveness: 111 inactive, 33 singleton, 0 uninitialized.
- Deployment units: 8/22 live.
- Detected codebases: none
- Dependencies extracted: 27; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 11/37 (29.7%)
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 38
- Raw deployments: 61
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $181,039,634.80
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: 29.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 29.7% | 2025-04 |
| unknown | Tier 2 | 8 | 21.6% | 2025-01 |

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

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EURSToken | token | ethereum | unit-36325 | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| HadronToken | token | ethereum | unit-36318 | [`0x50753c...91e408`](./contracts/ethereum-1/0x50753cfaf86c094925bf976f218d043f8791e408/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| TetherToken | token | ethereum | unit-36324 | [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/); ethereum `0x75beb3...612979` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-36335 | [`0xc2ff25...f14e47`](./contracts/polygon-137/0xc2ff25dd99e467d2589b2c26edd270f220f14e47/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 3 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19`; polygon `0x9d74de...0acacb` | ⚠️ Unaudited |
| AgEURNameable | unknown | ethereum | unit-36315 | [`0x1a7e4e...fcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| BridgedDecentralizedEURO | operational_periphery | base | n/a | [`0x1b5f7f...65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | ⚠️ Unaudited |
| BridgedDEPS | operational_periphery | base | n/a | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-36332 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | arbitrum | n/a | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ⚠️ Unaudited |
| CoinLendingGateway | core_logic | ethereum | n/a | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | ⚠️ Unaudited |
| EUR | unknown | ethereum | n/a | [`0x3231cb...da273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-36316 | [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | ⚠️ Unaudited |
| FPSWrapper | unknown | ethereum | n/a | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | ⚠️ Unaudited |
| Frankencoin | unknown | ethereum | n/a | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x023987...27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | unit-36334 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| VNXManager | governance | ethereum | n/a | [`0xcdb386...84c9ae`](./contracts/ethereum-1/0xcdb3867935247049e87c38ea270edd305d84c9ae/) | ⚠️ Unaudited |
| VNXProxyAdmin | governance | ethereum | n/a | [`0xc8bb8e...400400`](./contracts/ethereum-1/0xc8bb8eda94931ca2f20ef43ea7dbd58e68400400/) | ⚠️ Unaudited |

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
| ethereum | [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/) | SavingsVaultDEURO | core_logic | $1,118,381.75 | Verified native implementation with $1,118,381.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1b5f7f...65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | BridgedDecentralizedEURO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | BridgedDEPS | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ClonableBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | CoinLendingGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | FPSWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb58e61...0921cb`](./contracts/ethereum-1/0xb58e61c3098d85632df34eecfb899a1ed80921cb/) | Frankencoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023987...27a72c`](./contracts/ethereum-1/0x02398771fd1db790ef2b656ca3bcb3075f27a72c/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 12 |
| standard_library | 2 |
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
