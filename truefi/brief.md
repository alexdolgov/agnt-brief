# Agentic Audit Brief: TrueFi

⚠️ Lifecycle status: DEAD - TVL dropped 4.2% over 90 days

## Project Overview

- Project: TrueFi (`truefi`)
- Website: [https://app.truefi.io/](https://app.truefi.io/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-29T21:05:52.175Z
- Pipeline run: v2-pipeline-2026-05-29-691c43-0a62
- Chains: arbitrum, ethereum
- Contract surface: 8 unique implementations (11 raw deployments)
- DeFi Llama TVL: $15,393,827.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TrueFi is a protocol for uncollateralized lending, enabling borrowers to access credit without posting collateral. It uses on-chain credit assessments and a decentralized governance system to manage lending pools and credit lines.

### Architecture

The TrueFi family's AutomatedLineOfCreditFactory is governed by the Explore Lending Vaults family's GnosisSafeProxy, which controls protocol configuration. The ProxyWrapper acts as a registry and proxy for the factory, linking governance decisions to credit line deployment.

## Audit Coverage Summary

- Verified implementations audited: 3/8 (37.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 11
- Audits discovered: 224
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 18 stale, 206 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 3 | 37.5% | 2022-06 |
| unknown | Tier 2 | 3 | 37.5% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AutomatedLineOfCredit | unknown | arbitrum | 2 deployments: arbitrum [`0x45277f...a46d97`](./contracts/arbitrum-42161/0x45277f7d263c83f8223460621f31774c52a46d97/); arbitrum `0x8626a4...e95d98` | ✅ Audited |
| AutomatedLineOfCreditFactory | registry | arbitrum | 2 deployments: arbitrum [`0x24d00e...82cbb5`](./contracts/arbitrum-42161/0x24d00e171da01124052a4b13931631ba7482cbb5/); arbitrum `0xca1353...8f62e9` | ✅ Audited |
| ProtocolConfig | governance | arbitrum | 2 deployments: arbitrum [`0x5c6753...781dd0`](./contracts/arbitrum-42161/0x5c67531524201d0a774405827ba4c2de15781dd0/); arbitrum `0xbc70fe...823482` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AllowAllLenderVerifier | periphery | arbitrum | [`0x607ced...2fdd4f`](./contracts/arbitrum-42161/0x607cedb42442e206fae3e2cc12afddd7e12fdd4f/) | ⚠️ Unaudited |
| DepositController | governance | arbitrum | [`0xb4c8bf...0fe372`](./contracts/arbitrum-42161/0xb4c8bfd082a47c008ce95dd13314105f6c0fe372/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xdc0175...5d476a`](./contracts/ethereum-1/0xdc0175978ae72383bbfdbe56fed69d3acd5d476a/) | ⚠️ Unaudited |
| OpenTransferController | governance | arbitrum | [`0xa12590...ae177f`](./contracts/arbitrum-42161/0xa1259068ea5252a307ced730d758c2e8d7ae177f/) | ⚠️ Unaudited |
| WithdrawController | operational_periphery | arbitrum | [`0xee3f9a...3c25e6`](./contracts/arbitrum-42161/0xee3f9add26de00fcc02d4bc0e6d0dbee0e3c25e6/) | ⚠️ Unaudited |

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
| [2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf](https://github.com/trusttoken/audits/blob/master/PortfolioDebtToken/2023-02-22%20ChainSecurity%20Audit%20-%20PortfolioDebtToken.pdf) | yAudit | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [true_currency_audit_august_24_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueCurrency/true_currency_audit_august_24_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [true_currency_audit_september_26_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueCurrency/true_currency_audit_september_26_2020.pdf) | unknown | Audit | 2020-09 | stale | Direct | n/a | 0 | n/a |
| [2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/2021-12-21%20Chainsulting%20Audit%20--%20One-Click%20Borrowing%2C%20Lines%20of%20Credit%2C%20Rate%20Model%2C%20TRU%20Staking%2C%20Default%20Liquidation.pdf) | unknown | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [20211203 CertiK Audit Final Report.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/20211203%20CertiK%20Audit%20Final%20Report.pdf) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [REP-Trusttoken-#2-2021-09-13.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/REP-Trusttoken-%232-2021-09-13.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [truefi_2.0_audit_ben_cosman_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ben_cosman_2_17_2021.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [truefi_2.0_audit_ethworks_2_17_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_2.0_audit_ethworks_2_17_2021.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [truefi_3.0_audit_ben_cosman_5_19_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_ben_cosman_5_19_2021.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [truefi_3.0_audit_certik_5_12_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_12_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [truefi_3.0_audit_certik_5_20_2021.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_3.0_audit_certik_5_20_2021.pdf) | CertiK | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [truefi_audit_jakub_wojciechowski_november_22_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_jakub_wojciechowski_november_22_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [truefi_audit_slowmist_november_21_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrueFi/truefi_audit_slowmist_november_21_2020.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-03%20Injected%20Bugs%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-01-20 Chainsulting Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-20%20Chainsulting%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 3 | high |
| [1.md (also discovered via alternate URL)](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [3.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [4.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/4.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [5.md](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-21%20Gitcoin%20-%20surroundingart64/5.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-01-22%20Internal%20Security%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [2022-02-07 Solidified Audit - TrueFi Lending Marketplace V1.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/2022-02-07%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V1.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 3 | high |
| [README.md (also discovered via alternate URL)](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV1/README.md) | unknown | Audit | 2022-02 | stale | Direct | contract_name|n/a | 2 | medium |
| [2022-05-26 G0 Group Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-05-26%20G0%20Group%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-05 | stale | Direct | contract_name | 6 | high |
| [2022-06-07 ABDK Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-06-07%20ABDK%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | ABDK | Audit | 2022-06 | stale | Direct | contract_name | 6 | high |
| [2022-08-10 Solidified Audit - TrueFi Lending Marketplace V2.pdf](https://github.com/trusttoken/audits/blob/master/TrueFiLendingMarketplaceV2/2022-08-10%20Solidified%20Audit%20-%20TrueFi%20Lending%20Marketplace%20V2.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 6 | high |
| [trust_token_audit_august_24_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrustToken/trust_token_audit_august_24_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [trust_token_audit_june_23_2020..pdf](https://github.com/trusttoken/audits/blob/master/TrustToken/trust_token_audit_june_23_2020..pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [trust_token_audit_november_11_2020.pdf](https://github.com/trusttoken/audits/blob/master/TrustToken/trust_token_audit_november_11_2020.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AvalancheTokenController.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/avalanche/AvalancheTokenController.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AvalancheTrueUSD.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/avalanche/AvalancheTrueUSD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20.md (also discovered via alternate URL)](https://github.com/trusttoken/contracts-pre22/blob/main/docs/common/ERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Initializable.md (also discovered via alternate URL)](https://github.com/trusttoken/contracts-pre22/blob/main/docs/common/Initializable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Ownable.md (also discovered via alternate URL)](https://github.com/trusttoken/contracts-pre22/blob/main/docs/common/Ownable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeableClaimable.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/common/UpgradeableClaimable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPauseableContract.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/common/interface/IPauseableContract.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GovernorAlpha.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/GovernorAlpha.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Pauser.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/Pauser.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StkTruToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/StkTruToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Timelock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/Timelock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueFiVault.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/TrueFiVault.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VoteToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/VoteToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ClaimableContract.md (also discovered via alternate URL)](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/common/ClaimableContract.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ProxyStorage.md (also discovered via alternate URL)](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/common/ProxyStorage.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StkClaimableContract.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/common/StkClaimableContract.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IStkTruToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/interface/IStkTruToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITimelock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/interface/ITimelock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IVoteToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/interface/IVoteToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IVoteTokenWithERC20.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/interface/IVoteTokenWithERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockPauseableContract.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/mocks/MockPauseableContract.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTimeLock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/governance/mocks/MockTimeLock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ImplementationReference.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/proxy/ImplementationReference.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OwnedProxyWithReference.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/proxy/OwnedProxyWithReference.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OwnedUpgradeabilityProxy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/proxy/OwnedUpgradeabilityProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TimeOwnedUpgradeabilityProxy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/proxy/TimeOwnedUpgradeabilityProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IImplementationReference.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/proxy/interface/IImplementationReference.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOwnedUpgradeabilityProxy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/proxy/interface/IOwnedUpgradeabilityProxy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [StringReturn.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/proxy/mocks/StringReturn.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Registry.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/Registry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IHasOwner.md (also discovered via alternate URL)](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/interface/IHasOwner.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IRegistry.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/interface/IRegistry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IRegistryClone.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/interface/IRegistryClone.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockRegistrySubscriber.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/mocks/MockRegistrySubscriber.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ProvisionalRegistry.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/mocks/ProvisionalRegistry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ProvisionalRegistryMock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/mocks/ProvisionalRegistryMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RegistryMock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/registry/mocks/RegistryMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DelegateERC20.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/DelegateERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenController.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/TokenController.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueCurrency.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/TrueCurrency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueCurrencyWithGasRefund.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/TrueCurrencyWithGasRefund.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueCurrencyWithLegacyAutosweep.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/TrueCurrencyWithLegacyAutosweep.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BurnableTokenWithBounds.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/common/BurnableTokenWithBounds.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ClaimableOwnable.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/common/ClaimableOwnable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [GasRefund.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/common/GasRefund.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ReclaimerToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/common/ReclaimerToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IHook.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/interface/IHook.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IReclaimerToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/interface/IReclaimerToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueCurrency.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/interface/ITrueCurrency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ForceEther.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/ForceEther.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDelegateERC20.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/IDelegateERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockDelegateERC20.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockDelegateERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockGasRefundToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockGasRefundToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockHook.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockHook.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueCurrency.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockTrueCurrency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueCurrencyWithAutosweep.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockTrueCurrencyWithAutosweep.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueCurrencyWithDelegate.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockTrueCurrencyWithDelegate.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueCurrencyWithGasRefund.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockTrueCurrencyWithGasRefund.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueCurrencyWithLegacyAutosweep.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockTrueCurrencyWithLegacyAutosweep.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueUSD.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/MockTrueUSD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenControllerMock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/TokenControllerMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenControllerPauseMock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/TokenControllerPauseMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenFaucet.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/mocks/TokenFaucet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueAUD.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/tokens/TrueAUD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueCAD.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/tokens/TrueCAD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueGBP.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/tokens/TrueGBP.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueHKD.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/tokens/TrueHKD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueUSD.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-currencies/tokens/TrueUSD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PausedTrueGold.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/PausedTrueGold.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Reclaimable.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/Reclaimable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueGold.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/TrueGold.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueGoldController.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/TrueGoldController.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueMintableBurnable.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/TrueMintableBurnable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20Burnable.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/common/ERC20Burnable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IOwnable.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/interface/IOwnable.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ERC20Mock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/mocks/ERC20Mock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OwnableMock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/true-gold/mocks/OwnableMock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ABDKMath64x64.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/ABDKMath64x64.md) | ABDK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CrvPriceOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/CrvPriceOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IChainLink.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/IChainLink.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Liquidator.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/Liquidator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LoanFactory.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/LoanFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LoanToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/LoanToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SushiTimelock.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/SushiTimelock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TruPriceChainLinkOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TruPriceChainLinkOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TruPriceOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TruPriceOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TruSushiswapRewarder.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TruSushiswapRewarder.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueFarm.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TrueFarm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueFiPool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TrueFiPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueLender.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TrueLender.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueRatingAgency.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TrueRatingAgency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueRatingAgencyV2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/TrueRatingAgencyV2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ArbitraryDistributor.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/distributors/ArbitraryDistributor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LinearTrueDistributor.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/distributors/LinearTrueDistributor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RatingAgencyV2Distributor.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/distributors/RatingAgencyV2Distributor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IArbitraryDistributor.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/IArbitraryDistributor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICrvPriceOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ICrvPriceOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICurve.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ICurve.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICurveGauge.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ICurveGauge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICurveMinter.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ICurveMinter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ICurvePool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ICurvePool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILoanFactory.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ILoanFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILoanToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ILoanToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IMockTruPriceOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/IMockTruPriceOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IStakingPool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/IStakingPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISushiswapRewarder.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ISushiswapRewarder.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITruPriceOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ITruPriceOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueDistributor.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ITrueDistributor.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueFarm.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ITrueFarm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueFiPool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ITrueFiPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueLender.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ITrueLender.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueRatingAgency.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ITrueRatingAgency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueRatingAgencyV2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/ITrueRatingAgencyV2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapPair.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/IUniswapPair.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniswapRouter.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/IUniswapRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IYToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/interface/IYToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockCrvPriceOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockCrvPriceOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockCurve.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockCurve.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockCurveGauge.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockCurveGauge.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockCurvePool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockCurvePool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockLoanFactory.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockLoanFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockLog.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockLog.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockStakingPool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockStakingPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTruPriceOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockTruPriceOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueLender.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockTrueLender.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockYToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/MockYToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PoolArbitrageTest.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/PoolArbitrageTest.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestTrueFiPool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi/mocks/TestTrueFiPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CreditModel.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/CreditModel.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeficiencyToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/DeficiencyToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueFiPool2WithDecimals.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/ITrueFiPool2WithDecimals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Liquidator2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/Liquidator2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LoanFactory2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/LoanFactory2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LoanFactory3.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/LoanFactory3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LoanToken2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/LoanToken2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PoolExtensions.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/PoolExtensions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PoolFactory.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/PoolFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SAFU.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/SAFU.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SpotBaseRateOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/SpotBaseRateOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TimeAveragedBaseRateOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/TimeAveragedBaseRateOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueCreditAgency.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/TrueCreditAgency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueFiCreditOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/TrueFiCreditOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueFiPool2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/TrueFiPool2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueLender2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/TrueLender2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueMultiFarm.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/TrueMultiFarm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILoanToken2Deprecated.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/deprecated/ILoanToken2Deprecated.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LoanToken2Deprecated.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/deprecated/LoanToken2Deprecated.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [I1Inch3.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/I1Inch3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IAaveLendingPool.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/IAaveLendingPool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IDeficiencyToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/IDeficiencyToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IERC20WithDecimals.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/IERC20WithDecimals.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILoanFactory2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ILoanFactory2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILoanFactory3.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ILoanFactory3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ILoanToken2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ILoanToken2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IPoolFactory.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/IPoolFactory.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ISAFU.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ISAFU.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITimeAveragedBaseRateOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITimeAveragedBaseRateOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueCreditAgency.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITrueCreditAgency.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueFiCreditOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITrueFiCreditOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueFiPool2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITrueFiPool2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueLender2.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITrueLender2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueMultiFarm.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITrueMultiFarm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueRateAdjuster.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITrueRateAdjuster.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ITrueStrategy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/interface/ITrueStrategy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IUniRouter.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/libraries/IUniRouter.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OneInchExchange.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/libraries/OneInchExchange.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrueFiFixed64x64.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/libraries/TrueFiFixed64x64.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BadStrategy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/BadStrategy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MintableErc20.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/MintableErc20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Mock1InchV3.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/Mock1InchV3.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockStrategy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/MockStrategy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockTrueFiPoolOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/MockTrueFiPoolOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockUsdStableCoinOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/MockUsdStableCoinOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockUsdc.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/MockUsdc.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PowTest.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/PowTest.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestCurveStrategy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/TestCurveStrategy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestDeficiencyToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/TestDeficiencyToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestTimeAveragedBaseRateOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/TestTimeAveragedBaseRateOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestTrueLender.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/mocks/TestTrueLender.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainlinkTruOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/oracles/ChainlinkTruOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainlinkTruUsdcOracle.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/oracles/ChainlinkTruUsdcOracle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CurveYearnStrategy.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/truefi2/strategies/CurveYearnStrategy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TimeLockRegistry.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/TimeLockRegistry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TimeLockedToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/TimeLockedToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TruVoteToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/TruVoteToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TrustToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/TrustToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TruProxyStorage.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/common/TruProxyStorage.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [IBurnableERC20.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/interface/IBurnableERC20.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MockERC20Token.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/mocks/MockERC20Token.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestTrustToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/mocks/TestTrustToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestUSDCToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/mocks/TestUSDCToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TestUSDTToken.md](https://github.com/trusttoken/contracts-pre22/blob/main/docs/trusttoken/mocks/TestUSDTToken.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x607ced...2fdd4f`](./contracts/arbitrum-42161/0x607cedb42442e206fae3e2cc12afddd7e12fdd4f/) | AllowAllLenderVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb4c8bf...0fe372`](./contracts/arbitrum-42161/0xb4c8bfd082a47c008ce95dd13314105f6c0fe372/) | DepositController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa12590...ae177f`](./contracts/arbitrum-42161/0xa1259068ea5252a307ced730d758c2e8d7ae177f/) | OpenTransferController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xee3f9a...3c25e6`](./contracts/arbitrum-42161/0xee3f9add26de00fcc02d4bc0e6d0dbee0e3c25e6/) | WithdrawController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 218
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: extraction_exact=26

Zero-match audit list:

- [6665] 2023-02-22 ChainSecurity Audit - PortfolioDebtToken.pdf
- [6667] true_currency_audit_august_24_2020.pdf
- [6668] true_currency_audit_september_26_2020.pdf
- [6669] 2021-12-21 Chainsulting Audit -- One-Click Borrowing, Lines of Credit, Rate Model, TRU Staking, Default Liquidation.pdf
- [6670] 20211203 CertiK Audit Final Report.pdf
- [6671] REP-Trusttoken-#2-2021-09-13.pdf
- [6672] truefi_2.0_audit_ben_cosman_2_17_2021.pdf
- [6673] truefi_2.0_audit_ethworks_2_17_2021.pdf
- [6674] truefi_3.0_audit_ben_cosman_5_19_2021.pdf
- [6675] truefi_3.0_audit_certik_5_12_2021.pdf
- [6676] truefi_3.0_audit_certik_5_20_2021.pdf
- [6677] truefi_audit_jakub_wojciechowski_november_22_2020.pdf
- [6678] truefi_audit_slowmist_november_21_2020.pdf
- [6679] 2022-01-03 Injected Bugs - TrueFi Lending Marketplace V1.pdf
- [6681] 1.md
- [6682] 2.md
- [6683] 3.md
- [6684] 4.md
- [6685] 5.md
- [6686] 2022-01-22 Internal Security - TrueFi Lending Marketplace V1.pdf
- [6693] trust_token_audit_august_24_2020.pdf
- [6694] trust_token_audit_june_23_2020..pdf
- [6695] trust_token_audit_november_11_2020.pdf
- [6696] AvalancheTokenController.md
- [6697] AvalancheTrueUSD.md
- [6698] ERC20.md
- [6699] Initializable.md
- [6700] Ownable.md
- [6701] UpgradeableClaimable.md
- [6702] IPauseableContract.md
- [6703] GovernorAlpha.md
- [6704] Pauser.md
- [6705] StkTruToken.md
- [6706] Timelock.md
- [6707] TrueFiVault.md
- [6708] VoteToken.md
- [6709] ClaimableContract.md
- [6711] ProxyStorage.md
- [6712] StkClaimableContract.md
- [6713] IStkTruToken.md
- [6714] ITimelock.md
- [6715] IVoteToken.md
- [6716] IVoteTokenWithERC20.md
- [6717] MockPauseableContract.md
- [6718] MockTimeLock.md
- [6719] ImplementationReference.md
- [6720] OwnedProxyWithReference.md
- [6721] OwnedUpgradeabilityProxy.md
- [6722] TimeOwnedUpgradeabilityProxy.md
- [6723] IImplementationReference.md
- [6724] IOwnedUpgradeabilityProxy.md
- [6725] StringReturn.md
- [6726] Registry.md
- [6727] IHasOwner.md
- [6728] IRegistry.md
- [6729] IRegistryClone.md
- [6730] MockRegistrySubscriber.md
- [6731] ProvisionalRegistry.md
- [6732] ProvisionalRegistryMock.md
- [6733] RegistryMock.md
- [6734] DelegateERC20.md
- [6735] TokenController.md
- [6736] TrueCurrency.md
- [6737] TrueCurrencyWithGasRefund.md
- [6738] TrueCurrencyWithLegacyAutosweep.md
- [6739] BurnableTokenWithBounds.md
- [6740] ClaimableOwnable.md
- [6742] GasRefund.md
- [6744] ReclaimerToken.md
- [6746] IHook.md
- [6747] IReclaimerToken.md
- [6748] ITrueCurrency.md
- [6749] ForceEther.md
- [6750] IDelegateERC20.md
- [6751] MockDelegateERC20.md
- [6752] MockGasRefundToken.md
- [6753] MockHook.md
- [6754] MockTrueCurrency.md
- [6755] MockTrueCurrencyWithAutosweep.md
- [6756] MockTrueCurrencyWithDelegate.md
- [6757] MockTrueCurrencyWithGasRefund.md
- [6758] MockTrueCurrencyWithLegacyAutosweep.md
- [6759] MockTrueUSD.md
- [6760] TokenControllerMock.md
- [6761] TokenControllerPauseMock.md
- [6762] TokenFaucet.md
- [6763] TrueAUD.md
- [6764] TrueCAD.md
- [6765] TrueGBP.md
- [6766] TrueHKD.md
- [6767] TrueUSD.md
- [6768] PausedTrueGold.md
- [6769] Reclaimable.md
- [6770] TrueGold.md
- [6771] TrueGoldController.md
- [6772] TrueMintableBurnable.md
- [6774] ERC20Burnable.md
- [6778] IOwnable.md
- [6779] ERC20Mock.md
- [6780] OwnableMock.md
- [6781] ABDKMath64x64.md
- [6782] CrvPriceOracle.md
- [6783] IChainLink.md
- [6784] Liquidator.md
- [6785] LoanFactory.md
- [6786] LoanToken.md
- [6787] SushiTimelock.md
- [6788] TruPriceChainLinkOracle.md
- [6789] TruPriceOracle.md
- [6790] TruSushiswapRewarder.md
- [6791] TrueFarm.md
- [6792] TrueFiPool.md
- [6793] TrueLender.md
- [6794] TrueRatingAgency.md
- [6795] TrueRatingAgencyV2.md
- [6799] ArbitraryDistributor.md
- [6800] LinearTrueDistributor.md
- [6801] RatingAgencyV2Distributor.md
- [6802] IArbitraryDistributor.md
- [6803] ICrvPriceOracle.md
- [6804] ICurve.md
- [6805] ICurveGauge.md
- [6806] ICurveMinter.md
- [6807] ICurvePool.md
- [6808] ILoanFactory.md
- [6809] ILoanToken.md
- [6810] IMockTruPriceOracle.md
- [6811] IStakingPool.md
- [6812] ISushiswapRewarder.md
- [6813] ITruPriceOracle.md
- [6814] ITrueDistributor.md
- [6815] ITrueFarm.md
- [6816] ITrueFiPool.md
- [6817] ITrueLender.md
- [6818] ITrueRatingAgency.md
- [6819] ITrueRatingAgencyV2.md
- [6820] IUniswapPair.md
- [6821] IUniswapRouter.md
- [6822] IYToken.md
- [6823] MockCrvPriceOracle.md
- [6824] MockCurve.md
- [6825] MockCurveGauge.md
- [6826] MockCurvePool.md
- [6827] MockLoanFactory.md
- [6828] MockLog.md
- [6829] MockStakingPool.md
- [6830] MockTruPriceOracle.md
- [6831] MockTrueLender.md
- [6832] MockYToken.md
- [6833] PoolArbitrageTest.md
- [6834] TestTrueFiPool.md
- [6835] CreditModel.md
- [6836] DeficiencyToken.md
- [6837] ITrueFiPool2WithDecimals.md
- [6838] Liquidator2.md
- [6839] LoanFactory2.md
- [6840] LoanFactory3.md
- [6841] LoanToken2.md
- [6842] PoolExtensions.md
- [6843] PoolFactory.md
- [6844] SAFU.md
- [6845] SpotBaseRateOracle.md
- [6846] TimeAveragedBaseRateOracle.md
- [6847] TrueCreditAgency.md
- [6848] TrueFiCreditOracle.md
- [6849] TrueFiPool2.md
- [6850] TrueLender2.md
- [6851] TrueMultiFarm.md
- [6852] ILoanToken2Deprecated.md
- [6853] LoanToken2Deprecated.md
- [6854] I1Inch3.md
- [6855] IAaveLendingPool.md
- [6856] IDeficiencyToken.md
- [6857] IERC20WithDecimals.md
- [6858] ILoanFactory2.md
- [6859] ILoanFactory3.md
- [6860] ILoanToken2.md
- [6861] IPoolFactory.md
- [6862] ISAFU.md
- [6863] ITimeAveragedBaseRateOracle.md
- [6864] ITrueCreditAgency.md
- [6865] ITrueFiCreditOracle.md
- [6866] ITrueFiPool2.md
- [6867] ITrueLender2.md
- [6868] ITrueMultiFarm.md
- [6869] ITrueRateAdjuster.md
- [6870] ITrueStrategy.md
- [6871] IUniRouter.md
- [6872] OneInchExchange.md
- [6873] TrueFiFixed64x64.md
- [6874] BadStrategy.md
- [6875] MintableErc20.md
- [6876] Mock1InchV3.md
- [6877] MockStrategy.md
- [6878] MockTrueFiPoolOracle.md
- [6879] MockUsdStableCoinOracle.md
- [6880] MockUsdc.md
- [6881] PowTest.md
- [6882] TestCurveStrategy.md
- [6883] TestDeficiencyToken.md
- [6884] TestTimeAveragedBaseRateOracle.md
- [6885] TestTrueLender.md
- [6886] ChainlinkTruOracle.md
- [6887] ChainlinkTruUsdcOracle.md
- [6888] CurveYearnStrategy.md
- [6889] TimeLockRegistry.md
- [6890] TimeLockedToken.md
- [6891] TruVoteToken.md
- [6892] TrustToken.md
- [6896] TruProxyStorage.md
- [6897] IBurnableERC20.md
- [6898] MockERC20Token.md
- [6899] TestTrustToken.md
- [6900] TestUSDCToken.md
- [6901] TestUSDTToken.md
- [6902] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [6903] 0002-metadata-manifest-and-pull-command.md
- [6904] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
