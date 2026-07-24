# Agentic Audit Brief: Compound Blue

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Compound Blue (`compound-blue`)
- Website: [https://www.compound.blue/](https://www.compound.blue/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: polygon
- Contract surface: 55 unique implementations (56 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,254,290.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Compound Blue in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x3ef3d8ba38ebe18db133cec108f4d14ce00dd9ae`, chain 137)
- ERC1967Proxy (`0x9d60947d49911e3c262c108f97fe07cde209f9a7`, chain 137)
- FiatTokenProxy (`0x3c499c542cef5e3811e1192ce70d8cc03d5c3359`, chain 137)
- InitializableImmutableAdminUpgradeabilityProxy (`0x794a61358d6845594f94dc1db02a252b5b4814ad`, chain 137)
- MetaMorphoV1_1 (`0x3f33f9f7e2d7cfbcbdf8ea8b870a6e3d449664c2`, chain 137)
- MetaMorphoV1_1 (`0x781fb7f6d845e3be129289833b04d43aa8558c42`, chain 137)
- MetaMorphoV1_1 (`0xf5c81d25ee174d83f1fd202ca94ae6070d073ccf`, chain 137)
- MetaMorphoV1_1 (`0xfd06859a671c21497a2eb8c5e3fea48de924d6c8`, chain 137)
- PoolAddressesProvider (`0xa97684ead0e402dc232d5a977953df7ecbab3cdb`, chain 137)
- SafeProxy (`0x9e33faae38ff641094fa68c65c2ce600b3410585`, chain 137)
- Timelock (`0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02`, chain 137)
- UChildERC20Proxy (`0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`, chain 137)
- UChildERC20Proxy (`0x8505b9d2254a7ae468c0e9dd10ccea3a837aef5c`, chain 137)
- UiPoolDataProviderV3 (`0x68100bd5345ea474d93577127c11f39ff8463e93`, chain 137)
- WMATIC (`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 14 of 55 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 55
- Raw deployments: 56
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Distributor | unknown | project_anchor | own_supporting | 1 | polygon | unit-381816 | `0x3ef3d8ba38ebe18db133cec108f4d14ce00dd9ae` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-381814 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381807 | `0x3f33f9f7e2d7cfbcbdf8ea8b870a6e3d449664c2` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381809 | `0x781fb7f6d845e3be129289833b04d43aa8558c42` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381812 | `0xf5c81d25ee174d83f1fd202ca94ae6070d073ccf` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381813 | `0xfd06859a671c21497a2eb8c5e3fea48de924d6c8` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | polygon | unit-381810 | `0xa97684ead0e402dc232d5a977953df7ecbab3cdb` | ⚠️ Unaudited |
| PoolInstance | unknown | project_anchor | own_supporting | 1 | polygon | unit-381817 | `0x794a61358d6845594f94dc1db02a252b5b4814ad` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-381815 | `0x9e33faae38ff641094fa68c65c2ce600b3410585` | ⚠️ Unaudited |
| SecuritizeVault | unknown | project_anchor | own_supporting | 1 | polygon | unit-381818 | `0x9d60947d49911e3c262c108f97fe07cde209f9a7` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | polygon | unit-381811 | `0xcc3e7c85bb0ee4f09380e041fee95a0caedd4a02` | ⚠️ Unaudited |
| UChildERC20 | unknown | project_anchor | own_supporting | 2 | polygon | unit-381819 (2 proxies) | 2 deployments: polygon `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`; polygon `0x8505b9d2254a7ae468c0e9dd10ccea3a837aef5c` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | project_anchor | own_supporting | 0 | polygon | unit-381808 | `0x68100bd5345ea474d93577127c11f39ff8463e93` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-381806 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x183632af1d686073f9f883bd34a0f87f93518282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35bb522b102326ea3f1141661df4626c87000e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x382dfda7d9ba942e88f4c6c84513f28adfa1cdf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4416050563064eaec3210cc0ed65835fbafaa688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c1e5e780269186a4fbb31c913b11b1a8922b830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53eedc0c750c9ffd63782a1b215effcb704fd402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5598bbfa2f4fe8151f45bba0a3ede1b54b51a0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c5228ac8bc1528482514af3e27e692495148717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c9ab05c3c3136c5569acc5250f9acd7b85cf3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d4d4007a4c6336550ddaa2a7c0d5e7972eebd16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6336b0c2bda32d283345a78afa588fe5a1533cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63dfa7c09dc2ff4030d6b8dc2ce6262bf898c8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66e1abdb06e7363a618d65a910c540dfed23754f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x68cdca6f5ab6a1872b6e13fe6c2d0978c36dec28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a3187f9b83cd992502760489a6f60fa7d6b754e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c4bdebf5d6da151d5efc4b6bc1662713a73a161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d49dc81a1f07a6b1902dc79bc2d408cb9d555d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72cbe32ec9b8d0a5f0be1f3e8dd6c1d12a6a1097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78f8bd884c3d738b74b420540659c82f392820e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7cbc5a024fd2dd5099aec235e3a4143cf25b40fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7db28175b63f154587bbb1cae62d39ea80a23383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8636eb99c6675893a7beb1cef5461e31098a14fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8bb4c975ff3c250e0ceea271728547f3802b36fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f1a7128b15fffd42f7555b655ca3e62ce1ecd6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x918261fa5dd9c3b1358ca911792e9bdf3c5cca35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91e04cf78e53aebe609e8a7f2003e7eecd743f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa482bec6614f3b923cc0079d5c27ee70b5791c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7c167f58833c5e25848837f45a1372491a535ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae66c0564a6bb320514cd133ddc8281de59d94d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6b6f35f6f37aad364311ba3acd242ce90da8560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb950f374456ffcb322390c3af98a57032929ced9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbef7b6921e6b0ca1aa2c32bbf54056ce319dc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5eebb46788e690316b88e6e88d07168b8704ab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe28e2c8d240dd5ebd0adcab86fbd79df7a052034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3b18d3a49eefe5c8c0fe4b1c6d69e33eed990f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe92cd6164ce7dc68e740765bc1f2a091b6cbc3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea2785156be4c095c5473817f01818c01d05517a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 41
- Live contracts: 0
- Unknown liveness contracts: 41
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=41

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| polygon | unverified unclassified | UnnamedContract<br>`0x382dfda7d9ba942e88f4c6c84513f28adfa1cdf4` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4416050563064eaec3210cc0ed65835fbafaa688` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4c1e5e780269186a4fbb31c913b11b1a8922b830` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6336b0c2bda32d283345a78afa588fe5a1533cd9` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6a3187f9b83cd992502760489a6f60fa7d6b754e` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6c4bdebf5d6da151d5efc4b6bc1662713a73a161` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x72cbe32ec9b8d0a5f0be1f3e8dd6c1d12a6a1097` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7cbc5a024fd2dd5099aec235e3a4143cf25b40fc` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8636eb99c6675893a7beb1cef5461e31098a14fc` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8f1a7128b15fffd42f7555b655ca3e62ce1ecd6a` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa482bec6614f3b923cc0079d5c27ee70b5791c5c` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe3b18d3a49eefe5c8c0fe4b1c6d69e33eed990f2` | non_address_book | unknown | unknown | unverified | n/a | `0x4e1f11e4a6d6490b8dc05cdcc2e2f74a0fe12712` |
| polygon | unverified unclassified | UnnamedContract<br>`0x183632af1d686073f9f883bd34a0f87f93518282` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x35bb522b102326ea3f1141661df4626c87000e3e` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5598bbfa2f4fe8151f45bba0a3ede1b54b51a0a9` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5c5228ac8bc1528482514af3e27e692495148717` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5c9ab05c3c3136c5569acc5250f9acd7b85cf3da` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5d4d4007a4c6336550ddaa2a7c0d5e7972eebd16` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x63dfa7c09dc2ff4030d6b8dc2ce6262bf898c8a4` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x66e1abdb06e7363a618d65a910c540dfed23754f` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x68cdca6f5ab6a1872b6e13fe6c2d0978c36dec28` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6d49dc81a1f07a6b1902dc79bc2d408cb9d555d1` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x78f8bd884c3d738b74b420540659c82f392820e0` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x91e04cf78e53aebe609e8a7f2003e7eecd743f2b` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb6b6f35f6f37aad364311ba3acd242ce90da8560` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb950f374456ffcb322390c3af98a57032929ced9` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc5eebb46788e690316b88e6e88d07168b8704ab4` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe28e2c8d240dd5ebd0adcab86fbd79df7a052034` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe92cd6164ce7dc68e740765bc1f2a091b6cbc3e4` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0xea2785156be4c095c5473817f01818c01d05517a` | non_address_book | unknown | unknown | unverified | n/a | `0x57dc6c401819ea097db8d4b66d8e35cda0277a73` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7db28175b63f154587bbb1cae62d39ea80a23383` | non_address_book | unknown | unknown | unverified | n/a | `0x9f76a95aa7535bb0893cf88a146396e00ed21a12` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8bb4c975ff3c250e0ceea271728547f3802b36fd` | non_address_book | unknown | unknown | unverified | n/a | `0x9f76a95aa7535bb0893cf88a146396e00ed21a12` |
| polygon | unverified unclassified | UnnamedContract<br>`0x918261fa5dd9c3b1358ca911792e9bdf3c5cca35` | non_address_book | unknown | unknown | unverified | n/a | `0x9f76a95aa7535bb0893cf88a146396e00ed21a12` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa7c167f58833c5e25848837f45a1372491a535ed` | non_address_book | unknown | unknown | unverified | n/a | `0x9f76a95aa7535bb0893cf88a146396e00ed21a12` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbbef7b6921e6b0ca1aa2c32bbf54056ce319dc8a` | non_address_book | unknown | unknown | unverified | n/a | `0x9f76a95aa7535bb0893cf88a146396e00ed21a12` |
| polygon | unverified unclassified | UnnamedContract<br>`0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x53eedc0c750c9ffd63782a1b215effcb704fd402` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xae66c0564a6bb320514cd133ddc8281de59d94d4` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | non_address_book | unknown | unknown | unverified | n/a | `0xd4f1ff97298f6793839fae27e759da45ace057c3` |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 55 |

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
