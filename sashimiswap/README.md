# Agentic Audit Brief: SashimiSwap

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

- Project: SashimiSwap (`sashimiswap`)
- Website: [https://sashimi.cool/home/swap](https://sashimi.cool/home/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, heco
- Contract surface: 57 unique implementations (110 raw deployments)
- Coverage basis: 0/20 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,149,650.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SashimiSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across ethereum, heco. Structural roles: 17 unclassified, 10 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: unclassified (17), core (10), supporting (1)
- Contract kinds: contract (28)
- Detected standards: erc20 (8), ownable (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SashimiBar (`0x6ed306dba10e6c6b20bba693892fac21f3b91977`, chain 1)
- SashimiLendingVaultProvider (`0x194402bc8adcc11a77873996361efe40e9dcdfcb`, chain 1)
- SashimiLendingVaultProvider (`0x206d84982e032950e3f87d64f86c7c4c7cb60fcc`, chain 1)
- SashimiLendingVaultProvider (`0x33a057e6061e3849954578e3ae0ae15e615e72cf`, chain 1)
- SashimiLendingVaultProvider (`0x7bc801a840a7c2c027f4e5e48bf618348b0bce2b`, chain 1)
- SashimiLendingVaultProvider (`0x7cf0569a5d1602068f2c1425bfe8352fd6d8b942`, chain 1)
- SashimiLendingVaultProvider (`0xd3d3fc25b836a8fd49026787c4406f5791f891be`, chain 1)
- SashimiLendingVaultProvider (`0xfdedb338c5e5a26ed5816091dfaf34b5616cf2f4`, chain 1)
- SashimiPlate (`0x4221330f24b26f20457f7c7c925cfc46b1541ca6`, chain 1)
- SashimiPlate (`0x56bb940d92ae9a45ebdc77e94c28b960cffd6168`, chain 1)
- SashimiPlate (`0x722669a18852c659110d4a1e44f9647fc44edcc2`, chain 1)
- SashimiPlate (`0x81885d776d2963941ec7434f30d61b851e9697fa`, chain 1)
- SashimiPlate (`0x8e95bc97b0c1b88aa8708206c85c06299f778648`, chain 1)
- SashimiPlate (`0xc5d00a4e730fc2e1c77764a74e5f1308a460de7f`, chain 1)
- SashimiPlate (`0xe6cb949e11beb2a7b48f4cb5bfd8724501cfda91`, chain 1)
- SLErc20Delegator (`0x2394de3827e233298fff0fdf6aa261070bfe013d`, chain 1)
- SLErc20Delegator (`0x6ddbcbaa13bde44a406780e298721483d684f1b0`, chain 1)
- SLErc20Delegator (`0x8ce5aa7812fdd6799d4c2b284a6e9f9b186e3af3`, chain 1)
- SLErc20Delegator (`0xbbcc16ab7937469bb1e72337427678e7e701b9ea`, chain 1)
- SLErc20Delegator (`0xdddaf1a95e57f7a74d85f366936f8a2abbc86b45`, chain 1)
- Timelock (`0x84ee348617563944ffd4a23843e086a7dc0224f3`, chain 1)
- Unitroller (`0xb5d53ec97bed54fe4c2b77f275025c3fc132d770`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (25 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/20 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 20 of 57 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 57
- Raw deployments: 110
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BSashimi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb133ff62a7ad7bb7d9a57177ff2115e6f602e9d2` | ⚠️ Unaudited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392034 | 2 deployments: ethereum `0x8d7e38bce4363577bec63fd268557d3b08f4aa2b`; ethereum `0xb5d53ec97bed54fe4c2b77f275025c3fc132d770` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a7a95d7ad043b356d72b7c5fbe0ef053ba8c13` | ⚠️ Unaudited |
| CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa73f042dd65be0d0b01960c144bf89f355951a07` | ⚠️ Unaudited |
| CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdba694d5204064296247d1210dbfd2fc9b9d95a0`; ethereum `0xf8c227fb0d2c94480e3b3548486f13d826b1c1d3` | ⚠️ Unaudited |
| DAIInterestRateModelV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d1d148330e2678b27d8cd6b4c82f7cb66234b19` | ⚠️ Unaudited |
| DForceVaultProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x30d75a1232c0d28aa53c43d47ef7d3441cfed1e3`; ethereum `0x34cf6e94cb4d3f7f9679584753e4447244f7cbb9`; ethereum `0x8010685eae3228886d2ce438c1c2c9066227da96` | ⚠️ Unaudited |
| Dipper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x786448439d9401e0a8427acf7ca66a5114eb2368` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7eaeba417967614c08cd1f406909cdcde65f10f5`; ethereum `0xd06f0780d8d7f1d3f6bd7d4e8c2f0d966e82f365` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea01ba0240bc5f704711b5a97c092802136d04` | ⚠️ Unaudited |
| GolffVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2d60dd684393c58461406b648c6fb7b4dfe16652`; ethereum `0x51dee699d5a82020fd41f620f09d1247c3c840fc`; ethereum `0x65d34f76b6a34bafe0e03877c3ce68f79b18c394`; ethereum `0x89ecdeb10930f8a51fbd0f7d47e4da45be91b564`; ethereum `0x9492d7d2cb08eef7c825a8199a4704056c808518`; ethereum `0xb382097af3d9a9a8ca8ba9e1c48eae9228ca7b47`; ethereum `0xec0c65a04b985f1f162f13e7df667bbf4804b621`; ethereum `0xeebef489fff79c4caedf520e7e65359c99d47ea7` | ⚠️ Unaudited |
| GolffVaultProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9886bba3ba6a3c00144e1e068088ee879f560cd` | ⚠️ Unaudited |
| HSashimi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2544d6d9e665c528a3f46f77e39a224c9888a287` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6ab160b2890c0da0f63dfb65739090372b132a08`; ethereum `0x9c8b5d2f68cebe3ec36bb99da243063657940ab8`; ethereum `0xc4e8faeb8d1d30265f8cddb50f10fcdcdcabc2ee` | ⚠️ Unaudited |
| LpBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x9ec7de79572312d00f536b856b9e6fe7d0a37af1`; ethereum `0xc8b5b728165f5e59690ba486e4086027f34635bd`; ethereum `0xd4f7ca1e212c5203074ecd9912dd803426ef4e10`; ethereum `0xe835db5c6145f6ac2cd1f697c271bcab022766ad` | ⚠️ Unaudited |
| LSashimi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e199c36f9681a32c996e84c464824f6a868acbd` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1daed74ed1dd7c9dabbe51361ac90a69d851234d` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x295e3331a35dd834ee76c305a8c3ed189a4ac8ae` | ⚠️ Unaudited |
| OpenOraclePriceData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x541200c72177366cc18b5903c1ee9f75a5cfa8d6` | ⚠️ Unaudited |
| SashimiBar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392022 | `0x6ed306dba10e6c6b20bba693892fac21f3b91977` | ⚠️ Unaudited |
| SashimiGovVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bf80a92734de221889049e91187a07464607b1` | ⚠️ Unaudited |
| SashimiInvestment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3857997e0203036cb5331ee62e6a7db50d67f5ab`; ethereum `0x3f966fa1c0606e19047ed72068d2857677e07ef4`; ethereum `0x421909ac7d8da8f05b26debe3b62ef589e899cef`; ethereum `0x4ce106235b6d876c66117fda1f6025e3fb87d3ec`; ethereum `0x939cb7e3089802b395bdab0c791fb4c1e7af315b`; ethereum `0xc380130f2b3fa820ce3d1092fddbf0da732d13c9` | ⚠️ Unaudited |
| SashimiLendingLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d19a92ed47258286d65b470e0d26fa49530f81` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392017 | `0x194402bc8adcc11a77873996361efe40e9dcdfcb` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392018 | `0x206d84982e032950e3f87d64f86c7c4c7cb60fcc` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392019 | `0x33a057e6061e3849954578e3ae0ae15e615e72cf` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392024 | `0x7bc801a840a7c2c027f4e5e48bf618348b0bce2b` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392025 | `0x7cf0569a5d1602068f2c1425bfe8352fd6d8b942` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392031 | `0xd3d3fc25b836a8fd49026787c4406f5791f891be` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392033 | `0xfdedb338c5e5a26ed5816091dfaf34b5616cf2f4` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392020 | `0x4221330f24b26f20457f7c7c925cfc46b1541ca6` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392021 | `0x56bb940d92ae9a45ebdc77e94c28b960cffd6168` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392023 | `0x722669a18852c659110d4a1e44f9647fc44edcc2` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392026 | `0x81885d776d2963941ec7434f30d61b851e9697fa` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392028 | `0x8e95bc97b0c1b88aa8708206c85c06299f778648` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392030 | `0xc5d00a4e730fc2e1c77764a74e5f1308a460de7f` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392032 | `0xe6cb949e11beb2a7b48f4cb5bfd8724501cfda91` | ⚠️ Unaudited |
| SashimiPlateController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3884eab512bb0475100997271ec83163daa944ae` | ⚠️ Unaudited |
| SashimiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc28e27870558cf22add83540d2126da2e4b464c2` | ⚠️ Unaudited |
| SLDaiDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392035 | 2 deployments: ethereum `0x2918231f262f764dbb5753a95bd7684fdb313ea4`; ethereum `0x946eee2c398eb6d8eaa2cc47aba84f0c97936341` | ⚠️ Unaudited |
| SLErc20Delegate | unknown | project_anchor | own_supporting | 6 | ethereum | unit-392036 (6 proxies) | 7 deployments: ethereum `0x09a7fb5e4499e61c7cf53acb8df7b2a8e4fb36f9`; ethereum `0x2394de3827e233298fff0fdf6aa261070bfe013d`; ethereum `0x6ddbcbaa13bde44a406780e298721483d684f1b0`; ethereum `0x8ce5aa7812fdd6799d4c2b284a6e9f9b186e3af3`; ethereum `0xbbcc16ab7937469bb1e72337427678e7e701b9ea`; ethereum `0xd6ad22e4ad7215a2c2c4c3d3178f951e4c4f2671`; ethereum `0xdddaf1a95e57f7a74d85f366936f8a2abbc86b45` | ⚠️ Unaudited |
| SLEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392029 | `0xc597f86424eeb6599ea40f999dbb739e3aca5d82` | ⚠️ Unaudited |
| StrategyDForce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c486c577d980cb16f3eb05b0236fe40621e33dc`; ethereum `0xa6bcd244e51cb5edfcff55929e3ced62feb3f1bd`; ethereum `0xac8cd3090ca1478d2b1ff300da314f7460771b27` | ⚠️ Unaudited |
| StrategyUniStakingReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x52632d06ea29614bb2574c462f280feb23d14f16`; ethereum `0x53fbf4a6ccffd2b038b28cefc99ef4e624df34c1`; ethereum `0x74e4179d4eea6bea5f5924e6309b7990dc36f54e`; ethereum `0xa7feeaa18ebbe7148adfa08832a84184f3500e61` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392027 | `0x84ee348617563944ffd4a23843e086a7dc0224f3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xea97a7c6c078b57d5e7e21590037256d55e5b0ca`; ethereum `0xf559a355baef02ec2395b1f832f2f9ed527f076f` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fe6a45f354e845f954cddee6084603cedb9410` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x693f49cfc4293257c280f7fd64395298b62c35c3`; ethereum `0x9e2806f98955f0d701c1f9385dd8439e02e43d7f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b8c75d6f91663c515bb12e3cf7c29ade0e1a302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7578fd876752a5e4999a16fb80cfe30c1056de11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a77073c1191f2d2fd31a71c758d44f3de0af831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbacbd121f37557e5ea1d0c4bb67756867866c3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34146bb5e208f711fa99ba9d1d2c90b935a65c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda26efdd87fa47eb24e0dbda145d7ba144f10b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1b43f4e14650ac8c4bb009d9b56eb77c1ae87cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf88997729a66aee2a5a3d34358b12a731118ac66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | heco | n/a | 18 deployments: heco `0x06068d90e0cbf9b7ccfd21efddb9bceb4c47fd31`; heco `0x377dca38ff279a73a9075f25d36d00b98515a9a1`; heco `0x389eec1b8795853770874b76b912ec18de796e1b`; heco `0x3f3aaaa941ad756fc49a4b3241a87a7c04e39a4e`; heco `0x611e93a7718a215bfda3c63f7175d764793272df`; heco `0x6c606fb47d99d1e66f9b599f8c5602cd4eb44d5a`; heco `0x6cb9d7ecf84b0d3e7704ed91046e16f9d45c00fa`; heco `0x6ccbc3a5ae94e8a75f9571438a78f3e3aa956655`; heco `0x818bbc9b9d37685f9f4db032d46b52a70d890632`; heco `0x891daabf6de7a648c9665928e1097b808c1721e2`; heco `0x937a48287fdc4b503d608cb988ac35eee75f076f`; heco `0xae399aea42867fec2cd4a04963a7f0e247a39431`; heco `0xc28e27870558cf22add83540d2126da2e4b464c2`; heco `0xc2d36a8c0b1235ddecac2ed519139e9177e67736`; heco `0xc597f86424eeb6599ea40f999dbb739e3aca5d82`; heco `0xe2a246c36fa86eee290acef79a8dc66b6b7f25ba`; heco `0xe9c95876f144bbdf5dc33d1a35c26cab0611903f`; heco `0xeaac96f59e40d38bd970b37879a79a1d28737d8a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 79
- Live contracts: 21
- Unknown liveness contracts: 58
- Source-verified contracts: 76
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=10, exact address book overlap=18, source verified unclassified=48, unverified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | Comptroller<br>`0x8d7e38bce4363577bec63fd268557d3b08f4aa2b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | DAIInterestRateModelV3<br>`0x6d1d148330e2678b27d8cd6b4c82f7cb66234b19` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | JumpRateModelV2<br>`0x6ab160b2890c0da0f63dfb65739090372b132a08` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | Migrator<br>`0x295e3331a35dd834ee76c305a8c3ed189a4ac8ae` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | OpenOraclePriceData<br>`0x541200c72177366cc18b5903c1ee9f75a5cfa8d6` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | SashimiLendingLens<br>`0x62d19a92ed47258286d65b470e0d26fa49530f81` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | SLErc20Delegator<br>`0x09a7fb5e4499e61c7cf53acb8df7b2a8e4fb36f9` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | SLErc20Delegator<br>`0x2918231f262f764dbb5753a95bd7684fdb313ea4` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | SLEther<br>`0xc597f86424eeb6599ea40f999dbb739e3aca5d82` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| contamination review | WhitePaperInterestRateModel<br>`0x693f49cfc4293257c280f7fd64395298b62c35c3` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiBar<br>`0x6ed306dba10e6c6b20bba693892fac21f3b91977` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiLendingVaultProvider<br>`0x194402bc8adcc11a77873996361efe40e9dcdfcb` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiLendingVaultProvider<br>`0x206d84982e032950e3f87d64f86c7c4c7cb60fcc` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiLendingVaultProvider<br>`0x33a057e6061e3849954578e3ae0ae15e615e72cf` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiLendingVaultProvider<br>`0x7bc801a840a7c2c027f4e5e48bf618348b0bce2b` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiLendingVaultProvider<br>`0x7cf0569a5d1602068f2c1425bfe8352fd6d8b942` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiLendingVaultProvider<br>`0xd3d3fc25b836a8fd49026787c4406f5791f891be` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiLendingVaultProvider<br>`0xfdedb338c5e5a26ed5816091dfaf34b5616cf2f4` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiPlate<br>`0x722669a18852c659110d4a1e44f9647fc44edcc2` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiPlate<br>`0x81885d776d2963941ec7434f30d61b851e9697fa` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SashimiPlate<br>`0xe6cb949e11beb2a7b48f4cb5bfd8724501cfda91` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SLErc20Delegator<br>`0x2394de3827e233298fff0fdf6aa261070bfe013d` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SLErc20Delegator<br>`0x6ddbcbaa13bde44a406780e298721483d684f1b0` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SLErc20Delegator<br>`0x8ce5aa7812fdd6799d4c2b284a6e9f9b186e3af3` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SLErc20Delegator<br>`0xbbcc16ab7937469bb1e72337427678e7e701b9ea` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | SLErc20Delegator<br>`0xdddaf1a95e57f7a74d85f366936f8a2abbc86b45` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | Timelock<br>`0x84ee348617563944ffd4a23843e086a7dc0224f3` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| exact address book overlap | Unitroller<br>`0xb5d53ec97bed54fe4c2b77f275025c3fc132d770` | project_anchor | unknown | live | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | BSashimi<br>`0xb133ff62a7ad7bb7d9a57177ff2115e6f602e9d2` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | Comptroller<br>`0xa1a7a95d7ad043b356d72b7c5fbe0ef053ba8c13` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | CrossChain<br>`0xa73f042dd65be0d0b01960c144bf89f355951a07` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | CrossChain<br>`0xf8c227fb0d2c94480e3b3548486f13d826b1c1d3` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | CrossChainDelegator<br>`0xdba694d5204064296247d1210dbfd2fc9b9d95a0` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | DForceVaultProvider<br>`0x30d75a1232c0d28aa53c43d47ef7d3441cfed1e3` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | DForceVaultProvider<br>`0x34cf6e94cb4d3f7f9679584753e4447244f7cbb9` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | DForceVaultProvider<br>`0x8010685eae3228886d2ce438c1c2c9066227da96` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | Exchange<br>`0x89ea01ba0240bc5f704711b5a97c092802136d04` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | Exchange<br>`0xd06f0780d8d7f1d3f6bd7d4e8c2f0d966e82f365` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | ExchangeDelegator<br>`0x7eaeba417967614c08cd1f406909cdcde65f10f5` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0x2d60dd684393c58461406b648c6fb7b4dfe16652` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0x51dee699d5a82020fd41f620f09d1247c3c840fc` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0x65d34f76b6a34bafe0e03877c3ce68f79b18c394` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0x89ecdeb10930f8a51fbd0f7d47e4da45be91b564` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0x9492d7d2cb08eef7c825a8199a4704056c808518` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0xb382097af3d9a9a8ca8ba9e1c48eae9228ca7b47` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0xec0c65a04b985f1f162f13e7df667bbf4804b621` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVault<br>`0xeebef489fff79c4caedf520e7e65359c99d47ea7` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | GolffVaultProvider<br>`0xe9886bba3ba6a3c00144e1e068088ee879f560cd` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | HSashimi<br>`0x2544d6d9e665c528a3f46f77e39a224c9888a287` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | JumpRateModelV2<br>`0x9c8b5d2f68cebe3ec36bb99da243063657940ab8` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | JumpRateModelV2<br>`0xc4e8faeb8d1d30265f8cddb50f10fcdcdcabc2ee` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | LpBar<br>`0x9ec7de79572312d00f536b856b9e6fe7d0a37af1` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | LpBar<br>`0xd4f7ca1e212c5203074ecd9912dd803426ef4e10` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | LpBar<br>`0xe835db5c6145f6ac2cd1f697c271bcab022766ad` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | LSashimi<br>`0x5e199c36f9681a32c996e84c464824f6a868acbd` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | MasterChef<br>`0x1daed74ed1dd7c9dabbe51361ac90a69d851234d` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiGovVote<br>`0x42bf80a92734de221889049e91187a07464607b1` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiInvestment<br>`0x3857997e0203036cb5331ee62e6a7db50d67f5ab` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiInvestment<br>`0x3f966fa1c0606e19047ed72068d2857677e07ef4` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiInvestment<br>`0x421909ac7d8da8f05b26debe3b62ef589e899cef` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiInvestment<br>`0x4ce106235b6d876c66117fda1f6025e3fb87d3ec` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiInvestment<br>`0x939cb7e3089802b395bdab0c791fb4c1e7af315b` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiInvestment<br>`0xc380130f2b3fa820ce3d1092fddbf0da732d13c9` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SashimiPlateController<br>`0x3884eab512bb0475100997271ec83163daa944ae` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SLDaiDelegate<br>`0x946eee2c398eb6d8eaa2cc47aba84f0c97936341` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | SLErc20Delegate<br>`0xd6ad22e4ad7215a2c2c4c3d3178f951e4c4f2671` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | StrategyDForce<br>`0x1c486c577d980cb16f3eb05b0236fe40621e33dc` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | StrategyDForce<br>`0xa6bcd244e51cb5edfcff55929e3ced62feb3f1bd` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | StrategyDForce<br>`0xac8cd3090ca1478d2b1ff300da314f7460771b27` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | StrategyUniStakingReward<br>`0x52632d06ea29614bb2574c462f280feb23d14f16` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | StrategyUniStakingReward<br>`0x53fbf4a6ccffd2b038b28cefc99ef4e624df34c1` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | StrategyUniStakingReward<br>`0x74e4179d4eea6bea5f5924e6309b7990dc36f54e` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | StrategyUniStakingReward<br>`0xa7feeaa18ebbe7148adfa08832a84184f3500e61` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | Timelock<br>`0xea97a7c6c078b57d5e7e21590037256d55e5b0ca` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | Timelock<br>`0xf559a355baef02ec2395b1f832f2f9ed527f076f` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| source verified unclassified | WhitePaperInterestRateModel<br>`0x9e2806f98955f0d701c1f9385dd8439e02e43d7f` | non_address_book | unknown | unknown | verified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| unverified unclassified | UnnamedContract<br>`0xc34146bb5e208f711fa99ba9d1d2c90b935a65c2` | non_address_book | unknown | unknown | unverified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| unverified unclassified | UnnamedContract<br>`0xda26efdd87fa47eb24e0dbda145d7ba144f10b0d` | non_address_book | unknown | unknown | unverified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |
| unverified unclassified | UnnamedContract<br>`0xf88997729a66aee2a5a3d34358b12a731118ac66` | non_address_book | unknown | unknown | unverified | n/a | `0x0faef44d1373f6fde75926e4564bab5b2d645944` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sashimi_audit_report.pdf](https://sashimi.cool/files/sashimi_audit_report.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2521] sashimi_audit_report.pdf — no match: All contracts listed in the scope table on page 6-7 of the report. Audit date is the end date of testing period: 2020-09-25.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sashimi_audit_report.pdf | SashimiInvestment | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | Migrations | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | SashimiVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | GolffVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IGOFPool | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ETHCandy | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockGolff | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockRouter | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockToken | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockWETH | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockYFI | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | WETHVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ISashimiVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ISashimiInvestment | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8d7e38bce4363577bec63fd268557d3b08f4aa2b` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ed306dba10e6c6b20bba693892fac21f3b91977` | SashimiBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x194402bc8adcc11a77873996361efe40e9dcdfcb` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x206d84982e032950e3f87d64f86c7c4c7cb60fcc` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33a057e6061e3849954578e3ae0ae15e615e72cf` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bc801a840a7c2c027f4e5e48bf618348b0bce2b` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7cf0569a5d1602068f2c1425bfe8352fd6d8b942` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3d3fc25b836a8fd49026787c4406f5791f891be` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdedb338c5e5a26ed5816091dfaf34b5616cf2f4` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4221330f24b26f20457f7c7c925cfc46b1541ca6` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56bb940d92ae9a45ebdc77e94c28b960cffd6168` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x722669a18852c659110d4a1e44f9647fc44edcc2` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x81885d776d2963941ec7434f30d61b851e9697fa` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e95bc97b0c1b88aa8708206c85c06299f778648` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5d00a4e730fc2e1c77764a74e5f1308a460de7f` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6cb949e11beb2a7b48f4cb5bfd8724501cfda91` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2918231f262f764dbb5753a95bd7684fdb313ea4` | SLDaiDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09a7fb5e4499e61c7cf53acb8df7b2a8e4fb36f9` | SLErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc597f86424eeb6599ea40f999dbb739e3aca5d82` | SLEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84ee348617563944ffd4a23843e086a7dc0224f3` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2521] sashimi_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
