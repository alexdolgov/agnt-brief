# Agentic Audit Brief: Swell

## Export Authority

- Production state: **published scope**
- Raw selected rows: 34 across 10 audit(s)
- Eligible audit results: 16 (10 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Swell (`swell`)
- Website: [https://www.swellnetwork.io/](https://www.swellnetwork.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, swellchain
- Contract surface: 52 unique implementations (61 raw deployments)
- Coverage basis: 13/28 confirmed own live verified implementations (46.4%); conservative 46.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $92,570,809.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Swell. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 37 contract row(s) across ethereum. Structural roles: 22 supporting, 12 core, 3 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 37
- Structural roles: supporting (22), core (12), unclassified (3)
- Contract kinds: contract (34), unclassified (3)
- Detected standards: erc1967proxy (6), erc165 (2), erc20permit (2), erc20 (1)
- Frameworks: openzeppelin (28), solmate (13), openzeppelin-upgradeable (6), foundry (1)
- Upgradeable-pattern rows: 6

## Fork Analysis

6 of 28 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

**Accountant** (`0x15a94d49fac6e23e17c1366c999117a1de8ba7b6`, chain 1)
Origin: yearn (`0x1f3998...b27c8a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Accountant** (`0x48dacb0b938aa6d5752ca2ea23cd8593fafb3825`, chain 1)
Origin: yearn (`0x1f3998...b27c8a`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DelayedWithdraw** (`0x805c6d95c9e707332215f42cb89f93752ffa55b8`, chain 1)
Origin: mantle-restaking (`0x12be34...66b113`)
Containment: 88.2% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- safeLockedShares(address,uint256,ERC20)
- transferDustToStrategy(ERC20)

Removals (removed from original):
- setPullFundsFromVault(bool)
- withdrawNonBoringToken(ERC20,uint256)

**Registry** (`0x88b96f11ab91d282b4200b73fe401f6fc388603a`, chain 1)
Origin: yearn (`0xd40ecf...45b038`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isLegacyVault(address)
- setLegacyRegistry(address)

**Registry** (`0xe5fcbde076f36bb076170758f8e3aec7412c5f91`, chain 1)
Origin: yearn (`0xd40ecf...45b038`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isLegacyVault(address)
- setLegacyRegistry(address)

**RoleManager** (`0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1`, chain 1)
Origin: lido (`0x1bb44f...975bf3`)
Containment: 100.0% - 37 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x975304c676eb3dc86cd336138328e107a95eaa50`, chain 1)
- UnnamedContract (`0xaae0b305b3f1edde7b11b680d4fa9252f7a1c524`, chain 1)
- BeaconProxy (`0x8d0b4dfccc8b2a268486d9754b135d8ad1ee7258`, chain 1)
- DelayedWithdraw (`0x755a078dee1c264a3053f02cd634e750d505cf85`, chain 1)
- Keeper (`0xc2a55871a713fb98a6b60e2e76fc94021c9f182f`, chain 1)
- RegistryFactory (`0x939f1cc163fdc38a77571019eb4ad1794873bf8c`, chain 1)
- RegistryFactory (`0xff22ea467301010f1364fc154c13e0c86fcfb077`, chain 1)
- ReleaseRegistry (`0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6`, chain 1)
- ReleaseRegistry (`0x70f8ac14dfdec437aba5e30c7b509dd01e1da901`, chain 1)
- RolesAuthority (`0x9d663f1dd3cb752b47301abdc22d620d1868f377`, chain 1)
- RolesAuthority (`0xa9bd691b166aafcc9ef55aabc1960825630558d6`, chain 1)
- SwellToken (`0x0a6e7ba5042b38349e437ec6db6214aec7b35676`, chain 1)
- TransparentUpgradeableProxy (`0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d`, chain 1)
- TransparentUpgradeableProxy (`0x5e6342d8090665be14eeb8154c8a87b7249a4889`, chain 1)
- TransparentUpgradeableProxy (`0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39`, chain 1)
- TransparentUpgradeableProxy (`0xf951e335afb289353dc249e82926178eac7ded78`, chain 1)
- TransparentUpgradeableProxy (`0xfae103dc9cf190ed75350761e95403b7b8afa6c0`, chain 1)
- WithdrawLimitModule (`0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22`, chain 1)
- WithdrawLimitModule (`0xa2ed40f46c391ddd30094e866aac913a20f17216`, chain 1)
- Yearn V3 Vault (`0x358d94b5b2f147d741088803d932acb566acb7b6`, chain 1)
- Yearn V3 Vault (`0x8db2350d78abc13f5673a411d4700bcf87864dde`, chain 1)
- Yearn Vault Factory (`0x981771292052c5f77b14a3bd4df22e43a8b17bb0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 37; live-surface rows included: 37 (28 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/28 (46.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 29 of 52 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 13/50
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 52
- Raw deployments: 61
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 14 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 39.3% (ChainSecurity, Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 8 | 16.0% | 2024-08 |
| Nethermind | Tier 2 | 6 | 12.0% | 2024-08 |
| Sigma Prime | Tier 2 | 5 | 10.0% | 2024-07 |
| Cyfrin | Tier 1 | 3 | 6.0% | 2024-02 |
| Hexens | Tier 2 | 3 | 6.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accountant | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393560 | `0x48dacb0b938aa6d5752ca2ea23cd8593fafb3825` | ✅ Audited |
| DelayedWithdraw | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393581 | `0x805c6d95c9e707332215f42cb89f93752ffa55b8` | ✅ Audited |
| DepositManager | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393612 | `0x5e6342d8090665be14eeb8154c8a87b7249a4889` | ✅ Audited |
| DepositManager | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393613 | `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` | ✅ Audited |
| Keeper | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393602 | `0xc2a55871a713fb98a6b60e2e76fc94021c9f182f` | ✅ Audited |
| NodeOperatorRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-393611 | `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` | ✅ Audited |
| RegistryFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-393587 | `0x939f1cc163fdc38a77571019eb4ad1794873bf8c` | ✅ Audited |
| ReleaseRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393565 | `0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6` | ✅ Audited |
| RoleManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-393595 | `0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1` | ✅ Audited |
| RswETH | token | project_anchor | own_supporting | 1 | ethereum | unit-393606 | `0xfae103dc9cf190ed75350761e95403b7b8afa6c0` | ✅ Audited |
| swETH | token | project_anchor | own_supporting | 1 | ethereum | unit-393610 | `0xf951e335afb289353dc249e82926178eac7ded78` | ✅ Audited |
| TokenizedStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393608 | 2 deployments: ethereum `0x8041ba598f0e656ebe80c67289efb42c09e86ae3`; ethereum `0x975304c676eb3dc86cd336138328e107a95eaa50` | ✅ Audited |
| WithdrawLimitModule | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393563 | `0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accountant | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393550 | `0x15a94d49fac6e23e17c1366c999117a1de8ba7b6` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393558 | `0x411c78bc8c36c3c66784514f28c56209e1df2755` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393573 | `0x6bbf58f1a95d22f497fd2e7f640fae94481b1a08` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393567 | `0x66e47e6957b85cf62564610b76dd206bb04d831a` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393593 | `0x9ed15383940cc380faef0a75edace507cc775f22` | ⚠️ Unaudited |
| DelayedWithdraw | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393579 | `0x755a078dee1c264a3053f02cd634e750d505cf85` | ⚠️ Unaudited |
| DelayedWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec6de7031ce1a284d13b551ef8c4c04b6fdf773c` | ⚠️ Unaudited |
| EigenPod | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393607 | `0x8d0b4dfccc8b2a268486d9754b135d8ad1ee7258` | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2`; ethereum `0xecf3376512edaca4fbb63d2c67d12a0397d24121` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393570 | `0x69fc700226e9e12d8c5e46a4b50a78efb64f50c0` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393575 | `0x6cea0a42a44cabcc42b1ec31c3d714dcaae91e06` | ⚠️ Unaudited |
| OFTAdapterSwETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1b3426e557d6756d8a8859a0779373236f94e2` | ⚠️ Unaudited |
| OracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa419026809e2d13bc73dee13992e7873ab605981` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6748220a79446867eb41a824b4f74a92fc0931a9`; ethereum `0x95e8bacd0449a513d954d2ccb5ef48b8ed151ef6` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393583 | `0x88b96f11ab91d282b4200b73fe401f6fc388603a` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393604 | `0xe5fcbde076f36bb076170758f8e3aec7412c5f91` | ⚠️ Unaudited |
| RegistryFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-393605 | `0xff22ea467301010f1364fc154c13e0c86fcfb077` | ⚠️ Unaudited |
| ReleaseRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393577 | `0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` | ⚠️ Unaudited |
| RoleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1bb44f9d91b4276621550aeea5d2d96279975bf3`; ethereum `0x8413e65374fca711af5eaddcf7191461a1f4d6af`; ethereum `0xd905418c46d8141dd80ba065e694abd4dfd5b4a1` | ⚠️ Unaudited |
| RolesAuthority | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393554 | `0x1f5dddf627c3796a589c6271b36a570f18d3a016` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2db7583852c700549b710fd79dd1b54af2efa4dd` | ⚠️ Unaudited |
| RolesAuthority | governance | project_anchor | own_supporting | 0 | ethereum | unit-393591 | `0x9d663f1dd3cb752b47301abdc22d620d1868f377` | ⚠️ Unaudited |
| RolesAuthority | governance | project_anchor | own_supporting | 0 | ethereum | unit-393599 | `0xa9bd691b166aafcc9ef55aabc1960825630558d6` | ⚠️ Unaudited |
| RSwellOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428cda6c1994b926f75a4830d5baedee9db2ac58` | ⚠️ Unaudited |
| SimpleStakingERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d43a6cb8da0e855a42fb6b0733a0498531d774` | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2`; ethereum `0xa5bd95bfd47d439ce544bcc22b642bf46a2aa3e2` | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09341022ea237a4db1644de7ccf8fa0e489d85b7` | ⚠️ Unaudited |
| SwellToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393549 | `0x0a6e7ba5042b38349e437ec6db6214aec7b35676` | ⚠️ Unaudited |
| SwETHOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b07fb810ef909b01f959911cef2cc834433f562`; ethereum `0xd98f5cd9699d2824149015985df21cc568c27b5e` | ⚠️ Unaudited |
| SymbioticAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x2a6a2beebf6d65e03246087a41812db1c5c0caf8`; ethereum `0x69dda92dd42040c1290a7870b9fc1dc05e41836a`; ethereum `0x9e07af58c4c8893b0509e5d6d0ab8c92083fdae7` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393552 | `0x1da9cefa0f46b2087b2cf7dbf9e62dd94076ece1` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393569 | `0x685adb4797fb38d4fc4a69750aa048b398160429` | ⚠️ Unaudited |
| TokenizedStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393609 | `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` | ⚠️ Unaudited |
| WithdrawLimitModule | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393597 | `0xa2ed40f46c391ddd30094e866aac913a20f17216` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393556 | `0x358d94b5b2f147d741088803d932acb566acb7b6` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393585 | `0x8db2350d78abc13f5673a411d4700bcf87864dde` | ⚠️ Unaudited |
| Yearn Vault Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-393589 | `0x981771292052c5f77b14a3bd4df22e43a8b17bb0` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-393548 | `0x05fae28773ab9dafd5c8997acee5099fa0d1f219` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393601 | `0xaae0b305b3f1edde7b11b680d4fa9252f7a1c524` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 15
- Live contracts: 2
- Unknown liveness contracts: 13
- Source-verified contracts: 15
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=6, contamination review=3, source verified unclassified=5

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | currently scope matched | AeraStrategy<br>`0x8041ba598f0e656ebe80c67289efb42c09e86ae3` | project_anchor | unknown | live | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | RoleManager<br>`0x1bb44f9d91b4276621550aeea5d2d96279975bf3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | RoleManager<br>`0x8413e65374fca711af5eaddcf7191461a1f4d6af` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | RoleManager<br>`0xd905418c46d8141dd80ba065e694abd4dfd5b4a1` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x2a6a2beebf6d65e03246087a41812db1c5c0caf8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x69dda92dd42040c1290a7870b9fc1dc05e41836a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x9e07af58c4c8893b0509e5d6d0ab8c92083fdae7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | AeraStrategy<br>`0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` | project_anchor | unknown | live | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | OracleAdapter<br>`0xa419026809e2d13bc73dee13992e7873ab605981` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | contamination review | OssifiableProxy<br>`0xecf3376512edaca4fbb63d2c67d12a0397d24121` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | DelayedWithdraw<br>`0xec6de7031ce1a284d13b551ef8c4c04b6fdf773c` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | L1ERC20TokenBridge<br>`0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | OFTAdapterSwETH<br>`0x2c1b3426e557d6756d8a8859a0779373236f94e2` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | RolesAuthority<br>`0x2db7583852c700549b710fd79dd1b54af2efa4dd` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |
| ethereum | source verified unclassified | RSwellOFTAdapter<br>`0x428cda6c1994b926f75a4830d5baedee9db2ac58` | non_address_book | unknown | unknown | verified | n/a | `0xaf994551f4f940224825f54f810ed5439651e5f9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Swell_swBTC_audit.pdf](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/ChainSecurity_Swell_swBTC_audit.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | matched | 9 | 2 | 0 | 8 | high |
| [NM_0273_SWELL_BTC_LRT.pdf](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/NM_0273_SWELL_BTC_LRT.pdf) | Nethermind | Audit | 2024-08 | aging | Direct | n/a | matched | 4 | 1 | 0 | 2 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 38 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Cantina | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf](https://raw.githubusercontent.com/SwellNetwork/v3-core-public/ba1eeff12ab994a26492fa5dcd0aa8937733dbb4/Audit%20Reports/Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2024-01 | stale | Direct | n/a | matched | 3 | 3 | 0 | 2 | n/a |
| [2024-02-23-cyfrin-swell-v2.0.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/2024-02-23-cyfrin-swell-v2.0.pdf) | Cyfrin | Audit | 2024-02 | stale | Direct | n/a | matched | 3 | 3 | 0 | 19 | n/a |
| [Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | n/a | matched | 2 | 2 | 0 | 4 | n/a |
| [Swell-audit-jan-2024(Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/Swell-audit-jan-2024(Public).pdf) | Hexens | Audit | 2024-02 | stale | Direct | n/a | matched | 3 | 3 | 0 | 4 | n/a |
| [NM0231_FINAL_SWELL.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/NM0231_FINAL_SWELL.pdf) | Nethermind | Audit | 2024-06 | stale | Direct | n/a | matched | 2 | 2 | 0 | 14 | n/a |
| [Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf) | Sigma Prime | Audit | 2024-07 | stale | Direct | n/a | matched | 3 | 3 | 0 | 10 | n/a |
| [Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-01 | stale | Direct | n/a | matched | 3 | 3 | 0 | 2 | n/a |
| [Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Seawolf/Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | matched | 3 | 3 | 0 | 6 | n/a |
| [Swell Staking Security Audit Report.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20L2%20Pre%20Deposit/Swell%20Staking%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [swell-l2-pre-deposit-audit-april-2024 (Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20L2%20Pre%20Deposit/swell-l2-pre-deposit-audit-april-2024%20(Public).pdf) | Hexens | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [swell-mar24(Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20Token%20and%20Airdrop/swell-mar24(Public).pdf) | Hexens | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13974] ChainSecurity_Swell_swBTC_audit.pdf — matched: Extracted 17 contract names from the scope section (page 5) of the audit report. The audit date is August 9, 2024, as stated on the cover page.
- [13975] NM_0273_SWELL_BTC_LRT.pdf — matched: No reason recorded
- [13976] 0xmacro-boring-vault-arctic-0.pdf — no match: No reason recorded
- [13977] pashov-boring-vault.pdf — no match: No reason recorded
- [13978] spearbit-boring-vault-arctic-0.pdf — no match: No reason recorded
- [13979] Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf — matched: No reason recorded
- [13983] 2024-02-23-cyfrin-swell-v2.0.pdf — matched: No reason recorded
- [13984] Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf — matched: No reason recorded
- [13985] Swell-audit-jan-2024(Public).pdf — matched: No reason recorded
- [13986] NM0231_FINAL_SWELL.pdf — matched: No reason recorded
- [13987] Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf — matched: No reason recorded
- [13988] Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf — matched: No reason recorded
- [13989] Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf — matched: No reason recorded
- [13990] Swell Staking Security Audit Report.pdf — no match: No reason recorded
- [13991] swell-l2-pre-deposit-audit-april-2024 (Public).pdf — no match: No reason recorded
- [13992] swell-mar24(Public).pdf — no match: Scope section mentions CumulativeMerkleDrop and Staking contracts. Audit delivered date is 12.03.2024.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Swell_swBTC_audit.pdf | AeraStrategy | own proxy deployment | AeraStrategy (proxy) (selected) `0x8041ba598f0e656ebe80c67289efb42c09e86ae3` — deployed 2024-08-13 02:44:35+03 — liveness: live (current_address_book_code)<br>AeraStrategy (proxy) (alternative) `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` — deployed 2024-09-20 10:38:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-13 was 4d from audit; next candidate 42d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | DelayedWithdraw | own contract | DelayedWithdraw (selected) `0x805c6d95c9e707332215f42cb89f93752ffa55b8` — deployed 2024-08-13 01:37:47+03 — liveness: live (current_address_book_code)<br>DelayedWithdraw (alternative) `0x755a078dee1c264a3053f02cd634e750d505cf85` — deployed 2024-09-20 10:29:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-08-13 was 4d from audit; next candidate 42d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | WithdrawLimitModule | own contract | WithdrawLimitModule (alternative) `0xa2ed40f46c391ddd30094e866aac913a20f17216` — deployed 2024-09-20 10:38:47+03 — liveness: live (current_address_book_code)<br>WithdrawLimitModule (selected) `0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22` — deployed 2024-08-13 01:39:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-13 was 4d from audit; next candidate 42d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | BaseStrategy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swell_swBTC_audit.pdf | TokenizedStrategy | own proxy deployment | AeraStrategy (proxy) (selected) `0x8041ba598f0e656ebe80c67289efb42c09e86ae3` — deployed 2024-08-13 02:44:35+03 — liveness: live (current_address_book_code)<br>AeraStrategy (proxy) (alternative) `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` — deployed 2024-09-20 10:38:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-13 was 4d from audit; next candidate 42d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | BaseHooks | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swell_swBTC_audit.pdf | Hooks | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swell_swBTC_audit.pdf | Accountant | own contract | Accountant (selected) `0x48dacb0b938aa6d5752ca2ea23cd8593fafb3825` — deployed 2024-08-13 01:33:35+03 — liveness: live (current_address_book_code)<br>Accountant (alternative) `0x15a94d49fac6e23e17c1366c999117a1de8ba7b6` — deployed 2024-09-20 10:15:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-13 was 4d from audit; next candidate 42d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | DebtAllocator | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swell_swBTC_audit.pdf | DebtAllocatorFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swell_swBTC_audit.pdf | Keeper | own contract | Keeper (selected) `0xc2a55871a713fb98a6b60e2e76fc94021c9f182f` — deployed 2024-08-13 01:33:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | Registry | ambiguous — not counted | ReleaseRegistry (alternative) `0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` — deployed 2024-09-20 10:16:47+03 — liveness: live (code_present_context)<br>RegistryFactory (alternative) `0x939f1cc163fdc38a77571019eb4ad1794873bf8c` — deployed 2024-08-13 01:34:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` — deployed 2023-04-12 11:25:23+03 — liveness: live (current_address_book_code)<br>RegistryFactory (alternative) `0xff22ea467301010f1364fc154c13e0c86fcfb077` — deployed 2024-09-20 10:25:11+03 — liveness: live (current_address_book_code)<br>Registry (alternative) `0x88b96f11ab91d282b4200b73fe401f6fc388603a` — deployed 2024-09-20 10:26:11+03 — liveness: live (current_address_book_code)<br>Registry (alternative) `0xe5fcbde076f36bb076170758f8e3aec7412c5f91` — deployed 2024-08-13 01:34:59+03 — liveness: live (current_address_book_code)<br>ReleaseRegistry (alternative) `0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6` — deployed 2024-08-13 01:34:11+03 — liveness: live (code_present_context)<br>Yearn Vault Factory (alternative) `0x981771292052c5f77b14a3bd4df22e43a8b17bb0` — deployed 2024-08-13 01:33:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Swell_swBTC_audit.pdf | RegistryFactory | own contract | RegistryFactory (selected) `0x939f1cc163fdc38a77571019eb4ad1794873bf8c` — deployed 2024-08-13 01:34:47+03 — liveness: live (current_address_book_code)<br>RegistryFactory (alternative) `0xff22ea467301010f1364fc154c13e0c86fcfb077` — deployed 2024-09-20 10:25:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-13 was 4d from audit; next candidate 42d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | ReleaseRegistry | own contract | ReleaseRegistry (alternative) `0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` — deployed 2024-09-20 10:16:47+03 — liveness: live (code_present_context)<br>ReleaseRegistry (selected) `0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6` — deployed 2024-08-13 01:34:11+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-08-13 was 4d from audit; next candidate 42d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | RoleManager | own contract | RoleManager (selected) `0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1` — deployed 2024-09-20 10:26:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Swell_swBTC_audit.pdf | VaultFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Swell_swBTC_audit.pdf | VaultV3 | unmatched — not counted | — | listed in scope table | no |
| NM_0273_SWELL_BTC_LRT.pdf | AeraStrategy | own proxy deployment | AeraStrategy (proxy) (selected) `0x8041ba598f0e656ebe80c67289efb42c09e86ae3` — deployed 2024-08-13 02:44:35+03 — liveness: live (current_address_book_code)<br>AeraStrategy (proxy) (alternative) `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` — deployed 2024-09-20 10:38:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-13 was 12d from audit; next candidate 50d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM_0273_SWELL_BTC_LRT.pdf | AeraVaultV2 | unmatched — not counted | — | — | no |
| NM_0273_SWELL_BTC_LRT.pdf | DelayedWithdraw | own contract | DelayedWithdraw (selected) `0x805c6d95c9e707332215f42cb89f93752ffa55b8` — deployed 2024-08-13 01:37:47+03 — liveness: live (current_address_book_code)<br>DelayedWithdraw (alternative) `0x755a078dee1c264a3053f02cd634e750d505cf85` — deployed 2024-09-20 10:29:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-08-13 was 12d from audit; next candidate 50d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM_0273_SWELL_BTC_LRT.pdf | RoleManager | own contract | RoleManager (selected) `0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1` — deployed 2024-09-20 10:26:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM_0273_SWELL_BTC_LRT.pdf | VaultV3 | unmatched — not counted | — | — | no |
| NM_0273_SWELL_BTC_LRT.pdf | WithdrawLimitModule | own contract | WithdrawLimitModule (alternative) `0xa2ed40f46c391ddd30094e866aac913a20f17216` — deployed 2024-09-20 10:38:47+03 — liveness: live (current_address_book_code)<br>WithdrawLimitModule (selected) `0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22` — deployed 2024-08-13 01:39:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-13 was 12d from audit; next candidate 50d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | — | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | BoringVaultCrossChainDepositor | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | BoringVaultL2OFT | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | BoringVaultOFTAdapter | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | CrossChainLayerZeroTellerWithMultiAssetSupport | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | CrossChainTellerBase | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | OAppAuth | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | OAppAuthCore | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | OAppAuthReceiver | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | OAppAuthSender | unmatched — not counted | — | — | no |
| pashov-boring-vault.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | — | no |
| spearbit-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf | AccessControlManager | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-01-26 was 25d from audit; next candidate 264d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf | NodeOperatorRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` — deployed 2023-04-12 11:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf | RepricingOracle | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf | RswETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfae103dc9cf190ed75350761e95403b7b8afa6c0` — deployed 2024-01-26 06:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02-23-cyfrin-swell-v2.0.pdf | AccessControlManager | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | DepositDataRoot | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-01-26 was 6d from audit; next candidate 295d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02-23-cyfrin-swell-v2.0.pdf | EnumberableSetValidatorDetails | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IAccessControlManager | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IDepositContract | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IDepositManager | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | INodeOperatorRegistry | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IPorAddresses | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IRateProvider | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IRepricingOracle | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IWhitelist | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IswETH | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | IswEXIT | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | NodeOperatorRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` — deployed 2023-04-12 11:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02-23-cyfrin-swell-v2.0.pdf | Repricing | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | RepricingOracle | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | SwellLib | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | Whitelist | unmatched — not counted | — | — | no |
| 2024-02-23-cyfrin-swell-v2.0.pdf | swETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf951e335afb289353dc249e82926178eac7ded78` — deployed 2023-04-12 11:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02-23-cyfrin-swell-v2.0.pdf | swEXIT | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | AccessControlManager | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-01-26 was 6d from audit; next candidate 295d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | Repricing | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | RepricingOracle | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | swETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf951e335afb289353dc249e82926178eac7ded78` — deployed 2023-04-12 11:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf | swEXIT | unmatched — not counted | — | — | no |
| Swell-audit-jan-2024(Public).pdf | AccessControlManager | unmatched — not counted | — | — | no |
| Swell-audit-jan-2024(Public).pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-01-26 was 6d from audit; next candidate 295d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Swell-audit-jan-2024(Public).pdf | IDepositManager | unmatched — not counted | — | — | no |
| Swell-audit-jan-2024(Public).pdf | NodeOperatorRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` — deployed 2023-04-12 11:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Swell-audit-jan-2024(Public).pdf | RepricingOracle | unmatched — not counted | — | — | no |
| Swell-audit-jan-2024(Public).pdf | swETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf951e335afb289353dc249e82926178eac7ded78` — deployed 2023-04-12 11:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Swell-audit-jan-2024(Public).pdf | swEXIT | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | AnkrETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | CbETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-01-26 was 127d from audit; next candidate 416d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM0231_FINAL_SWELL.pdf | ETHxRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | EigenLayerManager | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | METHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | OETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | OsETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | RETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | RswETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfae103dc9cf190ed75350761e95403b7b8afa6c0` — deployed 2024-01-26 06:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| NM0231_FINAL_SWELL.pdf | SfrxETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | StETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | StakerProxy | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | SwETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | WbETHRateProvider | unmatched — not counted | — | — | no |
| NM0231_FINAL_SWELL.pdf | WstETHRateProvider | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | AnkrETHRateProvider | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-01-26 was 157d from audit; next candidate 446d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | ETHxRateProvider | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | EigenLayerManager | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | NodeOperatorRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` — deployed 2023-04-12 11:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | OETHRateProvider | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | RepricingOracle | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | RswETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfae103dc9cf190ed75350761e95403b7b8afa6c0` — deployed 2024-01-26 06:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | RswEXIT | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | SfrxETHRateProvider | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | StETHRateProvider | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | StakerProxy | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf | WstETHRateProvider | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf | AccessControlManager | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-01-26 was 25d from audit; next candidate 264d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf | NodeOperatorRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` — deployed 2023-04-12 11:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf | RepricingOracle | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf | RswETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfae103dc9cf190ed75350761e95403b7b8afa6c0` — deployed 2024-01-26 06:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | AccessControlManager | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | DepositManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x5e6342d8090665be14eeb8154c8a87b7249a4889` — deployed 2024-01-26 06:50:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39` — deployed 2023-04-12 11:30:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-12 was 11d from audit; next candidate 300d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | NodeOperatorRegistry | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d` — deployed 2023-04-12 11:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | SwellStakeVaultHelper | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | Whitelist | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | stakeAndVault | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | swETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf951e335afb289353dc249e82926178eac7ded78` — deployed 2023-04-12 11:33:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | v3_swETH | unmatched — not counted | — | — | no |
| Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf | v3_swNFT | unmatched — not counted | — | — | no |
| Swell Staking Security Audit Report.pdf | ISimpleStakingERC20 | unmatched — not counted | — | — | no |
| Swell Staking Security Audit Report.pdf | SimpleStakingERC20 | unmatched — not counted | — | — | no |
| Swell Staking Security Audit Report.pdf | Zap | unmatched — not counted | — | — | no |
| swell-l2-pre-deposit-audit-april-2024 (Public).pdf | SimpleStakingERC20 | unmatched — not counted | — | — | no |
| swell-l2-pre-deposit-audit-april-2024 (Public).pdf | Zap | unmatched — not counted | — | — | no |
| swell-mar24(Public).pdf | CumulativeMerkleDrop | unmatched — not counted | — | mentioned in scope and findings | no |
| swell-mar24(Public).pdf | Staking | unmatched — not counted | — | mentioned in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x15a94d49fac6e23e17c1366c999117a1de8ba7b6` | Accountant | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x755a078dee1c264a3053f02cd634e750d505cf85` | DelayedWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88b96f11ab91d282b4200b73fe401f6fc388603a` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5fcbde076f36bb076170758f8e3aec7412c5f91` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff22ea467301010f1364fc154c13e0c86fcfb077` | RegistryFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70f8ac14dfdec437aba5e30c7b509dd01e1da901` | ReleaseRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d663f1dd3cb752b47301abdc22d620d1868f377` | RolesAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa9bd691b166aafcc9ef55aabc1960825630558d6` | RolesAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a6e7ba5042b38349e437ec6db6214aec7b35676` | SwellToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x473f0adec308dc82440665d9fc7d5e26ebcf0e05` | TokenizedStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa2ed40f46c391ddd30094e866aac913a20f17216` | WithdrawLimitModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 35 own (25 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 135 unmatched
- Matched-own operational status: 35 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: temporal_name=17, unique_name=17

Zero-match audit list:

- [13976] 0xmacro-boring-vault-arctic-0.pdf
- [13977] pashov-boring-vault.pdf
- [13978] spearbit-boring-vault-arctic-0.pdf
- [13990] Swell Staking Security Audit Report.pdf
- [13991] swell-l2-pre-deposit-audit-april-2024 (Public).pdf
- [13992] swell-mar24(Public).pdf

Fork inheritance lineage and inherited audits are included when available.
