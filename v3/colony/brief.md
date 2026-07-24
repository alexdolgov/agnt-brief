# Agentic Audit Brief: Colony

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Colony (`colony`)
- Website: [https://www.colonylab.io/](https://www.colonylab.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 106 unique implementations (111 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $192,830.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Colony. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche. Structural roles: 4 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), unclassified (1)
- Contract kinds: contract (4), abstract (1)
- Detected standards: ownable (3), erc20 (2), erc20permit (2), pausable (2), erc165 (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x62685d3eaace96d6145d35f3b7540d35f482de5b`, chain 43114)
- UnnamedContract (`0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82`, chain 43114)
- ColonyGovernanceToken (`0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6`, chain 43114)
- ManagedIndex (`0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0`, chain 43114)
- Vesting (`0xefac81f709d314604a7daee9ca234da978c2be20`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 98 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 5 of 106 unique; 101 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/29
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 106
- Raw deployments: 111
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 3.4% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-381755 | `0x62685d3eaace96d6145d35f3b7540d35f482de5b` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AVAXHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6101f79b6b29ffa43a30dab7188918e669a56d2e` | ⚠️ Unaudited |
| ColonyGovernanceToken | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381759 | `0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2e0869b9e96ed25a5eb7e551229f3e50388224c` | ⚠️ Unaudited |
| DirectDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x837d54af002188045662cc3bff5b30e40247ba53` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x358ca1d984759c8ddb59a1ef74e76d615af11f28`; avalanche `0x8724869ba7986fd9ea9e39bd85e9393049b90a1d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3dad1208afec6eccda25169a5d16119ce2ba76bd`; avalanche `0xadc391e6a9c43adbc6bcf2210ecf4351714b219a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x626068c6d37fa633fd746251eb5aa2aa8c019253`; avalanche `0x7ed413138cf77c0d4aa272bbd1931d9c0cd91a24` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6d9f100ca14384262ca6afd8ef7cec265a113113`; avalanche `0x836bc4afc16d8923d3bf84a908d6a53c61b4f035` | ⚠️ Unaudited |
| IndexLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3531ed4cb9f8b68e0c706c92af5b8a50e095f293` | ⚠️ Unaudited |
| IndexNAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x167daeaa53fb3f2b5719b19ad7397c0adb6de348` | ⚠️ Unaudited |
| IndexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a676ff024215942706071c84e086cd0af361270` | ⚠️ Unaudited |
| IndexRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cade1b94f263d0e0ad6e68c4f19532a55f61153` | ⚠️ Unaudited |
| ManagedIndex | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381753 | `0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0` | ⚠️ Unaudited |
| ManagedIndexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d825ce7f220c6cc03fe156f28be6318e6546ca8` | ⚠️ Unaudited |
| ManagedIndexReweightingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f124cd28e775ae1fde2885c8fa6b2b8772e2e6b` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5463fb623fe9806b78d8ebc41f4671200295a9d0` | ⚠️ Unaudited |
| OrdererAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22486d98d59d810b89f2abd7bd2ca521b4be8c6d` | ⚠️ Unaudited |
| OrderHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24ddfc46d4cbbb269bc4c2baf81cf5649cc31221` | ⚠️ Unaudited |
| OrderingExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9b38d900445685cb7232259c95a96150fdd5585` | ⚠️ Unaudited |
| PhuturePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05ea07036badcdef987f6b6a652f492a30c0a4ec` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4d695387e7cfc3dfd388f1cf8bd6eba7e4e3027` | ⚠️ Unaudited |
| Staking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-381754 | `0x5b0d74c78f2588b3c5c49857edb856cc731dc557` | ⚠️ Unaudited |
| StakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc` | ⚠️ Unaudited |
| StakingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b8c3c4d13142d7457dc80c92db4c62f3543751c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0eb749a42ca15d6ee8ad30e789586c09c2c52388`; avalanche `0xe6224b21361e6f5ab503a930e6573caae5ff9f08` | ⚠️ Unaudited |
| Vesting | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381760 | `0xefac81f709d314604a7daee9ca234da978c2be20` | ⚠️ Unaudited |
| vToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fee340b3754e0d1911d001ce8973fa91fefaabf` | ⚠️ Unaudited |
| vTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x986cefa4e8ba3ffec6ce3ef2449133072eb120f8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06b9592d429354c5930adf6c46e850d3ba7f7216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a00a74f28d1bc24ddf73794fcd594cbbf291641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f5c321ba2543c3fbb8cf150babe1fdd37a719d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13b613b426c385a25412823420964a908b251f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1467826e9dadb57db1fb9f1ffeadf01debe1310d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17ce2a490cb260b48891ade019a86f4b4a5520d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1988aaddae2c42a05f31a516b4462253b063cd2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19fc17f9bf2177c1491645fce8e56479f8fea3d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a5bdc587e84e215e61b87e433c180611e71f4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e50aec53c29ab12a8696fd711e79116357224d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2042f4057c2f95a18dac242a5afdb075c22791fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23904c60c3fe69d70b7dcc629454281c93f8d044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x36e0e8d6246e34812f5f56cafe7fc10054e0f6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3db497a9783ebbeda6950d4f1911b3a27d79c071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41720f31229ad0ebc3b0c347380277738b7ffd9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41f2c5a2e488e5eefaa867a0987a3d2d3ebfea01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bf0c9f164e8b9771220e777199be99e1af23d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50c496322fdded94ad434589142a8286e7f29e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5377caf64cf02c1320c66030fbe3773431377dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5424f5896d80a4f333b35980d15856a34e43e32c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58c4b219bd39d9658efefbab2b90720aeb0740f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60d0a833ceeee90b12cffc8ccb235baae4858096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61ec16bb9fa514cfe02766b27dbdbecba9254092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62b38293896e040e36fe5345f9d30dbfd75c04b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64e627240547c388a73a58e476db87674844bea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650a85049d2284a90c28a2c0e48506aebd1fcd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68bc236f957be75441d7c8ce9554623785affbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69e848b2f41019340cec3e6696d5c937e74da96b` | ❓ Unverified |
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | avalanche | unit-381756 | `0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x708e887ab6475466379f6d7b89937add1d858b6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-381757 | `0x7ccda6e26dced1ba275c67cd20235790ed615a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d36bd652e2b3bea3359200da263fac140afd168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x814ebf333bdaf1d2d364c22a1e2400a812f1f850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x883594f6cd822dc01228f4581b4d1edf1b8bb723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a34528c3879fbdbf2fa6273c5fc7a6854311ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d7e2c095abe358fd3a0ae840eb5531401fcb579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97275ba23c067c663fe9e574f19080af28af8ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cbdcb9b7acc1ff2e47c3a6ace428d16527f12d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e1ac58559307a7ce70104810b7d6e43e74bfa1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2e7ab89a2c59818e1ecd925e718a9d63889a131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3d17bd9669dc431d75982cf0834f68be9180ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa654211ae2fac7e029df45fcdc0acfa77e174134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab90ed00f49028b2d00ac6b9a62316c1bcd4719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac59c21adfddb1e56a959dd60a08c07aaed2f3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad25c722994cdabfe40f34548dfa1b0ee14e1262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad36f6b111bec7f9cbb18688c48fd9bb7a49a86b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-381758 | `0xae0f6d1aa8704ba051e040aac2b156b5cd3adbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae7bd6628163897c8d2b6c7e55b236a060d1bc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb746d18f93b9264ba08d6a38e934329c984e75ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb79a1ff59b58c7be91ac122c2b1a7ac704a75c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9ad5f3f447f2c7902924a575a0441b62ae318e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc34cbcbf8605af069d724fb015aff1c6b83909c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5024a74cf5668ea627e7b350c096490907143c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc54c0c19d762cb4962290bcb1c47d98a464bfad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5f368e6d0192764547c4209a7e622fc05c82fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc73aedd4853c6c7dda8a94ca78c5a9d4daef8ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc42c3fdd8c0400236c7cfa29d3687adb6b1d780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc4af152766668a8a3d6c49e61268e7f5d3515aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd071aa359ed1b7776a12c8329f2c337abed157d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2bfb8798f9f9768088a86369baad96107641742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd40e60ea9487fa1b625321467edcc1d9b422b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6dd95610fc3a3579a2c32fe06158d8bfb8f4ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda88d0fe9edfd38ceffb203c749afc7d4ffb1d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0ea31ef1f3b21e7f40c345258358edbfb30603b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3418a4d0c4aba68cac317bf6f5d9062fe79c871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6befa51550148d720cea18b3962f355c733bc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8f9e15b1ff957b18b047c2b4d42f1d8285140b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf233963521b8e0f581f0e75bba237598c12bc14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2501d3da6edfc398270bcfde340f78e12a040f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa5951dff3c7e22ec9350c05c203771f24b9ab76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd41449a8ce634b6aa5c006d0204f88ea83ef263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd997ba534d400037ee48a73edb3573851f1f084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe28e11136ab2af4ce65f0e7b936b51f182336c9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 79
- Live contracts: 0
- Unknown liveness contracts: 79
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=79

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x06b9592d429354c5930adf6c46e850d3ba7f7216` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x0a00a74f28d1bc24ddf73794fcd594cbbf291641` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x0f5c321ba2543c3fbb8cf150babe1fdd37a719d0` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x13b613b426c385a25412823420964a908b251f60` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x1467826e9dadb57db1fb9f1ffeadf01debe1310d` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x17ce2a490cb260b48891ade019a86f4b4a5520d4` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x1988aaddae2c42a05f31a516b4462253b063cd2b` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x19fc17f9bf2177c1491645fce8e56479f8fea3d5` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x1a5bdc587e84e215e61b87e433c180611e71f4e6` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x1e50aec53c29ab12a8696fd711e79116357224d8` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x2042f4057c2f95a18dac242a5afdb075c22791fe` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x23904c60c3fe69d70b7dcc629454281c93f8d044` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x2ac45f92eabaa8dcb2ea1807a659a1393c3947d0` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x36e0e8d6246e34812f5f56cafe7fc10054e0f6be` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x3db497a9783ebbeda6950d4f1911b3a27d79c071` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x3ec03d688eebf5d3aa7eae1ea23379bd4cb7d6b6` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x41720f31229ad0ebc3b0c347380277738b7ffd9a` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x41f2c5a2e488e5eefaa867a0987a3d2d3ebfea01` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x4bf0c9f164e8b9771220e777199be99e1af23d48` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x50c496322fdded94ad434589142a8286e7f29e11` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x5377caf64cf02c1320c66030fbe3773431377dac` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x5424f5896d80a4f333b35980d15856a34e43e32c` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x580ddd6fa80f75e40ff6975e0a9d2688b03fa0e9` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x58c4b219bd39d9658efefbab2b90720aeb0740f1` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x60d0a833ceeee90b12cffc8ccb235baae4858096` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x61ec16bb9fa514cfe02766b27dbdbecba9254092` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x62b38293896e040e36fe5345f9d30dbfd75c04b9` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x64e627240547c388a73a58e476db87674844bea8` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x650a85049d2284a90c28a2c0e48506aebd1fcd41` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x68bc236f957be75441d7c8ce9554623785affbd0` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x69e848b2f41019340cec3e6696d5c937e74da96b` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x708e887ab6475466379f6d7b89937add1d858b6e` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x7d36bd652e2b3bea3359200da263fac140afd168` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x7ed413138cf77c0d4aa272bbd1931d9c0cd91a24` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x814ebf333bdaf1d2d364c22a1e2400a812f1f850` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x836bc4afc16d8923d3bf84a908d6a53c61b4f035` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x8724869ba7986fd9ea9e39bd85e9393049b90a1d` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x883594f6cd822dc01228f4581b4d1edf1b8bb723` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x8a34528c3879fbdbf2fa6273c5fc7a6854311ced` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x8d7e2c095abe358fd3a0ae840eb5531401fcb579` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x97275ba23c067c663fe9e574f19080af28af8ebc` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0x9cbdcb9b7acc1ff2e47c3a6ace428d16527f12d3` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0x9e1ac58559307a7ce70104810b7d6e43e74bfa1e` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xa2e7ab89a2c59818e1ecd925e718a9d63889a131` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xa3d17bd9669dc431d75982cf0834f68be9180ee9` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xa654211ae2fac7e029df45fcdc0acfa77e174134` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xab90ed00f49028b2d00ac6b9a62316c1bcd4719f` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xac59c21adfddb1e56a959dd60a08c07aaed2f3ba` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xad25c722994cdabfe40f34548dfa1b0ee14e1262` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xad36f6b111bec7f9cbb18688c48fd9bb7a49a86b` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xadc391e6a9c43adbc6bcf2210ecf4351714b219a` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xae7bd6628163897c8d2b6c7e55b236a060d1bc93` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xb746d18f93b9264ba08d6a38e934329c984e75ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xb79a1ff59b58c7be91ac122c2b1a7ac704a75c67` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xb9ad5f3f447f2c7902924a575a0441b62ae318e1` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xc34cbcbf8605af069d724fb015aff1c6b83909c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xc5024a74cf5668ea627e7b350c096490907143c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xc54c0c19d762cb4962290bcb1c47d98a464bfad9` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xc5f368e6d0192764547c4209a7e622fc05c82fcb` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xc73aedd4853c6c7dda8a94ca78c5a9d4daef8ee6` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xc84c8b7acb8a41b0ef8ba02ca999f6fd87276c20` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xcc42c3fdd8c0400236c7cfa29d3687adb6b1d780` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xcc4af152766668a8a3d6c49e61268e7f5d3515aa` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xd071aa359ed1b7776a12c8329f2c337abed157d7` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xd2bfb8798f9f9768088a86369baad96107641742` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xd40e60ea9487fa1b625321467edcc1d9b422b577` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xd6dd95610fc3a3579a2c32fe06158d8bfb8f4ee9` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xda88d0fe9edfd38ceffb203c749afc7d4ffb1d61` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xe0ea31ef1f3b21e7f40c345258358edbfb30603b` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xe3418a4d0c4aba68cac317bf6f5d9062fe79c871` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xe6224b21361e6f5ab503a930e6573caae5ff9f08` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xe6befa51550148d720cea18b3962f355c733bc55` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xe8f9e15b1ff957b18b047c2b4d42f1d8285140b7` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xf233963521b8e0f581f0e75bba237598c12bc14f` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xf2501d3da6edfc398270bcfde340f78e12a040f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xfa5951dff3c7e22ec9350c05c203771f24b9ab76` | non_address_book | unknown | unknown | unverified | n/a | `0x6f5ceaaddad354cb26472b5e8fa7ffad640b9789` |
| unverified unclassified | UnnamedContract<br>`0xfd41449a8ce634b6aa5c006d0204f88ea83ef263` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xfd997ba534d400037ee48a73edb3573851f1f084` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |
| unverified unclassified | UnnamedContract<br>`0xfe28e11136ab2af4ce65f0e7b936b51f182336c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb1a9d5382925ab1a8193195e132956184a64f614` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Manual Review](https://omniscia.io/reports/colony-lab-staking-v2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [DL audit link](https://paladinsec.co/projects/colony) | Paladin | Audit | 2024-02 | stale | Direct | address | matched | 1 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16893] Manual Review — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope' are extracted. No audit date found in the provided text.
- [16894] DL audit link — matched: Extracted from two audit report sections: first for Colony (Token & Staking) completed 26 Feb 2024, second for Colony completed 19 Feb 2024. Used the latest date. Contracts listed in 'Contracts Audited' tables.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Manual Review | AntToken | unmatched — not counted | — | listed in scope table | no |
| Manual Review | AuthorizedStaking | unmatched — not counted | — | listed in scope table | no |
| Manual Review | PrivilegedGroupUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Manual Review | RewardingStaking | unmatched — not counted | — | listed in scope table | no |
| Manual Review | Staking | unmatched — not counted | — | listed in scope table | no |
| Manual Review | StakingV2 | unmatched — not counted | — | listed in scope table | no |
| Manual Review | StakingDeposit | unmatched — not counted | — | listed in scope table | no |
| Manual Review | TimedValuesStorage | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AntTokenV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | StakingV3 | own contract | 0x62685d… (selected) `0x62685d3eaace96d6145d35f3b7540d35f482de5b` — deployed 2024-03-25 15:34:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | KycManager | unmatched — not counted | — | listed in scope table | no |
| DL audit link | FractalPrivilegedGroup | unmatched — not counted | — | listed in scope table | no |
| DL audit link | PrivilegedGroupUpgradeable | unmatched — not counted | — | listed in scope table | no |
| DL audit link | EarlyStageManager | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ProjectNest | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ProjectNestFactory | unmatched — not counted | — | listed in scope table | no |
| DL audit link | StablecoinDistributor | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DealSigner | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AntTierProgram | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ColonyPoolExchangeStrategy | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ColonyRangedRewarder | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ColonyRouter | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ExchangeBoostRegistry | unmatched — not counted | — | listed in scope table | no |
| DL audit link | MasterchefColony | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AbstractVestingV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DiscreteVestingV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DiscreteVestingV2Factory | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LinearVestingV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LinearVestingV2Factory | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ceToken | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ceTokenDistributor | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ceTokenFactory | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6` | ColonyGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0` | ManagedIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xefac81f709d314604a7daee9ca234da978c2be20` | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: address=1

Zero-match audit list:

- [16893] Manual Review

Fork inheritance lineage and inherited audits are included when available.
