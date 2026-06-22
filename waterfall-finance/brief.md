# Agentic Audit Brief: Waterfall Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 1.3% over 90 days

## Project Overview

- Project: Waterfall Finance (`waterfall-finance`)
- Website: [https://lottery.defiwaterfall.com/](https://lottery.defiwaterfall.com/)
- Lifecycle: declining (Tier 0, 99.2% below peak)
- Generated: 2026-06-20T02:39:23.166Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum, bsc, fantom
- Contract surface: 25 unique implementations (27 raw deployments)
- DeFi Llama TVL: $35,760.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Waterfall Finance is a multi-chain DeFi protocol offering yield farming, decentralized exchange, algorithmic stablecoins, and tokenized mining products. It aggregates various yield strategies and liquidity pools across BSC, Arbitrum, and Fantom.

### Architecture

The product families share a common deployer infrastructure, with clusters like 0x3345... and 0xca14... deploying multiple Waterfall WTF contracts, indicating a unified development team. Tokens such as WaterfallToken and WaterDendyToken likely serve as the base assets across yield and DEX products, while the WTFDOGE meme token ties into the Waterfall WTF suite.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 27 (3 live, 24 unknown).
- Excluded by liveness: 19 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/7 (28.6%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 2
- Unverified implementations: 18
- Unique implementations: 25
- Raw deployments: 27
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 14.3% | 2022-01 |
| unknown | Tier 2 | 1 | 14.3% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Waterfall | unknown | arbitrum | n/a | [`0xedbf59...c87e83`](./contracts/arbitrum-42161/0xedbf59b40336244c6ea94a11a6b0cf6864c87e83/) | ✅ Audited |
| WaterfallToken | token | arbitrum | n/a | [`0x4e6482...4f71b9`](./contracts/arbitrum-42161/0x4e6482b05d13085f1c4a7e2ef612ba43104f71b9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Treasury | operational_periphery | bsc | n/a | [`0x040d9d...6dcadc`](./contracts/bsc-56/0x040d9d243a5fd7e864d6f5290a8aea50aa6dcadc/) | ⚠️ Unaudited |
| WaterDendyToken | token | arbitrum | n/a | [`0x88692a...c2a2c6`](./contracts/arbitrum-42161/0x88692ad37c48e8f4c821b71484ae3c2878c2a2c6/) | ⚠️ Unaudited |
| WaterfallReferral | unknown | bsc | n/a | [`0x2eaddd...49da15`](./contracts/bsc-56/0x2eaddd25a6bebf98f9f8c369fe285a3f2549da15/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Oracle | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x2ea445...eb5a91`](./contracts/bsc-56/0x2ea445696b257e7498c38fa8d0ac753215eb5a91/); bsc `0xd48432...e1a349` | ⚠️ Unaudited (bytecode match) |
| Wtf | unknown | bsc | n/a | 2 deployments: bsc [`0x1811b7...f32576`](./contracts/bsc-56/0x1811b7ed3b613805a9a4b4b1b80c99d58af32576/); bsc `0xeb6054...33d7ab` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x547fb1...5a3191` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bd862...20e32e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70785c...43b057` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76d562...d5388e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fd65b...2f93d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa40e3c...52dc0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac38fb...9996d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb78994...8d70d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaf461...f42a4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23b82...22daba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe50ed3...9b3a59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1f092...a5185a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4fa83...cb6dda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdf36f...8176d0` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1e2a49...2b09de` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6b2a7b...7645d5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x71be8f...a4c26b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7a0ac7...e62488` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://paladinsec.co/projects/waterfall-finance) | Paladin | Audit | 2022-01 | stale | Direct | contract_name | 1 | high |
| [ContractWolf_Audit_WaterfallDEX_Token.pdf](https://github.com/ContractWolf/smart-contract-audits/blob/main/ContractWolf_Audit_WaterfallDEX_Token.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x040d9d...6dcadc`](./contracts/bsc-56/0x040d9d243a5fd7e864d6f5290a8aea50aa6dcadc/) | Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x88692a...c2a2c6`](./contracts/arbitrum-42161/0x88692ad37c48e8f4c821b71484ae3c2878c2a2c6/) | WaterDendyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2eaddd...49da15`](./contracts/bsc-56/0x2eaddd25a6bebf98f9f8c369fe285a3f2549da15/) | WaterfallReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1811b7...f32576`](./contracts/bsc-56/0x1811b7ed3b613805a9a4b4b1b80c99d58af32576/) | Wtf | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
