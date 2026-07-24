# Agentic Audit Brief: PieDAO

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: PieDAO (`piedao`)
- Website: [https://www.piedao.org/](https://www.piedao.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 51 unique implementations (52 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $586,125.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for PieDAO in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x220f25c2105a65425913fe0cf38e7699e3992b97`, chain 1)
- UnnamedContract (`0x8314337d2b13e1a61eadf0fd1686b2134d43762f`, chain 1)
- UnnamedContract (`0xb3c2b0056627cc1dc148d8fc29f5abdf4dd837bc`, chain 1)
- UnnamedContract (`0xb9a4bca06f14a982fcd14907d31dfacadc8ff88e`, chain 1)
- UnnamedContract (`0xd7db1ae8193a12d0ee5e1cf53d7bcf0f20d09757`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 46 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 5 of 51 unique; 46 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 51
- Raw deployments: 52
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasketMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bb983670349c0a95e271121f2c236036fad146` | ⚠️ Unaudited |
| ERC20NonTransferableRewardsOwned | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb1afbb9de791e59222c385d87653e67728a321` | ⚠️ Unaudited |
| LendingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52fbda94cff098c1c89725cedb40e65276f54a66` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbab795479bff02c6ef52a10a54a95a42a1afa456`; ethereum `0xbdc96891ed008183838842a93cd713d5ef2635e0` | ⚠️ Unaudited |
| MiniMeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad32a8e6220741182940c5abf610bde99e737b2d` | ⚠️ Unaudited |
| RewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcf1abc45a264d1172af928ff04d3413bbc11a9f` | ⚠️ Unaudited |
| SharesTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046b9c3a8a02a802fba7e61054b79e28e0928f01` | ⚠️ Unaudited |
| wLSPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x037efbc87ba34816ebe3326cf189910f82eb4128` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161601f4357cb2016e193d359d071970f0135952` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251248 | `0x220f25c2105a65425913fe0cf38e7699e3992b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42c8b5f7f9231ee8d14f5223e797517d9f69575b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x474e7aa338d64150586fadd4ca3f42ebf375d566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59706d38f1452f387563f06b632af7302456fe66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d50cd1cc3378860712999849098d38702ff5d83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef19aae1757c802c9c36b260a75db1ec292f7b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63cbd1858bd79de1a06c3c26462db360b834912d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64964cb69f40a1b56af76e32eb5bf2e2e52a747c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bd0d8c8ad8d3f1f97810d5cc57e9296db73dc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706f00ea85a71eb5d7c2ce2ad61dbbe62b616435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7940c0225c836742e8953f69e0af0c4b371a35bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251249 | `0x8314337d2b13e1a61eadf0fd1686b2134d43762f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efd60f40e35b3ca7294cc268a35d3e35101be42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa230ce9741d86955cb792e2cae49dc058fdbe8ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa59b14d6cdd4dfd8577a644c8098d02976b7a3d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251250 | `0xb3c2b0056627cc1dc148d8fc29f5abdf4dd837bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e59ce1359d80e4834228edd6a3f560e7534438` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251251 | `0xb9a4bca06f14a982fcd14907d31dfacadc8ff88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67c620074440c15683ace78c1efa38a4569969b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd848b46723fb31ab621143290e0ba2568b3a95d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd0b4c80922593cb56245636322f6d7545913b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f5d824232636db9d97748f61069a336295ef2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6136f2e90eeea7280ae5a0a8e6f48fb222af945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9442bbcecdae175bef23be781a565f63bd48e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8de8047fd66979490629c34288f8a78e97b00b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfca5ac595fa783530e8f566fc2d99d8896cb29fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcbb61bcd4909bf4af708f15aaaa905e0978cafc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3f1b033362b28660944f3ba7758acaa843ac00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14bd0d4aca50a64741fdf30ec579814786573a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fb8d436fdf5fbe28794a39573fa3d9c6d557c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20a7e98ffc7c14c4858de47c092043c9cf261e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44776a2c6368f85044123c79e49f03e914bb9a44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60a005cf49d9cb3845c10ddd8f9f39ff711b6ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x692b3178a285167dff5ec64d7b9e6a12a91c2d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69ef77d91f2ead2beea1063a14e34bf7f064d371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70664fdc78c8e9e674efefc574c12a7754374c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7361ea389324abf54518f817d3d4216df6324529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x972b8843813e0112dd79a574cb4d3c493742257c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-251252 | `0xd7db1ae8193a12d0ee5e1cf53d7bcf0f20d09757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6ff48bfe713f453b7f93b358e3507d8bb9a0cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9a72236180c7bee93914d3aed9054fd2bcb7d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedbecc9535ad9126a12c8edb39b0223bf666e53e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 39
- Live contracts: 0
- Unknown liveness contracts: 39
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=39

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x161601f4357cb2016e193d359d071970f0135952` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x42c8b5f7f9231ee8d14f5223e797517d9f69575b` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x474e7aa338d64150586fadd4ca3f42ebf375d566` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x59706d38f1452f387563f06b632af7302456fe66` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x5d50cd1cc3378860712999849098d38702ff5d83` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0x5ef19aae1757c802c9c36b260a75db1ec292f7b2` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x63cbd1858bd79de1a06c3c26462db360b834912d` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x64964cb69f40a1b56af76e32eb5bf2e2e52a747c` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x6bd0d8c8ad8d3f1f97810d5cc57e9296db73dc45` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0x706f00ea85a71eb5d7c2ce2ad61dbbe62b616435` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x7940c0225c836742e8953f69e0af0c4b371a35bf` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0x9efd60f40e35b3ca7294cc268a35d3e35101be42` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xa230ce9741d86955cb792e2cae49dc058fdbe8ff` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xa59b14d6cdd4dfd8577a644c8098d02976b7a3d1` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0xb8e59ce1359d80e4834228edd6a3f560e7534438` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xbdc96891ed008183838842a93cd713d5ef2635e0` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0xc67c620074440c15683ace78c1efa38a4569969b` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0xd848b46723fb31ab621143290e0ba2568b3a95d9` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xdd0b4c80922593cb56245636322f6d7545913b44` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xe5f5d824232636db9d97748f61069a336295ef2c` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xe6136f2e90eeea7280ae5a0a8e6f48fb222af945` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0xe9442bbcecdae175bef23be781a565f63bd48e55` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xeb8de8047fd66979490629c34288f8a78e97b00b` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0xfca5ac595fa783530e8f566fc2d99d8896cb29fd` | non_address_book | unknown | unknown | unverified | n/a | `0x2588881331e9455bf210770747d9d821273bae80` |
| unverified unclassified | UnnamedContract<br>`0xfcbb61bcd4909bf4af708f15aaaa905e0978cafc` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0xfd3f1b033362b28660944f3ba7758acaa843ac00` | non_address_book | unknown | unknown | unverified | n/a | `0x3ffd017a3608498b8d0e8a365429f2066e62a886` |
| unverified unclassified | UnnamedContract<br>`0x14bd0d4aca50a64741fdf30ec579814786573a10` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x1fb8d436fdf5fbe28794a39573fa3d9c6d557c82` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x20a7e98ffc7c14c4858de47c092043c9cf261e84` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x44776a2c6368f85044123c79e49f03e914bb9a44` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x60a005cf49d9cb3845c10ddd8f9f39ff711b6ed0` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x692b3178a285167dff5ec64d7b9e6a12a91c2d84` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x69ef77d91f2ead2beea1063a14e34bf7f064d371` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x70664fdc78c8e9e674efefc574c12a7754374c52` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x7361ea389324abf54518f817d3d4216df6324529` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0x972b8843813e0112dd79a574cb4d3c493742257c` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0xe6ff48bfe713f453b7f93b358e3507d8bb9a0cdf` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0xe9a72236180c7bee93914d3aed9054fd2bcb7d29` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |
| unverified unclassified | UnnamedContract<br>`0xedbecc9535ad9126a12c8edb39b0223bf666e53e` | non_address_book | unknown | unknown | unverified | n/a | `0xad5c7e8c67d4cb0e8ec835f2346d0abeff34a1b4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
