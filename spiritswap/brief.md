# Agentic Audit Brief: SpiritSwap

⚠️ Lifecycle status: DEAD - TVL dropped 16.8% over 90 days

## Project Overview

- Project: SpiritSwap (`spiritswap`)
- Website: [https://www.spiritswap.finance/chain/ftm/swap](https://www.spiritswap.finance/chain/ftm/swap)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T12:09:55.491Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: fantom, sonic
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $337,649.00
- On-chain TVL (included contracts): $0.60
- TVL by chain: Sonic $0.60

## Project Description

SpiritSwap is a decentralized exchange and lending protocol on Sonic and Fantom. It provides automated market making with concentrated liquidity, yield farming incentives, and lending markets for users to swap tokens, provide liquidity, and earn rewards.

### Architecture

The Swaps/Liquidity family provides the core AMM infrastructure, with the AlgebraFactory deploying pools and the NonfungiblePositionManager managing LP positions. The Farming family builds on top by allowing users to stake those LP positions in the FarmingCenter to earn rewards from AlgebraEternalFarming. The legacy SpiritSwap AMM contracts appear to be separate, possibly an older version, and may not directly interact with the Algebra-based families.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 13 (8 live, 5 unknown).
- Excluded by liveness: 16 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 5; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $0.60
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $0.60 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | core_logic | sonic | n/a | [`0x5be5f7...5870f7`](./contracts/sonic-146/0x5be5f71bc89a2e5fdbbb2d9aeff1f4a38d5870f7/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | sonic | n/a | [`0xf5d228...4c0c08`](./contracts/sonic-146/0xf5d228fd454e99384bfaa4e695b70a8cdd4c0c08/) | ⚠️ Unaudited |
| AlgebraFactory | registry | sonic | n/a | [`0xb86020...4cda76`](./contracts/sonic-146/0xb860200bd68dc39ceafd6ebb82883f189f4cda76/) | ⚠️ Unaudited |
| FarmingCenter | unknown | sonic | n/a | [`0x967f26...7e51d6`](./contracts/sonic-146/0x967f26d3a2714a55bdd1bd9c6e6ed148527e51d6/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0x5084e9...572bb4`](./contracts/sonic-146/0x5084e9fdf9264489a14e77c011073d757e572bb4/) | ⚠️ Unaudited |
| Quoter | periphery | sonic | n/a | [`0xe11813...a09404`](./contracts/sonic-146/0xe1181313a39d850d3a20f11ff1a6a94a29a09404/) | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x2e6b9c...0f5438`](./contracts/sonic-146/0x2e6b9c8d4a0972f87f21437a3ac7e4a1810f5438/); sonic `0x488219...5acd6b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x2fbff4...acdc08` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5b2af7...34685e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5cc61a...78e59b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9d3591...2c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xef45d1...4950b0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SpiritSwap-Core Security Audit Report.pdf](https://github.com/Layer3Org/spiritswap-core/blob/main/SpiritSwap-Core%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [.css-mc6j7r{display:inline-block;line-height:1em;-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;color:#60E6C5;width:auto;height:18px;}](https://github.com/Spirit-DAO/spiritswap-contract/blob/main/Zokyo%20SpiritSwap%20V2%20Audit.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [.css-hjeyoq{display:inline-block;line-height:1em;-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;color:#60E6C5;width:auto;height:22px;}](https://github.com/Spirit-DAO/spiritswap-contract/blob/main/PeckShield-Audit-Report-SpiritV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [- [Audits](): All Audits for on-chain contracts are done by our partners at Hashlock](https://docs.silverswap.io/silverswap/technical-details/audits.md) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [All Audits are performed by [Hashlock](https://www.bing.com/search?pglt=299\&q=hashlock\&cvid=44f7d89fda28454692e287c3419fdfa8\&gs_lcrp=EgRlZGdlKgYIABBFGDkyBggAEEUYOTIGCAEQRRg90gEIMjI5NmowajGoAgCwAgA\&FORM=ANNTA1\&adppc=EDGEESS\&PC=U531), and can be found [here]().](https://hashlock.com/audits/silverswap) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x5be5f7...5870f7`](./contracts/sonic-146/0x5be5f71bc89a2e5fdbbb2d9aeff1f4a38d5870f7/) | AlgebraCommunityVault | core_logic | $0.60 | Verified native implementation with $0.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb86020...4cda76`](./contracts/sonic-146/0xb860200bd68dc39ceafd6ebb82883f189f4cda76/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5084e9...572bb4`](./contracts/sonic-146/0x5084e9fdf9264489a14e77c011073d757e572bb4/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe11813...a09404`](./contracts/sonic-146/0xe1181313a39d850d3a20f11ff1a6a94a29a09404/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13882] SpiritSwap-Core Security Audit Report.pdf
- [13883] .css-mc6j7r{display:inline-block;line-height:1em;-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;color:#60E6C5;width:auto;height:18px;}
- [13884] .css-hjeyoq{display:inline-block;line-height:1em;-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;color:#60E6C5;width:auto;height:22px;}
- [13885] - [Audits](): All Audits for on-chain contracts are done by our partners at Hashlock
- [13886] All Audits are performed by [Hashlock](https://www.bing.com/search?pglt=299\&q=hashlock\&cvid=44f7d89fda28454692e287c3419fdfa8\&gs_lcrp=EgRlZGdlKgYIABBFGDkyBggAEEUYOTIGCAEQRRg90gEIMjI5NmowajGoAgCwAgA\&FORM=ANNTA1\&adppc=EDGEESS\&PC=U531), and can be found [here]().

Fork inheritance lineage and inherited audits are included when available.
