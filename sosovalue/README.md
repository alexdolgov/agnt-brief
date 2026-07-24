# Agentic Audit Brief: SoSoValue

## Export Authority

- Production state: **published scope**
- Raw selected rows: 18 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: SoSoValue (`sosovalue`)
- Website: [https://sosovalue.com/](https://sosovalue.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 33 unique implementations (53 raw deployments)
- Coverage basis: 7/7 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $82,730,032.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SoSoValue. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across base, ethereum. Structural roles: 11 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (11)
- Contract kinds: contract (10), abstract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AssetFeeManager (`0x996c93827ab4c55b1044add903d2bdb0dcd546ba`, chain 8453)
- AssetIssuer (`0xdc74d8c5d9a900fdf8a6d03ad419b236c9a1ad1d`, chain 8453)
- AssetLocking (`0xb7729ab6a36b416aad3902c4ff5404bb73beafc8`, chain 8453)
- Swap (`0x640cb7201810bc920835a598248c4fe4898bb5e0`, chain 8453)
- USSI (`0xa62307106f891135154b0d63eaef8bd40f2ca91b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/7 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 7 of 33 unique; 26 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/28
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 33
- Raw deployments: 53
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 7 | 25.0% | 2024-12 |
| unknown | Tier 2 | 7 | 25.0% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetFactory | unknown | project_anchor | own_supporting | 1 | base | unit-256304 | 2 deployments: base `0xb04eb6b64137d1673d46731c8f84718092c50b0d`; base `0xceb07a43477158d5f6d9a2d9bbeb58d40a1e19b7` | ✅ Audited |
| AssetFeeManager | unknown | project_anchor | own_supporting | 0 | base | unit-256299 | `0x996c93827ab4c55b1044add903d2bdb0dcd546ba` | ✅ Audited |
| AssetIssuer | unknown | project_anchor | own_supporting | 0 | base | unit-256300 | `0xdc74d8c5d9a900fdf8a6d03ad419b236c9a1ad1d` | ✅ Audited |
| AssetLocking | unknown | project_anchor | own_supporting | 1 | base | unit-256303 | 2 deployments: base `0x935a4b1f6f3e891a226b2522ac22d45ce5839383`; base `0xb7729ab6a36b416aad3902c4ff5404bb73beafc8` | ✅ Audited |
| StakeFactory | unknown | project_anchor | own_supporting | 1 | base | unit-256301 | 2 deployments: base `0x3f5c8f6cee7bd4b86a46f911aa290c1bac488a6c`; base `0x585834242bb31427b1dc7486dd4bde7c724e35c1` | ✅ Audited |
| Swap | unknown | project_anchor | own_supporting | 0 | base | unit-256298 | `0x640cb7201810bc920835a598248c4fe4898bb5e0` | ✅ Audited |
| USSI | unknown | project_anchor | own_supporting | 1 | base | unit-256302 | 2 deployments: base `0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18`; base `0xa62307106f891135154b0d63eaef8bd40f2ca91b` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc568b41968b3e707b306d298e5e7be50a311c176` | ⚠️ Unaudited |
| AssetFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e469365030f068ecb1176a0d5600ba470cf07a9`; base `0x7693d73ac9fcf57be7791092dafcdcc7324b7c02` | ⚠️ Unaudited |
| AssetFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd616b94f50ed117236aeaed72ebe73f474b4a1d2` | ⚠️ Unaudited |
| AssetIssuer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0306aceb4c20ff33480d90038f8b375cc6a6b66e`; base `0xe66c68010a9dc4dac7a8ab2c524e4bae37a6367e` | ⚠️ Unaudited |
| AssetIssuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff574f9cdf7340a25269ff606cb215855e7e5600` | ⚠️ Unaudited |
| AssetRebalancer | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x84663e30973d552ac357fd04f3ac6ebbd495ab15` | ⚠️ Unaudited |
| AssetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63a152dbfc479d82e04794ebc7fddb62505c443a` | ⚠️ Unaudited |
| ChristmasAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x3f82ea4e3dad785d518f02c65eac2dd5cc58ee6e`; base `0x5a4baf95c03f197bcd071a70ee6e8adb176d2823`; base `0xac1998e293de971b234af7849ffbe96791e01e9a`; base `0xd3f0a16afbce156203a40a3c96aff1e0e176fa11`; base `0xf8a4530b2dbff2bffc39b7511249228d80e841df` | ⚠️ Unaudited |
| FourSevenAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x0ec7b72a546851e8a9a66fbfda761cf7da6296d1`; base `0x6ef3c884ac0ff45a8e2275f52787471d46e82f1c`; base `0xb8fcda0e114d70d4457f19d063dd59400c21acbb`; base `0xe3f3829e7a831d595d4a9cac56333efef35fa592` | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x028492d62d09ae57f8b017be746cb02e6380d5ea`; base `0x4190e02240f16be4cc03c7151deedd23c08a3d4e` | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45fb9e352dacbcd95a7cc29c45b52e8c7c66599f`; base `0xab4ac877170bcfc671b73375e6fcd2f4915b6817` | ⚠️ Unaudited |
| FourSevenAirdropV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4e9246fee84582dc41213af4842cf13fcf580156`; base `0x5217ed58973c4d570d0b1d4dd2e94928fb7cf233` | ⚠️ Unaudited |
| SoDexTokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcc7322a2f9f82251da51584b1a89915dbc02185b` | ⚠️ Unaudited |
| SoSoValueEpoch1Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfe59c8e842c4564558c558f8428a65609f133c5` | ⚠️ Unaudited |
| SoSoValueEpoch2Airdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x40fb04bbf5124ea4b25fc18a839524a725cabf9c` | ⚠️ Unaudited |
| StakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x36142f5596f41f292549b58052fcfd99489cb675`; base `0x815583cd3c09e2b666bb87256ae533d6af8fa0b4` | ⚠️ Unaudited |
| StakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x49aeb994425177c0a7c5d22a529f949132d7a95b`; base `0x7f811e881693af12d84976d59ff3fb0eaf135524`; base `0xce89ac7fd59808106b4e346175bcb8d8b273db90` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x008055f9450be15d1314f64e6ef04b7a802fcd5f` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xae9f646e42dec86abe64b88235894bf68240a43b`; base `0xf909bfa750721501b4f8433588fae5ce303db08b` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ⚠️ Unaudited |
| USSI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1396e2ab215a88201cbcc75396b9bcaa0315454f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x164ffdae2fe3891714bc2968f1875ca4fa1079d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x242626e1ece44601a69d9bc3f72a755eb393f4b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x9e6a46f294bb67c20f1d1e7afb0bbef614403b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9fbf0775f1740078e93e488c1dfea9a2065b5d5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0xdd3acdbdc7b358df453a6cb6bca56c92aa5743aa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 45
- Live contracts: 11
- Unknown liveness contracts: 34
- Source-verified contracts: 44
- Currently scope-matched contracts retained as-is: 7
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=7, candidate review=15, source verified unclassified=22, unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | currently scope matched | AssetFeeManager<br>`0x996c93827ab4c55b1044add903d2bdb0dcd546ba` | project_anchor | unknown | live | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | currently scope matched | AssetIssuer<br>`0xdc74d8c5d9a900fdf8a6d03ad419b236c9a1ad1d` | project_anchor | unknown | live | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | currently scope matched | ERC1967Proxy<br>`0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | currently scope matched | ERC1967Proxy<br>`0x585834242bb31427b1dc7486dd4bde7c724e35c1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | currently scope matched | ERC1967Proxy<br>`0x935a4b1f6f3e891a226b2522ac22d45ce5839383` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | currently scope matched | ERC1967Proxy<br>`0xb04eb6b64137d1673d46731c8f84718092c50b0d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | currently scope matched | Swap<br>`0x640cb7201810bc920835a598248c4fe4898bb5e0` | project_anchor | unknown | live | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | AssetFactory<br>`0xc568b41968b3e707b306d298e5e7be50a311c176` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | AssetFactory<br>`0xceb07a43477158d5f6d9a2d9bbeb58d40a1e19b7` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | AssetToken<br>`0x63a152dbfc479d82e04794ebc7fddb62505c443a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0x0306aceb4c20ff33480d90038f8b375cc6a6b66e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0x2e469365030f068ecb1176a0d5600ba470cf07a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0x4190e02240f16be4cc03c7151deedd23c08a3d4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0x45fb9e352dacbcd95a7cc29c45b52e8c7c66599f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0x4e9246fee84582dc41213af4842cf13fcf580156` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0x7f811e881693af12d84976d59ff3fb0eaf135524` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0xce89ac7fd59808106b4e346175bcb8d8b273db90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | ERC1967Proxy<br>`0xf909bfa750721501b4f8433588fae5ce303db08b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | StakeFactory<br>`0x3f5c8f6cee7bd4b86a46f911aa290c1bac488a6c` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | StakeToken<br>`0x36142f5596f41f292549b58052fcfd99489cb675` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | StakeToken<br>`0x49aeb994425177c0a7c5d22a529f949132d7a95b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | candidate review | StakeToken<br>`0x815583cd3c09e2b666bb87256ae533d6af8fa0b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | AssetFeeManager<br>`0x7693d73ac9fcf57be7791092dafcdcc7324b7c02` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | AssetFeeManager<br>`0xd616b94f50ed117236aeaed72ebe73f474b4a1d2` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | AssetIssuer<br>`0xe66c68010a9dc4dac7a8ab2c524e4bae37a6367e` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | AssetIssuer<br>`0xff574f9cdf7340a25269ff606cb215855e7e5600` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | AssetLocking<br>`0xb7729ab6a36b416aad3902c4ff5404bb73beafc8` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | ChristmasAirdrop<br>`0x3f82ea4e3dad785d518f02c65eac2dd5cc58ee6e` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | ChristmasAirdrop<br>`0x5a4baf95c03f197bcd071a70ee6e8adb176d2823` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | ChristmasAirdrop<br>`0xac1998e293de971b234af7849ffbe96791e01e9a` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | ChristmasAirdrop<br>`0xd3f0a16afbce156203a40a3c96aff1e0e176fa11` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | ChristmasAirdrop<br>`0xf8a4530b2dbff2bffc39b7511249228d80e841df` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | FourSevenAirdrop<br>`0x0ec7b72a546851e8a9a66fbfda761cf7da6296d1` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | FourSevenAirdrop<br>`0x6ef3c884ac0ff45a8e2275f52787471d46e82f1c` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | FourSevenAirdrop<br>`0xb8fcda0e114d70d4457f19d063dd59400c21acbb` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | FourSevenAirdrop<br>`0xe3f3829e7a831d595d4a9cac56333efef35fa592` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | FourSevenAirdropV2<br>`0x028492d62d09ae57f8b017be746cb02e6380d5ea` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | FourSevenAirdropV2<br>`0x5217ed58973c4d570d0b1d4dd2e94928fb7cf233` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | FourSevenAirdropV2<br>`0xab4ac877170bcfc671b73375e6fcd2f4915b6817` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | SoSoValueEpoch1Airdrop<br>`0xbfe59c8e842c4564558c558f8428a65609f133c5` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | Swap<br>`0x008055f9450be15d1314f64e6ef04b7a802fcd5f` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | Swap<br>`0xae9f646e42dec86abe64b88235894bf68240a43b` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | USSI<br>`0x1396e2ab215a88201cbcc75396b9bcaa0315454f` | non_address_book | unknown | unknown | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | source verified unclassified | USSI<br>`0xa62307106f891135154b0d63eaef8bd40f2ca91b` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |
| base | unverified unclassified | UnnamedContract<br>`0x9fbf0775f1740078e93e488c1dfea9a2065b5d5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbaa8679ce1e1dfd8e868fe76af5f428961c75469` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec_sosovaluelabs_ssi_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_sosovaluelabs_ssi_v1.0-signed.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | matched | 7 | 4 | 0 | 4 | n/a |
| [SSI Protocol - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | n/a | matched | 4 | 1 | 0 | 3 | n/a |
| [SSI Protocol Phase2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SSI%20Protocol%20Phase2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | n/a | matched | 7 | 4 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13865] blocksec_sosovaluelabs_ssi_v1.0-signed.pdf — matched: No reason recorded
- [13866] SSI Protocol - SlowMist Audit Report.pdf — matched: No reason recorded
- [13867] SSI Protocol Phase2 - SlowMist Audit Report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetController | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb04eb6b64137d1673d46731c8f84718092c50b0d` — deployed 2024-12-18 13:21:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetFeeManager | own contract | AssetFeeManager (selected) `0x996c93827ab4c55b1044add903d2bdb0dcd546ba` — deployed 2024-12-18 13:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetIssuer | own contract | AssetIssuer (selected) `0xdc74d8c5d9a900fdf8a6d03ad419b236c9a1ad1d` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetLocking | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x935a4b1f6f3e891a226b2522ac22d45ce5839383` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetRebalancer | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | AssetToken | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | StakeFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x585834242bb31427b1dc7486dd4bde7c724e35c1` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | StakeToken | unmatched — not counted | — | — | no |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | Swap | own contract | Swap (selected) `0x640cb7201810bc920835a598248c4fe4898bb5e0` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_sosovaluelabs_ssi_v1.0-signed.pdf | USSI | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetController | unmatched — not counted | — | — | no |
| SSI Protocol - SlowMist Audit Report.pdf | AssetFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb04eb6b64137d1673d46731c8f84718092c50b0d` — deployed 2024-12-18 13:21:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetFeeManager | own contract | AssetFeeManager (selected) `0x996c93827ab4c55b1044add903d2bdb0dcd546ba` — deployed 2024-12-18 13:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetIssuer | own contract | AssetIssuer (selected) `0xdc74d8c5d9a900fdf8a6d03ad419b236c9a1ad1d` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol - SlowMist Audit Report.pdf | AssetRebalancer | unmatched — not counted | — | — | no |
| SSI Protocol - SlowMist Audit Report.pdf | AssetToken | unmatched — not counted | — | — | no |
| SSI Protocol - SlowMist Audit Report.pdf | Swap | own contract | Swap (selected) `0x640cb7201810bc920835a598248c4fe4898bb5e0` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xb04eb6b64137d1673d46731c8f84718092c50b0d` — deployed 2024-12-18 13:21:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetFeeManager | own contract | AssetFeeManager (selected) `0x996c93827ab4c55b1044add903d2bdb0dcd546ba` — deployed 2024-12-18 13:21:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetIssuer | own contract | AssetIssuer (selected) `0xdc74d8c5d9a900fdf8a6d03ad419b236c9a1ad1d` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetLocking | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x935a4b1f6f3e891a226b2522ac22d45ce5839383` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | AssetRebalancer | unmatched — not counted | — | — | no |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | StakeFactory | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x585834242bb31427b1dc7486dd4bde7c724e35c1` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | StakeToken | unmatched — not counted | — | — | no |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | Swap | own contract | Swap (selected) `0x640cb7201810bc920835a598248c4fe4898bb5e0` — deployed 2024-12-18 13:21:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SSI Protocol Phase2 - SlowMist Audit Report.pdf | USSI | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3a46ed8fceb6ef1ada2e4600a522ae7e24d2ed18` — deployed 2024-12-18 13:21:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (9 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=18

Fork inheritance lineage and inherited audits are included when available.
