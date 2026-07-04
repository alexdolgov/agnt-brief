# Agentic Audit Brief: Piku Finance

## Project Overview

- Project: Piku Finance (`piku`)
- Website: [https://piku.co/](https://piku.co/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.160Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 57 unique implementations (58 raw deployments)
- DeFi Llama TVL: $8,681,859.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 22 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, erc1967upgrade, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 57 (55 live, 2 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/9 (44.4%)
- Deployed-live implementations: 55 of 57 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/55
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 57
- Raw deployments: 58
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 44.4% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 4 | 7.3% | 2024-06 |
| Code4rena | Tier 1 | 4 | 7.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AUT_Roles_v1 | unknown | ethereum | n/a | [`0x2f7656...7c2fb3`](./contracts/ethereum-1/0x2f76563dd0d491eb6c128f846cff2a98047c2fb3/) | ✅ Audited |
| FM_PC_Oracle_Redeeming_v1 | operational_periphery | ethereum | n/a | [`0x7e0305...f9a797`](./contracts/ethereum-1/0x7e0305b212df3fb56366251c054c07748bf9a797/) | ✅ Audited |
| LM_Oracle_Permissioned_v1 | operational_periphery | ethereum | n/a | [`0x433471...b33552`](./contracts/ethereum-1/0x433471901ba1a8bde764e8421790c7d9bab33552/) | ✅ Audited |
| PP_Queue_ManualExecution_v1 | unknown | ethereum | n/a | [`0x5a2d08...0f6fd2`](./contracts/ethereum-1/0x5a2d08b194e1764b0ff271c691b6a46fa10f6fd2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20IssuanceUpgradeable_Blacklist_v1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x098697...e95fe6`](./contracts/ethereum-1/0x098697ba3fee4ea76294c5d6a466a4e3b3e95fe6/); ethereum `0x9e40b6...e20370` | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| PendleAaveV3MerklRewardsSYUpg | unknown | ethereum | n/a | [`0x514d2f...c102cb`](./contracts/ethereum-1/0x514d2ff735434696df3f4e6b73e2c9093fc102cb/) | ⚠️ Unaudited |
| PendleAaveV3MerklRewardsSYUpg | unknown | ethereum | n/a | [`0x751d64...96940e`](./contracts/ethereum-1/0x751d64f7dd4082d95ad90e584857b8313b96940e/) | ⚠️ Unaudited |
| PendleAaveV3MerklRewardsSYUpg | unknown | ethereum | n/a | [`0x936af9...773f54`](./contracts/ethereum-1/0x936af9f9dd1f8f1377cdf3063690a9074a773f54/) | ⚠️ Unaudited |
| PendleDoubleERC4626NoRedeemSY | unknown | ethereum | n/a | [`0x77d2bc...bafb20`](./contracts/ethereum-1/0x77d2bc95ab51b75960ec3a01e112460ea7bafb20/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0x095707...9c1dab`](./contracts/ethereum-1/0x095707a011a500b2c2c043473249debb4e9c1dab/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0x399e42...80a209`](./contracts/ethereum-1/0x399e426e6812943ac22976333698e16eaa80a209/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0x4a312f...e1ed36`](./contracts/ethereum-1/0x4a312fca9b7e568ab99e4e5ccbfb409221e1ed36/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | unknown | ethereum | n/a | [`0x54c398...f7bc75`](./contracts/ethereum-1/0x54c398b3dff91759119f83965cfc2cd1c4f7bc75/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0x6231e6...b9bed4`](./contracts/ethereum-1/0x6231e66491ad4e608a093a8806449fdcbbb9bed4/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0x725e18...3381aa`](./contracts/ethereum-1/0x725e18142472384e45e15084e308dbeae43381aa/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0x785685...59f8e6`](./contracts/ethereum-1/0x785685b3a6a2af752694fda7058965302e59f8e6/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0xc34e7d...ec4c8d`](./contracts/ethereum-1/0xc34e7d9d5ec0626ed14b6b7cee02fe904bec4c8d/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0xdeb45c...03b75e`](./contracts/ethereum-1/0xdeb45ce184fa26211e07ff8ad842807ad703b75e/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0xeefa42...0447c1`](./contracts/ethereum-1/0xeefa4255ba79ef3f6f769590e41fcfece10447c1/) | ⚠️ Unaudited |
| PendleERC20WithOracleSY | operational_periphery | ethereum | n/a | [`0xf51453...62a2d9`](./contracts/ethereum-1/0xf5145335540c4116956c0936b7db08d1a862a2d9/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | ethereum | n/a | [`0x3f0293...5614b0`](./contracts/ethereum-1/0x3f029330c46049f97772295e3fb23721865614b0/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | ethereum | n/a | [`0x44a4ff...08d2c3`](./contracts/ethereum-1/0x44a4ff3934cf3833903a04261bd0d962f008d2c3/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | ethereum | n/a | [`0x47b50d...699629`](./contracts/ethereum-1/0x47b50da0e1186b27a2413b81a352d05853699629/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | ethereum | n/a | [`0xc9950c...21283a`](./contracts/ethereum-1/0xc9950c55126c125173e9319077253d633221283a/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemWithAdapterAndSupplyCapSY | adapter | ethereum | n/a | [`0x10c5e7...666409`](./contracts/ethereum-1/0x10c5e7711eaddc1b6b64e40ef1976fc462666409/) | ⚠️ Unaudited |
| PendleERC4626SYYieldTokenScaled18 | token | ethereum | n/a | [`0x488110...9c2f0d`](./contracts/ethereum-1/0x4881103c5209704fb93c5b7289b017c95a9c2f0d/) | ⚠️ Unaudited |
| PendleERC4626SYYieldTokenScaled18 | token | ethereum | n/a | [`0xadbeb9...82fb62`](./contracts/ethereum-1/0xadbeb9e3afe0186c57cac78c6a801cc38c82fb62/) | ⚠️ Unaudited |
| PendleLidoGGVSY | unknown | ethereum | n/a | [`0x55cb95...a1c171`](./contracts/ethereum-1/0x55cb9535aa1ee7c98916b044af5679eb5ea1c171/) | ⚠️ Unaudited |
| PendleMarketV7 | core_logic | ethereum | n/a | [`0x6354b7...7dcec4`](./contracts/ethereum-1/0x6354b7dd06050da44a21d680436838a08e7dcec4/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x093bb9...81bb4a`](./contracts/ethereum-1/0x093bb931965e10af75349b97d133aa8dab81bb4a/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x457904...a059d6`](./contracts/ethereum-1/0x457904b54f47dd7a91253f225237a5b02ca059d6/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xb3538a...d6bc17`](./contracts/ethereum-1/0xb3538aab6a46572b118692a05915582857d6bc17/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0xe1e22d...9b4e58`](./contracts/ethereum-1/0xe1e22d55e23900f30599d8bee74a0801f09b4e58/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | n/a | [`0x3ffaa9...04d129`](./contracts/ethereum-1/0x3ffaa9ce7cfa5688277b97bf6a8c22249404d129/) | ⚠️ Unaudited |
| PendleStrataMidasTrancheSY | core_logic | ethereum | n/a | [`0x460783...e3015e`](./contracts/ethereum-1/0x460783e7917b191e80954edd674bf46f66e3015e/) | ⚠️ Unaudited |
| PendleStrataMidasTrancheSY | core_logic | ethereum | n/a | [`0xfb71d1...b1fefb`](./contracts/ethereum-1/0xfb71d1e85048fbe2149edbf7ca1d7797dfb1fefb/) | ⚠️ Unaudited |
| PendleStrataNUSDTrancheSY | core_logic | ethereum | n/a | [`0x928990...873fe5`](./contracts/ethereum-1/0x92899026d06343929c61e0987e09caeea6873fe5/) | ⚠️ Unaudited |
| PendleStrataNUSDTrancheSY | core_logic | ethereum | n/a | [`0xdb8f1d...06c45f`](./contracts/ethereum-1/0xdb8f1d15880b97dc38edfa46d8a5a7e5b506c45f/) | ⚠️ Unaudited |
| PendleStrataUSDatTrancheSY | core_logic | ethereum | n/a | [`0x9d0fc5...563185`](./contracts/ethereum-1/0x9d0fc59f88acb85520a8cfb74c7fe141d8563185/) | ⚠️ Unaudited |
| PendleStrataUSDatTrancheSY | core_logic | ethereum | n/a | [`0xa26938...6e3c6a`](./contracts/ethereum-1/0xa26938b7eb9f097e23e73af30c8f2ad6d06e3c6a/) | ⚠️ Unaudited |
| PendleStrataUSDETrancheSY | core_logic | ethereum | n/a | [`0x4f6673...c7d76f`](./contracts/ethereum-1/0x4f6673346ab4813f1665327ab39087008cc7d76f/) | ⚠️ Unaudited |
| PendleStrataUSDETrancheSY | core_logic | ethereum | n/a | [`0xc9bfeb...fd1b8e`](./contracts/ethereum-1/0xc9bfebc79a722c05dc34bd2a227ef2db19fd1b8e/) | ⚠️ Unaudited |
| PendleUniBTCSYUpgScaled18 | unknown | ethereum | n/a | [`0x8d5cf5...9e3908`](./contracts/ethereum-1/0x8d5cf57ee0cd5ae3ace43a7d6a40807c2a9e3908/) | ⚠️ Unaudited |
| PendleUniBTCSYUpgScaled18 | unknown | ethereum | n/a | [`0xb99509...8d7353`](./contracts/ethereum-1/0xb9950954d965550fabbe635a8ccb7ee1fe8d7353/) | ⚠️ Unaudited |
| PendleUpshiftTokenizedVaultSY | core_logic | ethereum | n/a | [`0x832bbd...e5ef2e`](./contracts/ethereum-1/0x832bbd18ba4407baeeb85cec5ceee21477e5ef2e/) | ⚠️ Unaudited |
| PendleXPRISMSY | unknown | ethereum | n/a | [`0x84760f...1dcfdf`](./contracts/ethereum-1/0x84760fda5e2184ab989fffc6d77350fc491dcfdf/) | ⚠️ Unaudited |
| PendleXStocksSY | unknown | ethereum | n/a | [`0x1c44f9...724450`](./contracts/ethereum-1/0x1c44f9be658bde68e7b4091e9bd349fc64724450/) | ⚠️ Unaudited |
| PendleYieldToken | token | ethereum | n/a | [`0xacd577...fdd6be`](./contracts/ethereum-1/0xacd577ccc29e88a2b7aaa15026533abd91fdd6be/) | ⚠️ Unaudited |
| PIKU | unknown | ethereum | n/a | [`0x2e4039...c02dc3`](./contracts/ethereum-1/0x2e4039e8e31475d65dc00293c366fdbfbbc02dc3/) | ⚠️ Unaudited |
| PoolManager | core_logic | ethereum | n/a | [`0x000000...e08a90`](./contracts/ethereum-1/0x000000000004444c5dc75cb358380d2e3de08a90/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xe08b04...f8a36f`](./contracts/ethereum-1/0xe08b04aa20f16fd0d5c38a98731d2d812bf8a36f/) | ⚠️ Unaudited |
| StakedPikuV2 | token | ethereum | n/a | [`0x5da17c...839df8`](./contracts/ethereum-1/0x5da17ca137f1128d4be7ce574bc61f3ac4839df8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x9e08c5...06896b`](./contracts/ethereum-1/0x9e08c5499f953c6297a7755bcbced383b606896b/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | [`0x153bd1...d64a57`](./contracts/ethereum-1/0x153bd1abe60104bd46aa05a27fa12d1346d64a57/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x6f7d5e...41a94f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83515b...d8cb41` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view](https://drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view) | Omega Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/hats-finance/Inverter-Network-0xe47e52c4fea05e555920f1dcdcc6fb8eca103eeb/blob/main/report.md) | Code4rena | Contest | n/a | unknown | Direct | contract_name | 4 | high |
| [2024-06-19-macro.pdf](https://github.com/InverterNetwork/contracts/blob/main/audits/2024-06-19-macro.pdf) | 0xMacro | Audit | 2024-06 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x098697...e95fe6`](./contracts/ethereum-1/0x098697ba3fee4ea76294c5d6a466a4e3b3e95fe6/) | ERC20IssuanceUpgradeable_Blacklist_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e4039...c02dc3`](./contracts/ethereum-1/0x2e4039e8e31475d65dc00293c366fdbfbbc02dc3/) | PIKU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...e08a90`](./contracts/ethereum-1/0x000000000004444c5dc75cb358380d2e3de08a90/) | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5da17c...839df8`](./contracts/ethereum-1/0x5da17ca137f1128d4be7ce574bc61f3ac4839df8/) | StakedPikuV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153bd1...d64a57`](./contracts/ethereum-1/0x153bd1abe60104bd46aa05a27fa12d1346d64a57/) | VaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 44 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=4, extraction_exact=4

Zero-match audit list:

- [1965] drive.google.com/file/d/1qXOajYt-r68EWirW8K2PKKSNVzEZTx38/view

Fork inheritance lineage and inherited audits are included when available.
