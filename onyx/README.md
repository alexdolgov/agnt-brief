# Agentic Audit Brief: Onyx

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Onyx (`onyx`)
- Website: [https://app.onyx.org/](https://app.onyx.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 41 unique implementations (64 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $48,123,511.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Onyx. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum. Structural roles: 5 core, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), infra (1)
- Contract kinds: contract (6)
- Detected standards: ownable (3), erc1967proxy (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CHNGovernance (`0xdec2f31c3984f3440540dc78ef21b1369d4ef767`, chain 1)
- CHNStaking (`0x23445c63feef8d85956dc0f19ade87606d0e19a9`, chain 1)
- MasterChef (`0x3fa642c0bbad64569eb8424af35f518347249216`, chain 1)
- OnyxDAORegistry (`0x69024042eaac3aea4213ca8e6986804839a08201`, chain 1)
- OnyxDAORegistryProxy (`0xf161c603ed58e81694765fde7095184d1c52a6bb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 36 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 5 of 41 unique; 36 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 41
- Raw deployments: 64
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CHNGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x019f9485bc668e890cf3350406186d6d7b8bd2c8`; ethereum `0xa92c5d33356a26e8e200afb89f86e8356b6095f9` | ⚠️ Unaudited |
| CHNGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266954 | `0xdec2f31c3984f3440540dc78ef21b1369d4ef767` | ⚠️ Unaudited |
| CHNReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ca9caae31602d0312ebf6466c9dd57fca5da93` | ⚠️ Unaudited |
| CHNStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266952 | `0x23445c63feef8d85956dc0f19ade87606d0e19a9` | ⚠️ Unaudited |
| CHNTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266951 | `0x08edf0f2af8672029eb445742b3b4072c6158df3` | ⚠️ Unaudited |
| CHNTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e46ae47e6006cb00abd6943136044601dc94c58` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4345d308f02d1beb92475bda25e7c62be288478e`; ethereum `0x7d61ed92a6778f5abf5c94085739f1edabec2800` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4021047a36ac60b40316f630307cd4791cdaed52`; ethereum `0xf14ab129f30f939e7e5a7f21d8d15feb8216ff4e` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266953 | `0x3fa642c0bbad64569eb8424af35f518347249216` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff42a051129a1313f5c907539630238e0c9c233b` | ⚠️ Unaudited |
| NFTLiquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x323398de3c35f96053d930d25fe8d92132f83d44`; ethereum `0xf10bc5be84640236c71173d1809038af4ee19002` | ⚠️ Unaudited |
| OErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | ethereum | n/a | 9 deployments: ethereum `0x1933f1183c421d44d531ed40a5d2445f6a91646d`; ethereum `0x1961ad247b47f4f2242e55a0e5578c6cf01f8d12`; ethereum `0x307269cf921213bd2e16b22dcd4401aec21d00bf`; ethereum `0x4476175752a4947de953e26b40fc8c1e145fea82`; ethereum `0x830dacd5d0a62afa92c9bc6878461e9cd317b085`; ethereum `0x8f35113cfaba700ed7a907d92b114b44421e412a`; ethereum `0x9dcb6bc351ab416f35aeab1351776e2ad295abc4`; ethereum `0xbced4e924f28f43a24ceedec69ee21ed4d04d2dd`; ethereum `0xfee4428b7f403499c50a6da947916b71d33142dc` | ⚠️ Unaudited |
| OErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0c19d213e9f2a5cbaa4ec6e8eac55a22276b0641`; ethereum `0x11b258a1c5ec962f43ab523be9b8fa317cb2eb69`; ethereum `0x7497e945f23192d1dc3095409837f67927170f2d`; ethereum `0xc0534bb221c0963b213f417585e3ca581993793a`; ethereum `0xf52459e8bc708d55400c167e0d77ed49641226d3` | ⚠️ Unaudited |
| OErc721Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x3f2dd7adbcd464d5b0a766f7eb367bd20a249691`; ethereum `0x5bcc74bd3cf4e2665674cd79a68f87d2d3fd6df0`; ethereum `0x7ab16ed27ab8b22cb625db55c0e58521969cb091`; ethereum `0x921ce565c85ae252741dcdbf26423ce93d921c94` | ⚠️ Unaudited |
| OEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x714bd93ab6ab2f0bcfd2aeaf46a46719991d0d79` | ⚠️ Unaudited |
| OnyxDAORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e8cf9bead36ee59a63a16672d024888b057f864`; ethereum `0x61cdf42fbcc99bccafb105378c34cc6448b57131` | ⚠️ Unaudited |
| OnyxDAORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19806414bc403fd923fc3bde85009048b4d01f5f`; ethereum `0xb44ae12a89111be6986aacd60c2239af896205a2` | ⚠️ Unaudited |
| OnyxDAORegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x590e5b749c05deec397f4aa67c92181c69dba55c`; ethereum `0x81ede7712912ddc12daecb151b7ed1f48560d3a5` | ⚠️ Unaudited |
| OnyxDAORegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-266955 | 2 deployments: ethereum `0x69024042eaac3aea4213ca8e6986804839a08201`; ethereum `0xf161c603ed58e81694765fde7095184d1c52a6bb` | ⚠️ Unaudited |
| OnyxDAORegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb90c593e0bc8395a53087d8c558f5563df3b31` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67911bef892d73298283412468c94a30fe9910dc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00177ac867e05ec9209a70be32a79157d065e6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0707ddf430c956a7642ad543d462752b32a04ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07f1104a28a6d805a847ca8ec57d1a3a9f430fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10e9f660ed21e662e7f3fb4a49b0bd9b219bef95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167d43d1d60de2320b5e143f9c6a058092a913c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23264394923e4aeb990234180c37bf757667c6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8ccc4829c0323b470357cffdad492c789f9315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f0c2f474766a8c79d1228a1b5dd28a82f41067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3caa4581e7ba1af2607e0198af4e4c208f09c98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50752f7988d0195d4d5fb09a1a22b8354b5a8c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58e9a7e38fd7094ae086b134b74ac7b9b8ffebba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1035ca5f4e00f37c2e33e4d7fe6611ade76a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x615b81747e819e0db25c13570d5da45ef9bc81b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64b59bc9ac590ae050353a9f21875e35c48ea4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716f4586941cfb4704f947cdaa2b2cb6432397ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8635f49481a90ded18e8d0eb374028c4b39e700f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c0c61f5ca34f5d471a89ac350bbaf8dd48b3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb444317d808b5cffe66495920d40a35e7d247cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdf10130c75d42a3880ae521734eaa8631ac2905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda2445f1ca60bc2c739a96298746adbb6706f011` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 41
- Live contracts: 3
- Unknown liveness contracts: 38
- Source-verified contracts: 39
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=10, exact address book overlap=1, source verified unclassified=28, unverified unclassified=2

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | Comptroller<br>`0x4345d308f02d1beb92475bda25e7c62be288478e` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | JumpRateModelV2<br>`0x4021047a36ac60b40316f630307cd4791cdaed52` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | Maximillion<br>`0xff42a051129a1313f5c907539630238e0c9c233b` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | NFTLiquidationProxy<br>`0x323398de3c35f96053d930d25fe8d92132f83d44` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | OErc20Delegator<br>`0x0c19d213e9f2a5cbaa4ec6e8eac55a22276b0641` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | OErc20Delegator<br>`0x1933f1183c421d44d531ed40a5d2445f6a91646d` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | OErc721Delegator<br>`0x3f2dd7adbcd464d5b0a766f7eb367bd20a249691` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | OEther<br>`0x714bd93ab6ab2f0bcfd2aeaf46a46719991d0d79` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | WhitePaperInterestRateModel<br>`0x67911bef892d73298283412468c94a30fe9910dc` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | JumpRateModelV2<br>`0xf14ab129f30f939e7e5a7f21d8d15feb8216ff4e` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | NFTLiquidation<br>`0xf10bc5be84640236c71173d1809038af4ee19002` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegate<br>`0x9dcb6bc351ab416f35aeab1351776e2ad295abc4` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0x11b258a1c5ec962f43ab523be9b8fa317cb2eb69` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0x1961ad247b47f4f2242e55a0e5578c6cf01f8d12` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0x307269cf921213bd2e16b22dcd4401aec21d00bf` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0x4476175752a4947de953e26b40fc8c1e145fea82` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0x7497e945f23192d1dc3095409837f67927170f2d` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0x830dacd5d0a62afa92c9bc6878461e9cd317b085` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0x8f35113cfaba700ed7a907d92b114b44421e412a` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0xbced4e924f28f43a24ceedec69ee21ed4d04d2dd` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0xc0534bb221c0963b213f417585e3ca581993793a` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0xf52459e8bc708d55400c167e0d77ed49641226d3` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc20Delegator<br>`0xfee4428b7f403499c50a6da947916b71d33142dc` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc721Delegate<br>`0x921ce565c85ae252741dcdbf26423ce93d921c94` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc721Delegator<br>`0x5bcc74bd3cf4e2665674cd79a68f87d2d3fd6df0` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | OErc721Delegator<br>`0x7ab16ed27ab8b22cb625db55c0e58521969cb091` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | source verified unclassified | Unitroller<br>`0x7d61ed92a6778f5abf5c94085739f1edabec2800` | non_address_book | unknown | unknown | verified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58e9a7e38fd7094ae086b134b74ac7b9b8ffebba` | non_address_book | unknown | unknown | unverified | n/a | `0xa8738f54c6c31ea559565a468056df233e6f4c12` |
| ethereum | contamination review | CHNTimelock<br>`0x08edf0f2af8672029eb445742b3b4072c6158df3` | project_anchor | unknown | live | verified | n/a | `0xfde1cb0c3522451705d9c64a74994801fe8af4cd` |
| ethereum | source verified unclassified | CHNGovernance<br>`0x019f9485bc668e890cf3350406186d6d7b8bd2c8` | non_address_book | unknown | unknown | verified | n/a | `0xfde1cb0c3522451705d9c64a74994801fe8af4cd` |
| ethereum | source verified unclassified | CHNGovernance<br>`0xa92c5d33356a26e8e200afb89f86e8356b6095f9` | non_address_book | unknown | unknown | verified | n/a | `0xfde1cb0c3522451705d9c64a74994801fe8af4cd` |
| ethereum | source verified unclassified | CHNTimelock<br>`0x8e46ae47e6006cb00abd6943136044601dc94c58` | non_address_book | unknown | unknown | verified | n/a | `0xfde1cb0c3522451705d9c64a74994801fe8af4cd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36f0c2f474766a8c79d1228a1b5dd28a82f41067` | non_address_book | unknown | unknown | unverified | n/a | `0xfde1cb0c3522451705d9c64a74994801fe8af4cd` |
| ethereum | exact address book overlap | OnyxDAORegistryProxy<br>`0xf161c603ed58e81694765fde7095184d1c52a6bb` | project_anchor | unknown | live | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |
| ethereum | source verified unclassified | OnyxDAORegistry<br>`0x590e5b749c05deec397f4aa67c92181c69dba55c` | non_address_book | unknown | unknown | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |
| ethereum | source verified unclassified | OnyxDAORegistry<br>`0x61cdf42fbcc99bccafb105378c34cc6448b57131` | non_address_book | unknown | unknown | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |
| ethereum | source verified unclassified | OnyxDAORegistry<br>`0x69024042eaac3aea4213ca8e6986804839a08201` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |
| ethereum | source verified unclassified | OnyxDAORegistry<br>`0xb44ae12a89111be6986aacd60c2239af896205a2` | non_address_book | unknown | unknown | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |
| ethereum | source verified unclassified | OnyxDAORegistryProxy<br>`0x0e8cf9bead36ee59a63a16672d024888b057f864` | non_address_book | unknown | unknown | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |
| ethereum | source verified unclassified | OnyxDAORegistryProxy<br>`0x19806414bc403fd923fc3bde85009048b4d01f5f` | non_address_book | unknown | unknown | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |
| ethereum | source verified unclassified | OnyxDAORegistryProxy<br>`0x81ede7712912ddc12daecb151b7ed1f48560d3a5` | non_address_book | unknown | unknown | verified | n/a | `0xff485c5389aa892d21bc90c64b7db945ea0a9b7e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [XCN-token-Certik-Audit-2022-03-06.pdf](https://github.com/chain/chain-token/blob/main/XCN-token-Certik-Audit-2022-03-06.pdf) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11640] XCN-token-Certik-Audit-2022-03-06.pdf — no match: Only one contract in scope: XCN-Token.sol. Audit date from delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| XCN-token-Certik-Audit-2022-03-06.pdf | XCN-Token | unmatched — not counted | — | listed in Audit Scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xdec2f31c3984f3440540dc78ef21b1369d4ef767` | CHNGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x23445c63feef8d85956dc0f19ade87606d0e19a9` | CHNStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08edf0f2af8672029eb445742b3b4072c6158df3` | CHNTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fa642c0bbad64569eb8424af35f518347249216` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x69024042eaac3aea4213ca8e6986804839a08201` | OnyxDAORegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [11640] XCN-token-Certik-Audit-2022-03-06.pdf

Fork inheritance lineage and inherited audits are included when available.
