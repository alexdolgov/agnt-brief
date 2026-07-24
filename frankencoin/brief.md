# Agentic Audit Brief: Frankencoin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 12 (7 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Frankencoin (`frankencoin`)
- Website: [https://frankencoin.com](https://frankencoin.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 47 unique implementations (69 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $66,912,071.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Frankencoin. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 1 contracts are derived from known codebases. 0 contracts have no detected origin.

### Forked Contracts

**Frankencoin** (`0xb58e61c3098d85632df34eecfb899a1ed80921cb`, chain 1)
Origin: decentralized-euro (`0xb58e61...0921cb`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- None

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 46 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 47 unique; 46 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/42
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 47
- Raw deployments: 69
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity, Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blockbite | Tier 2 | 1 | 2.4% | 2023-02 |
| ChainSecurity | Tier 1 | 1 | 2.4% | 2024-11 |
| Code4rena | Tier 1 | 1 | 2.4% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Frankencoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240440 | `0xb58e61c3098d85632df34eecfb899a1ed80921cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthorizationProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3874161854d0d5f13b4de2cb5061d9cff547466e` | ⚠️ Unaudited |
| AuthorizePositionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x64335c4fea9108c07e72609c7f97be6f505f3032`; ethereum `0xc2fe1047ac94b490eeea26db39bef64671efd930`; ethereum `0xe5487b933e7b27555523afe7d3a2afaf843e33be` | ⚠️ Unaudited |
| Autobidder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x761ebe1a53d65dcd629965cd89c2d5218250a168`; ethereum `0x79507527b2b48fbe0df98d70d0102a054e17b39a`; ethereum `0xa05bfd161ed9b9e7bacd5c03635cb8073e72c4c4` | ⚠️ Unaudited |
| BridgeAccounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88fd2ecd0b9250f203e99e80eb78b0c32b8adb16` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9359cd75549dae00cdd8d22297bc9b13fbbe4b79` | ⚠️ Unaudited |
| CCIPAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2527ec458c863073a303cf0a362bf78add5dfef8` | ⚠️ Unaudited |
| CloneHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55cd2820735db56ca0965be224d71994265f8bee` | ⚠️ Unaudited |
| Equity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba26788dfde592fec8bcb0eaff472a42be341b2` | ⚠️ Unaudited |
| FlashloanFrankencoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d60dbd18b930b1710b76b88461e33dcadec96a1` | ⚠️ Unaudited |
| Folio | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe4a10951f962e6cb93cb843a4ef05d2f99db1f94` | ⚠️ Unaudited |
| FPSWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5052d3cc819f53116641e89b96ff4cd1ee80b182`; ethereum `0x54e55618ce94738689914036b98fac8b10e0fa16` | ⚠️ Unaudited |
| Frankencoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x422d17ccc1442501d039595ffcaaa71b4686bf4e`; ethereum `0x7a787023f6e18f979b143c79885323a24709b0d8` | ⚠️ Unaudited |
| GovernanceSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd23272dfcb13dc3fabd8db851fcd4827af876eb` | ⚠️ Unaudited |
| IFALCSUSDFProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50fae3c51a00a46bc2bbceb7390c28caa6794a1c` | ⚠️ Unaudited |
| IFALCUSDCProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ef854f54df588785e5d16ede9785760d760f52e`; ethereum `0x998d0c734bae49b8757157c7fe3847e2e416f8fd` | ⚠️ Unaudited |
| LeadrateSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d433780a16d425c5db1f725a6d104233a8ef28d` | ⚠️ Unaudited |
| LeverageRealUnit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf285ce08541908ba3e2b449656f4763a37eda8c` | ⚠️ Unaudited |
| MintingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea`; ethereum `0x4539b08a1f2f9efc8c3f66876eb8d8c1920a4e7a`; ethereum `0x7546762fdb1a6d9146b33960545c3f6394265219`; ethereum `0xde12b620a8a714476a97efd14e6f7180ca653557` | ⚠️ Unaudited |
| MockFlashloanRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83aec9c352c9095d19821b0e2272d691860005b8` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44bfc2a260f091f8365ba8b240cd9491903467b9` | ⚠️ Unaudited |
| PositionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0cde500e6940931ed190ded77bb48640c9486392`; ethereum `0x63cf7c82460c5d84d10be2219d80f746d8706b7e`; ethereum `0x728310feaca72dc46cd5bf7d739556d5668472ba`; ethereum `0xcfa9b55ed2b0d97ac4f04f168b6670dd1bbe2080` | ⚠️ Unaudited |
| PositionRoller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0107d3da540fd54b1931735b65110c909ea6b6` | ⚠️ Unaudited |
| PositionV2Streamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38426f0d45f1a6af367be9daa1ebc272879976d5` | ⚠️ Unaudited |
| ReferenceTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46eadde3d63612251a2fc962973caa0f0bd80437`; ethereum `0x6a9ffb6727dfd8811b7e67a578e2e576f779ab7e` | ⚠️ Unaudited |
| RewardRouterV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6d71ed122a7b3b494116317c2ac3b4e5269339` | ⚠️ Unaudited |
| RewardsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1209e42096a0183c14fd26b6faf5707461b78283` | ⚠️ Unaudited |
| RollerPositionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77350f85c1570393be6fda586cf978608ba72786` | ⚠️ Unaudited |
| Savings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x27d9ad987bde08a0d083ef7e0e4043c857a17b38`; ethereum `0x3bf301b0e2003e75a3e86ab82bd1eff6a9dfb2ae` | ⚠️ Unaudited |
| SavingsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e632728d5ab91fe8319760ffdd2d7362e28139` | ⚠️ Unaudited |
| SavingsVaultZCHF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637f00cab9665cb07d91bfb9c6f3fa8fabfef8bc` | ⚠️ Unaudited |
| SavingsVaultZCHF_2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f130253ff137f9917c0107659a4c5262abf6b0` | ⚠️ Unaudited |
| StablecoinBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3b71ba73299f925a837836160c3e1fec74340403`; ethereum `0x3e445ff4dddf0ff8ae7458c9746ed80bd664f6c1`; ethereum `0x4125cd1f826099a4dead6b7746f7f28b30d8402b`; ethereum `0x7bbe8f18040af0032f4c2435e7a76db6f1e346df`; ethereum `0x8d8b5d8bd3fb93327747148edd036265be0fa020` | ⚠️ Unaudited |
| SUSDFUSDFProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabad428f76d05cba8a3e81035c41579cb610bef` | ⚠️ Unaudited |
| SyStUSDStrategyPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f3898dacb80b9adeac54269e1aa32547deeca6` | ⚠️ Unaudited |
| SZCHFZCHFProxyPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4bbb9cadae5d31d083456827e2dfd94eae7b971` | ⚠️ Unaudited |
| TransferReference | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf98c221661f51578f5e5236b189a493e2a8a1916` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4318e2cb1ae291254b187001a59a1f8ac78cef` | ⚠️ Unaudited |
| VaultAdapterRecoverV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x397fb4a34757ac180c0841b26131f25040e2e50b`; ethereum `0x5febefd5aecfefb3352c5edd49d634b1456c4bd7`; ethereum `0x8f36bbee57acb4857cb97898020b529969fdf221` | ⚠️ Unaudited |
| VaultDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x745211a1e1a58b2b11b932855b30d411c31e25d5` | ⚠️ Unaudited |
| XCVXUSDPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a5d0bb1200948adbb6c991494e7292dd8628cb` | ⚠️ Unaudited |
| XETHUSDPriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6165946250dd04740ab1409217e95a4f38374fe9`; ethereum `0x8c158972bead1819c804559e4e664a3d875202fb` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56d22ed3dcef5b4fe0f3d3c3baae61d9e8074615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ca8b8eb931430abc01233e01b5dfd320ebed57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c0dc8a04d6797aec30e30d686d7adefca026e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecaea1bc7a4a5a4228dd55c244329f7468db11da` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 49
- Live contracts: 0
- Unknown liveness contracts: 49
- Source-verified contracts: 45
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=15, contamination review=4, source verified unclassified=26, unverified unclassified=4

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | AuthorizationProcessor<br>`0x3874161854d0d5f13b4de2cb5061d9cff547466e` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | contamination review | FlashloanFrankencoin<br>`0x3d60dbd18b930b1710b76b88461e33dcadec96a1` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | contamination review | RewardRouterV0<br>`0xfa6d71ed122a7b3b494116317c2ac3b4e5269339` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | contamination review | VaultAdapterRecoverV1<br>`0x397fb4a34757ac180c0841b26131f25040e2e50b` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | AuthorizePositionV2<br>`0x64335c4fea9108c07e72609c7f97be6f505f3032` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | AuthorizePositionV2<br>`0xc2fe1047ac94b490eeea26db39bef64671efd930` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | AuthorizePositionV2<br>`0xe5487b933e7b27555523afe7d3a2afaf843e33be` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | IFALCSUSDFProxyPriceAdapter<br>`0x50fae3c51a00a46bc2bbceb7390c28caa6794a1c` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | IFALCUSDCProxyPriceAdapter<br>`0x8ef854f54df588785e5d16ede9785760d760f52e` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | IFALCUSDCProxyPriceAdapter<br>`0x998d0c734bae49b8757157c7fe3847e2e416f8fd` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | LeverageRealUnit<br>`0xaf285ce08541908ba3e2b449656f4763a37eda8c` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | MockFlashloanRecipient<br>`0x83aec9c352c9095d19821b0e2272d691860005b8` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | PositionV2Streamer<br>`0x38426f0d45f1a6af367be9daa1ebc272879976d5` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | ReferenceTransfer<br>`0x46eadde3d63612251a2fc962973caa0f0bd80437` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | ReferenceTransfer<br>`0x6a9ffb6727dfd8811b7e67a578e2e576f779ab7e` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | RewardsV1<br>`0x1209e42096a0183c14fd26b6faf5707461b78283` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | RollerPositionV2<br>`0x77350f85c1570393be6fda586cf978608ba72786` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | SavingsToken<br>`0x00e632728d5ab91fe8319760ffdd2d7362e28139` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | SavingsVaultZCHF<br>`0x637f00cab9665cb07d91bfb9c6f3fa8fabfef8bc` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | SUSDFUSDFProxyPriceAdapter<br>`0xbabad428f76d05cba8a3e81035c41579cb610bef` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | SyStUSDStrategyPriceProvider<br>`0x45f3898dacb80b9adeac54269e1aa32547deeca6` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | SZCHFZCHFProxyPriceAdapter<br>`0xd4bbb9cadae5d31d083456827e2dfd94eae7b971` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | VaultAdapterRecoverV1<br>`0x5febefd5aecfefb3352c5edd49d634b1456c4bd7` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | VaultAdapterRecoverV1<br>`0x8f36bbee57acb4857cb97898020b529969fdf221` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | VaultDeployer<br>`0x745211a1e1a58b2b11b932855b30d411c31e25d5` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | XCVXUSDPriceAdapter<br>`0x19a5d0bb1200948adbb6c991494e7292dd8628cb` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | XETHUSDPriceAdapter<br>`0x6165946250dd04740ab1409217e95a4f38374fe9` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | source verified unclassified | XETHUSDPriceAdapter<br>`0x8c158972bead1819c804559e4e664a3d875202fb` | non_address_book | unknown | unknown | verified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56d22ed3dcef5b4fe0f3d3c3baae61d9e8074615` | non_address_book | unknown | unknown | unverified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2ca8b8eb931430abc01233e01b5dfd320ebed57` | non_address_book | unknown | unknown | unverified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3c0dc8a04d6797aec30e30d686d7adefca026e5` | non_address_book | unknown | unknown | unverified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecaea1bc7a4a5a4228dd55c244329f7468db11da` | non_address_book | unknown | unknown | unverified | n/a | `0x0170f42f224b99ccbbee673093589c5f9691dd06` |
| ethereum | candidate review | PositionFactory<br>`0x728310feaca72dc46cd5bf7d739556d5668472ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x14a401702bdd9cf803ce8cb38c5f8723008fbd03` |
| ethereum | candidate review | Frankencoin<br>`0x422d17ccc1442501d039595ffcaaa71b4686bf4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | Frankencoin<br>`0x7a787023f6e18f979b143c79885323a24709b0d8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | MintingHub<br>`0x0e5dfe570e5637f7b6b43f515b30dd08fbfcb9ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | MintingHub<br>`0x4539b08a1f2f9efc8c3f66876eb8d8c1920a4e7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | PositionFactory<br>`0x0cde500e6940931ed190ded77bb48640c9486392` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | PositionFactory<br>`0x63cf7c82460c5d84d10be2219d80f746d8706b7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | PositionFactory<br>`0xcfa9b55ed2b0d97ac4f04f168b6670dd1bbe2080` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | StablecoinBridge<br>`0x4125cd1f826099a4dead6b7746f7f28b30d8402b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | StablecoinBridge<br>`0x7bbe8f18040af0032f4c2435e7a76db6f1e346df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | StablecoinBridge<br>`0x8d8b5d8bd3fb93327747148edd036265be0fa020` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x58f13e67e465d302a733285488f868e917d99629` |
| ethereum | candidate review | Autobidder<br>`0x761ebe1a53d65dcd629965cd89c2d5218250a168` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8525ede9a3f231ff3b88f4ae40f5371626c3f227` |
| ethereum | candidate review | Autobidder<br>`0x79507527b2b48fbe0df98d70d0102a054e17b39a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8525ede9a3f231ff3b88f4ae40f5371626c3f227` |
| ethereum | source verified unclassified | Autobidder<br>`0xa05bfd161ed9b9e7bacd5c03635cb8073e72c4c4` | non_address_book | unknown | unknown | verified | n/a | `0x8525ede9a3f231ff3b88f4ae40f5371626c3f227` |
| ethereum | candidate review | FPSWrapper<br>`0x54e55618ce94738689914036b98fac8b10e0fa16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9aada0f3dbf8390ba0b5f22ff0b5aa814554bbcc` |
| ethereum | candidate review | BurnMintTokenPool<br>`0x9359cd75549dae00cdd8d22297bc9b13fbbe4b79` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb16f9a646201af698a21bd0d3afda0518a86d2a7` |
| ethereum | source verified unclassified | BridgeAccounting<br>`0x88fd2ecd0b9250f203e99e80eb78b0c32b8adb16` | non_address_book | unknown | unknown | verified | n/a | `0xb16f9a646201af698a21bd0d3afda0518a86d2a7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2023-04-frankencoin](https://code4rena.com/reports/2023-04-frankencoin) | Code4rena | Contest | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 6 | n/a |
| [ChainSecurity-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/ChainSecurity-audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [blockbite-audit.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.pdf) | Blockbite | Audit | 2023-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 4 | n/a |
| [ChainSecurity_Frankencoin_Frankencoin_v2024.pdf](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/ChainSecurity_Frankencoin_Frankencoin_v2024.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [frankencoin-audit-report-2024-1.1.pdf (also discovered via alternate URL)](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V2/frankencoin-audit-report-2024-1.1.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 6 | high |
| [blockbite-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/blockbite-audit.md) | Blockbite | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [code4rena-audit.md](https://github.com/Frankencoin-ZCHF/Frankencoin/blob/main/audits/V1/code4rena-audit.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/frankencoin-smart-contracts](https://www.chainsecurity.com/security-audit/frankencoin-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [www.chainsecurity.com/security-audit/frankencoin-v2024](https://www.chainsecurity.com/security-audit/frankencoin-v2024) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 3 | n/a |
| [www.chainsecurity.com/security-audit/frankencoin-ccip-bridge](https://www.chainsecurity.com/security-audit/frankencoin-ccip-bridge) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [AuditReport-Frankencoin.pdf](https://frankencoin.com/AuditReport-Frankencoin.pdf) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4648] code4rena.com/reports/2023-04-frankencoin — matched: No reason recorded
- [15622] ChainSecurity-audit.pdf — matched: No reason recorded
- [15623] blockbite-audit.pdf — matched: No reason recorded
- [15624] ChainSecurity_Frankencoin_Frankencoin_v2024.pdf — matched: No reason recorded
- [15625] frankencoin-audit-report-2024-1.1.pdf — no match: Audit report for FrankenCoin by Decurity, period 16/09/2024 to 25/09/2024. Scope explicitly lists 6 contracts.
- [15626] blockbite-audit.md — no match: No reason recorded
- [15627] code4rena-audit.md — no match: The provided text is a comment on a Code4rena audit report, not the full report. It contains no scope section or explicit contract names.
- [15630] www.chainsecurity.com/security-audit/frankencoin-smart-contracts — matched: No reason recorded
- [15631] www.chainsecurity.com/security-audit/frankencoin-v2024 — matched: No reason recorded
- [15632] www.chainsecurity.com/security-audit/frankencoin-ccip-bridge — no match: Only the project name 'Frankencoin CCIP Bridge' is mentioned; no specific contract names or file paths are provided.
- [15633] AuditReport-Frankencoin.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2023-04-frankencoin | ERC20 | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | Equity | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | Frankencoin | own contract | Frankencoin (selected) `0xb58e61c3098d85632df34eecfb899a1ed80921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-04-frankencoin | MintingHub | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | Position | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | PositionFactory | unmatched — not counted | — | — | no |
| code4rena.com/reports/2023-04-frankencoin | StablecoinBridge | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | ERC20 | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | ERC20PermitLight | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Equity | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61c3098d85632df34eecfb899a1ed80921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-audit.pdf | MathUtil | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | MintingHub | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Ownable | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | Position | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | PositionFactory | unmatched — not counted | — | — | no |
| ChainSecurity-audit.pdf | StablecoinBridge | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | ERC20PermitLight | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | Equity | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61c3098d85632df34eecfb899a1ed80921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blockbite-audit.pdf | MintingHub | unmatched — not counted | — | — | no |
| blockbite-audit.pdf | StablecoinBridge | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | FPSWrapper | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61c3098d85632df34eecfb899a1ed80921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Leadrate | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | MintingHub | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Position | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | PositionFactory | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | PositionRoller | unmatched — not counted | — | — | no |
| ChainSecurity_Frankencoin_Frankencoin_v2024.pdf | Savings | unmatched — not counted | — | — | no |
| frankencoin-audit-report-2024-1.1.pdf | Leadrate | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | MintingHub | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | Position | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | PositionFactory | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | PositionRoller | unmatched — not counted | — | listed in scope | no |
| frankencoin-audit-report-2024-1.1.pdf | Savings | unmatched — not counted | — | listed in scope | no |
| blockbite-audit.md | StablecoinBridge | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-smart-contracts | Frankencoin | own contract | Frankencoin (selected) `0xb58e61c3098d85632df34eecfb899a1ed80921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | Frankencoin | own contract | Frankencoin (selected) `0xb58e61c3098d85632df34eecfb899a1ed80921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | MintingHub | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | PositionRoller | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-v2024 | Savings | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/frankencoin-ccip-bridge | Frankencoin CCIP Bridge | unmatched — not counted | — | listed in scope | no |
| AuditReport-Frankencoin.pdf | ERC20PermitLight | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | Equity | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | Frankencoin | own contract | Frankencoin (selected) `0xb58e61c3098d85632df34eecfb899a1ed80921cb` — deployed 2023-10-29 00:57:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| AuditReport-Frankencoin.pdf | MintingHub | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | Position | unmatched — not counted | — | — | no |
| AuditReport-Frankencoin.pdf | StablecoinBridge | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: unique_name=7

Zero-match audit list:

- [15625] frankencoin-audit-report-2024-1.1.pdf
- [15626] blockbite-audit.md
- [15627] code4rena-audit.md
- [15632] www.chainsecurity.com/security-audit/frankencoin-ccip-bridge

Fork inheritance lineage and inherited audits are included when available.
