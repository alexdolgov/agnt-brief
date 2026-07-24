# Agentic Audit Brief: InsureDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: InsureDAO (`insuredao`)
- Website: [https://insuredao.gitbook.io/insuredao/](https://insuredao.gitbook.io/insuredao/)
- Lifecycle: unknown
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: arbitrum, ethereum, optimism
- Contract surface: 155 unique implementations (156 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $125,774.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for InsureDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, optimism. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4763f9720603342aad40056db65883bd55355945`, chain 10)
- UnnamedContract (`0x54f23d2fdc1e17d349b1eb14d869fa4ded6a6d2b`, chain 10)
- UnnamedContract (`0x636938b5ff717f525c696f8961b9a1aec38749a1`, chain 10)
- UnnamedContract (`0x7df2501c62b56f8dd5f1644bfc4300a517ce22bc`, chain 10)
- UnnamedContract (`0x7f5c764cbc14f9669b88837ca1490cca17c31607`, chain 10)
- UnnamedContract (`0x0fa85c39c96a9172ccca7f84ce68e08a2bb971c1`, chain 42161)
- UnnamedContract (`0x21863cc84c4abbdf65b0d0eaea4ce3520262ce43`, chain 42161)
- UnnamedContract (`0x62b86b6274dfa4cc16bed9995e302a56d18891e2`, chain 42161)
- UnnamedContract (`0x968c9718f420d5d4275c610c5c217598a6ade9f9`, chain 42161)
- UnnamedContract (`0xff970a61a04b1ca14834a43f5de4533ebddb5cc8`, chain 42161)
- InsureToken (`0xd83ae04c9ed29d6d3e6bf720c71bc7beb424393e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 144 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 11 of 155 unique; 144 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/32
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 123
- Unique implementations: 155
- Raw deployments: 156
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 3.1% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InsureToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387487 | `0xd83ae04c9ed29d6d3e6bf720c71bc7beb424393e` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BondingPremium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d54777d59f1ae50d0ebab0eddb3098ee1eb30e4` | ⚠️ Unaudited |
| CDSTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x734afd33dfb5100ee91efe690526dffdedbe0cf4` | ⚠️ Unaudited |
| DefiRound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0df5a352d74a746754c592a6277c9060a7c9c87` | ⚠️ Unaudited |
| DegenesisAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fac0aad21ef729550727c1ffcb9a9c74edbd829` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01e6916ccfe3630364b4538d0f8c1c22e20d0f6b` | ⚠️ Unaudited |
| FlatPremiumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdb9b9797319e9458d4d3b6eaa86c4f15eddb989c` | ⚠️ Unaudited |
| GaugeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297ea2afce594149cd31a9b11adbae82fa1ddd04` | ⚠️ Unaudited |
| IndexTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0074976043140a371aead31189c2be459950c816` | ⚠️ Unaudited |
| InsureDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa12ab76a82d118e33682acb242180b4cc0d19e29`; ethereum `0xb0730e7fa03c4198174f3f44f6f33f9f59cbd0df` | ⚠️ Unaudited |
| LiquidityGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e505bc71b2cbe55915bd017bcd790440ddbb8c` | ⚠️ Unaudited |
| MarketTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fab21585447dee7bd2aef21406e5f19b5a25dcb` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73456339407d29d787e71e4b198490ca08344160` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76e8b82ea3450fa598e5e164c7e28af172debdc0` | ⚠️ Unaudited |
| Ownership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4810fa5942a322c7bd30519ed3ebe732066c3db3` | ⚠️ Unaudited |
| Parameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x335869ce5132152c27d50c8b5ce43bbccc0ee511` | ⚠️ Unaudited |
| ParametersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf29571145b421f660775fa3deb16d9ff6085d0e6` | ⚠️ Unaudited |
| PolicyUnlocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x757ffd29ff8f10b0053a0bad313a8de2847d31ed` | ⚠️ Unaudited |
| PoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d046d8fac6dc37b5eafadd34407b19de3ba350` | ⚠️ Unaudited |
| PoolTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x190da1b9fa124bd872e9166ba3c7dd656a11e8f8` | ⚠️ Unaudited |
| PremiumModelV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05c1238aab0c1d2393f6487fe85338b99307c08b` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ce353ea9a341f67e7c4a5f391d93123afb2d8ac` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x046c233fd48b020f7e5085c991ffa91eb67c20b2` | ⚠️ Unaudited |
| ReportingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190da1b9fa124bd872e9166ba3c7dd656a11e8f8` | ⚠️ Unaudited |
| ReserveTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23896335f2fd8735988472066405a668df3d9863` | ⚠️ Unaudited |
| RewardsDistributorDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35853654bc1d85991ac19923f5476f9d3feaa1b1` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39e280a9f0b74ef04d5c7a81dbe757e589f8390` | ⚠️ Unaudited |
| TestnetAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e5790f343b83e850c20fb2d100b28de5e8aeeb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1b459aec393d604ae6468ae3f7d7422efa2af1ca` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x009b60138c4bd382114de86ccf3b523bc5a4ed6a` | ⚠️ Unaudited |
| VestingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8998e511935218aa340f41c4d005d2a080e47f` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dc07e60ecb3d064d20c386217ceef8e3905916b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (123)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02826bda00324c144d55a4d145ff4886a5b85bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11ae6a16bb1351ea5fa2efeadc434f301269f024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x131fb74c6fede6d6710ff224e07ce0ed8123f144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x142bc5dd0d0dfb9134e9cdd7c80c58dabd50d7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1805fa08de2bc7087ceb9a7d903faa5414c3a1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a047380b29fd8f6bfc8363f653114b15129c708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dcd35cfff8a9b44aecc4087c7847fb7a5be56f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b16be3cacaea56a6fbe613031c0f6b641df828e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3552dc4cb1637a253ff89c33fe6ebcc0c7983595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c91a83de84c04bc25471a776e5f792e803543c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f6d3189fe71a4b19365974aef02a0884b636039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43eb5dc8a1426dcd6029010adee7b62b73ac2918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4810fa5942a322c7bd30519ed3ebe732066c3db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e38c6c1c19f9783aee0a7617449d9b1e3a08ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5224e15fa3e15f91a1fa5b7f3d278f9f395ab821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56246e83f3148b05ce2d90b44fbb4e9fa9eaf5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d269d952be939751db1d5f873e36f591ed353e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc3dd434911acda2b4baf3dddf68a17287939e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67682b30393e46e871410df80556b65c5e9de6a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a631735dcb5c126ef889004ecc2ca981f98088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a6fa2802d66d3b2b3842129f2c6511eafe843d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9956edea60ce11f464359d301a5bc2fa186ca857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f790ada7fa1bdc2a6b976293273ee51f10a10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eb19cc85b711aedf288fe8a56dc5d3ace1d0d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa035dfd0d16f238493b374a1743b77448d9c8524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa44e06f978ccefcf4e27a21c8c139f10156db09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa58811d050c26f3effb850c9e27b44eb0ec81bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeb9ea24f71dc574fa9a29a069ebe1def3606571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb46b1560db488dc11dfdc1dad2d4488cbcd4a315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb98a6be6d191b0c5976177c9598bf1db6d46fde9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcbcf05f2f77e2c223334368162d88f5d6032699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6d956404014ebcf871846779e0846e526ed2f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca0ace8a2eb862b323be946993f5cfa4fe9653aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca2bd134caf0b89aaba60360e3e35389429031a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0673cba84424d646ea1e5571c507a0be79523bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2328af8cc08b3df7705c568466541473cfd65f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddaa6ee776b701a7729d72bbd0d4fbe4bbb66476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94b60e999da2a3954ab5a6e8c784e00538e4a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb00be9187cee29db32c4c4913edf6b43421a06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef13b331824a3115e82f1ff92b6cb223c53410f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4db9926ae02469d730a25ad7422764bbd45d36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf57882cf186db61691873d33e3511a40c3c7e4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x016d4eb10fbce28010fde53c68c016b611b1aa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02e28c13bd1d42d6349c78e316c479ffa47e4d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0c404a675eb1f3ae1ac282b4893e82301b9212df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x239d00254d3c340f2db8a7a6966b1b0b49a41459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2604899d00a324eab1b68866069e1de4b7f203f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c60484a0481af7ef5c4b713f08b4919cb27df78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3304d8c37c8f1ebeb0d2ea11d1a1af685081dba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x33c56acc1c9c504eac780cd3bea2e6529cbc5b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35dde03381ba1dd3762466a69fc3d43d8432e02a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x36bbf6135551d18cc93d4d1e98463b25da215461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3bb1f6fb180286f40509b73a3487459801e58924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c13515938ec99c082c3f6335bccc633fed366da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387488 | `0x4763f9720603342aad40056db65883bd55355945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x49a0f4c442970ed6651b24d7211f5575e438db9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e98206517d6b670885b1abf5be783e2a381595b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4f393b1628cbcdaa8201e8f3662be694013abf8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x516e63b87e08231e75472411986653f1d67360b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387489 | `0x54f23d2fdc1e17d349b1eb14d869fa4ded6a6d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5713b9f59d16c8e9d270569a10925aa487633624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c8a389583b51df0ec2f1a01e6ef1114667be28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5e204bf6ef5cd2594dfeb131608a8770d6a1a907` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387490 | `0x636938b5ff717f525c696f8961b9a1aec38749a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x668e861540015dfb197e8c00488495f8bdbe6933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x68c5532c0b57bd57baf62d410e6a7d392268880b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6a9a52c8e17aead4f11de66282ba6440818cf33e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6edbae426eed6fc5e8318583b2500956fc420096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x71bb67179dc6378cca27f5e4140af4e0a70af6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x74b782a61f82e5ffd3d2ed2072f64385d0a83565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x75c72a4c958d1cc1a1670833df81bdcca2c60d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x75dfe743689cd0222ecd9d69a55a23a2d7d0344f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x792d139a449aba6c5c6079a5237b4ff0ddfd3a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d481764265a136e535ad34212863a57aedeaf4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387491 | `0x7df2501c62b56f8dd5f1644bfc4300a517ce22bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387492 | `0x7f5c764cbc14f9669b88837ca1490cca17c31607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7fcd5370be47cec0fc0a7fe91230432dd34ddea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81a9a498a65bf290c73349b8d5582794ff57ddd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8834e7b37efddb687ba5d9e892f334af90c648c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d2c8bff40c80b84ebaaf473a070546ea2dd12d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ee6dd7aeb37ac82a3032ae0dceb1f043abb8394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95850df34ce25c63adadcc6590b4e9910d425a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x96dbef5f1d39b1f231184fb6794b0758d7353d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x977953e10c2084c5acdbeb5eed18ff610e7d8441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9c3c6ffc8e4fb171c2d634da2f4e867c50467055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa2bf301a4ed13b2c948b234a0221aeb521fff532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa735adee634568cfc82f32487fdf033657ceff37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa88d7e78cd7585f391ba3614e2b246f2e6a1fe9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab259f3f2d88e38d84bfc99e111a49292caf7fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xadad4c44183248629dc3d68b3153ce81df8ab276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb43182f939b9fed90aca092373af92d350db4c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb54a454cd4628708309e07b069faebfc0512df9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba231602d30656dbd3227cd6ca928d1f136296cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd51d98212ec3523f170b3780d04b3c05fe7ecb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc1eb68af34c346651da738f693b6fc38b2442534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc457f3d854d0ede9b9d9f09d69ed99ac33ca0a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5eb7977c73ff5334774cf4bddab22c8365e7809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc88b9cadc3197ea096ac4fb660d662a363c5e85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca1fee73b00c221966e5f25226402146bdffe259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0df5a352d74a746754c592a6277c9060a7c9c87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd239701de1277d659d119679280c82b1aac26082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd26659a10837a6e3a87faf5a1065929981298679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4ecb93a955625a1b239d7a000991da848040655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd6dd460eb0a6669b314c57b1c5254d52a32b0ca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd75fbf84d9162d6b52bafb298aafd1c715f6ba0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7b745313cea9728cfc107e8f29d0562669932be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7ba31d2798aa59a6bbf16f9951d9faa21121013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde182bc1f581fd2e9e7f64c8e42082a7aa4bac53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef6506b9339fcee7dd93d2380ec0ef172760a999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf0ca3ff96b9041da4b29d09cdae7fcbdfb71f67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfdaebd06abb696f9e3fab65d8aecf6f63c0d0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfff711aa93d1ad8cf58a212eab2ff097c8cd174a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387493 | `0x0fa85c39c96a9172ccca7f84ce68e08a2bb971c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387494 | `0x21863cc84c4abbdf65b0d0eaea4ce3520262ce43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3956feaef1821be55b66ebb707b4abcefd84c0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x576e74c0e1adb96b58f2237510853bc7d2561ebe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387495 | `0x62b86b6274dfa4cc16bed9995e302a56d18891e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387496 | `0x968c9718f420d5d4275c610c5c217598a6ade9f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb146803913cbfaa66c04e7fefc288af95c05af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc9dd40ba36b8eaedb49ca42266872a8dee4bd6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeace965860d5a33695a2d08f9fa8c4118a38712f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2f7e2b6334eec33409f00e1da35b303a6ac8970` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387497 | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 114
- Live contracts: 0
- Unknown liveness contracts: 114
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=114

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x02826bda00324c144d55a4d145ff4886a5b85bac` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x11ae6a16bb1351ea5fa2efeadc434f301269f024` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x131fb74c6fede6d6710ff224e07ce0ed8123f144` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x142bc5dd0d0dfb9134e9cdd7c80c58dabd50d7fc` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x1805fa08de2bc7087ceb9a7d903faa5414c3a1d4` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x1a047380b29fd8f6bfc8363f653114b15129c708` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x1dcd35cfff8a9b44aecc4087c7847fb7a5be56f9` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x2b16be3cacaea56a6fbe613031c0f6b641df828e` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x3552dc4cb1637a253ff89c33fe6ebcc0c7983595` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x38c91a83de84c04bc25471a776e5f792e803543c` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x3f6d3189fe71a4b19365974aef02a0884b636039` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x43eb5dc8a1426dcd6029010adee7b62b73ac2918` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x4810fa5942a322c7bd30519ed3ebe732066c3db3` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x51e38c6c1c19f9783aee0a7617449d9b1e3a08ae` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x5224e15fa3e15f91a1fa5b7f3d278f9f395ab821` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x56246e83f3148b05ce2d90b44fbb4e9fa9eaf5bb` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x5d269d952be939751db1d5f873e36f591ed353e4` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x5fc3dd434911acda2b4baf3dddf68a17287939e0` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x67682b30393e46e871410df80556b65c5e9de6a8` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x79a631735dcb5c126ef889004ecc2ca981f98088` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x85a6fa2802d66d3b2b3842129f2c6511eafe843d` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x9956edea60ce11f464359d301a5bc2fa186ca857` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x99f790ada7fa1bdc2a6b976293273ee51f10a10e` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x9eb19cc85b711aedf288fe8a56dc5d3ace1d0d3a` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xa035dfd0d16f238493b374a1743b77448d9c8524` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xa44e06f978ccefcf4e27a21c8c139f10156db09c` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xa58811d050c26f3effb850c9e27b44eb0ec81bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xaeb9ea24f71dc574fa9a29a069ebe1def3606571` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xb0730e7fa03c4198174f3f44f6f33f9f59cbd0df` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xb46b1560db488dc11dfdc1dad2d4488cbcd4a315` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xb98a6be6d191b0c5976177c9598bf1db6d46fde9` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xbcbcf05f2f77e2c223334368162d88f5d6032699` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xc6d956404014ebcf871846779e0846e526ed2f8a` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xca0ace8a2eb862b323be946993f5cfa4fe9653aa` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xca2bd134caf0b89aaba60360e3e35389429031a7` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xd0673cba84424d646ea1e5571c507a0be79523bf` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xd2328af8cc08b3df7705c568466541473cfd65f0` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xddaa6ee776b701a7729d72bbd0d4fbe4bbb66476` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xe94b60e999da2a3954ab5a6e8c784e00538e4a06` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xeb00be9187cee29db32c4c4913edf6b43421a06c` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xef13b331824a3115e82f1ff92b6cb223c53410f6` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xf4db9926ae02469d730a25ad7422764bbd45d36f` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xf57882cf186db61691873d33e3511a40c3c7e4da` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x016d4eb10fbce28010fde53c68c016b611b1aa0a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x02e28c13bd1d42d6349c78e316c479ffa47e4d81` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x0c404a675eb1f3ae1ac282b4893e82301b9212df` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x239d00254d3c340f2db8a7a6966b1b0b49a41459` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x2604899d00a324eab1b68866069e1de4b7f203f0` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x2c60484a0481af7ef5c4b713f08b4919cb27df78` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x3304d8c37c8f1ebeb0d2ea11d1a1af685081dba5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x33c56acc1c9c504eac780cd3bea2e6529cbc5b6c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x35dde03381ba1dd3762466a69fc3d43d8432e02a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x36bbf6135551d18cc93d4d1e98463b25da215461` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x3bb1f6fb180286f40509b73a3487459801e58924` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x3c13515938ec99c082c3f6335bccc633fed366da` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x49a0f4c442970ed6651b24d7211f5575e438db9e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x4e98206517d6b670885b1abf5be783e2a381595b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x4f393b1628cbcdaa8201e8f3662be694013abf8a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x516e63b87e08231e75472411986653f1d67360b6` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x5713b9f59d16c8e9d270569a10925aa487633624` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x5c8a389583b51df0ec2f1a01e6ef1114667be28b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x5e204bf6ef5cd2594dfeb131608a8770d6a1a907` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x668e861540015dfb197e8c00488495f8bdbe6933` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x68c5532c0b57bd57baf62d410e6a7d392268880b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x6a9a52c8e17aead4f11de66282ba6440818cf33e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x6edbae426eed6fc5e8318583b2500956fc420096` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x71bb67179dc6378cca27f5e4140af4e0a70af6f2` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x74b782a61f82e5ffd3d2ed2072f64385d0a83565` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x75c72a4c958d1cc1a1670833df81bdcca2c60d5c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x75dfe743689cd0222ecd9d69a55a23a2d7d0344f` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x792d139a449aba6c5c6079a5237b4ff0ddfd3a7f` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x7d481764265a136e535ad34212863a57aedeaf4f` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x7fcd5370be47cec0fc0a7fe91230432dd34ddea1` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0x81a9a498a65bf290c73349b8d5582794ff57ddd2` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x8834e7b37efddb687ba5d9e892f334af90c648c0` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x8d2c8bff40c80b84ebaaf473a070546ea2dd12d7` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x8ee6dd7aeb37ac82a3032ae0dceb1f043abb8394` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x95850df34ce25c63adadcc6590b4e9910d425a05` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x96dbef5f1d39b1f231184fb6794b0758d7353d80` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x977953e10c2084c5acdbeb5eed18ff610e7d8441` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x9c3c6ffc8e4fb171c2d634da2f4e867c50467055` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xa2bf301a4ed13b2c948b234a0221aeb521fff532` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xa735adee634568cfc82f32487fdf033657ceff37` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xa88d7e78cd7585f391ba3614e2b246f2e6a1fe9b` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xab259f3f2d88e38d84bfc99e111a49292caf7fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xadad4c44183248629dc3d68b3153ce81df8ab276` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xb43182f939b9fed90aca092373af92d350db4c27` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xb54a454cd4628708309e07b069faebfc0512df9a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xba231602d30656dbd3227cd6ca928d1f136296cc` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xbd51d98212ec3523f170b3780d04b3c05fe7ecb5` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xc1eb68af34c346651da738f693b6fc38b2442534` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xc457f3d854d0ede9b9d9f09d69ed99ac33ca0a9e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xc5eb7977c73ff5334774cf4bddab22c8365e7809` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xc88b9cadc3197ea096ac4fb660d662a363c5e85c` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xca1fee73b00c221966e5f25226402146bdffe259` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xd0df5a352d74a746754c592a6277c9060a7c9c87` | non_address_book | unknown | unknown | unverified | n/a | `0x79f5dc19bc96ec1db776d39535bde169e67e33f4` |
| unverified unclassified | UnnamedContract<br>`0xd239701de1277d659d119679280c82b1aac26082` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xd26659a10837a6e3a87faf5a1065929981298679` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xd4ecb93a955625a1b239d7a000991da848040655` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xd6dd460eb0a6669b314c57b1c5254d52a32b0ca4` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xd75fbf84d9162d6b52bafb298aafd1c715f6ba0a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xd7b745313cea9728cfc107e8f29d0562669932be` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xd7ba31d2798aa59a6bbf16f9951d9faa21121013` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xde182bc1f581fd2e9e7f64c8e42082a7aa4bac53` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xef6506b9339fcee7dd93d2380ec0ef172760a999` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xf0ca3ff96b9041da4b29d09cdae7fcbdfb71f67e` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xfdaebd06abb696f9e3fab65d8aecf6f63c0d0dc4` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xfff711aa93d1ad8cf58a212eab2ff097c8cd174a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x3956feaef1821be55b66ebb707b4abcefd84c0a2` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0x576e74c0e1adb96b58f2237510853bc7d2561ebe` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xcb146803913cbfaa66c04e7fefc288af95c05af1` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xcc9dd40ba36b8eaedb49ca42266872a8dee4bd6a` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xeace965860d5a33695a2d08f9fa8c4118a38712f` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |
| unverified unclassified | UnnamedContract<br>`0xf2f7e2b6334eec33409f00e1da35b303a6ac8970` | non_address_book | unknown | unknown | unverified | n/a | `0x2c9bc901f39f847c2fe5d2d7ac9c5888a2ab8fcf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://drive.google.com/file/d/1RTwAYuPBmQCVrmor-iZ9dFAGlCkdMtdR/view?usp=sharing) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17460] DL audit link — matched: Contracts extracted from findings targets and mentions. No explicit scope table, but contracts are clearly audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | PoolTemplate | unmatched — not counted | — | Target in findings PVE-001, PVE-005 | no |
| DL audit link | IndexTemplate | unmatched — not counted | — | Target in finding PVE-002 | no |
| DL audit link | Vault | unmatched — not counted | — | Target in findings PVE-003, PVE-004 | no |
| DL audit link | InsureToken | own contract | InsureToken (selected) `0xd83ae04c9ed29d6d3e6bf720c71bc7beb424393e` — deployed 2022-02-22 05:43:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | VestingEscrow | unmatched — not counted | — | Target in finding PVE-008 | no |
| DL audit link | VotingEscrow | unmatched — not counted | — | Target in finding PVE-009 | no |
| DL audit link | LiquidityGauge | unmatched — not counted | — | Mentioned in finding PVE-008 as containing similar issue | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
