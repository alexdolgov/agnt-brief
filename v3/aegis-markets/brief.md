# Agentic Audit Brief: Aegis Markets

⚠️ Lifecycle status: DECLINING - TVL dropped 65.8% over 90 days

## Project Overview

- Project: Aegis Markets (`aegis-markets`)
- Website: [https://aegis.markets/](https://aegis.markets/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-03T21:05:24.406Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: base, unichain
- Contract surface: 19 unique implementations (38 raw deployments)
- DeFi Llama TVL: $1,694,151.43
- On-chain TVL (included contracts): $20,765,282.15
- TVL by chain: Base $18,084,727.89 | Unichain $2,680,554.25

## Project Description

Liquidity Manager. Structurally: 19 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 3 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 19 common project-authored base contract(s) (protocolfees, nodelegatecall, erc6909claims). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 38 (33 live, 5 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 14 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 19
- Raw deployments: 38
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $20,765,282.15
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $20,765,282.15 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | unichain | n/a | 2 deployments: unichain [`0x1f9840...000004`](./contracts/unichain-130/0x1f98400000000000000000000000000000000004/); base `0x498581...652b2b` | ⚠️ Unaudited |
| DynamicFeeManager | unknown | unichain | n/a | 4 deployments: unichain [`0x16b40c...94d958`](./contracts/unichain-130/0x16b40ca9b9366aba4cfdb3d6827491b66994d958/); unichain `0x4a6770...a9429c`; unichain `0xd7deab...bb8d98`; unichain `0xe67686...18a028` | ⚠️ Unaudited |
| FullRangeLiquidityManager | unknown | unichain | n/a | 3 deployments: unichain [`0x6da0c0...0fe365`](./contracts/unichain-130/0x6da0c0a6153f3c161d7fb260b5f040d5530fe365/); unichain `0xa7b3e2...4352a3`; unichain `0xa7ce35...458a2c` | ⚠️ Unaudited |
| PoolInitAndBindRouter | adapter | unichain | n/a | [`0xb3b7bc...fea779`](./contracts/unichain-130/0xb3b7bc07597d20535e3850d34ec4363f8bfea779/) | ⚠️ Unaudited |
| PoolPolicyManager | unknown | unichain | n/a | 4 deployments: unichain [`0x87cb5a...7e3e06`](./contracts/unichain-130/0x87cb5af674b546ec73e462221e8cb5e5ff7e3e06/); unichain `0xa16eb8...7d3006`; unichain `0xaaf29f...97cdda`; unichain `0xe072d3...ec0ee7` | ⚠️ Unaudited |
| PositionManager | governance | unichain | n/a | [`0x4529a0...2617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | ⚠️ Unaudited |
| PositionManager | governance | base | n/a | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | ⚠️ Unaudited |
| PreCcaBonusClaim | unknown | unichain | n/a | 2 deployments: unichain [`0x37fcae...5f9332`](./contracts/unichain-130/0x37fcaead6f62bdead5cb2c17f2528fb4965f9332/); unichain `0xbead51...3c670d` | ⚠️ Unaudited |
| RewardCenter | unknown | unichain | n/a | [`0xee8e37...62c0c3`](./contracts/unichain-130/0xee8e373c05a6876d43a8a054a47b16345662c0c3/) | ⚠️ Unaudited |
| SponsorAccount | core_logic | unichain | n/a | [`0x8f9fa5...f02c86`](./contracts/unichain-130/0x8f9fa5ef0697276c56f51ec3b20da18b5cf02c86/) | ⚠️ Unaudited |
| SponsorCenter | unknown | unichain | n/a | [`0x94e431...30b310`](./contracts/unichain-130/0x94e43144067e93f778d29406110b2a6a8730b310/) | ⚠️ Unaudited |
| Spot | unknown | unichain | n/a | 3 deployments: unichain [`0x88c9ff...1cdacc`](./contracts/unichain-130/0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc/); unichain `0xa0b0d2...af10cc`; base [`0x88c9ff...1cdacc`](./contracts/base-8453/0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc/) | ⚠️ Unaudited |
| TestToken | unknown | unichain | n/a | [`0xf9a8f8...fae04a`](./contracts/unichain-130/0xf9a8f837337118960d78e2d0de8dbe17acfae04a/) | ⚠️ Unaudited |
| Timelock | governance | unichain | n/a | 5 deployments: unichain [`0x5a09c0...d9d13f`](./contracts/unichain-130/0x5a09c037eab964ce925ee88ab1facf8af6d9d13f/); unichain `0x825b15...23c40e`; unichain `0x96573d...f6f3eb`; unichain `0xc754bc...52d245`; unichain `0xf0e74f...510603` | ⚠️ Unaudited |
| TruncGeoOracleMulti | operational_periphery | unichain | n/a | 4 deployments: unichain [`0x22e086...8facb5`](./contracts/unichain-130/0x22e086c085fbda3214db238f8a930d22228facb5/); unichain `0x23ff89...0984ba`; unichain `0x269956...be054a`; unichain `0xbe4f23...be6abf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | unichain | n/a | `0x508bc0...ee7dc2` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x53e02d...de6544` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9c66d0...223ad4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0b0d2...af10cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view](https://drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view?usp=sharing) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view](https://drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view?usp=sharing) | Trail of Bits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| unichain | [`0xb3b7bc...fea779`](./contracts/unichain-130/0xb3b7bc07597d20535e3850d34ec4363f8bfea779/) | PoolInitAndBindRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4529a0...2617bf`](./contracts/unichain-130/0x4529a01c7a0410167c5740c487a8de60232617bf/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x37fcae...5f9332`](./contracts/unichain-130/0x37fcaead6f62bdead5cb2c17f2528fb4965f9332/) | PreCcaBonusClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0xee8e37...62c0c3`](./contracts/unichain-130/0xee8e373c05a6876d43a8a054a47b16345662c0c3/) | RewardCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x8f9fa5...f02c86`](./contracts/unichain-130/0x8f9fa5ef0697276c56f51ec3b20da18b5cf02c86/) | SponsorAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x94e431...30b310`](./contracts/unichain-130/0x94e43144067e93f778d29406110b2a6a8730b310/) | SponsorCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x88c9ff...1cdacc`](./contracts/unichain-130/0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc/) | Spot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x5a09c0...d9d13f`](./contracts/unichain-130/0x5a09c037eab964ce925ee88ab1facf8af6d9d13f/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x22e086...8facb5`](./contracts/unichain-130/0x22e086c085fbda3214db238f8a930d22228facb5/) | TruncGeoOracleMulti | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2839] drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view
- [2840] drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view

Fork inheritance lineage and inherited audits are included when available.
