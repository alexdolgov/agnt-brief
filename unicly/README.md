# Agentic Audit Brief: Unicly

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Unicly (`unicly`)
- Website: [https://www.unic.ly/](https://www.unic.ly/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 56 unique implementations (80 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $352,634.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Unicly. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Unic (`0x94e0bab2f6ab1f19f4750e42d7349f2740513ad5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 55 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 1 of 56 unique; 55 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/40
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 56
- Raw deployments: 80
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 2.5% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Unic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395244 | `0x94e0bab2f6ab1f19f4750e42d7349f2740513ad5` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b75fef6a6521ae18393786a6927560365d5d9b` | ⚠️ Unaudited |
| AdvancedStakingResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d53f04b62f6a159c39dfc69e82dca1e2128c05c` | ⚠️ Unaudited |
| AdvStakingProxyFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e30b5fa7bfa8d51a4668284c763af112e664031` | ⚠️ Unaudited |
| AuctionHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd91ee91fd0f3fb15c9b9dd47f156396aa8c7c84b` | ⚠️ Unaudited |
| ConverterGovernorAlphaConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9baf76cc7c0eed94d2e7049f9c6df42b0cbee4ea` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8bf26a3bffd9072ce12c7bfd5e3b1fce33768d2d`; ethereum `0xb86b0daa5cabd74778492cc880d232c969f19c12` | ⚠️ Unaudited |
| KittyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f2860e7c0aaaea4cdbe322dde31ed1919681d` | ⚠️ Unaudited |
| LockedLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3947215350049b787177bfa90bce52856caf341e`; ethereum `0xfe0e8c60891e221cd7b36ae50a64b6b21257c3e9` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0ae6abeaf3036097717e8d74fd8e8789eb5f5662`; ethereum `0x2ff76442c62f1aa98a31f1362873ab6062939b5a`; ethereum `0x3a76a51f2a6b99fe13ce2b7a501584467e8b5437`; ethereum `0xf324c61e1cca65c1f545a9360c7846f8f18c7ef5` | ⚠️ Unaudited |
| PointFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa87b9878c62fdf011c0cbef76dafacf3280907af`; ethereum `0xd3c41c85be295607e8ea5c58487ec5894300ee67` | ⚠️ Unaudited |
| PointShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x01c4efb5d586c4d27bff2191d306f2c2c7d569cb`; ethereum `0xcdcc535503cba9286489b338b36156b4b75008f6` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e5cdf514f1b68a7263f111c35a681308b9b69e7` | ⚠️ Unaudited |
| ProxyCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63973a8b5b2b3d496b32395f5c9f256399ef177` | ⚠️ Unaudited |
| ProxyFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f2f77dcf34c55c119a27e74249f4f234934d1c8`; ethereum `0xcfcec7e4ff52004e7e7a0f36fd1c639b1f448dd2` | ⚠️ Unaudited |
| ProxyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900e5839c7bb3878f67c2c4e817ffca6cd2e477e` | ⚠️ Unaudited |
| RewardXUnicPeriodically | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd99fce61de02656796b1e6da6d2a13831c7d0e0b`; ethereum `0xf6e1f020316e015ecfef62c5513a0152ef735be7` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e3497f72440aa93b5149516225e342a29ff5ee4`; ethereum `0xf33079d70dbb83b2886d726dbe761671f84bc889` | ⚠️ Unaudited |
| Unic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x719c3abf7c2435be34ed479b98db85342d107755` | ⚠️ Unaudited |
| UnicConverterGovernorAlphaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b071f83bcad30d08329824ad1b4c719dcf608d6` | ⚠️ Unaudited |
| UnicConverterProxyTransactionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf904eaedd72ee667ab1dfda01091a1410a3125ee` | ⚠️ Unaudited |
| UnicFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e30235a3c556ff509cd4f71ad6168ec60c89b28`; ethereum `0x8696bde5cc30545b3b049f3529abbfb2b1e0c007` | ⚠️ Unaudited |
| UnicFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2bf120458d1270d0f666cc75a70e8379270bc6e3`; ethereum `0x4a25e4df835b605a5848d2db450fa600d96ee818` | ⚠️ Unaudited |
| UnicGallery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79161df977aa152152ba8d07f701a14376f8207e`; ethereum `0xa62fb0c2fb3c7b27797dc04e1fea06c0a2db919a` | ⚠️ Unaudited |
| UniclyXUnicVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07306acccb482c8619e7ed119daa2bdf2b4389d0` | ⚠️ Unaudited |
| UnicPumper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x9c042f6de5e08e64a00575c692e51f78455dba67`; ethereum `0x9e5b1f637a03976f2c472265806aa1bcc969ca85`; ethereum `0xc763dc7c46a7ae03ba99bb87070b126a2a2afa94`; ethereum `0xfce761d7e0d99300897de97025558670bb269dd2` | ⚠️ Unaudited |
| UnicStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ebb6fb6cd33355e6d6a863e89a679f1e5b47b6b`; ethereum `0x49c9e24175cc717ca672d92ce8dee682814f52a5` | ⚠️ Unaudited |
| UnicStakingERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ce18c5e0c3d39f44e9292a9c058048ae87b1816`; ethereum `0x9cdddaaeba5b03fed3d5eb615168564e3be713ec`; ethereum `0xc750ef837d4750095c32dfeeebc6f785b99e04c5`; ethereum `0xcfd846274c32ba6539ba2554e28037d2ed9e4b61` | ⚠️ Unaudited |
| UnicStakingRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc6c4101539cda931484096b916414f9fc460d772`; ethereum `0xebe04cecde78566de2cfc76ef3c19fe75a944699` | ⚠️ Unaudited |
| UnicStakingRewardManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7df41afad3119967b8ffe03ce3bc620ed17c5469`; ethereum `0x94249db06d5eca09d444100f153eb7db4ff80b60` | ⚠️ Unaudited |
| UnicStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xafd8df0bbace3ed25aa1bafd81db014a9f0c2409`; ethereum `0xbebe15b9c3a3246a5b9d1a5b0c38a4b4b3c1cab4` | ⚠️ Unaudited |
| UnicStakingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7082ba933666fccc3dd0ce60c9dad9c066f7aee` | ⚠️ Unaudited |
| UnicStakingV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33afbe764b223dd138efe3976cc9a32344cf7e0` | ⚠️ Unaudited |
| UnicStakingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7438965c266519f21aca5cc7519fb657fa99afd3` | ⚠️ Unaudited |
| UnicStakingV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdf7b2d19b9ce76422147a17457f379830efba56d`; ethereum `0xe29ae1472715b1e73492a411cd010710bb1e3e2c` | ⚠️ Unaudited |
| UnicStakingVotes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4788eff8a1771239a3a38cd9aed02bd7ea8af729` | ⚠️ Unaudited |
| UnicSwapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbacc776b231c571a7e6ab7bc2c8a099e07153377` | ⚠️ Unaudited |
| UnicSwapV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e90bc9f3b95cdb69f48c7bfdd0ede1386b135a` | ⚠️ Unaudited |
| UnicVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3fe06efe68762be5e1ab51da1c586c6362e2aa7` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe1be2e1d9a98b22661c04034447777bfc915cf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce5251d47aa72d2d1dc849b1bcce14d2467d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e8b71881b7c800beabc62b8075850b2fcf7851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2499d1d165833e6f69ac4b5b34973df2dec43721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e816615834ba06a150070ec318313113e1c8f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3547b2f1d40d5bc2ebef8420214a9355c7850d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b967c6f61958cd71cdfd63e0905496cb679fe6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68187ae6fb2c63098452ac4723cd31551d697aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbccfd5a0a847256c059cc0d6439cd69ff774fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f33725fad025eb22a31e10ca34936ab106d9a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb945dc2c07a14b1c02e0579cb1c645bc5c9ea499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcae5bfec4680450e9ddb3e52eb6722b1e05b16fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce924a7ac1641989b63bdd2ce96bda55e42d3164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcecf73a88c175a2cdcb186230de8f33c1942aeec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe111b76d6c1316313d4b491887b4cdb2163c07b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82f701799cb794fb89c7cfb682730b8981f81c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06d5aa7a3bb23a4ebca0ad91ec5bfd34b000c1e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 79
- Live contracts: 0
- Unknown liveness contracts: 79
- Source-verified contracts: 63
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=18, contamination review=3, source verified unclassified=42, unverified unclassified=16

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AdvStakingProxyFarmer<br>`0x2e30b5fa7bfa8d51a4668284c763af112e664031` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | GovernorAlpha<br>`0x8bf26a3bffd9072ce12c7bfd5e3b1fce33768d2d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | GovernorAlpha<br>`0xb86b0daa5cabd74778492cc880d232c969f19c12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | LockedLP<br>`0x3947215350049b787177bfa90bce52856caf341e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | ProxyCreator<br>`0xa63973a8b5b2b3d496b32395f5c9f256399ef177` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | ProxyFarmer<br>`0x1f2f77dcf34c55c119a27e74249f4f234934d1c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | Timelock<br>`0x1e3497f72440aa93b5149516225e342a29ff5ee4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | Timelock<br>`0xf33079d70dbb83b2886d726dbe761671f84bc889` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | Unic<br>`0x719c3abf7c2435be34ed479b98db85342d107755` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicFactory<br>`0x4e30235a3c556ff509cd4f71ad6168ec60c89b28` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicFactory<br>`0x8696bde5cc30545b3b049f3529abbfb2b1e0c007` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicFarm<br>`0x2bf120458d1270d0f666cc75a70e8379270bc6e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicFarm<br>`0x4a25e4df835b605a5848d2db450fa600d96ee818` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicGallery<br>`0x79161df977aa152152ba8d07f701a14376f8207e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicGallery<br>`0xa62fb0c2fb3c7b27797dc04e1fea06c0a2db919a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicPumper<br>`0x9e5b1f637a03976f2c472265806aa1bcc969ca85` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicPumper<br>`0xc763dc7c46a7ae03ba99bb87070b126a2a2afa94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| candidate review | UnicPumper<br>`0xfce761d7e0d99300897de97025558670bb269dd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| contamination review | AdvancedStakingResolver<br>`0x9d53f04b62f6a159c39dfc69e82dca1e2128c05c` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| contamination review | RewardXUnicPeriodically<br>`0xd99fce61de02656796b1e6da6d2a13831c7d0e0b` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| contamination review | UnicPumper<br>`0x9c042f6de5e08e64a00575c692e51f78455dba67` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | Address<br>`0x30b75fef6a6521ae18393786a6927560365d5d9b` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | AuctionHandler<br>`0xd91ee91fd0f3fb15c9b9dd47f156396aa8c7c84b` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | ConverterGovernorAlphaConfig<br>`0x9baf76cc7c0eed94d2e7049f9c6df42b0cbee4ea` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | KittyWrapper<br>`0x4e1f2860e7c0aaaea4cdbe322dde31ed1919681d` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | LockedLP<br>`0xfe0e8c60891e221cd7b36ae50a64b6b21257c3e9` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | MockERC20<br>`0x0ae6abeaf3036097717e8d74fd8e8789eb5f5662` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | MockERC20<br>`0x2ff76442c62f1aa98a31f1362873ab6062939b5a` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | MockERC20<br>`0x3a76a51f2a6b99fe13ce2b7a501584467e8b5437` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | MockERC20<br>`0xf324c61e1cca65c1f545a9360c7846f8f18c7ef5` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | PointFarm<br>`0xa87b9878c62fdf011c0cbef76dafacf3280907af` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | PointFarm<br>`0xd3c41c85be295607e8ea5c58487ec5894300ee67` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | PointShop<br>`0x01c4efb5d586c4d27bff2191d306f2c2c7d569cb` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | PointShop<br>`0xcdcc535503cba9286489b338b36156b4b75008f6` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | ProxyAdmin<br>`0x6e5cdf514f1b68a7263f111c35a681308b9b69e7` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | ProxyFarmer<br>`0xcfcec7e4ff52004e7e7a0f36fd1c639b1f448dd2` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | ProxyToken<br>`0x900e5839c7bb3878f67c2c4e817ffca6cd2e477e` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | RewardXUnicPeriodically<br>`0xf6e1f020316e015ecfef62c5513a0152ef735be7` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x94249db06d5eca09d444100f153eb7db4ff80b60` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xe29ae1472715b1e73492a411cd010710bb1e3e2c` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicConverterGovernorAlphaFactory<br>`0x9b071f83bcad30d08329824ad1b4c719dcf608d6` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicConverterProxyTransactionFactory<br>`0xf904eaedd72ee667ab1dfda01091a1410a3125ee` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UniclyXUnicVault<br>`0x07306acccb482c8619e7ed119daa2bdf2b4389d0` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStaking<br>`0x1ebb6fb6cd33355e6d6a863e89a679f1e5b47b6b` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStaking<br>`0x49c9e24175cc717ca672d92ce8dee682814f52a5` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingERC721<br>`0x2ce18c5e0c3d39f44e9292a9c058048ae87b1816` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingERC721<br>`0x9cdddaaeba5b03fed3d5eb615168564e3be713ec` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingERC721<br>`0xc750ef837d4750095c32dfeeebc6f785b99e04c5` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingERC721<br>`0xcfd846274c32ba6539ba2554e28037d2ed9e4b61` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingRewardManager<br>`0xc6c4101539cda931484096b916414f9fc460d772` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingRewardManager<br>`0xebe04cecde78566de2cfc76ef3c19fe75a944699` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingRewardManagerV2<br>`0x7df41afad3119967b8ffe03ce3bc620ed17c5469` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingV2<br>`0xafd8df0bbace3ed25aa1bafd81db014a9f0c2409` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingV2<br>`0xbebe15b9c3a3246a5b9d1a5b0c38a4b4b3c1cab4` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingV3<br>`0xf7082ba933666fccc3dd0ce60c9dad9c066f7aee` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingV4<br>`0xb33afbe764b223dd138efe3976cc9a32344cf7e0` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingV5<br>`0x7438965c266519f21aca5cc7519fb657fa99afd3` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingV6<br>`0xdf7b2d19b9ce76422147a17457f379830efba56d` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicStakingVotes<br>`0x4788eff8a1771239a3a38cd9aed02bd7ea8af729` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicSwapV2Factory<br>`0xbacc776b231c571a7e6ab7bc2c8a099e07153377` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicSwapV2Router02<br>`0xe6e90bc9f3b95cdb69f48c7bfdd0ede1386b135a` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | UnicVester<br>`0xf3fe06efe68762be5e1ab51da1c586c6362e2aa7` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| source verified unclassified | Zap<br>`0x3fe1be2e1d9a98b22661c04034447777bfc915cf` | non_address_book | unknown | unknown | verified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x21ce5251d47aa72d2d1dc849b1bcce14d2467d1b` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x22e8b71881b7c800beabc62b8075850b2fcf7851` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x2499d1d165833e6f69ac4b5b34973df2dec43721` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x2e816615834ba06a150070ec318313113e1c8f0b` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x3547b2f1d40d5bc2ebef8420214a9355c7850d50` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x4b967c6f61958cd71cdfd63e0905496cb679fe6c` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x68187ae6fb2c63098452ac4723cd31551d697aec` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x7bbccfd5a0a847256c059cc0d6439cd69ff774fd` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0x7f33725fad025eb22a31e10ca34936ab106d9a08` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0xb945dc2c07a14b1c02e0579cb1c645bc5c9ea499` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0xcae5bfec4680450e9ddb3e52eb6722b1e05b16fe` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0xce924a7ac1641989b63bdd2ce96bda55e42d3164` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0xcecf73a88c175a2cdcb186230de8f33c1942aeec` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0xe111b76d6c1316313d4b491887b4cdb2163c07b9` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0xe82f701799cb794fb89c7cfb682730b8981f81c7` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |
| unverified unclassified | UnnamedContract<br>`0xf06d5aa7a3bb23a4ebca0ad91ec5bfd34b000c1e` | non_address_book | unknown | unknown | unverified | n/a | `0x92b22149fec19094650f3f99dc141c8f77b03c15` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Unicly Security Audit.pdf](https://github.com/uniclyNFT/Resources/blob/main/Unicly%20Security%20Audit.pdf) | yAudit | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14052] Unicly Security Audit.pdf — matched: Contracts explicitly listed in executive summary and contract files section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Unicly Security Audit.pdf | Converter | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | TimeLock | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | Unic | own contract | Unic (selected) `0x94e0bab2f6ab1f19f4750e42d7349f2740513ad5` — deployed 2021-05-15 02:41:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Unicly Security Audit.pdf | UnicFactory | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | UnicFarm | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | UnicGallery | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | UnicPumper | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
