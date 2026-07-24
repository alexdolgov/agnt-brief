# Agentic Audit Brief: YieldFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 25 across 7 audit(s)
- Eligible audit results: 10 (7 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: YieldFi (`yieldfi`)
- Website: [https://yield.fi/](https://yield.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, optimism, plasma, sonic
- Contract surface: 115 unique implementations (127 raw deployments)
- Coverage basis: 9/12 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,325,276.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, linea, optimism, plasma, sonic. Structural roles: 19 supporting, 15 core, 5 unclassified. 26 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 39
- Structural roles: supporting (19), core (15), unclassified (5)
- Contract kinds: contract (39)
- Detected standards: erc1967proxy (24), ownable (9), erc165 (7), erc20 (1), pausable (1)
- Frameworks: openzeppelin (34), openzeppelin-upgradeable (26), chainlink (7), layerzero (1)
- Upgradeable-pattern rows: 26

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- TransparentUpgradeableProxy (`0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c`, chain 1)
- TransparentUpgradeableProxy (`0x13a9f3f09588c4e5c6cddb1164398630bf929ff0`, chain 1)
- TransparentUpgradeableProxy (`0x3edae9c342ba1c0ece710db1f0c7bccec24ee668`, chain 1)
- TransparentUpgradeableProxy (`0x5c46ed83fc4446282a75d30375d993357aba3878`, chain 1)
- TransparentUpgradeableProxy (`0x67dba3444a99b9788e78932015312b2550241df5`, chain 1)
- TransparentUpgradeableProxy (`0x803438689b101aede853c9604d32aa80f0b3fce1`, chain 1)
- TransparentUpgradeableProxy (`0x95178e55fe7edd0792b9819b7654c9ee076832fa`, chain 1)
- TransparentUpgradeableProxy (`0x9a766451b18df401e39109f8a9f06355be0f7505`, chain 1)
- TransparentUpgradeableProxy (`0xbbb6edf1811fda36f591c617b51d2d43e4963aa6`, chain 1)
- TransparentUpgradeableProxy (`0xc9ec62d1e2ada282c3544178664d98cf62849961`, chain 1)
- TransparentUpgradeableProxy (`0xdd5eff0756db08bad0ff16b66f88f506e7318894`, chain 1)
- TransparentUpgradeableProxy (`0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 39; live-surface rows included: 39 (12 live, 27 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/56 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/12 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 44 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 62
- Confirmed-live implementations: 12 of 115 unique; 103 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/66
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 115
- Raw deployments: 127
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 7 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 75.0% (Cyfrin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 9 | 13.6% | 2026-01 |
| Cyfrin | Tier 1 | 2 | 3.0% | 2025-06 |
| Halborn | Tier 2 | 1 | 1.5% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Administrator | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263554 | `0x803438689b101aede853c9604d32aa80f0b3fce1` | ✅ Audited |
| ChainlinkOracleAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263574 | `0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4` | ✅ Audited |
| FeatureRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263573 | `0xc9ec62d1e2ada282c3544178664d98cf62849961` | ✅ Audited |
| GreenlistFeature | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263568 | `0x13a9f3f09588c4e5c6cddb1164398630bf929ff0` | ✅ Audited |
| LimitsFeature | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263570 | `0xbbb6edf1811fda36f591c617b51d2d43e4963aa6` | ✅ Audited |
| Manager | governance | project_anchor | own_supporting | 1 | ethereum | unit-263566 | `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` | ✅ Audited |
| NAV | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263563 | `0x95178e55fe7edd0792b9819b7654c9ee076832fa` | ✅ Audited |
| PriceOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263565 | `0x67dba3444a99b9788e78932015312b2550241df5` | ✅ Audited |
| VaultFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-263576 | `0x5c46ed83fc4446282a75d30375d993357aba3878` | ✅ Audited |

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Administrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9305a0cc13293b69dee0b9d281d21144b029bdff`; ethereum `0xf2de8048f002b70202d05249810e72914651aa26` | ⚠️ Unaudited |
| BridgeCCIP | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263529 | `0x6be164af10879a86e4643089638b6864ef12b1ee` | ⚠️ Unaudited |
| BridgeCCIP | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263534 | `0xa358f0e78dd6cafa810b6f08e248ba1bf1770604` | ⚠️ Unaudited |
| BridgeCCIP | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-263545 | `0x383d63d824eb3758a721fda66932f160c56924ce` | ⚠️ Unaudited |
| BridgeCCIP | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-263537 | `0x321520f89076836a0e306e4a41bccd1bfd2189d9` | ⚠️ Unaudited |
| BridgeCCIP | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-263552 | `0xb3138a82c715cab9ea8247631b653f6e48385c30` | ⚠️ Unaudited |
| BridgeCCIP | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263541 | `0x8a264a32d73d12e597e9532f1d16bac12948f066` | ⚠️ Unaudited |
| BridgeCCIP | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-263544 | `0xf6aebdeb2add0ab53a0090dc8714719604a9f9df` | ⚠️ Unaudited |
| BridgeLR | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-263530 | `0x8484e4440e22683573e94b4eb040802307942bdc` | ⚠️ Unaudited |
| BridgeMB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b7e6c528d13ade83c85cefbb72158c7e1b19f60` | ⚠️ Unaudited |
| LockBox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0407d37e3a8cc7e8bcbc69ab31b8da4be25f4d6d`; ethereum `0xbc5c54133673f5de40b2b2ff4c067f17bb12d1c9` | ⚠️ Unaudited |
| LockBox | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263555 | `0x659b5bc7f2f888db3d5901b78cdb34df270e2231` | ⚠️ Unaudited |
| LockBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf60c7f41c93ebb380dee6e7de9ce28b7fd4355d` | ⚠️ Unaudited |
| Manager | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263562 | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ⚠️ Unaudited |
| Manager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263569 | 2 deployments: ethereum `0x88538b8199238efe82f53862b1eaf5e705993935`; ethereum `0xa356be4391227195b16ae6a26f1f23f606744dd2` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ⚠️ Unaudited |
| Receipt | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263575 | 2 deployments: ethereum `0x154e5dd6d7a0efbb343a3f2146a31590eeb8deed`; ethereum `0xce1f3d4d4f8de6a4b5b8e73c174d46ba135f68f1` | ⚠️ Unaudited |
| Receipt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441e2ebcefb4fcfa3608be416df7a5bb5927a693` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263558 | `0x9a766451b18df401e39109f8a9f06355be0f7505` | ⚠️ Unaudited |
| Registry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x9a766451b18df401e39109f8a9f06355be0f7505` | ⚠️ Unaudited |
| SToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263556 | 2 deployments: ethereum `0x20b8f4a172e3a0bdb96c89d49629e83f73f4dc0d`; ethereum `0x4f8e1426a9d10bddc11d26042ad270f16ccb95f2` | ⚠️ Unaudited |
| SToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f4a9ef56b164da0bf06218030c7c16d592cedcc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x24bc4128942786f7cff18af3f71041d003cb6e01`; ethereum `0xaec8c110aa8f326b11d068ed6380ea4263337026`; ethereum `0xdfbd303d2aea36919978aabae46b182c0270db53` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5c46ed83fc4446282a75d30375d993357aba3878`; sonic `0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x06c2c73f30135c831d010ec7b82d0f32321c4f27`; ethereum `0x386e0983d0e05f5239fd029793ef3ba37b468e9c`; ethereum `0xd04ae722b3fe56812e13bb212a79cea7c1b08ff0` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-263564 | `0x3edae9c342ba1c0ece710db1f0c7bccec24ee668` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-263577 | `0xdd5eff0756db08bad0ff16b66f88f506e7318894` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdd5eff0756db08bad0ff16b66f88f506e7318894` | ⚠️ Unaudited |
| vyToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263567 | `0x1e2a5622178f93efd4349e2eb3dbdf2761749e1b` | ⚠️ Unaudited |
| vyToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263572 | `0x2e3c5e514eef46727de1fe44618027a9b70d92fc` | ⚠️ Unaudited |
| vyToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263571 | `0x3073112c2c4800b89764973d5790ccc7fba5c9f9` | ⚠️ Unaudited |
| vyTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de` | ⚠️ Unaudited |
| vyTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de` | ⚠️ Unaudited |
| vyTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8c93a6752bfe29fda26eba8df4390c642e6a7f90` | ⚠️ Unaudited |
| vyTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de` | ⚠️ Unaudited |
| vyTokenL2 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-263581 | `0x8c93a6752bfe29fda26eba8df4390c642e6a7f90` | ⚠️ Unaudited |
| vyTokenL2 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-263578 | `0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de` | ⚠️ Unaudited |
| vyTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de` | ⚠️ Unaudited |
| Yield | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa52bc229c750b35c10d54f23ad3cb6e8155df01a`; ethereum `0xf4ef3ba63593dfd0967577b2bb3c9ba51d78427b` | ⚠️ Unaudited |
| YToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263559 | `0x19ebd191f7a24ece672ba13a302212b5ef7f35cb` | ⚠️ Unaudited |
| YToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263561 | `0x1ce7d9942ff78c328a4181b9f3826fee6d845a97` | ⚠️ Unaudited |
| YToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79e243f6504615497c1374ea0b6365dd1ef82c8d`; ethereum `0x8ae736308611addd0c6581abc46676a3153fdd69` | ⚠️ Unaudited |
| YToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263557 | `0x8464f6ecae1ea58ec816c13f964030eab8ec123a` | ⚠️ Unaudited |
| YToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-263560 | `0xa01200b2e74de6489cf56864e3d76bbc06fc6c43` | ⚠️ Unaudited |
| YTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x4772d2e014f9fc3a820c444e3313968e9a5c8121` | ⚠️ Unaudited |
| YTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x4772d2e014f9fc3a820c444e3313968e9a5c8121` | ⚠️ Unaudited |
| YTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x4772d2e014f9fc3a820c444e3313968e9a5c8121` | ⚠️ Unaudited |
| YTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1f52edf2815bfa625890b61d6bf43ddc24671fe8` | ⚠️ Unaudited |
| YTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4772d2e014f9fc3a820c444e3313968e9a5c8121` | ⚠️ Unaudited |
| YTokenL2 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-263580 | `0x1f52edf2815bfa625890b61d6bf43ddc24671fe8` | ⚠️ Unaudited |
| YTokenL2 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-263579 | `0x4772d2e014f9fc3a820c444e3313968e9a5c8121` | ⚠️ Unaudited |
| YTokenL2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x4772d2e014f9fc3a820c444e3313968e9a5c8121` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ❓ Unverified |
| Proxy (impl: 0x0ca01ee564363e115c1990fac21314ddfa210f4a) | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | linea | unit-263582 | `0xde3fdbd847b25b8621174253a399b6b8406383d6` | ❓ Unverified |
| Proxy (impl: 0x4ed3166fab585d9da1126955c9b1f0f61c971801) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0xf4f447e6afa04c9d11ef0e2fc0d7f19c24ee55de` | ❓ Unverified |
| Proxy (impl: 0x52cb1a9a9154f0e0a3c7ce08f95caee6062dbca9) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x4772d2e014f9fc3a820c444e3313968e9a5c8121` | ❓ Unverified |
| Proxy (impl: 0x6c6e88a438092fda33ad2304c54180b41c35fa64) | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | linea | unit-263583 | `0x168bc4db5dcbeca279983324d3082c47e47569e7` | ❓ Unverified |
| Proxy (impl: 0x7b7e9dc2ff8e48e311d727786ed6aa7b1ce6bfa8) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x03acc35286baae6d73d99a9f14ef13752208c8dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18454435c26fca541e313a91c4ec2782946e4643` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263531 | `0x1ce7d9942ff78c328a4181b9f3826fee6d845a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1fee685b2d36d030b042ebfbf26c12875776e734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3019788f387cfec252be92c5b4611974b1eace4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3111e08e0a1277f96072699441555505ace926b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263532 | `0x4ca1da924629b53615e2c3c2389fc8760f92c87b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x87e8298ff74d5542d72b7ff07475ddf11f6f3dec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263533 | `0x895e15020c3f52ddd4d8e9514eb83c39f53b1579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f88d71b25d385a388704cf32058e194b4083e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90944169b72cf95e600c8b31133dd2ae2f10c849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263535 | `0xabd5e0c639d09272688854c43d47b309769413ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc35eaff1c57d20120f0051cbe602fc9e0667dfed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca40c0555e8cac728b31ff66475ae761bff405b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-263536 | `0xd623117f3f6190e3144038b5f0f0c2db5f319939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xedd9683a59d504979f4fce6da4f1b7b212d5c8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fee685b2d36d030b042ebfbf26c12875776e734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3019788f387cfec252be92c5b4611974b1eace4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3111e08e0a1277f96072699441555505ace926b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-263547 | `0x4ca1da924629b53615e2c3c2389fc8760f92c87b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-263548 | `0x87e8298ff74d5542d72b7ff07475ddf11f6f3dec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-263549 | `0x895e15020c3f52ddd4d8e9514eb83c39f53b1579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f88d71b25d385a388704cf32058e194b4083e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90944169b72cf95e600c8b31133dd2ae2f10c849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-263550 | `0x9305a0cc13293b69dee0b9d281d21144b029bdff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-263551 | `0x9f4a9ef56b164da0bf06218030c7c16d592cedcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2de8048f002b70202d05249810e72914651aa26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-263553 | `0xe582262bc5c35dc213388a928da5162753d9ef2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fee685b2d36d030b042ebfbf26c12875776e734` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20fa2ad95de41777260fba4909a67f46c3affad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3019788f387cfec252be92c5b4611974b1eace4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3111e08e0a1277f96072699441555505ace926b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263538 | `0x4ca1da924629b53615e2c3c2389fc8760f92c87b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263539 | `0x87e8298ff74d5542d72b7ff07475ddf11f6f3dec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263540 | `0x895e15020c3f52ddd4d8e9514eb83c39f53b1579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f88d71b25d385a388704cf32058e194b4083e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90944169b72cf95e600c8b31133dd2ae2f10c849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263542 | `0x9305a0cc13293b69dee0b9d281d21144b029bdff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-263543 | `0x9f4a9ef56b164da0bf06218030c7c16d592cedcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd623117f3f6190e3144038b5f0f0c2db5f319939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2de8048f002b70202d05249810e72914651aa26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf41e5872ed4ec9bf07875959afe0a80125c8cb27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-263546 | `0xda2d9e7233984db3b928241b04f003fb569c225f` | ❓ Unverified |
| YTokenL2 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | linea | unit-263584 | `0x4e559dbccbe87de66c6a9f3f25231096f24c2e28` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 47
- Live contracts: 0
- Unknown liveness contracts: 47
- Source-verified contracts: 21
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=8, exact address book overlap=1, source verified unclassified=12, unverified unclassified=26

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | TransparentUpgradeableProxy<br>`0x154e5dd6d7a0efbb343a3f2146a31590eeb8deed` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| candidate review | TransparentUpgradeableProxy<br>`0x24bc4128942786f7cff18af3f71041d003cb6e01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| candidate review | TransparentUpgradeableProxy<br>`0x4f8e1426a9d10bddc11d26042ad270f16ccb95f2` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| candidate review | TransparentUpgradeableProxy<br>`0x88538b8199238efe82f53862b1eaf5e705993935` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| candidate review | TransparentUpgradeableProxy<br>`0x9305a0cc13293b69dee0b9d281d21144b029bdff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| candidate review | TransparentUpgradeableProxy<br>`0xaec8c110aa8f326b11d068ed6380ea4263337026` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| candidate review | TransparentUpgradeableProxy<br>`0xbc5c54133673f5de40b2b2ff4c067f17bb12d1c9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| candidate review | TransparentUpgradeableProxy<br>`0xf4ef3ba63593dfd0967577b2bb3c9ba51d78427b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| exact address book overlap | BridgeLR<br>`0x8484e4440e22683573e94b4eb040802307942bdc` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | Administrator<br>`0xf2de8048f002b70202d05249810e72914651aa26` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | BridgeMB<br>`0x0b7e6c528d13ade83c85cefbb72158c7e1b19f60` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | LockBox<br>`0x0407d37e3a8cc7e8bcbc69ab31b8da4be25f4d6d` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | LockBox<br>`0xaf60c7f41c93ebb380dee6e7de9ce28b7fd4355d` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | Manager<br>`0xa356be4391227195b16ae6a26f1f23f606744dd2` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | Receipt<br>`0x441e2ebcefb4fcfa3608be416df7a5bb5927a693` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | Receipt<br>`0xce1f3d4d4f8de6a4b5b8e73c174d46ba135f68f1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | SToken<br>`0x20b8f4a172e3a0bdb96c89d49629e83f73f4dc0d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | SToken<br>`0x9f4a9ef56b164da0bf06218030c7c16d592cedcc` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | Yield<br>`0xa52bc229c750b35c10d54f23ad3cb6e8155df01a` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | YToken<br>`0x79e243f6504615497c1374ea0b6365dd1ef82c8d` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| source verified unclassified | YToken<br>`0x8ae736308611addd0c6581abc46676a3153fdd69` | non_address_book | unknown | unknown | verified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xdfbd303d2aea36919978aabae46b182c0270db53` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x18454435c26fca541e313a91c4ec2782946e4643` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x1fee685b2d36d030b042ebfbf26c12875776e734` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x3019788f387cfec252be92c5b4611974b1eace4b` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x3111e08e0a1277f96072699441555505ace926b5` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x87e8298ff74d5542d72b7ff07475ddf11f6f3dec` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x8f88d71b25d385a388704cf32058e194b4083e2b` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x90944169b72cf95e600c8b31133dd2ae2f10c849` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xc35eaff1c57d20120f0051cbe602fc9e0667dfed` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xca40c0555e8cac728b31ff66475ae761bff405b1` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xedd9683a59d504979f4fce6da4f1b7b212d5c8df` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x1fee685b2d36d030b042ebfbf26c12875776e734` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x3019788f387cfec252be92c5b4611974b1eace4b` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x3111e08e0a1277f96072699441555505ace926b5` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x8f88d71b25d385a388704cf32058e194b4083e2b` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x90944169b72cf95e600c8b31133dd2ae2f10c849` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xf2de8048f002b70202d05249810e72914651aa26` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x1fee685b2d36d030b042ebfbf26c12875776e734` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x20fa2ad95de41777260fba4909a67f46c3affad3` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x3019788f387cfec252be92c5b4611974b1eace4b` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x3111e08e0a1277f96072699441555505ace926b5` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x8f88d71b25d385a388704cf32058e194b4083e2b` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0x90944169b72cf95e600c8b31133dd2ae2f10c849` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xd623117f3f6190e3144038b5f0f0c2db5f319939` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xf2de8048f002b70202d05249810e72914651aa26` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |
| unverified unclassified | UnnamedContract<br>`0xf41e5872ed4ec9bf07875959afe0a80125c8cb27` | non_address_book | unknown | unknown | unverified | n/a | `0x7cf37712eb0b50644e70828d5f5c3ce5b054c479` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.03%20-%20Final%20-%20YieldFi%20Collaborative%20Audit%20Report%201770139561.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | matched | 9 | 9 | 0 | 28 | high |
| [2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf) | Cyfrin | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 8 | n/a |
| [2025-04-24-cyfrin-yieldfi-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-04-24-cyfrin-yieldfi-v2.0.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | n/a | matched | 2 | 2 | 0 | 19 | n/a |
| [www.halborn.com/audits/yieldfi](https://www.halborn.com/audits/yieldfi) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f](https://cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f) | Spearbit | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [YieldFi Sherlock Audit Report.pdf](https://1387302295-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FngccAZ1n0zWXTry6FNZe%2Fuploads%2FWGbA8QIQKH1HiQnwHKsx%2FYieldFi%20Sherlock%20Audit%20Report.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | matched | 9 | 9 | 0 | 28 | high |
| [Cyfrin x YieldFi Audit Report.pdf](https://1387302295-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FngccAZ1n0zWXTry6FNZe%2Fuploads%2Ftwk0cgnmhBblf39Datqn%2FCyfrin%20x%20YieldFi%20Audit%20Report.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [YieldFi x Cyfrin Team Audit Report.pdf](https://1387302295-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FngccAZ1n0zWXTry6FNZe%2Fuploads%2F5VT5dryzgdEJcRBhfFlO%2FYieldFi%20x%20Cyfrin%20Team%20Audit%20Report.pdf) | Cyfrin | Audit | 2025-04 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 19 | high |
| [YieldFi x Halborn Audit Report.pdf](https://1387302295-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FngccAZ1n0zWXTry6FNZe%2Fuploads%2F6G1lzqM61a6rAbv3tNa3%2FYieldFi%20x%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 22 | high |
| [YieldFi x Spearbit : Cantina Audit Report.pdf](https://1387302295-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FngccAZ1n0zWXTry6FNZe%2Fuploads%2FE90WMSxns6OSX60RRRYg%2FYieldFi%20x%20Spearbit%20%3A%20Cantina%20Audit%20Report.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2033] 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf — matched: All contracts listed in the Scope section of the audit report. Date range December 29 - January 14, 2026, end date used.
- [2034] 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf — matched: No reason recorded
- [2035] 2025-04-24-cyfrin-yieldfi-v2.0.pdf — matched: No reason recorded
- [2036] www.halborn.com/audits/yieldfi — no match: The provided text is a website navigation/marketing page for Halborn, not an audit report. No contracts, scope, or audit date are present.
- [2037] cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f — no match: No scope section or contract names found in the provided text.
- [28646] YieldFi Sherlock Audit Report.pdf — matched: All contracts listed in the Scope section of the audit report. Date range December 29 - January 14, 2026, end date used.
- [28647] Cyfrin x YieldFi Audit Report.pdf — matched: All contracts listed in Audit Scope section. Audit timeline: May 26th - May 27th, 2025, so end date is May 27, 2025.
- [28648] YieldFi x Cyfrin Team Audit Report.pdf — matched: Extracted 21 contract names from the Audit Scope section (page 3) and findings. OracleAdapter is not in the scope file list but is audited in findings. Date from cover page: April 24, 2025.
- [28649] YieldFi x Halborn Audit Report.pdf — matched: All contracts listed in the Scope section of the report.
- [28650] YieldFi x Spearbit : Cantina Audit Report.pdf — no match: Contracts extracted from finding contexts in the report. No explicit scope section found, but these are the only contracts referenced in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Administrator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x803438689b101aede853c9604d32aa80f0b3fce1` — deployed 2026-01-15 17:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IEvents | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IFeature | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IManager | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IRegistry | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Manager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` — deployed 2026-01-15 17:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | NAV | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x95178e55fe7edd0792b9819b7654c9ee076832fa` — deployed 2026-01-15 17:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Registry | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x9a766451b18df401e39109f8a9f06355be0f7505` — deployed 2026-01-15 17:52:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5c46ed83fc4446282a75d30375d993357aba3878` — deployed 2026-01-15 17:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc9ec62d1e2ada282c3544178664d98cf62849961` — deployed 2026-01-15 17:53:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Vault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xdd5eff0756db08bad0ff16b66f88f506e7318894` — deployed 2026-01-22 12:41:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3edae9c342ba1c0ece710db1f0c7bccec24ee668` — deployed 2026-01-15 19:43:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | FeatureRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc9ec62d1e2ada282c3544178664d98cf62849961` — deployed 2026-01-15 17:53:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | GreenlistFeature | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x13a9f3f09588c4e5c6cddb1164398630bf929ff0` — deployed 2026-01-15 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IGreenlistFeature | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IFeatureRegistry | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | ILimitsFeature | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | LimitsFeature | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xbbb6edf1811fda36f591c617b51d2d43e4963aa6` — deployed 2026-01-15 17:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | VaultFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5c46ed83fc4446282a75d30375d993357aba3878` — deployed 2026-01-15 17:56:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IAccessControl | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IBlackList | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IRole | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | AccountingLib | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | AddressLib | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | ProxyDeployer | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | SafeCastLib | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | SignerLib | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | ChainlinkOracleAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4` — deployed 2026-01-16 18:12:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IOracleAdapter | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2026.02.03 - Final - YieldFi Collaborative Audit Report 1770139561.pdf | PriceOracle | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x67dba3444a99b9788e78932015312b2550241df5` — deployed 2026-01-15 17:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | BridgeCCIP | unmatched — not counted | — | — | no |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | BridgeMB | unmatched — not counted | — | — | no |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | LockBox | unmatched — not counted | — | — | no |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | Manager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` — deployed 2026-01-15 17:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | YToken | unmatched — not counted | — | — | no |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | YTokenL2 | unmatched — not counted | — | — | no |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | Yield | unmatched — not counted | — | — | no |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | dYTokenL1 | unmatched — not counted | — | — | no |
| 2025-06-17-cyfrin-yieldfi-pr19-vytoken-v2.2.pdf | dYTokenL2 | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Access | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Administrator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x803438689b101aede853c9604d32aa80f0b3fce1` — deployed 2026-01-15 17:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | BondReceipt | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Bridge | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | BridgeCCIP | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | BridgeLR | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | BridgeMB | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Codec | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Common | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Constants | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Helpers | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | LockBox | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | MPC | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Manager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` — deployed 2026-01-15 17:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | OracleAdapter | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | PerpetualBond | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Receipt | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | SwapHelper | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | YToken | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | YTokenL2 | unmatched — not counted | — | — | no |
| 2025-04-24-cyfrin-yieldfi-v2.0.pdf | Yield | unmatched — not counted | — | — | no |
| YieldFi Sherlock Audit Report.pdf | AccessControl | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | Administrator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x803438689b101aede853c9604d32aa80f0b3fce1` — deployed 2026-01-15 17:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | IEvents | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IFeature | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IManager | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IRegistry | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | Manager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` — deployed 2026-01-15 17:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | NAV | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x95178e55fe7edd0792b9819b7654c9ee076832fa` — deployed 2026-01-15 17:54:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | Registry | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x9a766451b18df401e39109f8a9f06355be0f7505` — deployed 2026-01-15 17:52:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5c46ed83fc4446282a75d30375d993357aba3878` — deployed 2026-01-15 17:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc9ec62d1e2ada282c3544178664d98cf62849961` — deployed 2026-01-15 17:53:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| YieldFi Sherlock Audit Report.pdf | Vault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xdd5eff0756db08bad0ff16b66f88f506e7318894` — deployed 2026-01-22 12:41:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3edae9c342ba1c0ece710db1f0c7bccec24ee668` — deployed 2026-01-15 19:43:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| YieldFi Sherlock Audit Report.pdf | FeatureRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc9ec62d1e2ada282c3544178664d98cf62849961` — deployed 2026-01-15 17:53:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | GreenlistFeature | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x13a9f3f09588c4e5c6cddb1164398630bf929ff0` — deployed 2026-01-15 17:56:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | IGreenlistFeature | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IFeatureRegistry | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | ILimitsFeature | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | LimitsFeature | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xbbb6edf1811fda36f591c617b51d2d43e4963aa6` — deployed 2026-01-15 17:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IVaultFactory | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | VaultFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5c46ed83fc4446282a75d30375d993357aba3878` — deployed 2026-01-15 17:56:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | IAccessControl | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IBlackList | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IRole | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | AccountingLib | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | AddressLib | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | MathLib | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | ProxyDeployer | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | SafeCastLib | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | SignerLib | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | ChainlinkOracleAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf6cdcf759e39c29eb843cbfd549a7d9b82abdba4` — deployed 2026-01-16 18:12:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi Sherlock Audit Report.pdf | IOracleAdapter | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| YieldFi Sherlock Audit Report.pdf | PriceOracle | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x67dba3444a99b9788e78932015312b2550241df5` — deployed 2026-01-15 17:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin x YieldFi Audit Report.pdf | BridgeMB | unmatched — not counted | — | listed in Audit Scope | no |
| Cyfrin x YieldFi Audit Report.pdf | BridgeCCIP | unmatched — not counted | — | listed in Audit Scope | no |
| Cyfrin x YieldFi Audit Report.pdf | Manager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` — deployed 2026-01-15 17:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin x YieldFi Audit Report.pdf | LockBox | unmatched — not counted | — | listed in Audit Scope | no |
| Cyfrin x YieldFi Audit Report.pdf | Yield | unmatched — not counted | — | listed in Audit Scope | no |
| Cyfrin x YieldFi Audit Report.pdf | YToken | unmatched — not counted | — | listed in Audit Scope | no |
| Cyfrin x YieldFi Audit Report.pdf | YTokenL2 | unmatched — not counted | — | listed in Audit Scope | no |
| Cyfrin x YieldFi Audit Report.pdf | dYTokenL1 | unmatched — not counted | — | listed in Audit Scope | no |
| Cyfrin x YieldFi Audit Report.pdf | dYTokenL2 | unmatched — not counted | — | listed in Audit Scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Access | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Administrator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x803438689b101aede853c9604d32aa80f0b3fce1` — deployed 2026-01-15 17:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi x Cyfrin Team Audit Report.pdf | BridgeCCIP | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | BridgeLR | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | BridgeMB | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | LockBox | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Yield | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | YToken | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | YTokenL2 | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | BondReceipt | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Manager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x08fb9833a5a84d5bcecdf5a4a635d33260c5f05c` — deployed 2026-01-15 17:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi x Cyfrin Team Audit Report.pdf | MPC | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | PerpetualBond | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Receipt | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | SwapHelper | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Codec | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Common | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| YieldFi x Cyfrin Team Audit Report.pdf | OracleAdapter | unmatched — not counted | — | mentioned in findings as audited contract | no |
| YieldFi x Halborn Audit Report.pdf | Yield | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | ILockBox | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | IMinter | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | ISToken | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | IYToken | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | YTokenL2 | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | STokenL2 | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | LockBox | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | MPC | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | SToken | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | YToken | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | BridgeLR | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | BridgeMB | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | Codec | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | Common | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | IBlackList | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | IRole | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | Access | unmatched — not counted | — | listed in scope | no |
| YieldFi x Halborn Audit Report.pdf | Administrator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x803438689b101aede853c9604d32aa80f0b3fce1` — deployed 2026-01-15 17:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YieldFi x Spearbit : Cantina Audit Report.pdf | SToken | unmatched — not counted | — | Context:SToken.sol#L79 | no |
| YieldFi x Spearbit : Cantina Audit Report.pdf | STokenL2 | unmatched — not counted | — | Context:STokenL2.sol#L26 | no |
| YieldFi x Spearbit : Cantina Audit Report.pdf | ISToken | unmatched — not counted | — | Context:ISToken.sol#L6 | no |
| YieldFi x Spearbit : Cantina Audit Report.pdf | Bridge | unmatched — not counted | — | Context:Bridge.sol#L66 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9a766451b18df401e39109f8a9f06355be0f7505` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3edae9c342ba1c0ece710db1f0c7bccec24ee668` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdd5eff0756db08bad0ff16b66f88f506e7318894` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 49 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (25 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 132 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=2
- Match method counts: unique_name=25

Zero-match audit list:

- [2036] www.halborn.com/audits/yieldfi
- [2037] cantina.xyz/portfolio/d13d31e4-72c7-404c-b281-f6ccdd3c534f
- [28650] YieldFi x Spearbit : Cantina Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
