# Agentic Audit Brief: Noon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 6 audit(s)
- Eligible audit results: 7 (6 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Noon (`noon`)
- Website: [https://app.noon.capital](https://app.noon.capital)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, berachain, ethereum, hyperliquid, zksync-era
- Contract surface: 82 unique implementations (104 raw deployments)
- Coverage basis: 5/15 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $32,597,965.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Noon. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across base, berachain, ethereum, hyperliquid, zksync-era. Structural roles: 13 unclassified, 10 supporting, 4 core, 3 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: unclassified (13), supporting (10), core (4), infra (3)
- Contract kinds: contract (30)
- Detected standards: chainlinkaggregator (4), accesscontrol (3), erc165 (3), erc1967proxy (3), ownable (3), ownable2step (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (9), chainlink (2), foundry (1), layerzero (1), openzeppelin-upgradeable (1), solady (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0469d9d1de0ee58fa1153ef00836b9bbcb84c0b6`, chain 324)
- UnnamedContract (`0xb6a09d426861c63722aa0b333a9ce5d5a9b04c4f`, chain 324)
- UnnamedContract (`0xa9bb96bb79492aa64199f078362ecd069d565e85`, chain 8453)
- UnnamedContract (`0xf56d33ef52642ce226a566610a979dc8d954592d`, chain 8453)
- UnnamedContract (`0x94e9f383b085d32973634ea7c9bb2038ef9a3c58`, chain 80094)
- UnnamedContract (`0xda67b4284609d2d48e5d10cfac411572727dc1ed`, chain 80094)
- UnnamedContract (`0xea84ac70f00f47ad6fbe51233aae25799b9f0a02`, chain 80094)
- GnosisSafeProxy (`0x365bd6fb4200e422a2b1f7b9dfb1c00471e6d089`, chain 1)
- MinterHandlerV2 (`0xb91b361ebe4022bb62df0651bdd09b21209ac058`, chain 1)
- NOON (`0x62977f7b95b493e1d07735910291e275cc3bc2da`, chain 1)
- RedeemHandler (`0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8`, chain 1)
- SafeProxy (`0x1ea169ecccf7714e7ba04900e1a3357cca77327f`, chain 1)
- SafeProxy (`0x364a77729fc3eddf7fc430c9f4913e055b0f68b9`, chain 1)
- SafeProxy (`0x646db2928d04a947d485fd8267b236b817d89daa`, chain 1)
- StakedUSNHyperlane (`0xda67b4284609d2d48e5d10cfac411572727dc1ed`, chain 999)
- stakeNOON (`0x6c243e90c2bec1126e3b835b25e23e16ded11f93`, chain 1)
- stakeNOONRewarder (`0xb8a60962848ebadbd66068fa7c9b986cb8b6b19e`, chain 1)
- stakeNOONVesting (`0x628c2b6259b45a6b22dbe21ef84b1dc9f63642c7`, chain 1)
- StorkChainlinkAdapter (`0x9a137fdbe8bbb6065626098818dc82d26c20659b`, chain 999)
- StorkChainlinkAdapter (`0xf08c4a8f113c8a90788f02b8151085eb9bc01e0e`, chain 999)
- Timelock (`0xe5e412c212b4fbbf550a94e7bd5e83db0b315a7f`, chain 1)
- TransparentUpgradeableProxy (`0x22c9e2ed2f016ae4a0131c251bf3fce882a92ed5`, chain 1)
- TransparentUpgradeableProxy (`0x56993afd8cdf9409acf3b3aa96f0c10595a070d2`, chain 1)
- TransparentUpgradeableProxy (`0x5f9ee665830be17b2073a9800eb7bbbe51b471d7`, chain 1)
- TransparentUpgradeableProxy (`0xd3f58365428f9325d13787a405f846374a58a0fb`, chain 1)
- TransparentUpgradeableProxy (`0xda67b4284609d2d48e5d10cfac411572727dc1ed`, chain 1)
- TransparentUpgradeableProxy (`0x34a2798d47b238a7cba9d87d49618dee6c4d999f`, chain 999)
- USNUpgradeableHyperlane (`0x6bdc8104ec827cd48b9cac526420b59a31bc8397`, chain 1)
- WithdrawalHandler (`0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 30; live-surface rows included: 30 (24 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/15 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (9 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 22 of 82 unique; 60 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/44
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 82
- Raw deployments: 104
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 3 | 6.8% | 2025-03 |
| Hashlock | Tier 2 | 2 | 4.5% | 2026-03 |
| Not specified | Tier 2 | 1 | 2.3% | 2024-09 |
| Quantstamp | Tier 2 | 1 | 2.3% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RedeemHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250040 | `0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8` | ✅ Audited |
| stakeNOON | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250058 | 2 deployments: ethereum `0x5f9ee665830be17b2073a9800eb7bbbe51b471d7`; ethereum `0x6c243e90c2bec1126e3b835b25e23e16ded11f93` | ✅ Audited |
| stakeNOONVesting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250055 | 2 deployments: ethereum `0x56993afd8cdf9409acf3b3aa96f0c10595a070d2`; ethereum `0x628c2b6259b45a6b22dbe21ef84b1dc9f63642c7` | ✅ Audited |
| StakingVaultOFTUpgradeableHyperlane | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250060 | 2 deployments: ethereum `0xd1ffb6a6a42c86b931b2a6d388d1f25c1c775b34`; ethereum `0xe24a3dc889621612422a64e6388927901608b91d` | ✅ Audited |
| WithdrawalHandler | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-250017 | `0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DomainMapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7a3619213cc83c1d21c1374f4f8dad343f020992`; ethereum `0xe63fb61f3c83722bb87ec2ebf8ff4cff0d725ae0`; ethereum `0xf8a3713d4f1e922f40e6738929152d41e73bec26` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-250063 | `0x365bd6fb4200e422a2b1f7b9dfb1c00471e6d089` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeefff209270748ddd194831b3fa287a5386f5bc` | ⚠️ Unaudited |
| MinterHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34a2798d47b238a7cba9d87d49618dee6c4d999f` | ⚠️ Unaudited |
| MinterHandlerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x054f96a1733be7e6916e93e0be30f9f1400e3cc0`; ethereum `0x7d6f00026e6e29bbcf89cf0c5e02cb5c569cc0be`; ethereum `0xfc9249b1e027d22c10d27292cb1ed00675197259` | ⚠️ Unaudited |
| MinterHandlerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250032 | `0xb91b361ebe4022bb62df0651bdd09b21209ac058` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250019 | `0x3b26bee26e7ea5225b459abb7433eab4ea52ed01` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250036 | `0xc415cc3f04f9074a9562aeee02591e65d39a94aa` | ⚠️ Unaudited |
| MultichainHandlerEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa759a06df6d28b8954baa78bf454f858946684f8`; ethereum `0xaef42361640e6f88de2c8987b5af0bb8b553834c`; ethereum `0xb488c7f383871c640d0f396dc501cb9d0d44b405` | ⚠️ Unaudited |
| NOON | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1bb4324553e156570317ea203b6ae6536c41c6e1` | ⚠️ Unaudited |
| NOON | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250056 | 2 deployments: ethereum `0x62977f7b95b493e1d07735910291e275cc3bc2da`; ethereum `0xd3f58365428f9325d13787a405f846374a58a0fb` | ⚠️ Unaudited |
| RateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a89f87ea1d5b9fd0fede73b5098678190d2eeaa` | ⚠️ Unaudited |
| RateProviderOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250029 | `0x7f741401422afff770360fd13127f7462c6e1a79` | ⚠️ Unaudited |
| RedeemHandlerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3db3260fff8f5f97c96ae2fe871a9359d46eb566`; ethereum `0x9f8d0a683871125083170f65430f8a15affa0086` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1b2262903fdb0a8eb84291cc227426be590c4503` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 3 | ethereum | unit-250054 (3 proxies) | 3 deployments: ethereum `0x1ea169ecccf7714e7ba04900e1a3357cca77327f`; ethereum `0x364a77729fc3eddf7fc430c9f4913e055b0f68b9`; ethereum `0x646db2928d04a947d485fd8267b236b817d89daa` | ⚠️ Unaudited |
| SpectraPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250027 | `0x76d048e47e1d77940416b656d8d7fed34931a393` | ⚠️ Unaudited |
| StakedUSNHyperlane | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-250064 | 2 deployments: hyperliquid `0x34a2798d47b238a7cba9d87d49618dee6c4d999f`; hyperliquid `0xda67b4284609d2d48e5d10cfac411572727dc1ed` | ⚠️ Unaudited |
| StakedUSNHyperlane | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x6086d52f28c7b7481d8ae0fadd4349cbb608c2bd` | ⚠️ Unaudited |
| StakedUSNOFTHyperlane | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e1d6ee6005f0038df3076fb0337f315e751e07` | ⚠️ Unaudited |
| stakeNOON | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2467bcbdab456d732772c4304ed62639ce01333e`; ethereum `0x63088684238eb3fbd410d9b084c29a393d8f0701` | ⚠️ Unaudited |
| stakeNOON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x37527c83d6804c35c6b36c6ef173c3bffea06bff`; ethereum `0x9ade3418fb6199ae36c29ac2eb4f5bc889846dd6` | ⚠️ Unaudited |
| stakeNOONRewarder | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250059 | 2 deployments: ethereum `0x22c9e2ed2f016ae4a0131c251bf3fce882a92ed5`; ethereum `0xb8a60962848ebadbd66068fa7c9b986cb8b6b19e` | ⚠️ Unaudited |
| stakeNOONVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb6aced50a83c893949680ad830651ea969558e05`; ethereum `0xc6bd83ec60ae3ab25d0eee700ed2b7c0cdcd2cc1` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6086d52f28c7b7481d8ae0fadd4349cbb608c2bd` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1ceaa8ba832c5bbf486a3d8e170796308cff5a56` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeable | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-250028 | `0x78fc48b3bb59d8a1f29d4ff8c78bba64e9374f97` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeable | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e5b8d826939580db142faba61fcdea9aaca6e7` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeableHyperlane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x20548dc8b015ab92e5afc64c50f6a6b9c0bca8b4`; ethereum `0xa939cc696642da8d2b2b83844d7fc539fa60f895`; ethereum `0xd876130832bc6da605eed9fee6ceb4f45666aa42` | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250025 | `0x6e46353f6ba66e22289aae9ffa79e1bfd593219e` | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-250052 | `0x9a137fdbe8bbb6065626098818dc82d26c20659b` | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-250053 | `0xf08c4a8f113c8a90788f02b8151085eb9bc01e0e` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-250039 | `0xe5e412c212b4fbbf550a94e7bd5e83db0b315a7f` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x73d59063212c1a3fd32882d46a84efb37911550d` | ⚠️ Unaudited |
| UpgradeableStork | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6e498b02c0036235c8164a502b0eecc7660bd889`; hyperliquid `0xacc0a0cf13571d30b4b8637996f5d6d774d4fd62` | ⚠️ Unaudited |
| USNUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ada1cb43ac67fffa2773b169920bfab4c6391b7` | ⚠️ Unaudited |
| USNUpgradeableHyperlane | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250057 | 2 deployments: ethereum `0x6bdc8104ec827cd48b9cac526420b59a31bc8397`; ethereum `0xda67b4284609d2d48e5d10cfac411572727dc1ed` | ⚠️ Unaudited |
| USNUpgradeableHyperlane | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fbd64b6304d840e4bf1c6e6bfe579eb8cfa3ec0` | ⚠️ Unaudited |
| WithdrawalHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b872fafee64dd53f2b38dbbd05a4fb323f15f12` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0384078cfc17efc6dc346a5370addd7f09c3c9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06e4a0f2a5e1952126c164a04d4e95e2c8d91852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x112e4217563b1d109f1c131c80a0b385d12e9376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1484017ca49a5be3cfa0b54fb82f81f1f4cb7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eed4b9f8d77bf1a9a3e6eba71c8f84fa039ccfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633804cd0b2e30f9002b50861f7654d89b9241a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e66ecd575f8a469c1be2bd282e387d62dd9eb1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80544a71d42d924a1217a570623fd050d9f2414a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89634c8252fd97dc4a270c8ec2ea9944f759b834` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250033 | `0xbd154793659d1e6ea0c58754ced6807059a421b0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250034 | `0xc0d62e2470a585c8a638b123a78ff31b593af8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebe44b5c7ebd73301ea3ecaa5ef35412b516385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe13dc4dbd5d028f670c7cb10b3f41783383d65ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6031057dbabdf4792f12a732820d90165a497fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-250042 | `0x0469d9d1de0ee58fa1153ef00836b9bbcb84c0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-250043 | `0xb6a09d426861c63722aa0b333a9ce5d5a9b04c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0ada1cb43ac67fffa2773b169920bfab4c6391b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x376adc2c9698e6f3a8ad7a52810c5341dc7cdef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf89cef90cf229c564596cf105d19bc92e17b98c4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-250047 | `0x0e658ea83d19e540a5b4cf6bc2a6093a55525561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19e3c2f3d09fcdebac6caae116dc830d1a617ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b7be853694c6538dff2d69d8915d5e499816187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33a7221a5fb4fe9416bd4545b4ebdb07f3233bbe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-250048 | `0x34a2798d47b238a7cba9d87d49618dee6c4d999f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x647dfd812bc1e116c6992cb2bc353b2112176fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6cf0c5978fe20e7a6eb123da78bbbbf171e4451a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-250049 | `0x907fb22c2da56642f89702b0970a03ed13ebf136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90e093b850d4eea5bcd29e6657589e45f78ef53b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-250050 | `0xa9bb96bb79492aa64199f078362ecd069d565e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacc0a0cf13571d30b4b8637996f5d6d774d4fd62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba42cbc631d5d045338331f2644fa4343bdc1d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda67b4284609d2d48e5d10cfac411572727dc1ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-250051 | `0xf56d33ef52642ce226a566610a979dc8d954592d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf89cef90cf229c564596cf105d19bc92e17b98c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x0ada1cb43ac67fffa2773b169920bfab4c6391b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-250044 | `0x94e9f383b085d32973634ea7c9bb2038ef9a3c58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-250045 | `0xda67b4284609d2d48e5d10cfac411572727dc1ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-250046 | `0xea84ac70f00f47ad6fbe51233aae25799b9f0a02` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 14
- Unknown liveness contracts: 40
- Source-verified contracts: 31
- Currently scope-matched contracts retained as-is: 3
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=3, candidate review=4, contamination review=1, exact address book overlap=5, source verified unclassified=18, unverified unclassified=23

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0xda67b4284609d2d48e5d10cfac411572727dc1ed` | non_address_book | unknown | unknown | unverified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| base | unverified unclassified | UnnamedContract<br>`0x19e3c2f3d09fcdebac6caae116dc830d1a617ee0` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0x2b7be853694c6538dff2d69d8915d5e499816187` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0x33a7221a5fb4fe9416bd4545b4ebdb07f3233bbe` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0x647dfd812bc1e116c6992cb2bc353b2112176fd6` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0x6cf0c5978fe20e7a6eb123da78bbbbf171e4451a` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0x90e093b850d4eea5bcd29e6657589e45f78ef53b` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0xacc0a0cf13571d30b4b8637996f5d6d774d4fd62` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0xba42cbc631d5d045338331f2644fa4343bdc1d43` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| base | unverified unclassified | UnnamedContract<br>`0xf89cef90cf229c564596cf105d19bc92e17b98c4` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| berachain | unverified unclassified | UnnamedContract<br>`0x0ada1cb43ac67fffa2773b169920bfab4c6391b7` | non_address_book | unknown | unknown | unverified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0x56993afd8cdf9409acf3b3aa96f0c10595a070d2` | project_anchor | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0x5f9ee665830be17b2073a9800eb7bbbe51b471d7` | project_anchor | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | currently scope matched | TransparentUpgradeableProxy<br>`0xe24a3dc889621612422a64e6388927901608b91d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | candidate review | StakingVaultOFTUpgradeableHyperlane<br>`0x20548dc8b015ab92e5afc64c50f6a6b9c0bca8b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | candidate review | StakingVaultOFTUpgradeableHyperlane<br>`0xa939cc696642da8d2b2b83844d7fc539fa60f895` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | candidate review | StakingVaultOFTUpgradeableHyperlane<br>`0xd1ffb6a6a42c86b931b2a6d388d1f25c1c775b34` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | candidate review | StakingVaultOFTUpgradeableHyperlane<br>`0xd876130832bc6da605eed9fee6ceb4f45666aa42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | contamination review | RateProviderOracle<br>`0x7f741401422afff770360fd13127f7462c6e1a79` | external_dependency_or_infra | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | exact address book overlap | StakingVaultOFTUpgradeable<br>`0x78fc48b3bb59d8a1f29d4ff8c78bba64e9374f97` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0x22c9e2ed2f016ae4a0131c251bf3fce882a92ed5` | project_anchor | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0xd3f58365428f9325d13787a405f846374a58a0fb` | project_anchor | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | exact address book overlap | TransparentUpgradeableProxy<br>`0xda67b4284609d2d48e5d10cfac411572727dc1ed` | project_anchor | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | NOON<br>`0x62977f7b95b493e1d07735910291e275cc3bc2da` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | RateProvider<br>`0x3a89f87ea1d5b9fd0fede73b5098678190d2eeaa` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | stakeNOON<br>`0x2467bcbdab456d732772c4304ed62639ce01333e` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | stakeNOON<br>`0x6c243e90c2bec1126e3b835b25e23e16ded11f93` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | stakeNOONRewarder<br>`0xb8a60962848ebadbd66068fa7c9b986cb8b6b19e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | stakeNOONVesting<br>`0x628c2b6259b45a6b22dbe21ef84b1dc9f63642c7` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | StakingVault<br>`0x6086d52f28c7b7481d8ae0fadd4349cbb608c2bd` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x1bb4324553e156570317ea203b6ae6536c41c6e1` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x1ceaa8ba832c5bbf486a3d8e170796308cff5a56` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x63088684238eb3fbd410d9b084c29a393d8f0701` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | USNUpgradeable<br>`0x0ada1cb43ac67fffa2773b169920bfab4c6391b7` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | USNUpgradeableHyperlane<br>`0x6bdc8104ec827cd48b9cac526420b59a31bc8397` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | USNUpgradeableHyperlane<br>`0x7fbd64b6304d840e4bf1c6e6bfe579eb8cfa3ec0` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | source verified unclassified | WithdrawalHandler<br>`0x6b872fafee64dd53f2b38dbbd05a4fb323f15f12` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06e4a0f2a5e1952126c164a04d4e95e2c8d91852` | non_address_book | unknown | unknown | unverified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x112e4217563b1d109f1c131c80a0b385d12e9376` | non_address_book | unknown | unknown | unverified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80544a71d42d924a1217a570623fd050d9f2414a` | non_address_book | unknown | unknown | unverified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe13dc4dbd5d028f670c7cb10b3f41783383d65ba` | non_address_book | unknown | unknown | unverified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0384078cfc17efc6dc346a5370addd7f09c3c9d2` | non_address_book | unknown | unknown | unverified | n/a | `0x7c615e12d1163fc0dddaa01b51922587034f5c93` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1484017ca49a5be3cfa0b54fb82f81f1f4cb7c9d` | non_address_book | unknown | unknown | unverified | n/a | `0x7c615e12d1163fc0dddaa01b51922587034f5c93` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1eed4b9f8d77bf1a9a3e6eba71c8f84fa039ccfe` | non_address_book | unknown | unknown | unverified | n/a | `0x7c615e12d1163fc0dddaa01b51922587034f5c93` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x633804cd0b2e30f9002b50861f7654d89b9241a7` | non_address_book | unknown | unknown | unverified | n/a | `0x7c615e12d1163fc0dddaa01b51922587034f5c93` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e66ecd575f8a469c1be2bd282e387d62dd9eb1b` | non_address_book | unknown | unknown | unverified | n/a | `0x7c615e12d1163fc0dddaa01b51922587034f5c93` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdebe44b5c7ebd73301ea3ecaa5ef35412b516385` | non_address_book | unknown | unknown | unverified | n/a | `0x7c615e12d1163fc0dddaa01b51922587034f5c93` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6031057dbabdf4792f12a732820d90165a497fe` | non_address_book | unknown | unknown | unverified | n/a | `0x7c615e12d1163fc0dddaa01b51922587034f5c93` |
| hyperliquid | exact address book overlap | TransparentUpgradeableProxy<br>`0x34a2798d47b238a7cba9d87d49618dee6c4d999f` | project_anchor | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| hyperliquid | source verified unclassified | StakedUSNHyperlane<br>`0xda67b4284609d2d48e5d10cfac411572727dc1ed` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| hyperliquid | source verified unclassified | TransparentUpgradeableProxy<br>`0x6086d52f28c7b7481d8ae0fadd4349cbb608c2bd` | non_address_book | unknown | unknown | verified | n/a | `0x173806021b18c4e60170e412dc88f991eb00d699` |
| hyperliquid | source verified unclassified | ERC1967Proxy<br>`0xacc0a0cf13571d30b4b8637996f5d6d774d4fd62` | non_address_book | unknown | unknown | verified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| hyperliquid | source verified unclassified | UpgradeableStork<br>`0x6e498b02c0036235c8164a502b0eecc7660bd889` | non_address_book | unknown | unknown | verified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf89cef90cf229c564596cf105d19bc92e17b98c4` | non_address_book | unknown | unknown | unverified | n/a | `0xbe595dad4d75cf04314e6e217f379926afd38244` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view](https://drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view?usp=drive_link) | Quantstamp | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view](https://drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view?usp=drive_link) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef](https://www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [hashlock.com/audits/noon-capital](https://hashlock.com/audits/noon-capital) | Hashlock | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view](https://drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view?usp=sharing) | Hashlock | Audit | 2026-03 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 0 | high |
| [Noon USN Final Report v1.pdf](https://596450103-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FvawK0RJiR8PpG791Q3EH%2Fuploads%2F2FN1Itxrs7xSFnp58cSE%2FNoon%20USN%20Final%20Report%20v1.pdf) | Not specified | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [halborn_audit.pdf](https://596450103-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FvawK0RJiR8PpG791Q3EH%2Fuploads%2FWHNbilBdH3xBgXJiipOs%2Fhalborn_audit.pdf) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4259] drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view — matched: Scope section explicitly lists contracts/ files including interfaces and lib. Audit date from changelog: 2024-09-06 Final Report.
- [4260] drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view — matched: Scope section explicitly lists 16 contracts. Audit date is the end date of the engagement (December 19, 2024).
- [4261] www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef — matched: Two contracts in scope from the repository Noon-Core-Audit, assessed commit 38a1437. Audit date from engagement end date.
- [4262] hashlock.com/audits/noon-capital — no match: The provided text is a webpage listing multiple audit reports for Noon Capital, but does not contain the full text of any specific audit report. No contract names or scope details are identifiable.
- [4263] drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view — matched: Two contracts in scope: stakeNOON.sol and stakeNOONVesting.sol. Audit date is March 2026, converted to last day of month.
- [27393] Noon USN Final Report v1.pdf — matched: Scope section explicitly lists contracts/ directory files. Audit date from changelog: 2024-09-06 (Final Report).
- [27394] halborn_audit.pdf — matched: Scope section explicitly lists 16 contracts. Audit date from engagement end date (December 19, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | MinterHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | StakingVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | USN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IMinterHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IStakingVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IUSN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | USN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | USNUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | MinterHandler | unmatched — not counted | — | listed in scope and referenced in findings | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | WithdrawalHandler | own contract | WithdrawalHandler (selected) `0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178` — deployed 2024-11-06 21:12:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | StakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | StakingVault | unmatched — not counted | — | listed in scope and referenced in findings | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | StakingVaultOFTUpgradeable | unmatched — not counted | — | listed in scope and referenced in findings | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IWithdrawalHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IUSN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakingVaultUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakingVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakingVaultOFT | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IMinterHandler | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef | StakingVaultOFTUpgradeableHyperlane | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe24a3dc889621612422a64e6388927901608b91d` — deployed 2024-11-06 21:11:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef | StakedUSNBasicOFTHyperlane | unmatched — not counted | — | listed in scope section | no |
| drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view | stakeNOON | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5f9ee665830be17b2073a9800eb7bbbe51b471d7` — deployed 2025-06-30 23:51:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view | stakeNOONVesting | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x56993afd8cdf9409acf3b3aa96f0c10595a070d2` — deployed 2025-06-30 23:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Noon USN Final Report v1.pdf | MinterHandler | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Noon USN Final Report v1.pdf | StakingVault | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | USN | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IMinterHandler | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IStakingVault | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IUSN | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | USN | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | USNUpgradeable | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | MinterHandler | unmatched — not counted | — | listed in scope and referenced in findings | no |
| halborn_audit.pdf | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deafcdfbc21cb1e558906d00a1fdb4b56173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_audit.pdf | WithdrawalHandler | own contract | WithdrawalHandler (selected) `0x0dabc0d9b270c9b0c4c77aaceaa712b56d0f9178` — deployed 2024-11-06 21:12:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_audit.pdf | StakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | StakingVault | unmatched — not counted | — | listed in scope and referenced in findings | no |
| halborn_audit.pdf | StakingVaultOFTUpgradeable | unmatched — not counted | — | listed in scope and referenced in findings | no |
| halborn_audit.pdf | IStakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IWithdrawalHandler | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IUSN | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IStakingVaultUpgradeable | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IStakingVault | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IStakingVaultOFT | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IMinterHandler | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb91b361ebe4022bb62df0651bdd09b21209ac058` | MinterHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62977f7b95b493e1d07735910291e275cc3bc2da` | NOON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x34a2798d47b238a7cba9d87d49618dee6c4d999f` | StakedUSNHyperlane | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22c9e2ed2f016ae4a0131c251bf3fce882a92ed5` | stakeNOONRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x9a137fdbe8bbb6065626098818dc82d26c20659b` | StorkChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xf08c4a8f113c8a90788f02b8151085eb9bc01e0e` | StorkChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5e412c212b4fbbf550a94e7bd5e83db0b315a7f` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6bdc8104ec827cd48b9cac526420b59a31bc8397` | USNUpgradeableHyperlane | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 45 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=9

Zero-match audit list:

- [4262] hashlock.com/audits/noon-capital

Fork inheritance lineage and inherited audits are included when available.
