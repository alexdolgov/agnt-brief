# Agentic Audit Brief: Virtuals Protocol

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Virtuals Protocol (`virtuals-protocol`)
- Website: [https://app.virtuals.io](https://app.virtuals.io)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:42.641Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 46 unique implementations (59 raw deployments)
- DeFi Llama TVL: $27,333,549.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Virtuals Protocol is a platform for creating, managing, and monetizing AI agents on the Base blockchain. It provides infrastructure for agent tokenization, bonding curves, staking, and governance, enabling users to launch and interact with AI-driven services.

### Architecture

The protocol consists of a single product family where agent factories deploy agent NFTs and bonding curves, while routers, tax, reward, and staking contracts share infrastructure to manage tokenomics and governance. Proxy contracts provide upgradeability across all core components.

## Contract Surface Quality

- Indexed contracts: 135; live-surface contracts included: 59 (59 live, 0 unknown).
- Excluded by liveness: 45 inactive, 31 singleton, 0 uninitialized.
- Deployment units: 22/38 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/11.

## Audit Coverage Summary

- Verified implementations audited: 0/46 (0.0%)
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 46
- Raw deployments: 59
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountManager | governance | base | unit-26084 | [`0x14dab2...cdf485`](./contracts/base-8453/0x14dab2b846a4c07b3f52c37e3fd7265c2bcdf485/) | ⚠️ Unaudited |
| AccountManager | governance | base | n/a | [`0x95d2bc...512beb`](./contracts/base-8453/0x95d2bc450913cd7575fcc961e889b12a4e512beb/) | ⚠️ Unaudited |
| ACPRouter | adapter | base | n/a | [`0x49ff03...951490`](./contracts/base-8453/0x49ff03047883c2afb4df9a2129122b4d0d951490/) | ⚠️ Unaudited |
| ACPRouter | adapter | base | unit-26105 | [`0xa6c9ba...da9df0`](./contracts/base-8453/0xa6c9ba866992cfd7fd6460ba912bfa405ada9df0/) | ⚠️ Unaudited |
| ACPSimple | unknown | base | unit-26097 | [`0x6a1fe2...0a0a4a`](./contracts/base-8453/0x6a1fe26d54ab0d3e1e3168f2e0c0cda5cc0a0a4a/) | ⚠️ Unaudited |
| AgentFactoryV4 | registry | base | unit-26116 | [`0xeb8a7b...998c1e`](./contracts/base-8453/0xeb8a7b0184373550dcaa79156812f5d33e998c1e/) | ⚠️ Unaudited |
| AgentFactoryV6 | registry | base | unit-26120 | [`0xfc949b...f821d3`](./contracts/base-8453/0xfc949b4c0852058a6c7529e5b1dcb65f2bf821d3/) | ⚠️ Unaudited |
| AgentFactoryV7 | registry | base | n/a | [`0x3eb211...678743`](./contracts/base-8453/0x3eb211d1b64bde1af99bfae95fe5063fd1678743/) | ⚠️ Unaudited |
| AgentFactoryV7 | registry | base | unit-26111 | [`0xc169a2...0442a3`](./contracts/base-8453/0xc169a24010fd4d47ca7be4b4c7863b76520442a3/) | ⚠️ Unaudited |
| AgentInference | unknown | base | unit-26114 | [`0xcefe54...119246`](./contracts/base-8453/0xcefe543c5cb16170228cd5dfe469c24917119246/) | ⚠️ Unaudited |
| AgentNftV2 | token | base | unit-26090 | [`0x50725a...6732c0`](./contracts/base-8453/0x50725af160260a316b2673c71c8c21469f6732c0/) | ⚠️ Unaudited |
| AgentTax | unknown | base | unit-26099 | [`0x7e2617...bb64b1`](./contracts/base-8453/0x7e26173192d72fd6d75a759f888d61c2cdbb64b1/) | ⚠️ Unaudited |
| AgentTax | unknown | base | n/a | 2 deployments: base [`0x8a101b...bd9d57`](./contracts/base-8453/0x8a101b1833f8f4f0feaf663f3081f5241ebd9d57/); base `0xc37a4b...1b5430` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | base | unit-26095 | [`0x617fd6...f0a528`](./contracts/base-8453/0x617fd668c5b0d1906c0b3e7e3e49d1409df0a528/) | ⚠️ Unaudited |
| AgentTaxV2 | unknown | base | n/a | [`0x8fbc31...2e55f5`](./contracts/base-8453/0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5/) | ⚠️ Unaudited |
| AgentToken | token | base | n/a | [`0x766e06...46eb7b`](./contracts/base-8453/0x766e0671bbbf59370c35a8882366a2085b46eb7b/) | ⚠️ Unaudited |
| AgentTokenV2 | token | base | n/a | [`0x7bab5d...8ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/) | ⚠️ Unaudited |
| AgentTokenV3 | token | base | n/a | [`0x484f39...76100c`](./contracts/base-8453/0x484f39869b656e33d4002b41e553453d3c76100c/) | ⚠️ Unaudited |
| AgentVeTokenV2 | token | base | n/a | 2 deployments: base [`0x4e37ac...f24eda`](./contracts/base-8453/0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda/); base `0xe56103...5a6756` | ⚠️ Unaudited |
| BondingConfig | governance | base | n/a | [`0x0cd36d...091558`](./contracts/base-8453/0x0cd36de47efdb8e032cab9d56d5191fbbb091558/) | ⚠️ Unaudited |
| BondingConfig | governance | base | unit-26093 | [`0x5c4a1a...abedaf`](./contracts/base-8453/0x5c4a1a72c5a11909e318fcc08e52e49299abedaf/) | ⚠️ Unaudited |
| BondingV2 | unknown | base | unit-26112 | [`0xc3538d...89958d`](./contracts/base-8453/0xc3538ddd84619e761b4c03caf2f785f79889958d/) | ⚠️ Unaudited |
| BondingV3 | unknown | base | unit-26106 | [`0xacb04a...f343aa`](./contracts/base-8453/0xacb04ab3a1076f4e38de1bac1e19e1c60ff343aa/) | ⚠️ Unaudited |
| BondingV3 | unknown | base | n/a | [`0xfc3167...9284bb`](./contracts/base-8453/0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb/) | ⚠️ Unaudited |
| BondingV5 | unknown | base | unit-26086 | [`0x1a5400...4d3b01`](./contracts/base-8453/0x1a540088125d00dd3990f9da45ca0859af4d3b01/) | ⚠️ Unaudited |
| BondingV5 | unknown | base | n/a | [`0x492d92...7e7127`](./contracts/base-8453/0x492d923f9662a0321d3f9374ce919ca8647e7127/) | ⚠️ Unaudited |
| FFactoryV3 | registry | base | n/a | [`0x78238a...c94b57`](./contracts/base-8453/0x78238ae69a114c41e5ed28868bc307757dc94b57/) | ⚠️ Unaudited |
| FGenesis | unknown | base | unit-26088 | [`0x42f4f5...db1ea9`](./contracts/base-8453/0x42f4f5a3389ca0bed694de339f4d432acddb1ea9/) | ⚠️ Unaudited |
| FRouterV2 | adapter | base | unit-26109 | [`0xbfce3f...073f95`](./contracts/base-8453/0xbfce3fbe9ce3a19adb8dbb096ea2cb2bb1073f95/) | ⚠️ Unaudited |
| FRouterV3 | adapter | base | unit-26083 | [`0x02fe8e...b47ded`](./contracts/base-8453/0x02fe8ec3d9bbf7318eb54590bcc39198a8b47ded/) | ⚠️ Unaudited |
| FRouterV3 | adapter | base | n/a | [`0xbadb9f...4557c5`](./contracts/base-8453/0xbadb9f3e99f43f8350b158471a3ac58cee4557c5/) | ⚠️ Unaudited |
| JobManager | governance | base | unit-26103 | [`0x9c690c...b83744`](./contracts/base-8453/0x9c690c267f20c385f8a053f62bc8c7e2d4b83744/) | ⚠️ Unaudited |
| JobManager | governance | base | n/a | [`0xca58be...794850`](./contracts/base-8453/0xca58be70daa08fb793af89561285c1c711794850/) | ⚠️ Unaudited |
| MemoManager | governance | base | n/a | [`0x98bf57...bd2ee0`](./contracts/base-8453/0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0/) | ⚠️ Unaudited |
| MemoManager | governance | base | unit-26104 | [`0x9c6c5a...91f30c`](./contracts/base-8453/0x9c6c5a7125934cc6a711a7bf44f3cdcccf91f30c/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x0b3e32...4e7e1b`](./contracts/base-8453/0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b/) | ⚠️ Unaudited |
| PaymentManager | governance | base | n/a | [`0x8e4fa9...ab19ab`](./contracts/base-8453/0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab/) | ⚠️ Unaudited |
| PaymentManager | governance | base | unit-26117 | [`0xef4364...856c7f`](./contracts/base-8453/0xef4364fe4487353df46eb7c811d4fac78b856c7f/) | ⚠️ Unaudited |
| PoolHelper | core_logic | base | n/a | 6 deployments: base [`0x423ab5...f8a407`](./contracts/base-8453/0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407/); base `0x788d54...9bd823`; base `0x79653c...003a81`; base `0xbb1dd9...9a8c7b`; base `0xc83904...ebcc4d`; base `0xd34d47...1e2089` | ⚠️ Unaudited |
| StakingDelegationHelper2 | periphery | base | n/a | 5 deployments: base [`0x88e299...0c75a3`](./contracts/base-8453/0x88e299f9124c0c0924f4308d181b51c2690c75a3/); base `0x9d1a26...79817e`; base `0xbc8b1e...48948e`; base `0xd64c8a...0b80a1`; base `0xf73ecd...16e603` | ⚠️ Unaudited |
| TaxSwapper | adapter | base | n/a | 2 deployments: base [`0x107e58...1c8b72`](./contracts/base-8453/0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72/); base `0x8e0253...495d0e` | ⚠️ Unaudited |
| TimeLockStaking | governance | base | n/a | [`0x33e34b...11a045`](./contracts/base-8453/0x33e34b8684565fcf6a9dd52a7e92c4e70211a045/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | unit-26089 (2 proxies) | 2 deployments: base [`0x488db0...17c7c8`](./contracts/base-8453/0x488db0978b34c6fd901760b9024b565c1117c7c8/); base `0xd7d3c8...92d284` | ⚠️ Unaudited |
| veVirtual | unknown | base | unit-26094 | [`0x60a203...6b4df8`](./contracts/base-8453/0x60a203ddcde45fbfb325bdeea93824b5726b4df8/) | ⚠️ Unaudited |
| VirtualOFTAdapter | adapter | base | n/a | [`0xa5a1af...0bbc93`](./contracts/base-8453/0xa5a1afbff720f79f1f7833aafbdcee87770bbc93/) | ⚠️ Unaudited |
| VirtualProtocolDAOV2 | unknown | base | n/a | [`0xa1a98f...776665`](./contracts/base-8453/0xa1a98f9aa6c56652e4f306d38a78fff554776665/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x95d2bc...512beb`](./contracts/base-8453/0x95d2bc450913cd7575fcc961e889b12a4e512beb/) | AccountManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x49ff03...951490`](./contracts/base-8453/0x49ff03047883c2afb4df9a2129122b4d0d951490/) | ACPRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3eb211...678743`](./contracts/base-8453/0x3eb211d1b64bde1af99bfae95fe5063fd1678743/) | AgentFactoryV7 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a101b...bd9d57`](./contracts/base-8453/0x8a101b1833f8f4f0feaf663f3081f5241ebd9d57/) | AgentTax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8fbc31...2e55f5`](./contracts/base-8453/0x8fbc314aaa3543b864fd38f62b3d52b9032e55f5/) | AgentTaxV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x766e06...46eb7b`](./contracts/base-8453/0x766e0671bbbf59370c35a8882366a2085b46eb7b/) | AgentToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bab5d...8ae2db`](./contracts/base-8453/0x7bab5d2e3ebde7293888b3f4c022aaaad88ae2db/) | AgentTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x484f39...76100c`](./contracts/base-8453/0x484f39869b656e33d4002b41e553453d3c76100c/) | AgentTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e37ac...f24eda`](./contracts/base-8453/0x4e37ac6e11ecd5e107ba05dfb5ef664485f24eda/) | AgentVeTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cd36d...091558`](./contracts/base-8453/0x0cd36de47efdb8e032cab9d56d5191fbbb091558/) | BondingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfc3167...9284bb`](./contracts/base-8453/0xfc3167e8e236a5f2600cc28082c2f8be1d9284bb/) | BondingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x492d92...7e7127`](./contracts/base-8453/0x492d923f9662a0321d3f9374ce919ca8647e7127/) | BondingV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x78238a...c94b57`](./contracts/base-8453/0x78238ae69a114c41e5ed28868bc307757dc94b57/) | FFactoryV3 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbadb9f...4557c5`](./contracts/base-8453/0xbadb9f3e99f43f8350b158471a3ac58cee4557c5/) | FRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xca58be...794850`](./contracts/base-8453/0xca58be70daa08fb793af89561285c1c711794850/) | JobManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x98bf57...bd2ee0`](./contracts/base-8453/0x98bf57e2f5861f532d3b1d86f8705e9571bd2ee0/) | MemoManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e4fa9...ab19ab`](./contracts/base-8453/0x8e4fa97e4e8d0b8618065809197e1bbf4fab19ab/) | PaymentManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x423ab5...f8a407`](./contracts/base-8453/0x423ab54e2be9e960b441b1299fb8fa8ad8f8a407/) | PoolHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e299...0c75a3`](./contracts/base-8453/0x88e299f9124c0c0924f4308d181b51c2690c75a3/) | StakingDelegationHelper2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x107e58...1c8b72`](./contracts/base-8453/0x107e58aa0ecb30b998dad5c5c9ab89b6aa1c8b72/) | TaxSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x33e34b...11a045`](./contracts/base-8453/0x33e34b8684565fcf6a9dd52a7e92c4e70211a045/) | TimeLockStaking | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa1a98f...776665`](./contracts/base-8453/0xa1a98f9aa6c56652e4f306d38a78fff554776665/) | VirtualProtocolDAOV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 23 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
