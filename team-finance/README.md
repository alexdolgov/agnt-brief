# Agentic Audit Brief: Team Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Team Finance (`team-finance`)
- Website: [https://www.team.finance](https://www.team.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, cronos, ethereum, fantom, kaia, kava, lukso, mantle, polygon
- Contract surface: 77 unique implementations (126 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $45,710,188.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Team Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, blast, bsc, cronos, ethereum, fantom, kaia, kava, mantle, polygon. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x80825c93a9e7c9fbf05ee32d629636e4bfb2c9fe`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 76 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Confirmed-live implementations: 1 of 77 unique; 76 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 77
- Raw deployments: 126
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x2c98ca7863fb38ddfdc465eb4ec90bf1aa209dfd`; bsc `0xe5ea6b3bad27382fd571c73eb4dde7a6dcda42c5`; polygon `0xe2fe530c047f2d85298b07d9333c05737f1435fb` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x0c89c0407775dd89b12918b9c0aa42bf96518820` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xd03450a71b81d408fc3d4f4bf928ca4da5328b14` | ⚠️ Unaudited |
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a` | ⚠️ Unaudited |
| LockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe0b0d2021293bee9715e1db3be31b55c00f72a75` | ⚠️ Unaudited |
| LockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0xc77aab3c6d7dab46248f3cc3033c856171878bd5`; ethereum `0xdbf72370021babafbceb05ab10f99ad275c6220a`; bsc `0x7536592bb74b5d62eb82e8b93b17eed4eed9a85c`; polygon `0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c`; polygon `0xc807645ee7de588377b3135652dff0c138028ebe`; base `0xeb8bb3cf0d5a80fa54153d7d0bc0a45f79ff6db6`; avalanche `0x2cc5c679d05918852b12db0f0fedff785b05c1d9`; blast `0xd98287c1a455fe4b57dc2932f8b6b5d8938c7255` | ⚠️ Unaudited |
| PriceEstimator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x5fbf0a43c282272f3d5b595dc50fe9ae7be5dc93` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: bsc `0x44a7ff3d23e6def2f9f4b42c43694cb84d1e929d`; bsc `0x63fe2dee59c229baf136aab5431aa01a41732bbb`; bsc `0x906112f2b5fe9a1b63545fd217e54add2a98bf3d`; bsc `0xd6049125e49a04a3a687c06429466318beffd5b1`; polygon `0xdcaa5df48ab11d753012da79adda00ebafe29e5d`; mantle `0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a`; mantle `0xb2240bed66776611576d34eb8c03c037fb2ca908`; base `0x2784d0d9543b602facaedb2c35227f055dbd6859`; base `0xb1e794201e8da0f90b0efeaacee4a55642573b75`; arbitrum `0x28f47db96e9781a50d9fe6ba6f1ede3e31b3c11c`; arbitrum `0xded4a132e19a30aa2d5dc0f50b5ac0404ec41e9f`; avalanche `0xaf224918a827b52ae99cc42f686387f15ad98385` | ⚠️ Unaudited |
| Ris3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x572db7cd7843ddae6fa8549bdab23e6b1afb084c` | ⚠️ Unaudited |
| Ris3Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfed52754a60f1121eab84bf0fd05bce4b83ff078` | ⚠️ Unaudited |
| Ris3Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa264eb021f184b80d4efa864c65988492da52b13` | ⚠️ Unaudited |
| Ris3TaxPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x033c9910f99699adff6d6eae94ae8d80f8965077` | ⚠️ Unaudited |
| StakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9e9ce71871ac9c4fa96df5b9a474e7a52e4040e6` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x53a8e3966794e1cdb16593b0a5f987a09f019e95` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbf8471d1edc4c2ae05fce4aba211c5125ae98ebd` | ⚠️ Unaudited |
| TeamToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: polygon `0x900eec9c39fbb0eca41b5cf2239e9c16ae08f3ba`; base `0x9500773146dac55db4e13a723a3f988f4f175eb8`; base `0xd1de1810abbd4032a32c0b50018284c5e328bb59`; base `0xe37ef03ea7f2a6be781f5bc36b98c8c630692c73`; arbitrum `0x446eb0f112dec3e84e29ce9bedab89060b8c40b9` | ⚠️ Unaudited |
| TIS3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7815ff67055e4dca8b100c500df6e2ad9162b795` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x28f47db96e9781a50d9fe6ba6f1ede3e31b3c11c`; mantle `0xe0b0d2021293bee9715e1db3be31b55c00f72a75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | mantle | n/a | `0x39b9eb9b2be5d721d28eb40443f48cb0ad0c3340` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x458fe9fcfbfe17b38a417565d262da929e3ee345`; mantle `0xf076a6cabed31475b7364d284aa76f8dd28a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x256c6f9823c9107900a0f35d041247882cb88efd`; base `0x80825c93a9e7c9fbf05ee32d629636e4bfb2c9fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x37e7a4d0d21b2a779d9b715c26a1015de5a3541f`; base `0x950818800140317e937ccfa7c3427744d57a22fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x962f07445ed033f7a8815ec349d9eceb77f5c3c2`; base `0x9bad40c58204929b8e20cedadf53469530bb559b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x458fe9fcfbfe17b38a417565d262da929e3ee345`; arbitrum `0xf076a6cabed31475b7364d284aa76f8dd28a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x64b4c8d5af1857a823890170484b58b4e425cf4f`; arbitrum `0xde002f436f9639a01986621af12c6e64fa811cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x594dbb941de006c25b457ca49eeb3085cfe02b0d`; avalanche `0xf8282d89d65c3ef79003fcacfb03b11f63d8e0e5` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393851 | `0x80825c93a9e7c9fbf05ee32d629636e4bfb2c9fe` | ⚠️ Unaudited |

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
| LockToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x624a4cb48a52a29d97eb1127bd0585ea1e02143c` | ❓ Unverified |
| Proxy (impl: 0x6dd27f2b82f78dd8a802a9228f340518280359f1) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xe2fe530c047f2d85298b07d9333c05737f1435fb` | ❓ Unverified |
| Proxy (impl: 0x7e9e76b7e373028c2cfd22169f82bcd49d649f99) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x327f6f8868dc046f4050b0eedbcbfafd9e61af36`; blast `0x7e9e76b7e373028c2cfd22169f82bcd49d649f99` | ❓ Unverified |
| Proxy (impl: 0xf5cf29567350ebad9854ea22f3281d508ef1b96c) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xd8ef3dff167243d39cb287a894d628774b7b439a` | ❓ Unverified |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x13f602d0238b827b5020d4e5a0676ef16ca3bb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 14 deployments: cronos `0x05b711df32d73ecaa877d45a637a2eb415e7995f`; cronos `0xb6061efc3259a886cf3274efdf9b61753e1bc194`; fantom `0xc2995a065106b5c5c738b2320387460ebd12c12d`; fantom `0xccebbe9e2b8f46c2c6862238e60a396af790b63e`; kava `0xa9ec655dac35d989c0c8be075b1106dcd32502d6`; kaia `0x070a08beef8d36734dd67a491202ff35a6a16d97`; kaia `0x0c89c0407775dd89b12918b9c0aa42bf96518820`; kaia `0x5dd3d67af1b31823dd3eee8548bdc070640c14b8`; kaia `0x6c7c87d9868b1db5a0f62d867baa90e0adfa7cfd`; kaia `0x7c2aa307c3542d8346bea3290385359c78778934`; kaia `0x854b4c305554c5fa72353e31b8480c0e5128a152`; kaia `0x9b83f4b893cf061d8c14471aa97ef24c352f5abe`; kaia `0xb5c902ee211bae91ddb5c30b502c7ac6dfcd73f7`; kaia `0xf2619476bd0ca0eda08744029c66b62a904c2bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8894a5711ee4c3354c76e44cc42ae6c6858d5c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9171f49e264379dede1967748e23a57208c3646d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff1ba507daaaace14813d56b44d3be97e9d9ab40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26029db1eab700abbb4258976f8925414d606ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d1dd9fb839b7251fdaaf7549a7cc70167cf2898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3217ee68dfbe2b907313d491788e037782ba91e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x594dbb941de006c25b457ca49eeb3085cfe02b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf224918a827b52ae99cc42f686387f15ad98385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6a673c1a7c75b92e2b798fb1d943f67243541eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccebbe9e2b8f46c2c6862238e60a396af790b63e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd18458d6dae04e132a860371caf0ac2431048d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4745c03d9b9d5bbeabb952cd5ad3f97ca64c675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7c58c1c5e26595f1707f0bf422053cf7e554f377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb377c15fb2763c2db36876462dab344c4c20b546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbfef878b55257f1287f5cf13a6314481919dca3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8c8abf27893dda682fa6dbe3bdd4fe22d21ac94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5418956bae6be2aacbef94cff73d5997e49676eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a7ab0bb7d624423fda728a58f1846724a0f91d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994913dfcf4ff0d4c5f7a5046c25b006e8ab89d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfef878b55257f1287f5cf13a6314481919dca3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd03450a71b81d408fc3d4f4bf928ca4da5328b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5540ce2e6f700208d36a04f261810760630bc5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38533faa0e0409895163e02a424e28a07c493385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4db57bd664150a275ef52082614dacb387345520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62bec667dc3c9eba0e16578d11604cf01a7c8b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x67303871ae2d8715b1928b1dfd8b4d146026c948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88ada02f6fce2f1a833cd9b4999d62a7ebb70367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e55957bc9ee32516b9f74a01e47c1d712db3020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x935a45fa6bdcc46716367407e27af2374ec4b7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe28deabaca5223a0ad57ac071cf979135cc3437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccebbe9e2b8f46c2c6862238e60a396af790b63e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd053670233a35c6c60e0e5b161ce5f2535022c90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4745c03d9b9d5bbeabb952cd5ad3f97ca64c675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcaa5df48ab11d753012da79adda00ebafe29e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf439cb31650a63a85a1413222ececc0a27d7438f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x1557b12fc1a0e0168bb4810b526b344c6838c18b`; blast `0x5b1c4dc565b2015191e8b10ae2aa8c8a4973ecb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2fec57c84c581372f01f433bd4aba4dbaffcb61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x6877bd5f27da71b66ddc1d5178c4acc4d68083dd`; blast `0xdd111ba355de43c1c924984a4365c53964cc6485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x6adbcd5e084a1745d7e2090bfb99d300bce8fd0b`; blast `0x7efc85a2f2eebf2dbe52863b7b8d62fd6be1fdac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7f28fb0c8a27e5f746e188f01fa2779bf71a1482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x89e9a91c0d684fb360b74ae6380a89446ede2e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8b6582e973f559aa178df6449d04739d1ea32872` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 98
- Live contracts: 0
- Unknown liveness contracts: 98
- Source-verified contracts: 41
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=18, source verified unclassified=23, unverified unclassified=57

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | TeamToken<br>`0x900eec9c39fbb0eca41b5cf2239e9c16ae08f3ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x027cbbb914b650b065b597d9be9bbecb411c93c7` |
| candidate review | ProxyAdmin<br>`0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | ProxyAdmin<br>`0xb2240bed66776611576d34eb8c03c037fb2ca908` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TransparentUpgradeableProxy<br>`0x39b9eb9b2be5d721d28eb40443f48cb0ad0c3340` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TransparentUpgradeableProxy<br>`0xe0b0d2021293bee9715e1db3be31b55c00f72a75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TransparentUpgradeableProxy<br>`0xf076a6cabed31475b7364d284aa76f8dd28a64cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TeamToken<br>`0x9500773146dac55db4e13a723a3f988f4f175eb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| candidate review | TeamToken<br>`0xd1de1810abbd4032a32c0b50018284c5e328bb59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| candidate review | TeamToken<br>`0xe37ef03ea7f2a6be781f5bc36b98c8c630692c73` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| candidate review | TransparentUpgradeableProxy<br>`0x80825c93a9e7c9fbf05ee32d629636e4bfb2c9fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| candidate review | TransparentUpgradeableProxy<br>`0x950818800140317e937ccfa7c3427744d57a22fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| candidate review | TransparentUpgradeableProxy<br>`0x962f07445ed033f7a8815ec349d9eceb77f5c3c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| candidate review | TransparentUpgradeableProxy<br>`0x53a8e3966794e1cdb16593b0a5f987a09f019e95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TransparentUpgradeableProxy<br>`0xde002f436f9639a01986621af12c6e64fa811cdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TransparentUpgradeableProxy<br>`0xe0b0d2021293bee9715e1db3be31b55c00f72a75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TransparentUpgradeableProxy<br>`0xf076a6cabed31475b7364d284aa76f8dd28a64cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| candidate review | TransparentUpgradeableProxy<br>`0xf8282d89d65c3ef79003fcacfb03b11f63d8e0e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| candidate review | StakingPool<br>`0xbf8471d1edc4c2ae05fce4aba211c5125ae98ebd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0x2c98ca7863fb38ddfdc465eb4ec90bf1aa209dfd` | non_address_book | unknown | unknown | verified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0xe5ea6b3bad27382fd571c73eb4dde7a6dcda42c5` | non_address_book | unknown | unknown | verified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| source verified unclassified | ProxyAdmin<br>`0x44a7ff3d23e6def2f9f4b42c43694cb84d1e929d` | non_address_book | unknown | unknown | verified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| source verified unclassified | ProxyAdmin<br>`0x63fe2dee59c229baf136aab5431aa01a41732bbb` | non_address_book | unknown | unknown | verified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| source verified unclassified | ProxyAdmin<br>`0x906112f2b5fe9a1b63545fd217e54add2a98bf3d` | non_address_book | unknown | unknown | verified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| source verified unclassified | ProxyAdmin<br>`0xd6049125e49a04a3a687c06429466318beffd5b1` | non_address_book | unknown | unknown | verified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| source verified unclassified | Ris3Factory<br>`0x572db7cd7843ddae6fa8549bdab23e6b1afb084c` | non_address_book | unknown | unknown | verified | n/a | `0x4e84e92c6221b638599504a89e7b664ea86386a0` |
| source verified unclassified | Ris3Farm<br>`0xfed52754a60f1121eab84bf0fd05bce4b83ff078` | non_address_book | unknown | unknown | verified | n/a | `0x4e84e92c6221b638599504a89e7b664ea86386a0` |
| source verified unclassified | Ris3Governance<br>`0xa264eb021f184b80d4efa864c65988492da52b13` | non_address_book | unknown | unknown | verified | n/a | `0x4e84e92c6221b638599504a89e7b664ea86386a0` |
| source verified unclassified | Ris3TaxPool<br>`0x033c9910f99699adff6d6eae94ae8d80f8965077` | non_address_book | unknown | unknown | verified | n/a | `0x4e84e92c6221b638599504a89e7b664ea86386a0` |
| source verified unclassified | TIS3<br>`0x7815ff67055e4dca8b100c500df6e2ad9162b795` | non_address_book | unknown | unknown | verified | n/a | `0x4e84e92c6221b638599504a89e7b664ea86386a0` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0x5fbf0a43c282272f3d5b595dc50fe9ae7be5dc93` | non_address_book | unknown | unknown | verified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| source verified unclassified | AdminUpgradeabilityProxy<br>`0xe2fe530c047f2d85298b07d9333c05737f1435fb` | non_address_book | unknown | unknown | verified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| source verified unclassified | LockToken<br>`0xc807645ee7de588377b3135652dff0c138028ebe` | non_address_book | unknown | unknown | verified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| source verified unclassified | ProxyAdmin<br>`0xdcaa5df48ab11d753012da79adda00ebafe29e5d` | non_address_book | unknown | unknown | verified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| source verified unclassified | LockToken<br>`0xeb8bb3cf0d5a80fa54153d7d0bc0a45f79ff6db6` | non_address_book | unknown | unknown | verified | n/a | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| source verified unclassified | ProxyAdmin<br>`0x2784d0d9543b602facaedb2c35227f055dbd6859` | non_address_book | unknown | unknown | verified | n/a | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| source verified unclassified | ProxyAdmin<br>`0xb1e794201e8da0f90b0efeaacee4a55642573b75` | non_address_book | unknown | unknown | verified | n/a | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| source verified unclassified | ProxyAdmin<br>`0x28f47db96e9781a50d9fe6ba6f1ede3e31b3c11c` | non_address_book | unknown | unknown | verified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| source verified unclassified | ProxyAdmin<br>`0xded4a132e19a30aa2d5dc0f50b5ac0404ec41e9f` | non_address_book | unknown | unknown | verified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| source verified unclassified | LockToken<br>`0x2cc5c679d05918852b12db0f0fedff785b05c1d9` | non_address_book | unknown | unknown | verified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| source verified unclassified | ProxyAdmin<br>`0xaf224918a827b52ae99cc42f686387f15ad98385` | non_address_book | unknown | unknown | verified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| source verified unclassified | LockToken<br>`0xd98287c1a455fe4b57dc2932f8b6b5d8938c7255` | non_address_book | unknown | unknown | verified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x8894a5711ee4c3354c76e44cc42ae6c6858d5c47` | non_address_book | unknown | unknown | unverified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| unverified unclassified | UnnamedContract<br>`0x9171f49e264379dede1967748e23a57208c3646d` | non_address_book | unknown | unknown | unverified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| unverified unclassified | UnnamedContract<br>`0xff1ba507daaaace14813d56b44d3be97e9d9ab40` | non_address_book | unknown | unknown | unverified | n/a | `0x01ed1fe17b2104d5fea92c96845950342a427844` |
| unverified unclassified | UnnamedContract<br>`0x26029db1eab700abbb4258976f8925414d606ed4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x2d1dd9fb839b7251fdaaf7549a7cc70167cf2898` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x3217ee68dfbe2b907313d491788e037782ba91e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x594dbb941de006c25b457ca49eeb3085cfe02b0d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xaf224918a827b52ae99cc42f686387f15ad98385` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xc6a673c1a7c75b92e2b798fb1d943f67243541eb` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xccebbe9e2b8f46c2c6862238e60a396af790b63e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xd18458d6dae04e132a860371caf0ac2431048d41` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xd4745c03d9b9d5bbeabb952cd5ad3f97ca64c675` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x28f47db96e9781a50d9fe6ba6f1ede3e31b3c11c` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x458fe9fcfbfe17b38a417565d262da929e3ee345` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x7c58c1c5e26595f1707f0bf422053cf7e554f377` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0xb377c15fb2763c2db36876462dab344c4c20b546` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0xbfef878b55257f1287f5cf13a6314481919dca3f` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x256c6f9823c9107900a0f35d041247882cb88efd` | non_address_book | unknown | unknown | unverified | n/a | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| unverified unclassified | UnnamedContract<br>`0x37e7a4d0d21b2a779d9b715c26a1015de5a3541f` | non_address_book | unknown | unknown | unverified | n/a | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| unverified unclassified | UnnamedContract<br>`0x9bad40c58204929b8e20cedadf53469530bb559b` | non_address_book | unknown | unknown | unverified | n/a | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| unverified unclassified | UnnamedContract<br>`0xe8c8abf27893dda682fa6dbe3bdd4fe22d21ac94` | non_address_book | unknown | unknown | unverified | n/a | `0xaa294e0d4e090d7b56781322da3202cfd747cbea` |
| unverified unclassified | UnnamedContract<br>`0x458fe9fcfbfe17b38a417565d262da929e3ee345` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x5418956bae6be2aacbef94cff73d5997e49676eb` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x64b4c8d5af1857a823890170484b58b4e425cf4f` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x8a7ab0bb7d624423fda728a58f1846724a0f91d1` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0x994913dfcf4ff0d4c5f7a5046c25b006e8ab89d1` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0xbfef878b55257f1287f5cf13a6314481919dca3f` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0xd03450a71b81d408fc3d4f4bf928ca4da5328b14` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | UnnamedContract<br>`0xe5540ce2e6f700208d36a04f261810760630bc5d` | non_address_book | unknown | unknown | unverified | n/a | `0x234ab97a557ddf5385de5c0e45f6dbca55c1ca6a` |
| unverified unclassified | 0xf5cf29567350ebad9854ea22f3281d508ef1b96c<br>`0xd8ef3dff167243d39cb287a894d628774b7b439a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x38533faa0e0409895163e02a424e28a07c493385` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x4db57bd664150a275ef52082614dacb387345520` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x594dbb941de006c25b457ca49eeb3085cfe02b0d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x62bec667dc3c9eba0e16578d11604cf01a7c8b91` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x67303871ae2d8715b1928b1dfd8b4d146026c948` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x8e55957bc9ee32516b9f74a01e47c1d712db3020` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0x935a45fa6bdcc46716367407e27af2374ec4b7a1` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xbe28deabaca5223a0ad57ac071cf979135cc3437` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xccebbe9e2b8f46c2c6862238e60a396af790b63e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xd053670233a35c6c60e0e5b161ce5f2535022c90` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xd4745c03d9b9d5bbeabb952cd5ad3f97ca64c675` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xdcaa5df48ab11d753012da79adda00ebafe29e5d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc37fa8a1e3ccb154ab5d177736a8166126319f0` |
| unverified unclassified | UnnamedContract<br>`0xf439cb31650a63a85a1413222ececc0a27d7438f` | non_address_book | unknown | unknown | unverified | n/a | `0x8e5c37c549c872ae75f4f7b174816dcc1c29f595` |
| unverified unclassified | 0x1557b12fc1a0e0168bb4810b526b344c6838c18b<br>`0x5b1c4dc565b2015191e8b10ae2aa8c8a4973ecb7` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | 0x6877bd5f27da71b66ddc1d5178c4acc4d68083dd<br>`0xdd111ba355de43c1c924984a4365c53964cc6485` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | 0x6adbcd5e084a1745d7e2090bfb99d300bce8fd0b<br>`0x7efc85a2f2eebf2dbe52863b7b8d62fd6be1fdac` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | 0x7e9e76b7e373028c2cfd22169f82bcd49d649f99<br>`0x327f6f8868dc046f4050b0eedbcbfafd9e61af36` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | StakingPool<br>`0x13f602d0238b827b5020d4e5a0676ef16ca3bb14` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x1557b12fc1a0e0168bb4810b526b344c6838c18b` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x2fec57c84c581372f01f433bd4aba4dbaffcb61f` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x6877bd5f27da71b66ddc1d5178c4acc4d68083dd` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x6adbcd5e084a1745d7e2090bfb99d300bce8fd0b` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x7e9e76b7e373028c2cfd22169f82bcd49d649f99` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x7f28fb0c8a27e5f746e188f01fa2779bf71a1482` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x89e9a91c0d684fb360b74ae6380a89446ede2e34` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |
| unverified unclassified | UnnamedContract<br>`0x8b6582e973f559aa178df6449d04739d1ea32872` | non_address_book | unknown | unknown | unverified | n/a | `0x5b602f3efe9e61b331390afe490b77f8a96a7186` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2FhBZpTk3UcUBhL9NrB5A3%2FBailsec%20-%20TrustSwap%20SWAP%20Token%20Audit.pdf) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2F9HLnqL9xaTELvjjEZJtH%2FBailsec%20Audit%20of%20Team%20Finance%20Staking%20Solution.pdf) | Code4rena | Contest | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11702] spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf — no match: Only one contract, SwapToken, is in scope. Audit date is March 2024, represented as last day of month.
- [11703] spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf — no match: Only one contract in scope: StakingPool.sol. Audit date from cover page: July 20 24.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf | SwapToken | unmatched — not counted | — | listed in scope table and throughout report | no |
| spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf | StakingPool | unmatched — not counted | — | listed in scope as contracts/StakingPool.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11702] spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf
- [11703] spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf

Fork inheritance lineage and inherited audits are included when available.
