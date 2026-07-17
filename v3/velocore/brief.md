# Agentic Audit Brief: Velocore

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Velocore (`velocore`)
- Website: [https://zksync.velocore.xyz/](https://zksync.velocore.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-59140, linea, zksync-era
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $104,432.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Velocore. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across chain-59140, linea, zksync-era. Structural roles: 7 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (7), supporting (3)
- Contract kinds: contract (10)
- Detected standards: erc165 (2), accesscontrol (1), erc20 (1)
- Frameworks: openzeppelin (10), prb-math (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 10; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 64 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 77
- Raw deployments: 77
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260847 | `0xaa45ae6c1687eece17ceee098f6efed64e6ad2bd` | ⚠️ Unaudited |
| ConstantProductLibrary | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260846 | `0x73fa525c642baaaecb304614fa38614845649ef8` | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xad1c0da2781e64cbfc9b725ba49e0de0323fee7f` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xec215066585842184656c24d4a4c0d41986c2b57` | ⚠️ Unaudited |
| InspectorFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260845 | `0x71c29c4c7b714fd4190dfb0a2fc599dbb0cb6568` | ⚠️ Unaudited |
| LinearBribeFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260844 | `0x6ecc3ddf76e42dd2ff681dc926eb885d8651ee54` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbb8a944aae2c14e119249332be6a7b857cef677a` | ⚠️ Unaudited |
| LVC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x803abee68f41aac0af886f493b81cb3520958269` | ⚠️ Unaudited |
| NFTHolderFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260848 | `0xe192e2a21873eb4ca4ddfc18fd15c8bbc93ac93f` | ⚠️ Unaudited |
| OverflowICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa0d4334152fdd9a8498ad97a67fbc3389814715c` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x48d9cdf4343d95e3b8d8f2bfcfdae9d495f90cca` | ⚠️ Unaudited |
| RebaseWrapper | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260843 | `0x3f006b0493ff32b33be2809367f5f6722cb84a7b` | ⚠️ Unaudited |
| Refund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x20a5816941279f4bfdc1785672d9735fedab5b82` | ⚠️ Unaudited |
| SimpleAuthorizer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260840 | `0x0978112d4ea277ad7fbf9f89268deeddeb743996` | ⚠️ Unaudited |
| SwapAuxillaryFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260839 | `0x08657a62f65d62d0190df72c6ad0fde0b8e54a20` | ⚠️ Unaudited |
| SwapFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1c7e145bb3017a9c650242426b9f6eed870d9f82` | ⚠️ Unaudited |
| SwapHelperFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb9a2b1c9372e5b407ce0dfd2102e6dfe85a96355` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb5a925a1f818262137bf6ea4998071d7f17ce1a4` | ⚠️ Unaudited |
| VC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2c01f918f6e02b08b67263e713a1e1a6ea958129` | ⚠️ Unaudited |
| VeVC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x57265c8d693d352b5d1db71ae7086df39f59651d` | ⚠️ Unaudited |
| WETHConverter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260842 | `0x25cbd11558c369b089852baaec9bbb1b66ebf89c` | ⚠️ Unaudited |
| WombatPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1d312eedd57e8d43bcb6369e4b8f02d3c18aaf13` | ⚠️ Unaudited |
| WombatRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-260841 | `0x111a6d7f5ddb85776f1b6a6deabe552815559f9e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x0021c13c7bd19858e18eddf54b82a6c7cd46cc96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x1576b8d0be0c721ea653970e40f7a6d4b0b0abf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x35aa75b90ef2338eff851a0dfbe7b981c7357a65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x3cd3e41ff4b95a8ddc915f3c7615ab6f2b478c33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x3e656cc046ac45924d90d34589896f0ca7b7e85f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x443f985fd3484b9fdc7b5df58c9a0fadbe449b92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x53e53e8fd4ef787274f53107e41208fd7b26f284` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x544d7d954f7c8f3df1b0ffce0736647eab6a5232` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | n/a | `0x5aea5775959fbc2557cc8789bc1bf90a239d9a91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x5c5d9c7fe718cf3840d181c35c078ad6f4e315e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x654fa90d197c40df2a6a6f7bba46d502c550de51` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x6837d2a604a7d1ba47371eb3bc7585339a378733` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x73f6353689c11a1b1e4c20c56c901587dd9f52b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x76ecc0ef1d957e3efe35ce77eba53dbcd91f7ea5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x85d84c774cf8e9ff85342684b0e795df72a24908` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x86e6ab1950770e24035d1b3a5907c7d503d43b01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x8a7cc305d39de9de48ae99f80d2667d95579f43a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x8f0b4b3e211c84061ab5959bd3d49c6b3eec1d7d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x99bbe51be7cce6c8b84883148fd3d12ace5787f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xabade35bd75dd4f51ef0b7b069bf0e6701480089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xb2cef7f2ecf1f4f0154d129c6e111d81f68e6d03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xb46e1ed4e1a68cd6cce76f6a73fa5a42ce2ac032` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xb7d98f552b4484b52181600fa5360bbadd09fa98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xbc95a65421214ab735c7e1e5a6430a0b4d428e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xbde345771eb0c6adebc54f41a169ff6311fe096f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xc137d074db1f839700ea8bb16d1ef2903e2de7b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xc365acd05609d9125eb77ddf44322f3f561c9713` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd06ad497eb89716b34a5ef6b9a2aa1fb14a4c75e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd511c5bedaff22390c6da217d33186a67e111213` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd5f1cc935b3e7267a9fbfa250861672113aaee40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd7107a47b4fbbc585b25bbee3777b2edc11d156c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd822315c30001bb85bae8a9de5db98a87d0656d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xd999e16e68476bc749a28fc14a0c3b6d7073f50c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xe09a60fae6d77658b9767a70e2f361b46dd3f16a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xe140eac2bb748c8f456719a457f26636617bb0e9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xe6d4c953a094fbc1dbf0d46f51c2b56ab51e9780` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf29eb540eeba673f8fb6131a7c7403c8e4c3f143` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf55150000aac457ecc88b34da9291e3f6e7db165` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf5e67261cb357edb6c7719fefafaab280cb5e2a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x0fa44f90ce688dcf44d89926a67e3b08115ba091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x1fc59b9cd21f141a70372f68deff76a291dc9b2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x21b948524851f585407313949dee4143ac78e4cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x38a538e0ae6c9ba949a4b19eec62ba7b0cdf033b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x492e0d7db29bc60ebc86eebfe105f81c9a02f16d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0x4d66b05b49f401e02fa2b0d7a1081dd1087f9bd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0xad594b0dea3315d4311e293a9fe374850a8cfd34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-59140 | n/a | `0xeabf098bcedf213d903f16900b6f5b5c2d2b0004` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x1d0188c4b276a09366d05d6be06af61a73bc7535` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x3303f1faa895f0e17863454b3b7a2a453a5cfae5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xaa18cdb16a4dd88a59f4c2f45b5c91d009549e06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xaec06345b26451bda999d83b361beaad6ea93f87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xb30e7a2e6f7389ca5ddc714da4c991b7a1dcc88e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xbe6c6a389b82306e88d74d1692b67285a9db9a47` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xcc22f6aa610d1b2a0e89ef228079cb3e1831b1d1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Velocore_Zokyo_audit_report_Aug14_2023.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/zokyo-sec/audit-reports/main/Velocore/Velocore_Zokyo_audit_report_Aug14_2023.pdf) | Zokyo | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Velocore-Audit-Report.pdf](https://www.scalebit.xyz/reports/Velocore-Audit-Report.pdf) | ScaleBit | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [hacken.io/audits/velocore/sca-velocore-dex-oct2023](https://hacken.io/audits/velocore/sca-velocore-dex-oct2023) | Hacken | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [hacken.io/audits/velocore](https://hacken.io/audits/velocore) | Hacken | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21479] Velocore_Zokyo_audit_report_Aug14_2023.pdf — no match: Scope section explicitly lists 17 contracts. Audit date found on cover page: August 14th 2023.
- [21481] Velocore-Audit-Report.pdf — no match: All contracts listed in the 'Files in Scope' table were extracted. The audit date is from the report header 'Wed Aug 16 2023'.
- [21482] hacken.io/audits/velocore/sca-velocore-dex-oct2023 — no match: The provided text is a webpage for a Velocore audit by Hacken, but it does not contain the actual audit report content. It only shows metadata like title, date, and navigation. No contract names or scope section are present.
- [21483] hacken.io/audits/velocore — no match: The page is a marketing overview listing audit history but does not include a detailed scope section with contract names. The only audit date found is Oct 26, 2023 from the history table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | AdminFacet | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | Diamond | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | SwapFacet | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | SatelliteUpgradeable | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | PoolWithLPToken | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | SingleTokenGauge | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | Satellite | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | ConstantProductLibrary | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | ConstantProductPool | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | ConstantProductPoolFactory | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | LinearBribe | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | LinearBribeFactory | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | VC | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | VeVC | unmatched — not counted | — | listed in scope | no |
| Velocore_Zokyo_audit_report_Aug14_2023.pdf | WombatPool | unmatched — not counted | — | listed in scope | no |
| Velocore-Audit-Report.pdf | Lens | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VelocoreLens | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | NFTHolderFacet | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SimpleAuthorizer | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VaultStorage | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | PoolBalanceLib | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | UncheckedMemory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | RPow | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Token | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | WETHConverter | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Satellite | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SingleTokenGauge | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SatelliteUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | WombatPool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | LinearBribeFactory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | LinearBribe | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | PoolWithLPToken | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | ConstantProductPool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | ConstantProductPoolFactory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | ConstantProductLibrary | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | CurveCryptoPool | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | CurveCryptoPoolFactory | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VC | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | VeVC | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | SwapFacet | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | Diamond | unmatched — not counted | — | listed in scope table | no |
| Velocore-Audit-Report.pdf | AdminFacet | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 45 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=2
- Match method counts: n/a

Zero-match audit list:

- [21479] Velocore_Zokyo_audit_report_Aug14_2023.pdf
- [21481] Velocore-Audit-Report.pdf
- [21482] hacken.io/audits/velocore/sca-velocore-dex-oct2023
- [21483] hacken.io/audits/velocore

Fork inheritance lineage and inherited audits are included when available.
