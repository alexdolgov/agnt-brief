# Agentic Audit Brief: Kodiak

## Export Authority

- Production state: **published scope**
- Raw selected rows: 22 across 5 audit(s)
- Eligible audit results: 7 (5 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Kodiak (`kodiak`)
- Website: [https://kodiak.finance/](https://kodiak.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: berachain
- Contract surface: 116 unique implementations (116 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $16,916,591.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kodiak. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across berachain. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: ownable (3), erc20 (2)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x43dac637c4383f91b4368041e7a8687da3806cae`, chain 80094)
- UnnamedContract (`0x5261c5a5f08818c08ed0eb036d9575ba1e02c1d6`, chain 80094)
- UnnamedContract (`0x5e705e184d233ff2a7cb1553793464a9d0c3028f`, chain 80094)
- UnnamedContract (`0x644c8d6e501f7c994b74f5cea96abe65d0ba662b`, chain 80094)
- UnnamedContract (`0x679a7c63fc83b6a4d9c1f931891d705483d4791f`, chain 80094)
- UnnamedContract (`0x89c8c594f8dea5600bf8a30877e921a5e63dccf3`, chain 80094)
- UnnamedContract (`0x89ff70257bc747f310bb538eefc46add763e75d8`, chain 80094)
- UnnamedContract (`0xa73c6f1fec76d5487dc30bdb8f11d1f390394b48`, chain 80094)
- UnnamedContract (`0xac335fe675699b0ce4c927bdaa572eb647ed9f02`, chain 80094)
- UnnamedContract (`0xaeaa563d9110f833fa3fb1ff9a35dfba11b0c9cf`, chain 80094)
- UnnamedContract (`0xca11bde05977b3631167028862be2a173976ca11`, chain 80094)
- UnnamedContract (`0xcfe9ee61c271fba4d190498b5a71b8cb365a3590`, chain 80094)
- UnnamedContract (`0xd84cbf0b02636e7f53db9e5e45a616e05d710990`, chain 80094)
- UnnamedContract (`0xd91dd58387ccd9b66b390ae2d7c66dbd46bc6022`, chain 80094)
- UnnamedContract (`0xe301e48f77963d3f7dbd2a4796962bd7f3867fb4`, chain 80094)
- UnnamedContract (`0xe8d7b965ba082835ea917f2b173ff3e035b69eeb`, chain 80094)
- UnnamedContract (`0xeb109d3935ea00b90b6ebe56e4606a1cdacf0b98`, chain 80094)
- UnnamedContract (`0xeb81a9eeaf156d4cfec2af364af36ad65cf9f0fa`, chain 80094)
- UnnamedContract (`0xed158c4b336a6fcb5b193a5570e3a571f6cbe690`, chain 80094)
- UnnamedContract (`0xf88ca555751f5cda616b1d97282c9fdda07dd913`, chain 80094)
- UnnamedContract (`0xfa0276f06161cc2f66aa51f3500484edf8fc94bb`, chain 80094)
- UnnamedContract (`0xfe5e8c83ffe4d9627a75eaa7fee864768db989bd`, chain 80094)
- UnnamedContract (`0xffcaed1971c28ccceaff111f4ed2235532537b8f`, chain 80094)
- KodiakRewards (`0xbc3dfe5ee6bce8b301a3661b3528a5c605eaf6af`, chain 80094)
- KodiakToken (`0xc0d1ac00a30fa4e30e44afc7313d6312c87e21df`, chain 80094)
- TokenMigrator (`0x88eb43086eddf189856af7b00a09259598de8210`, chain 80094)
- XKodiakToken (`0x040ea7d4b559357425407fdfc3c774c5dfc04677`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/28 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 88 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 27 of 116 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 112
- Unique implementations: 116
- Raw deployments: 116
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KodiakRewards | unknown | project_anchor | own_supporting | 0 | berachain | unit-244406 | `0xbc3dfe5ee6bce8b301a3661b3528a5c605eaf6af` | ⚠️ Unaudited |
| KodiakToken | token | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | berachain | unit-244407 | `0xc0d1ac00a30fa4e30e44afc7313d6312c87e21df` | ⚠️ Unaudited |
| TokenMigrator | token | project_anchor | own_supporting | 0 | berachain | unit-244400 | `0x88eb43086eddf189856af7b00a09259598de8210` | ⚠️ Unaudited |
| XKodiakToken | token | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | berachain | unit-244393 | `0x040ea7d4b559357425407fdfc3c774c5dfc04677` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (112)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x00720607395f3c926b528efd2f781e5135023429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0289074c7ba77604ddc3c76403d11b910069b28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x04062afdf495056c12e8f8c1861c2e3b1f295bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x05963390117da428a010d0e50fb3919301862f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0a516424f7bc4162a7679c4664c9a01b00e116ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0a5ab8d0d4d7e195abc6194c2924c16588c89f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0c6e08946dadd4c3831148243f7e5b64c9afc37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0ef0e9a6086e9c132457644d62c9efa1b8cce31f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x10c1359531c1b38bb551a817fbee83ed31cb780b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1408324a215f51f09b7baf49bee1e519d000d1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x150365e871c3af3abd32834ca766fa468849b2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x19baf984caf493d7446cecb2a463b52e79e7d8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1fb69b46ebacb1a12236ce3f23450f4b6248bfde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x21334cf6f1e0d2b69b91eb6c37c80b9fd3ecdbdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x21da94afd32f1a7a08bb932799c4163840173ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x26b1cfc3017f16f05d85d5b0b6a994e7d5660dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2926a58aaadba66193259e97bba90a0176a691a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29afc43f88dcdc26378b5afe06d3262e0bcaa015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2d01f069ba026c05b0ec982508f9df3e3ee36dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3292761be5101dc02c7a735ed1625b559e93503e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x374d65fe7615a7f70e773e0b23283c879bbb8181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x39027795ae6f2b56ada04f0c25cf5adbd095933b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3d0751abb4356e35c31b8d4a71404f42a5d9b222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3e9925aa596a40edb7e506ad282b2ee7e398ba2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ee588a996e4092e9856da062537c805df295200` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244394 | `0x43dac637c4383f91b4368041e7a8687da3806cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x48f25d6b17c190eb27794e168d6c99d73a21812c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4a19d3107f81aaa55202264f2c246aa75734edb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4e5c0e89defb0aa725cd4ee0c8b0fdef1d90a836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x509bfb9403dc57e50f5d95ff7506e3a1e76e2948` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244395 | `0x5261c5a5f08818c08ed0eb036d9575ba1e02c1d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x56cf1e9c8fbddc1aa948b7bbec6fb407912f33e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x57d860cbd79ecb95927bd048dfb5de60a28950a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x59e224d87d511d2adb1d6f5a73977997636acb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5a4258914b637a38258e182e07bcfd6aa97184c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5ba92d29bee75e8a5805f930e9419c67bdd45564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5df2da26ba679e5596627074e382aa564cf171d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244396 | `0x5e705e184d233ff2a7cb1553793464a9d0c3028f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5fd3e76039aa2f1bb797f106e89ad755942f0e1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244397 | `0x644c8d6e501f7c994b74f5cea96abe65d0ba662b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244398 | `0x679a7c63fc83b6a4d9c1f931891d705483d4791f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x682707f31350423980009161c8e696a8fb068b0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | berachain | unit-244399 | `0x6969696969696969696969696969696969696969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6b529e520136f09330d969bb6c0ccee4e23ba98c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6d6b5244b59f70e7dc692684e037a431af50f52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6f4e43bb0c9e178b8b594934170e1bca057e6b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x705a470ac3b5a553249c374ffb8220940145b633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x73a7c60ae90eeeea8ed14f3faaaf1bef1ceee70d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7ba0ea6c875f41139654522798a76bbc057cc484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x802065f22a83fadbe2504ac258f70e01ba03b3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x80625e9341364ead83ab251b55429390745ca47d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x820ab048c14735f357bd74fb4dbdf7646fdb05ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x82cf23156b897e8555a905c13e7352943eb8454e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x87bb03ca7cbdec7859d81f788404ab0a5ab9bce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244401 | `0x89c8c594f8dea5600bf8a30877e921a5e63dccf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244402 | `0x89ff70257bc747f310bb538eefc46add763e75d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x91788b160a0999a24b6fa0a902cd3405de326371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x91ce27841fee74a9c001846f4adf2fe55479fffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9b20c1d5e304803d3fe9e3377c01aa212ae01234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa04bdb9a37b9037a54ace80bf75f53622440ae9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa16f19991fa74b5ce3562392fdcd2407aafe2a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa23b0a681eab54aea5b00061153ca840b69e1317` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244403 | `0xa73c6f1fec76d5487dc30bdb8f11d1f390394b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xaa3c4a553987a0c03dee426780941425b63676df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244404 | `0xac335fe675699b0ce4c927bdaa572eb647ed9f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xad4eb68c764c6f280af56e7eacc01b92d346a0fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244405 | `0xaeaa563d9110f833fa3fb1ff9a35dfba11b0c9cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb204286d0bd5132e658bc1f7f9a79282551757de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb2bd3178a9594ae624614fe879f4defda07d88d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb2fd036525059155985ef1aaaf8497ac52fefb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb3b008a734e6f81e0347e8d90c0862eaee995de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb5e9a164bbb1cc70c1e0cf25508a84d402871b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb81888b51f6bbca93e09c7f1c699af04a14daed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbdc303b251a5db8e50ddf9a551aab27218ef7ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbfe2d980a64f3c124111a53f36a305b4cd2b7fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc8e180c0c07940994ccdd44d59ea649ff291ac7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244408 | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xca4a9ae6712aff3948c871503fc46cbe6da3cae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcde443ffe2272fc8852f8d9910394bbf42875bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xce02122d8b91025f2d25d390261d1eb206867ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcf8a1a028890ace4dd255f9e2b28bb73ad55e3f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244409 | `0xcfe9ee61c271fba4d190498b5a71b8cb365a3590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd00f98e7040b194a5e29bd2b62e8f2e046ccf112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd0da0a3216baf477ac22907486e2730f1a9e9a7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd1d9d4d62209c7e10dd81015d1fbdf58592d15fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd31227577985f0643b03e084dda6e89ccacfae3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4ede395c58aa04c89ad5ee3f075f646a2d159fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd65db6d82d808c7ad2b160f93daa023e60c08485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd6635b5dad981e9b3259cc6bb5f00c110673a690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd71c9e3f8debf515b3b20e2d8e0ee11bea907c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd7af1f067d038fb5aaa58a3f2707a0e95aab998b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244410 | `0xd84cbf0b02636e7f53db9e5e45a616e05d710990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd84cd6e1565aad9c012acde8d1c27384f4c3cc1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd8dc3d705c820a3eb369fbae7db6468db49e131d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244411 | `0xd91dd58387ccd9b66b390ae2d7c66dbd46bc6022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe0a9f61115ddab7aab903f789d161d1febffb8f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244412 | `0xe301e48f77963d3f7dbd2a4796962bd7f3867fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe35df4709951d8a85c08806559bbe8d17103c696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe5abc8ba88aae33afd5504cf0f9e255585f7fdd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe5afffa15f977e84865bd645855934152a98d7e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244413 | `0xe8d7b965ba082835ea917f2b173ff3e035b69eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe9e873825cc79bcb20fd439ab0ef628a6c138de4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244414 | `0xeb109d3935ea00b90b6ebe56e4606a1cdacf0b98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244415 | `0xeb81a9eeaf156d4cfec2af364af36ad65cf9f0fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244416 | `0xed158c4b336a6fcb5b193a5570e3a571f6cbe690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xee946ed849633a3562dcab2dc7789fa4e60678be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf8774bf221aa2cc59d9d4ad17b191ed100c8c1f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244417 | `0xf88ca555751f5cda616b1d97282c9fdda07dd913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf8b73adaba2424de6ce8997ed3884a4e26cce685` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244418 | `0xfa0276f06161cc2f66aa51f3500484edf8fc94bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244419 | `0xfe5e8c83ffe4d9627a75eaa7fee864768db989bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-244420 | `0xffcaed1971c28ccceaff111f4ed2235532537b8f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 88
- Live contracts: 0
- Unknown liveness contracts: 88
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=88

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00720607395f3c926b528efd2f781e5135023429` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x0289074c7ba77604ddc3c76403d11b910069b28e` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0x04062afdf495056c12e8f8c1861c2e3b1f295bdc` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x05963390117da428a010d0e50fb3919301862f3e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x0a516424f7bc4162a7679c4664c9a01b00e116ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x0a5ab8d0d4d7e195abc6194c2924c16588c89f94` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x0c6e08946dadd4c3831148243f7e5b64c9afc37c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x0ef0e9a6086e9c132457644d62c9efa1b8cce31f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x10c1359531c1b38bb551a817fbee83ed31cb780b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x1408324a215f51f09b7baf49bee1e519d000d1b4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x150365e871c3af3abd32834ca766fa468849b2bf` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x19baf984caf493d7446cecb2a463b52e79e7d8c5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x1fb69b46ebacb1a12236ce3f23450f4b6248bfde` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x21334cf6f1e0d2b69b91eb6c37c80b9fd3ecdbdb` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x21da94afd32f1a7a08bb932799c4163840173ba5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x26b1cfc3017f16f05d85d5b0b6a994e7d5660dcd` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x2926a58aaadba66193259e97bba90a0176a691a0` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x29afc43f88dcdc26378b5afe06d3262e0bcaa015` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x2d01f069ba026c05b0ec982508f9df3e3ee36dcc` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0x3292761be5101dc02c7a735ed1625b559e93503e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x374d65fe7615a7f70e773e0b23283c879bbb8181` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x39027795ae6f2b56ada04f0c25cf5adbd095933b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x3d0751abb4356e35c31b8d4a71404f42a5d9b222` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x3e9925aa596a40edb7e506ad282b2ee7e398ba2f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x3ee588a996e4092e9856da062537c805df295200` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x48f25d6b17c190eb27794e168d6c99d73a21812c` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0x4a19d3107f81aaa55202264f2c246aa75734edb6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x4e5c0e89defb0aa725cd4ee0c8b0fdef1d90a836` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0x509bfb9403dc57e50f5d95ff7506e3a1e76e2948` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x56cf1e9c8fbddc1aa948b7bbec6fb407912f33e5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x57d860cbd79ecb95927bd048dfb5de60a28950a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x59e224d87d511d2adb1d6f5a73977997636acb5d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x5a4258914b637a38258e182e07bcfd6aa97184c6` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0x5ba92d29bee75e8a5805f930e9419c67bdd45564` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x5df2da26ba679e5596627074e382aa564cf171d6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x5fd3e76039aa2f1bb797f106e89ad755942f0e1f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x682707f31350423980009161c8e696a8fb068b0d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x6b529e520136f09330d969bb6c0ccee4e23ba98c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x6d6b5244b59f70e7dc692684e037a431af50f52c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x6f4e43bb0c9e178b8b594934170e1bca057e6b73` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x705a470ac3b5a553249c374ffb8220940145b633` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x73a7c60ae90eeeea8ed14f3faaaf1bef1ceee70d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x7ba0ea6c875f41139654522798a76bbc057cc484` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x802065f22a83fadbe2504ac258f70e01ba03b3dd` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x80625e9341364ead83ab251b55429390745ca47d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x820ab048c14735f357bd74fb4dbdf7646fdb05ee` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x82cf23156b897e8555a905c13e7352943eb8454e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x87bb03ca7cbdec7859d81f788404ab0a5ab9bce3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x91788b160a0999a24b6fa0a902cd3405de326371` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0x91ce27841fee74a9c001846f4adf2fe55479fffc` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0x9b20c1d5e304803d3fe9e3377c01aa212ae01234` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xa04bdb9a37b9037a54ace80bf75f53622440ae9e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xa16f19991fa74b5ce3562392fdcd2407aafe2a8c` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xa23b0a681eab54aea5b00061153ca840b69e1317` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xaa3c4a553987a0c03dee426780941425b63676df` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xad4eb68c764c6f280af56e7eacc01b92d346a0fb` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xb204286d0bd5132e658bc1f7f9a79282551757de` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xb2bd3178a9594ae624614fe879f4defda07d88d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xb2fd036525059155985ef1aaaf8497ac52fefb12` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xb3b008a734e6f81e0347e8d90c0862eaee995de5` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0xb5e9a164bbb1cc70c1e0cf25508a84d402871b24` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xb81888b51f6bbca93e09c7f1c699af04a14daed7` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xbdc303b251a5db8e50ddf9a551aab27218ef7ced` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xbfe2d980a64f3c124111a53f36a305b4cd2b7fe4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xc8e180c0c07940994ccdd44d59ea649ff291ac7d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xca4a9ae6712aff3948c871503fc46cbe6da3cae5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xcde443ffe2272fc8852f8d9910394bbf42875bb8` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0xce02122d8b91025f2d25d390261d1eb206867ab2` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xcf8a1a028890ace4dd255f9e2b28bb73ad55e3f9` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0xd00f98e7040b194a5e29bd2b62e8f2e046ccf112` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd0da0a3216baf477ac22907486e2730f1a9e9a7d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd1d9d4d62209c7e10dd81015d1fbdf58592d15fc` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd31227577985f0643b03e084dda6e89ccacfae3a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd4ede395c58aa04c89ad5ee3f075f646a2d159fb` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd65db6d82d808c7ad2b160f93daa023e60c08485` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd6635b5dad981e9b3259cc6bb5f00c110673a690` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd71c9e3f8debf515b3b20e2d8e0ee11bea907c8e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd7af1f067d038fb5aaa58a3f2707a0e95aab998b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd84cd6e1565aad9c012acde8d1c27384f4c3cc1f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xd8dc3d705c820a3eb369fbae7db6468db49e131d` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xe0a9f61115ddab7aab903f789d161d1febffb8f4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xe35df4709951d8a85c08806559bbe8d17103c696` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xe5abc8ba88aae33afd5504cf0f9e255585f7fdd4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xe5afffa15f977e84865bd645855934152a98d7e5` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xe9e873825cc79bcb20fd439ab0ef628a6c138de4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xee946ed849633a3562dcab2dc7789fa4e60678be` | non_address_book | unknown | unknown | unverified | n/a | `0xd79a32f394e5e524d551dde91b9b85bd7baa2361` |
| unverified unclassified | UnnamedContract<br>`0xf8774bf221aa2cc59d9d4ad17b191ed100c8c1f3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |
| unverified unclassified | UnnamedContract<br>`0xf8b73adaba2424de6ce8997ed3884a4e26cce685` | non_address_book | unknown | unknown | unverified | n/a | `0xbc0f503e84994595d28bf120998c4dbac07477aa` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2Fs1TqcqIFZ5UkYF7iD5Nt%2Fkodiak_A3_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 6 | high |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FierRx3DPkFpZU4OY3fB5%2Fkodiak_A1_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 14 | high |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FSz7GaLLOLF7H4FmxpGTR%2Fkodiak_A2_by_0xmacro.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FEGTuI70lM40vmr8YwZQT%2F%5BKALOS%5D%20KODIAK%20Audit%20Report%20(ENG).pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | matched | 10 | 0 | 0 | 151 | high |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FEi2WQL3ewlsPDWDnlV9D%2FAstraSec-AuditReport-Kodiak-Bault.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/HLRHY2QFxlXLD1Yxcqku/AstraSec-AuditReport-Kodiak-DEX.pdf](https://584145091-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FOSwqNrRJ9Xh6jO57yoLm%2Fuploads%2FHLRHY2QFxlXLD1Yxcqku%2FAstraSec-AuditReport-Kodiak-DEX.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [audits.md](https://documentation.kodiak.finance/security/audits.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3261] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf — matched: All contracts listed in the Source Code table are in scope. Audit started Nov 18, finished Nov 25, 2024.
- [3262] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf — matched: Extracted 20 contracts from the scope tables in the audit report. The audit date is April 24th, 2024.
- [3264] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf — matched: Extracted 5 contracts from scope table and findings. Audit date from title page.
- [16516] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf — matched: Extracted all contracts from the scope section (pages 10-16) and findings. The audit date is from the cover page: 'Published on: 27 Feb. 2024'.
- [16518] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf — matched: Extracted 4 contracts from source code listing. Date from title.
- [16519] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/HLRHY2QFxlXLD1Yxcqku/AstraSec-AuditReport-Kodiak-DEX.pdf — no match: No explicit scope table; contracts inferred from vulnerability targets. Source code links provided but no file paths. Date from title.
- [16520] audits.md — no match: The document lists multiple audit rounds with scope descriptions but no specific contract file paths or addresses. Names extracted from scope descriptions.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | FarmFactory | unmatched — not counted | — | listed in Source Code table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | KodiakFarm | own contract | 0xeb81a9… (selected) `0xeb81a9eeaf156d4cfec2af364af36ad65cf9f0fa` — deployed 2025-02-03 14:33:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | KDK | unmatched — not counted | — | listed in Source Code table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | xKDK | unmatched — not counted | — | listed in Source Code table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | KodiakIsland | own contract | 0xcfe9ee… (selected) `0xcfe9ee61c271fba4d190498b5a71b8cb365a3590` — deployed 2025-01-21 00:18:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | KodiakIslandFactory | own contract | 0x5261c5… (selected) `0x5261c5a5f08818c08ed0eb036d9575ba1e02c1d6` — deployed 2025-01-25 19:19:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | KodiakIslandWithRouter | unmatched — not counted | — | listed in Source Code table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | KodiakIslandStorage | unmatched — not counted | — | listed in Source Code table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/s1TqcqIFZ5UkYF7iD5Nt/kodiak_A3_by_0xmacro.pdf | OwnableUninitialized | unmatched — not counted | — | listed in Source Code table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | UniswapV3Factory | own contract | 0xd84cbf… (selected) `0xd84cbf0b02636e7f53db9e5e45a616e05d710990` — deployed 2025-01-21 00:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | UniswapV2ERC20 | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | UniswapV2Factory | own contract | 0x5e705e… (selected) `0x5e705e184d233ff2a7cb1553793464a9d0c3028f` — deployed 2025-01-21 00:13:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | UniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | KodiakFactoryV1 | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | KodiakVaultV1 | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | CommunalFarm | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | KDK | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | TokenRewards | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | xKDK | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | NonfungiblePositionManager | own contract | 0xfe5e8c… (selected) `0xfe5e8c83ffe4d9627a75eaa7fee864768db989bd` — deployed 2025-01-21 00:33:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | SwapRouter | own contract | 0xed158c… (selected) `0xed158c4b336a6fcb5b193a5570e3a571f6cbe690` — deployed 2025-01-21 00:33:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | UniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | UniswapV2Router02 | own contract | 0xd91dd5… (selected) `0xd91dd58387ccd9b66b390ae2d7c66dbd46bc6022` — deployed 2025-01-21 00:31:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | SwapRouter02 | own contract | 0xe301e4… (selected) `0xe301e48f77963d3f7dbd2a4796962bd7f3867fb4` — deployed 2025-01-21 00:33:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | V2SwapRouter | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | V3SwapRouter | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/ierRx3DPkFpZU4OY3fB5/kodiak_A1_by_0xmacro.pdf | KodiakV1RouterStaking | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf | PandaMath | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf | PandaFactory | own contract | 0xac335f… (selected) `0xac335fe675699b0ce4c927bdaa572eb647ed9f02` — deployed 2025-02-06 15:15:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf | PandaPool | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf | PandaToken | unmatched — not counted | — | listed in scope table | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Sz7GaLLOLF7H4FmxpGTR/kodiak_A2_by_0xmacro.pdf | IPandaFactory | unmatched — not counted | — | mentioned in findings Q-1 and Q-2 as an interface | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2ERC20 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2Factory | own contract | 0x5e705e… (selected) `0x5e705e184d233ff2a7cb1553793464a9d0c3028f` — deployed 2025-01-21 00:13:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2Pair | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IERC20 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV2Callee | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV2ERC20 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV2Factory | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Math | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SafeMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UQ112x112 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV3Factory | own contract | 0xd84cbf… (selected) `0xd84cbf0b02636e7f53db9e5e45a616e05d710990` — deployed 2025-01-21 00:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV3Pool | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV3PoolDeployer | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IERC20Minimal | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3Factory | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3Pool | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3PoolDeployer | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3FlashCallback | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3MintCallback | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3SwapCallback | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3PoolActions | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3PoolDerivedState | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3PoolEvents | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3PoolImmutables | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3PoolOwnerActions | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3PoolState | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | BitMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | FixedPoint128 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | FixedPoint96 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | FullMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | LiquidityMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | LowGasSafeMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Oracle | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Position | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SafeCast | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SqrtPriceMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SwapMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Tick | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | TickBitmap | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | TickMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | TransferHelper | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UnsafeMath | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | CommunalFarm | unmatched — not counted | — | listed in scope and findings | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | KDK | unmatched — not counted | — | listed in scope | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | TokenRewards | unmatched — not counted | — | listed in scope | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IKodiakRewards | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IXKdkTokenUsage | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IKdkToken | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IXKdkToken | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | xKDK | unmatched — not counted | — | listed in scope and findings | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | KodiakFactoryV1 | unmatched — not counted | — | listed in scope | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | KodiakVaultV1 | unmatched — not counted | — | listed in scope | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Gelatofied | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | KodiakFactoryV1Storage | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | KodiakVaultV1Storage | unmatched — not counted | — | listed in scope and findings | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | OwnableUninitialized | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IEIP173Proxy | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IKodiakFactoryV1 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IKodiakVaultV1Storage | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV3TickSpacing | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | EIP173Proxy | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | EIP173ProxyWithReceive | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Proxied | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Proxy | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope and findings | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | InitCodeHash | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SwapRouter02 | own contract | 0xe301e4… (selected) `0xe301e48f77963d3f7dbd2a4796962bd7f3867fb4` — deployed 2025-01-21 00:33:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | V2SwapRouter | unmatched — not counted | — | listed in scope and findings | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | V3SwapRouter | unmatched — not counted | — | listed in scope and findings | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ApproveAndCall | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ImmutableState | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | MulticallExtended | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | OracleSlippage | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PeripheryPaymentsExtended | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PeripheryPaymentsWithFeeExtended | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PeripheryValidationExtended | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IApproveAndCall | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IImmutableState | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IMixedRouteQuoterV1 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IMulticallExtended | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IOracleSlippage | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IPeripheryPaymentsExtended | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IPeripheryPaymentsWithFeeExtended | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IQuoter | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IQuoterV2 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ISwapRouter02 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ITokenValidator | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IV2SwapRouter | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IV3SwapRouter | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IWETH | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | MixedRouteQuoterV1 | own contract | 0xfa0276… (selected) `0xfa0276f06161cc2f66aa51f3500484edf8fc94bb` — deployed 2025-01-21 00:33:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Quoter | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | QuoterV2 | own contract | 0x644c8d… (selected) `0x644c8d6e501f7c994b74f5cea96abe65d0ba662b` — deployed 2025-01-21 00:33:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | TokenValidator | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Constants | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PoolTicksCounter | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2Library | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2Migrator | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2Router01 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2Router02 | own contract | 0xd91dd5… (selected) `0xd91dd58387ccd9b66b390ae2d7c66dbd46bc6022` — deployed 2025-01-21 00:31:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV2Migrator | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV2Router01 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV2Router02 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV1Exchange | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IUniswapV1Factory | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2LiquidityMathLibrary | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapV2OracleLibrary | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | NonfungiblePositionManager | own contract | 0xfe5e8c… (selected) `0xfe5e8c83ffe4d9627a75eaa7fee864768db989bd` — deployed 2025-01-21 00:33:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SwapRouter | own contract | 0xed158c… (selected) `0xed158c4b336a6fcb5b193a5570e3a571f6cbe690` — deployed 2025-01-21 00:33:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | V3Migrator | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | BlockTimestamp | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ERC721Permit | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | LiquidityManagement | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Multicall | own contract | 0x89ff70… (selected) `0x89ff70257bc747f310bb538eefc46add763e75d8` — deployed 2025-01-21 00:33:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PeripheryImmutableState | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PeripheryPayments | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PeripheryPaymentsWithFee | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PeripheryValidation | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PoolInitializer | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SelfPermit | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PairFlash | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IERC20Metadata | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IERC721Permit | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IMulticall | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | INonfungiblePositionManager | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | INonfungibleTokenPositionDescriptor | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IPeripheryImmutableState | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IPeripheryPayments | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IPeripheryPaymentsWithFee | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IPoolInitializer | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ISelfPermit | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ISwapRouter | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ITickLens | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IV3Migrator | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IERC1271 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IERC20PermitAllowed | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IWETH9 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | TickLens | own contract | 0xa73c6f… (selected) `0xa73c6f1fec76d5487dc30bdb8f11d1f390394b48` — deployed 2025-01-21 00:33:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | UniswapInterfaceMulticall | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | BytesLib | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | CallbackValidation | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | ChainId | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | HexStrings | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | NFTDescriptor | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | NFTSVG | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | OracleLibrary | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | Path | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PoolAddress | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PositionKey | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | PositionValue | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | SqrtPriceMathPartial | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | TokenRatioSortOrder | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | KodiakV1Resolver | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | KodiakV1RouterStaking | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IGauge | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IKodiakV1Resolver | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IKodiakV1RouterStaking | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | IKodiakVaultV1 | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/EGTuI70lM40vmr8YwZQT/[KALOS] KODIAK Audit Report (ENG).pdf | GelatoBytes | unmatched — not counted | — | — | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf | BaultFactory | own contract | 0xffcaed… (selected) `0xffcaed1971c28ccceaff111f4ed2235532537b8f` — deployed 2025-05-23 11:34:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf | Bault | unmatched — not counted | — | listed in source code section | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf | BgtConverter | unmatched — not counted | — | listed in source code section | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/Ei2WQL3ewlsPDWDnlV9D/AstraSec-AuditReport-Kodiak-Bault.pdf | BaultRouter | own contract | 0x89c8c5… (selected) `0x89c8c594f8dea5600bf8a30877e921a5e63dccf3` — deployed 2025-05-23 14:51:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/HLRHY2QFxlXLD1Yxcqku/AstraSec-AuditReport-Kodiak-DEX.pdf | KodiakMetaRouter | unmatched — not counted | — | mentioned in vulnerability details as target | no |
| spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/HLRHY2QFxlXLD1Yxcqku/AstraSec-AuditReport-Kodiak-DEX.pdf | KodiakExecutor | unmatched — not counted | — | mentioned in vulnerability details as target | no |
| audits.md | Kodiak Islands | unmatched — not counted | — | listed in scope for core protocol audits | no |
| audits.md | Farms | unmatched — not counted | — | listed in scope for core protocol audits | no |
| audits.md | Dex Core | unmatched — not counted | — | listed in scope for core protocol audits | no |
| audits.md | Periphery | unmatched — not counted | — | listed in scope for core protocol audits | no |
| audits.md | Tokens | unmatched — not counted | — | listed in scope for core protocol audits | no |
| audits.md | Panda Factory | unmatched — not counted | — | listed in scope for Panda Factory audit | no |
| audits.md | Bault | unmatched — not counted | — | listed in scope for Bault audit | no |
| audits.md | Meta-Aggregator | unmatched — not counted | — | mentioned as audited product | no |
| audits.md | Fungible | unmatched — not counted | — | listed in scope for kX, Fungible audit | no |
| audits.md | kX | unmatched — not counted | — | listed in scope for kX, Fungible audit | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0xbc3dfe5ee6bce8b301a3661b3528a5c605eaf6af` | KodiakRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x88eb43086eddf189856af7b00a09259598de8210` | TokenMigrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 112 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 22 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 189 unmatched
- Matched-own operational status: 22 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, medium=2
- Match method counts: unique_name=22

Zero-match audit list:

- [16519] spaces/OSwqNrRJ9Xh6jO57yoLm/uploads/HLRHY2QFxlXLD1Yxcqku/AstraSec-AuditReport-Kodiak-DEX.pdf
- [16520] audits.md

Fork inheritance lineage and inherited audits are included when available.
