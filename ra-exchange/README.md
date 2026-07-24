# Agentic Audit Brief: Ra Exchange

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Ra Exchange (`ra-exchange`)
- Website: [https://docs.ra.exchange/](https://docs.ra.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: fraxtal
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $646,703.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ra Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across fraxtal. Structural roles: 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: infra (2)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 252)
- UnnamedContract (`0x8e01fc0d89b93a6447d6c6eca6fbd30e6e4a1ce3`, chain 252)
- UnnamedContract (`0x95120704f4e2d545aea8b6b3c16d9da1fa32e30f`, chain 252)
- UnnamedContract (`0xaaa04d7751adc79e1525b408ba38344c5797322b`, chain 252)
- UnnamedContract (`0xaaa11500dddb2b67a90d1a154dfb7eabb518eae6`, chain 252)
- UnnamedContract (`0xaaa1c31cc1d1c2da7e634130ded0ea2043271744`, chain 252)
- UnnamedContract (`0xaaa2a49958a443dc9d19fddee873b5d1d6e84a2f`, chain 252)
- UnnamedContract (`0xaaa2d4987eed427ba5e2c933eefcd75c84b446b7`, chain 252)
- UnnamedContract (`0xaaa3e4bd26221255234904fa9e8a300d3c64cd49`, chain 252)
- UnnamedContract (`0xaaa42561f12b3a83aa775935adaa6aa975f46ccc`, chain 252)
- UnnamedContract (`0xaaa45c8f5ef92a000a121d102f4e89278a711faa`, chain 252)
- UnnamedContract (`0xaaa75a605c2f245a30fb4299e5cdfbf6b4fb30b6`, chain 252)
- UnnamedContract (`0xaaa78e8c4241990b4ce159e105da08129345946a`, chain 252)
- UnnamedContract (`0xaaa7bf23e1cee9f5ce70e3d7dffd09cc7ae3f89c`, chain 252)
- UnnamedContract (`0xaaa823aa799bda3193d46476539bcb1da5b71330`, chain 252)
- UnnamedContract (`0xaaa932839641c037452f826bb9d7b2057129833b`, chain 252)
- UnnamedContract (`0xaaa9ea898ae0b7d3805af555af3a2e3bdf06d22c`, chain 252)
- UnnamedContract (`0xaaa9fb3a08c13ba97ae0f518b3afa5c4a81498fc`, chain 252)
- UnnamedContract (`0xaaabfd1e45cc93d16c2751645e50f2594be12680`, chain 252)
- UnnamedContract (`0xaaacd718b331dae78ed62499a08f387d381a104c`, chain 252)
- UnnamedContract (`0xaaad7f8b00b5ce6f8516ac595f0bb175ae755c63`, chain 252)
- UnnamedContract (`0xaaadc6c928ec940d171ddde564d5bcca4daf77fc`, chain 252)
- UnnamedContract (`0xaaae58986b24e422740c8f22b3efb80bcbd68159`, chain 252)
- UnnamedContract (`0xaaae99091fbb28d400029052821653c1c752483b`, chain 252)
- UnnamedContract (`0xaaaea10b0e6fbe566fe27c3a023dc5d8ca6bca3d`, chain 252)
- UnnamedContract (`0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f`, chain 252)
- UnnamedContract (`0xaaaf3d9cdd3602d117c67d80eec37a160c8d9869`, chain 252)
- UnnamedContract (`0xaaafc0791b0ef4d4225d1c1f57dd6a41177f8562`, chain 252)
- TransparentUpgradeableProxy (`0xaaa16c016bf556fcd620328f0759252e29b1ab57`, chain 252)
- TransparentUpgradeableProxy (`0xaaa32926fce6be95ea2c51cb4fcb60836d320c42`, chain 252)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 30 of 77 unique; 47 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 77
- Raw deployments: 77
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-252057 | `0xaaa16c016bf556fcd620328f0759252e29b1ab57` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-252056 | `0xaaa32926fce6be95ea2c51cb4fcb60836d320c42` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252027 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x003a5c53ba677cd49cf8da335b3676b83697fe8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x03e8c527058c32176dac167cbe78518e24f2b404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x10641433184076911a51de44de66d53ba48fa351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x131fec180dac917ab5f55b09913eda511fec7190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x191e14e2b865ab90aab3876372b192bd150e12f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1aa0658b230c40126141996c92d54e3f2b28adae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1c16c172abcf809b89c0cb838c0bb4d9add01daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x222a1cd0fe148fef5a361de7936c4f3374224873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x230600618e6ee91e130ceb371b1aa8cea23ee376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x26ce5f861ad2c8b6b99a20d5694f1f372a5d3d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2a5cc11f4efd6b50ba7c2c6876b76abea15d3801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x30fde68848d4463578e971e51652602ed9825c0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3239f14a6c14630c8ee377ed0b52919b5e2587c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3876470acaddf4821dc5f15982128dd7812ff4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x38e0437fa71818bfb1ce1c97e05134374a958455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x45cb3c8f281dc83bf5241c431e39d00b4e4d0773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4a76a2f26cb26d4d4246470cc95e4da4ab0a0e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4da06546decb32767df5d8ff414af4897a5ff963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x51d8854a412a11c173481e87a4a809dcf76647a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x54bf8621e502c36a574a3ee63ef2004c5b694463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x65dce4f08da53c0c04f557f41cf925fadafceefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6afd9a20617257af348b1045a114f6936eded543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6d8b383643a19cab3522c050d0ab0d5363e78136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6d9feee8c1cf8eedd84bc4227880875d5b863557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x740125a13193094e2b1244e5f83daadf42aa9b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7df7e1487520d42614ba81eb41fbc49c3fedf248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7e70ba8871d667ac425e6b26d11e54b446b71640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8156946891e6a294734646284125f6466bb53de3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252028 | `0x8e01fc0d89b93a6447d6c6eca6fbd30e6e4a1ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252029 | `0x95120704f4e2d545aea8b6b3c16d9da1fa32e30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa1bae94163baa6ef07eff008681eeea32cf31f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa2fb4a2f2e7bb3f8e97aced35ab6e59bea226262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa54419918081e5b7638884acab0415c5964b8c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa684fe82d7571c138319344658df229a2b7caef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa7d39aff8f4bd058f48e59f10820d0bf3243a872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa83b23eb64c40c14c80b355eb6f784d0626af8bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252030 | `0xaaa04d7751adc79e1525b408ba38344c5797322b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252031 | `0xaaa11500dddb2b67a90d1a154dfb7eabb518eae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252032 | `0xaaa1c31cc1d1c2da7e634130ded0ea2043271744` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252033 | `0xaaa2a49958a443dc9d19fddee873b5d1d6e84a2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252034 | `0xaaa2d4987eed427ba5e2c933eefcd75c84b446b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252035 | `0xaaa3e4bd26221255234904fa9e8a300d3c64cd49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252036 | `0xaaa42561f12b3a83aa775935adaa6aa975f46ccc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252037 | `0xaaa45c8f5ef92a000a121d102f4e89278a711faa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252038 | `0xaaa75a605c2f245a30fb4299e5cdfbf6b4fb30b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252039 | `0xaaa78e8c4241990b4ce159e105da08129345946a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252040 | `0xaaa7bf23e1cee9f5ce70e3d7dffd09cc7ae3f89c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252041 | `0xaaa823aa799bda3193d46476539bcb1da5b71330` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252042 | `0xaaa932839641c037452f826bb9d7b2057129833b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252043 | `0xaaa9ea898ae0b7d3805af555af3a2e3bdf06d22c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252044 | `0xaaa9fb3a08c13ba97ae0f518b3afa5c4a81498fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252045 | `0xaaabfd1e45cc93d16c2751645e50f2594be12680` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252046 | `0xaaacd718b331dae78ed62499a08f387d381a104c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252048 | `0xaaad7f8b00b5ce6f8516ac595f0bb175ae755c63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252049 | `0xaaadc6c928ec940d171ddde564d5bcca4daf77fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252050 | `0xaaae58986b24e422740c8f22b3efb80bcbd68159` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252051 | `0xaaae99091fbb28d400029052821653c1c752483b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252052 | `0xaaaea10b0e6fbe566fe27c3a023dc5d8ca6bca3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252053 | `0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252054 | `0xaaaf3d9cdd3602d117c67d80eec37a160c8d9869` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-252055 | `0xaaafc0791b0ef4d4225d1c1f57dd6a41177f8562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xae41f746d245238f6d25befa86c8ee85b98b01bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb453976b702a7f0fef73523e47254a8260252c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb8f05ceb14e65c27d6d5ce654a41996c478d3397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbd190a371ceb3fb0f4d828fc22fa8f779a99c1d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbee1f2fd043899bab087d1c6ee80c4d1b36cf5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc0983f3127b062cc1a85d0b6c1ce77d0a02d94fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe41e9d7bb3485b7bf5089fb50cef8e74b5156330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe922baf2437260657115de0ecaecfecf6f368241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf03a679e485e889b18906ea19bf10f50a4e0588f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf0d4dc3c835ea58c1a97732a5f68336cf02a0616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf5d139c3f51967505c532c42898ba47b15da4b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfa383fd29109986e74ca295490f16eb5562fc6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfc07c1996f8987e39e271b389c39a148baf24ba4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 47
- Live contracts: 0
- Unknown liveness contracts: 47
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=47

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x003a5c53ba677cd49cf8da335b3676b83697fe8f` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x03e8c527058c32176dac167cbe78518e24f2b404` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x10641433184076911a51de44de66d53ba48fa351` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x131fec180dac917ab5f55b09913eda511fec7190` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x191e14e2b865ab90aab3876372b192bd150e12f7` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x1aa0658b230c40126141996c92d54e3f2b28adae` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x1c16c172abcf809b89c0cb838c0bb4d9add01daf` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x222a1cd0fe148fef5a361de7936c4f3374224873` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x230600618e6ee91e130ceb371b1aa8cea23ee376` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x26ce5f861ad2c8b6b99a20d5694f1f372a5d3d5e` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x2a5cc11f4efd6b50ba7c2c6876b76abea15d3801` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x30fde68848d4463578e971e51652602ed9825c0c` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x3239f14a6c14630c8ee377ed0b52919b5e2587c3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x3876470acaddf4821dc5f15982128dd7812ff4b6` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x38e0437fa71818bfb1ce1c97e05134374a958455` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x45cb3c8f281dc83bf5241c431e39d00b4e4d0773` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x4a76a2f26cb26d4d4246470cc95e4da4ab0a0e92` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x4da06546decb32767df5d8ff414af4897a5ff963` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x51d8854a412a11c173481e87a4a809dcf76647a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x54bf8621e502c36a574a3ee63ef2004c5b694463` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x65dce4f08da53c0c04f557f41cf925fadafceefa` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x6afd9a20617257af348b1045a114f6936eded543` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x6d8b383643a19cab3522c050d0ab0d5363e78136` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x6d9feee8c1cf8eedd84bc4227880875d5b863557` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x740125a13193094e2b1244e5f83daadf42aa9b8a` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x7df7e1487520d42614ba81eb41fbc49c3fedf248` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x7e70ba8871d667ac425e6b26d11e54b446b71640` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0x8156946891e6a294734646284125f6466bb53de3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xa1bae94163baa6ef07eff008681eeea32cf31f09` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xa2fb4a2f2e7bb3f8e97aced35ab6e59bea226262` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xa54419918081e5b7638884acab0415c5964b8c0f` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xa684fe82d7571c138319344658df229a2b7caef0` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xa7d39aff8f4bd058f48e59f10820d0bf3243a872` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xa83b23eb64c40c14c80b355eb6f784d0626af8bd` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xae41f746d245238f6d25befa86c8ee85b98b01bc` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xb453976b702a7f0fef73523e47254a8260252c13` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xb8f05ceb14e65c27d6d5ce654a41996c478d3397` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xbd190a371ceb3fb0f4d828fc22fa8f779a99c1d3` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xbee1f2fd043899bab087d1c6ee80c4d1b36cf5f1` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xc0983f3127b062cc1a85d0b6c1ce77d0a02d94fa` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xe41e9d7bb3485b7bf5089fb50cef8e74b5156330` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xe922baf2437260657115de0ecaecfecf6f368241` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xf03a679e485e889b18906ea19bf10f50a4e0588f` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xf0d4dc3c835ea58c1a97732a5f68336cf02a0616` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xf5d139c3f51967505c532c42898ba47b15da4b9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xfa383fd29109986e74ca295490f16eb5562fc6ed` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |
| unverified unclassified | UnnamedContract<br>`0xfc07c1996f8987e39e271b389c39a148baf24ba4` | non_address_book | unknown | unknown | unverified | n/a | `0x1e2a7cbc66accb56adc9dc300596318537851934` |

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
| standard_library | 2 |
| needs_review | 75 |

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
