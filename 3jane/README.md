# Agentic Audit Brief: 3Jane

## Export Authority

- Production state: **published scope**
- Raw selected rows: 38 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: 3Jane (`3jane`)
- Website: [https://www.3jane.xyz/](https://www.3jane.xyz/)
- Lifecycle: active (Tier 0, 58% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 35 unique implementations (58 raw deployments)
- Coverage basis: 11/13 confirmed own live verified implementations (84.6%); conservative 84.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $119,113,065.00
- On-chain TVL (included contracts): $83,787,176.40
- TVL by chain: Ethereum $83,787,176.40

## Project Description

This brief describes the observed EVM deployment and audit surface for 3Jane. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across ethereum. Structural roles: 11 supporting, 2 core, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (11), core (2), unclassified (1)
- Contract kinds: contract (13), abstract (1)
- Detected standards: erc1967proxy (4), ownable (4), accesscontrol (2), erc165 (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (5), solmate (2), foundry (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CreditLine (`0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9`, chain 1)
- GnosisSafeProxy (`0x33333333bd7045f1a601a1e289d7ab21036fb5ef`, chain 1)
- Helper (`0x82736f81a56935c8429addbda4aebec737444505`, chain 1)
- InsuranceFund (`0x4507b5b23340d248457d955a211c8b0634d29935`, chain 1)
- Jane (`0x333333330522f64ee8d0b3039c460b41670e3404`, chain 1)
- MarkdownController (`0xf0eae71092f3c9411a9eab8f81e7d91d29726214`, chain 1)
- ProtocolConfig (`0x64bc68ea388e42c73747668122eee3a5bfb70b98`, chain 1)
- RewardsDistributor (`0xac6985d4dbcd89ccad71db9bf0309eaf57f064e8`, chain 1)
- TimelockController (`0x1dccd4628d48a50c1a7adea3848bcc869f08f8c2`, chain 1)
- TransparentUpgradeableProxy (`0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc`, chain 1)
- TransparentUpgradeableProxy (`0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df`, chain 1)
- TransparentUpgradeableProxy (`0xde6e08ac208088cc62812ba30608d852c6b0ecbc`, chain 1)
- TransparentUpgradeableProxy (`0xf689555121e529ff0463e191f9bd9d1e496164a7`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/13 (84.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Confirmed-live implementations: 13 of 35 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/33
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 35
- Raw deployments: 58
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 5 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 84.6% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 11 | 33.3% | 2025-10 |
| Veridise | Tier 2 | 6 | 18.2% | 2025-08 |
| yAudit | Tier 2 | 2 | 6.1% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdaptiveCurveIrm | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378312 | `0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df` | ✅ Audited |
| CreditLine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378302 | `0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9` | ✅ Audited |
| Helper | periphery | project_anchor | own_supporting | 0 | ethereum | unit-378305 | `0x82736f81a56935c8429addbda4aebec737444505` | ✅ Audited |
| InsuranceFund | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378304 | `0x4507b5b23340d248457d955a211c8b0634d29935` | ✅ Audited |
| Jane | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378303 | `0x333333330522f64ee8d0b3039c460b41670e3404` | ✅ Audited |
| MarkdownController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378307 | `0xf0eae71092f3c9411a9eab8f81e7d91d29726214` | ✅ Audited |
| MorphoCredit | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378310 | `0xde6e08ac208088cc62812ba30608d852c6b0ecbc` | ✅ Audited |
| ProtocolConfig | governance | project_anchor | own_supporting | 1 | ethereum | unit-378309 | 2 deployments: ethereum `0x64bc68ea388e42c73747668122eee3a5bfb70b98`; ethereum `0x6b276a2a7dd8b629adba8a06ad6573d01c84f34e` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378306 | `0xac6985d4dbcd89ccad71db9bf0309eaf57f064e8` | ✅ Audited |
| sUSD3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378308 | `0xf689555121e529ff0463e191f9bd9d1e496164a7` | ✅ Audited |
| USD3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378311 | `0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StataTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd4fa2d31b7968e448877f69a96de69f5de8cd23e` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fbb7b2f220e2b68f1ff14794543f01ed703fc5a`; ethereum `0xe74ee9c836883fcf7c0f394a2429e82d97f45145` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x72d9bc9d8e65a690d12a92da249f3216ba42b2e5`; ethereum `0xf7a18b1ec65b8471d80218a01bd4413ad8417e21` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x74993710931113b1d383469a25596f525a8635c4`; ethereum `0x79d674e544b27f67d584f424c9bd9ef4353d0a37`; ethereum `0xab8e9492863be96643be447fe41854bd2cae4615`; ethereum `0xb9c6ac5f80e9fcd41adca55fd98438300558f73b`; ethereum `0xf914e25ff1d83eef6a871e9293199369a283adc6` | ⚠️ Unaudited |
| Amplol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x82616ea8627f6d4def852fe918b2a61a2dc023c4`; ethereum `0xeadf1de23cece2109cb72517da1b7b710b7509e5` | ⚠️ Unaudited |
| EmergencyController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x792a1450a3d2023e2de6bb29208031dea52ea12c`; ethereum `0x84b31b84917485e221305edf590b8e3660d2e051` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-378313 | `0x33333333bd7045f1a601a1e289d7ab21036fb5ef` | ⚠️ Unaudited |
| Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a66f992bf227d2e50ef19edd21503c3c4f3f682` | ⚠️ Unaudited |
| Jane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff031e9fcdee6207fc17e1f1fefc66d346fd72fc` | ⚠️ Unaudited |
| ManualStrikeSelection | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ef28605dd3921320da832cefe72a674da656b46`; ethereum `0xa7b3a9deba8d3b49a0dd75eda34ef64f6217a9d9` | ⚠️ Unaudited |
| MarkdownManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd172699e44008d1f48fd945a0421a03d8118b5d` | ⚠️ Unaudited |
| ProtocolConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa11ab352fd05094a2400609fb6100e755a9bf1e` | ⚠️ Unaudited |
| PYTLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd433db118c459d8bf83ed839326a260de2e266` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95f8f5ff078b65125c7d00f2cc7b4ae062f555c` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2e96b888c0f7d5362022de5f330e24dff5efb619`; ethereum `0x4a94a0743a69bee2a58c8fae7ef3881c2f5da126`; ethereum `0xbc8a59497d4e27f65f132c359cc6ccedbf6521a7` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4c8ce0e024b8f53d5cac310c3046d82834a9944c`; ethereum `0xacd147a5bbcb7166c5bb13a9354ad7a59b99fb4d` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x65809c5dccde77ab8bb023c47e24d147eca803d0`; ethereum `0x8ee376f98d739cc8bfad13ac9165e4a22955dafb` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73092aef9fe617ab0e8c3261593cb431a56f2dc9`; ethereum `0xa235c6d0f94bc156d2f5f98cdf4e3296a9147572` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x959744121d0a13d3c8752dd01f06417b2a41ea9f`; ethereum `0xa6f76b158300006a2612e9a39e67e893dc45f030` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378301 | `0x1dccd4628d48a50c1a7adea3848bcc869f08f8c2` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x05367c7a76afeb7bdf7c06b479d7551d6536a06e`; ethereum `0x492a3dd7a6f4bc7ff7b2d001148e2c67b33d9f91`; ethereum `0x49ef4aef11d236a5e0879d07975fc30efd0df852`; ethereum `0x4f6694dde9dacceea069b5bbf41735c029bc0645`; ethereum `0x83872df0cbdc2408ba61123004105372ce45f35a`; ethereum `0xbd35e3bd64eed7db85162bc2a4e4f37796247c2e`; ethereum `0xf733c71a6e9c46741fbcbd0af37a1543373304de` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4f1fafbfe3a3a3f66e17ba674c5c79eb0cdc19ba`; ethereum `0x8fe8d5e4eb0f60169fd5fb178595625dcec0dd11` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98633af43f2bcb2a7a4b4c31d461171d7bb4520b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12caa67886c5d07cbf429958eaaafcce448c754` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 30
- Live contracts: 2
- Unknown liveness contracts: 28
- Source-verified contracts: 28
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate review=3, source verified unclassified=24, unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | TransparentUpgradeableProxy<br>`0x6b276a2a7dd8b629adba8a06ad6573d01c84f34e` | project_anchor | governance | live | verified | review: no_fresh_structural_match | `0x1226858e04b9d077258f153275613734421cd06b` |
| candidate review | ERC1967Proxy<br>`0x3fbb7b2f220e2b68f1ff14794543f01ed703fc5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1226858e04b9d077258f153275613734421cd06b` |
| candidate review | ERC1967Proxy<br>`0xeadf1de23cece2109cb72517da1b7b710b7509e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1226858e04b9d077258f153275613734421cd06b` |
| candidate review | ERC1967Proxy<br>`0xf7a18b1ec65b8471d80218a01bd4413ad8417e21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0x65809c5dccde77ab8bb023c47e24d147eca803d0` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0xa235c6d0f94bc156d2f5f98cdf4e3296a9147572` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0xa6f76b158300006a2612e9a39e67e893dc45f030` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0x72d9bc9d8e65a690d12a92da249f3216ba42b2e5` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0x74993710931113b1d383469a25596f525a8635c4` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0x79d674e544b27f67d584f424c9bd9ef4353d0a37` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0x82616ea8627f6d4def852fe918b2a61a2dc023c4` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0xab8e9492863be96643be447fe41854bd2cae4615` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0xb9c6ac5f80e9fcd41adca55fd98438300558f73b` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0xe74ee9c836883fcf7c0f394a2429e82d97f45145` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | Amplol<br>`0xf914e25ff1d83eef6a871e9293199369a283adc6` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | ManualStrikeSelection<br>`0x4ef28605dd3921320da832cefe72a674da656b46` | non_address_book | token | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | ManualStrikeSelection<br>`0xa7b3a9deba8d3b49a0dd75eda34ef64f6217a9d9` | non_address_book | token | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | ProtocolConfig<br>`0x64bc68ea388e42c73747668122eee3a5bfb70b98` | retained_scope_excluded_inventory | governance | live | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | PYTLocker<br>`0xbfd433db118c459d8bf83ed839326a260de2e266` | non_address_book | unknown | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | RibbonThetaVaultWithSwap<br>`0x2e96b888c0f7d5362022de5f330e24dff5efb619` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | RibbonThetaVaultWithSwap<br>`0x4a94a0743a69bee2a58c8fae7ef3881c2f5da126` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | RibbonThetaVaultWithSwap<br>`0x4c8ce0e024b8f53d5cac310c3046d82834a9944c` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | RibbonThetaVaultWithSwap<br>`0x73092aef9fe617ab0e8c3261593cb431a56f2dc9` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | RibbonThetaVaultWithSwap<br>`0x8ee376f98d739cc8bfad13ac9165e4a22955dafb` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | RibbonThetaVaultWithSwap<br>`0x959744121d0a13d3c8752dd01f06417b2a41ea9f` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | RibbonThetaVaultWithSwap<br>`0xbc8a59497d4e27f65f132c359cc6ccedbf6521a7` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | VaultLifecycleWithSwap<br>`0x4f1fafbfe3a3a3f66e17ba674c5c79eb0cdc19ba` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| source verified unclassified | VaultLifecycleWithSwap<br>`0x8fe8d5e4eb0f60169fd5fb178595625dcec0dd11` | non_address_book | core_logic | unknown | verified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| unverified unclassified | UnnamedContract<br>`0x98633af43f2bcb2a7a4b4c31d461171d7bb4520b` | non_address_book | unknown | unknown | unverified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |
| unverified unclassified | UnnamedContract<br>`0xe12caa67886c5d07cbf429958eaaafcce448c754` | non_address_book | unknown | unknown | unverified | n/a | `0x1226858e04b9d077258f153275613734421cd06b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [veridise-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/veridise-audit.pdf) | Veridise | Audit | 2025-08 | fresh | Direct | n/a | matched | 6 | 4 | 0 | 12 | n/a |
| [sherlock-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/sherlock-audit.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | n/a | matched | 8 | 5 | 0 | 2 | n/a |
| [electisec-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/electisec-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | matched | 11 | 5 | 0 | 2 | n/a |
| [sherlock-2-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/sherlock-2-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | matched | 11 | 5 | 0 | 9 | n/a |
| [electisec-audit](https://github.com/3jane-protocol/audits/blob/main/yaudit-usd3-susd3-may-2026-audit.pdf) | yAudit | Audit | 2026-05 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3912] veridise-audit.pdf — matched: No reason recorded
- [3913] sherlock-audit.pdf — matched: No reason recorded
- [3914] electisec-audit.pdf — matched: No reason recorded
- [3915] sherlock-2-audit.pdf — matched: No reason recorded
- [26419] electisec-audit — matched: Audit scope explicitly lists four Solidity files under src/ with their paths. Audit completed date is given at the end of the document.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| veridise-audit.pdf | ConstantsLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | ErrorsLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | EventsLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | Helper | own contract | Helper (selected) `0x82736f81a56935c8429addbda4aebec737444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | IAaveMarket | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMarkdownManager | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMorpho | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMorphoFlashLoanCallback | unmatched — not counted | — | — | no |
| veridise-audit.pdf | IMorphoSupplyCallback | unmatched — not counted | — | — | no |
| veridise-audit.pdf | MarkdownManager | unmatched — not counted | — | — | no |
| veridise-audit.pdf | Morpho | unmatched — not counted | — | — | no |
| veridise-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08ac208088cc62812ba30608d852c6b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | MorphoCreditStorageLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | MorphoStorageLib | unmatched — not counted | — | — | no |
| veridise-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a2a7dd8b629adba8a06ad6573d01c84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| veridise-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf689555121e529ff0463e191f9bd9d1e496164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | AdaptiveCurveIrm | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | BaseStrategyUpgradeable | unmatched — not counted | — | — | no |
| sherlock-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | Helper | own contract | Helper (selected) `0x82736f81a56935c8429addbda4aebec737444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | InsuranceFund | own contract | InsuranceFund (selected) `0x4507b5b23340d248457d955a211c8b0634d29935` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | MarkdownManager | unmatched — not counted | — | — | no |
| sherlock-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08ac208088cc62812ba30608d852c6b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a2a7dd8b629adba8a06ad6573d01c84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf689555121e529ff0463e191f9bd9d1e496164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | AdaptiveCurveIrm | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | Helper | own contract | Helper (selected) `0x82736f81a56935c8429addbda4aebec737444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | InsuranceFund | own contract | InsuranceFund (selected) `0x4507b5b23340d248457d955a211c8b0634d29935` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | Jane | own contract | Jane (selected) `0x333333330522f64ee8d0b3039c460b41670e3404` — deployed 2025-10-21 23:28:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | MarkdownController | own contract | MarkdownController (selected) `0xf0eae71092f3c9411a9eab8f81e7d91d29726214` — deployed 2025-10-21 23:37:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | Morpho | unmatched — not counted | — | — | no |
| electisec-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08ac208088cc62812ba30608d852c6b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | PYTLocker | unmatched — not counted | — | — | no |
| electisec-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a2a7dd8b629adba8a06ad6573d01c84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0xac6985d4dbcd89ccad71db9bf0309eaf57f064e8` — deployed 2025-10-21 23:33:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf689555121e529ff0463e191f9bd9d1e496164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | AdaptiveCurveIrm | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | BaseStrategyUpgradeable | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | CreditLine | own contract | CreditLine (selected) `0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9` — deployed 2025-08-25 03:57:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | Helper | own contract | Helper (selected) `0x82736f81a56935c8429addbda4aebec737444505` — deployed 2025-08-25 04:30:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | IProtocolConfig | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | ISUSD3 | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | InsuranceFund | own contract | InsuranceFund (selected) `0x4507b5b23340d248457d955a211c8b0634d29935` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | Jane | own contract | Jane (selected) `0x333333330522f64ee8d0b3039c460b41670e3404` — deployed 2025-10-21 23:28:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | MarkdownController | own contract | MarkdownController (selected) `0xf0eae71092f3c9411a9eab8f81e7d91d29726214` — deployed 2025-10-21 23:37:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | Morpho | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | MorphoCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xde6e08ac208088cc62812ba30608d852c6b0ecbc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | MorphoCreditLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | MorphoCreditStorageLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | MorphoStorageLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | PYTLocker | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | ProtocolConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6b276a2a7dd8b629adba8a06ad6573d01c84f34e` — deployed 2025-08-25 03:57:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | ProtocolConfigLib | unmatched — not counted | — | — | no |
| sherlock-2-audit.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0xac6985d4dbcd89ccad71db9bf0309eaf57f064e8` — deployed 2025-10-21 23:33:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sherlock-2-audit.pdf | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf689555121e529ff0463e191f9bd9d1e496164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit | ProtocolConfigLib | unmatched — not counted | — | listed in Audit Scope section | no |
| electisec-audit | USD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit | sUSD3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf689555121e529ff0463e191f9bd9d1e496164a7` — deployed 2025-08-25 03:57:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| electisec-audit | BaseHooksUpgradeable | unmatched — not counted | — | listed in Audit Scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 4 |
| standard_library | 9 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 38 own (21 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 38 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=38

Fork inheritance lineage and inherited audits are included when available.
