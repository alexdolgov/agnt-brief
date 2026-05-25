# Agentic Audit Brief: Decentralized Euro

## Project Overview

- Project: Decentralized Euro (`decentralized-euro`)
- Website: [https://deuro.com/](https://deuro.com/)
- Lifecycle: active (Tier 0, 71.5% below peak)
- Generated: 2026-05-25T14:30:55.782Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 72 unique implementations (106 raw deployments)
- DeFi Llama TVL: $2,077,487.14
- On-chain TVL (included contracts): $230,430,927.12
- TVL by chain: Ethereum $230,412,736.58 | Polygon $18,190.54

## Project Description

Decentralized Euro is a collateralized debt position (CDP) protocol that issues EUR-pegged stablecoins against various crypto assets. It also provides savings vaults, cross-chain bridges, and governance tokens to manage the system.

### Architecture

The Decentralized Euro Core family provides the foundational CDP and stablecoin logic, while the Active EUR Stablecoin Bridges family extends it cross-chain. SavingsVault, MintingHub, PositionFactory, and PositionRoller families interact with the core to manage vaults, minting, and positions, and the DEPS/nDEPS tokens serve as governance and equity across the system.

## Audit Coverage Summary

- Verified implementations audited: 11/39 (28.2%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 72
- Raw deployments: 106
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $230,430,927.12
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: 28.2% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 28.2% | 2025-04 |
| unknown | Tier 2 | 8 | 20.5% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DecentralizedEURO | unknown | ethereum | [`0xba3f53...e0a3ea`](./contracts/ethereum-1/0xba3f535bbcccca2a154b573ca6c5a49baae0a3ea/) | ✅ Audited |
| DEPSWrapper | unknown | ethereum | [`0x103747...ffa380`](./contracts/ethereum-1/0x103747924e74708139a9400e4ab4bea79fffa380/) | ✅ Audited |
| Equity | unknown | ethereum | 2 deployments: ethereum [`0x1ba267...e341b2`](./contracts/ethereum-1/0x1ba26788dfde592fec8bcb0eaff472a42be341b2/); ethereum `0xc71104...fe8ee6` | ✅ Audited |
| FrontendGateway | unknown | ethereum | [`0x5c49c0...180994`](./contracts/ethereum-1/0x5c49c00f897bd970d964bfb8c3065ae65a180994/) | ✅ Audited |
| MintingHub | unknown | ethereum | 4 deployments: ethereum [`0x0e5dfe...fcb9ea`](./contracts/ethereum-1/0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea/); ethereum `0x4539b0...0a4e7a`; ethereum `0x66acc5...684f7b`; ethereum `0x754676...265219` | ✅ Audited |
| MintingHubGateway | unknown | ethereum | [`0x8b3c41...604618`](./contracts/ethereum-1/0x8b3c41c649b9c7085c171cbb82337889b3604618/) | ✅ Audited |
| PositionFactory | registry | ethereum | 5 deployments: ethereum [`0x0cde50...486392`](./contracts/ethereum-1/0x0cde500e6940931ed190ded77bb48640c9486392/); ethereum `0x167144...1ee5a8`; ethereum `0x3a3985...defe81`; ethereum `0x63cf7c...706b7e`; ethereum `0xcfa9b5...be2080` | ✅ Audited |
| PositionRoller | unknown | ethereum | 2 deployments: ethereum [`0x4ce0ab...57dc79`](./contracts/ethereum-1/0x4ce0ab2fc21bd27a47a64f594fdf7654ea57dc79/); ethereum `0x5c22d5...f7c5cd` | ✅ Audited |
| Savings | unknown | ethereum | 3 deployments: ethereum [`0x760233...90d3d9`](./contracts/ethereum-1/0x760233b90e45d186a9a98e911b115f7f4b90d3d9/); ethereum `0x79a5db...d75b12`; ethereum `0xb50a67...6b3eb5` | ✅ Audited |
| SavingsGateway | unknown | ethereum | [`0x073493...972303`](./contracts/ethereum-1/0x073493d73258c4beb6542e8dd3e1b2891c972303/) | ✅ Audited |
| StablecoinBridge | operational_periphery | ethereum | 17 deployments: ethereum [`0x0423f4...1d5d2a`](./contracts/ethereum-1/0x0423f419de1c44151b6b000e2daa51859c1d5d2a/); ethereum `0x05620f...771702`; ethereum `0x20b0a1...19f1a7`; ethereum `0x2353d1...2c609f`; ethereum `0x3ed40f...9e1fee`; ethereum `0x3ef3d0...630341`; ethereum `0x4125cd...d8402b`; ethereum `0x4dfd46...3a13b1`; ethereum `0x73f38c...4f5897`; ethereum `0x76d8f5...43692b`; ethereum `0x7bbe8f...e346df`; ethereum `0x7f5173...4f2e11`; ethereum `0x8d8b5d...0fa020`; ethereum `0xb4ff74...092fd1`; ethereum `0xb66a40...8c9afe`; ethereum `0xd03cd3...182dbe`; ethereum `0xdc6450...be0130` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EURSToken | token | ethereum | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| Stablecoin | token | ethereum | 2 deployments: ethereum [`0x039a26...d6712d`](./contracts/ethereum-1/0x039a26c8239d6d0c8d8fbdc6e60a6cc465d6712d/); ethereum `0x9d1a7a...dcbae7` | ⚠️ Unaudited |
| HadronToken | token | ethereum | [`0x50753c...91e408`](./contracts/ethereum-1/0x50753cfaf86c094925bf976f218d043f8791e408/) | ⚠️ Unaudited |
| EUROPToken | token | ethereum | 2 deployments: ethereum [`0x888883...0e5e51`](./contracts/ethereum-1/0x888883b5f5d21fb10dfeb70e8f9722b9fb0e5e51/); ethereum `0xfbdaf9...2cff43` | ⚠️ Unaudited |
| TetherToken | token | ethereum | 2 deployments: ethereum [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/); ethereum `0xdac17f...831ec7` | ⚠️ Unaudited |
| SavingsVaultDEURO | core_logic | ethereum | 2 deployments: ethereum [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/); ethereum `0x75beb3...612979` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0xc2ff25...f14e47`](./contracts/polygon-137/0xc2ff25dd99e467d2589b2c26edd270f220f14e47/) | ⚠️ Unaudited |
| AgEURNameable | unknown | ethereum | [`0x1a7e4e...fcbce8`](./contracts/ethereum-1/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| BlacklistValidator | unknown | ethereum | [`0x774681...57254e`](./contracts/ethereum-1/0x774681a648125d46f35017cf6cec43a41857254e/) | ⚠️ Unaudited |
| BridgedDecentralizedEURO | operational_periphery | optimism | 2 deployments: optimism [`0x1b5f7f...65a264`](./contracts/optimism-10/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/); base [`0x1b5f7f...65a264`](./contracts/base-8453/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | ⚠️ Unaudited |
| BridgedDEPS | operational_periphery | base | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | ⚠️ Unaudited |
| ClonableBeaconProxy | registry | arbitrum | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ⚠️ Unaudited |
| CoinLendingGateway | core_logic | ethereum | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | ⚠️ Unaudited |
| ERC20Lib | token | ethereum | [`0x57724f...90f509`](./contracts/ethereum-1/0x57724f65b3f914de7820c6f76b2099fa3a90f509/) | ⚠️ Unaudited |
| ERC677Lib | unknown | ethereum | [`0x0d43c5...6f0820`](./contracts/ethereum-1/0x0d43c529aab2a3c1bca65827eb5136c3276f0820/) | ⚠️ Unaudited |
| EUR | unknown | ethereum | [`0x3231cb...da273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/) | ⚠️ Unaudited |
| FPSWrapper | unknown | ethereum | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | ⚠️ Unaudited |
| Frankencoin | unknown | ethereum | 3 deployments: ethereum [`0x422d17...86bf4e`](./contracts/ethereum-1/0x422d17ccc1442501d039595ffcaaa71b4686bf4e/); ethereum `0x7a7870...09b0d8`; ethereum `0xb58e61...0921cb` | ⚠️ Unaudited |
| GBP | unknown | ethereum | [`0x7ba927...44f8fd`](./contracts/ethereum-1/0x7ba92741bf2a568abc6f1d3413c58c6e0244f8fd/) | ⚠️ Unaudited |
| ISK | unknown | ethereum | [`0xc64254...88e3e2`](./contracts/ethereum-1/0xc642549743a93674cf38d6431f75d6443f88e3e2/) | ⚠️ Unaudited |
| MintableTokenLib | token | ethereum | [`0x3fd2c5...69d53f`](./contracts/ethereum-1/0x3fd2c5067da1f41cf16d8a0230efacbb7369d53f/) | ⚠️ Unaudited |
| SmartTokenLib | token | ethereum | [`0x7f0a5b...6df70e`](./contracts/ethereum-1/0x7f0a5bf88eb3921b170048ecea528bd7cc6df70e/) | ⚠️ Unaudited |
| TokenStorageLib | token | ethereum | [`0x13e657...cdde06`](./contracts/ethereum-1/0x13e6574730e4ae1b425967db30e9d5dd5bcdde06/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | [`0x9d74de...0acacb`](./contracts/polygon-137/0x9d74de101e2a54ad42198f37bdcce0a0160acacb/) | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| USD | unknown | ethereum | [`0xbc5142...853a52`](./contracts/ethereum-1/0xbc5142e0cc5eb16b47c63b0f033d4c2480853a52/) | ⚠️ Unaudited |
| VNXCToken | token | ethereum | [`0x6ba75d...89b5d3`](./contracts/ethereum-1/0x6ba75d640bebfe5da1197bb5a2aff3327789b5d3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x042b24...174a81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x071b13...251036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11e2a3...d2c923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x183e33...3eb09e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18a885...5d6b7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1faa6f...5f02cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x215587...668d8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e7e62...580880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ff329...d295e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35f728...7e16a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ea4e0...3baa9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x496d5a...6adeef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54eb7e...4f42a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6015bf...afbf89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6196d6...6efbf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x651be1...f15265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c9195...b9e6be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ca959...d8115c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e9e62...c47944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a83d8...3ebdd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82d59b...dcc451` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a026c...5e6f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b8fd8...044b37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9c39f0...6581f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa881b...0b8762` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac493a...ca5370` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xac8d2d...dabb67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd142b...b22453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd19769...bcaa23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdffbaf...bea65e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf38a10...a6bf9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7958b...13b623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf93cb1...cddc54` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.chainsecurity.com/security-audit/deuro-smart-contracts](https://www.chainsecurity.com/security-audit/deuro-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [deuro_audit_report.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/deuro_audit_report.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 24 | high |
| [ChainSecurity_dEURO_dEURO_audit.pdf](https://github.com/d-EURO/landingPage/blob/develop/audits/ChainSecurity_dEURO_dEURO_audit.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | 27 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | EURSToken | token | $151,685,596.69 | Verified native implementation with $151,685,596.69 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x039a26...d6712d`](./contracts/ethereum-1/0x039a26c8239d6d0c8d8fbdc6e60a6cc465d6712d/) | Stablecoin | token | $54,835,373.54 | Verified native implementation with $54,835,373.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e9f00...b4fa40`](./contracts/ethereum-1/0x1e9f008b1c538be32f190516735bf1c634b4fa40/) | SavingsVaultDEURO | core_logic | $1,118,381.75 | Verified native implementation with $1,118,381.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x774681...57254e`](./contracts/ethereum-1/0x774681a648125d46f35017cf6cec43a41857254e/) | BlacklistValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b5f7f...65a264`](./contracts/optimism-10/0x1b5f7fa46ed0f487f049c42f374ca4827d65a264/) | BridgedDecentralizedEURO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5f674b...282722`](./contracts/base-8453/0x5f674bf6d559229bdd29d642d2e0978f1e282722/) | BridgedDEPS | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e85fa...57d537`](./contracts/arbitrum-42161/0x5e85faf503621830ca857a5f38b982e0cc57d537/) | ClonableBeaconProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1da37d...ee89d2`](./contracts/ethereum-1/0x1da37d613fb590eed37520b72e9c6f0f6eee89d2/) | CoinLendingGateway | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57724f...90f509`](./contracts/ethereum-1/0x57724f65b3f914de7820c6f76b2099fa3a90f509/) | ERC20Lib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d43c5...6f0820`](./contracts/ethereum-1/0x0d43c529aab2a3c1bca65827eb5136c3276f0820/) | ERC677Lib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3231cb...da273f`](./contracts/ethereum-1/0x3231cb76718cdef2155fc47b5286d82e6eda273f/) | EUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5052d3...80b182`](./contracts/ethereum-1/0x5052d3cc819f53116641e89b96ff4cd1ee80b182/) | FPSWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x422d17...86bf4e`](./contracts/ethereum-1/0x422d17ccc1442501d039595ffcaaa71b4686bf4e/) | Frankencoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ba927...44f8fd`](./contracts/ethereum-1/0x7ba92741bf2a568abc6f1d3413c58c6e0244f8fd/) | GBP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc64254...88e3e2`](./contracts/ethereum-1/0xc642549743a93674cf38d6431f75d6443f88e3e2/) | ISK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fd2c5...69d53f`](./contracts/ethereum-1/0x3fd2c5067da1f41cf16d8a0230efacbb7369d53f/) | MintableTokenLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f0a5b...6df70e`](./contracts/ethereum-1/0x7f0a5bf88eb3921b170048ecea528bd7cc6df70e/) | SmartTokenLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e657...cdde06`](./contracts/ethereum-1/0x13e6574730e4ae1b425967db30e9d5dd5bcdde06/) | TokenStorageLib | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc5142...853a52`](./contracts/ethereum-1/0xbc5142e0cc5eb16b47c63b0f033d4c2480853a52/) | USD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 27 |

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
