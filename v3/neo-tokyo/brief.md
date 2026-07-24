# Agentic Audit Brief: Neo Tokyo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Neo Tokyo (`neo-tokyo`)
- Website: [https://neotokyo.codes/](https://neotokyo.codes/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 97 unique implementations (106 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $849,957.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Neo Tokyo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (2), abstract (1)
- Detected standards: erc20 (2), ownable (2), erc1967proxy (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BYTES2 (`0xa19f5264f7d7be11c451c093d8f92592820bea86`, chain 1)
- BYTESContract (`0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95`, chain 1)
- ERC1967Proxy (`0xb9951b43802dcf3ef5b14567cb17adf367ed1c0f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 94 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 3 of 97 unique; 94 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/50
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 97
- Raw deployments: 106
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 2.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BYTES2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389776 | `0xa19f5264f7d7be11c451c093d8f92592820bea86` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| beckLoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86357a19e5537a8fba9a004e555713bc943a66c0` | ⚠️ Unaudited |
| boughtIdentity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x835a60cc60b808e47825daa79a9da6c9ff3a892e` | ⚠️ Unaudited |
| BYTESContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-389775 | `0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x95c07e309e7d7045b2b1ada70023741cf69cf13e`; ethereum `0xc0aa011fb8bf8e2cdba5c4f059bcd6e699746789` | ⚠️ Unaudited |
| NeoTokyoStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16` | ⚠️ Unaudited |
| NTBytesBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc958ec86d62a479c8490538abf4333aa632edf3` | ⚠️ Unaudited |
| NTBytesBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53eb638f279baa3994cd7ac2846deb31b329e9c` | ⚠️ Unaudited |
| NTBytesStopGap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6868e48e624668c45945b1bdae8b90de8558bfef` | ⚠️ Unaudited |
| NTChampionChips | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7fdf7b47b095c15e108e42d096d20a74c03705f4`; ethereum `0xa91a931bcf850f1e8b560cf3a0cf263bf3dac3cd` | ⚠️ Unaudited |
| NTChampionChips | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf5205c058adf284ba75420428b09c846c78428f5` | ⚠️ Unaudited |
| NTCitizenDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb668beb1fa440f6cf2da0399f8c28cab993bdd65` | ⚠️ Unaudited |
| NTCitizenHandMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd167e22ebe42b69aa6ddb74b17be34588fcaa60` | ⚠️ Unaudited |
| NTConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09` | ⚠️ Unaudited |
| NTConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa10934bbfef0a3ee448e05ce9a35f786ef28cb48`; ethereum `0xfce9ab0471d5c188dc7ff5bc68d280dbb601745a` | ⚠️ Unaudited |
| NTHandIdentityMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc54e36257978b13c94f5e7930db2d2fcdc2e06d7`; ethereum `0xe5bb82eb711423a708ec07a05ee1437bce998747` | ⚠️ Unaudited |
| NTItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0938e3f7ac6d7f674fed551c93f363109bda3af9` | ⚠️ Unaudited |
| NTLandDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c54b798b3aad4f6089533af3bdbd6ce233019bb` | ⚠️ Unaudited |
| NTMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a341e5617070de70f4df6a83cceceea7fd9e57` | ⚠️ Unaudited |
| NTOuterCitizenDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4`; ethereum `0xa4a4c433b04dda15a07d9f3d5ea9e26db45b5ec2` | ⚠️ Unaudited |
| NTOuterIdentity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698fbaaca64944376e2cdc4cad86eaa91362cf54` | ⚠️ Unaudited |
| NTS1Citizen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6b64fc7179f72b7ef656d61737d67bf2339457` | ⚠️ Unaudited |
| NTS1Citizen | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389777 | `0xb9951b43802dcf3ef5b14567cb17adf367ed1c0f` | ⚠️ Unaudited |
| NTS1Identity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a` | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x059174c2fef43f06178d23572fe5556f078f2f99` | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdaf3bf8be28f31540c8cbd7dfb4c9683555bb65` | ⚠️ Unaudited |
| NTS1Item | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b` | ⚠️ Unaudited |
| NTS1Item | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe7489ea1847395d7eead33e9c85fe327d513d249` | ⚠️ Unaudited |
| NTS1Land | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847eed7a43817a490b042dbffda10bcf56de7d1b` | ⚠️ Unaudited |
| NTS1Land | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcfc6a15b2952b6014a993a0c16c9d580d862e21a` | ⚠️ Unaudited |
| NTS1Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30d27415181ae5f42be1f1f2a5f335497697fe30` | ⚠️ Unaudited |
| NTS1Vault_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17b2f2b8927a8f11edfd7a27e153be17d68e69c7` | ⚠️ Unaudited |
| NTS1Vault_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe0eab4c959e3972b68e33b29bc297f0f23d2924` | ⚠️ Unaudited |
| NTS2Citizen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6254bab9ee850590e6e7a56982672231d02c8a07` | ⚠️ Unaudited |
| NTS2Citizen_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4481507cc228fa19d203bd42110d679571f7912e` | ⚠️ Unaudited |
| NTS2Citizen_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c291f556ebf869bb92c755f1859e4b4703c7fff` | ⚠️ Unaudited |
| NTS2Identity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x317d1470d6b3a549983702d66f1b952a21f7206e` | ⚠️ Unaudited |
| NTS2Identity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8e9f3c6883993a7a69c37213f2eb9a17450ad6d3` | ⚠️ Unaudited |
| NTS2Item | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b8f04f2ca4f15d33274a27439412ab7639efad9` | ⚠️ Unaudited |
| NTS2Item | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df4c5135177c300d02ea4840c4e22becdda384d` | ⚠️ Unaudited |
| NTS2Items | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354` | ⚠️ Unaudited |
| NTS2Land | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6caafb4028558f77dabb8d167aa7a40bccd25778` | ⚠️ Unaudited |
| NTS2Land | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb58ae9e93b8bee7d890ad87a2a70c135a3bf4b4e` | ⚠️ Unaudited |
| NTS2LandDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf90980ae7a44e2d18b9615396ff5e9252f1df639` | ⚠️ Unaudited |
| NTStakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049c68ef2791488fb94e888d1350f1e78c153fa4` | ⚠️ Unaudited |
| NTStakedTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb920531f7eb6d73a15809893d72a2caebb908627`; ethereum `0xd37ea75dd3c499eda76304f538cbf356ed9e7ed9` | ⚠️ Unaudited |
| PublicBytesBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d59cbf95add1237b6449ddea0d0c64952879bf3` | ⚠️ Unaudited |
| royaltySplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x88165a735cf313e111088370637ccde23c39bcae`; ethereum `0xb616945250ccef6135006a869d0c7f5b1406854c`; ethereum `0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa`; ethereum `0xf824b21065920ad8f6a2b2ae69107fd35d971ed6` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb09c7e130a4b87b27ebd648ec485657b688b34` | ⚠️ Unaudited |
| vaultBox | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b6fbf96692fc70337dbf0db009b66d4358de1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064327e11893e812f62056795dfd55a1162d983d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0658b1b397a7424057b6dea74a01d06010082a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094d828847d05e9b2b34054c969f7d197184068b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a079e8232f7407b19ca6eef8883e9e25ab0c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a35e3c53a1268b6c092f2137a7d83b260ba57e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124037eb046dc830af8fba5bc5c1a6182eebf29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169e92dbcf06fdfae721e03fc80f7e810d763d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16e85623ced4c9e14eb66304a3e63fb67c3f839b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19815e26c3c8b7031e8a6901a73bcc1282a8f130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dbd2f0fce234126babeacc86f338930c61db5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254e2df5081e07e2a0c5b0d40a1d1b9fa705f116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d87a68c9a34d434b14f9eadb5582adc9e973bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3248d8f3d847ae6a3076e9be923191eaf0254851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4432305f77c761b587690f8768f8abed411dcda7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x451d692277dfa8284d96120353fc54f5a892f494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4abf969d02aeb675c0d2725be824a9f716555535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c0a9a90345f706bb38b6a4baaf3cb63cf6f8f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9cfead6628a84ec1cb622d7e7c1b5a8f3e2054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4c756515029ae00a58c4b4b6e0c196979b2d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5804ae06600951778cbea8b7065011272f2f3023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecf768c2cfbeea58f5192ebb96d239425592c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64967d8f1c1b3f8859a5aa8fa4e9e401cde072b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6685d84d99f8956b07c25b5528d7a106514d445c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7695bb9e08473a6132a29061d31e11a64d5d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddcf7f50d2609bd3020bac01cc50ec6fd039674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79995d5dddfafd09ec17bb6ee728b6f7f6cce1f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b776e29801724163b1c4730bb40f111b2b3fd17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae3abff59a0a0ec71c650364f59518d7af74d2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0605041b92e66e8834675ff63aea0253bdcbc3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50722353b765459e1cd110f74f9687d5a82b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c5edd8eae2a6ee3592e161c967b171d6269bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb6a36e0efd5f89e870320a41ac566dc2735310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0a6b3159b3b06810b16056e5cc01d9930513c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1da8787b3be698785e9e77a69334deb0b75742d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc47ae0a3fede6a15ad0d586baf76ceda0719a864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda51871ae8720bfa16197a854914174c38812b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b58edc17c50c7fa6a5a60ad11eeee556d2f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8e99a1e1bf328810c4e847d9a6a5adba7b2b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeb06c3a02b51dc8fcb26c19928844108ca5f857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f199c5a6b41231902b2f6e93e8edc59faf507b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf333e68e61175b14631e6960db8edf5e135d08c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5327f9da7ef9e527e357b2b7001525cd8e088df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf76c567f9283aff59c733466b0a30eed52c3862b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf827068de73f6cfad2bed981e6cb98b62e86c902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9b3929877ad50220a98bda660d4541d5c5616d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb730df2a5f72c383fef76afe5d6950f9306631e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 83
- Live contracts: 1
- Unknown liveness contracts: 82
- Source-verified contracts: 35
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=15, exact address book overlap=1, source verified unclassified=19, unverified unclassified=48

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | NTChampionChips<br>`0xa91a931bcf850f1e8b560cf3a0cf263bf3dac3cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTConfig<br>`0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTConfig<br>`0xa10934bbfef0a3ee448e05ce9a35f786ef28cb48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS1Citizen<br>`0x3b6b64fc7179f72b7ef656d61737d67bf2339457` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS1Identity<br>`0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS1Identity_V2<br>`0xcdaf3bf8be28f31540c8cbd7dfb4c9683555bb65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS1Item<br>`0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS1Land<br>`0x847eed7a43817a490b042dbffda10bcf56de7d1b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS1Vault<br>`0x30d27415181ae5f42be1f1f2a5f335497697fe30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS1Vault_V2<br>`0xfe0eab4c959e3972b68e33b29bc297f0f23d2924` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS2Citizen<br>`0x6254bab9ee850590e6e7a56982672231d02c8a07` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS2Citizen_V2<br>`0x5c291f556ebf869bb92c755f1859e4b4703c7fff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS2Identity<br>`0x317d1470d6b3a549983702d66f1b952a21f7206e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS2Item<br>`0x9df4c5135177c300d02ea4840c4e22becdda384d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | candidate review | NTS2Land<br>`0x6caafb4028558f77dabb8d167aa7a40bccd25778` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | exact address book overlap | ERC1967Proxy<br>`0xb9951b43802dcf3ef5b14567cb17adf367ed1c0f` | project_anchor | unknown | live | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x17b2f2b8927a8f11edfd7a27e153be17d68e69c7` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0x4481507cc228fa19d203bd42110d679571f7912e` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xc0aa011fb8bf8e2cdba5c4f059bcd6e699746789` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xd37ea75dd3c499eda76304f538cbf356ed9e7ed9` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | ERC1967Proxy<br>`0xfce9ab0471d5c188dc7ff5bc68d280dbb601745a` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTBytesBridge<br>`0xcc958ec86d62a479c8490538abf4333aa632edf3` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTBytesBurner<br>`0xf53eb638f279baa3994cd7ac2846deb31b329e9c` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTBytesStopGap<br>`0x6868e48e624668c45945b1bdae8b90de8558bfef` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTChampionChips<br>`0x7fdf7b47b095c15e108e42d096d20a74c03705f4` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTCitizenHandMint<br>`0xfd167e22ebe42b69aa6ddb74b17be34588fcaa60` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTHandIdentityMint<br>`0xc54e36257978b13c94f5e7930db2d2fcdc2e06d7` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTHandIdentityMint<br>`0xe5bb82eb711423a708ec07a05ee1437bce998747` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTOuterCitizenDeploy<br>`0xa4a4c433b04dda15a07d9f3d5ea9e26db45b5ec2` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTStakedToken<br>`0x049c68ef2791488fb94e888d1350f1e78c153fa4` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | NTStakedTokenV2<br>`0xb920531f7eb6d73a15809893d72a2caebb908627` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | PublicBytesBurn<br>`0x1d59cbf95add1237b6449ddea0d0c64952879bf3` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | royaltySplitter<br>`0x88165a735cf313e111088370637ccde23c39bcae` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | royaltySplitter<br>`0xb616945250ccef6135006a869d0c7f5b1406854c` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | source verified unclassified | royaltySplitter<br>`0xf824b21065920ad8f6a2b2ae69107fd35d971ed6` | non_address_book | unknown | unknown | verified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04b6fbf96692fc70337dbf0db009b66d4358de1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x064327e11893e812f62056795dfd55a1162d983d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0658b1b397a7424057b6dea74a01d06010082a59` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x094d828847d05e9b2b34054c969f7d197184068b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09a079e8232f7407b19ca6eef8883e9e25ab0c18` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a35e3c53a1268b6c092f2137a7d83b260ba57e6` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x124037eb046dc830af8fba5bc5c1a6182eebf29b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x169e92dbcf06fdfae721e03fc80f7e810d763d1d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16e85623ced4c9e14eb66304a3e63fb67c3f839b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19815e26c3c8b7031e8a6901a73bcc1282a8f130` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dbd2f0fce234126babeacc86f338930c61db5e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x254e2df5081e07e2a0c5b0d40a1d1b9fa705f116` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d87a68c9a34d434b14f9eadb5582adc9e973bf6` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3248d8f3d847ae6a3076e9be923191eaf0254851` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4432305f77c761b587690f8768f8abed411dcda7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x451d692277dfa8284d96120353fc54f5a892f494` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4abf969d02aeb675c0d2725be824a9f716555535` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c0a9a90345f706bb38b6a4baaf3cb63cf6f8f68` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c9cfead6628a84ec1cb622d7e7c1b5a8f3e2054` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d4c756515029ae00a58c4b4b6e0c196979b2d84` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5804ae06600951778cbea8b7065011272f2f3023` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ecf768c2cfbeea58f5192ebb96d239425592c67` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64967d8f1c1b3f8859a5aa8fa4e9e401cde072b9` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6685d84d99f8956b07c25b5528d7a106514d445c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c7695bb9e08473a6132a29061d31e11a64d5d41` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ddcf7f50d2609bd3020bac01cc50ec6fd039674` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79995d5dddfafd09ec17bb6ee728b6f7f6cce1f7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95c07e309e7d7045b2b1ada70023741cf69cf13e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b776e29801724163b1c4730bb40f111b2b3fd17` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae3abff59a0a0ec71c650364f59518d7af74d2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0605041b92e66e8834675ff63aea0253bdcbc3c` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb50722353b765459e1cd110f74f9687d5a82b577` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7c5edd8eae2a6ee3592e161c967b171d6269bee` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbb6a36e0efd5f89e870320a41ac566dc2735310` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc0a6b3159b3b06810b16056e5cc01d9930513c0b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1da8787b3be698785e9e77a69334deb0b75742d` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc47ae0a3fede6a15ad0d586baf76ceda0719a864` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda51871ae8720bfa16197a854914174c38812b81` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1b58edc17c50c7fa6a5a60ad11eeee556d2f287` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb8e99a1e1bf328810c4e847d9a6a5adba7b2b21` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeeb06c3a02b51dc8fcb26c19928844108ca5f857` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1f199c5a6b41231902b2f6e93e8edc59faf507b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf333e68e61175b14631e6960db8edf5e135d08c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5327f9da7ef9e527e357b2b7001525cd8e088df` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf76c567f9283aff59c733466b0a30eed52c3862b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf827068de73f6cfad2bed981e6cb98b62e86c902` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf9b3929877ad50220a98bda660d4541d5c5616d3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb730df2a5f72c383fef76afe5d6950f9306631e` | non_address_book | unknown | unknown | unverified | n/a | `0xa8da6166cbd2876ccde424ee2a717c355be4702b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2023-03-neotokyo](https://code4rena.com/reports/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2023-03-neotokyo (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2023-03-neotokyo-findings (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo-findings) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [report.md](https://github.com/code-423n4/2023-03-neotokyo-findings/blob/main/report.md) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21355] code4rena.com/reports/2023-03-neotokyo — matched: Scope section explicitly lists 2 smart contracts: BYTES2.sol and NeoTokyoStaker.sol. Audit date found on cover page.
- [21356] 2023-03-neotokyo (GitHub directory) — matched: Scope explicitly lists two contracts: BYTES2.sol and NeoTokyoStaker.sol. Audit date is the contest end date March 15, 2023.
- [21357] 2023-03-neotokyo-findings (GitHub directory) — no match: The provided text is a GitHub repository README for a contest findings repo, not an audit report. It contains no contract names, scope sections, or audit date.
- [24271] report.md — matched: The audit report clearly states the scope includes 2 smart contracts: BYTES2.sol and NeoTokyoStaker.sol. The audit contest took place March 8-15, 2023, so the end date is used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2023-03-neotokyo | BYTES2 | own contract | BYTES2 (selected) `0xa19f5264f7d7be11c451c093d8f92592820bea86` — deployed 2023-06-15 23:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-03-neotokyo | NeoTokyoStaker | unmatched — not counted | — | listed in scope | no |
| 2023-03-neotokyo (GitHub directory) | BYTES2 | own contract | BYTES2 (selected) `0xa19f5264f7d7be11c451c093d8f92592820bea86` — deployed 2023-06-15 23:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-neotokyo (GitHub directory) | NeoTokyoStaker | unmatched — not counted | — | listed in scope table | no |
| report.md | BYTES2 | own contract | BYTES2 (selected) `0xa19f5264f7d7be11c451c093d8f92592820bea86` — deployed 2023-06-15 23:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | NeoTokyoStaker | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb9951b43802dcf3ef5b14567cb17adf367ed1c0f` | NTS1Citizen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [21357] 2023-03-neotokyo-findings (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
