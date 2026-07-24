# Agentic Audit Brief: YO Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 9 audit(s)
- Eligible audit results: 18 (9 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: YO Protocol (`yo-protocol`)
- Website: [https://app.yo.xyz](https://app.yo.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, hyperliquid, monad, x-layer
- Contract surface: 47 unique implementations (67 raw deployments)
- Coverage basis: 3/15 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $34,621,789.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YO Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 24 contract row(s) across arbitrum, base, ethereum, hyperliquid, monad, x-layer. Structural roles: 16 core, 5 unclassified, 3 supporting. 13 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 24
- Structural roles: core (16), unclassified (5), supporting (3)
- Contract kinds: contract (19), abstract (5)
- Detected standards: erc1967proxy (8), ownable (3), erc20 (2), accesscontrol (1), erc165 (1), erc4626 (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (15), openzeppelin-upgradeable (2), solmate (2), foundry (1)
- Upgradeable-pattern rows: 13

## Fork Analysis

0 of 32 contracts are derived from known codebases. 32 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7bad596c26e175384bd9985cb97c6c3f7e158b6f`, chain 1)
- UnnamedContract (`0x93a3a3325de6ab429523d144b41a032e7d7456ab`, chain 1)
- UnnamedContract (`0x9524e25079b1b04d904865704783a5aa0202d44d`, chain 1)
- UnnamedContract (`0xa425d3c9a1c048be1183d8e396406bda813b4826`, chain 1)
- UnnamedContract (`0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021`, chain 1)
- UnnamedContract (`0xcb9737bdd076251744704cc37ce961e8417fdd7f`, chain 1)
- UnnamedContract (`0xcff9d39441eb668c7fffa752ad1ea47930bb8a76`, chain 1)
- UnnamedContract (`0xf837334c5c48f16a8a73affb09859bb7fdb467e0`, chain 1)
- UnnamedContract (`0x2bcb71309554a5dc31932cb3d5a547cd8cc5ed26`, chain 143)
- UnnamedContract (`0x779ded0c9e1022225f8e0630b35a9b54be713736`, chain 196)
- UnnamedContract (`0x946fd049c47beff53a32588c67df6a5a16b805f0`, chain 999)
- UnnamedContract (`0x5dd8bfa6c5c68d05d25ef6143e05c11e26c4cdb7`, chain 8453)
- FiatTokenProxy (`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- FiatTokenProxy (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- FiatTokenProxy (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- FiatTokenProxy (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- SafeProxy (`0x67b6f699f1c8040414032a3c2c88a54db144fcd2`, chain 1)
- SafeProxy (`0x93e5260ac975b475af8bf818c14deee7fefd5927`, chain 1)
- TetherToken (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- TimelockController (`0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48`, chain 1)
- TransparentUpgradeableProxy (`0x586675a3a46b008d8408933cf42d8ff6c9cc61a1`, chain 1)
- TransparentUpgradeableProxy (`0x68749665ff8d2d112fa859aa293f07a622782f38`, chain 1)
- TransparentUpgradeableProxy (`0x0000000f2eb9f69274678c76222b35eec7588a65`, chain 8453)
- TransparentUpgradeableProxy (`0x3a43aec53490cb9fa922847385d82fe25d0e9de7`, chain 8453)
- TransparentUpgradeableProxy (`0x50c749ae210d3977adc824ae11f3c7fd10c871e9`, chain 8453)
- TransparentUpgradeableProxy (`0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc`, chain 8453)
- WETH9 (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 8453)
- YoOracle (`0x6e879d0ccc85085a709ebf5539224f53d0d396b0`, chain 1)
- YoRegistry (`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8`, chain 8453)
- yoUSDT (`0x0a09e980cae64d8840fd9c92f165aba4bfdf9716`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 24; live-surface rows included: 24 (22 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/15 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 27 of 47 unique; 20 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/26
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 47
- Raw deployments: 67
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 12 fresh, 6 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 13.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 7.7% | 2026-06 |
| unknown | Tier 2 | 2 | 7.7% | 2025-12 |
| Accretion | Tier 2 | 1 | 3.8% | 2026-04 |
| Aetheryc | Tier 2 | 1 | 3.8% | 2025-12 |
| Offbeat | Tier 2 | 1 | 3.8% | 2025-01 |
| Paladin | Tier 2 | 1 | 3.8% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-263629 | `0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48` | ✅ Audited |
| YoOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-263633 | `0x6e879d0ccc85085a709ebf5539224f53d0d396b0` | ✅ Audited |
| YoRegistry | unknown | project_anchor | own_supporting | 1 | base | unit-263660 | 2 deployments: base `0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8`; base `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xc5da2b9174234f34c5857295776f5ea1fe70ebca`; base `0xfe41964c2acccbe2da28b27f9034a227b6891e10` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-263662 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 2 | ethereum | unit-263655 (2 proxies) | 2 deployments: ethereum `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`; ethereum `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-263659 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-263658 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| RoadrunnerWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fd9f5f7a2c074fcacf13dcd207413b5d4e7d7da` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 2 | ethereum | unit-263654 (2 proxies) | 2 deployments: ethereum `0x67b6f699f1c8040414032a3c2c88a54db144fcd2`; ethereum `0x93e5260ac975b475af8bf818c14deee7fefd5927` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xae11f170491edf4a139e32386153936792a3d262` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 1 | ethereum | unit-263656 | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-263646 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-263643 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-263650 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| YoEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05584e30f51cf5dfd33b03ea629ef3dbf57a0efb` | ⚠️ Unaudited |
| YoGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf`; base `0xecd62a8bbd3503710765a53218c480127b3c816e`; base `0xf5ebf57bc4ece32d1036ad907db1fa0a68556cae` | ⚠️ Unaudited |
| YoGateway | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | unit-263663 | 2 deployments: base `0xc33660b771db437e15e9234cc424e750376f903e`; base `0xf1eee0957267b1a474323ff9cff7719e964969fa` | ⚠️ Unaudited |
| yoUSDT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263653 | 2 deployments: ethereum `0x0a09e980cae64d8840fd9c92f165aba4bfdf9716`; ethereum `0xb9a7da9e90d3b428083bae04b860faa6325b721e` | ⚠️ Unaudited |
| yoUSDT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb0082b74ae921691bf15c3de8effaecd14435f` | ⚠️ Unaudited |
| YoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0xa9c5f18480fa36d4a84ebbd778c8ca6f65443052`; ethereum `0xda92d2172cd402d222131cc95a66ec7bd82dc169`; base `0x32578ee59e91028216f5e9f1a5ee77d298d123f7`; base `0x957c92c28a635f9c784628baaba69ae981792358`; base `0xd6e28270d3728db0ae64a348330aced3f2ed4c44`; base `0xda92d2172cd402d222131cc95a66ec7bd82dc169` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x0000000f2eb9f69274678c76222b35eec7588a65`; ethereum `0x3a43aec53490cb9fa922847385d82fe25d0e9de7`; ethereum `0x50c749ae210d3977adc824ae11f3c7fd10c871e9`; ethereum `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-263657 | `0x586675a3a46b008d8408933cf42d8ff6c9cc61a1` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | project_anchor | own_supporting | 4 | base | unit-263661 (4 proxies) | 4 deployments: base `0x0000000f2eb9f69274678c76222b35eec7588a65`; base `0x3a43aec53490cb9fa922847385d82fe25d0e9de7`; base `0x50c749ae210d3977adc824ae11f3c7fd10c871e9`; base `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0000000f2eb9f69274678c76222b35eec7588a65`; arbitrum `0x7e715d9731ee8c29e0bde2e852891e9fbef262bb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-263626 | `0x206ff3f58f57d00c48af6010de6dc26f913efd64` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-263627 | `0x2800fc940a9b3bcb2cde3c70797b21296becbf07` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-263630 | `0x4409446b49e24861697d566e5c6d68c0d8f3c50f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dd8bfa6c5c68d05d25ef6143e05c11e26c4cdb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263635 | `0x7bad596c26e175384bd9985cb97c6c3f7e158b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263636 | `0x93a3a3325de6ab429523d144b41a032e7d7456ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263637 | `0x9524e25079b1b04d904865704783a5aa0202d44d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263638 | `0xa425d3c9a1c048be1183d8e396406bda813b4826` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263642 | `0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263644 | `0xcb9737bdd076251744704cc37ce961e8417fdd7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263645 | `0xcff9d39441eb668c7fffa752ad1ea47930bb8a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecd62a8bbd3503710765a53218c480127b3c816e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1eee0957267b1a474323ff9cff7719e964969fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263647 | `0xf837334c5c48f16a8a73affb09859bb7fdb467e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-263648 | `0x2bcb71309554a5dc31932cb3d5a547cd8cc5ed26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-263649 | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-263652 | `0x946fd049c47beff53a32588c67df6a5a16b805f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-263651 | `0x5dd8bfa6c5c68d05d25ef6143e05c11e26c4cdb7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 11
- Live contracts: 4
- Unknown liveness contracts: 7
- Source-verified contracts: 8
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=2, source verified unclassified=5, unverified unclassified=3

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | source verified unclassified | YoVault_V2<br>`0x7e715d9731ee8c29e0bde2e852891e9fbef262bb` | non_address_book | unknown | unknown | verified | n/a | `0x5641d005b8f541bdfddbfacdc910f2ad5e0c3c21` |
| base | currently scope matched | TransparentUpgradeableProxy<br>`0x56c3119dc3b1a75763c87d5b0a2c55e489502232` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xf1eee0957267b1a474323ff9cff7719e964969fa` | external_dependency_or_infra | unknown | unknown | verified | review: no_fresh_structural_match | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| base | source verified unclassified | YoGateway<br>`0xc33660b771db437e15e9234cc424e750376f903e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| base | source verified unclassified | YoRegistry<br>`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| base | source verified unclassified | Escrow<br>`0xc5da2b9174234f34c5857295776f5ea1fe70ebca` | non_address_book | unknown | unknown | verified | n/a | `0xd9c452e307a9521bae23cb9e83ba71be057207ae` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0cf9a84bb9e916229f3037dc079ef418b97bb0cf` | non_address_book | unknown | unknown | unverified | n/a | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x542d29b2b69f83fa65eec2f3c782968c43bc8ae8` | non_address_book | unknown | unknown | unverified | n/a | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecd62a8bbd3503710765a53218c480127b3c816e` | non_address_book | unknown | unknown | unverified | n/a | `0x0e7c357813a1646f7ceed2e295fb058f21ce9295` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xb9a7da9e90d3b428083bae04b860faa6325b721e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x45cbc3cbfb5b384d8e57eb833888d84e935e6bb8` |
| ethereum | source verified unclassified | yoUSDT<br>`0x0a09e980cae64d8840fd9c92f165aba4bfdf9716` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x45cbc3cbfb5b384d8e57eb833888d84e935e6bb8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [20251121_Paladin_YoProtocol_Final_Report.pdf](https://github.com/yoprotocol/core/blob/main/audits/20251121_Paladin_YoProtocol_Final_Report.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |
| [Exponential YoProtocol Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Exponential%20YoProtocol%20Review.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [Yo-Protocol-Aether-Security-Audit-2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit-2.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Yo-Protocol-Aether-Security-Audit.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aether-Security-Audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Yo-Protocol-Aetheryc-Security-Review_V2.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Aetheryc-Security-Review_V2.pdf) | unknown | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Yo-Protocol-Spearbit-Security-Review.pdf](https://github.com/yoprotocol/core/blob/main/audits/Yo-Protocol-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Yo-Protocol-Offbeat-Security-Review.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FWoGQfyF1ui7hsQyDpWFe%2FYo-Protocol-Offbeat-Security-Review.pdf) | Offbeat | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [Yo-Protocol-Hunter-Security-Audit-Report.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FylRSSVzmmHyiLiD6qEPN%2FYo-Protocol-Hunter-Security-Audit-Report.pdf) | Hunter Security | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [YO-Protocol-Spearbit.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FNJkLUQiDPAxu0JRgC1GX%2Freport-cantinacode-yo-0519%20(2).pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Yo-Protocol-Aether-Security-Audit-2.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FKBRKoUjI9lC64aFp5Aky%2FYo-Protocol-Aether-Security-Audit-2.pdf) | Aether Security | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20251121_Paladin_YoProtocol_Final_Report.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FpMWbqSIwZoqGaLDR4b4f%2F20251121_Paladin_YoProtocol_Final_Report.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [Yo-Protocol-Aetheryc-Security-Review_V2.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FvOO6RxWQL519s6EGVTb5%2FYo-Protocol-Aetheryc-Security-Review_V2.pdf) | Aetheryc | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [yoSOL-Zellic Audit Report.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FD5Oah6X7YxUcalMHgZZh%2FyoSOL-Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1 (1).pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FpuowgFhijDOjzRxcTyrV%2F2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1%20(1).pdf) | Accretion | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Yo-Protocol-Aether-Security-Audit.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FaNjXw0g4ISB9wmnFL6Q8%2FYo-Protocol-Aether-Security-Audit.pdf) | Aether Security | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [yo_contracts_v2_cantina.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FPv8HNe3Rh8cHfNcT441Y%2Fyo_contracts_v2_cantina.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | matched | 6 | 0 | 0 | 11 | high |
| [yo_contracts_v2_rereview_cantina.pdf](https://2576447856-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fwkm0XGONc7sDuNeJww6d%2Fuploads%2FutDynCfKMddZQeN5jbGP%2Freport-cli-cantina-d04216ad-ca2c-471a-8185-4fc76df353cd-yo-rereview-final.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | contract_name | matched | 8 | 1 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5792] 20251121_Paladin_YoProtocol_Final_Report.pdf — matched: No reason recorded
- [5793] Exponential YoProtocol Review.pdf — matched: No reason recorded
- [5794] Yo-Protocol-Aether-Security-Audit-2.pdf — no match: Only one contract in scope: YoSecondaryVault from src/YoSecondaryVault.sol
- [5795] Yo-Protocol-Aether-Security-Audit.pdf — no match: No scope section or contract names found in the report text.
- [5796] Yo-Protocol-Aetheryc-Security-Review_V2.pdf — matched: Scope section explicitly lists three contracts: YoOracle, YoToken, YoVault_V2. Audit date is December 1, 2025.
- [5797] Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf — no match: No reason recorded
- [5798] Yo-Protocol-Spearbit-Security-Review.pdf — no match: No reason recorded
- [28603] Yo-Protocol-Offbeat-Security-Review.pdf — matched: All 6 files explicitly listed in scope section.
- [28604] Yo-Protocol-Hunter-Security-Audit-Report.pdf — no match: Scope section explicitly lists src/yoVault.sol, src/AuthUpgradable.sol, src/Escrow.sol. Audit date from cover page.
- [28605] YO-Protocol-Spearbit.pdf — no match: Only one contract (yoVault) is explicitly referenced in the audit report. No other contracts or files are mentioned as in scope.
- [28606] Yo-Protocol-Aether-Security-Audit-2.pdf — no match: Only one contract in scope: YoSecondaryVault from src/YoSecondaryVault.sol
- [28607] 20251121_Paladin_YoProtocol_Final_Report.pdf — matched: All five contracts are explicitly listed in the 'Contracts Assessed' table and have dedicated findings sections.
- [28608] Yo-Protocol-Aetheryc-Security-Review_V2.pdf — matched: Scope section explicitly lists three contracts: YoOracle, YoToken, YoVault_V2. Audit date is December 1, 2025.
- [28609] yoSOL-Zellic Audit Report.pdf — no match: Scope section lists three programs: yo-oracle, yo-vault, and yo-lib. Audit date is February 24, 2026 from the cover page.
- [28610] 2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1 (1).pdf — matched: Extracted three main programs from scope table: YO Solana vault (yo-vault), YO USD vault (yo-vault, same repo), and YO Oracle (yo-oracle). Also extracted yo-lib library crate referenced in findings. Audit date from cover page: April 13, 2026.
- [28611] Yo-Protocol-Aether-Security-Audit.pdf — no match: No scope section or contract names found in the report text.
- [28612] yo_contracts_v2_cantina.pdf — matched: All contracts listed in the scope section of the audit report.
- [28613] yo_contracts_v2_rereview_cantina.pdf — matched: Extracted contract names from scope section 2.1.1 and additional contracts referenced in findings and trust assumptions. The audit date is from the cover page: June 23, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoEscrow | unmatched — not counted | — | — | no |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoGateway | unmatched — not counted | — | — | no |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` — deployed 2025-08-18 15:53:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoSecondaryVault | unmatched — not counted | — | — | no |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoVault | unmatched — not counted | — | — | no |
| Exponential YoProtocol Review.pdf | AuthUpgradable | unmatched — not counted | — | — | no |
| Exponential YoProtocol Review.pdf | Errors | unmatched — not counted | — | — | no |
| Exponential YoProtocol Review.pdf | Escrow | unmatched — not counted | — | — | no |
| Exponential YoProtocol Review.pdf | RolesAuthority | unmatched — not counted | — | — | no |
| Exponential YoProtocol Review.pdf | TimelockController | own contract | TimelockController (selected) `0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48` — deployed 2026-03-31 16:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Exponential YoProtocol Review.pdf | yoVault | unmatched — not counted | — | — | no |
| Yo-Protocol-Aether-Security-Audit-2.pdf | YoSecondaryVault | unmatched — not counted | — | listed in scope section | no |
| Yo-Protocol-Aetheryc-Security-Review_V2.pdf | YoOracle | own contract | YoOracle (selected) `0x6e879d0ccc85085a709ebf5539224f53d0d396b0` — deployed 2025-12-01 12:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yo-Protocol-Aetheryc-Security-Review_V2.pdf | YoToken | unmatched — not counted | — | listed in scope table | no |
| Yo-Protocol-Aetheryc-Security-Review_V2.pdf | YoVault_V2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x50c749ae210d3977adc824ae11f3c7fd10c871e9` — deployed 2025-08-26 14:09:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0000000f2eb9f69274678c76222b35eec7588a65` — deployed 2025-04-17 17:55:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` — deployed 2025-03-13 13:20:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a43aec53490cb9fa922847385d82fe25d0e9de7` — deployed 2025-01-21 14:33:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x586675a3a46b008d8408933cf42d8ff6c9cc61a1` — deployed 2025-10-10 09:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf | AuthUpgradable | unmatched — not counted | — | — | no |
| Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf | Escrow | unmatched — not counted | — | — | no |
| Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf | yoVault | unmatched — not counted | — | — | no |
| Yo-Protocol-Spearbit-Security-Review.pdf | yoVault | unmatched — not counted | — | — | no |
| Yo-Protocol-Offbeat-Security-Review.pdf | AuthUpgradable | unmatched — not counted | — | listed in scope | no |
| Yo-Protocol-Offbeat-Security-Review.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| Yo-Protocol-Offbeat-Security-Review.pdf | RolesAuthority | unmatched — not counted | — | listed in scope | no |
| Yo-Protocol-Offbeat-Security-Review.pdf | TimelockController | own contract | TimelockController (selected) `0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48` — deployed 2026-03-31 16:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yo-Protocol-Offbeat-Security-Review.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Yo-Protocol-Offbeat-Security-Review.pdf | yoVault | unmatched — not counted | — | listed in scope | no |
| Yo-Protocol-Hunter-Security-Audit-Report.pdf | yoVault | unmatched — not counted | — | listed in scope | no |
| Yo-Protocol-Hunter-Security-Audit-Report.pdf | AuthUpgradable | unmatched — not counted | — | listed in scope | no |
| Yo-Protocol-Hunter-Security-Audit-Report.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| YO-Protocol-Spearbit.pdf | yoVault | unmatched — not counted | — | Listed in scope context lines throughout findings (e.g., yoVault.sol#L14, yoVault.sol#L283) | no |
| Yo-Protocol-Aether-Security-Audit-2.pdf | YoSecondaryVault | unmatched — not counted | — | listed in scope section | no |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoEscrow | unmatched — not counted | — | listed in scope table and findings section | no |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoGateway | unmatched — not counted | — | listed in scope table and findings section | no |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoVault | unmatched — not counted | — | listed in scope table and findings section | no |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` — deployed 2025-08-18 15:53:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20251121_Paladin_YoProtocol_Final_Report.pdf | YoSecondaryVault | unmatched — not counted | — | listed in scope table and findings section | no |
| Yo-Protocol-Aetheryc-Security-Review_V2.pdf | YoOracle | own contract | YoOracle (selected) `0x6e879d0ccc85085a709ebf5539224f53d0d396b0` — deployed 2025-12-01 12:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yo-Protocol-Aetheryc-Security-Review_V2.pdf | YoToken | unmatched — not counted | — | listed in scope table | no |
| Yo-Protocol-Aetheryc-Security-Review_V2.pdf | YoVault_V2 | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x50c749ae210d3977adc824ae11f3c7fd10c871e9` — deployed 2025-08-26 14:09:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0000000f2eb9f69274678c76222b35eec7588a65` — deployed 2025-04-17 17:55:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbcbc8cb4d1e8ed048a6276a5e94a3e952660bcbc` — deployed 2025-03-13 13:20:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a43aec53490cb9fa922847385d82fe25d0e9de7` — deployed 2025-01-21 14:33:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x586675a3a46b008d8408933cf42d8ff6c9cc61a1` — deployed 2025-10-10 09:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yoSOL-Zellic Audit Report.pdf | yo-oracle | unmatched — not counted | — | listed in scope section | no |
| yoSOL-Zellic Audit Report.pdf | yo-vault | unmatched — not counted | — | listed in scope section | no |
| yoSOL-Zellic Audit Report.pdf | yo-lib | unmatched — not counted | — | listed in scope section | no |
| 2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1 (1).pdf | YoVault | unmatched — not counted | — | Listed in scope as Item 1: YO Solana vault, program ID yvSoLSBaLoqZ2yQttGbaYzHDXr9Bo9UdqtiRDiVaMxP | no |
| 2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1 (1).pdf | YoOracle | own contract | YoOracle (selected) `0x6e879d0ccc85085a709ebf5539224f53d0d396b0` — deployed 2025-12-01 12:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1 (1).pdf | yo-vault | unmatched — not counted | — | Referenced throughout findings as the vault program | no |
| 2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1 (1).pdf | yo-oracle | unmatched — not counted | — | Referenced throughout findings as the oracle program | no |
| 2026-accretion-yo-labs-yo-protocol-solana-audit-A26YOL1 (1).pdf | yo-lib | unmatched — not counted | — | Referenced in findings as a library crate | no |
| yo_contracts_v2_cantina.pdf | YoGateway | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | YoVault | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | YoAdapterBase | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | YoERC4626Adapter | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | YoIPORAdapter | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | YoLidoAdapter | own contract | 0xf83733… (selected) `0xf837334c5c48f16a8a73affb09859bb7fdb467e0` — deployed 2026-06-01 15:23:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_cantina.pdf | YoMorphoAdapter | ambiguous — not counted | 0x93a3a3… (alternative) `0x93a3a3325de6ab429523d144b41a032e7d7456ab` — deployed 2026-06-01 15:23:35+03 — liveness: live (current_address_book_code)<br>0x2bcb71… (alternative) `0x2bcb71309554a5dc31932cb3d5a547cd8cc5ed26` — deployed 2026-06-11 13:39:16+03 — liveness: live (current_address_book_code)<br>0x946fd0… (alternative) `0x946fd049c47beff53a32588c67df6a5a16b805f0` — deployed 2026-06-08 22:25:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yo_contracts_v2_cantina.pdf | YoSwapAdapter | own contract | 0xa425d3… (selected) `0xa425d3c9a1c048be1183d8e396406bda813b4826` — deployed 2026-06-02 09:29:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_cantina.pdf | YoUSDTAdapter | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | AuthUpgradeable | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | Compatible | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | YoChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| yo_contracts_v2_cantina.pdf | YoApprovalRegistry | own contract | 0xb4b3f5… (selected) `0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021` — deployed 2026-06-01 15:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_cantina.pdf | YoERC4626VaultRegistry | own contract | 0x7bad59… (selected) `0x7bad596c26e175384bd9985cb97c6c3f7e158b6f` — deployed 2026-06-01 15:23:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_cantina.pdf | YoMorphoMarketRegistry | own contract | 0xcb9737… (selected) `0xcb9737bdd076251744704cc37ce961e8417fdd7f` — deployed 2026-06-01 15:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_cantina.pdf | YoSwapPairRegistry | own contract | 0xcff9d3… (selected) `0xcff9d39441eb668c7fffa752ad1ea47930bb8a76` — deployed 2026-06-01 15:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoVault | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoChainlinkOracle | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoAdapterBase | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoERC4626Adapter | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoFxSaveAdapter | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoFxSaveRedeemer | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoIPORAdapter | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoLidoAdapter | own contract | 0xf83733… (selected) `0xf837334c5c48f16a8a73affb09859bb7fdb467e0` — deployed 2026-06-01 15:23:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoMorphoAdapter | ambiguous — not counted | 0x93a3a3… (alternative) `0x93a3a3325de6ab429523d144b41a032e7d7456ab` — deployed 2026-06-01 15:23:35+03 — liveness: live (current_address_book_code)<br>0x2bcb71… (alternative) `0x2bcb71309554a5dc31932cb3d5a547cd8cc5ed26` — deployed 2026-06-11 13:39:16+03 — liveness: live (current_address_book_code)<br>0x946fd0… (alternative) `0x946fd049c47beff53a32588c67df6a5a16b805f0` — deployed 2026-06-08 22:25:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| yo_contracts_v2_rereview_cantina.pdf | YoSwapAdapter | own contract | 0xa425d3… (selected) `0xa425d3c9a1c048be1183d8e396406bda813b4826` — deployed 2026-06-02 09:29:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoUSDTAdapter | unmatched — not counted | — | listed in scope section 2.1.1 | no |
| yo_contracts_v2_rereview_cantina.pdf | YoGateway | unmatched — not counted | — | referenced in findings (e.g., 4.2.4) | no |
| yo_contracts_v2_rereview_cantina.pdf | YoOracle | own contract | YoOracle (selected) `0x6e879d0ccc85085a709ebf5539224f53d0d396b0` — deployed 2025-12-01 12:04:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoApprovalRegistry | own contract | 0xb4b3f5… (selected) `0xb4b3f5c964a360bbd7201f72a55d0c48b8ad7021` — deployed 2026-06-01 15:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoERC4626VaultRegistry | own contract | 0x7bad59… (selected) `0x7bad596c26e175384bd9985cb97c6c3f7e158b6f` — deployed 2026-06-01 15:23:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoMorphoMarketRegistry | own contract | 0xcb9737… (selected) `0xcb9737bdd076251744704cc37ce961e8417fdd7f` — deployed 2026-06-01 15:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoSwapPairRegistry | own contract | 0xcff9d3… (selected) `0xcff9d39441eb668c7fffa752ad1ea47930bb8a76` — deployed 2026-06-01 15:23:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | YoRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x56c3119dc3b1a75763c87d5b0a2c55e489502232` — deployed 2025-08-18 15:53:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yo_contracts_v2_rereview_cantina.pdf | AuthUpgradeable | unmatched — not counted | — | referenced in trust assumptions | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x68749665ff8d2d112fa859aa293f07a622782f38` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f958d2ee523a2206206994597c13d831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4200000000000000000000000000000000000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a09e980cae64d8840fd9c92f165aba4bfdf9716` | yoUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x586675a3a46b008d8408933cf42d8ff6c9cc61a1` | YoVault_V2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0000000f2eb9f69274678c76222b35eec7588a65` | YoVault_V2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 57 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, low=2
- Match method counts: unique_name=21

Zero-match audit list:

- [5794] Yo-Protocol-Aether-Security-Audit-2.pdf
- [5795] Yo-Protocol-Aether-Security-Audit.pdf
- [5797] Yo-Protocol-Hunter-Security-Audit-Report-1.1.pdf
- [5798] Yo-Protocol-Spearbit-Security-Review.pdf
- [28604] Yo-Protocol-Hunter-Security-Audit-Report.pdf
- [28605] YO-Protocol-Spearbit.pdf
- [28606] Yo-Protocol-Aether-Security-Audit-2.pdf
- [28609] yoSOL-Zellic Audit Report.pdf
- [28611] Yo-Protocol-Aether-Security-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
