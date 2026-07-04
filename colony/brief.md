# Agentic Audit Brief: Colony

## Project Overview

- Project: Colony (`colony`)
- Website: [https://www.colonylab.io/](https://www.colonylab.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.364Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: avalanche
- Contract surface: 28 unique implementations (28 raw deployments)
- DeFi Llama TVL: $192,830.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 24 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (phutureindex, indexlayout). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/22 (13.6%)
- Deployed-live implementations: 28 of 28 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/28
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 28
- Raw deployments: 28
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 2 | 7.1% | n/a |
| Paladin | Tier 2 | 1 | 3.6% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Staking | unknown | avalanche | n/a | [`0x5b0d74...1dc557`](./contracts/avalanche-43114/0x5b0d74c78f2588b3c5c49857edb856cc731dc557/) | ✅ Audited |
| StakingV2 | unknown | avalanche | n/a | [`0xbd2890...410bbc`](./contracts/avalanche-43114/0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc/) | ✅ Audited |
| StakingV3 | unknown | avalanche | n/a | [`0x2b8c3c...43751c`](./contracts/avalanche-43114/0x2b8c3c4d13142d7457dc80c92db4c62f3543751c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AVAXHelper | unknown | avalanche | n/a | [`0x6101f7...a56d2e`](./contracts/avalanche-43114/0x6101f79b6b29ffa43a30dab7188918e669a56d2e/) | ⚠️ Unaudited |
| ColonyGovernanceToken | unknown | avalanche | n/a | [`0xec3492...1793e6`](./contracts/avalanche-43114/0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6/) | ⚠️ Unaudited |
| DepositManager | unknown | avalanche | n/a | [`0xf2e086...88224c`](./contracts/avalanche-43114/0xf2e0869b9e96ed25a5eb7e551229f3e50388224c/) | ⚠️ Unaudited |
| DirectDistributor | unknown | avalanche | n/a | [`0x837d54...47ba53`](./contracts/avalanche-43114/0x837d54af002188045662cc3bff5b30e40247ba53/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x358ca1...f11f28`](./contracts/avalanche-43114/0x358ca1d984759c8ddb59a1ef74e76d615af11f28/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x3dad12...ba76bd`](./contracts/avalanche-43114/0x3dad1208afec6eccda25169a5d16119ce2ba76bd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x626068...019253`](./contracts/avalanche-43114/0x626068c6d37fa633fd746251eb5aa2aa8c019253/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x6d9f10...113113`](./contracts/avalanche-43114/0x6d9f100ca14384262ca6afd8ef7cec265a113113/) | ⚠️ Unaudited |
| IndexLogic | unknown | avalanche | n/a | [`0x3531ed...95f293`](./contracts/avalanche-43114/0x3531ed4cb9f8b68e0c706c92af5b8a50e095f293/) | ⚠️ Unaudited |
| IndexNAV | unknown | avalanche | n/a | [`0x167dae...6de348`](./contracts/avalanche-43114/0x167daeaa53fb3f2b5719b19ad7397c0adb6de348/) | ⚠️ Unaudited |
| IndexRouter | unknown | avalanche | n/a | [`0x6a676f...361270`](./contracts/avalanche-43114/0x6a676ff024215942706071c84e086cd0af361270/) | ⚠️ Unaudited |
| IndexRouterV2 | unknown | avalanche | n/a | [`0x5cade1...f61153`](./contracts/avalanche-43114/0x5cade1b94f263d0e0ad6e68c4f19532a55f61153/) | ⚠️ Unaudited |
| ManagedIndex | unknown | avalanche | n/a | [`0x48f88a...48bef0`](./contracts/avalanche-43114/0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0/) | ⚠️ Unaudited |
| ManagedIndexFactory | unknown | avalanche | n/a | [`0x6d825c...546ca8`](./contracts/avalanche-43114/0x6d825ce7f220c6cc03fe156f28be6318e6546ca8/) | ⚠️ Unaudited |
| ManagedIndexReweightingLogic | unknown | avalanche | n/a | [`0x7f124c...2e2e6b`](./contracts/avalanche-43114/0x7f124cd28e775ae1fde2885c8fa6b2b8772e2e6b/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | avalanche | n/a | [`0x5463fb...95a9d0`](./contracts/avalanche-43114/0x5463fb623fe9806b78d8ebc41f4671200295a9d0/) | ⚠️ Unaudited |
| OrdererAvax | unknown | avalanche | n/a | [`0x22486d...be8c6d`](./contracts/avalanche-43114/0x22486d98d59d810b89f2abd7bd2ca521b4be8c6d/) | ⚠️ Unaudited |
| OrderHelper | unknown | avalanche | n/a | [`0x24ddfc...c31221`](./contracts/avalanche-43114/0x24ddfc46d4cbbb269bc4c2baf81cf5649cc31221/) | ⚠️ Unaudited |
| OrderingExecutor | unknown | avalanche | n/a | [`0xe9b38d...dd5585`](./contracts/avalanche-43114/0xe9b38d900445685cb7232259c95a96150fdd5585/) | ⚠️ Unaudited |
| PhuturePriceOracle | unknown | avalanche | n/a | [`0x05ea07...c0a4ec`](./contracts/avalanche-43114/0x05ea07036badcdef987f6b6a652f492a30c0a4ec/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0xe4d695...4e3027`](./contracts/avalanche-43114/0xe4d695387e7cfc3dfd388f1cf8bd6eba7e4e3027/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x0eb749...c52388`](./contracts/avalanche-43114/0x0eb749a42ca15d6ee8ad30e789586c09c2c52388/) | ⚠️ Unaudited |
| Vesting | unknown | avalanche | n/a | [`0xefac81...c2be20`](./contracts/avalanche-43114/0xefac81f709d314604a7daee9ca234da978c2be20/) | ⚠️ Unaudited |
| vToken | unknown | avalanche | n/a | [`0x9fee34...efaabf`](./contracts/avalanche-43114/0x9fee340b3754e0d1911d001ce8973fa91fefaabf/) | ⚠️ Unaudited |
| vTokenFactory | unknown | avalanche | n/a | [`0x986cef...b120f8`](./contracts/avalanche-43114/0x986cefa4e8ba3ffec6ce3ef2449133072eb120f8/) | ⚠️ Unaudited |

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
| [Manual Review](https://omniscia.io/reports/colony-lab-staking-v2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 2 | high |
| [DL audit link](https://paladinsec.co/projects/colony) | Paladin | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x6101f7...a56d2e`](./contracts/avalanche-43114/0x6101f79b6b29ffa43a30dab7188918e669a56d2e/) | AVAXHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xec3492...1793e6`](./contracts/avalanche-43114/0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6/) | ColonyGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf2e086...88224c`](./contracts/avalanche-43114/0xf2e0869b9e96ed25a5eb7e551229f3e50388224c/) | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x837d54...47ba53`](./contracts/avalanche-43114/0x837d54af002188045662cc3bff5b30e40247ba53/) | DirectDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3531ed...95f293`](./contracts/avalanche-43114/0x3531ed4cb9f8b68e0c706c92af5b8a50e095f293/) | IndexLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x167dae...6de348`](./contracts/avalanche-43114/0x167daeaa53fb3f2b5719b19ad7397c0adb6de348/) | IndexNAV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6a676f...361270`](./contracts/avalanche-43114/0x6a676ff024215942706071c84e086cd0af361270/) | IndexRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5cade1...f61153`](./contracts/avalanche-43114/0x5cade1b94f263d0e0ad6e68c4f19532a55f61153/) | IndexRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x48f88a...48bef0`](./contracts/avalanche-43114/0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0/) | ManagedIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6d825c...546ca8`](./contracts/avalanche-43114/0x6d825ce7f220c6cc03fe156f28be6318e6546ca8/) | ManagedIndexFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7f124c...2e2e6b`](./contracts/avalanche-43114/0x7f124cd28e775ae1fde2885c8fa6b2b8772e2e6b/) | ManagedIndexReweightingLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5463fb...95a9d0`](./contracts/avalanche-43114/0x5463fb623fe9806b78d8ebc41f4671200295a9d0/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x22486d...be8c6d`](./contracts/avalanche-43114/0x22486d98d59d810b89f2abd7bd2ca521b4be8c6d/) | OrdererAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x24ddfc...c31221`](./contracts/avalanche-43114/0x24ddfc46d4cbbb269bc4c2baf81cf5649cc31221/) | OrderHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe9b38d...dd5585`](./contracts/avalanche-43114/0xe9b38d900445685cb7232259c95a96150fdd5585/) | OrderingExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x05ea07...c0a4ec`](./contracts/avalanche-43114/0x05ea07036badcdef987f6b6a652f492a30c0a4ec/) | PhuturePriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xefac81...c2be20`](./contracts/avalanche-43114/0xefac81f709d314604a7daee9ca234da978c2be20/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9fee34...efaabf`](./contracts/avalanche-43114/0x9fee340b3754e0d1911d001ce8973fa91fefaabf/) | vToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x986cef...b120f8`](./contracts/avalanche-43114/0x986cefa4e8ba3ffec6ce3ef2449133072eb120f8/) | vTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
