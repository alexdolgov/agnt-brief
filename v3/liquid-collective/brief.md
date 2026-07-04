# Agentic Audit Brief: Liquid Collective

## Project Overview

- Project: Liquid Collective (`liquid-collective`)
- Website: [https://liquidcollective.io](https://liquidcollective.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.558Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $545,655,958.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 20 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (accesscontrolupgradeable, contextupgradeable, erc165upgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (21 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 18 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowlistV1 | unknown | ethereum | n/a | [`0x8892da...e493f2`](./contracts/ethereum-1/0x8892daf1fcd24b2e8a3c6194d297aaab04e493f2/) | ⚠️ Unaudited |
| BurnMintERC20 | unknown | base | n/a | [`0x2af9ee...f1f8a8`](./contracts/base-8453/0x2af9ee712a72bb1e7f4f51dacad827bf24f1f8a8/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | base | n/a | [`0x3a4e3b...14d591`](./contracts/base-8453/0x3a4e3b9a4fb73a4015b4afe1efe02214b614d591/) | ⚠️ Unaudited |
| ConfigManager | unknown | ethereum | n/a | [`0xc2f123...de032e`](./contracts/ethereum-1/0xc2f1230b2958feeca02bcd41a6a127612fde032e/) | ⚠️ Unaudited |
| CoverageFundV1 | unknown | ethereum | n/a | [`0x32aac3...e49a81`](./contracts/ethereum-1/0x32aac358b627b9feaa971cc33304027a41e49a81/) | ⚠️ Unaudited |
| ELFeeRecipientV1 | unknown | ethereum | n/a | [`0x108a04...294e13`](./contracts/ethereum-1/0x108a04f7a181a1e0a58bdb1772707aee88294e13/) | ⚠️ Unaudited |
| Firewall | unknown | ethereum | n/a | [`0x0d1de2...002ceb`](./contracts/ethereum-1/0x0d1de267015a75f5069fd1c9ed382210b3002ceb/) | ⚠️ Unaudited |
| ImmutableBeaconFactory | unknown | ethereum | n/a | [`0xb33ec2...bea808`](./contracts/ethereum-1/0xb33ec2a84e556de6b7c379dd2ed26f3855bea808/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0x0a0247...45b404`](./contracts/ethereum-1/0x0a02473e57902fd7764e6e952e2962763045b404/) | ⚠️ Unaudited |
| OperatorsRegistryV1 | unknown | ethereum | n/a | [`0x7adbc0...841008`](./contracts/ethereum-1/0x7adbc0bd23ab71b1dc8c946c0550ff87c9841008/) | ⚠️ Unaudited |
| OracleV1 | unknown | ethereum | n/a | [`0x485ade...720aa0`](./contracts/ethereum-1/0x485ade5b7f66eccad4583862bc5c2aa838720aa0/) | ⚠️ Unaudited |
| OrchestratorFactory | unknown | ethereum | n/a | [`0x083f8a...e8a7b8`](./contracts/ethereum-1/0x083f8ada3849ce97fee777cec6324277d4e8a7b8/) | ⚠️ Unaudited |
| OrchestratorV1 | unknown | ethereum | n/a | [`0x85a1dc...64a031`](./contracts/ethereum-1/0x85a1dc9f6f9af9799354fe9c717fb84f5664a031/) | ⚠️ Unaudited |
| ProtocolMetricsV1 | unknown | ethereum | n/a | [`0xb4fe3e...177a77`](./contracts/ethereum-1/0xb4fe3e83dbb646ad9050f89ab44425fbd7177a77/) | ⚠️ Unaudited |
| RedeemManagerV1 | unknown | ethereum | n/a | [`0x080b3a...ad3375`](./contracts/ethereum-1/0x080b3a41390b357ad7e8097644d1dedf57ad3375/) | ⚠️ Unaudited |
| RiverV1 | unknown | ethereum | n/a | [`0x179d66...0de4f2`](./contracts/ethereum-1/0x179d669ac78896f970040e57cb297582b50de4f2/) | ⚠️ Unaudited |
| TlcMigration | unknown | ethereum | n/a | [`0x2f9014...0a4bd9`](./contracts/ethereum-1/0x2f90147165326f6b7acc297b2e9ef977730a4bd9/) | ⚠️ Unaudited |
| TLCV1 | unknown | ethereum | n/a | [`0x1d6289...58fde4`](./contracts/ethereum-1/0x1d628949c6c59ebc69563ca94bcbcb4cba58fde4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xec3f66...d2d455`](./contracts/ethereum-1/0xec3f66d7fac189ed83593c730ef46b67a9d2d455/) | ⚠️ Unaudited |
| TUPProxy | unknown | ethereum | n/a | [`0x1235f1...06b725`](./contracts/ethereum-1/0x1235f1b60df026b2620e48e735c422425e06b725/) | ⚠️ Unaudited |
| TVSUpgradeable | unknown | ethereum | n/a | [`0xe40c54...bb7b8a`](./contracts/ethereum-1/0xe40c54b39e811ab85a19ed783b91fa10acbb7b8a/) | ⚠️ Unaudited |
| WithdrawV1 | unknown | ethereum | n/a | [`0x0afd81...c25154`](./contracts/ethereum-1/0x0afd81862eea47322cf85db39d3d07e8a3c25154/) | ⚠️ Unaudited |

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
| [www.certora.com/reports/alluvialfinance-liquidcollective](https://www.certora.com/reports/alluvialfinance-liquidcollective) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/liquid-collective-lceth/727416a8-3cf6-46fb-a103-701d5c94649e/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LiquidCollectivePR-Spearbit-Security-Review-July.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollectivePR-Spearbit-Security-Review-July.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LiquidCollectivePR-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollectivePR-Spearbit-Security-Review.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LiquidCollective3-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollective3-Spearbit-Security-Review.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LiquidCollective2-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollective2-Spearbit-Security-Review.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LiquidCollective-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/LiquidCollective-Spearbit-Security-Review.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf) | Halborn | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [security (GitHub directory)](https://github.com/liquid-collective/security) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202207_Halborn.md](https://github.com/liquid-collective/security/blob/main/audits/202207_Halborn.md) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202209_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202209_Spearbit.md) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202211_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202211_Spearbit.md) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202303_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202303_Spearbit.md) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202305_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202305_Spearbit.md) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202307_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202307_Spearbit.md) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202309_Spearbit.md](https://github.com/liquid-collective/security/blob/main/audits/202309_Spearbit.md) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202402_Certora.md](https://github.com/liquid-collective/security/blob/main/audits/202402_Certora.md) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VULNERABILITY_DISCLOSURE.md](https://github.com/liquid-collective/security/blob/main/VULNERABILITY_DISCLOSURE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20792] www.certora.com/reports/alluvialfinance-liquidcollective
- [20793] index.html
- [20794] LiquidCollectivePR-Spearbit-Security-Review-Sept.pdf
- [20795] LiquidCollectivePR-Spearbit-Security-Review-July.pdf
- [20796] LiquidCollectivePR-Spearbit-Security-Review.pdf
- [20797] LiquidCollective3-Spearbit-Security-Review.pdf
- [20798] LiquidCollective2-Spearbit-Security-Review.pdf
- [20799] LiquidCollective-Spearbit-Security-Review.pdf
- [20800] Alluvial_Liquid_Collective_Smart_Contract_Security_Audit_Report_Halborn_Final_Update_v2.pdf
- [20801] security (GitHub directory)
- [20802] 202207_Halborn.md
- [20803] 202209_Spearbit.md
- [20804] 202211_Spearbit.md
- [20805] 202303_Spearbit.md
- [20806] 202305_Spearbit.md
- [20807] 202307_Spearbit.md
- [20808] 202309_Spearbit.md
- [20809] 202402_Certora.md
- [20810] VULNERABILITY_DISCLOSURE.md

Fork inheritance lineage and inherited audits are included when available.
