# Agentic Audit Brief: SashimiSwap

⚠️ Lifecycle status: DEAD - TVL changed 8.6% over 90 days

## Project Overview

- Project: SashimiSwap (`sashimiswap`)
- Website: [https://sashimi.cool/home/swap](https://sashimi.cool/home/swap)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-23T18:43:48.780Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum, heco
- Contract surface: 61 unique implementations (111 raw deployments)
- DeFi Llama TVL: $4,996,070.64
- On-chain TVL (included contracts): $1,441,923.23
- TVL by chain: Ethereum $1,441,923.23

## Project Description

SashimiSwap is a decentralized exchange and lending protocol that combines automated market making (AMM) with money market functionality. It allows users to swap tokens, provide liquidity, and earn yield through staking and lending, while also featuring cross-chain capabilities.

### Architecture

The SashimiToken serves as the central governance and incentive token, interacting with the SashimiBar staking contract and the lending markets controlled by the Unitroller/Comptroller. The UniswapV2Factory manages liquidity pools for token swaps, while ShardTokens represent cross-chain or synthetic assets, and proxy contracts like SLErc20Delegator and CrossChainDelegator provide upgradeability and cross-chain functionality.

## Audit Coverage Summary

- Verified implementations audited: 0/31 (0.0%)
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 61
- Raw deployments: 111
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,441,923.23
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $1,441,923.23 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SLErc20Delegate | token | ethereum | 7 deployments: ethereum [`0x09a7fb...fb36f9`](./contracts/ethereum-1/0x09a7fb5e4499e61c7cf53acb8df7b2a8e4fb36f9/); ethereum `0x2394de...fe013d`; ethereum `0x6ddbcb...84f1b0`; ethereum `0x8ce5aa...6e3af3`; ethereum `0xbbcc16...01b9ea`; ethereum `0xd6ad22...4f2671`; ethereum `0xdddaf1...c86b45` | ⚠️ Unaudited |
| SashimiToken | token | ethereum | [`0xc28e27...b464c2`](./contracts/ethereum-1/0xc28e27870558cf22add83540d2126da2e4b464c2/) | ⚠️ Unaudited |
| SashimiLendingVaultProvider | core_logic | ethereum | 7 deployments: ethereum [`0x194402...dcdfcb`](./contracts/ethereum-1/0x194402bc8adcc11a77873996361efe40e9dcdfcb/); ethereum `0x206d84...b60fcc`; ethereum `0x33a057...5e72cf`; ethereum `0x7bc801...0bce2b`; ethereum `0x7cf056...d8b942`; ethereum `0xd3d3fc...f891be`; ethereum `0xfdedb3...6cf2f4` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | ethereum | [`0x24efe6...72b364`](./contracts/ethereum-1/0x24efe6b87bf1bfe9ea2ccb5a9d0a959c7172b364/) | ⚠️ Unaudited |
| BSashimi | unknown | ethereum | [`0xb133ff...02e9d2`](./contracts/ethereum-1/0xb133ff62a7ad7bb7d9a57177ff2115e6f602e9d2/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | 3 deployments: ethereum [`0x8d7e38...f4aa2b`](./contracts/ethereum-1/0x8d7e38bce4363577bec63fd268557d3b08f4aa2b/); ethereum `0xa1a7a9...ba8c13`; ethereum `0xb5d53e...32d770` | ⚠️ Unaudited |
| CrossChain | unknown | ethereum | 3 deployments: ethereum [`0xa73f04...951a07`](./contracts/ethereum-1/0xa73f042dd65be0d0b01960c144bf89f355951a07/); ethereum `0xdba694...9d95a0`; ethereum `0xf8c227...b1c1d3` | ⚠️ Unaudited |
| DAIInterestRateModelV3 | operational_periphery | ethereum | [`0x6d1d14...234b19`](./contracts/ethereum-1/0x6d1d148330e2678b27d8cd6b4c82f7cb66234b19/) | ⚠️ Unaudited |
| Dipper | unknown | ethereum | [`0x786448...eb2368`](./contracts/ethereum-1/0x786448439d9401e0a8427acf7ca66a5114eb2368/) | ⚠️ Unaudited |
| Exchange | unknown | ethereum | 3 deployments: ethereum [`0x7eaeba...5f10f5`](./contracts/ethereum-1/0x7eaeba417967614c08cd1f406909cdcde65f10f5/); ethereum `0x89ea01...136d04`; ethereum `0xd06f07...82f365` | ⚠️ Unaudited |
| HSashimi | unknown | ethereum | [`0x2544d6...88a287`](./contracts/ethereum-1/0x2544d6d9e665c528a3f46f77e39a224c9888a287/) | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | ethereum | 3 deployments: ethereum [`0x6ab160...132a08`](./contracts/ethereum-1/0x6ab160b2890c0da0f63dfb65739090372b132a08/); ethereum `0x9c8b5d...940ab8`; ethereum `0xc4e8fa...abc2ee` | ⚠️ Unaudited |
| LpBar | unknown | ethereum | 4 deployments: ethereum [`0x9ec7de...a37af1`](./contracts/ethereum-1/0x9ec7de79572312d00f536b856b9e6fe7d0a37af1/); ethereum `0xc8b5b7...4635bd`; ethereum `0xd4f7ca...ef4e10`; ethereum `0xe835db...2766ad` | ⚠️ Unaudited |
| LSashimi | unknown | ethereum | [`0x5e199c...68acbd`](./contracts/ethereum-1/0x5e199c36f9681a32c996e84c464824f6a868acbd/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0x1daed7...51234d`](./contracts/ethereum-1/0x1daed74ed1dd7c9dabbe51361ac90a69d851234d/) | ⚠️ Unaudited |
| Migrator | periphery | ethereum | [`0x295e33...4ac8ae`](./contracts/ethereum-1/0x295e3331a35dd834ee76c305a8c3ed189a4ac8ae/) | ⚠️ Unaudited |
| OpenOraclePriceData | operational_periphery | ethereum | [`0x541200...cfa8d6`](./contracts/ethereum-1/0x541200c72177366cc18b5903c1ee9f75a5cfa8d6/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x45089a...c3c319`](./contracts/ethereum-1/0x45089a10d27b4b1825149311fa7e5a9c74c3c319/) | ⚠️ Unaudited |
| SashimiBar | unknown | ethereum | [`0x6ed306...b91977`](./contracts/ethereum-1/0x6ed306dba10e6c6b20bba693892fac21f3b91977/) | ⚠️ Unaudited |
| SashimiGovVote | unknown | ethereum | [`0x42bf80...4607b1`](./contracts/ethereum-1/0x42bf80a92734de221889049e91187a07464607b1/) | ⚠️ Unaudited |
| SashimiInvestment | operational_periphery | ethereum | 6 deployments: ethereum [`0x385799...67f5ab`](./contracts/ethereum-1/0x3857997e0203036cb5331ee62e6a7db50d67f5ab/); ethereum `0x3f966f...e07ef4`; ethereum `0x421909...899cef`; ethereum `0x4ce106...87d3ec`; ethereum `0x939cb7...af315b`; ethereum `0xc38013...2d13c9` | ⚠️ Unaudited |
| SashimiLendingLens | core_logic | ethereum | [`0x62d19a...530f81`](./contracts/ethereum-1/0x62d19a92ed47258286d65b470e0d26fa49530f81/) | ⚠️ Unaudited |
| SashimiPlate | unknown | ethereum | 7 deployments: ethereum [`0x422133...541ca6`](./contracts/ethereum-1/0x4221330f24b26f20457f7c7c925cfc46b1541ca6/); ethereum `0x56bb94...fd6168`; ethereum `0x722669...4edcc2`; ethereum `0x81885d...9697fa`; ethereum `0x8e95bc...778648`; ethereum `0xc5d00a...60de7f`; ethereum `0xe6cb94...cfda91` | ⚠️ Unaudited |
| SashimiPlateController | governance | ethereum | [`0x3884ea...a944ae`](./contracts/ethereum-1/0x3884eab512bb0475100997271ec83163daa944ae/) | ⚠️ Unaudited |
| ShardToken | token | ethereum | 10 deployments: ethereum [`0x03012a...bd203b`](./contracts/ethereum-1/0x03012a6f9bb5bff61997aee59477a893debd203b/); ethereum `0x0aa387...77efe7`; ethereum `0x0c7858...b94dbf`; ethereum `0x32503f...50e52c`; ethereum `0x674dcb...5060dc`; ethereum `0x775666...a040f1`; ethereum `0x823b35...4cb760`; ethereum `0x90b4fc...abc849`; ethereum `0x9e844c...f62ea9`; ethereum `0xb904d3...4c381b` | ⚠️ Unaudited |
| SLDaiDelegate | unknown | ethereum | 2 deployments: ethereum [`0x291823...313ea4`](./contracts/ethereum-1/0x2918231f262f764dbb5753a95bd7684fdb313ea4/); ethereum `0x946eee...936341` | ⚠️ Unaudited |
| SLEther | unknown | ethereum | [`0xc597f8...ca5d82`](./contracts/ethereum-1/0xc597f86424eeb6599ea40f999dbb739e3aca5d82/) | ⚠️ Unaudited |
| StrategyUniStakingReward | core_logic | ethereum | 4 deployments: ethereum [`0x52632d...d14f16`](./contracts/ethereum-1/0x52632d06ea29614bb2574c462f280feb23d14f16/); ethereum `0x53fbf4...df34c1`; ethereum `0x74e417...36f54e`; ethereum `0xa7feea...500e61` | ⚠️ Unaudited |
| Timelock | governance | ethereum | 3 deployments: ethereum [`0x84ee34...0224f3`](./contracts/ethereum-1/0x84ee348617563944ffd4a23843e086a7dc0224f3/); ethereum `0xea97a7...e5b0ca`; ethereum `0xf559a3...7f076f` | ⚠️ Unaudited |
| UniswapV2Factory | registry | ethereum | [`0xf028f7...c57472`](./contracts/ethereum-1/0xf028f723ed1d0fe01cc59973c49298aa95c57472/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | operational_periphery | ethereum | 2 deployments: ethereum [`0x693f49...2c35c3`](./contracts/ethereum-1/0x693f49cfc4293257c280f7fd64395298b62c35c3/); ethereum `0x9e2806...e43d7f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x5b8c75...e1a302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7578fd...56de11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7a7707...0af831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e5a71...b9d90c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae9adb...86174a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf92de...ad6758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbacbd1...66c3fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc34146...5a65c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce11fa...32ea87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda26ef...f10b0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1b43f...ae87cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf88997...18ac66` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x06068d...47fd31` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x377dca...15a9a1` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x389eec...796e1b` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x3f3aaa...e39a4e` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x611e93...3272df` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x6c606f...b44d5a` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x6cb9d7...5c00fa` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x6ccbc3...956655` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x818bbc...890632` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x891daa...1721e2` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x937a48...5f076f` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xae399a...a39431` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xc28e27...b464c2` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xc2d36a...e67736` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xc597f8...ca5d82` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xe2a246...7f25ba` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xe9c958...11903f` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0xeaac96...737d8a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sashimi.cool/files/sashimi_audit_report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x09a7fb...fb36f9`](./contracts/ethereum-1/0x09a7fb5e4499e61c7cf53acb8df7b2a8e4fb36f9/) | SLErc20Delegate | token | $1,374,095.95 | Verified native implementation with $1,374,095.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc28e27...b464c2`](./contracts/ethereum-1/0xc28e27870558cf22add83540d2126da2e4b464c2/) | SashimiToken | token | $67,794.64 | Verified native implementation with $67,794.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x194402...dcdfcb`](./contracts/ethereum-1/0x194402bc8adcc11a77873996361efe40e9dcdfcb/) | SashimiLendingVaultProvider | core_logic | $32.64 | Verified native implementation with $32.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb133ff...02e9d2`](./contracts/ethereum-1/0xb133ff62a7ad7bb7d9a57177ff2115e6f602e9d2/) | BSashimi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d7e38...f4aa2b`](./contracts/ethereum-1/0x8d7e38bce4363577bec63fd268557d3b08f4aa2b/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa73f04...951a07`](./contracts/ethereum-1/0xa73f042dd65be0d0b01960c144bf89f355951a07/) | CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x786448...eb2368`](./contracts/ethereum-1/0x786448439d9401e0a8427acf7ca66a5114eb2368/) | Dipper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eaeba...5f10f5`](./contracts/ethereum-1/0x7eaeba417967614c08cd1f406909cdcde65f10f5/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2544d6...88a287`](./contracts/ethereum-1/0x2544d6d9e665c528a3f46f77e39a224c9888a287/) | HSashimi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ec7de...a37af1`](./contracts/ethereum-1/0x9ec7de79572312d00f536b856b9e6fe7d0a37af1/) | LpBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e199c...68acbd`](./contracts/ethereum-1/0x5e199c36f9681a32c996e84c464824f6a868acbd/) | LSashimi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1daed7...51234d`](./contracts/ethereum-1/0x1daed74ed1dd7c9dabbe51361ac90a69d851234d/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x295e33...4ac8ae`](./contracts/ethereum-1/0x295e3331a35dd834ee76c305a8c3ed189a4ac8ae/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ed306...b91977`](./contracts/ethereum-1/0x6ed306dba10e6c6b20bba693892fac21f3b91977/) | SashimiBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42bf80...4607b1`](./contracts/ethereum-1/0x42bf80a92734de221889049e91187a07464607b1/) | SashimiGovVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x385799...67f5ab`](./contracts/ethereum-1/0x3857997e0203036cb5331ee62e6a7db50d67f5ab/) | SashimiInvestment | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62d19a...530f81`](./contracts/ethereum-1/0x62d19a92ed47258286d65b470e0d26fa49530f81/) | SashimiLendingLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x422133...541ca6`](./contracts/ethereum-1/0x4221330f24b26f20457f7c7c925cfc46b1541ca6/) | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3884ea...a944ae`](./contracts/ethereum-1/0x3884eab512bb0475100997271ec83163daa944ae/) | SashimiPlateController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03012a...bd203b`](./contracts/ethereum-1/0x03012a6f9bb5bff61997aee59477a893debd203b/) | ShardToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x291823...313ea4`](./contracts/ethereum-1/0x2918231f262f764dbb5753a95bd7684fdb313ea4/) | SLDaiDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc597f8...ca5d82`](./contracts/ethereum-1/0xc597f86424eeb6599ea40f999dbb739e3aca5d82/) | SLEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52632d...d14f16`](./contracts/ethereum-1/0x52632d06ea29614bb2574c462f280feb23d14f16/) | StrategyUniStakingReward | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 3 |
| standard_library | 4 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2521] DL audit link

Fork inheritance lineage and inherited audits are included when available.
