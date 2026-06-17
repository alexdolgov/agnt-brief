# Agentic Audit Brief: Chainflip

## Project Overview

- Project: Chainflip (`chainflip`)
- Website: [https://chainflip.io/](https://chainflip.io/)
- Lifecycle: active (Tier 0, 47.3% below peak)
- Generated: 2026-06-17T07:00:35.440Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum
- Contract surface: 10 unique implementations (23 raw deployments)
- DeFi Llama TVL: $36,385,421.00
- On-chain TVL (included contracts): $3,706,589.29
- TVL by chain: Ethereum $3,695,722.55 | Arbitrum $10,866.74

## Project Description

Chainflip is a cross-chain native-swap DEX/AMM network that enables swaps and liquidity/yield products across native assets such as Bitcoin, Solana, Ethereum and other chains. Public protocol tracking also separates Chainflip AMM and Chainflip Lending as related product lines; Ethereum and Arbitrum contracts should be treated as deployments and dependencies within the broader Chainflip ecosystem, not as the protocol's two product families. External token contracts and oracle/feed dependencies should be separated from Chainflip-owned code when assessing contract surface and audit coverage.

### Architecture

Both families share the same governance pattern via KeyManager contracts and use AddressChecker for access control. The Ethereum Vault likely interacts with Arbitrum through the StateChainGateway and token proxies to enable cross-chain swaps and liquidity.

## Contract Surface Quality

- Indexed contracts: 114; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 91 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Unverified dependencies: 6/8.

## Audit Coverage Summary

- Verified implementations audited: 3/10 (30.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 23
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 30.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 3 | 30.0% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xf5e103...f62bcc`; arbitrum [`0x79001a...498920`](./contracts/arbitrum-42161/0x79001a5e762f3befc8e5871b42f6734e00498920/) | ✅ Audited |
| FLIP | unknown | ethereum | n/a | [`0x826180...22678a`](./contracts/ethereum-1/0x826180541412d574cf1336d22c0c0a287822678a/) | ✅ Audited |
| KeyManager | governance | arbitrum | n/a | 2 deployments: ethereum `0xcd351d...bf08be`; arbitrum [`0xbfe612...000275`](./contracts/arbitrum-42161/0xbfe612c77c2807ac5a6a41f84436287578000275/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_2 | token | ethereum | unit-20301 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-20302 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| ScUtils | unknown | ethereum | n/a | [`0x13ad79...301380`](./contracts/ethereum-1/0x13ad793e7b75eaacee34b69792552f086b301380/) | ⚠️ Unaudited |
| StateChainGateway | unknown | ethereum | n/a | [`0x6995ab...621dbd`](./contracts/ethereum-1/0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TokenVestingNoStaking | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x1aaa03...43e887`](./contracts/ethereum-1/0x1aaa037bfbbe56995db04b30298f9a7ccc43e887/); ethereum `0x5df5e9...2b3773`; ethereum `0x7eb1b8...4b7e75`; ethereum `0x8d1ecf...736e3a`; ethereum `0xfa7431...361507` | ⚠️ Unaudited |
| TokenVestingStaking | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x00b284...2830b9`](./contracts/ethereum-1/0x00b2849f4bdb572858ac144f83340a3f472830b9/); ethereum `0x159cd1...8699ed`; ethereum `0x1728e5...bc0861`; ethereum `0x36541c...e2ba8e`; ethereum `0x3bfe74...5bf858`; ethereum `0x49d9c4...0fef37`; ethereum `0xde4c12...c67d38`; ethereum `0xf361c4...4fe474` | ⚠️ Unaudited |

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
| [audited by the best in web3.](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/2023-04-TrailOfBits-securityreview.pdf) | Trail of Bits | Audit | 2023-04 | stale | Direct | contract_name | 5 | high |
| [Chainflip_Backend_-_Zellic_Audit_Report.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Chainflip_Backend_-_Zellic_Audit_Report.pdf) | Zellic | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Multisig-Kudelski-Q1-2022.pdf](https://github.com/chainflip-io/chainflip-backend/blob/main/audits/Multisig-Kudelski-Q1-2022.pdf) | Kudelski Security | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x13ad79...301380`](./contracts/ethereum-1/0x13ad793e7b75eaacee34b69792552f086b301380/) | ScUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6995ab...621dbd`](./contracts/ethereum-1/0x6995ab7c4d7f4b03f467cf4c8e920427d9621dbd/) | StateChainGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aaa03...43e887`](./contracts/ethereum-1/0x1aaa037bfbbe56995db04b30298f9a7ccc43e887/) | TokenVestingNoStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b284...2830b9`](./contracts/ethereum-1/0x00b2849f4bdb572858ac144f83340a3f472830b9/) | TokenVestingStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 3 |
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
