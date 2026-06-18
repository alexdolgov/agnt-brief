# Agentic Audit Brief: Ribbon Finance

⚠️ Lifecycle status: DECLINING - TVL changed 5.9% over 90 days

## Project Overview

- Project: Ribbon Finance (`ribbon-finance`)
- Website: [https://www.ribbon.finance/](https://www.ribbon.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T14:36:08.357Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4e21
- Chains: avalanche, ethereum
- Contract surface: 24 unique implementations (46 raw deployments)
- DeFi Llama TVL: $4,052,288.00
- On-chain TVL (included contracts): $174,469,231.72
- TVL by chain: Ethereum $174,468,928.06 | Avalanche $303.66

## Project Description

Ribbon Finance is a DeFi protocol historically focused on crypto structured products, especially Theta Vaults that automate options strategies such as covered calls and put selling. Related Earn/Lend-style products should be treated as historical or specific on-chain modules rather than the protocol's current primary product focus.

### Architecture

Theta Vaults and Ribbon Earn share the RibbonFactory for deployment and management, while Ribbon Lend uses its own PoolFactory and PoolMaster infrastructure. The RBN token is used across Liquidity Gauges for rewards and may be involved in governance via the Ribbon DAO.

## Contract Surface Quality

- Indexed contracts: 600; live-surface contracts included: 46 (46 live, 0 unknown).
- Excluded by liveness: 430 inactive, 124 singleton, 0 uninitialized.
- Deployment units: 5/53 live.
- Detected codebases: none
- Dependencies extracted: 12; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/20 (30.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 24
- Raw deployments: 46
- Audits discovered: 15
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $148,225,277.69
- Latest audit: 2023-07 (stale)
- Staleness: 0 fresh, 0 aging, 15 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $148,225,277.69 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 5 | 25.0% | 2021-07 |
| Unknown | Tier 2 | 2 | 10.0% | 2023-07 |
| PeckShield | Tier 2 | 1 | 5.0% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RibbonToken | token | ethereum | n/a | [`0x6123b0...21fa6b`](./contracts/ethereum-1/0x6123b0049f904d730db3c36a31167d9d4121fa6b/) | ✅ Audited |
| RibbonThetaYearnVault | core_logic | ethereum | unit-37461 | [`0xcc3235...cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | ✅ Audited |
| RibbonThetaVaultYearn | core_logic | ethereum | unit-37454 | [`0x8fe744...96e54f`](./contracts/ethereum-1/0x8fe74471f198e426e96be65f40eed1f8ba96e54f/) | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | unit-37471 | [`0x98d031...a87787`](./contracts/avalanche-43114/0x98d03125c62dae2328d9d3cb32b7b969e6a87787/) | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | unit-37470 | [`0x6bf686...9a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/) | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | unit-37473 | [`0x9dd6be...a3e3a3`](./contracts/avalanche-43114/0x9dd6be071b4292cc88b8190ab718329adea3e3a3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| PerpToken | token | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| RibbonVaultPauser | core_logic | avalanche | n/a | [`0xf08d6a...6d19aa`](./contracts/avalanche-43114/0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa/) | ⚠️ Unaudited |
| ManualPricer | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x00e812...5cc87f`](./contracts/ethereum-1/0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f/); ethereum `0x3250e0...865c86`; ethereum `0x393952...66bce4`; ethereum `0x3e3aa8...4ebcb1`; ethereum `0x80a0de...46c525`; ethereum `0xa1a436...9512a7`; ethereum `0xfc9887...9fb0b7` | ⚠️ Unaudited |
| ManualStrikeSelection | token | ethereum | n/a | 5 deployments: ethereum [`0x3c8114...d7036c`](./contracts/ethereum-1/0x3c8114263092fd27acfeaa99549d4f3066d7036c/); ethereum `0x8a0967...c26fe3`; ethereum `0x9246cb...be8b8e`; ethereum `0xab4051...be1573`; ethereum `0xfd48f3...51b451` | ⚠️ Unaudited |
| RethPricer | operational_periphery | ethereum | n/a | [`0x30b305...341fc6`](./contracts/ethereum-1/0x30b3059b1e870203aef55b071110b49b22341fc6/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x253029...0bc6b4`](./contracts/ethereum-1/0x2530298e2f5c026e794f8b39bda39f50c70bc6b4/); ethereum `0xcd8786...5450fc` | ⚠️ Unaudited |
| SAVAXDepositHelper | periphery | avalanche | n/a | [`0x084a82...168303`](./contracts/avalanche-43114/0x084a82fe209f014b3cb6d5986b2c65b584168303/) | ⚠️ Unaudited |
| SAvaxPricer | operational_periphery | avalanche | n/a | [`0x0a59f3...c216c9`](./contracts/avalanche-43114/0x0a59f35f00a482bb04d95428e1ec051cbac216c9/) | ⚠️ Unaudited |
| Spell | unknown | ethereum | n/a | [`0x090185...37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ⚠️ Unaudited |
| STETHDepositHelper | periphery | ethereum | n/a | [`0x07f36c...9f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 12 deployments: ethereum [`0x19854c...a9b5f7`](./contracts/ethereum-1/0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7/); ethereum `0x43277c...f171cc`; ethereum `0x4e079d...f9be72`; ethereum `0x5b0655...625a3a`; ethereum `0x8913ea...0b9325`; ethereum `0x903840...d7c8bd`; ethereum `0x967412...814587`; ethereum `0x98c371...339382`; ethereum `0xa2b078...e348fc`; ethereum `0xa8a969...be8732`; ethereum `0xad4dbd...84741a`; ethereum `0xb7fd36...8c9b4e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1dd8c1...e44807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8cceb...c22080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc127a4...027632` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf513bd...0b5c96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [We're audited by [OpenZeppelin](< >), [ChainSafe](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) and [Peckshield](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.](https://www.openzeppelin.com/news/ribbon-finance-audit) | OpenZeppelin | Audit | 2021-09 | stale | Direct | contract_name | 0 | n/a |
| [We're audited by [OpenZeppelin](<https://blog.openzeppelin.com/ribbon-finance-audit/ >), [ChainSafe]() and [Peckshield](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | OpenZeppelin | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [We're audited by [OpenZeppelin](<https://blog.openzeppelin.com/ribbon-finance-audit/ >), [ChainSafe](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) and [Peckshield](). Despite that, users are advised to exercise caution and only risk funds they can afford to lose. (also discovered via alternate URL)](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 0 | n/a |
| [Quantstamp (also discovered via alternate URL)](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 5 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-04 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 0 | n/a |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | high |
| [RibbonV2-July-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/RibbonV2-July-2021.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [ribbon-07-2023.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-07-2023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |
| [ribbon-finance-04-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-04-2021.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 0 | n/a |
| [ribbon-finance-11-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-11-2021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/ribbon-finance/audit/b837e7b04dfbbc6fb577039e9baa598f46ec04a7/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xf08d6a...6d19aa`](./contracts/avalanche-43114/0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa/) | RibbonVaultPauser | core_logic | $298.18 | Verified native implementation with $298.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e812...5cc87f`](./contracts/ethereum-1/0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f/) | ManualPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c8114...d7036c`](./contracts/ethereum-1/0x3c8114263092fd27acfeaa99549d4f3066d7036c/) | ManualStrikeSelection | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30b305...341fc6`](./contracts/ethereum-1/0x30b3059b1e870203aef55b071110b49b22341fc6/) | RethPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253029...0bc6b4`](./contracts/ethereum-1/0x2530298e2f5c026e794f8b39bda39f50c70bc6b4/) | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x084a82...168303`](./contracts/avalanche-43114/0x084a82fe209f014b3cb6d5986b2c65b584168303/) | SAVAXDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a59f3...c216c9`](./contracts/avalanche-43114/0x0a59f35f00a482bb04d95428e1ec051cbac216c9/) | SAvaxPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07f36c...9f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | STETHDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=806

Zero-match audit list:

- [2529] We're audited by [OpenZeppelin](< >), [ChainSafe](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) and [Peckshield](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.
- [2530] We're audited by [OpenZeppelin](<https://blog.openzeppelin.com/ribbon-finance-audit/ >), [ChainSafe]() and [Peckshield](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.
- [2531] We're audited by [OpenZeppelin](<https://blog.openzeppelin.com/ribbon-finance-audit/ >), [ChainSafe](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) and [Peckshield](). Despite that, users are advised to exercise caution and only risk funds they can afford to lose.
- [2536] Chainsafe-Ribbon-Audit_April-2021.pdf
- [2538] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [2539] PeckShield-Audit-Report-RibbonSwap.pdf
- [2540] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [2542] RibbonV2-July-2021.pdf
- [2543] ribbon-07-2023.pdf
- [2544] ribbon-finance-04-2021.pdf
- [15372] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
