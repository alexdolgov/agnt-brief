# Agentic Audit Brief: Inception

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 11 (3 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Inception (`inception`)
- Website: [https://www.inceptionlrt.com/](https://www.inceptionlrt.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, blast, bsc, ethereum, fraxtal, linea, mode, optimism, optimism-sepolia
- Contract surface: 284 unique implementations (288 raw deployments)
- Coverage basis: 2/16 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,411,204.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Inception. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, arbitrum-sepolia, base, blast, bsc, ethereum, fraxtal, linea, mode, optimism, optimism-sepolia, sepolia. Structural roles: 10 core, 4 supporting, 1 infra, 1 unclassified. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (10), supporting (4), infra (1), unclassified (1)
- Contract kinds: contract (16)
- Detected standards: ownable (9), erc20 (8), erc20permit (8), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (10), solmate (10)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 94 contracts are derived from known codebases. 94 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x016e074ca7304b815e29a9b9d8cf7a5603da2a5f`, chain 1)
- UnnamedContract (`0x07f86901057f392fd3a508b8abcbaafb08c13b1e`, chain 1)
- UnnamedContract (`0x11e8808018afe9343fceb33043f06e1bfbd5d3f3`, chain 1)
- UnnamedContract (`0x12181a5454542610f524e53650038889edc6a07f`, chain 1)
- UnnamedContract (`0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12`, chain 1)
- UnnamedContract (`0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c`, chain 1)
- UnnamedContract (`0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36`, chain 1)
- UnnamedContract (`0x295234b7e370a5db2d2447aca83bc7448f151161`, chain 1)
- UnnamedContract (`0x34241c4c5fb90a9c6b37583ed77a346e1a053c17`, chain 1)
- UnnamedContract (`0x343281bb5029c4b698fe736d800115ac64d5de39`, chain 1)
- UnnamedContract (`0x36b429439ab227fab170a4dfb3321741c8815e55`, chain 1)
- UnnamedContract (`0x46199caa0e453971cedf97f926368d9e5415831a`, chain 1)
- UnnamedContract (`0x4878f636a9aa314b776ac51a25021c44caf86bed`, chain 1)
- UnnamedContract (`0x50253dc4a01c6408fab9646e804fcbfdb74e3e4c`, chain 1)
- UnnamedContract (`0x57a5a0567187ff4a8dcc1a9bba86155e355878f2`, chain 1)
- UnnamedContract (`0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d`, chain 1)
- UnnamedContract (`0x668308d77be3533c909a692302cb4d135bf8041c`, chain 1)
- UnnamedContract (`0x69c59c3dd7566eb12792203f8f832ca81a050eb1`, chain 1)
- UnnamedContract (`0x6e17a8b5d33e6dbdb9fc61d758bf554b6ad93322`, chain 1)
- UnnamedContract (`0x74d1984a64f447371be4019920180b52a33adadd`, chain 1)
- UnnamedContract (`0x7fa768e035f956c41d6aeaa3bd857e7e5141cad5`, chain 1)
- UnnamedContract (`0x80d69e79258fe9d056c822461c4eb0b4ca8802e2`, chain 1)
- UnnamedContract (`0x814cc6b8fd2555845541fb843f37418b05977d8d`, chain 1)
- UnnamedContract (`0x8bc73134a736437da780570308d3b37b67174ddb`, chain 1)
- UnnamedContract (`0x8e0789d39db454dbe9f4a77acef6dc7c69f6d552`, chain 1)
- UnnamedContract (`0x90e80e25abdb6205b08deba29a87f7eb039023c2`, chain 1)
- UnnamedContract (`0x9181f633e9b9f15a32d5e37094f4c93b333e0e92`, chain 1)
- UnnamedContract (`0x94b888e11a9e960a9c3b3528eb6ac807b27ca62e`, chain 1)
- UnnamedContract (`0x9efde41a87fa4dd47baa584954e8abd5b8bdbfe7`, chain 1)
- UnnamedContract (`0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45`, chain 1)
- UnnamedContract (`0xa22a7a8c550760574fd7b722c9f7100902d57707`, chain 1)
- UnnamedContract (`0xa8211b17ee8cc9c3e739c32710cc4d6621b360ae`, chain 1)
- UnnamedContract (`0xa9f8c770661bee8df2d026edb1cb6ff763c780ff`, chain 1)
- UnnamedContract (`0xae48b92cbc0882a7d70d878e42cc121a62ceb632`, chain 1)
- UnnamedContract (`0xbd600020f943f7c61a8123fe2720a05434a3b38b`, chain 1)
- UnnamedContract (`0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e`, chain 1)
- UnnamedContract (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 1)
- UnnamedContract (`0xc0660932c5dcad4a1409b7975d147203b1e9a2b6`, chain 1)
- UnnamedContract (`0xc29783738a475112cafe58433dd9d19f3a406619`, chain 1)
- UnnamedContract (`0xc3ade5ace1bbb033ccae8177c12ecbfa16bd6a9d`, chain 1)
- UnnamedContract (`0xc4181dc7bb31453c4a48689ce0cbe975e495321c`, chain 1)
- UnnamedContract (`0xc6cc133477f63d9c0c53d1ef7da83fa250778db4`, chain 1)
- UnnamedContract (`0xc7373753e8991cea030b01d580c53dda4da31d18`, chain 1)
- UnnamedContract (`0xc88b97cee6db90c1186497619eb43cc8160e391c`, chain 1)
- UnnamedContract (`0xd0ee89d82183d7ddaef14c6b4fc0aa742f426355`, chain 1)
- UnnamedContract (`0xd496417a50db34279631e0af459493cf9685f529`, chain 1)
- UnnamedContract (`0xd6d553327b16dd6076d69c2daec91a50dd1e9f66`, chain 1)
- UnnamedContract (`0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc`, chain 1)
- UnnamedContract (`0xd8554b2075e9b403d26c8cc444b2dd3b929162c2`, chain 1)
- UnnamedContract (`0xda9b11cd701e10c2ec1a284f80820edd128c5246`, chain 1)
- UnnamedContract (`0xebfa0353dff1801f5c8ea07448771d6fadd1e721`, chain 1)
- UnnamedContract (`0xecf3672a6d2147e2a77f07069fb48d8cf6f6fbf9`, chain 1)
- UnnamedContract (`0xefaf124849b11b513c35350cd8643d29de49c2ba`, chain 1)
- UnnamedContract (`0xf07052b5a61bbcc8d14a8567494ae8ad688641f9`, chain 1)
- UnnamedContract (`0xf073bac22dab7faf4a3dd6c6189a70d54110525c`, chain 1)
- UnnamedContract (`0xf21014b114bb976f890e15c19900ce9be5fb1e12`, chain 1)
- UnnamedContract (`0xf3207c4a1fc0d32ccd1159f47a8e5a4b1c0fd59f`, chain 1)
- UnnamedContract (`0xf9d9f828989a624423c48b95bc04e9ae0ef5ec97`, chain 1)
- UnnamedContract (`0xfa2629b9cf3998d52726994e0fcdb750224d8b9d`, chain 1)
- UnnamedContract (`0xfd07fd5ebea6f24888a397997e262179bf494336`, chain 1)
- UnnamedContract (`0xfe715358368416e01d3a961d3a037b7359735d5e`, chain 1)
- UnnamedContract (`0x3059a337b134cc89851c8de18a00d880fa1d5519`, chain 56)
- UnnamedContract (`0x5a32d48411387577c26a15775cf939494da8064a`, chain 56)
- UnnamedContract (`0x157743261c3ba961e92421b268a881aece450d41`, chain 252)
- UnnamedContract (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 252)
- UnnamedContract (`0xc0660932c5dcad4a1409b7975d147203b1e9a2b6`, chain 252)
- UnnamedContract (`0xda9b11cd701e10c2ec1a284f80820edd128c5246`, chain 252)
- UnnamedContract (`0xe162075a1c0ac7e985253972beca5e83da3bbaa4`, chain 252)
- UnnamedContract (`0xb655932ee66a3c609d57cc24309a0e2c594c944e`, chain 8453)
- UnnamedContract (`0x5a32d48411387577c26a15775cf939494da8064a`, chain 34443)
- UnnamedContract (`0x57a5a0567187ff4a8dcc1a9bba86155e355878f2`, chain 42161)
- UnnamedContract (`0x971b35225361535d04828f16442aaa54009efe1a`, chain 42161)
- UnnamedContract (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 42161)
- UnnamedContract (`0x5a32d48411387577c26a15775cf939494da8064a`, chain 59144)
- UnnamedContract (`0xa365fb18f98cd724f08109f64ea88ed8d7864266`, chain 59144)
- UnnamedContract (`0xbf47307f7bd75a8db3c8f69f913e9b77fc222e84`, chain 59144)
- UnnamedContract (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 59144)
- UnnamedContract (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 81457)
- UnnamedContract (`0xc0660932c5dcad4a1409b7975d147203b1e9a2b6`, chain 81457)
- InceptionBridge (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 34443)
- InceptionToken (`0x1aee5ec60fc79b669f11fe368fde789e267649e2`, chain 1)
- InitializableTransparentUpgradeableProxy (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 10)
- InitializableTransparentUpgradeableProxy (`0xb2b446386633c6746b0a2735fb57edbb066c5878`, chain 56)
- InitializableTransparentUpgradeableProxy (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 56)
- InitializableTransparentUpgradeableProxy (`0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac`, chain 8453)
- XERC20 (`0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d`, chain 10)
- XERC20 (`0xd08c3f25862077056cb1b710937576af899a4959`, chain 10)
- XERC20 (`0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d`, chain 56)
- XERC20 (`0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d`, chain 34443)
- XERC20 (`0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d`, chain 42161)
- XERC20 (`0xd08c3f25862077056cb1b710937576af899a4959`, chain 42161)
- XERC20 (`0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d`, chain 59144)
- XERC20 (`0xd08c3f25862077056cb1b710937576af899a4959`, chain 59144)
- XERC20 (`0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 95/106 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/16 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 95 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 188 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 95 of 284 unique; 189 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/30
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 254
- Unique implementations: 284
- Raw deployments: 288
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 3.3% | 2024-10 |
| Oxorio | Tier 2 | 1 | 3.3% | 2025-03 |
| Veridise | Tier 2 | 1 | 3.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-242550 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ✅ Audited |
| InceptionToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-242573 | `0x1aee5ec60fc79b669f11fe368fde789e267649e2` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AmphorSyntheticVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4a324fdf8a2495776b4d6ca46599b5a52f96489` | ⚠️ Unaudited |
| AmphorSyntheticVaultWithPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2791eb5807d69fe10c02eed6b4dc12bac0701744` | ⚠️ Unaudited |
| AmphorVaultWithPermit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0498b85fb4ec85ef5efe82513aa9daf767358a15`; ethereum `0x920f17e741029d904936c58a545dffc72f82c079`; ethereum `0xf97ecda5f9ff31d83f635a6ea70d2d3b9c8f2e00` | ⚠️ Unaudited |
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-242574 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ⚠️ Unaudited |
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-242575 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ⚠️ Unaudited |
| InceptionBridge | operational_periphery | project_anchor | own_supporting | 1 | base | unit-242577 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ⚠️ Unaudited |
| InceptionBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | ⚠️ Unaudited |
| InceptionLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a6a8a7233b16d0ecaa7510bfd110464a0d69f66` | ⚠️ Unaudited |
| InceptionRatioFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e` | ⚠️ Unaudited |
| InceptionRestaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02e2fce3efe6619ad882b159e7d897a9c03a33f0` | ⚠️ Unaudited |
| InETHRateProvider | unknown | project_anchor | own_supporting | 0 | mode | unit-242549 | `0x971b35225361535d04828f16442aaa54009efe1a` | ⚠️ Unaudited |
| InVault_S_E2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc5b1c0b7d255d4a217abe7131e7db6f063ee53` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | ⚠️ Unaudited |
| RestakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d6f764452ca43eb8bd22788c9db43e4b5a725bc`; ethereum `0x80c1ef2e1bc5c2adfe1d245e1c1c4969156bd0fc` | ⚠️ Unaudited |
| RestakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512d8b575ce2a5bd21721ba05773e420ba90285b` | ⚠️ Unaudited |
| Silo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x06ecfaade8fcb8c1bc58cb05104604282f8a8144`; ethereum `0x361a027e660844f336d5fa07e4cb38c40d5880d9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xfe715358368416e01d3a961d3a037b7359735d5e` | ⚠️ Unaudited |
| VaultZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd697d2af3ddfe4ed24e92a230c4b93606b5d05fb` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-242535 | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-242537 | `0xd08c3f25862077056cb1b710937576af899a4959` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-242561 | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 1 | bsc | unit-242576 | `0xb2b446386633c6746b0a2735fb57edbb066c5878` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | mode | unit-242548 | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-242553 | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-242557 | `0xd08c3f25862077056cb1b710937576af899a4959` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | linea | unit-242564 | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | linea | unit-242568 | `0xd08c3f25862077056cb1b710937576af899a4959` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 0 | blast | unit-242569 | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (254)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242472 | `0x016e074ca7304b815e29a9b9d8cf7a5603da2a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043b7dd4979fb34deca99a131ca69dac3805fcb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d7cd78913622b59197880f58c40fdb90a84dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242473 | `0x07f86901057f392fd3a508b8abcbaafb08c13b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09740e3b2ccf6e82f4fb3a57519c8b65da728378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c0f7e04b460a57a294bebc6ed0360d0606ec479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cfa3eccc3159a0d5fbe7833111d4703769c34a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d79adac5c7043c489a84887d334b7f907706b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e1b44f0c5968c499f62fbd711ce0247db6a47b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e737cc771a4d8b4bcf4f5de88a7f75368e02413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10ccb7afb5c2c20fffa38eaf1fbc99db571bf57a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d9a419478fee5aa35c9f3b36b37025e9ff8110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x110a4a90d7c8fb68c35f01f5ece186256b62ec3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x113a5a84f42b7485970d0ea6061dd2cbed35f7fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242474 | `0x11e8808018afe9343fceb33043f06e1bfbd5d3f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242475 | `0x12181a5454542610f524e53650038889edc6a07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x122ee24cb3cc1b6b987800d3b54a68fc16910dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13e4a6a36b61bef57f2f4b6032da945a33af144e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161cd8fd2694d220e246854e177b726d8e36971d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x180e0f5efad0a5299e9b6724ba3ef6ea59914246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242476 | `0x1aa53bc4beb82adf7f5edee9e3bbf3434ad59f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d14041c0e180bace9eae187d30b76495d3c5f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e0bd0291165f789b794e9513eb07a76849c1448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eba85cad86f88746d7085b38c2d9cbdecea9808` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242477 | `0x1f27848ae927ba278ee575e4a55f6c7ed7bffe8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x203d19635e6df0263a431c4d9b8e654dec723f62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242478 | `0x20f6d8e1e821bd5b94f7bf725af304bc5ef09c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2313ce24b5e5807e9ecfac0597367f37369c00a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2356d46d89e056f222185ef101165e88073941bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ee753885eb18d60794815caaf63402915bfa50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242479 | `0x295234b7e370a5db2d2447aca83bc7448f151161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x295a7386bf8d307183ae10e3c10eb25ebe84a2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eb6a1f359a0f067d3c919b3efcf784b33546958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313d6c1b075077ce10b3229ee75e0af453cb7d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242480 | `0x34241c4c5fb90a9c6b37583ed77a346e1a053c17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242481 | `0x343281bb5029c4b698fe736d800115ac64d5de39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36863d0d91a0770cc65c42073400aa66d9008fca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242482 | `0x36b429439ab227fab170a4dfb3321741c8815e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3748be19169d5ff32bf9190b8ef8c6747cd3c8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aeb6059b8c5e3656122e1b780e8f5765f6f7193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b621acceb6628d85ddacbfb57572433458b54e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b7373fdfd76240b3d6fedb620683dc95704e68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c99910d7fae79d244c28e1865e16dffa68dd129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3b174157745bba555774078cdfaaa89aa11e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d662fd6a22ed64077222cfb998e8effd78e9c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425bbf58df398d13677aa56fcd5daca02b2f2180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x429e9c65a0e69a6030f0d7c39cf39a3b3f5f292d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x453fcff2599cc16cc5ab6fcd4aa5e4a791da9e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x459d3411267f28e61da7c66f182b1c9fba4c9e36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242483 | `0x46199caa0e453971cedf97f926368d9e5415831a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47489d01f7719b1e057c54db1e3d78f89a1d3544` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242484 | `0x4878f636a9aa314b776ac51a25021c44caf86bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a85b9129b5a060b791f5b657fcb883f2542a4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b21a1ee9268f4cf259e228388e1f3ec0c67d665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c858892decbf31460603f4bfc4620c328047f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9c847eacbb6c55c62a99891d09f2ec77813638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fbf33a215861e2bfe01c90760ad5c58921def36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242485 | `0x50253dc4a01c6408fab9646e804fcbfdb74e3e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5198be473482e8f1f96c587933296fa8a14b725e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51ffd2c933a83efb9562736d4c6c69cdb3e036e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53207e057e8cc72312f6981a889fc286fafa59dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540529f2cf6b0ce1cd39c65815487afd54b61c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e1eab75ce5efdf9b16029e2db5f9996fd46c37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242486 | `0x57a5a0567187ff4a8dcc1a9bba86155e355878f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59114182500d834b8e41a397314c97eee96ee9bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242487 | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa10289f09197eafff327e7572396ac3b549ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x622d97fd5fa70ff4e9b797e51c37407d05434f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63590b09bccc56667934f5e4793a1941bce69aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a6c90871b774c1678ddbc48d99040b03a9b84d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65306723cc230aa0dcb6e844fe769439f08f333a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ab69857c23cb65e713efdaac930a892b161a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65b13b6133e928366c0a9664123de7ef3d63a614` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242488 | `0x668308d77be3533c909a692302cb4d135bf8041c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66c559fc4fa46a47262efd39db8222275249566c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bd17da89acdf311246268d446e53cba2dc6b55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242489 | `0x69c59c3dd7566eb12792203f8f832ca81a050eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bb087367a5d2f5ac35a25ad69d97a3fbf663495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242490 | `0x6e17a8b5d33e6dbdb9fc61d758bf554b6ad93322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a39592218548c2204e25e82592403b21844f2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242491 | `0x74d1984a64f447371be4019920180b52a33adadd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c374bca91d6ea23d5947b8a218f0d462d09019b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c388e8cbce59ce36b38169058f82d8f774088e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7eed6897d9f032abccffd2f6aafcfb59b24bd58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7efc15f6455542d93996fca1c5d4316087c0e405` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242493 | `0x7fa768e035f956c41d6aeaa3bd857e7e5141cad5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242494 | `0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80e27343ab9540cdebd6b865f84a91f3ad3a89f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242495 | `0x814cc6b8fd2555845541fb843f37418b05977d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81b98d3a51d4ac35e0ae132b0cf6b50ea1da2603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81cdde43155db595dba2cefd50d8e7714aff34f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d87f4c7171cabb9ac55ae3f60f7d15f595a46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83843225e5ab97c19accc42a47c34eeb039a3b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872979de5094f1b2fd6bf26013eb2b5ed302d1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88fcd64fba65f67f8a9f7a882f419d72af905fc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242496 | `0x8bc73134a736437da780570308d3b37b67174ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d18ebb466ed7c57fa2d912ce8e484a6367eff3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242497 | `0x8e0789d39db454dbe9f4a77acef6dc7c69f6d552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55d301d593b371998725919abe4249e7c3e7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe10f5e170de85dd0ab1b69e5ce522a625ca137` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242498 | `0x90e80e25abdb6205b08deba29a87f7eb039023c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242499 | `0x9181f633e9b9f15a32d5e37094f4c93b333e0e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9495ff28510f00eb9d3f6ead0feab7b01c24d35b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242500 | `0x94b888e11a9e960a9c3b3528eb6ac807b27ca62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x971b35225361535d04828f16442aaa54009efe1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99964b66b6fc08f7cc5b156d7ef00b9de182804f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d64871c9848fda3b3ff1ec2fc84033401ccd5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a5969be8b1dc45fe2534a425cd562cff46592c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bb0f64c5a5e9120f55cde6b15683ff11abc0ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2a6266748b55f176a5b954c5b80a499c5fee01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242501 | `0x9efde41a87fa4dd47baa584954e8abd5b8bdbfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0044ece2b29b78c74a7b16c4178d7c204e48b4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242502 | `0xa1bb72c5915a7e2c85baea2c563858eacb3f7a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1ca3b5f8791388ce64f23454d2122bf8d1a01a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242503 | `0xa22a7a8c550760574fd7b722c9f7100902d57707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25cd75108334e5ae6cf3a1b69b4880878b4fe83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa27f2f4da035f847ad4b40f83e186b4abb589e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2aeaf634ad12c51aac17e656c155866ad9423b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa45ea1d6fb4b5596b4b5c5e69d02be480625bb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa50299e123f6d18fa64b53c5fca1e1e08ba2251b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a5b4553911a063a1bb09aeb31185b19d478452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242504 | `0xa8211b17ee8cc9c3e739c32710cc4d6621b360ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242505 | `0xa9f8c770661bee8df2d026edb1cb6ff763c780ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa95d02e9c75804e6c7ba03fbd420a5d7f5fea5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab110ea38abf7929a2cebf1184f905865e1c51da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242506 | `0xae48b92cbc0882a7d70d878e42cc121a62ceb632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2dd98a174388cc230564c035ab63af40ee1fef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f44773e99cffecb00ae9ba62913ea14c3b6163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5a1e5383a8cf38c5cdad167424be9ff855b5285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a63a69cc0e635915e65379d2794f0b687d63ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80a7faca39a7989cf51024e8b62c4b2010658c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb83ad67814bed3478bb4239a5961391d836fce4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94063e58056725ced8d2b0363e0bd7d8f46875d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaa61a8d8bc52f5a9256612fab498c542188a132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbba781e2e3376fac640972856250e63a3ced938f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf7fc7036b60d1e88913bd583dc5e39957f9f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbccee926fd1295b7204c6d3536c7725f12d9bee6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242507 | `0xbd600020f943f7c61a8123fe2720a05434a3b38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf1c9ffa7524a7281ca5d460f7d6f4786f4cb45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242508 | `0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242509 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242510 | `0xc0660932c5dcad4a1409b7975d147203b1e9a2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc16fee55879c0b077ea1328d87732e5a3e3b157c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18c5025615b26bcdf66128715c031fda082f6ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242511 | `0xc29783738a475112cafe58433dd9d19f3a406619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc33a8284b431f2d5765327283388eb88f8ed7357` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242512 | `0xc3ade5ace1bbb033ccae8177c12ecbfa16bd6a9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242513 | `0xc4181dc7bb31453c4a48689ce0cbe975e495321c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f1f28e3bf4a31ef6a6e0e6614f153ef7eeeec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f4d60b84082a5be1e44146116b7bdea57f8691` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242514 | `0xc6cc133477f63d9c0c53d1ef7da83fa250778db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc70470cdc428d6a3966cd25f476f84d898158638` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242515 | `0xc7373753e8991cea030b01d580c53dda4da31d18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242516 | `0xc88b97cee6db90c1186497619eb43cc8160e391c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc89d1a33c0d5e429029ad62f23b65a3ea5fa5acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9dc25eca1a94da3b69856a2211062f040a35477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdd6b2e8e43c4281f99c44a316bacc3348a873a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0db5d19d64cbf10c3f1ccfcc476e7aa64251af6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242518 | `0xd0ee89d82183d7ddaef14c6b4fc0aa742f426355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd26b63a645ac74c5b011e3ec054125a3c94f9503` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242519 | `0xd496417a50db34279631e0af459493cf9685f529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242520 | `0xd6d553327b16dd6076d69c2daec91a50dd1e9f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a622cc33e6dfaf689b4e6df1879154c982feba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242521 | `0xd812ba3543f9ab64b2bcbce34fb3b00bff2ba2fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242522 | `0xd8554b2075e9b403d26c8cc444b2dd3b929162c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242523 | `0xda9b11cd701e10c2ec1a284f80820edd128c5246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdae6ab0c1553c2f52b62f12887f5fe1b6322241a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcf8f9db2a95e2a57e79cf9a6fcbf73d82637d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd3a088d314020af5f3c92a0681ed0b9daa356c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde4d2db34794f929fcb11715a99e015ad63c31bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe740e57b8475512d64885153b75a510508f6088b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe99ad80f1367ef20e81ad72134192358670f7bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb49d254631e564d77aa6cc3057bd99915930e57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242524 | `0xebfa0353dff1801f5c8ea07448771d6fadd1e721` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242525 | `0xecf3672a6d2147e2a77f07069fb48d8cf6f6fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef6f479dbe4eaa80eea939d35fc0638c12473264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242526 | `0xefaf124849b11b513c35350cd8643d29de49c2ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242527 | `0xf07052b5a61bbcc8d14a8567494ae8ad688641f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242528 | `0xf073bac22dab7faf4a3dd6c6189a70d54110525c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0b06794b6b068f728481b4f44c9ad0be42fb8ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242529 | `0xf21014b114bb976f890e15c19900ce9be5fb1e12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242530 | `0xf3207c4a1fc0d32ccd1159f47a8e5a4b1c0fd59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf403eb7b69f6c7ab73bbaef42afe87c0a61a15d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6940a8e7334ab2a7781af6f9e5aed8efb55116a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7ebce975a42da280910ff31684ee751f69d0567` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242531 | `0xf9d9f828989a624423c48b95bc04e9ae0ef5ec97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242532 | `0xfa2629b9cf3998d52726994e0fcdb750224d8b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbb12699a8d1f7dab7b13acc1efc07f27c571a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbe36c85a3b34813410a3a240ab057504104a78d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242533 | `0xfd07fd5ebea6f24888a397997e262179bf494336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd73be536503b5aa80bf99d1fd65b1306c69b191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdddfed4274f323b7962cb50b4aada0065a51fc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdfb52865892f97531a9742aade702ab6e4a3b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe20c64f064c54fa126c651ded20a085013cd0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6a0d38c1eec9524bee74de47cd0b9edcec1a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242534 | `0xfe715358368416e01d3a961d3a037b7359735d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff8690df088346ad1559ee661edb79e243ea6159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x983c2239ad08307f978096844166c67e0f1b2630` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242559 | `0x3059a337b134cc89851c8de18a00d880fa1d5519` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242560 | `0x5a32d48411387577c26a15775cf939494da8064a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x983c2239ad08307f978096844166c67e0f1b2630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea428946a2c602c09c0f737ea65bc16298b0415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0f2c983032fa60f038d5ac0f3466dafd2c6642c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242542 | `0x157743261c3ba961e92421b268a881aece450d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x64a6c90871b774c1678ddbc48d99040b03a9b84d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7fa768e035f956c41d6aeaa3bd857e7e5141cad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242543 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242544 | `0xc0660932c5dcad4a1409b7975d147203b1e9a2b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242545 | `0xda9b11cd701e10c2ec1a284f80820edd128c5246` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242546 | `0xe162075a1c0ac7e985253972beca5e83da3bbaa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe7677895fa243891348c6e823672f65dc68a7ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf0b06794b6b068f728481b4f44c9ad0be42fb8ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfd07fd5ebea6f24888a397997e262179bf494336` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242572 | `0xb655932ee66a3c609d57cc24309a0e2c594c944e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242547 | `0x5a32d48411387577c26a15775cf939494da8064a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5d944729cddfd8270be5c557e53868353cf80a46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242552 | `0x57a5a0567187ff4a8dcc1a9bba86155e355878f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80579bfb49e62bdfc57817db15539f19b0071813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242554 | `0x971b35225361535d04828f16442aaa54009efe1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x983c2239ad08307f978096844166c67e0f1b2630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2f44773e99cffecb00ae9ba62913ea14c3b6163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242556 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdea808c1c43f95309c8ca398df41a257af2dc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1e555c3e9d46ccd3832432a05f967e5c4e1fec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe715358368416e01d3a961d3a037b7359735d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x048a2f5cd64b89f750cf14a5f36922ae7b07221c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242563 | `0x5a32d48411387577c26a15775cf939494da8064a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5d944729cddfd8270be5c557e53868353cf80a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242565 | `0xa365fb18f98cd724f08109f64ea88ed8d7864266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242566 | `0xbf47307f7bd75a8db3c8f69f913e9b77fc222e84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242567 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc4181dc7bb31453c4a48689ce0cbe975e495321c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcdea808c1c43f95309c8ca398df41a257af2dc8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe8de15d90d4975d3f07d413dd4ab91708eb9f766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x983c2239ad08307f978096844166c67e0f1b2630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa9f8c770661bee8df2d026edb1cb6ff763c780ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242570 | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242571 | `0xc0660932c5dcad4a1409b7975d147203b1e9a2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfd07fd5ebea6f24888a397997e262179bf494336` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242541 | `0x983c2239ad08307f978096844166c67e0f1b2630` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 174
- Live contracts: 1
- Unknown liveness contracts: 173
- Source-verified contracts: 9
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=7, source verified unclassified=2, unverified unclassified=165

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x80579bfb49e62bdfc57817db15539f19b0071813` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb2f44773e99cffecb00ae9ba62913ea14c3b6163` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd1e555c3e9d46ccd3832432a05f967e5c4e1fec5` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfe715358368416e01d3a961d3a037b7359735d5e` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| blast | unverified unclassified | UnnamedContract<br>`0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| blast | unverified unclassified | UnnamedContract<br>`0xa9f8c770661bee8df2d026edb1cb6ff763c780ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| blast | unverified unclassified | UnnamedContract<br>`0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| blast | unverified unclassified | UnnamedContract<br>`0xfd07fd5ebea6f24888a397997e262179bf494336` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | candidate review | AmphorSyntheticVault<br>`0xc4a324fdf8a2495776b4d6ca46599b5a52f96489` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x255e26065387de09436db52acc4ae2a3cd11e854` |
| ethereum | candidate review | AmphorSyntheticVaultWithPermit<br>`0x2791eb5807d69fe10c02eed6b4dc12bac0701744` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x255e26065387de09436db52acc4ae2a3cd11e854` |
| ethereum | candidate review | VaultZapper<br>`0xd697d2af3ddfe4ed24e92a230c4b93606b5d05fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x255e26065387de09436db52acc4ae2a3cd11e854` |
| ethereum | source verified unclassified | AmphorVaultWithPermit<br>`0x0498b85fb4ec85ef5efe82513aa9daf767358a15` | non_address_book | unknown | unknown | verified | n/a | `0x255e26065387de09436db52acc4ae2a3cd11e854` |
| ethereum | source verified unclassified | AmphorVaultWithPermit<br>`0xf97ecda5f9ff31d83f635a6ea70d2d3b9c8f2e00` | non_address_book | unknown | unknown | verified | n/a | `0x255e26065387de09436db52acc4ae2a3cd11e854` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x043b7dd4979fb34deca99a131ca69dac3805fcb7` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04d7cd78913622b59197880f58c40fdb90a84dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e1b44f0c5968c499f62fbd711ce0247db6a47b0` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10ccb7afb5c2c20fffa38eaf1fbc99db571bf57a` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x122ee24cb3cc1b6b987800d3b54a68fc16910dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x161cd8fd2694d220e246854e177b726d8e36971d` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x180e0f5efad0a5299e9b6724ba3ef6ea59914246` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b621acceb6628d85ddacbfb57572433458b54e4` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x429e9c65a0e69a6030f0d7c39cf39a3b3f5f292d` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b21a1ee9268f4cf259e228388e1f3ec0c67d665` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59114182500d834b8e41a397314c97eee96ee9bd` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65b13b6133e928366c0a9664123de7ef3d63a614` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74a39592218548c2204e25e82592403b21844f2b` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c388e8cbce59ce36b38169058f82d8f774088e8` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7efc15f6455542d93996fca1c5d4316087c0e405` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81b98d3a51d4ac35e0ae132b0cf6b50ea1da2603` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82d87f4c7171cabb9ac55ae3f60f7d15f595a46a` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0044ece2b29b78c74a7b16c4178d7c204e48b4d` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab110ea38abf7929a2cebf1184f905865e1c51da` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7a63a69cc0e635915e65379d2794f0b687d63ec` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc70470cdc428d6a3966cd25f476f84d898158638` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc89d1a33c0d5e429029ad62f23b65a3ea5fa5acf` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe99ad80f1367ef20e81ad72134192358670f7bf9` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf403eb7b69f6c7ab73bbaef42afe87c0a61a15d0` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7ebce975a42da280910ff31684ee751f69d0567` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdfb52865892f97531a9742aade702ab6e4a3b24` | non_address_book | unknown | unknown | unverified | n/a | `0x7ef94a8cb0de6ef9fbfa5602b9fbad4320dddb80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09740e3b2ccf6e82f4fb3a57519c8b65da728378` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0cfa3eccc3159a0d5fbe7833111d4703769c34a9` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10d9a419478fee5aa35c9f3b36b37025e9ff8110` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f696f13dcdb2cd0f1927ad598613c7c95a33eaf` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2356d46d89e056f222185ef101165e88073941bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36863d0d91a0770cc65c42073400aa66d9008fca` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d3b174157745bba555774078cdfaaa89aa11e70` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d662fd6a22ed64077222cfb998e8effd78e9c9a` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x425bbf58df398d13677aa56fcd5daca02b2f2180` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x453fcff2599cc16cc5ab6fcd4aa5e4a791da9e86` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x459d3411267f28e61da7c66f182b1c9fba4c9e36` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47489d01f7719b1e057c54db1e3d78f89a1d3544` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a85b9129b5a060b791f5b657fcb883f2542a4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c858892decbf31460603f4bfc4620c328047f37` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c9c847eacbb6c55c62a99891d09f2ec77813638` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fbf33a215861e2bfe01c90760ad5c58921def36` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5198be473482e8f1f96c587933296fa8a14b725e` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51ffd2c933a83efb9562736d4c6c69cdb3e036e7` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x540529f2cf6b0ce1cd39c65815487afd54b61c2f` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63590b09bccc56667934f5e4793a1941bce69aba` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64a6c90871b774c1678ddbc48d99040b03a9b84d` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x650bd9dee50e3ee15cbb49749ff6abcf55a8fb1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65ab69857c23cb65e713efdaac930a892b161a67` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66c559fc4fa46a47262efd39db8222275249566c` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bb087367a5d2f5ac35a25ad69d97a3fbf663495` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83843225e5ab97c19accc42a47c34eeb039a3b04` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x872979de5094f1b2fd6bf26013eb2b5ed302d1ac` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f55d301d593b371998725919abe4249e7c3e7d3` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x971b35225361535d04828f16442aaa54009efe1a` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5a5b4553911a063a1bb09aeb31185b19d478452` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2dd98a174388cc230564c035ab63af40ee1fef7` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2f44773e99cffecb00ae9ba62913ea14c3b6163` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5a1e5383a8cf38c5cdad167424be9ff855b5285` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb94063e58056725ced8d2b0363e0bd7d8f46875d` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbaa61a8d8bc52f5a9256612fab498c542188a132` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbf7fc7036b60d1e88913bd583dc5e39957f9f17` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc33a8284b431f2d5765327283388eb88f8ed7357` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9dc25eca1a94da3b69856a2211062f040a35477` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcdd6b2e8e43c4281f99c44a316bacc3348a873a4` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdcf8f9db2a95e2a57e79cf9a6fcbf73d82637d91` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde4d2db34794f929fcb11715a99e015ad63c31bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef6f479dbe4eaa80eea939d35fc0638c12473264` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0b06794b6b068f728481b4f44c9ad0be42fb8ab` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6940a8e7334ab2a7781af6f9e5aed8efb55116a` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbe36c85a3b34813410a3a240ab057504104a78d` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd73be536503b5aa80bf99d1fd65b1306c69b191` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdddfed4274f323b7962cb50b4aada0065a51fc2` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe20c64f064c54fa126c651ded20a085013cd0eb` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe6a0d38c1eec9524bee74de47cd0b9edcec1a81` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff8690df088346ad1559ee661edb79e243ea6159` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c0f7e04b460a57a294bebc6ed0360d0606ec479` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d79adac5c7043c489a84887d334b7f907706b6a` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e737cc771a4d8b4bcf4f5de88a7f75368e02413` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x110a4a90d7c8fb68c35f01f5ece186256b62ec3e` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x113a5a84f42b7485970d0ea6061dd2cbed35f7fa` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13e4a6a36b61bef57f2f4b6032da945a33af144e` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d14041c0e180bace9eae187d30b76495d3c5f7d` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e0bd0291165f789b794e9513eb07a76849c1448` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1eba85cad86f88746d7085b38c2d9cbdecea9808` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x203d19635e6df0263a431c4d9b8e654dec723f62` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2313ce24b5e5807e9ecfac0597367f37369c00a2` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24ee753885eb18d60794815caaf63402915bfa50` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x295a7386bf8d307183ae10e3c10eb25ebe84a2d1` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2eb6a1f359a0f067d3c919b3efcf784b33546958` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x313d6c1b075077ce10b3229ee75e0af453cb7d07` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3748be19169d5ff32bf9190b8ef8c6747cd3c8db` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3aeb6059b8c5e3656122e1b780e8f5765f6f7193` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b7373fdfd76240b3d6fedb620683dc95704e68b` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c99910d7fae79d244c28e1865e16dffa68dd129` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53207e057e8cc72312f6981a889fc286fafa59dc` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54e1eab75ce5efdf9b16029e2db5f9996fd46c37` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5aa10289f09197eafff327e7572396ac3b549ea3` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x622d97fd5fa70ff4e9b797e51c37407d05434f0e` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65306723cc230aa0dcb6e844fe769439f08f333a` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69bd17da89acdf311246268d446e53cba2dc6b55` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c374bca91d6ea23d5947b8a218f0d462d09019b` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7eed6897d9f032abccffd2f6aafcfb59b24bd58e` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80e27343ab9540cdebd6b865f84a91f3ad3a89f3` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81cdde43155db595dba2cefd50d8e7714aff34f4` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x88fcd64fba65f67f8a9f7a882f419d72af905fc5` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d18ebb466ed7c57fa2d912ce8e484a6367eff3f` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8fe10f5e170de85dd0ab1b69e5ce522a625ca137` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9495ff28510f00eb9d3f6ead0feab7b01c24d35b` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99964b66b6fc08f7cc5b156d7ef00b9de182804f` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99d64871c9848fda3b3ff1ec2fc84033401ccd5b` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a5969be8b1dc45fe2534a425cd562cff46592c1` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9bb0f64c5a5e9120f55cde6b15683ff11abc0ed4` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c2a6266748b55f176a5b954c5b80a499c5fee01` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1ca3b5f8791388ce64f23454d2122bf8d1a01a8` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa25cd75108334e5ae6cf3a1b69b4880878b4fe83` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa27f2f4da035f847ad4b40f83e186b4abb589e7d` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2aeaf634ad12c51aac17e656c155866ad9423b1` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa45ea1d6fb4b5596b4b5c5e69d02be480625bb44` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa50299e123f6d18fa64b53c5fca1e1e08ba2251b` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa95d02e9c75804e6c7ba03fbd420a5d7f5fea5a` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb80a7faca39a7989cf51024e8b62c4b2010658c1` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb83ad67814bed3478bb4239a5961391d836fce4d` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbba781e2e3376fac640972856250e63a3ced938f` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbccee926fd1295b7204c6d3536c7725f12d9bee6` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbdf1c9ffa7524a7281ca5d460f7d6f4786f4cb45` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc16fee55879c0b077ea1328d87732e5a3e3b157c` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc18c5025615b26bcdf66128715c031fda082f6ef` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4f1f28e3bf4a31ef6a6e0e6614f153ef7eeeec6` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4f4d60b84082a5be1e44146116b7bdea57f8691` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0db5d19d64cbf10c3f1ccfcc476e7aa64251af6` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd26b63a645ac74c5b011e3ec054125a3c94f9503` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7a622cc33e6dfaf689b4e6df1879154c982feba` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdae6ab0c1553c2f52b62f12887f5fe1b6322241a` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd3a088d314020af5f3c92a0681ed0b9daa356c4` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe740e57b8475512d64885153b75a510508f6088b` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb49d254631e564d77aa6cc3057bd99915930e57` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbb12699a8d1f7dab7b13acc1efc07f27c571a1e` | non_address_book | unknown | unknown | unverified | n/a | `0xe72501e73597275e3eacbd422a73b0fda7500b91` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0x0f2c983032fa60f038d5ac0f3466dafd2c6642c6` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0x64a6c90871b774c1678ddbc48d99040b03a9b84d` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0x7fa768e035f956c41d6aeaa3bd857e7e5141cad5` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0xe7677895fa243891348c6e823672f65dc68a7ba1` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0xf0b06794b6b068f728481b4f44c9ad0be42fb8ab` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0xfd07fd5ebea6f24888a397997e262179bf494336` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| linea | unverified unclassified | UnnamedContract<br>`0x048a2f5cd64b89f750cf14a5f36922ae7b07221c` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| linea | unverified unclassified | UnnamedContract<br>`0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| linea | unverified unclassified | UnnamedContract<br>`0xb5c479cc2ee8d24b1ae86ac270598f1a571abd6b` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| linea | unverified unclassified | UnnamedContract<br>`0xc4181dc7bb31453c4a48689ce0cbe975e495321c` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| linea | unverified unclassified | UnnamedContract<br>`0xe8de15d90d4975d3f07d413dd4ab91708eb9f766` | non_address_book | unknown | unknown | unverified | n/a | `0xa83b095cd14a89717e52718c7244885255e83223` |
| mode | candidate review | InceptionBridge<br>`0xb81e55e7ee6b286af6abfea4efad83f7ba4d1f1e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa83b095cd14a89717e52718c7244885255e83223` |
| mode | candidate review | InceptionRatioFeed<br>`0xbf19eead55a6b100667f04f8fbc5371e03e8ab2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa83b095cd14a89717e52718c7244885255e83223` |
| mode | candidate review | InETHRateProvider<br>`0x971b35225361535d04828f16442aaa54009efe1a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xa83b095cd14a89717e52718c7244885255e83223` |
| mode | candidate review | ProxyAdmin<br>`0x80d69e79258fe9d056c822461c4eb0b4ca8802e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa83b095cd14a89717e52718c7244885255e83223` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [InceptionV1_Veridise.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV1_Veridise.pdf) | Halborn | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [InceptionV2_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/InceptionV2_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Inception_MellowV2_Symbiotic_Oxorio.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_MellowV2_Symbiotic_Oxorio.pdf) | Oxorio | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 30 | high |
| [VAR_inception_250210_smart_contracts_V3.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_inception_250210_smart_contracts_V3.pdf) | Veridise | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [InceptionBridge_Halborn.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Halborn.pdf) | Halborn | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [InceptionBridge_Veridise.pdf](https://github.com/inceptionlrt/bridge/blob/master/audits/InceptionBridge_Veridise.pdf) | Veridise | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Inception_DiamondProxy_SymbioticVault_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_DiamondProxy_SymbioticVault_Halborn.pdf) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Inception_FlashWithdrawal_Halborn.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/Inception_FlashWithdrawal_Halborn.pdf) | Halborn | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [VAR_GenesisLRT_231221-V1.pdf](https://github.com/inceptionlrt/smart-contracts/blob/master/audits/VAR_GenesisLRT_231221-V1.pdf) | VAR | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Salus_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Salus_final_report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Bailsec_final_report.pdf](https://github.com/AmphorProtocol/synthetic-vault/blob/main/audits/Bailsec_final_report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2400] InceptionV1_Veridise.pdf — no match: Scope defined as 'contracts folder' with main contracts InceptionVault, EigenLayerHandler, InceptionAssetsHandler, and interface IInceptionAssetHandler.
- [2401] InceptionV2_Halborn.pdf — no match: Scope section lists contracts/Inception/vaults/InceptionVault.sol, contracts/Inception/eigenlayer-handler, contracts/Inception/restaker, and contracts/interfaces/*. Interfaces are not extracted as they are generic. The audit date is the end date of the engagement: May 1st, 2024.
- [2402] Inception_MellowV2_Symbiotic_Oxorio.pdf — matched: Extracted 32 contract names from the audited files table and findings breakdown. Audit date from cover page and timeline.
- [2403] VAR_inception_250210_smart_contracts_V3.pdf — matched: Extracted from scope section (Section 3.2) and file paths. AdapterHandler is out-of-scope but included as it is referenced in findings.
- [2404] InceptionBridge_Halborn.pdf — matched: Scope section explicitly lists 5 contracts in scope. Audit date is the end date of the engagement (April 29, 2024).
- [2405] InceptionBridge_Veridise.pdf — no match: Two contracts in scope: InceptionBridge and InceptionBridgeStorage. Audit date from cover page: May 20, 2024.
- [2406] Inception_DiamondProxy_SymbioticVault_Halborn.pdf — no match: Scope section lists 4 files. InceptionVault_EL is the EigenLayer diamond proxy contract. Audit date is end of engagement period (October 25, 2024).
- [2407] Inception_FlashWithdrawal_Halborn.pdf — no match: Scope section explicitly lists two files: InceptionLibrary.sol and InceptionVault.sol. Audit date is the end date of engagement: June 27th, 2024.
- [2408] VAR_GenesisLRT_231221-V1.pdf — no match: Scope explicitly defined as projects/liquid-restaking/contracts (excluding libraries sub-folder). All contracts mentioned in findings are within that folder.
- [15428] Salus_final_report.pdf — no match: Two contracts in scope from Appendix 1. Audit date from Project Dashboard: Date Oct312023.
- [15429] Bailsec_final_report.pdf — no match: The report covers a single contract, AmphorSyntheticVault, as the audit target. The date is derived from 'November 2023 (addition)' and the report title 'September 2023 November 2023 (addition)', indicating the audit period ended in November 2023. Using the last day of the month for November 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| InceptionV1_Veridise.pdf | InceptionVault | unmatched — not counted | — | listed in scope and findings | no |
| InceptionV1_Veridise.pdf | EigenLayerHandler | unmatched — not counted | — | listed in findings | no |
| InceptionV1_Veridise.pdf | InceptionAssetsHandler | unmatched — not counted | — | listed in findings | no |
| InceptionV1_Veridise.pdf | IInceptionAssetHandler | unmatched — not counted | — | mentioned in finding V-INCP-VUL-013 | no |
| InceptionV2_Halborn.pdf | InceptionVault | unmatched — not counted | — | listed in scope | no |
| InceptionV2_Halborn.pdf | EigenLayerHandler | unmatched — not counted | — | listed in scope as directory | no |
| InceptionV2_Halborn.pdf | InceptionRestaker | unmatched — not counted | — | listed in scope as directory | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionAssetsHandler | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionRatioFeed | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionToken | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionVaultErrors | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IOwnable | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IRateProvider | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IrEth | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IStEth | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IIMellowRestaker | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IInceptionVault_S | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowHandler | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IDefaultBondStrategy | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowDefaultCollateral | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowDepositWrapper | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowPriceOracle | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowRatiosOracle | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowVault | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowVaultConfigurator | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | ISymbioticVault | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | Convert | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | FullMath | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionLibrary | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | MellowHandler | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IMellowRestaker | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionToken | own proxy deployment | InceptionToken (proxy) (selected) `0x1aee5ec60fc79b669f11fe368fde789e267649e2` — deployed 2024-10-04 15:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionVault_S | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InVault_S_E2 | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | ISymbioticRestaker | unmatched — not counted | — | listed in audited files table | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | SymbioticHandler | unmatched — not counted | — | listed in findings breakdown by file | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | IBaseRestaker | unmatched — not counted | — | listed in findings breakdown by file | no |
| Inception_MellowV2_Symbiotic_Oxorio.pdf | InceptionBasicStrategyVault | unmatched — not counted | — | listed in findings breakdown by file | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionVault_S | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionEigenAdapterWrap | unmatched — not counted | — | listed in scope (file InceptionEigenAdapter.sol) | no |
| VAR_inception_250210_smart_contracts_V3.pdf | IMellowAdapter | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | ISymbioticAdapter | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionToken | own proxy deployment | InceptionToken (proxy) (selected) `0x1aee5ec60fc79b669f11fe368fde789e267649e2` — deployed 2024-10-04 15:48:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_inception_250210_smart_contracts_V3.pdf | InVault_S_E2 | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | InceptionLibrary | unmatched — not counted | — | listed in scope | no |
| VAR_inception_250210_smart_contracts_V3.pdf | AdapterHandler | unmatched — not counted | — | mentioned as out-of-scope but referenced in findings | no |
| InceptionBridge_Halborn.pdf | InceptionBridge | own contract | InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-05-22 17:01:53+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-10-10 13:48:33+03 — liveness: live (current_address_book_code)<br>InceptionBridge (selected) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-04-30 11:47:35+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-05-23 13:28:55+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-04-30 was 1d from audit; next candidate 23d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| InceptionBridge_Halborn.pdf | XERC20 | ambiguous — not counted | XERC20 (alternative) `0xd08c3f25862077056cb1b710937576af899a4959` — deployed 2024-05-24 18:20:52+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` — deployed 2024-05-23 13:30:13+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` — deployed 2024-05-15 17:58:13+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0xd08c3f25862077056cb1b710937576af899a4959` — deployed 2024-05-24 18:11:48+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0xd08c3f25862077056cb1b710937576af899a4959` — deployed 2024-05-24 18:31:23+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xb2b446386633c6746b0a2735fb57edbb066c5878` — deployed 2024-10-17 18:28:34+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` — deployed 2024-05-23 14:04:29+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` — deployed 2024-04-30 11:57:21+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` — deployed 2024-05-22 17:11:17+03 — liveness: live (current_address_book_code)<br>XERC20 (alternative) `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` — deployed 2024-04-30 11:51:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| InceptionBridge_Halborn.pdf | XERC20Lockbox | unmatched — not counted | — | listed in scope | no |
| InceptionBridge_Halborn.pdf | BridgeFactory | unmatched — not counted | — | listed in scope | no |
| InceptionBridge_Halborn.pdf | InitializableTransparentUpgradeableProxy | ambiguous — not counted | InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-05-22 17:01:53+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xb2b446386633c6746b0a2735fb57edbb066c5878` — deployed 2024-10-17 18:28:34+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-10-10 13:48:33+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-05-23 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| InceptionBridge_Veridise.pdf | InceptionBridge | ambiguous — not counted | InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-05-22 17:01:53+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-10-10 13:48:33+03 — liveness: live (current_address_book_code)<br>InceptionBridge (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-04-30 11:47:35+03 — liveness: live (current_address_book_code)<br>InitializableTransparentUpgradeableProxy (proxy) (alternative) `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` — deployed 2024-05-23 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| InceptionBridge_Veridise.pdf | InceptionBridgeStorage | unmatched — not counted | — | listed in scope section 3.2 | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | InceptionVault_S | unmatched — not counted | — | listed in scope | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | IMellowRestaker | unmatched — not counted | — | listed in scope | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | MellowHandler | unmatched — not counted | — | listed in scope | no |
| Inception_DiamondProxy_SymbioticVault_Halborn.pdf | InceptionVault_EL | unmatched — not counted | — | listed in scope as 'vaults/EigenLayer (Diamond Proxy)' | no |
| Inception_FlashWithdrawal_Halborn.pdf | InceptionLibrary | unmatched — not counted | — | listed in scope | no |
| Inception_FlashWithdrawal_Halborn.pdf | InceptionVault | unmatched — not counted | — | listed in scope | no |
| VAR_GenesisLRT_231221-V1.pdf | RestakingPool | unmatched — not counted | — | Listed in scope folder projects/liquid-restaking/contracts (excluding libraries sub-folder) and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | RatioFeed | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | ProtocolConfig | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | RestakerDeployer | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | Restaker | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | cToken | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| VAR_GenesisLRT_231221-V1.pdf | RestakerFacet | unmatched — not counted | — | Listed in scope folder and mentioned in findings. | no |
| Salus_final_report.pdf | AmphorSyntheticVault | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus_final_report.pdf | AmphorSyntheticVaultWithPermit | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Bailsec_final_report.pdf | AmphorSyntheticVault | unmatched — not counted | — | The report states 'This audit delves into a distinctive vault contract' and repeatedly refers to 'AmphorSyntheticVault.sol' and 'AmphorSyntheticVault' as the audited contract. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | InceptionBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | InceptionBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc00cd5599f7e128fc5ed5563147a45b12e83b3ac` | InceptionBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x971b35225361535d04828f16442aaa54009efe1a` | InETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd08c3f25862077056cb1b710937576af899a4959` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb2b446386633c6746b0a2735fb57edbb066c5878` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd08c3f25862077056cb1b710937576af899a4959` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd08c3f25862077056cb1b710937576af899a4959` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x5a7a183b6b44dc4ec2e3d2ef43f98c5152b1d76d` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 254 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 63 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11
- Match method counts: temporal_name=1, unique_name=2

Zero-match audit list:

- [2400] InceptionV1_Veridise.pdf
- [2401] InceptionV2_Halborn.pdf
- [2405] InceptionBridge_Veridise.pdf
- [2406] Inception_DiamondProxy_SymbioticVault_Halborn.pdf
- [2407] Inception_FlashWithdrawal_Halborn.pdf
- [2408] VAR_GenesisLRT_231221-V1.pdf
- [15428] Salus_final_report.pdf
- [15429] Bailsec_final_report.pdf

Fork inheritance lineage and inherited audits are included when available.
