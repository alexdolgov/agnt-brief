# Agentic Audit Brief: Aegis Markets

## Project Overview

- Project: Aegis Markets (`aegis-markets`)
- Website: [https://aegis.markets/](https://aegis.markets/)
- Lifecycle: active (Tier 0, 70.6% below peak)
- Generated: 2026-06-10T20:58:56.549Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, unichain
- Contract surface: 15 unique implementations (33 raw deployments)
- DeFi Llama TVL: $2,328,928.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Aegis Markets is Uniswap v4 programmable market infrastructure focused on dynamic-fee hooks and related liquidity/market mechanisms, including margin-interest activity where supported, rather than a Uniswap V3-style concentrated-liquidity range rebalancer.

### Architecture

The Aegis Markets family relies on the Deployed Contracts family for governance and operational support. PoolPolicyManager enforces pool parameters, DynamicFeeManager adjusts fees, FullRangeLiquidityManager handles full-range positions, and TruncGeoOracleMulti provides price data, all serving the Spot liquidity management contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 15
- Raw deployments: 33
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AegisNFT | token | unichain | [`0xdb3a3d...8e718d`](./contracts/unichain-130/0xdb3a3d5a32d78b19da8417aeb1cda5e2778e718d/) | ⚠️ Unaudited |
| DynamicFeeManager | governance | unichain | 4 deployments: unichain [`0x16b40c...94d958`](./contracts/unichain-130/0x16b40ca9b9366aba4cfdb3d6827491b66994d958/); unichain `0x4a6770...a9429c`; unichain `0xd7deab...bb8d98`; unichain `0xe67686...18a028` | ⚠️ Unaudited |
| FullRangeLiquidityManager | governance | unichain | 3 deployments: unichain [`0x6da0c0...0fe365`](./contracts/unichain-130/0x6da0c0a6153f3c161d7fb260b5f040d5530fe365/); unichain `0xa7b3e2...4352a3`; unichain `0xa7ce35...458a2c` | ⚠️ Unaudited |
| PoolInitAndBindRouter | adapter | unichain | [`0xb3b7bc...fea779`](./contracts/unichain-130/0xb3b7bc07597d20535e3850d34ec4363f8bfea779/) | ⚠️ Unaudited |
| PoolPolicyManager | core_logic | unichain | 4 deployments: unichain [`0x87cb5a...7e3e06`](./contracts/unichain-130/0x87cb5af674b546ec73e462221e8cb5e5ff7e3e06/); unichain `0xa16eb8...7d3006`; unichain `0xaaf29f...97cdda`; unichain `0xe072d3...ec0ee7` | ⚠️ Unaudited |
| PreCcaBonusClaim | unknown | unichain | 2 deployments: unichain [`0x37fcae...5f9332`](./contracts/unichain-130/0x37fcaead6f62bdead5cb2c17f2528fb4965f9332/); unichain `0xbead51...3c670d` | ⚠️ Unaudited |
| RewardCenter | unknown | unichain | [`0xee8e37...62c0c3`](./contracts/unichain-130/0xee8e373c05a6876d43a8a054a47b16345662c0c3/) | ⚠️ Unaudited |
| SponsorAccount | core_logic | unichain | [`0x8f9fa5...f02c86`](./contracts/unichain-130/0x8f9fa5ef0697276c56f51ec3b20da18b5cf02c86/) | ⚠️ Unaudited |
| SponsorCenter | unknown | unichain | [`0x94e431...30b310`](./contracts/unichain-130/0x94e43144067e93f778d29406110b2a6a8730b310/) | ⚠️ Unaudited |
| Spot | unknown | unichain | 3 deployments: unichain [`0x88c9ff...1cdacc`](./contracts/unichain-130/0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc/); unichain `0xa0b0d2...af10cc`; base [`0x88c9ff...1cdacc`](./contracts/base-8453/0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc/) | ⚠️ Unaudited |
| Timelock | governance | unichain | 5 deployments: unichain [`0x5a09c0...d9d13f`](./contracts/unichain-130/0x5a09c037eab964ce925ee88ab1facf8af6d9d13f/); unichain `0x825b15...23c40e`; unichain `0x96573d...f6f3eb`; unichain `0xc754bc...52d245`; unichain `0xf0e74f...510603` | ⚠️ Unaudited |
| TruncGeoOracleMulti | operational_periphery | unichain | 4 deployments: unichain [`0x22e086...8facb5`](./contracts/unichain-130/0x22e086c085fbda3214db238f8a930d22228facb5/); unichain `0x23ff89...0984ba`; unichain `0x269956...be054a`; unichain `0xbe4f23...be6abf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | unichain | `0x508bc0...ee7dc2` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x53e02d...de6544` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x9c66d0...223ad4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Read the full report](https://drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view?usp=sharing) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Read the full report](https://drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view?usp=sharing) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| unichain | [`0xdb3a3d...8e718d`](./contracts/unichain-130/0xdb3a3d5a32d78b19da8417aeb1cda5e2778e718d/) | AegisNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x16b40c...94d958`](./contracts/unichain-130/0x16b40ca9b9366aba4cfdb3d6827491b66994d958/) | DynamicFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x6da0c0...0fe365`](./contracts/unichain-130/0x6da0c0a6153f3c161d7fb260b5f040d5530fe365/) | FullRangeLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xb3b7bc...fea779`](./contracts/unichain-130/0xb3b7bc07597d20535e3850d34ec4363f8bfea779/) | PoolInitAndBindRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x87cb5a...7e3e06`](./contracts/unichain-130/0x87cb5af674b546ec73e462221e8cb5e5ff7e3e06/) | PoolPolicyManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x37fcae...5f9332`](./contracts/unichain-130/0x37fcaead6f62bdead5cb2c17f2528fb4965f9332/) | PreCcaBonusClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xee8e37...62c0c3`](./contracts/unichain-130/0xee8e373c05a6876d43a8a054a47b16345662c0c3/) | RewardCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x8f9fa5...f02c86`](./contracts/unichain-130/0x8f9fa5ef0697276c56f51ec3b20da18b5cf02c86/) | SponsorAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x94e431...30b310`](./contracts/unichain-130/0x94e43144067e93f778d29406110b2a6a8730b310/) | SponsorCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x88c9ff...1cdacc`](./contracts/unichain-130/0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc/) | Spot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x22e086...8facb5`](./contracts/unichain-130/0x22e086c085fbda3214db238f8a930d22228facb5/) | TruncGeoOracleMulti | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2839] Read the full report
- [2840] Read the full report

Fork inheritance lineage and inherited audits are included when available.
