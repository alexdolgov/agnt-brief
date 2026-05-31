# Agentic Audit Brief: iAero Protocol

## Project Overview

- Project: iAero Protocol (`iaero-protocol`)
- Website: [https://app.iaero.finance/](https://app.iaero.finance/)
- Lifecycle: active (Tier 0, 14.6% below peak)
- Generated: 2026-05-31T06:48:14.736Z
- Pipeline run: v2-pipeline-2026-05-31-46e6f8-7f15
- Chains: base
- Contract surface: 45 unique implementations (63 raw deployments)
- DeFi Llama TVL: $1,976,310.20
- On-chain TVL (included contracts): $2,717,667.54
- TVL by chain: Base $2,717,667.54

## Project Description

iAero Protocol is a liquid staking and yield optimization platform on Base that unlocks liquidity from locked AERO (veAERO) positions. It issues liquid staking tokens like stiAERO and iAERO, manages permanent-lock vaults, and distributes rewards through a system of staking contracts and harvesters.

### Architecture

The Liquid Staking & Vaults family deposits AERO into Aerodrome's VotingEscrow via the Aerodrome Integration family, earning rewards that are harvested by RewardsHarvesterV2 and distributed to stakers through the Staking & Rewards Distribution family. The Treasury multisig controls key parameters and holds protocol reserves.

## Audit Coverage Summary

- Verified implementations audited: 0/40 (0.0%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 45
- Raw deployments: 63
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,717,667.54
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| iAEROToken | token | base | 2 deployments: base [`0x81034f...46a1dc`](./contracts/base-8453/0x81034fb34009115f215f5d5f564aac9ffa46a1dc/); base `0xb2d632...f8f4c9` | ⚠️ Unaudited |
| LIQToken | token | base | [`0x7ee896...93e6a8`](./contracts/base-8453/0x7ee8964160126081cebc443a42482e95e393e6a8/) | ⚠️ Unaudited |
| Aero | token | base | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | base | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | [`0x8e6341...53b648`](./contracts/base-8453/0x8e634181dafb102213fad46b71ba1a4b6153b648/) | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | base | [`0xd6e6d5...31d59f`](./contracts/base-8453/0xd6e6d57d0627aae127743c79bc795f836431d59f/) | ⚠️ Unaudited |
| EpochStakingDistributor | operational_periphery | base | [`0x781a80...a6588a`](./contracts/base-8453/0x781a80fa817b5a146c440f03ef8643f4aca6588a/) | ⚠️ Unaudited |
| FactoryRegistry | registry | base | [`0x5c3f18...9e37c0`](./contracts/base-8453/0x5c3f18f06cc09ca1910767a34a20f771039e37c0/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| Forwarder | unknown | base | [`0x15e627...a05dcc`](./contracts/base-8453/0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | [`0x1039cb...739d37`](./contracts/base-8453/0x1039cb48254a3150fc604d4b9ea08f66f4739d37/) | ⚠️ Unaudited |
| iAEROAutoUSDCVault | core_logic | base | [`0xfe5c92...59c774`](./contracts/base-8453/0xfe5c929677d97723dc822c86c93c7e2d1b59c774/) | ⚠️ Unaudited |
| LIQLinearVester | operational_periphery | base | [`0xf1d25f...f319db`](./contracts/base-8453/0xf1d25f4ee64988afad0f1612cc3d540725f319db/) | ⚠️ Unaudited |
| LIQStakingDistributor | operational_periphery | base | [`0xb81efc...0cdda4`](./contracts/base-8453/0xb81efc6be6622bf4086566210a6ad134cd0cdda4/) | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | base | [`0xfda1fb...d2bdc3`](./contracts/base-8453/0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | registry | base | [`0x3ab1a1...1be23d`](./contracts/base-8453/0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d/) | ⚠️ Unaudited |
| PerlinNoise | unknown | base | [`0x0b3a74...d9990e`](./contracts/base-8453/0x0b3a7479694d678fb34ef737811cb31b9dd9990e/) | ⚠️ Unaudited |
| PermalockVault | core_logic | base | 4 deployments: base [`0x38cc79...f59c70`](./contracts/base-8453/0x38cc7923d5190a0e0fbdb8e51bce8ae8cef59c70/); base `0x430c3d...fb7ca0`; base `0x55816b...0f339c`; base `0x6584a3...552c61` | ⚠️ Unaudited |
| PermalockVault_V5 | core_logic | base | 3 deployments: base [`0x180dab...c37909`](./contracts/base-8453/0x180dab53968e599dd43cf431e27cb01aa5c37909/); base `0x877398...953957`; base `0x9322a2...8e3248` | ⚠️ Unaudited |
| Pool | core_logic | base | 2 deployments: base [`0x420dd3...ce40da`](./contracts/base-8453/0x420dd381b31aef6683db6b902084cb0ffece40da/); base `0xa4e46b...3cd6d7` | ⚠️ Unaudited |
| ProtocolGovernor | governance | base | [`0x94c012...33f410`](./contracts/base-8453/0x94c012a23a8a65a6f40608da30534a46a433f410/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardsHarvester | operational_periphery | base | 4 deployments: base [`0x1dcdcc...4769ff`](./contracts/base-8453/0x1dcdcc16167520256c3b13e18266615d504769ff/); base `0x1f935e...44acfa`; base `0xa520f8...80750a`; base `0xe9fd07...9459c4` | ⚠️ Unaudited |
| RewardsHarvesterV2 | operational_periphery | base | [`0x77f90d...b8bfe5`](./contracts/base-8453/0x77f90d2ddb15ffe28fa322ada351d11da3b8bfe5/) | ⚠️ Unaudited |
| RewardsSugar | unknown | base | [`0xd4ad2e...defe3e`](./contracts/base-8453/0xd4ad2eeeb3314d54212a92f4cbbe684195defe3e/) | ⚠️ Unaudited |
| RewardTokenRegistry | registry | base | [`0xd3e32b...ca072c`](./contracts/base-8453/0xd3e32b22da6bf601a5917ecd344a7ec46bca072c/) | ⚠️ Unaudited |
| Router | adapter | base | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | ⚠️ Unaudited |
| StakingDistributor | operational_periphery | base | [`0x5ae349...9fc7e1`](./contracts/base-8453/0x5ae34974387dfe5b141770274adc7ef5749fc7e1/) | ⚠️ Unaudited |
| StakingDistributorV2 | operational_periphery | base | [`0x2c2b15...bd4dbf`](./contracts/base-8453/0x2c2b15113ad031ae12e154ee83f16a17dcbd4dbf/) | ⚠️ Unaudited |
| StiAERO | token | base | [`0x72c135...4d683d`](./contracts/base-8453/0x72c135b8eebc57a3823f0920233e1a90ff4d683d/) | ⚠️ Unaudited |
| TreasuryDistributor | operational_periphery | base | 4 deployments: base [`0x0ab24c...e65ee8`](./contracts/base-8453/0x0ab24cdd6e23040e37fc24b19e1d43fbe9e65ee8/); base `0x4306e5...5b1bdc`; base `0x7098c0...e541f9`; base `0xd36b84...76c8e0` | ⚠️ Unaudited |
| Trig | unknown | base | [`0x1d75c4...1a216f`](./contracts/base-8453/0x1d75c4dda3d28b4f2ab634c439e495cf211a216f/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| Voter | unknown | base | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| VotingManager | governance | base | 4 deployments: base [`0x06026f...0565a4`](./contracts/base-8453/0x06026fe30ce9e9a613a21a87af210022c80565a4/); base `0xc9c7bf...a26498`; base `0xde7785...328c7f`; base `0xdf5ebf...61cebf` | ⚠️ Unaudited |
| VotingManagerOptimised | governance | base | 3 deployments: base [`0x1702dd...8e6fbb`](./contracts/base-8453/0x1702ddf00e4ff3ed892e569a26e0f1f6858e6fbb/); base `0xa0ebbd...fed0b8`; base `0xe7082a...5589b0` | ⚠️ Unaudited |
| VotingRewardsFactory | registry | base | [`0x45ca74...52b504`](./contracts/base-8453/0x45ca74858c579e717ee29a86042e0d53b252b504/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | base | `0x25f11f...e186c1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x536d46...aca7f6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x75f57f...aa765a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x775a59...a9ae0b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x81ce73...8e7246` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x81034f...46a1dc`](./contracts/base-8453/0x81034fb34009115f215f5d5f564aac9ffa46a1dc/) | iAEROToken | token | $1,917,731.55 | Verified native implementation with $1,917,731.55 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7ee896...93e6a8`](./contracts/base-8453/0x7ee8964160126081cebc443a42482e95e393e6a8/) | LIQToken | token | $799,935.99 | Verified native implementation with $799,935.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e6341...53b648`](./contracts/base-8453/0x8e634181dafb102213fad46b71ba1a4b6153b648/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd6e6d5...31d59f`](./contracts/base-8453/0xd6e6d57d0627aae127743c79bc795f836431d59f/) | DelegationLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x781a80...a6588a`](./contracts/base-8453/0x781a80fa817b5a146c440f03ef8643f4aca6588a/) | EpochStakingDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5c3f18...9e37c0`](./contracts/base-8453/0x5c3f18f06cc09ca1910767a34a20f771039e37c0/) | FactoryRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfe5c92...59c774`](./contracts/base-8453/0xfe5c929677d97723dc822c86c93c7e2d1b59c774/) | iAEROAutoUSDCVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf1d25f...f319db`](./contracts/base-8453/0xf1d25f4ee64988afad0f1612cc3d540725f319db/) | LIQLinearVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb81efc...0cdda4`](./contracts/base-8453/0xb81efc6be6622bf4086566210a6ad134cd0cdda4/) | LIQStakingDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfda1fb...d2bdc3`](./contracts/base-8453/0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3/) | ManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ab1a1...1be23d`](./contracts/base-8453/0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d/) | PatchedManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x38cc79...f59c70`](./contracts/base-8453/0x38cc7923d5190a0e0fbdb8e51bce8ae8cef59c70/) | PermalockVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x180dab...c37909`](./contracts/base-8453/0x180dab53968e599dd43cf431e27cb01aa5c37909/) | PermalockVault_V5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420dd3...ce40da`](./contracts/base-8453/0x420dd381b31aef6683db6b902084cb0ffece40da/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x94c012...33f410`](./contracts/base-8453/0x94c012a23a8a65a6f40608da30534a46a433f410/) | ProtocolGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1dcdcc...4769ff`](./contracts/base-8453/0x1dcdcc16167520256c3b13e18266615d504769ff/) | RewardsHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77f90d...b8bfe5`](./contracts/base-8453/0x77f90d2ddb15ffe28fa322ada351d11da3b8bfe5/) | RewardsHarvesterV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd4ad2e...defe3e`](./contracts/base-8453/0xd4ad2eeeb3314d54212a92f4cbbe684195defe3e/) | RewardsSugar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3e32b...ca072c`](./contracts/base-8453/0xd3e32b22da6bf601a5917ecd344a7ec46bca072c/) | RewardTokenRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5ae349...9fc7e1`](./contracts/base-8453/0x5ae34974387dfe5b141770274adc7ef5749fc7e1/) | StakingDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2c2b15...bd4dbf`](./contracts/base-8453/0x2c2b15113ad031ae12e154ee83f16a17dcbd4dbf/) | StakingDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x72c135...4d683d`](./contracts/base-8453/0x72c135b8eebc57a3823f0920233e1a90ff4d683d/) | StiAERO | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ab24c...e65ee8`](./contracts/base-8453/0x0ab24cdd6e23040e37fc24b19e1d43fbe9e65ee8/) | TreasuryDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06026f...0565a4`](./contracts/base-8453/0x06026fe30ce9e9a613a21a87af210022c80565a4/) | VotingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1702dd...8e6fbb`](./contracts/base-8453/0x1702ddf00e4ff3ed892e569a26e0f1f6858e6fbb/) | VotingManagerOptimised | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45ca74...52b504`](./contracts/base-8453/0x45ca74858c579e717ee29a86042e0d53b252b504/) | VotingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 5 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
