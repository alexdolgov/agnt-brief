# Agentic Audit Brief: Velocore

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Velocore (`velocore`)
- Website: [https://zksync.velocore.xyz/](https://zksync.velocore.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: chain-59140, linea, zksync-era
- Contract surface: 192 unique implementations (192 raw deployments)
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
- Outside the address book: 128 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 169
- Unique implementations: 192
- Raw deployments: 192
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

### ❓ Unverified (169)

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x028504da7ccb079f90dba2d75f09d9d6f7f0da7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x045f37539d922fbce248b49ab17b0c1185f36d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04f19eb113efd349ff469a32321debf2ba3c698d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x052a54fbdcd7aac0ca7df486f3fd29012ccc465e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0546984d3634792828d49b09cd0aee8c02675811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08cee93a9f9bd25f5f766be1bf2738c47712a1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0b100e1efc2cde6d3c2a9819f2d0048a9a5a168c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0f0e1fdc1f8c5cfa97e1fca5256f82e5174dce88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x117cbbe20009c7ab2634a5c87ee4bcc825bc2a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x131d56758351c9885862ada09a6a7071735c83b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1373d116a7e45727f07c82b0a3e6c616238d0da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x183f76b3f29d0d8718f17a7bc7542a652c591ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18b9f1391b1a8b7364aa53b7fd724e4b4818a32f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x1d0188c4b276a09366d05d6be06af61a73bc7535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1d5e0ebda1b8005f05a22d6b0a94aaa617089486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1ee7ee91afcb3c5d25ea9fcb48c3ab15e2f7e845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x24b333aa5bf46c5553bd4f8ba1980ce1a47fc3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x26dcd5ad3f521d4fc276f1a022fbe922a9583ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2714f2d7af5b9f7b3ffb3e1a6e5dbad62dea8dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2a85a1085570b09add8de0c919864723bc821074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2ab2398303b79884b8ec18a145ebd496145dfeec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2e98ef87f7f0d31987a0d94051b8bc5d001152e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2ec0691e8d4342b62dac8313941effe6f510f97d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0x3303f1faa895f0e17863454b3b7a2a453a5cfae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x37f78523871e440acbfbaff9ff6c5aa81467af22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x39ca329d52bc1ad94e47f78d5d283bba651256a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3a5190a0514082f9af0dcba2364840695c58b3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3c4e8fc58e1c2cf59d73524c1894534a12b8702b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3dc531557935ff04f1756ba46319be90745e52a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3ed94458e1c64359472f3e12592e3b64daedf24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3fc99a883b13ed85edad7a3b75365874ff7bfe69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x40391797bda8b22168fbaa87826ee7c060e6fcc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4391fff15f07076139f34861bca297571cfb74ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x440361b60436d8e652adf6c265260e3f0d10879d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x47e6831ebb3bfe4f9e21aff39020f9811f879190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x494cd8fc7b3cbdecd27194d1677a28d9ef62d299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4a307c6044d300f8b6fb4d1da84c8276ddba8e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4a9684ce63f6668f0e35e76c1174975c4d52d63f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4b2137d3f8c850dff43d1bd89fdd74621e5401ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e6db87cd059e0f95ce36508b89775bc7aa995fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4e9b3fc64ffdca0da6ed295c639ad803b5c479ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4fb9ec0db6c7a44c09660a42721b9385739c9d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x55072d40f539f727c018b7db564ae322e96419c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5672a00f69556dd85c0e342a4c9685a4be80b26e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x56fd96411084821168377531aedee11f0c6a0770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x61cb3a0c59825464474ebb287a3e7d2b9b59d093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x61d8b49fa46f747c4512474749dddc1902d6ea9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x62d8ca56b4bce52c00efc179ce3bbd04b9cb341f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6309bf8380c9735868fb1b5b54512cdb5078cc7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x632b7f71c3dd7a71b6a364444256371f7c6e8ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x636adade862c1675877ce2842f40c8c1b0bc3efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x63ba670a96951360371498e5d8817df08a45a3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x64929ae7245e90e5429582498d86cd629863a1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x65ab66846b941cbe221ff4be5fffc2a844033811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x68d851b8e27a62e864602f71f10edd6ee9e6f2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c942077d9ee0d46ee9f17e880ccb1ff7b288545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ea34e5ed0f2b994078bf1d24948034b3fed9007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6f2e81fb302a46c9c4b6bc430802612235a8ad19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x77d13550aa829e58de40459d103724e734cc3393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7b3009f2cb13671a740bdedef266ab164c0b4cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7ca21be3271b0b94101f177fda8701cd7ef6e69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7daeaa7549db47793db1586e00edc0372da35085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7e102ab6e2c4e5191e02be8960050c12ef81d0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x82407468da3c5df510ac460bd74684b8d876d88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8602cd304bdbe68bbbd3292d95c64bcaad52721e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8961770be6108bc9446bfbfaa5ff5219b8f83a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8c538063845a754eb5fa3cbbcfaa3eeeccaf50fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8da2e22bd6d52e92672f5123233163d5e90fb8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x92791129124e78097874e9a465bea205cf3598d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x98076eda1223ce9d2191d1dadb620a1420229155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa490914f98bf70930de85d070afddcb77f21a3d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa4bc8becac95218c1e22349c41f281fad8c5755f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa74f301f527e949bec8f8c711646bf46fbcb08da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa81fa2f3673f99233372708ba286c74a6c01eb6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xaa18cdb16a4dd88a59f4c2f45b5c91d009549e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xabf8b0098cd1ca13358b43bc42815cd0fc66baaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xac8509062f49456ea69625306e90702ea607c98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaca1d8a5746ddc3a0afeee61ee4b40ceaa379097` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xaec06345b26451bda999d83b361beaad6ea93f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaf6b2cd13d838d5973dbfc789c1b0a19eed34bd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xb30e7a2e6f7389ca5ddc714da4c991b7a1dcc88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb5aff6a99ee127f332082a6f517bfdd74024ae76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb7a139a04c90107b579792e8a17b442f12d30427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb7a4c531ca096c4b36e754663a76173287e34ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb817e91a7ec8cb53ef318d866f25be504048cc12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba595cbb5f8180b424a049756a24c80b32ef3b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbda5d757471f3c28eefe7c03156eac577eacecd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | n/a | `0xbe6c6a389b82306e88d74d1692b67285a9db9a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc29d6792e81086788fd485b345b4b2d3fad2897e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc376b8f30385d1c8884045401179caa78d6f666a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc433b684246bf877eff2de42f8d31acc53b7f0cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc5f1f9fa074e700abe55eb8420e3f53a488c8158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc601acdb44e8c0aa2e1a8f235fc505a300315658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc6edda97994347dce5838ae46c5a4461255e7906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc78a6ed0ce135fde74b6913c3d0d9947c620e012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc848a1d1783d751096d2e6926153810fac830f8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc9ec730854e5c1245758415e94c812f5b9e30c42` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | n/a | `0xcc22f6aa610d1b2a0e89ef228079cb3e1831b1d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcd3977ace7a8faa004c7e25a8d117bf65cb07fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd0d6fa5a27eb2fc77e8037148f1020af2fd020ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd14bc4944de5736411d1254dabd89bff53102530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd2d7ee9d494479b21a7497e2be9d7317baf7161b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd79746c8335a8ea835f1268612a6663ec901749e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd9db02e70a606acdf1daaeba606cc9734be15ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xda5aa066cb5aa3bd3ec9de8d8b1a955dee36fcd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdab299459edd2cc828ac6821a02fbde635237970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdf2bc8872a99a8f3977696bb392caa232fb9e3f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe12eda65af05046fdcf5fed83308cd3d97ac2317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe2608486b2a3a2b7640f8ac60a0fd5660e537d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe38f2bdf0919872e559201e45bf8a8d31eb8852e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe484c57ef3d6b0e8fe6bc3cbabd4713c60d77be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe68f59a390287ae63e98f8f162929e27791a8717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe98256fa7593e7917f8c5732bc1a5dd3ff9092db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xea5dc4e5787d6c127585ec163e9c296873c5b849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf0f37b4c35ed5e2e301433dd99b45aa05cbc0cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf482ebb416502c7977bd3a21e5a392fb58d5d351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf59352e3698e432ca4726707969ce97b6feadde8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf6f62293203e71332a026c7bd6fea69a50fb305e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf9bbdebd91cfe40354696b2dc92b8db7df66ce65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb6abe1fcfcd0e37a4c451a95a66ee88a88a5909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfc28fb0543947147ac439f7dab5ea6b0144f6233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff186ab523155a505d3f7a2514e7ebc8bc1099b9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 115
- Live contracts: 0
- Unknown liveness contracts: 115
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=115

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x028504da7ccb079f90dba2d75f09d9d6f7f0da7e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x045f37539d922fbce248b49ab17b0c1185f36d15` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x04f19eb113efd349ff469a32321debf2ba3c698d` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x052a54fbdcd7aac0ca7df486f3fd29012ccc465e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x0546984d3634792828d49b09cd0aee8c02675811` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x08cee93a9f9bd25f5f766be1bf2738c47712a1a9` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x0b100e1efc2cde6d3c2a9819f2d0048a9a5a168c` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x0f0e1fdc1f8c5cfa97e1fca5256f82e5174dce88` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x117cbbe20009c7ab2634a5c87ee4bcc825bc2a17` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x131d56758351c9885862ada09a6a7071735c83b3` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x1373d116a7e45727f07c82b0a3e6c616238d0da4` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x183f76b3f29d0d8718f17a7bc7542a652c591ebf` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x18b9f1391b1a8b7364aa53b7fd724e4b4818a32f` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x1d5e0ebda1b8005f05a22d6b0a94aaa617089486` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x1ee7ee91afcb3c5d25ea9fcb48c3ab15e2f7e845` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x24b333aa5bf46c5553bd4f8ba1980ce1a47fc3da` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x26dcd5ad3f521d4fc276f1a022fbe922a9583ec0` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x2714f2d7af5b9f7b3ffb3e1a6e5dbad62dea8dfa` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x2a85a1085570b09add8de0c919864723bc821074` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x2ab2398303b79884b8ec18a145ebd496145dfeec` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x2e98ef87f7f0d31987a0d94051b8bc5d001152e8` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x2ec0691e8d4342b62dac8313941effe6f510f97d` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x37f78523871e440acbfbaff9ff6c5aa81467af22` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x39ca329d52bc1ad94e47f78d5d283bba651256a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x3a5190a0514082f9af0dcba2364840695c58b3af` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x3c4e8fc58e1c2cf59d73524c1894534a12b8702b` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x3dc531557935ff04f1756ba46319be90745e52a6` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x3ed94458e1c64359472f3e12592e3b64daedf24f` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x3fc99a883b13ed85edad7a3b75365874ff7bfe69` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x40391797bda8b22168fbaa87826ee7c060e6fcc8` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x4391fff15f07076139f34861bca297571cfb74ea` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x440361b60436d8e652adf6c265260e3f0d10879d` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x47e6831ebb3bfe4f9e21aff39020f9811f879190` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x494cd8fc7b3cbdecd27194d1677a28d9ef62d299` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x4a307c6044d300f8b6fb4d1da84c8276ddba8e93` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x4a9684ce63f6668f0e35e76c1174975c4d52d63f` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x4b2137d3f8c850dff43d1bd89fdd74621e5401ea` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x4e6db87cd059e0f95ce36508b89775bc7aa995fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x4e9b3fc64ffdca0da6ed295c639ad803b5c479ae` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x4fb9ec0db6c7a44c09660a42721b9385739c9d58` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x55072d40f539f727c018b7db564ae322e96419c5` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x5672a00f69556dd85c0e342a4c9685a4be80b26e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x56fd96411084821168377531aedee11f0c6a0770` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x61cb3a0c59825464474ebb287a3e7d2b9b59d093` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x61d8b49fa46f747c4512474749dddc1902d6ea9d` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x62d8ca56b4bce52c00efc179ce3bbd04b9cb341f` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x6309bf8380c9735868fb1b5b54512cdb5078cc7b` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x632b7f71c3dd7a71b6a364444256371f7c6e8ba1` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x636adade862c1675877ce2842f40c8c1b0bc3efb` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x63ba670a96951360371498e5d8817df08a45a3a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x64929ae7245e90e5429582498d86cd629863a1a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x65ab66846b941cbe221ff4be5fffc2a844033811` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x68d851b8e27a62e864602f71f10edd6ee9e6f2bc` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x6c942077d9ee0d46ee9f17e880ccb1ff7b288545` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x6ea34e5ed0f2b994078bf1d24948034b3fed9007` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x6f2e81fb302a46c9c4b6bc430802612235a8ad19` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x77d13550aa829e58de40459d103724e734cc3393` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x7b3009f2cb13671a740bdedef266ab164c0b4cff` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x7ca21be3271b0b94101f177fda8701cd7ef6e69f` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x7daeaa7549db47793db1586e00edc0372da35085` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x7e102ab6e2c4e5191e02be8960050c12ef81d0c4` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x82407468da3c5df510ac460bd74684b8d876d88d` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x8602cd304bdbe68bbbd3292d95c64bcaad52721e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x8961770be6108bc9446bfbfaa5ff5219b8f83a70` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x8c538063845a754eb5fa3cbbcfaa3eeeccaf50fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x8da2e22bd6d52e92672f5123233163d5e90fb8d5` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x92791129124e78097874e9a465bea205cf3598d7` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0x98076eda1223ce9d2191d1dadb620a1420229155` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xa490914f98bf70930de85d070afddcb77f21a3d6` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xa4bc8becac95218c1e22349c41f281fad8c5755f` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xa74f301f527e949bec8f8c711646bf46fbcb08da` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xa81fa2f3673f99233372708ba286c74a6c01eb6b` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xabf8b0098cd1ca13358b43bc42815cd0fc66baaf` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xac8509062f49456ea69625306e90702ea607c98d` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xaca1d8a5746ddc3a0afeee61ee4b40ceaa379097` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xaf6b2cd13d838d5973dbfc789c1b0a19eed34bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xb5aff6a99ee127f332082a6f517bfdd74024ae76` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xb7a139a04c90107b579792e8a17b442f12d30427` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xb7a4c531ca096c4b36e754663a76173287e34ee0` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xb817e91a7ec8cb53ef318d866f25be504048cc12` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xba595cbb5f8180b424a049756a24c80b32ef3b8d` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xbda5d757471f3c28eefe7c03156eac577eacecd7` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc29d6792e81086788fd485b345b4b2d3fad2897e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc376b8f30385d1c8884045401179caa78d6f666a` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc433b684246bf877eff2de42f8d31acc53b7f0cc` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc5f1f9fa074e700abe55eb8420e3f53a488c8158` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc601acdb44e8c0aa2e1a8f235fc505a300315658` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc6edda97994347dce5838ae46c5a4461255e7906` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc78a6ed0ce135fde74b6913c3d0d9947c620e012` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc848a1d1783d751096d2e6926153810fac830f8e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xc9ec730854e5c1245758415e94c812f5b9e30c42` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xcd3977ace7a8faa004c7e25a8d117bf65cb07fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xd0d6fa5a27eb2fc77e8037148f1020af2fd020ec` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xd14bc4944de5736411d1254dabd89bff53102530` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xd2d7ee9d494479b21a7497e2be9d7317baf7161b` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xd79746c8335a8ea835f1268612a6663ec901749e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xd9db02e70a606acdf1daaeba606cc9734be15ed4` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xda5aa066cb5aa3bd3ec9de8d8b1a955dee36fcd3` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xdab299459edd2cc828ac6821a02fbde635237970` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xdf2bc8872a99a8f3977696bb392caa232fb9e3f6` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xe12eda65af05046fdcf5fed83308cd3d97ac2317` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xe2608486b2a3a2b7640f8ac60a0fd5660e537d5b` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xe38f2bdf0919872e559201e45bf8a8d31eb8852e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xe484c57ef3d6b0e8fe6bc3cbabd4713c60d77be7` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xe68f59a390287ae63e98f8f162929e27791a8717` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xe98256fa7593e7917f8c5732bc1a5dd3ff9092db` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xea5dc4e5787d6c127585ec163e9c296873c5b849` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xf0f37b4c35ed5e2e301433dd99b45aa05cbc0cb0` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xf482ebb416502c7977bd3a21e5a392fb58d5d351` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xf59352e3698e432ca4726707969ce97b6feadde8` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xf6f62293203e71332a026c7bd6fea69a50fb305e` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xf9bbdebd91cfe40354696b2dc92b8db7df66ce65` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xfb6abe1fcfcd0e37a4c451a95a66ee88a88a5909` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xfc28fb0543947147ac439f7dab5ea6b0144f6233` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |
| unverified unclassified | UnnamedContract<br>`0xff186ab523155a505d3f7a2514e7ebc8bc1099b9` | non_address_book | unknown | unknown | unverified | n/a | `0x1234561fed41dd2d867a038bbdb857f291864225` |

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
| needs_review | 169 |

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
