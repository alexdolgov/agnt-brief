# Agentic Audit Brief: Swellchain Bridge

## Project Overview

- Project: Swellchain Bridge (`swellchain-bridge`)
- Website: [https://superbridge.swellnetwork.io](https://superbridge.swellnetwork.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.389Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum
- Contract surface: 26 unique implementations (36 raw deployments)
- DeFi Llama TVL: $261,947.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 48 project-authored contract(s) across 1 chain(s); 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 18 common project-authored base contract(s) (oftadapter, oftcore, oapp). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Swell** (`swell`) in the Accountant, AeraStrategy, DelayedWithdraw, RoleManager subsystem.
8 audits inherited from `swell`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 35 (34 live, 1 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/25 (8.0%)
- Deployed-live implementations: 25 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/25
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 26
- Raw deployments: 36
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 8.0% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 2 | 8.0% | 2024-04 |
| Barracude | Tier 2 | 2 | 8.0% | 2024-06 |
| ChainSecurity | Tier 1 | 2 | 8.0% | 2024-08 |
| Pashov Audit Group | Tier 2 | 2 | 8.0% | 2024-07 |
| Sigma Prime | Tier 2 | 2 | 8.0% | 2024-07 |
| Spearbit | Tier 1 | 2 | 8.0% | 2024-04 |
| unknown | Tier 2 | 2 | 8.0% | 2024-08 |
| yAudit | Tier 2 | 2 | 8.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accountant | unknown | ethereum | n/a | 2 deployments: ethereum [`0x15a94d...8ba7b6`](./contracts/ethereum-1/0x15a94d49fac6e23e17c1366c999117a1de8ba7b6/); ethereum `0x48dacb...fb3825` | ✅ Audited |
| RoleManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1bb44f...975bf3`](./contracts/ethereum-1/0x1bb44f9d91b4276621550aeea5d2d96279975bf3/); ethereum `0x8413e6...f4d6af`; ethereum `0xa1a325...b4e7c1`; ethereum `0xd90541...d5b4a1` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | governance | ethereum | n/a | [`0xa54a84...dafc8a`](./contracts/ethereum-1/0xa54a84f17c2180148c762d79bc57bdff7fdafc8a/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0x143874...174dd1`](./contracts/ethereum-1/0x14387438ee964e826a4eaeb95b2bce7754174dd1/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x876906...2f0f57`](./contracts/ethereum-1/0x87690676786cdc8cca75a472e483af7c8f2f0f57/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x5a0aae...7c3d2a`](./contracts/ethereum-1/0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x9ba6e0...006b3a`](./contracts/ethereum-1/0x9ba6e03d8b90de867373db8cf1a58d2f7f006b3a/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0xe6a99e...903759`](./contracts/ethereum-1/0xe6a99ef12995defc5ff47ec0e13252f0e6903759/) | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7e9793...5e65a2`](./contracts/ethereum-1/0x7e97935fbdf2a27ea35c4fdddacf5acd685e65a2/); ethereum `0xecf337...d24121` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | n/a | [`0xfd7618...44bc1e`](./contracts/ethereum-1/0xfd7618330e63b493070dc8c491ad4ad26144bc1e/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x7aa496...5aacc8`](./contracts/ethereum-1/0x7aa4960908b13d104bf056b23e2c76b43c5aacc8/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x16e83c...344ce4`](./contracts/ethereum-1/0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4/) | ⚠️ Unaudited |
| OFTAdapterSwETH | adapter | ethereum | n/a | [`0x2c1b34...6f94e2`](./contracts/ethereum-1/0x2c1b3426e557d6756d8a8859a0779373236f94e2/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | n/a | [`0xc2b228...f3f603`](./contracts/ethereum-1/0xc2b228cd433ebae788de287ede2abe55b3f3f603/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x758e0e...b87812`](./contracts/ethereum-1/0x758e0ee66102816f5c3ec9ecc1188860fbb87812/) | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0xa0cfbe...fa6893`](./contracts/ethereum-1/0xa0cfbe3402d6e0a74e96d3c360f74d5ea4fa6893/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x9c065e...1be277`](./contracts/ethereum-1/0x9c065e11870b891d214bc2da7ef1f9ddfa1be277/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x4c4710...269dd6`](./contracts/ethereum-1/0x4c4710a4ec3f514a492cc6460818c4a6a6269dd6/); ethereum `0x674822...0931a9`; ethereum `0x95e8ba...151ef6` | ⚠️ Unaudited |
| RSwellOFTAdapter | adapter | ethereum | n/a | [`0x428cda...b2ac58`](./contracts/ethereum-1/0x428cda6c1994b926f75a4830d5baedee9db2ac58/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x06f7fb...038d0e`](./contracts/ethereum-1/0x06f7fb1c74147e34fce04a6828c7bf809b038d0e/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/); ethereum `0xa5bd95...2aa3e2` | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | ethereum | n/a | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | ⚠️ Unaudited |
| SymbioticAdapter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2a6a2b...c0caf8`](./contracts/ethereum-1/0x2a6a2beebf6d65e03246087a41812db1c5c0caf8/); ethereum `0x69dda9...41836a`; ethereum `0x9e07af...3fdae7` | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | [`0xd3d4c6...7ff1a4`](./contracts/ethereum-1/0xd3d4c6b703978a5d24fecf3a70a51127667ff1a4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd525bc...547c44` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Swell_swBTC_audit.pdf](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/ChainSecurity_Swell_swBTC_audit.pdf) | ChainSecurity | Audit | 2024-08 | aging | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |
| [NM_0273_SWELL_BTC_LRT.pdf](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/NM_0273_SWELL_BTC_LRT.pdf) | unknown | Audit | 2024-08 | aging | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |
| [Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf) | Sigma Prime | Audit | 2024-07 | stale | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |
| [NM0231_FINAL_SWELL.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/NM0231_FINAL_SWELL.pdf) | Barracude | Audit | 2024-06 | stale | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |
| [Swell Staking Security Audit Report.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20L2%20Pre%20Deposit/Swell%20Staking%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-04 | stale | Inherited from Swell — forked code, scoped to Accountant, AeraStrategy, DelayedWithdraw, RoleManager | inherited | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=48

Fork inheritance lineage and inherited audits are included when available.
