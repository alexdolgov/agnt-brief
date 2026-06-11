# Agentic Audit Brief: Piku

## Project Overview

- Project: Piku (`piku`)
- Website: [https://piku.co/](https://piku.co/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T12:11:36.883Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-d9fc
- Chains: ethereum
- Contract surface: 29 unique implementations (52 raw deployments)
- DeFi Llama TVL: $18,279,989.32
- On-chain TVL (included contracts): $21,373,677.08
- TVL by chain: Ethereum $21,373,677.08

## Project Description

Piku is a Piku Finance/PikuDAO yield-optimized stablecoin and global yield gateway. Its purpose should be described around providing access to optimized stablecoin yield and related Piku product contracts, while distinguishing those product contracts from any upstream Inverter framework components. Pendle should not be described as the core protocol unless independently evidenced as an integration or held position.

### Architecture

The Piku family relies on the Oracle Module for asset pricing and the Token & Workflow Contracts for governance token issuance. All families share the Inverter beacon proxy pattern for upgradeability and access control, with Piku's SY wrappers and market depending on external Pendle infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/27 (0.0%)
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 29
- Raw deployments: 52
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $21,373,677.08
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC20IssuanceUpgradeable_Blacklist_v1 | token | ethereum | 2 deployments: ethereum [`0x098697...e95fe6`](./contracts/ethereum-1/0x098697ba3fee4ea76294c5d6a466a4e3b3e95fe6/); ethereum `0x9e40b6...e20370` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | [`0x153bd1...d64a57`](./contracts/ethereum-1/0x153bd1abe60104bd46aa05a27fa12d1346d64a57/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | [`0x3ffaa9...04d129`](./contracts/ethereum-1/0x3ffaa9ce7cfa5688277b97bf6a8c22249404d129/) | ⚠️ Unaudited |
| PendleStrataMidasTrancheSY | core_logic | ethereum | 2 deployments: ethereum [`0x460783...e3015e`](./contracts/ethereum-1/0x460783e7917b191e80954edd674bf46f66e3015e/); ethereum `0xfb71d1...b1fefb` | ⚠️ Unaudited |
| PendleMarketV7 | core_logic | ethereum | [`0x6354b7...7dcec4`](./contracts/ethereum-1/0x6354b7dd06050da44a21d680436838a08e7dcec4/) | ⚠️ Unaudited |
| PendleYieldToken | token | ethereum | [`0xacd577...fdd6be`](./contracts/ethereum-1/0xacd577ccc29e88a2b7aaa15026533abd91fdd6be/) | ⚠️ Unaudited |
| PendleERC4626SYYieldTokenScaled18 | token | ethereum | [`0xadbeb9...82fb62`](./contracts/ethereum-1/0xadbeb9e3afe0186c57cac78c6a801cc38c82fb62/) | ⚠️ Unaudited |
| AUT_Roles_v1 | unknown | ethereum | [`0x2f7656...7c2fb3`](./contracts/ethereum-1/0x2f76563dd0d491eb6c128f846cff2a98047c2fb3/) | ⚠️ Unaudited |
| FM_PC_Oracle_Redeeming_v1 | operational_periphery | ethereum | [`0x7e0305...f9a797`](./contracts/ethereum-1/0x7e0305b212df3fb56366251c054c07748bf9a797/) | ⚠️ Unaudited |
| LM_Oracle_Permissioned_v1 | operational_periphery | ethereum | [`0x433471...b33552`](./contracts/ethereum-1/0x433471901ba1a8bde764e8421790c7d9bab33552/) | ⚠️ Unaudited |
| PendleAaveV3MerklRewardsSYUpg | unknown | ethereum | 3 deployments: ethereum [`0x514d2f...c102cb`](./contracts/ethereum-1/0x514d2ff735434696df3f4e6b73e2c9093fc102cb/); ethereum `0x751d64...96940e`; ethereum `0x936af9...773f54` | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | 10 deployments: ethereum [`0x095707...9c1dab`](./contracts/ethereum-1/0x095707a011a500b2c2c043473249debb4e9c1dab/); ethereum `0x399e42...80a209`; ethereum `0x4a312f...e1ed36`; ethereum `0x6231e6...b9bed4`; ethereum `0x725e18...3381aa`; ethereum `0x785685...59f8e6`; ethereum `0xc34e7d...ec4c8d`; ethereum `0xdeb45c...03b75e`; ethereum `0xeefa42...0447c1`; ethereum `0xf51453...62a2d9` | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | ethereum | 4 deployments: ethereum [`0x3f0293...5614b0`](./contracts/ethereum-1/0x3f029330c46049f97772295e3fb23721865614b0/); ethereum `0x44a4ff...08d2c3`; ethereum `0x47b50d...699629`; ethereum `0xc9950c...21283a` | ⚠️ Unaudited |
| PendleERC4626NoRedeemWithAdapterAndSupplyCapSY | adapter | ethereum | [`0x10c5e7...666409`](./contracts/ethereum-1/0x10c5e7711eaddc1b6b64e40ef1976fc462666409/) | ⚠️ Unaudited |
| PendleLidoGGVSY | unknown | ethereum | [`0x55cb95...a1c171`](./contracts/ethereum-1/0x55cb9535aa1ee7c98916b044af5679eb5ea1c171/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | 4 deployments: ethereum [`0x093bb9...81bb4a`](./contracts/ethereum-1/0x093bb931965e10af75349b97d133aa8dab81bb4a/); ethereum `0x457904...a059d6`; ethereum `0xb3538a...d6bc17`; ethereum `0xe1e22d...9b4e58` | ⚠️ Unaudited |
| PendleStrataNUSDTrancheSY | core_logic | ethereum | 2 deployments: ethereum [`0x928990...873fe5`](./contracts/ethereum-1/0x92899026d06343929c61e0987e09caeea6873fe5/); ethereum `0xdb8f1d...06c45f` | ⚠️ Unaudited |
| PendleStrataUSDatTrancheSY | core_logic | ethereum | 2 deployments: ethereum [`0x9d0fc5...563185`](./contracts/ethereum-1/0x9d0fc59f88acb85520a8cfb74c7fe141d8563185/); ethereum `0xa26938...6e3c6a` | ⚠️ Unaudited |
| PendleStrataUSDETrancheSY | core_logic | ethereum | 2 deployments: ethereum [`0x4f6673...c7d76f`](./contracts/ethereum-1/0x4f6673346ab4813f1665327ab39087008cc7d76f/); ethereum `0xc9bfeb...fd1b8e` | ⚠️ Unaudited |
| PendleUniBTCSYUpgScaled18 | unknown | ethereum | 2 deployments: ethereum [`0x8d5cf5...9e3908`](./contracts/ethereum-1/0x8d5cf57ee0cd5ae3ace43a7d6a40807c2a9e3908/); ethereum `0xb99509...8d7353` | ⚠️ Unaudited |
| PendleUpshiftTokenizedVaultSY | core_logic | ethereum | [`0x832bbd...e5ef2e`](./contracts/ethereum-1/0x832bbd18ba4407baeeb85cec5ceee21477e5ef2e/) | ⚠️ Unaudited |
| PendleXPRISMSY | unknown | ethereum | [`0x84760f...1dcfdf`](./contracts/ethereum-1/0x84760fda5e2184ab989fffc6d77350fc491dcfdf/) | ⚠️ Unaudited |
| PendleXStocksSY | unknown | ethereum | [`0x1c44f9...724450`](./contracts/ethereum-1/0x1c44f9be658bde68e7b4091e9bd349fc64724450/) | ⚠️ Unaudited |
| PIKU | unknown | ethereum | [`0x2e4039...c02dc3`](./contracts/ethereum-1/0x2e4039e8e31475d65dc00293c366fdbfbbc02dc3/) | ⚠️ Unaudited |
| PP_Queue_ManualExecution_v1 | unknown | ethereum | [`0x5a2d08...0f6fd2`](./contracts/ethereum-1/0x5a2d08b194e1764b0ff271c691b6a46fa10f6fd2/) | ⚠️ Unaudited |
| StakedPikuV2 | token | ethereum | [`0x5da17c...839df8`](./contracts/ethereum-1/0x5da17ca137f1128d4be7ce574bc61f3ac4839df8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x9e08c5...06896b`](./contracts/ethereum-1/0x9e08c5499f953c6297a7755bcbced383b606896b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x6f7d5e...41a94f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83515b...d8cb41` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* **Report**: <>](https://drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view) | Omega Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* **Report**: <>&#x20;](https://github.com/hats-finance/Inverter-Network-0xe47e52c4fea05e555920f1dcdcc6fb8eca103eeb/blob/main/report.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [* **Report:** <>&#x20;](https://github.com/InverterNetwork/contracts/blob/main/audits/2024-06-19-macro.pdf) | 0xMacro | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x153bd1...d64a57`](./contracts/ethereum-1/0x153bd1abe60104bd46aa05a27fa12d1346d64a57/) | VaultV2 | core_logic | $3,667,912.05 | Verified native implementation with $3,667,912.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f7656...7c2fb3`](./contracts/ethereum-1/0x2f76563dd0d491eb6c128f846cff2a98047c2fb3/) | AUT_Roles_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e0305...f9a797`](./contracts/ethereum-1/0x7e0305b212df3fb56366251c054c07748bf9a797/) | FM_PC_Oracle_Redeeming_v1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x433471...b33552`](./contracts/ethereum-1/0x433471901ba1a8bde764e8421790c7d9bab33552/) | LM_Oracle_Permissioned_v1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e4039...c02dc3`](./contracts/ethereum-1/0x2e4039e8e31475d65dc00293c366fdbfbbc02dc3/) | PIKU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a2d08...0f6fd2`](./contracts/ethereum-1/0x5a2d08b194e1764b0ff271c691b6a46fa10f6fd2/) | PP_Queue_ManualExecution_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5da17c...839df8`](./contracts/ethereum-1/0x5da17ca137f1128d4be7ce574bc61f3ac4839df8/) | StakedPikuV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 3 |
| standard_library | 17 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1965] * **Report**: <>
- [1967] * **Report**: <>&#x20;
- [11968] * **Report:** <>&#x20;

Fork inheritance lineage and inherited audits are included when available.
