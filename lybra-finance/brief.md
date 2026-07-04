# Agentic Audit Brief: Lybra Finance

## Project Overview

- Project: Lybra Finance (`lybra-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.240Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 32 unique implementations (32 raw deployments)
- DeFi Llama TVL: $259,727.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 32 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 10 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/31 (3.2%)
- Deployed-live implementations: 32 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/32
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 1 | 3.1% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EUSD | unknown | ethereum | n/a | [`0xdf3ac4...4262cc`](./contracts/ethereum-1/0xdf3ac4f479375802a821f7b7b46cd7eb5e4262cc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminTimelock | unknown | ethereum | n/a | [`0x2f0a03...8cf484`](./contracts/ethereum-1/0x2f0a037fbe917f63e4504b0b07d92cc93c8cf484/) | ⚠️ Unaudited |
| CollateralRatioGuardian | unknown | ethereum | n/a | [`0x126dc5...142bde`](./contracts/ethereum-1/0x126dc5e04b0e8c8ef6f4602fda90e39c0a142bde/) | ⚠️ Unaudited |
| esLBR | unknown | ethereum | n/a | [`0x73b198...dfb89f`](./contracts/ethereum-1/0x73b1988a3336208e55275c52fac7f5d3a7dfb89f/) | ⚠️ Unaudited |
| esLBRBoost | unknown | ethereum | n/a | [`0x78c02d...3cbcf3`](./contracts/ethereum-1/0x78c02d080091e17a33b4a5986a880235233cbcf3/) | ⚠️ Unaudited |
| EUSDMiningIncentives | unknown | ethereum | n/a | [`0x0b2659...1edbde`](./contracts/ethereum-1/0x0b2659734121feb636534213a159ac91691edbde/) | ⚠️ Unaudited |
| GovernanceTimelock | unknown | ethereum | n/a | [`0x81905e...b26406`](./contracts/ethereum-1/0x81905eae41af5235ec4d7e9b12e8d51251b26406/) | ⚠️ Unaudited |
| GrantHelper | unknown | ethereum | n/a | [`0x6e2cee...5cc6d3`](./contracts/ethereum-1/0x6e2cee09d5a71a9bf041e13fe52096133e5cc6d3/) | ⚠️ Unaudited |
| LBR | unknown | ethereum | n/a | [`0xed1167...981ebd`](./contracts/ethereum-1/0xed1167b6dc64e8a366db86f2e952a482d0981ebd/) | ⚠️ Unaudited |
| LBRMinerFromL2 | unknown | ethereum | n/a | [`0xbcaf98...97f0ef`](./contracts/ethereum-1/0xbcaf98f5198b3a68ddcd6720d80483182997f0ef/) | ⚠️ Unaudited |
| LBRPriceOFeed | unknown | ethereum | n/a | [`0x1932d3...803338`](./contracts/ethereum-1/0x1932d36f5dd86327ceacd470271709a931803338/) | ⚠️ Unaudited |
| LybraBalanceSheet | unknown | ethereum | n/a | [`0x0bf9b8...349014`](./contracts/ethereum-1/0x0bf9b8dfac5ae048cf43fef66cc5b5f62a349014/) | ⚠️ Unaudited |
| LybraConfigurator | unknown | ethereum | n/a | [`0x0bc061...e6346e`](./contracts/ethereum-1/0x0bc0616c57b8cd59b530e1fcb5c5b8b4a5e6346e/) | ⚠️ Unaudited |
| LybraETHxVault | unknown | ethereum | n/a | [`0x5c5510...9e5d24`](./contracts/ethereum-1/0x5c5510e6a04311ab4d8f31b23ba0a6059c9e5d24/) | ⚠️ Unaudited |
| LybraGovernance | unknown | ethereum | n/a | [`0x34afe1...7e1b69`](./contracts/ethereum-1/0x34afe1b92a63f647a3c2e56a4a8347c8fa7e1b69/) | ⚠️ Unaudited |
| LybraHelper | unknown | ethereum | n/a | [`0xbdf8d5...0a8568`](./contracts/ethereum-1/0xbdf8d5010278a54e9510c8a17b53c7bfc20a8568/) | ⚠️ Unaudited |
| LybraOrder | unknown | ethereum | n/a | [`0x7f13d7...d5f34a`](./contracts/ethereum-1/0x7f13d793010115e9b4db341e60f522aafad5f34a/) | ⚠️ Unaudited |
| LybraProxyAdmin | unknown | ethereum | n/a | [`0xa23e44...8cad73`](./contracts/ethereum-1/0xa23e44aea714fbbc08ef28340d78067b9a8cad73/) | ⚠️ Unaudited |
| LybraRETHVault | unknown | ethereum | n/a | [`0x090b27...4bb958`](./contracts/ethereum-1/0x090b2787d6798000710a8e821ec6111d254bb958/) | ⚠️ Unaudited |
| LybraStETHVault | unknown | ethereum | n/a | [`0xa980d4...e06f0e`](./contracts/ethereum-1/0xa980d4c0c2e48d305b582aa439a3575e3de06f0e/) | ⚠️ Unaudited |
| LybraWBETHVault | unknown | ethereum | n/a | [`0xb72da4...4bf262`](./contracts/ethereum-1/0xb72da4a9866b0993b9a7d842e5060716f74bf262/) | ⚠️ Unaudited |
| LybraWstETHVault | unknown | ethereum | n/a | [`0x5e28b5...1c45ce`](./contracts/ethereum-1/0x5e28b5858da2c6fb4e449d69eeb5b82e271c45ce/) | ⚠️ Unaudited |
| MigrateHelper | unknown | ethereum | n/a | [`0xd3e9de...797cd4`](./contracts/ethereum-1/0xd3e9de27d66f1d8ade2bee73334b76734e797cd4/) | ⚠️ Unaudited |
| NonBoost | unknown | ethereum | n/a | [`0xdf2840...ee20af`](./contracts/ethereum-1/0xdf284087c7887df16bb1b686421dc34766ee20af/) | ⚠️ Unaudited |
| PeUSDMainnet | unknown | ethereum | n/a | [`0xd585aa...52f247`](./contracts/ethereum-1/0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247/) | ⚠️ Unaudited |
| ProtocolRewardsPool | unknown | ethereum | n/a | [`0xc2966a...2ed89e`](./contracts/ethereum-1/0xc2966a73bbc53f3c99268ed84d245dbe972ed89e/) | ⚠️ Unaudited |
| Repayment | unknown | ethereum | n/a | [`0x28ac0a...0e569e`](./contracts/ethereum-1/0x28ac0a35faf6f2704cd8324c250a029c190e569e/) | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | ethereum | n/a | [`0x19d7cb...344d6e`](./contracts/ethereum-1/0x19d7cb89e1f92f21d71db34bef4944b9f3344d6e/) | ⚠️ Unaudited |
| TokenHelper | unknown | ethereum | n/a | [`0xb36135...a38af1`](./contracts/ethereum-1/0xb36135b700df1f740b82c914a10ba045eca38af1/) | ⚠️ Unaudited |
| TokenUnlocking | unknown | ethereum | n/a | [`0x000bcb...6cc970`](./contracts/ethereum-1/0x000bcb9975d040f32ad59880317f4be8286cc970/) | ⚠️ Unaudited |
| UniswapPairOracle | unknown | ethereum | n/a | [`0xc62686...4647c5`](./contracts/ethereum-1/0xc626867660df1cc6274ce0338e7dfb92474647c5/) | ⚠️ Unaudited |
| V1eUSDRewards | unknown | ethereum | n/a | [`0x11079f...e9a881`](./contracts/ethereum-1/0x11079fc996237e9dd830899e29ecfdaa6ee9a881/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/Lybra) | SourceHat | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2f0a03...8cf484`](./contracts/ethereum-1/0x2f0a037fbe917f63e4504b0b07d92cc93c8cf484/) | AdminTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x126dc5...142bde`](./contracts/ethereum-1/0x126dc5e04b0e8c8ef6f4602fda90e39c0a142bde/) | CollateralRatioGuardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73b198...dfb89f`](./contracts/ethereum-1/0x73b1988a3336208e55275c52fac7f5d3a7dfb89f/) | esLBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78c02d...3cbcf3`](./contracts/ethereum-1/0x78c02d080091e17a33b4a5986a880235233cbcf3/) | esLBRBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b2659...1edbde`](./contracts/ethereum-1/0x0b2659734121feb636534213a159ac91691edbde/) | EUSDMiningIncentives | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81905e...b26406`](./contracts/ethereum-1/0x81905eae41af5235ec4d7e9b12e8d51251b26406/) | GovernanceTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e2cee...5cc6d3`](./contracts/ethereum-1/0x6e2cee09d5a71a9bf041e13fe52096133e5cc6d3/) | GrantHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed1167...981ebd`](./contracts/ethereum-1/0xed1167b6dc64e8a366db86f2e952a482d0981ebd/) | LBR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcaf98...97f0ef`](./contracts/ethereum-1/0xbcaf98f5198b3a68ddcd6720d80483182997f0ef/) | LBRMinerFromL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1932d3...803338`](./contracts/ethereum-1/0x1932d36f5dd86327ceacd470271709a931803338/) | LBRPriceOFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bf9b8...349014`](./contracts/ethereum-1/0x0bf9b8dfac5ae048cf43fef66cc5b5f62a349014/) | LybraBalanceSheet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc061...e6346e`](./contracts/ethereum-1/0x0bc0616c57b8cd59b530e1fcb5c5b8b4a5e6346e/) | LybraConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c5510...9e5d24`](./contracts/ethereum-1/0x5c5510e6a04311ab4d8f31b23ba0a6059c9e5d24/) | LybraETHxVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34afe1...7e1b69`](./contracts/ethereum-1/0x34afe1b92a63f647a3c2e56a4a8347c8fa7e1b69/) | LybraGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdf8d5...0a8568`](./contracts/ethereum-1/0xbdf8d5010278a54e9510c8a17b53c7bfc20a8568/) | LybraHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f13d7...d5f34a`](./contracts/ethereum-1/0x7f13d793010115e9b4db341e60f522aafad5f34a/) | LybraOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa23e44...8cad73`](./contracts/ethereum-1/0xa23e44aea714fbbc08ef28340d78067b9a8cad73/) | LybraProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090b27...4bb958`](./contracts/ethereum-1/0x090b2787d6798000710a8e821ec6111d254bb958/) | LybraRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa980d4...e06f0e`](./contracts/ethereum-1/0xa980d4c0c2e48d305b582aa439a3575e3de06f0e/) | LybraStETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb72da4...4bf262`](./contracts/ethereum-1/0xb72da4a9866b0993b9a7d842e5060716f74bf262/) | LybraWBETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e28b5...1c45ce`](./contracts/ethereum-1/0x5e28b5858da2c6fb4e449d69eeb5b82e271c45ce/) | LybraWstETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3e9de...797cd4`](./contracts/ethereum-1/0xd3e9de27d66f1d8ade2bee73334b76734e797cd4/) | MigrateHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf2840...ee20af`](./contracts/ethereum-1/0xdf284087c7887df16bb1b686421dc34766ee20af/) | NonBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd585aa...52f247`](./contracts/ethereum-1/0xd585aaafa2b58b1cd75092b51ade9fa4ce52f247/) | PeUSDMainnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2966a...2ed89e`](./contracts/ethereum-1/0xc2966a73bbc53f3c99268ed84d245dbe972ed89e/) | ProtocolRewardsPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28ac0a...0e569e`](./contracts/ethereum-1/0x28ac0a35faf6f2704cd8324c250a029c190e569e/) | Repayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19d7cb...344d6e`](./contracts/ethereum-1/0x19d7cb89e1f92f21d71db34bef4944b9f3344d6e/) | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb36135...a38af1`](./contracts/ethereum-1/0xb36135b700df1f740b82c914a10ba045eca38af1/) | TokenHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000bcb...6cc970`](./contracts/ethereum-1/0x000bcb9975d040f32ad59880317f4be8286cc970/) | TokenUnlocking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11079f...e9a881`](./contracts/ethereum-1/0x11079fc996237e9dd830899e29ecfdaa6ee9a881/) | V1eUSDRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
