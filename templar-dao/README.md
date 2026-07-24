# Agentic Audit Brief: Templar DAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Templar DAO (`templar-dao`)
- Website: [https://templar.finance/](https://templar.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, moonriver
- Contract surface: 79 unique implementations (100 raw deployments)
- Coverage basis: 0/42 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,200,335.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Templar DAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 42 contract row(s) across bsc, ethereum, moonriver. Structural roles: 24 unclassified, 15 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 42
- Structural roles: unclassified (24), core (15), supporting (3)
- Contract kinds: contract (42)
- Detected standards: ownable (5), erc20 (4), erc20permit (2), pausable (2)
- Frameworks: openzeppelin (16)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 38 contracts are derived from known codebases. 38 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe5cf1558a1470cb5c166c2e8651ed0f3c5fb8f42`, chain 1)
- UnnamedContract (`0xd4143e8db48a8f73afcdf13d7b3305f28da38116`, chain 1285)
- BondDepository (`0x061bb1a6aecb179b79ae5da6bae179f1d1a79ac8`, chain 56)
- BondDepository (`0x0d4f509b7d80bfc7b3aaaefc1c2ede4b362d8273`, chain 56)
- BondDepository (`0x1b83388d6113629c46a98d7de82f58531a8dc710`, chain 56)
- BondDepository (`0x3741008c8f1febe5f2f82fb5a6b0c1af404e48f7`, chain 56)
- BondDepository (`0xd93e4d6cfa40bf9ed141d690e2af038aaf59ab7e`, chain 56)
- BondDepository (`0xe6f0a8e7a3550140495ffc17ab4de44636278ee2`, chain 56)
- BondDepository (`0xf171efc8ad41aabb798d466861dcd7144f973d62`, chain 56)
- BondDepository (`0x534bd77db3ada353c7a30d5d591407c3e0c74bd2`, chain 1285)
- BondDepository (`0xca2915886d7893a6f36a3db44484ba0bf610b465`, chain 1285)
- BondDepository (`0xcbffdeb456aa6b35ac345dbe14776c1d99d88105`, chain 1285)
- BondingCalculator (`0xd7fe341fce9f3882d57eba5692221877830a5ddd`, chain 1285)
- BondReferral (`0xc90490ae5f2a5a4161343e525e0aa204eba1de3c`, chain 56)
- BondReferral (`0x301c82821ce20b9a1a6f4299f3a3306f524ce0b7`, chain 1285)
- DAOsFund (`0xfd67f44f1814e178ee963d3926e21e85dbe60a2d`, chain 56)
- DAOsFund (`0x0eccf3770ba3aa905c46b59b3142697b6e2252ff`, chain 1285)
- Distributor (`0x377896d053a2b17cabcb9d7b1afdada5af891c13`, chain 1285)
- GnosisSafeProxy (`0xea724dea000b5e5206d28f4bc2dad5f2fa1fe788`, chain 56)
- ManagerFund (`0x6ca5c879e7822ec6bb4836c5df7297ab5a5a80ba`, chain 56)
- ManagerFund (`0x8049ffeabd65d043895de3c70634f328b294b6fa`, chain 56)
- RedeemHelper (`0xf4a0b875751486b55f9cd50df2f120e4b50a79d0`, chain 1285)
- ReserveFund (`0xebe9da74d7d5dc5203776264e7610ae76d7c9f93`, chain 56)
- Staking (`0xa1f61ca61fe8655d2a204b518f6de964145a9324`, chain 56)
- Staking (`0xa1f61ca61fe8655d2a204b518f6de964145a9324`, chain 1285)
- StakingWarmup (`0xea90aee91eab61ccacce6b4af270a75ab8e78e8c`, chain 1285)
- SwordToken (`0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9`, chain 56)
- SwordToken (`0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9`, chain 1285)
- TemplarMoney (`0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966`, chain 56)
- TemplarRouter (`0xc0f1433f39c90393e1b40ee4a58dee7a23c6385c`, chain 56)
- TemplarToken (`0x19e6bfc1a6e4b042fb20531244d47e252445df01`, chain 56)
- TemplarToken (`0xd86e3f7b2ff4e803f90c799d702955003bca9875`, chain 1285)
- Timelock (`0x6056d9271d4784ed8a33bd6adc10f372c0e14b71`, chain 56)
- Treasury (`0x650e26fb02350509fd745e9f57f35927206d118a`, chain 56)
- Treasury (`0xd01e8d805bb310f06411e70fd50eb58cae2b4c27`, chain 56)
- Treasury (`0xd01e8d805bb310f06411e70fd50eb58cae2b4c27`, chain 1285)
- WrapSword (`0x66972b14e525374dce713ce14c8d080f3036dabb`, chain 56)
- WrapSword (`0xe1b9b34b03ec34b0802398b7669de6d0d43c9871`, chain 1285)

## Contract Surface Quality

- Logic-topography rows: 42; live-surface rows included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/59 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/42 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 44 of 79 unique; 35 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 79
- Raw deployments: 100
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393917 | `0x061bb1a6aecb179b79ae5da6bae179f1d1a79ac8` | ⚠️ Unaudited |
| BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x09f67daf5158e6b75fd9b5e7b47bdc3a7e0588d4`; bsc `0x8baaefcb8bd969f548aa3c6c71297063f694780f`; bsc `0xe5955161a8e74667a931a63f93db767ee7fcbe74`; moonriver `0xef7d6f1fe8778c82abf67060deaf163eff3d98f0` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393918 | `0x0d4f509b7d80bfc7b3aaaefc1c2ede4b362d8273` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393921 | `0x1b83388d6113629c46a98d7de82f58531a8dc710` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393922 | `0x3741008c8f1febe5f2f82fb5a6b0c1af404e48f7` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393938 | `0xd93e4d6cfa40bf9ed141d690e2af038aaf59ab7e` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393939 | `0xe6f0a8e7a3550140495ffc17ab4de44636278ee2` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393941 | `0xf171efc8ad41aabb798d466861dcd7144f973d62` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393904 | `0x534bd77db3ada353c7a30d5d591407c3e0c74bd2` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393908 | `0xca2915886d7893a6f36a3db44484ba0bf610b465` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393909 | `0xcbffdeb456aa6b35ac345dbe14776c1d99d88105` | ⚠️ Unaudited |
| BondingCalculator | unknown | project_anchor | own_supporting | 0 | bsc | unit-393937 | `0xd7fe341fce9f3882d57eba5692221877830a5ddd` | ⚠️ Unaudited |
| BondingCalculator | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393912 | `0xd7fe341fce9f3882d57eba5692221877830a5ddd` | ⚠️ Unaudited |
| BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: bsc `0xfb0c2645a7bc2c466a3834e6170437d239fcff58`; moonriver `0x1661b7d9e2bccacc033521d441d6497f69f86107` | ⚠️ Unaudited |
| BondReferral | unknown | project_anchor | own_supporting | 0 | bsc | unit-393934 | `0xc90490ae5f2a5a4161343e525e0aa204eba1de3c` | ⚠️ Unaudited |
| BondReferral | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393902 | `0x301c82821ce20b9a1a6f4299f3a3306f524ce0b7` | ⚠️ Unaudited |
| BridgeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb774a34ddb1829df147a88f14716ce56ac8f6b5c` | ⚠️ Unaudited |
| BridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xaf4053d37309df4d295a6e0f64bc8b2039140b2d`; moonriver `0xb1fc154f4132f1660678820137cd24397f3462ba` | ⚠️ Unaudited |
| BridgeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3df6678e78ad7b5fb2e307dc8033dff2b10a967b`; moonriver `0x6510d4e6d2991db86383932c26c5ed2077f385de`; moonriver `0xf3e56078e6e6bcae6ccda0804923ce03cac10520` | ⚠️ Unaudited |
| DAOsFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393942 | `0xfd67f44f1814e178ee963d3926e21e85dbe60a2d` | ⚠️ Unaudited |
| DAOsFund | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393901 | `0x0eccf3770ba3aa905c46b59b3142697b6e2252ff` | ⚠️ Unaudited |
| Distributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-393923 | `0x377896d053a2b17cabcb9d7b1afdada5af891c13` | ⚠️ Unaudited |
| Distributor | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393903 | `0x377896d053a2b17cabcb9d7b1afdada5af891c13` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-393943 | `0xea724dea000b5e5206d28f4bc2dad5f2fa1fe788` | ⚠️ Unaudited |
| ManagerFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e1ed3f2cb818ed165f2018d1c776b4e69026c61`; bsc `0xc06cd90b23c8a165647fdef5091e6cadc1a0bbe2` | ⚠️ Unaudited |
| ManagerFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393928 | `0x6ca5c879e7822ec6bb4836c5df7297ab5a5a80ba` | ⚠️ Unaudited |
| ManagerFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393929 | `0x8049ffeabd65d043895de3c70634f328b294b6fa` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4832b9911114af706d529251979894405fd88b20`; bsc `0xffc7b93b53bc5f4732b414295e989684702d0eb5`; moonriver `0xacc628c05e41eeed7dcfdf042215a296f7bdd047` | ⚠️ Unaudited |
| PoolFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: bsc `0x77316b0dacc23cce10f1fcfce388ac81870e30ae`; bsc `0xa1dcc9aa18a74ad0cd1de25f8efe03dfb814cb45`; moonriver `0x208173f002c58fb766e5e11471fea8f91eb2406d`; moonriver `0xa492039ec2e65de908e2cab1d1f8c5faf68ce154` | ⚠️ Unaudited |
| RedeemHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-393924 | `0x38b306cdb3d35e03cff6bc59da96b1212d2a075e` | ⚠️ Unaudited |
| RedeemHelper | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393916 | `0xf4a0b875751486b55f9cd50df2f120e4b50a79d0` | ⚠️ Unaudited |
| ReserveFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393940 | `0xebe9da74d7d5dc5203776264e7610ae76d7c9f93` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | bsc | unit-393932 | `0xa1f61ca61fe8655d2a204b518f6de964145a9324` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393906 | `0xa1f61ca61fe8655d2a204b518f6de964145a9324` | ⚠️ Unaudited |
| StakingHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-393931 | `0x8dd1ff96c1b2766c4479c802687b44c5e8feea87` | ⚠️ Unaudited |
| StakingHelper | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393907 | `0xbb5d4f8fc1ef4b3c16f7cbfa00b185d9efdb2adf` | ⚠️ Unaudited |
| StakingWarmup | unknown | project_anchor | own_supporting | 0 | bsc | unit-393935 | `0xcbffdeb456aa6b35ac345dbe14776c1d99d88105` | ⚠️ Unaudited |
| StakingWarmup | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393915 | `0xea90aee91eab61ccacce6b4af270a75ab8e78e8c` | ⚠️ Unaudited |
| SwordToken | token | project_anchor | own_supporting | 0 | bsc | unit-393930 | `0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9` | ⚠️ Unaudited |
| SwordToken | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393905 | `0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9` | ⚠️ Unaudited |
| TemplarBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: bsc `0x26bcadd5f0082e59194e271252568c1a56b82f70`; bsc `0xd1e5493260a510a2e34566e5b3bc62a3e12d156b`; moonriver `0x1a9724c0c2bc1399dbe7ebbb0923273e6d622e04`; moonriver `0x1c37c41973f8cf95b075a5985c8d093817e3e21e` | ⚠️ Unaudited |
| TemplarMoney | unknown | project_anchor | own_supporting | 0 | bsc | unit-393919 | `0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966` | ⚠️ Unaudited |
| TemplarRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x12266820147fcca397f3607a814df6982557db5e`; bsc `0x8d1ae20de3d77ca2332343238a2bf7bead106c40`; bsc `0x9ce6ee045d9a3e71836fe78918baa21fdfa255d8`; bsc `0xfce936916cfde6bcaf3527db003d5f45ba104754` | ⚠️ Unaudited |
| TemplarRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-393933 | `0xc0f1433f39c90393e1b40ee4a58dee7a23c6385c` | ⚠️ Unaudited |
| TemplarRouterMin | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26cb3f08133be04bf502cd4bf95536c43087fa99` | ⚠️ Unaudited |
| TemplarToken | token | project_anchor | own_supporting | 0 | bsc | unit-393920 | `0x19e6bfc1a6e4b042fb20531244d47e252445df01` | ⚠️ Unaudited |
| TemplarToken | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393913 | `0xd86e3f7b2ff4e803f90c799d702955003bca9875` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | bsc | unit-393925 | `0x6056d9271d4784ed8a33bd6adc10f372c0e14b71` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1cc4994bc2bbc6e5ada11c7b90005e57eee39752`; bsc `0x49f368df114f85b458966119f699487f8ae248dd`; bsc `0xca5eeab1a111cfd29cd5717f16216769cbd463e8` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | bsc | unit-393926 | `0x650e26fb02350509fd745e9f57f35927206d118a` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | bsc | unit-393936 | `0xd01e8d805bb310f06411e70fd50eb58cae2b4c27` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393910 | `0xd01e8d805bb310f06411e70fd50eb58cae2b4c27` | ⚠️ Unaudited |
| WrapSword | unknown | project_anchor | own_supporting | 0 | bsc | unit-393927 | `0x66972b14e525374dce713ce14c8d080f3036dabb` | ⚠️ Unaudited |
| WrapSword | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393914 | `0xe1b9b34b03ec34b0802398b7669de6d0d43c9871` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393900 | `0xe5cf1558a1470cb5c166c2e8651ed0f3c5fb8f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12d0ee7a39b4d1246b049068205f2cc83b48ff22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x142457166701de3b28e120febf0ccbfab4e246de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24a53da5152cbe990455fc7672148450016b9051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x441a8e31964a8d2ce7f2fc00c81ca401da727219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x778f61b61517a58c8459da036368d959d0b59fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8216a2989ea4f8be96f18b72c47465d25dc620cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e8cbbea562b955c06761383611aafa031849bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa26078b9bad819ea94b8966865f46d649bfc4952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9aa47800a6d82d8addda0912e1443b3810db743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafde5a22fe734184ea3087c472734bed57760c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb68c0b9de2488dfdc6e232fbf62f0e6a26c1f01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3cfb3bba4d1fc5dc894312a00284e42eaa2a47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc90500aecdb5fc2efe33e9124fcf138f8f9b00e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc91b6e774c0b351e7397fe31705ba8ff94961116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1dbcd8d9cbf5495e41aac395b52a15f9e1af364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x071ecb9f3c86c9a060495185211abbde4a50e9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3404781d8032d90431f1116edf666857f75b48b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6804c96c392c9e5773593e82bc086d990262b92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x835b5ea479c86de7fefab7ce56189d5ed082dbd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8b10a603fd93a0d7a2b5027c0fd0d0860d6a8a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xca031dc0dd4464aaee728fffebac0c8066fa7bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcc4d425a20a5b21c22176e3206bfae907651e8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393911 | `0xd4143e8db48a8f73afcdf13d7b3305f28da38116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf171efc8ad41aabb798d466861dcd7144f973d62` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 85
- Live contracts: 35
- Unknown liveness contracts: 50
- Source-verified contracts: 63
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=2, contamination review=4, exact address book overlap=29, source verified unclassified=28, unverified unclassified=22

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | StakingHelper<br>`0x8dd1ff96c1b2766c4479c802687b44c5e8feea87` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| candidate review | StakingHelper<br>`0xbb5d4f8fc1ef4b3c16f7cbfa00b185d9efdb2adf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| contamination review | BondingCalculator<br>`0xd7fe341fce9f3882d57eba5692221877830a5ddd` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| contamination review | Distributor<br>`0x377896d053a2b17cabcb9d7b1afdada5af891c13` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| contamination review | RedeemHelper<br>`0x38b306cdb3d35e03cff6bc59da96b1212d2a075e` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| contamination review | StakingWarmup<br>`0xcbffdeb456aa6b35ac345dbe14776c1d99d88105` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0x061bb1a6aecb179b79ae5da6bae179f1d1a79ac8` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0x0d4f509b7d80bfc7b3aaaefc1c2ede4b362d8273` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0x1b83388d6113629c46a98d7de82f58531a8dc710` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0x3741008c8f1febe5f2f82fb5a6b0c1af404e48f7` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0xd93e4d6cfa40bf9ed141d690e2af038aaf59ab7e` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0xe6f0a8e7a3550140495ffc17ab4de44636278ee2` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0xf171efc8ad41aabb798d466861dcd7144f973d62` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondReferral<br>`0xc90490ae5f2a5a4161343e525e0aa204eba1de3c` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | DAOsFund<br>`0xfd67f44f1814e178ee963d3926e21e85dbe60a2d` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | ManagerFund<br>`0x6ca5c879e7822ec6bb4836c5df7297ab5a5a80ba` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | ManagerFund<br>`0x8049ffeabd65d043895de3c70634f328b294b6fa` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | ReserveFund<br>`0xebe9da74d7d5dc5203776264e7610ae76d7c9f93` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | TemplarRouter<br>`0xc0f1433f39c90393e1b40ee4a58dee7a23c6385c` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | Timelock<br>`0x6056d9271d4784ed8a33bd6adc10f372c0e14b71` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | Treasury<br>`0x650e26fb02350509fd745e9f57f35927206d118a` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | Treasury<br>`0xd01e8d805bb310f06411e70fd50eb58cae2b4c27` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0x534bd77db3ada353c7a30d5d591407c3e0c74bd2` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0xca2915886d7893a6f36a3db44484ba0bf610b465` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondDepository<br>`0xcbffdeb456aa6b35ac345dbe14776c1d99d88105` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondingCalculator<br>`0xd7fe341fce9f3882d57eba5692221877830a5ddd` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | BondReferral<br>`0x301c82821ce20b9a1a6f4299f3a3306f524ce0b7` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | DAOsFund<br>`0x0eccf3770ba3aa905c46b59b3142697b6e2252ff` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | Distributor<br>`0x377896d053a2b17cabcb9d7b1afdada5af891c13` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | RedeemHelper<br>`0xf4a0b875751486b55f9cd50df2f120e4b50a79d0` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | StakingWarmup<br>`0xea90aee91eab61ccacce6b4af270a75ab8e78e8c` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | SwordToken<br>`0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | TemplarToken<br>`0xd86e3f7b2ff4e803f90c799d702955003bca9875` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | Treasury<br>`0xd01e8d805bb310f06411e70fd50eb58cae2b4c27` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| exact address book overlap | WrapSword<br>`0xe1b9b34b03ec34b0802398b7669de6d0d43c9871` | project_anchor | unknown | live | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BondDepository<br>`0x09f67daf5158e6b75fd9b5e7b47bdc3a7e0588d4` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BondDepository<br>`0xe5955161a8e74667a931a63f93db767ee7fcbe74` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BondManager<br>`0xfb0c2645a7bc2c466a3834e6170437d239fcff58` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BridgeHelper<br>`0xaf4053d37309df4d295a6e0f64bc8b2039140b2d` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BridgeReceiver<br>`0x3df6678e78ad7b5fb2e307dc8033dff2b10a967b` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | ManagerFund<br>`0x1e1ed3f2cb818ed165f2018d1c776b4e69026c61` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | ManagerFund<br>`0xc06cd90b23c8a165647fdef5091e6cadc1a0bbe2` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | PoolFund<br>`0x77316b0dacc23cce10f1fcfce388ac81870e30ae` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | PoolFund<br>`0xa1dcc9aa18a74ad0cd1de25f8efe03dfb814cb45` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | TemplarBridge<br>`0x26bcadd5f0082e59194e271252568c1a56b82f70` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | TemplarBridge<br>`0xd1e5493260a510a2e34566e5b3bc62a3e12d156b` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | TemplarRouter<br>`0x12266820147fcca397f3607a814df6982557db5e` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | TemplarRouter<br>`0x8d1ae20de3d77ca2332343238a2bf7bead106c40` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | TemplarRouter<br>`0x9ce6ee045d9a3e71836fe78918baa21fdfa255d8` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | Treasury<br>`0x1cc4994bc2bbc6e5ada11c7b90005e57eee39752` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | Treasury<br>`0x49f368df114f85b458966119f699487f8ae248dd` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | Treasury<br>`0xca5eeab1a111cfd29cd5717f16216769cbd463e8` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BondDepository<br>`0xef7d6f1fe8778c82abf67060deaf163eff3d98f0` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BondManager<br>`0x1661b7d9e2bccacc033521d441d6497f69f86107` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BridgeConverter<br>`0xb774a34ddb1829df147a88f14716ce56ac8f6b5c` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BridgeHelper<br>`0xb1fc154f4132f1660678820137cd24397f3462ba` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BridgeReceiver<br>`0x6510d4e6d2991db86383932c26c5ed2077f385de` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | BridgeReceiver<br>`0xf3e56078e6e6bcae6ccda0804923ce03cac10520` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | MasterChef<br>`0xacc628c05e41eeed7dcfdf042215a296f7bdd047` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | PoolFund<br>`0x208173f002c58fb766e5e11471fea8f91eb2406d` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | PoolFund<br>`0xa492039ec2e65de908e2cab1d1f8c5faf68ce154` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | TemplarBridge<br>`0x1a9724c0c2bc1399dbe7ebbb0923273e6d622e04` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| source verified unclassified | TemplarBridge<br>`0x1c37c41973f8cf95b075a5985c8d093817e3e21e` | non_address_book | unknown | unknown | verified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x12d0ee7a39b4d1246b049068205f2cc83b48ff22` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x142457166701de3b28e120febf0ccbfab4e246de` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x24a53da5152cbe990455fc7672148450016b9051` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x441a8e31964a8d2ce7f2fc00c81ca401da727219` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x778f61b61517a58c8459da036368d959d0b59fee` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x9e8cbbea562b955c06761383611aafa031849bfa` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xa26078b9bad819ea94b8966865f46d649bfc4952` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xa9aa47800a6d82d8addda0912e1443b3810db743` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xafde5a22fe734184ea3087c472734bed57760c23` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xb68c0b9de2488dfdc6e232fbf62f0e6a26c1f01d` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xc3cfb3bba4d1fc5dc894312a00284e42eaa2a47e` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xc90500aecdb5fc2efe33e9124fcf138f8f9b00e8` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xc91b6e774c0b351e7397fe31705ba8ff94961116` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xe1dbcd8d9cbf5495e41aac395b52a15f9e1af364` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x071ecb9f3c86c9a060495185211abbde4a50e9ac` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x3404781d8032d90431f1116edf666857f75b48b8` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x6804c96c392c9e5773593e82bc086d990262b92c` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x835b5ea479c86de7fefab7ce56189d5ed082dbd7` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0x8b10a603fd93a0d7a2b5027c0fd0d0860d6a8a5a` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xca031dc0dd4464aaee728fffebac0c8066fa7bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xcc4d425a20a5b21c22176e3206bfae907651e8ad` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |
| unverified unclassified | UnnamedContract<br>`0xf171efc8ad41aabb798d466861dcd7144f973d62` | non_address_book | unknown | unknown | unverified | n/a | `0x8e762609cea5ddd3234b9d41cf8d0d8b4f2581a6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/templar-dao](https://skynet.certik.com/projects/templar-dao) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20749] skynet.certik.com/projects/templar-dao — no match: Extracted from Audited Files section; only two files explicitly listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/templar-dao | StakingHelper | ambiguous — not counted | StakingHelper (alternative) `0xbb5d4f8fc1ef4b3c16f7cbfa00b185d9efdb2adf` — deployed 2021-12-25 01:00:42+03 — liveness: live (code_present_context)<br>StakingHelper (alternative) `0x8dd1ff96c1b2766c4479c802687b44c5e8feea87` — deployed 2021-11-21 17:23:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| skynet.certik.com/projects/templar-dao | BondDepositoryBNB | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x061bb1a6aecb179b79ae5da6bae179f1d1a79ac8` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0d4f509b7d80bfc7b3aaaefc1c2ede4b362d8273` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1b83388d6113629c46a98d7de82f58531a8dc710` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3741008c8f1febe5f2f82fb5a6b0c1af404e48f7` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd93e4d6cfa40bf9ed141d690e2af038aaf59ab7e` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe6f0a8e7a3550140495ffc17ab4de44636278ee2` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf171efc8ad41aabb798d466861dcd7144f973d62` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x534bd77db3ada353c7a30d5d591407c3e0c74bd2` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xca2915886d7893a6f36a3db44484ba0bf610b465` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xcbffdeb456aa6b35ac345dbe14776c1d99d88105` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd7fe341fce9f3882d57eba5692221877830a5ddd` | BondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd7fe341fce9f3882d57eba5692221877830a5ddd` | BondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc90490ae5f2a5a4161343e525e0aa204eba1de3c` | BondReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x301c82821ce20b9a1a6f4299f3a3306f524ce0b7` | BondReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfd67f44f1814e178ee963d3926e21e85dbe60a2d` | DAOsFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x0eccf3770ba3aa905c46b59b3142697b6e2252ff` | DAOsFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x377896d053a2b17cabcb9d7b1afdada5af891c13` | Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x377896d053a2b17cabcb9d7b1afdada5af891c13` | Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6ca5c879e7822ec6bb4836c5df7297ab5a5a80ba` | ManagerFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8049ffeabd65d043895de3c70634f328b294b6fa` | ManagerFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x38b306cdb3d35e03cff6bc59da96b1212d2a075e` | RedeemHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xf4a0b875751486b55f9cd50df2f120e4b50a79d0` | RedeemHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xebe9da74d7d5dc5203776264e7610ae76d7c9f93` | ReserveFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa1f61ca61fe8655d2a204b518f6de964145a9324` | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xa1f61ca61fe8655d2a204b518f6de964145a9324` | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8dd1ff96c1b2766c4479c802687b44c5e8feea87` | StakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xbb5d4f8fc1ef4b3c16f7cbfa00b185d9efdb2adf` | StakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcbffdeb456aa6b35ac345dbe14776c1d99d88105` | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xea90aee91eab61ccacce6b4af270a75ab8e78e8c` | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9` | SwordToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x8c9827cd430d945ae5a5c3cfdc522f8d342334b9` | SwordToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x194d1d62d8d798fcc81a6435e6d13adf8bcc2966` | TemplarMoney | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc0f1433f39c90393e1b40ee4a58dee7a23c6385c` | TemplarRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x19e6bfc1a6e4b042fb20531244d47e252445df01` | TemplarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd86e3f7b2ff4e803f90c799d702955003bca9875` | TemplarToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6056d9271d4784ed8a33bd6adc10f372c0e14b71` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x650e26fb02350509fd745e9f57f35927206d118a` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd01e8d805bb310f06411e70fd50eb58cae2b4c27` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd01e8d805bb310f06411e70fd50eb58cae2b4c27` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x66972b14e525374dce713ce14c8d080f3036dabb` | WrapSword | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xe1b9b34b03ec34b0802398b7669de6d0d43c9871` | WrapSword | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20749] skynet.certik.com/projects/templar-dao

Fork inheritance lineage and inherited audits are included when available.
