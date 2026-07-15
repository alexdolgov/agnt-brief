# Agentic Audit Brief: K3 Capital

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: K3 Capital (`k3-capital`)
- Website: [https://k3.capital](https://k3.capital)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, plasma
- Contract surface: 93 unique implementations (93 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $244,661,360.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for K3 Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, bsc, ethereum, plasma. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc4626 (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 52 contracts are derived from known codebases. 52 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x14d8d8...24f386`, chain 1)
- UnnamedContract (`0x1a0fc0...838013`, chain 1)
- UnnamedContract (`0x20f7c9...417526`, chain 1)
- UnnamedContract (`0x2f60ba...8c8686`, chain 1)
- UnnamedContract (`0x34f1e9...8b7b2b`, chain 1)
- UnnamedContract (`0x36e6cb...d0a235`, chain 1)
- UnnamedContract (`0x372abd...46bc65`, chain 1)
- UnnamedContract (`0x4bb5e2...0677c6`, chain 1)
- UnnamedContract (`0x4f9fbb...fc605d`, chain 1)
- UnnamedContract (`0x531a8f...7919a0`, chain 1)
- UnnamedContract (`0x5721cb...4cf9bf`, chain 1)
- UnnamedContract (`0x5cc5ce...ddcd6b`, chain 1)
- UnnamedContract (`0x5f9880...568ba0`, chain 1)
- UnnamedContract (`0x610604...3e8789`, chain 1)
- UnnamedContract (`0x6440f1...beb01d`, chain 1)
- UnnamedContract (`0x66017d...5a21bb`, chain 1)
- UnnamedContract (`0x6dea81...88c54d`, chain 1)
- UnnamedContract (`0x75036b...3211a2`, chain 1)
- UnnamedContract (`0x7ae430...4c0873`, chain 1)
- UnnamedContract (`0x7bcb64...76cf5a`, chain 1)
- UnnamedContract (`0x7f39c5...5e2ca0`, chain 1)
- UnnamedContract (`0x807def...d6eee1`, chain 1)
- UnnamedContract (`0x84eb85...2e86f1`, chain 1)
- UnnamedContract (`0x857aec...a31b04`, chain 1)
- UnnamedContract (`0x8d733f...3aac54`, chain 1)
- UnnamedContract (`0x9074d7...79532f`, chain 1)
- UnnamedContract (`0x9502b7...ebe56b`, chain 1)
- UnnamedContract (`0x970445...dc58e6`, chain 1)
- UnnamedContract (`0xa25269...3063f4`, chain 1)
- UnnamedContract (`0xa2895d...928b22`, chain 1)
- UnnamedContract (`0xa741a3...7d5da3`, chain 1)
- UnnamedContract (`0xae7873...fc6393`, chain 1)
- UnnamedContract (`0xb2b2ab...e3e19e`, chain 1)
- UnnamedContract (`0xb36625...f07b80`, chain 1)
- UnnamedContract (`0xba4a2b...3192bf`, chain 1)
- UnnamedContract (`0xc02aaa...756cc2`, chain 1)
- UnnamedContract (`0xca11bd...76ca11`, chain 1)
- UnnamedContract (`0xcc5f81...03c24f`, chain 1)
- UnnamedContract (`0xd442e4...148695`, chain 1)
- UnnamedContract (`0xd45582...e5b1a0`, chain 1)
- UnnamedContract (`0xd796e1...6a22a1`, chain 1)
- UnnamedContract (`0xdccbd7...770ae3`, chain 1)
- UnnamedContract (`0xe453b8...dca222`, chain 1)
- UnnamedContract (`0xe7aa2b...6e314e`, chain 1)
- UnnamedContract (`0xe8119f...a17329`, chain 1)
- UnnamedContract (`0xe85230...df0a56`, chain 1)
- UnnamedContract (`0xeb5a8c...b16afe`, chain 1)
- UnnamedContract (`0xedbe25...50e2bf`, chain 1)
- UnnamedContract (`0xf0cae1...cbe657`, chain 1)
- UnnamedContract (`0xf94998...386684`, chain 1)
- UnnamedContract (`0xfa61db...31d235`, chain 1)
- sBold (`0x50bd66...59dd11`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 52/101 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 52 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations excluded (2 third-party/infra; 13 standard proxy/library)
- Proxy deployments represented within implementation groups: 21
- Deployed-live implementations: 52 of 93 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 51
- Unique implementations: 93
- Raw deployments: 93
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 100.0% | n/a |
| Dedaub | Tier 2 | 1 | 100.0% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| sBold | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388004 | `0x50bd66...59dd11` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeaconProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | plasma | n/a | `0x141a6f...e09041` | ⚠️ Unaudited |
| BeaconProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0xda33ba...97d71b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x007f78...736027` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x00d5e4...fe791e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x016572...fa4dab` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x04adbe...2e9e37` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x0a43f1...3af746` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x4b1471...a4664b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x5ca49e...f5f83a` | ⚠️ Unaudited |
| InstaFlashAggregatorPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0f8a99...7173b4` | ⚠️ Unaudited |
| InstaFlashAggregatorProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9c0ee5...b6eac8` | ⚠️ Unaudited |
| InstaFlashResolverPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x12c811...f93c7b` | ⚠️ Unaudited |
| MellowVaultCompat | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x82f510...9e0b26` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93ef00...79348d` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3b3bda...87147a` | ⚠️ Unaudited |
| PoolV3_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5503d...5db6de` | ⚠️ Unaudited |
| Roles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x14b3bd...f66c47` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdd84a2...538b6b` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5bb012...df0506` | ⚠️ Unaudited |
| SafeProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | plasma | n/a | `0x060db0...6dfea3` | ⚠️ Unaudited |
| StrategyGovDeployerPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x182fe6...1bfe37` | ⚠️ Unaudited |
| TermAggregatorFlashDefaultLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1123da...10b45e` | ⚠️ Unaudited |
| TermAggregatorFlashShortfallLiquidatorSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x924c71...3c50c1` | ⚠️ Unaudited |
| TermCeilingPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x970f1a...345494` | ⚠️ Unaudited |
| TermCombinationPriceFeedV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x18019d...f4f123` | ⚠️ Unaudited |
| TermController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x145e78...f67da9` | ⚠️ Unaudited |
| TermEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba1112...0c81be` | ⚠️ Unaudited |
| TermInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52b4c5...6d9005` | ⚠️ Unaudited |
| TermPriceConsumerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xafaa77...4ddd18` | ⚠️ Unaudited |
| TermRepoCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x0035f6...bd22fa` | ⚠️ Unaudited |
| TermRepoLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x040475...0c385a` | ⚠️ Unaudited |
| TermRepoRolloverManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x015caa...c9c316` | ⚠️ Unaudited |
| TermVaultEventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeae3fa...0c3bca` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x8fc260...420af9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x024375...abd336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x866c6c...d9ea83` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe1b4d3...8e6c2e` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdc4795...8eea26` | ⚠️ Unaudited |
| VaultGovDeployerAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x182fe6...1bfe37` | ⚠️ Unaudited |
| VaultGovDeployerPlasma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2fbddb...f2d9fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (52)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387985 | `0x14d8d8...24f386` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387988 | `0x1a0fc0...838013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387989 | `0x20f7c9...417526` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387992 | `0x2f60ba...8c8686` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387993 | `0x34f1e9...8b7b2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387995 | `0x36e6cb...d0a235` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387996 | `0x372abd...46bc65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388001 | `0x4bb5e2...0677c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388003 | `0x4f9fbb...fc605d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388006 | `0x531a8f...7919a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388008 | `0x5721cb...4cf9bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388010 | `0x5cc5ce...ddcd6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388011 | `0x5f9880...568ba0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388013 | `0x610604...3e8789` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388014 | `0x6440f1...beb01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388017 | `0x66017d...5a21bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388019 | `0x6dea81...88c54d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388022 | `0x75036b...3211a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388024 | `0x7ae430...4c0873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388025 | `0x7bcb64...76cf5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388027 | `0x7f39c5...5e2ca0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388029 | `0x807def...d6eee1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388033 | `0x84eb85...2e86f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388034 | `0x857aec...a31b04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388035 | `0x8d733f...3aac54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388036 | `0x9074d7...79532f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388039 | `0x9502b7...ebe56b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388040 | `0x970445...dc58e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388042 | `0xa25269...3063f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388043 | `0xa2895d...928b22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388045 | `0xa741a3...7d5da3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388048 | `0xae7873...fc6393` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388049 | `0xb2b2ab...e3e19e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388050 | `0xb36625...f07b80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388056 | `0xba4a2b...3192bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388058 | `0xc02aaa...756cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388059 | `0xca11bd...76ca11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388060 | `0xcc5f81...03c24f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388062 | `0xd442e4...148695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388063 | `0xd45582...e5b1a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388064 | `0xd796e1...6a22a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388065 | `0xdccbd7...770ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388066 | `0xe453b8...dca222` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388067 | `0xe7aa2b...6e314e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388068 | `0xe8119f...a17329` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388069 | `0xe85230...df0a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388070 | `0xeb5a8c...b16afe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388071 | `0xedbe25...50e2bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388072 | `0xf0cae1...cbe657` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388076 | `0xf94998...386684` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388078 | `0xfa61db...31d235` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity](https://www.chainsecurity.com/security-audit/k3-sbold) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |
| [Dedaub](https://dedaub.com/audits/k3-capital/sbold-may-19-2025) | Dedaub | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [- [Audit Reports]()](https://k3-capital.gitbook.io/sbold/audit-reports.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20599] ChainSecurity — matched: Only one contract name (sBOLD) is mentioned in the summary, but no explicit scope section or file listing is provided.
- [20600] Dedaub — matched: Audit report for sBOLD contract by K3 Capital. Scope includes sBOLD, SwapLogic, BaseSBold, and related interfaces. Date found in header: 'May 19, 2025'.
- [20601] - [Audit Reports]() — no match: The provided text is an index page listing two external audit report links (ChainSecurity and Dedaub) for 'k3-sbold'. No contract names, file paths, or scope details are present in the text itself.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity | sBOLD | own contract | sBold (selected) `0x50bd66...59dd11` — deployed 2025-06-05 18:00:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub | sBOLD | own contract | sBold (selected) `0x50bd66...59dd11` — deployed 2025-06-05 18:00:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dedaub | SwapLogic | unmatched — not counted | — | library used for swap logic, mentioned in code snippets | no |
| Dedaub | BaseSBold | unmatched — not counted | — | base contract with _setSps function | no |
| Dedaub | IPriceOracle | unmatched — not counted | — | interface used in prepareSwap | no |
| Dedaub | ISBold | unmatched — not counted | — | interface used for data structures | no |
| Dedaub | IStabilityPool | unmatched — not counted | — | interface used in BaseSBold | no |
| Dedaub | AggregationRouterV6 | unmatched — not counted | — | external contract mentioned as swap adapter | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 15 |
| needs_review | 52 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: unique_name=2

Zero-match audit list:

- [20601] - [Audit Reports]()

Fork inheritance lineage and inherited audits are included when available.
