# Agentic Audit Brief: M0

## Project Overview

- Project: M0 (`m0`)
- Website: [https://www.m0.org/](https://www.m0.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.278Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, bsc, ethereum, linea, optimism, plasma
- Contract surface: 33 unique implementations (33 raw deployments)
- DeFi Llama TVL: $330,354,580.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Stablecoin Issuer. Structurally: 33 project-authored contract(s) across 7 chain(s); 9 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Its contracts share 26 common project-authored base contract(s) (erc165, reentrancylock, proxy). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 21/26 (80.8%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 22/33
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 52 (52 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 42
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 24 fresh, 14 aging, 12 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 22 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 69.2% (Certora, ChainSecurity, ConsenSys Diligence, Cyfrin, OpenZeppelin, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 11 | 33.3% | 2025-07 |
| yAudit | Tier 2 | 11 | 33.3% | 2025-05 |
| Guardian | Tier 2 | 10 | 30.3% | 2026-06 |
| ChainSecurity | Tier 1 | 9 | 27.3% | 2026-02 |
| OpenZeppelin | Tier 1 | 9 | 27.3% | 2024-01 |
| Quantstamp | Tier 2 | 9 | 27.3% | 2024-01 |
| Unknown | Tier 2 | 8 | 24.2% | 2024-03 |
| Kirill Fedoseev | Tier 2 | 7 | 21.2% | 2024-12 |
| Sherlock | Tier 1 | 5 | 15.2% | 2025-12 |
| Three Sigma | Tier 2 | 5 | 15.2% | 2025-04 |
| Cyfrin | Tier 1 | 3 | 9.1% | 2024-11 |
| Halborn | Tier 2 | 3 | 9.1% | 2025-12 |
| Adevar | Tier 2 | 2 | 6.1% | 2026-01 |
| Consensys Diligence | Tier 1 | 1 | 3.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DistributionVault | unknown | ethereum | n/a | [`0xd7298f...caa34f`](./contracts/ethereum-1/0xd7298f620b0f752cf41bd818a16c756d9dcaa34f/) | ✅ Audited |
| EmergencyGovernor | unknown | ethereum | n/a | [`0x886d40...cdf90a`](./contracts/ethereum-1/0x886d405949f709bc3f4451491bdd07ff51cdf90a/) | ✅ Audited |
| ExecutorEntryPoint | unknown | arbitrum | n/a | [`0x4db060...fda979`](./contracts/arbitrum-42161/0x4db06053edb413899454bad5bf25213b22fda979/) | ✅ Audited |
| HyperlaneBridge | unknown | ethereum | n/a | [`0x51dce1...4b0dc3`](./contracts/ethereum-1/0x51dce104e5ba88fabc19a2c519f955bb834b0dc3/) | ✅ Audited |
| HyperlaneBridgeAdapter | unknown | plasma | n/a | [`0x01ffa0...403b6d`](./contracts/plasma-9745/0x01ffa0003a21f14e039d249af4f4d770f8403b6d/) | ✅ Audited |
| JMIExtension | unknown | plasma | n/a | [`0xf2414b...973a27`](./contracts/plasma-9745/0xf2414b88c565b53fbb3923c96bdf826333973a27/) | ✅ Audited |
| LayerZeroBridgeAdapter | unknown | ethereum | n/a | [`0x77ef4e...bb4b4d`](./contracts/ethereum-1/0x77ef4e9d37524069f81890c537a5c5d390bb4b4d/) | ✅ Audited |
| Migrator | unknown | bsc | n/a | [`0x1051ad...fd1029`](./contracts/bsc-56/0x1051adbfd1e9981d08d3d64c221878b2befd1029/) | ✅ Audited |
| MinterGateway | unknown | ethereum | n/a | [`0xf7f963...19f04e`](./contracts/ethereum-1/0xf7f9638cb444d65e5a40bf5ff98ebe4ff319f04e/) | ✅ Audited |
| MToken | unknown | bsc | n/a | [`0x23a62a...234bc8`](./contracts/bsc-56/0x23a62a85fa6d6bfa78ae2924060c051e28234bc8/) | ✅ Audited |
| MUSD | unknown | bsc | n/a | [`0x23d816...53ee79`](./contracts/bsc-56/0x23d8162e084aa33d8ef6fcc0ab33f4028a53ee79/) | ✅ Audited |
| Portal | unknown | arbitrum | n/a | [`0x23ca66...bba468`](./contracts/arbitrum-42161/0x23ca665c8a73292fc7ac2cc4493d2ce883bba468/) | ✅ Audited |
| PowerToken | unknown | ethereum | n/a | [`0x5983b8...4c5b03`](./contracts/ethereum-1/0x5983b89fa184f14917013b9c3062afd9434c5b03/) | ✅ Audited |
| Proxy | unknown | ethereum | n/a | [`0x437cc3...98b291`](./contracts/ethereum-1/0x437cc33344a0b27a429f795ff6b469c72698b291/) | ✅ Audited |
| Registrar | unknown | ethereum | n/a | [`0x119fbe...81ae2c`](./contracts/ethereum-1/0x119fbeedd4f4f4298fb59b720d5654442b81ae2c/) | ✅ Audited |
| SpokePortal | unknown | linea | n/a | [`0x01ffa0...403b6d`](./contracts/linea-59144/0x01ffa0003a21f14e039d249af4f4d770f8403b6d/) | ✅ Audited |
| StandardGovernor | unknown | ethereum | n/a | [`0xb024ac...1da016`](./contracts/ethereum-1/0xb024ac5a7c6bc92fbacc8c3387e628a07e1da016/) | ✅ Audited |
| SwapFacility | unknown | optimism | n/a | [`0x07dd9e...8cd146`](./contracts/optimism-10/0x07dd9e3b00002f9cb178670159d4e6fe0d8cd146/) | ✅ Audited |
| UniswapV3SwapAdapter | unknown | ethereum | n/a | [`0x023bd2...bc4f4b`](./contracts/ethereum-1/0x023bd2f0a95373c55fc8d1c5f8e60cc3b9bc4f4b/) | ✅ Audited |
| USDZ | unknown | arbitrum | n/a | [`0xd87c75...ff1bda`](./contracts/arbitrum-42161/0xd87c75a92db19fe334fe7812890f893449ff1bda/) | ✅ Audited |
| ZeroGovernor | unknown | ethereum | n/a | [`0xa0dafa...8b80fe`](./contracts/ethereum-1/0xa0dafaeea4a1d44534e1b9227e19cae6358b80fe/) | ✅ Audited |
| ZeroToken | unknown | ethereum | n/a | [`0x988567...0492be`](./contracts/ethereum-1/0x988567fe094570cce1ffda29d1f2d842b70492be/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | [`0x36f586...3c2ece`](./contracts/ethereum-1/0x36f586a30502ae3afb555b8aa4dcc05d233c2ece/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xacffec...9d4fdd`](./contracts/ethereum-1/0xacffec28c4eee21c889a4e6c0704c540ed9d4fdd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | optimism | n/a | [`0x3349e4...8a4dde`](./contracts/optimism-10/0x3349e443068f76666789c4f76f00d9c4f38a4dde/) | ⚠️ Unaudited |
| ExtensionBeacon | unknown | arbitrum | n/a | [`0xb82328...79a931`](./contracts/arbitrum-42161/0xb823280379f3e057ccae4ba5f6f772528979a931/) | ⚠️ Unaudited |
| MultiMint | unknown | arbitrum | n/a | [`0x4ffbc3...4033ef`](./contracts/arbitrum-42161/0x4ffbc316cf29e8eb39cbf819cfd3d5f5b34033ef/) | ⚠️ Unaudited |
| PYUSDX | unknown | arbitrum | n/a | [`0x8dfb7c...71c5e0`](./contracts/arbitrum-42161/0x8dfb7c8ce5e67ace965520b134b4aca8fd71c5e0/) | ⚠️ Unaudited |
| SpokePortalV1StorageCleaner | unknown | base | n/a | [`0x593ffa...ea7bae`](./contracts/base-8453/0x593ffa1ad180c3c872628761697c5288fdea7bae/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x3e98f1...2cd52a`](./contracts/bsc-56/0x3e98f104dcec706d087cc58db1e92ba7fc2cd52a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x25c8af...a09c2a`](./contracts/ethereum-1/0x25c8affc5a63d8e047c12918c0438aba5aa09c2a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x693cc3...cd9499`](./contracts/ethereum-1/0x693cc3305342b02ac1549b509a704ff944cd9499/) | ⚠️ Unaudited |
| YieldToOne | unknown | arbitrum | n/a | [`0xc560c9...678803`](./contracts/arbitrum-42161/0xc560c9b8ed6d589ee676d279f2649a236c678803/) | ⚠️ Unaudited |

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
| [| Quantstamp | Jan 2024 - March 2024 | [Quantstamp\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Quantstamp%20Audit%20Report.pdf) | Quantstamp | Audit | 2024-01 | stale | Direct | contract_name | 9 | high |
| [| Three Sigma | Jan 2024 - March 2024 | [ThreeSigma\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/ThreeSigma%20Audit%20Report.pdf) | Quantstamp | Audit | 2024-01 | stale | Direct | contract_name | 8 | high |
| [| Certora | Jan 2024 - March 2024 | [Certora\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Certora%20Audit%20report.pdf) | Certora | Audit | 2024-01 | stale | Direct | contract_name | 9 | high |
| [| Chainsecurity | Jan 2024 - March 2024 | [Chainsecurity\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/ChainSecurity%20Audit%20Report.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | 9 | high |
| [| OpenZeppelin | Jan 2024 - March 2024 | [OpenZeppelin report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/OpenZeppelin%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2024-01 | stale | Direct | contract_name | 9 | high |
| [| Prototech Labs | Jan 2024 - Feb 2024 | [PrototechLabs\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Prototech%20Labs%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2024-01 | stale | Direct | contract_name | 9 | high |
| [| Kirill Fedoseev | Dec 2023 - April 2024 | [Kirill Fedoseev report.md](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Kirill%20Fedoseev%20Independent%20Auditor%20Report.md) | Kirill Fedoseev | Audit | 2023-12 | stale | Direct | contract_name | 4 | high |
| [| Sherlock | March 2024 - April 2024 | [Sherlock\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/protocol-audit-reports/Sherlock%20Audit%20Report.pdf) | Sherlock | Contest | 2024-03 | stale | Direct | contract_name | 2 | high |
| [| Chainsecurity | July 2024 - Aug 2024 | [ChainSecurity Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/wrapped-M-audit-reports/ChainSecurity%20Wrapped%20M%20Audit%20Report.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | contract_name | 2 | high |
| [| Three Sigma | July 2024 - Aug 2024 | [Three Sigma Wrapped `$M` Audit Report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/wrapped-M-audit-reports/ThreeSigma%20Wrapped%20M%20Audit%20Report.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | contract_name | 2 | high |
| [| Kirill Fedoseev | July 2024 - Aug 2024 | [Kirill Fedoseev Wrapped `$M` Audit Report.md](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/documentation/blob/main/wrapped-M-audit-reports/Kirill%20Fedoseev%20Audit%20Report.md) | Kirill Fedoseev | Audit | 2024-07 | stale | Direct | contract_name | 2 | high |
| [| Certora | July 2025 | [Certora\_MExtension\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/Certora%20MExtension%20Security%20Assessment%20Final%20Report.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | 2 | high |
| [| ChainSecurity | July 2025 | [ChainSecurity\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/ChainSecurity_M0_M_Extensions_audit_draft.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | 4 | high |
| [| Guardian | August 2025 | [Guardian\_MExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/Guardian%20Audits%20M0%20Extensions%20Report%20Aug%205.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | 4 | high |
| [| Halborn | June 2025 | [Halborn\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m-extensions/blob/main/audits/halborn_m_extensions_audit_report.pdf) | Halborn | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [| Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m-extensions/blob/main/audits/adevar_m_extensions_audit_report.pdf) | Halborn | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [| Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m-extensions/blob/main/audits/ottersec_m_extensions_audit_report.pdf) | Ottersec | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [| Three Sigma | April 2025 | [ThreeSigma\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/Three%20Sigma%20-%20M0PortalLite.pdf) | Three Sigma | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [| ChainLight | May 2025 | [ChainLight\_PortalLite\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/ChainLight%20-%20M%20Portal%20Lite%20Security%20Audit%20v1.0.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [| ChainSecurity | September 12, 2025 | [ChainSecurity\_M0\_M\_Portal\_Lite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/ChainSecurity_M0_M_Portal_Lite_audit.pdf) | ChainSecurity | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |
| [| Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_PortalLite\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/GuardianAudits_M0_PortalLite_audit.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | 4 | high |
| [| Halborn | October 27, 2025 | [Halborn - M Portal Lite 10-27-25.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-lite/blob/main/audits/Halborn%20-%20M%20Portal%20Lite%2010-27-25.pdf) | Halborn | Audit | 2025-10 | fresh | Direct | contract_name | 2 | high |
| [| Halborn | March 2025 | [Halborn\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m/blob/main/audits/halborn_solana_m_audit.pdf) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [| OtterSec | April 2025 | [OtterSec\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m/blob/main/audits/ottersec_solana_m_audit.pdf) | Halborn | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [| Sec3 | May 2025 | [Sec3\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/solana-m/blob/main/audits/sec3_solana_m_audit_report.pdf) | Sec3 | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [| ChainSecurity | August 26, 2025 | [ChainSecurity\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/ChainSecurity_M0_MUSD_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [| Consensys Diligence | August 2025 | [ConsensysDiligence\_M0\_MUSD\_audit.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/ConsensysDiligence_M0_MUSD_audit.pdf) | Consensys Diligence | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [| Guardian Audits | August 15, 2025 | [GuardianAudits\_M0\_MUSD\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/GuardianAudits_M0_MUSD_report.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [| Kirill Fedoseev | August 6, 2025 | [MZero-review-report-v1-private.md](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/mUSD/blob/main/audits/MZero-review-report-v1-private.md) | Guardian | Audit | 2025-06 | aging | Direct | contract_name | 1 | high |
| [| Adevar | January 21, 2026 | [Adevar\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Adevar_M0_Portal_V2.pdf) | Adevar | Audit | 2026-01 | fresh | Direct | contract_name | 2 | high |
| [| ChainSecurity | February 24, 2026 | [ChainSecurity\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/ChainSecurity_M0_Portal_V2_Liquidity_Delivery.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | 4 | high |
| [| Guardian Audits | January 30, 2026 | [Guardian\_M0\_Portal\_V2\_Liquidity\_Delivery.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Guardian_M0_Portal_V2_Liquidity_Delivery.pdf) | Guardian | Audit | 2026-01 | fresh | Direct | contract_name | 4 | high |
| [| Halborn | January 16, 2026 | [Halborn\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Halborn_M0_Portal_V2.pdf) | Halborn | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [| Sherlock | December 19, 2025 | [Sherlock\_M0\_Portal\_V2.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/m-portal-v2/blob/main/evm/audits/Sherlock_M0_Portal_V2.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | 3 | high |
| [| Guardian Audits | December 12, 2025 | [M0\_EVM-M\_Extensions\_Review\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/JMI/M0_EVM-M_Extensions_Review_report.pdf) | Guardian | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [| Sherlock | November 13, 2025 | [Sherlock\_JMI\_report.pdf](){rel="&#x22;nofollow&#x22;"} |](https://github.com/m0-platform/evm-m-extensions/blob/main/audits/JMI/2025_12_10_Final_M0_Collaborative_Audit_Report_1765332345.pdf) | Guardian | Audit | 2025-11 | fresh | Direct | contract_name | 2 | high |
| [Audits and fixes overview.pdf](https://github.com/m0-foundation/documentation/blob/main/protocol-audit-reports/Audits%20and%20fixes%20overview.pdf) | Unknown | Audit | 2024-03 | stale | Direct | contract_name | 8 | medium |
| [Quantstamp External Fix Review.pdf](https://github.com/m0-foundation/documentation/blob/main/protocol-audit-reports/Quantstamp%20External%20Fix%20Review.pdf) | Quantstamp | Audit | n/a | unknown | Direct | contract_name | 4 | low |
| [ChainSecurity_M0_M_Extensions_audit.pdf](https://github.com/m0-foundation/evm-m-extensions/blob/main/audits/ChainSecurity_M0_M_Extensions_audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | 4 | high |
| [GuardianAudits_M0_MExtensions_report.pdf](https://github.com/m0-foundation/evm-m-extensions/blob/main/audits/GuardianAudits_M0_MExtensions_report.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | contract_name | 4 | high |
| [adevar_v2_audit.pdf (also discovered via alternate URL)](https://github.com/m0-foundation/solana-m-extensions/blob/main/audits/adevar_v2_audit.pdf) | Adevar | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [halborn_v2_audit.pdf (also discovered via alternate URL)](https://github.com/m0-foundation/solana-m-extensions/blob/main/audits/halborn_v2_audit.pdf) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [guardian_liquidity_delivery_update.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1.1/guardian_liquidity_delivery_update.pdf) | Guardian | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [chainsecurity_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/chainsecurity_report.pdf) | ChainSecurity | Audit | 2026-01 | fresh | Direct | contract_name | 3 | high |
| [guardian_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/guardian_report.pdf) | Guardian | Audit | 2026-01 | fresh | Direct | contract_name | 4 | high |
| [halborn_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/halborn_report.pdf) | Halborn | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [sherlock_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_one/sherlock_report.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [adevar_report.pdf](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1/phase_two/adevar_report.pdf) | Adevar | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [2024-11-26-cyfrin-M0-Portals-v2.0.pdf](https://github.com/m0-foundation/m-portal/blob/main/audits/2024-11-26-cyfrin-M0-Portals-v2.0.pdf) | Cyfrin | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [Halborn - M Portal.pdf](https://github.com/m0-foundation/m-portal/blob/main/audits/Halborn%20-%20M%20Portal.pdf) | Halborn | Audit | 2025-09 | fresh | Direct | contract_name | 2 | high |
| [Kirill-Fedoseev-audit-report-v2.md](https://github.com/m0-foundation/m-portal/blob/main/audits/Kirill-Fedoseev-audit-report-v2.md) | Kirill Fedoseev | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [v1.1](https://github.com/m0-foundation/liquidity-delivery/blob/main/audits/v1.1) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xb82328...79a931`](./contracts/arbitrum-42161/0xb823280379f3e057ccae4ba5f6f772528979a931/) | ExtensionBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ffbc3...4033ef`](./contracts/arbitrum-42161/0x4ffbc316cf29e8eb39cbf819cfd3d5f5b34033ef/) | MultiMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8dfb7c...71c5e0`](./contracts/arbitrum-42161/0x8dfb7c8ce5e67ace965520b134b4aca8fd71c5e0/) | PYUSDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x593ffa...ea7bae`](./contracts/base-8453/0x593ffa1ad180c3c872628761697c5288fdea7bae/) | SpokePortalV1StorageCleaner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc560c9...678803`](./contracts/arbitrum-42161/0xc560c9b8ed6d589ee676d279f2649a236c678803/) | YieldToOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=40, low=1, medium=1
- Match method counts: extraction_exact=152

Zero-match audit list:

- [17586] | Halborn | June 2025 | [Halborn\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17587] | Adevar | July 2025 | [Adevar\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17588] | Ottersec | July 2025 | [Ottersec\_SolanaExtensions\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17595] | OtterSec | April 2025 | [OtterSec\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17596] | Sec3 | May 2025 | [Sec3\_SolanaM\_report.pdf](){rel="&#x22;nofollow&#x22;"} |
- [17616] guardian_liquidity_delivery_update.pdf
- [17619] halborn_report.pdf
- [17620] sherlock_report.pdf
- [17621] adevar_report.pdf
- [17625] v1.1

Fork inheritance lineage and inherited audits are included when available.
