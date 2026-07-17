# Agentic Audit Brief: Tarot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon, scroll, zksync-era
- Contract surface: 109 unique implementations (283 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $953,039.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Tarot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon. Structural roles: 21 unclassified, 3 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: unclassified (21), core (3), supporting (3)
- Contract kinds: contract (27)
- Detected standards: ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AnyswapV6ERC20 (`0x375488f097176507e39b9653b88fdc52cde736bf`, chain 10)
- BDeployer (`0x54b00658f247ee34e8b23055b19d73217a7d5420`, chain 10)
- BDeployer (`0x952e9c6391d9c0f6c6174d395aa9b4ec1030335a`, chain 10)
- CDeployer (`0x5f90e27c07b96641a52ff2335b15158e74e46401`, chain 10)
- CDeployer (`0xeb5809eb0f79aab6e53e6374258b29a244dfc12d`, chain 10)
- Factory (`0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e`, chain 10)
- Factory (`0x49df1fe24caf1a7dcbb2e2b1793b93b04edb62bf`, chain 10)
- Factory (`0x8b2e286afa241307261622abd2878ad8ec9f0723`, chain 10)
- Factory (`0xd7cabef2c1fd77a31c5ba97c724b82d3e25fc83c`, chain 10)
- Factory (`0x2217aec3440e8fd6d49a118b1502e539f88dba55`, chain 56)
- Factory (`0xc20099a3f0728634c1136489074508be7b406d3a`, chain 56)
- Factory (`0x2217aec3440e8fd6d49a118b1502e539f88dba55`, chain 42161)
- Factory (`0x4b6dae049a35196a773028b2e835cccce9dd4723`, chain 42161)
- Factory (`0xc20099a3f0728634c1136489074508be7b406d3a`, chain 42161)
- Router02 (`0x88c81e6b9f14580ece9729ec699dd800c206172e`, chain 10)
- Router02 (`0x8a3b1b9f4e3fabb80623c215aa88f97bcaf53d8c`, chain 10)
- Router02 (`0xa516b9c7378799799e6dfadbdabf45d5b584405f`, chain 10)
- Router02 (`0xd4a6a05081fd270dc111332845a778a49fe01741`, chain 10)
- Router02 (`0x0022358ebfd5261c325f8160c7c17bc8671d07b4`, chain 42161)
- Router02 (`0x1cafcb9f3b5a152b1553bc2c688ba6a18054b653`, chain 42161)
- Router02 (`0x46fcde1b89d61f5cbfaab05c2914c367f8301f30`, chain 42161)
- Router03 (`0x8184fa7dd835efd2ddf90a3072efff4928405990`, chain 56)
- Router03 (`0xb6ed26b8551dfa864cd565cd28027af22ca97131`, chain 56)
- VeloStableVaultTokenFactory (`0x66e9b34680f9a7c80034e0ea553e6872259f4859`, chain 10)
- VeloStableVaultTokenFactory (`0xee1ecc627a4d44631c1f42ec6f6609dae496cf70`, chain 10)
- VeloVaultTokenFactory (`0x19283dd283c31bf3920f7a530aa3a81a2792dc52`, chain 10)
- ZipVaultTokenFactory (`0x54950cae3d8513ea041066f31697903de5909f57`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 27 of 109 unique; 82 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 109
- Raw deployments: 283
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeroDexHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa516b9c7378799799e6dfadbdabf45d5b584405f` | ⚠️ Unaudited |
| AeroVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82d973434a509f7fe919a8e03a8113be64cdc245` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-258140 | `0x375488f097176507e39b9653b88fdc52cde736bf` | ⚠️ Unaudited |
| BDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258143 | `0x54b00658f247ee34e8b23055b19d73217a7d5420` | ⚠️ Unaudited |
| BDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258149 | `0x952e9c6391d9c0f6c6174d395aa9b4ec1030335a` | ⚠️ Unaudited |
| BDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 20 deployments: ethereum `0x82b3413d575aa93806308a04b53c78ae2037da11`; ethereum `0xb092e1bf50f518b3ebf7ed26a40015183ae36ac2`; optimism `0x30406961696644e8df0ab0acb7ab4ad1b955dd24`; optimism `0x3cba8215802311836764e357da02ec6785277a7d`; optimism `0xbdb7c966deb8c07db0a8708e77955643fc579252`; optimism `0xcaefa712bc750e820329815bbdcce641282bbc57`; optimism `0xe092a4054832a6f1bcc12188ebde7d6a362894aa`; optimism `0xecbca71e01c0d6eb005dbc3b08c43c7ea6afdac3`; bsc `0x35c052bbf8338b06351782a565aa9aad173432ea`; bsc `0x6108feaa628155b073150f408d0b390ec3121834`; polygon `0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e`; base `0x5a8931f2b235caa2eabf3f07cd1154360c933e17`; arbitrum `0x35c052bbf8338b06351782a565aa9aad173432ea`; arbitrum `0x455a76743084a163065a3ab9f1aed90805ab8959`; arbitrum `0x6108feaa628155b073150f408d0b390ec3121834`; arbitrum `0xb092e1bf50f518b3ebf7ed26a40015183ae36ac2`; arbitrum `0xc5a39712229a109fee54fd2d1cb78f9a3151382a`; arbitrum `0xe1ac0cbc361c68ec401a5d11a289742c2ec9d452`; avalanche `0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e`; linea `0x36df0a76a124d8b2205fa11766ec2eff8ce38a35` | ⚠️ Unaudited |
| CDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 20 deployments: ethereum `0xb3f352c936ce9c29c40d8befae9caebbcc0b6252`; ethereum `0xc20099a3f0728634c1136489074508be7b406d3a`; optimism `0x15ff312a9930a6499e4d747773a098b013e05a66`; optimism `0x17abab9ad820ad76f45da92ef0a5c5611c0a147b`; optimism `0x2ddb6457c9e3db9e83930e1f8a074f3d30eec67e`; optimism `0x3e6c79f112a30e8eec5a3b6708b87634c5509c12`; optimism `0x5658dc089838d77e899ff5308afe0c248b6fea48`; optimism `0xf32db3c4411a6488814013a90e0cac11f381a2b0`; bsc `0x82b3413d575aa93806308a04b53c78ae2037da11`; bsc `0xb6193df61351736e5190bf1deb2e4f0769bd1bf2`; polygon `0xd4a6a05081fd270dc111332845a778a49fe01741`; base `0x952e9c6391d9c0f6c6174d395aa9b4ec1030335a`; arbitrum `0x6b80958cfd3ceb8af809e3ed441b64ab2e7c7227`; arbitrum `0x82b3413d575aa93806308a04b53c78ae2037da11`; arbitrum `0x82d973434a509f7fe919a8e03a8113be64cdc245`; arbitrum `0xb3f352c936ce9c29c40d8befae9caebbcc0b6252`; arbitrum `0xb6193df61351736e5190bf1deb2e4f0769bd1bf2`; arbitrum `0xee618ce849f8fe87981e6455653635d4d06c64bd`; avalanche `0xd4a6a05081fd270dc111332845a778a49fe01741`; linea `0x6108feaa628155b073150f408d0b390ec3121834` | ⚠️ Unaudited |
| CDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258144 | `0x5f90e27c07b96641a52ff2335b15158e74e46401` | ⚠️ Unaudited |
| CDeployer | unknown | project_anchor | own_supporting | 0 | optimism | unit-258153 | `0xeb5809eb0f79aab6e53e6374258b29a244dfc12d` | ⚠️ Unaudited |
| ClaimAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa782b2a4fb8b329f257e58122cda55310d7e6e1d` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258139 | `0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258141 | `0x49df1fe24caf1a7dcbb2e2b1793b93b04edb62bf` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258148 | `0x8b2e286afa241307261622abd2878ad8ec9f0723` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258152 | `0xd7cabef2c1fd77a31c5ba97c724b82d3e25fc83c` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | bsc | unit-258161 | `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | bsc | unit-258164 | `0xc20099a3f0728634c1136489074508be7b406d3a` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: ethereum `0x1cafcb9f3b5a152b1553bc2c688ba6a18054b653`; ethereum `0x4b6dae049a35196a773028b2e835cccce9dd4723`; optimism `0x9d1a282ff8429b8143ad33a21a324382407cb88f`; optimism `0xba47316035e6c95b31cb55bfb93458ad41e4da04`; optimism `0xd7cb8493d47e737009fd13d275469b93864fc5a4`; polygon `0x36df0a76a124d8b2205fa11766ec2eff8ce38a35`; base `0xeb5809eb0f79aab6e53e6374258b29a244dfc12d`; arbitrum `0x1967c70031e8b562a2738d22e95a049bebfe5883`; arbitrum `0x1bbd5637421a83b00c5cd549b9c3721b28553f80`; arbitrum `0x8cec723d81273b9ab1fc70441382701dfa2fe526`; avalanche `0x36df0a76a124d8b2205fa11766ec2eff8ce38a35`; linea `0xb6193df61351736e5190bf1deb2e4f0769bd1bf2` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258157 | `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258159 | `0x4b6dae049a35196a773028b2e835cccce9dd4723` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258160 | `0xc20099a3f0728634c1136489074508be7b406d3a` | ⚠️ Unaudited |
| FarmingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 14 deployments: optimism `0x01d7e3bd5d8ea31cd1cee653576f185abdbf661c`; optimism `0x21ee3ec6cf8642bcb748f1e88377dba6a7bfcbb8`; optimism `0x378304a761fbf0549a158fc781eed538c40da606`; optimism `0x3c9de6a672ee835dc24a89170e4cdfd158644865`; optimism `0x4d791a8801e8c27f9749bfe748ddff829f134a1d`; optimism `0x5751c04d826252bfc45e0666db2bb9fc1356ea74`; optimism `0x5afbefb9f113416e84c5cb4f4f48b90c4f59791b`; optimism `0x7c91f560b43f9d69caf922adeba8fa37e0699d62`; optimism `0x8dbde89349240604266917983ebcd52e2422cc2c`; optimism `0x93dd5de2d81e6cf9b2389ef69a6eb47dacae86a4`; optimism `0xc319a18909c6709af79f3a0e6ec4e87b24c7ace2`; optimism `0xd64a1ff982ad2d0a35c2f5e30df9822eb7cb718d`; optimism `0xd883b9fc17e463658286938b5f635ba59c8f1742`; optimism `0xf465ef23a99148ba960c6fc20884f31c466b9bd7` | ⚠️ Unaudited |
| HappyPuppyClub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1f3ba804efb9cfe17d595e7262cea4782dbf6e4e` | ⚠️ Unaudited |
| MonolithRewardTokenHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36df0a76a124d8b2205fa11766ec2eff8ce38a35` | ⚠️ Unaudited |
| MonolithVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54950cae3d8513ea041066f31697903de5909f57` | ⚠️ Unaudited |
| OptiSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: ethereum `0xf544251d25f3d243a36b07e7e7962a678f952691`; optimism `0x6108feaa628155b073150f408d0b390ec3121834`; bsc `0xf544251d25f3d243a36b07e7e7962a678f952691`; polygon `0x981bd9f77c8aafc14ebc86769503f86a3cc29af5`; base `0xf6e008d07af2efd5325d1752a7b37b51a0b7d697`; arbitrum `0x981bd9f77c8aafc14ebc86769503f86a3cc29af5`; avalanche `0x981bd9f77c8aafc14ebc86769503f86a3cc29af5`; linea `0x981bd9f77c8aafc14ebc86769503f86a3cc29af5` | ⚠️ Unaudited |
| OwnedDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xadad288bd35434d37f79e2050a7776891384af55` | ⚠️ Unaudited |
| RamsesVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: arbitrum `0x6eb09970641809a23f38227af01ee41717084e24`; linea `0x35c052bbf8338b06351782a565aa9aad173432ea` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258146 | `0x88c81e6b9f14580ece9729ec699dd800c206172e` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258147 | `0x8a3b1b9f4e3fabb80623c215aa88f97bcaf53d8c` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | optimism | unit-258150 | `0xa516b9c7378799799e6dfadbdabf45d5b584405f` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | optimism | unit-258151 | `0xd4a6a05081fd270dc111332845a778a49fe01741` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-258155 | `0x0022358ebfd5261c325f8160c7c17bc8671d07b4` | ⚠️ Unaudited |
| Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x5f1f8cc5023a0ec2f53a73afa8829d3680cd719c`; optimism `0xd355c29bb622bd4f58dba495dc8921985986efbe`; bsc `0x1cafcb9f3b5a152b1553bc2c688ba6a18054b653`; bsc `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30`; arbitrum `0x1850b89227b6def395339754ab9b0e52745b84ae`; arbitrum `0x19283dd283c31bf3920f7a530aa3a81a2792dc52` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258156 | `0x1cafcb9f3b5a152b1553bc2c688ba6a18054b653` | ⚠️ Unaudited |
| Router02 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-258158 | `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30` | ⚠️ Unaudited |
| Router03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0022358ebfd5261c325f8160c7c17bc8671d07b4`; ethereum `0x3b47f0e57a6c537ecc198833728ccd5d02e29771`; optimism `0x9761d46ef36e07131e8c56af06e35cac23b9a91e`; polygon `0x6108feaa628155b073150f408d0b390ec3121834`; base `0xd7cabef2c1fd77a31c5ba97c724b82d3e25fc83c`; arbitrum `0x11876c56204b2e1e9763a802b7f15fc942ebf1ac`; avalanche `0x6108feaa628155b073150f408d0b390ec3121834`; linea `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | bsc | unit-258162 | `0x8184fa7dd835efd2ddf90a3072efff4928405990` | ⚠️ Unaudited |
| Router03 | unknown | project_anchor | own_supporting | 0 | bsc | unit-258163 | `0xb6ed26b8551dfa864cd565cd28027af22ca97131` | ⚠️ Unaudited |
| SatinVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82b3413d575aa93806308a04b53c78ae2037da11` | ⚠️ Unaudited |
| SolidLizardStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4775aa12c9e0bb95f3b35139a4f22a886eae3bb3` | ⚠️ Unaudited |
| SolidLizardVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21d1ed29bcd89e1e07058575ee48ddaf02418cd3` | ⚠️ Unaudited |
| SolidlyDexHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x54b00658f247ee34e8b23055b19d73217a7d5420`; optimism `0xc5a39712229a109fee54fd2d1cb78f9a3151382a`; bsc `0x54b00658f247ee34e8b23055b19d73217a7d5420`; polygon `0xb6193df61351736e5190bf1deb2e4f0769bd1bf2`; base `0x582471419dbe7de193cbcb11bab02db40adc92e6`; arbitrum `0x04e97d5e3eff5981035622ef4681cf5470310600`; arbitrum `0xf544251d25f3d243a36b07e7e7962a678f952691`; avalanche `0x2217aec3440e8fd6d49a118b1502e539f88dba55`; linea `0xf544251d25f3d243a36b07e7e7962a678f952691` | ⚠️ Unaudited |
| SolidlyStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5d906fc36e9f0d01f099be0c7c69bc795c3c1c` | ⚠️ Unaudited |
| SolidlyVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0998d0bfe219222816e7ea50997cf7cf663c94d9` | ⚠️ Unaudited |
| SoliSnekVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b6dae049a35196a773028b2e835cccce9dd4723` | ⚠️ Unaudited |
| SterlingStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x416ae142dbbe08531be93a83b13d93837a4830c9` | ⚠️ Unaudited |
| SterlingVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x255f549ae4fddaf22b2d75fc8344c1352a28233d` | ⚠️ Unaudited |
| SupplyVaultRouter01 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x539fcd9adbe7473768beb87bed88988b532b36c9` | ⚠️ Unaudited |
| SupplyVaultStrategyV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1753f90acc5ff758eb621f935ef0f99254289fb1` | ⚠️ Unaudited |
| SupplyVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x4ac8af23f3ef7ededb3dc45c091406aeee8de471`; optimism `0x550d17a65a2a78cac3408cdf5ca0eaa5b1a0465d`; optimism `0x811c2771fd1e1b49d1e0addb96507434c8cdd744`; optimism `0x8d3474ff61b1fed1b5f4b1267e51bf7a18cd03f8` | ⚠️ Unaudited |
| TarotMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x8f80d8b1e593f8af0c716cb84026b5b7db66f690`; optimism `0x24005ec2445103050d2d72f691de287d9e4672a4`; bsc `0x28bd427e8e32f38b90c8e903d482a67d86e5f862`; polygon `0x5ecfec22aa950cb5a3b4fd7249dc30b2bd160f18`; arbitrum `0x07b414ad4e9b0866a30a05c6bc38fa48f7604602`; avalanche `0xaf20cb327c8d2cdde1318b615b6965951a17da87` | ⚠️ Unaudited |
| TarotOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0xa10bf0aba0c7953f279c4cb8192d3b5de5ea56e8`; optimism `0x1f514a61bcde34f94bc39731235690ab9da737f7`; bsc `0x982e609643794a31a07f5c5b142dd3a9cf0690be`; polygon `0xb092e1bf50f518b3ebf7ed26a40015183ae36ac2`; base `0xf544251d25f3d243a36b07e7e7962a678f952691`; arbitrum `0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7`; avalanche `0x5ecfec22aa950cb5a3b4fd7249dc30b2bd160f18` | ⚠️ Unaudited |
| TarotPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x981bd9f77c8aafc14ebc86769503f86a3cc29af5`; arbitrum `0xa516b9c7378799799e6dfadbdabf45d5b584405f` | ⚠️ Unaudited |
| TarotSolidlyPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x5a8931f2b235caa2eabf3f07cd1154360c933e17`; arbitrum `0xd4a6a05081fd270dc111332845a778a49fe01741` | ⚠️ Unaudited |
| TarotSolidlyPriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: ethereum `0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e`; optimism `0x0a3b938d51f1b6d7bf960a0cb6ac9f1154d0008c`; bsc `0xd4a6a05081fd270dc111332845a778a49fe01741`; polygon `0x5f90e27c07b96641a52ff2335b15158e74e46401`; base `0x4b6dae049a35196a773028b2e835cccce9dd4723`; arbitrum `0x36df0a76a124d8b2205fa11766ec2eff8ce38a35`; avalanche `0x5f90e27c07b96641a52ff2335b15158e74e46401`; linea `0x5f90e27c07b96641a52ff2335b15158e74e46401` | ⚠️ Unaudited |
| ThenaV2VaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c00dac770e0644ab16d85670215c1d96ba155e9` | ⚠️ Unaudited |
| TowerLongPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d92b5f12c1beba3583861e9c3067d088bc2ff05` | ⚠️ Unaudited |
| TowerPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: optimism `0x8f530176932feb8f9520ec6b4c4051a9b47dfe50`; base `0xb0d74d24ae94985c614a52d79d1bdec0a6f57bee`; arbitrum `0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14`; linea `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30` | ⚠️ Unaudited |
| VaultTokenFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb3017116a516898af427bdfe3aeb130f2c898e7` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258145 | `0x66e9b34680f9a7c80034e0ea553e6872259f4859` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258154 | `0xee1ecc627a4d44631c1f42ec6f6609dae496cf70` | ⚠️ Unaudited |
| VeloStableVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: optimism `0x987ef19ba1b52bfae2bf8d81c42dbd7e21e089bf`; bsc `0x54950cae3d8513ea041066f31697903de5909f57` | ⚠️ Unaudited |
| VeloV2VaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbcb9da603a0a53272b61cb84ac0163ec8abc89c5` | ⚠️ Unaudited |
| VeloVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258138 | `0x19283dd283c31bf3920f7a530aa3a81a2792dc52` | ⚠️ Unaudited |
| VeloVaultTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: optimism `0x673b7720bfc95af27ee8ed83c386334b8fc477a0`; bsc `0x3b47f0e57a6c537ecc198833728ccd5d02e29771` | ⚠️ Unaudited |
| VesterSteppedLinear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e5f458baee7c38bd8f1e205ceb2acb66a905f57` | ⚠️ Unaudited |
| ZipVaultTokenFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-258142 | `0x54950cae3d8513ea041066f31697903de5909f57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0348e04b4b7c3133bdbb6415493b41692459b13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0b90317de36eaa44e8e677c4cdb8b37bc603b0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16a0c272fe8af1b4768e288467f9ac771b1c2b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x232e84eaa8938676289d9ee651e80ed369609a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b47f0e57a6c537ecc198833728ccd5d02e29771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40e6251d130dd1d11a188228ff2073a0b4f4deea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4959f80b513f9f7046e9ef1270493540a8506ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5634c471805c1a41a0886ad7e3b0e44107c7d061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ed664e2e54badf5469e4e5366cb99d6ea2f08dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6237b5fe025ab6477f19fbe5e90515b4d77357ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6e4c88ca7b80dd8fcd629eb720c3ea33ecc08d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76d553faa56e1d9d09927bfc23fbf3d4a4d0cd01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c00dac770e0644ab16d85670215c1d96ba155e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x82b3413d575aa93806308a04b53c78ae2037da11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x875f4ed8cb5f30c87c708d04d4fb9dc560738bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a5226cc1ed9645bb2f90a9ef4cf889fe8e97615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8df7da49a0344fe656b7f34b5767e6eadb568ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ec30a5a8290623861d16fc07f0ea21d20516863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc20099a3f0728634c1136489074508be7b406d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe0374614ca02012963f22807d374a39c49dea803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe9cc1de5011a14ae61368f59c9daa8d27f49fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2973c9d7b6d1ce2aa9abbde9670a5f431e58d21c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e4c7bf66d0484e44fea0ec273b85a00af92b2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda0428e5081b2672f2fdd95134f4f3bbd0267a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 57 deployments: fantom `0x04d04f9a200d63d8ff5d2dc1f59bff49410c565a`; fantom `0x075b7f7e2960d49c67c5a44134928e5e2896283a`; fantom `0x0defef0c977809db8c1a3f13fd8dacbd565d968e`; fantom `0x17235bb61f7a8c3e93a8ad2b1b12802e00121c35`; fantom `0x1a8c7d27abb6c2976e35a42299674d62e775dd4d`; fantom `0x1f7a54df8b04ca31ac875cef5acaa247c87420ed`; fantom `0x1f8e600303a7c85166467b0e5921ab394dc5cdb7`; fantom `0x20aa24369659249f8d65faae175f240740f9754d`; fantom `0x2217aec3440e8fd6d49a118b1502e539f88dba55`; fantom `0x26b21e8cd033ec68e4180dc5fc14446905e94572`; fantom `0x283e62cfe14b352db8e30a9575481dcbf589ad98`; fantom `0x2f71345a63f9c32d51b169b32142b18ff8b36558`; fantom `0x3303a565741d0d41d026c12259ff2d4772d3622e`; fantom `0x35c052bbf8338b06351782a565aa9aad173432ea`; fantom `0x36df0a76a124d8b2205fa11766ec2eff8ce38a35`; fantom `0x3e9d8f9923e1b3de55743d494810120cbb3341a4`; fantom `0x3e9f34309b2f046f4f43c0376efe2fdc27a10251`; fantom `0x3f7e61c5dd29f9380b270551e438b65c29183a7c`; fantom `0x449eadd544cb6de7e12dbc0b522ee518a7641561`; fantom `0x44f7688aba71e462ac44fb2424b6e0cd83e0d47d`; fantom `0x466ebd9ec2027776fa11a982e9bbe4f67aa6e86b`; fantom `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30`; fantom `0x4c093134657904a7c3f1e47a6d9a38955094ebef`; fantom `0x4f56f5e76c91e3676e806eb1b2e00e1d18f8f897`; fantom `0x51d49f3731a9591d6eb4fe79523f20ae5e560ba7`; fantom `0x5494b29f78714397e96086ba7542e364842a74df`; fantom `0x5b0390bccca1f040d8993eb6e4ce8ded93721765`; fantom `0x63d5554b748598c191ab0cbd0e0e1c638ffebee6`; fantom `0x68d211bc1e66814575d89bbe4f352b4cdbdacdfb`; fantom `0x6caa3e5feba1f83ec1d80ea2eaca37c3421c33a8`; fantom `0x74d1d2a851e339b8cb953716445be7e8abdf92f4`; fantom `0x7e5f7da8b5d70b40397487780fdf89384cfebb9a`; fantom `0x80d7413331afb37b30bc0ef6ae9d11a40bcf014b`; fantom `0x80fe671e580cd1d95b2dcd8ea09233df06c81c7b`; fantom `0x87d05774362ff39af4944f949a34399baeb64a35`; fantom `0x9189a6c06a33dea7ad82201e37b73fe2adc595ed`; fantom `0x93d01402fc51dd906bbaadb2431ddc2ff535eaac`; fantom `0xa45776cd3bd348c330bce66bf9dba149d8c3d452`; fantom `0xa90092a6bfc100e32777b257af46b3ec2675d876`; fantom `0xb7c2ddb1ebac1056231ef22c1b0a13988537a274`; fantom `0xbf76f858b42bb9b196a87e43235c2f0058cf7322`; fantom `0xc2218e377caff2cc005093124c31120aa5c902d1`; fantom `0xc5e2b037d30a390e62180970b3aa4e91868764cd`; fantom `0xcf8660e267d44cc804ddbee6b1ce44f9ed564889`; fantom `0xd204e3dc1937d3a30fc6f20abc48ac5506c94d1e`; fantom `0xd4fcd1d1252bf4a3134e0e848479ad90a60979ef`; fantom `0xdcaeee2731b488328e43693d8b8f948e56c2eaed`; fantom `0xe034c865299da16a429dad26bff5468c2689f7d8`; fantom `0xe1fe8b5c3f5b592613305fc6ff551c67cbe40e17`; fantom `0xe21ca4536e447c13c79b807c0df4f511a21db6c7`; fantom `0xe62745519c1d2af846387b8abd142a2d2583c275`; fantom `0xf62fafc9b31b016484dcb779d8c3a0b26e9815a6`; fantom `0xf6d943c8904195d0f69ba03d97c0baf5bbdcd01b`; kava `0x54950cae3d8513ea041066f31697903de5909f57`; kava `0x82b3413d575aa93806308a04b53c78ae2037da11`; canto `0x82b3413d575aa93806308a04b53c78ae2037da11`; canto `0xb6193df61351736e5190bf1deb2e4f0769bd1bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0998d0bfe219222816e7ea50997cf7cf663c94d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b47f0e57a6c537ecc198833728ccd5d02e29771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54950cae3d8513ea041066f31697903de5909f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bcd6ceb876cf0b2b6bb5adbae71e5e72b746916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bd75e6e9ce517f579210d8f969460030924e97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63f2a142a6e7a8e27d0e569b87c72e59d6ae8bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8184fa7dd835efd2ddf90a3072efff4928405990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x991b6b5359a12cf0196825b7424dbd29ffa2354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa70d7ec08e297d89e606884de0563bf54a9ad89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4b56743269fcbbacaf7dacdfe81a740eb40b62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6ed26b8551dfa864cd565cd28027af22ca97131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbecbd5a14eff9dca01d45237401006f79b3d10a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc2587de9ff8dd747772b859d491fb6f52d856bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd91a468b8a2275cb50698edf65c0579630cad8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35c052bbf8338b06351782a565aa9aad173432ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3202] skynet.certik.com/projects/tarot — no match: Extracted from 'Audited Files' section; only two files explicitly listed. The report mentions 'View 255 Audited Files' but only two are shown. Date from 'Last Audit was delivered on 8/3/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/tarot | InterestRateModel | unmatched — not counted | — | Audited Files/SHA256BInterestRateModel.solA80...A5AC | no |
| skynet.certik.com/projects/tarot | Storage | unmatched — not counted | — | Audited Files/SHA256BStorage.sol0EC...083 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x54b00658f247ee34e8b23055b19d73217a7d5420` | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x952e9c6391d9c0f6c6174d395aa9b4ec1030335a` | BDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5f90e27c07b96641a52ff2335b15158e74e46401` | CDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xeb5809eb0f79aab6e53e6374258b29a244dfc12d` | CDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1d90fdac4dd30c3ba38d53f52a884f6e75d0989e` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x49df1fe24caf1a7dcbb2e2b1793b93b04edb62bf` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8b2e286afa241307261622abd2878ad8ec9f0723` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd7cabef2c1fd77a31c5ba97c724b82d3e25fc83c` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc20099a3f0728634c1136489074508be7b406d3a` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2217aec3440e8fd6d49a118b1502e539f88dba55` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4b6dae049a35196a773028b2e835cccce9dd4723` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc20099a3f0728634c1136489074508be7b406d3a` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x88c81e6b9f14580ece9729ec699dd800c206172e` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8a3b1b9f4e3fabb80623c215aa88f97bcaf53d8c` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa516b9c7378799799e6dfadbdabf45d5b584405f` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xd4a6a05081fd270dc111332845a778a49fe01741` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0022358ebfd5261c325f8160c7c17bc8671d07b4` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1cafcb9f3b5a152b1553bc2c688ba6a18054b653` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x46fcde1b89d61f5cbfaab05c2914c367f8301f30` | Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8184fa7dd835efd2ddf90a3072efff4928405990` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb6ed26b8551dfa864cd565cd28027af22ca97131` | Router03 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x66e9b34680f9a7c80034e0ea553e6872259f4859` | VeloStableVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xee1ecc627a4d44631c1f42ec6f6609dae496cf70` | VeloStableVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19283dd283c31bf3920f7a530aa3a81a2792dc52` | VeloVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x54950cae3d8513ea041066f31697903de5909f57` | ZipVaultTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3202] skynet.certik.com/projects/tarot

Fork inheritance lineage and inherited audits are included when available.
