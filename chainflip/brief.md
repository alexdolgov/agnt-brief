# Agentic Audit Brief: Chainflip

## Project Overview

- Project: Chainflip (`chainflip`)
- Website: [https://chainflip.io/](https://chainflip.io/)
- Lifecycle: active (Tier 0, 47.3% below peak)
- Generated: 2026-06-10T20:59:01.370Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, ethereum
- Contract surface: 12 unique implementations (114 raw deployments)
- DeFi Llama TVL: $35,876,563.00
- On-chain TVL (included contracts): $3,706,589.29
- TVL by chain: Ethereum $3,695,722.55 | Arbitrum $10,866.74

## Project Description

Chainflip is a cross-chain native-swap DEX/AMM network that enables swaps and liquidity/yield products across native assets such as Bitcoin, Solana, Ethereum and other chains. Public protocol tracking also separates Chainflip AMM and Chainflip Lending as related product lines; Ethereum and Arbitrum contracts should be treated as deployments and dependencies within the broader Chainflip ecosystem, not as the protocol's two product families. External token contracts and oracle/feed dependencies should be separated from Chainflip-owned code when assessing contract surface and audit coverage.

### Architecture

Both families share the same governance pattern via KeyManager contracts and use AddressChecker for access control. The Ethereum Vault likely interacts with Arbitrum through the StateChainGateway and token proxies to enable cross-chain swaps and liquidity.

## Audit Coverage Summary

- Verified implementations audited: 3/11 (27.3%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 114
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 27.3% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 3 | 27.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | arbitrum | 2 deployments: ethereum `0xf5e103...f62bcc`; arbitrum [`0x79001a...498920`](./contracts/arbitrum-42161/0x79001a5e762f3befc8e5871b42f6734e00498920/) | ✅ Audited |
| FLIP | unknown | ethereum | [`0x826180...22678a`](./contracts/ethereum-1/0x826180541412d574cf1336d22c0c0a287822678a/) | ✅ Audited |
| KeyManager | governance | arbitrum | 2 deployments: ethereum `0xcd351d...bf08be`; arbitrum [`0xbfe612...000275`](./contracts/arbitrum-42161/0xbfe612c77c2807ac5a6a41f84436287578000275/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressChecker | unknown | ethereum | 4 deployments: ethereum [`0x1562ad...155611`](./contracts/ethereum-1/0x1562ad6bb0e68980a3111f24531c964c7e155611/); ethereum `0x79001a...498920`; arbitrum `0x69c700...3c9892`; arbitrum `0xc1b129...3d5481` | ⚠️ Unaudited |
| AddressHolder | unknown | ethereum | [`0xb3797a...7d2136`](./contracts/ethereum-1/0xb3797a0f2d2a55eb058277c1fe4ba052a97d2136/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | 2 deployments: ethereum [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/); arbitrum `0xaf88d0...8e5831` | ⚠️ Unaudited |
| ScUtils | unknown | ethereum | [`0x13ad79...301380`](./contracts/ethereum-1/0x13ad793e7b75eaacee34b69792552f086b301380/) | ⚠️ Unaudited |
| StateChainGateway | unknown | ethereum | [`0x6995ab...621dbd`](./contracts/ethereum-1/0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenVestingNoStaking | operational_periphery | ethereum | 58 deployments: ethereum [`0x0300a7...57b03f`](./contracts/ethereum-1/0x0300a77772640d81843dc33198bde8798857b03f/); ethereum `0x04c0b1...0f4df9`; ethereum `0x0c3593...b2de29`; ethereum `0x0e7975...a4a2b1`; ethereum `0x1037ea...559541`; ethereum `0x120aa7...a963fd`; ethereum `0x18151c...cae943`; ethereum `0x1917fd...129982`; ethereum `0x1aaa03...43e887`; ethereum `0x231863...c199d2`; ethereum `0x2d1fab...3d7c55`; ethereum `0x2d3b1b...85b367`; ethereum `0x319925...dc8a93`; ethereum `0x34d473...63d7d9`; ethereum `0x387859...387e58`; ethereum `0x393c7c...cd2196`; ethereum `0x3aca5e...5cc966`; ethereum `0x3eedae...b05ca7`; ethereum `0x3f495f...35bb6d`; ethereum `0x4003c0...e9fa66`; ethereum `0x453ace...1acfba`; ethereum `0x4a1a42...ffe979`; ethereum `0x4ce026...65de53`; ethereum `0x4dd609...e39956`; ethereum `0x55ec5c...dd29e9`; ethereum `0x5df5e9...2b3773`; ethereum `0x5eb308...2f2bdc`; ethereum `0x63d481...1aa4dd`; ethereum `0x695eb6...808161`; ethereum `0x6a52a4...43e66a`; ethereum `0x71b7a8...2fc71b`; ethereum `0x766ece...5ffad8`; ethereum `0x7a5068...f69ebf`; ethereum `0x7eb1b8...4b7e75`; ethereum `0x838e97...b5aed4`; ethereum `0x84bc95...ba74be`; ethereum `0x867fe8...8ce7bf`; ethereum `0x87aba8...0eeb05`; ethereum `0x87fa98...db26c2`; ethereum `0x8b5aaa...dc06d5`; ethereum `0x8b8af7...015a73`; ethereum `0x8d1ecf...736e3a`; ethereum `0x9abdbf...5ffa4c`; ethereum `0x9efca9...db677f`; ethereum `0xa1dd67...e53a44`; ethereum `0xacddca...f4f998`; ethereum `0xb409e9...63ec00`; ethereum `0xb994e4...a94ae0`; ethereum `0xbb634e...1a5d00`; ethereum `0xbcc69b...9090a3`; ethereum `0xce35e9...355f0e`; ethereum `0xd80a4a...828f10`; ethereum `0xe2cfdb...929f4f`; ethereum `0xe7a906...530774`; ethereum `0xe904d4...e0b08e`; ethereum `0xead5f6...cf8c70`; ethereum `0xeddd18...7cd668`; ethereum `0xfa7431...361507` | ⚠️ Unaudited |
| TokenVestingStaking | operational_periphery | ethereum | 40 deployments: ethereum [`0x00b284...2830b9`](./contracts/ethereum-1/0x00b2849f4bdb572858ac144f83340a3f472830b9/); ethereum `0x048052...454d27`; ethereum `0x05f739...aaf65e`; ethereum `0x08f097...95e31e`; ethereum `0x0ba803...412293`; ethereum `0x0e04c6...2c1125`; ethereum `0x159cd1...8699ed`; ethereum `0x1728e5...bc0861`; ethereum `0x27689e...aa0e7d`; ethereum `0x2cd644...df2b33`; ethereum `0x2f0a87...3f9f0f`; ethereum `0x302a35...f1eb9e`; ethereum `0x3426ed...682afb`; ethereum `0x36541c...e2ba8e`; ethereum `0x365609...a59cb5`; ethereum `0x3bfe74...5bf858`; ethereum `0x3c463c...18e014`; ethereum `0x49d9c4...0fef37`; ethereum `0x4c1b4e...c3de23`; ethereum `0x634683...391d49`; ethereum `0x751a73...3e85cc`; ethereum `0x7e6259...97df95`; ethereum `0x7fe0eb...0bee7c`; ethereum `0x835012...2d5145`; ethereum `0x83c385...2d1234`; ethereum `0x884f1b...d4db35`; ethereum `0x8c3c5f...d46c4d`; ethereum `0x8f0f6e...c05218`; ethereum `0x8f9fec...e9164d`; ethereum `0xbdefa5...3c2f45`; ethereum `0xc19185...e90dda`; ethereum `0xc1f8d8...f4c20a`; ethereum `0xc73e1d...920d32`; ethereum `0xc9b4a2...74948d`; ethereum `0xda6746...59a86e`; ethereum `0xde4c12...c67d38`; ethereum `0xe05254...24707e`; ethereum `0xf361c4...4fe474`; ethereum `0xf38039...6d2a08`; ethereum `0xf7fb8e...be8813` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xbfe612...000275` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audited by the best in web3.](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/2023-04-TrailOfBits-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | 5 | high |
| [Chainflip_Backend_-_Zellic_Audit_Report.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Multisig-Kudelski-Q1-2022.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Multisig-Kudelski-Q1-2022.pdf) | Kudelski Security | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1562ad...155611`](./contracts/ethereum-1/0x1562ad6bb0e68980a3111f24531c964c7e155611/) | AddressChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3797a...7d2136`](./contracts/ethereum-1/0xb3797a0f2d2a55eb058277c1fe4ba052a97d2136/) | AddressHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13ad79...301380`](./contracts/ethereum-1/0x13ad793e7b75eaacee34b69792552f086b301380/) | ScUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6995ab...621dbd`](./contracts/ethereum-1/0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd/) | StateChainGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0300a7...57b03f`](./contracts/ethereum-1/0x0300a77772640d81843dc33198bde8798857b03f/) | TokenVestingNoStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b284...2830b9`](./contracts/ethereum-1/0x00b2849f4bdb572858ac144f83340a3f472830b9/) | TokenVestingStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Zero-match audit list:

- [3974] Chainflip_Backend_-_Zellic_Audit_Report.pdf
- [3975] Multisig-Kudelski-Q1-2022.pdf

Fork inheritance lineage and inherited audits are included when available.
