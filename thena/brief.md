# Agentic Audit Brief: THENA

⚠️ Lifecycle status: DECLINING - TVL dropped 45.4% over 90 days

## Project Overview

- Project: THENA (`thena`)
- Website: [https://www.thena.fi](https://www.thena.fi)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:46.409Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 26 unique implementations (35 raw deployments)
- DeFi Llama TVL: $3,324,627.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

THENA is a decentralized exchange and liquidity layer on BSC that combines spot trading, concentrated liquidity, and derivatives. It uses a ve(3,3) tokenomics model where users lock THE tokens to vote on gauge emissions and earn trading fees and bribes.

### Architecture

The THENA governance family controls upgrades across all product lines via proxy contracts. THENA INTEGRAL provides the base liquidity and token, while THENA PERPS extends the protocol with derivatives, reusing some PancakeSwap infrastructure and staking contracts.

## Contract Surface Quality

- Indexed contracts: 457; live-surface contracts included: 35 (35 live, 0 unknown).
- Excluded by liveness: 254 inactive, 168 singleton, 0 uninitialized.
- Deployment units: 4/80 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 4/42.

## Audit Coverage Summary

- Verified implementations audited: 3/26 (11.5%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 35
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: 3.8% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 7.7% | 2023-03 |
| OpenZeppelin | Tier 1 | 1 | 3.8% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardsDistributor | operational_periphery | bsc | n/a | [`0xa6e0e7...18727d`](./contracts/bsc-56/0xa6e0e731cb1e99aede0f9c9128d04f948e18727d/) | ✅ Audited |
| VoterV3 | unknown | bsc | unit-27698 | [`0x3a1d09...2c4fcb`](./contracts/bsc-56/0x3a1d0952809f4948d15ebce8d345962a282c4fcb/) | ✅ Audited |
| VotingEscrow | operational_periphery | bsc | n/a | [`0xfbbf37...1c070d`](./contracts/bsc-56/0xfbbf371c9b0b994eebfcc977cef603f7f31c070d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraEternalFarming | unknown | bsc | n/a | [`0x6f866d...7c15a7`](./contracts/bsc-56/0x6f866dfb4ec07864807217c48e4ff58b137c15a7/) | ⚠️ Unaudited |
| AlgebraFactory | registry | bsc | n/a | [`0x30055f...fb4a98`](./contracts/bsc-56/0x30055f87716d3dfd0e5198c27024481099fb4a98/) | ⚠️ Unaudited |
| Claimer | operational_periphery | bsc | n/a | [`0xd2d64e...d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | ⚠️ Unaudited |
| FarmingCenter | unknown | bsc | n/a | [`0x0cd53e...1d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | bsc | n/a | [`0xc9e5c9...c6a6b1`](./contracts/bsc-56/0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1/) | ⚠️ Unaudited |
| GaugeIchiFeeDistribution | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x42e1bf...26ba58`](./contracts/bsc-56/0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58/); bsc `0x6f8024...1481b5`; bsc `0x9d2c09...5e3b4b`; bsc `0xb4dee5...61f455` | ⚠️ Unaudited |
| GaugeSimple | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x2f92bc...121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/); bsc `0xa95186...a9b8d6`; bsc `0xba4456...33e871`; bsc `0xcf2071...64541a`; bsc `0xe6519b...bc3b0c` | ⚠️ Unaudited |
| GlobalFactory | registry | bsc | n/a | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-27727 | [`0x7d70ee...caa184`](./contracts/bsc-56/0x7d70ee3774325c51e021af1f7987c214d2caa184/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | n/a | [`0x2814a4...72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | ⚠️ Unaudited |
| IncentiveMaker | unknown | bsc | unit-27728 | [`0x80ad2f...ef0701`](./contracts/bsc-56/0x80ad2f2ed4f00b152d7ca5e74920c944bfef0701/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 2 deployments: bsc [`0x11746f...a92f7c`](./contracts/bsc-56/0x11746fd90091228a97974435d6be5e10bda92f7c/); bsc `0xe58e64...5adfbb` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | unit-27716 | [`0x643b68...21d02e`](./contracts/bsc-56/0x643b68bf3f855b8475c0a700b6d1020bfc21d02e/) | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | [`0xc06cb2...e04575`](./contracts/bsc-56/0xc06cb27ebb868fa197a24f399680ab674de04575/) | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | [`0x71af3b...c3916d`](./contracts/bsc-56/0x71af3b059b1daa81ee65529bca82779edfc3916d/) | ⚠️ Unaudited |
| Router | adapter | bsc | n/a | 2 deployments: bsc [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/); bsc `0x9b2378...187d0d` | ⚠️ Unaudited |
| RouterV2 | adapter | bsc | n/a | [`0xd4ae6e...78d109`](./contracts/bsc-56/0xd4ae6eca985340dd434d38f470accce4dc78d109/) | ⚠️ Unaudited |
| Royalties | unknown | bsc | n/a | [`0xbb2caf...913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | ⚠️ Unaudited |
| Thena | unknown | bsc | n/a | [`0xf4c8e3...863a11`](./contracts/bsc-56/0xf4c8e32eadec4bfe97e0f595add0f4450a863a11/) | ⚠️ Unaudited |
| ThenianFeeConverter | unknown | bsc | n/a | [`0x6c1c0a...f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ⚠️ Unaudited |
| TradingCompetitionManager | governance | bsc | n/a | [`0x8d03fe...f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | ⚠️ Unaudited |
| Voter | unknown | bsc | n/a | [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | ⚠️ Unaudited |
| VotingIncentivesFactory | registry | bsc | n/a | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | ⚠️ Unaudited |

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
| [OpenZeppelin](https://www.openzeppelin.com/news/retro-thena-audit) | OpenZeppelin | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [Hackken](https://hacken.io/audits/thena) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/peckshield/publications/65be3a3b651bba87c4a9c024ca4306adbadba040/audit_reports/PeckShield-Audit-Report-Thena-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd2d64e...d1e5b2`](./contracts/bsc-56/0xd2d64e094d37dd7d7759603fb9ed6b2306d1e5b2/) | Claimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cd53e...1d08bf`](./contracts/bsc-56/0x0cd53eeb75d72ee0e3e64206b63d7204351d08bf/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9e5c9...c6a6b1`](./contracts/bsc-56/0xc9e5c9fbb843e168282e2cfbebbc3c7f0ec6a6b1/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x42e1bf...26ba58`](./contracts/bsc-56/0x42e1bf58f7b6ad93c23f3d1a22e22329e726ba58/) | GaugeIchiFeeDistribution | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f92bc...121bb2`](./contracts/bsc-56/0x2f92bcc2da319262ba4ddc46d883b23f7e121bb2/) | GaugeSimple | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x247009...947d9c`](./contracts/bsc-56/0x247009c6f39bc08d5d39ac38c9d5a0d316947d9c/) | GlobalFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2814a4...72bbf4`](./contracts/bsc-56/0x2814a4cf03911afc4b0432dbad6cf1d79b72bbf4/) | IncentiveMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20a304...ca8431`](./contracts/bsc-56/0x20a304a7d126758dfe6b243d0fc515f83bca8431/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4ae6e...78d109`](./contracts/bsc-56/0xd4ae6eca985340dd434d38f470accce4dc78d109/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb2caf...913882`](./contracts/bsc-56/0xbb2caf56bf29379e329dfed453cbe60e4d913882/) | Royalties | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf4c8e3...863a11`](./contracts/bsc-56/0xf4c8e32eadec4bfe97e0f595add0f4450a863a11/) | Thena | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6c1c0a...f2eccc`](./contracts/bsc-56/0x6c1c0af31e3c59bc3de10c5cdb0d4af6a0f2eccc/) | ThenianFeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d03fe...f639ec`](./contracts/bsc-56/0x8d03febf03cd8e6f2388e587a6a1263360f639ec/) | TradingCompetitionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8fbb1e...dd0462`](./contracts/bsc-56/0x8fbb1ecebb9e9839bc0de00b9c4c585cabdd0462/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x82f144...57d218`](./contracts/bsc-56/0x82f144accf4779ca8c49928be28fac5fa157d218/) | VotingIncentivesFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 3 |
| standard_library | 4 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=72

Zero-match audit list:

- [2581] Hackken

Fork inheritance lineage and inherited audits are included when available.
