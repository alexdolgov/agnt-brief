# Agentic Audit Brief: pNetwork

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: pNetwork (`pnetwork`)
- Website: [https://p.network](https://p.network)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-25T13:52:19.134Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 25 unique implementations (34 raw deployments)
- DeFi Llama TVL: $13,099,805.90
- On-chain TVL (included contracts): $1,508,637.92
- TVL by chain: Ethereum $1,508,637.92

## Project Description

pNetwork is a cross-chain bridge protocol that enables the transfer of assets between different blockchains. It also provides yield farming and staking mechanisms through various vaults and reward contracts.

### Architecture

The pNetwork family shares infrastructure through proxy contracts like ArcProxy and TransparentUpgradeableProxy, which manage upgradeable logic for tokens and gateways. Vaults and pools interact with reward contracts and external DeFi protocols to facilitate yield generation and cross-chain asset transfers.

## Audit Coverage Summary

- Verified implementations audited: 0/24 (0.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 25
- Raw deployments: 34
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,508,637.92
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,508,637.92 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ⚠️ Unaudited |
| ApeRewards | unknown | arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | polygon | 2 deployments: gnosis `0xfada8c...d4680e`; polygon [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| CarbonRewards | unknown | arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c`; arbitrum `0xf6a377...4a703d` | ⚠️ Unaudited |
| PONGRewards | unknown | arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0xdf5e0e...d806a8`](./contracts/ethereum-1/0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x374e9f...3af13a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ArcxTokenV2 | token | $949,182.70 | Verified native implementation with $949,182.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $301,168.74 | Verified native implementation with $301,168.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | StakingAccrualERC20V5 | token | $12,500.28 | Verified native implementation with $12,500.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ApeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x89d065...eb0b76`](./contracts/polygon-137/0x89d065572136814230a55ddeeddec9df34eb0b76/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | CarbonRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | PONGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
