# Agentic Audit Brief: Fyde Protocol

## Project Overview

- Project: Fyde Protocol (`fyde-protocol`)
- Website: [http://www.fyde.fi](http://www.fyde.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:53.592Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum
- Contract surface: 22 unique implementations (38 raw deployments)
- DeFi Llama TVL: $241,707.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 25 project-authored contract(s) across 1 chain(s); 2 ERC4626 vaults, 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (basechecker, quarantinelist). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 36 (34 live, 2 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/20 (40.0%)
- Deployed-live implementations: 20 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/20
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 22
- Raw deployments: 38
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 30.0% | 2023-09 |
| unknown | Tier 2 | 3 | 15.0% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Fyde | unknown | ethereum | n/a | 2 deployments: ethereum [`0x87cc45...7df2ee`](./contracts/ethereum-1/0x87cc45fff5c0933bb6af6bae7fc013b7ec7df2ee/); ethereum `0xdde736...de6711` | ✅ Audited |
| OracleModule | unknown | ethereum | n/a | 6 deployments: ethereum [`0x051983...bd2aee`](./contracts/ethereum-1/0x05198327206123e89c24abd9a482316449bd2aee/); ethereum `0x9b1223...ab6c5a`; ethereum `0xa44adf...4234ca`; ethereum `0xd7cb5e...1bcdf6`; ethereum `0xde0d6b...a6f83d`; ethereum `0xe8e40f...33b736` | ✅ Audited |
| PooledDepositEscrow | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9da792...8debfc`](./contracts/ethereum-1/0x9da7923224ed433c8f1047eb8eca80cce98debfc/); ethereum `0xcdeb11...362abf`; ethereum `0xddc55e...e070e1` | ✅ Audited |
| Relayer | unknown | ethereum | n/a | [`0x94194d...81d9be`](./contracts/ethereum-1/0x94194de310b99d3c8a5b8c0768cfce7aef81d9be/) | ✅ Audited |
| RelayerV2 | unknown | ethereum | n/a | [`0x6830c6...f32078`](./contracts/ethereum-1/0x6830c61df103946b63c786e63222c59677f32078/) | ✅ Audited |
| sTRSY | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16f483...f55460`](./contracts/ethereum-1/0x16f483d7a46d8d74eb176cf43687dc9dc5f55460/); ethereum `0xe11df8...1566b9` | ✅ Audited |
| TaxModule | unknown | ethereum | n/a | 3 deployments: ethereum [`0x35afe5...0a70d3`](./contracts/ethereum-1/0x35afe52bddedbc9bbe53af119568264da00a70d3/); ethereum `0x9edd8e...f53322`; ethereum `0xf6bcf9...f1eb40` | ✅ Audited |
| UserProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x68bb55...51c5a7`](./contracts/ethereum-1/0x68bb55f0bc0b9a37cd4afb5ec4794fc61651c5a7/); ethereum `0xc6f509...8239e1` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FydeOFTAdapter | adapter | ethereum | n/a | [`0x72527f...bcb519`](./contracts/ethereum-1/0x72527fec7d84764c405f28bd7e00e2693bbcb519/) | ⚠️ Unaudited |
| FydeToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a462e...98de30`](./contracts/ethereum-1/0x8a462e6a0051d006e33152fbeadfb9a14198de30/); ethereum `0xa736cd...6b0cd8` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x24b3b5...eba999`](./contracts/ethereum-1/0x24b3b50c1b87b549374876d31f919e5e6eeba999/) | ⚠️ Unaudited |
| PendlePrincipalToken | token | ethereum | n/a | [`0x1c0851...7f93b1`](./contracts/ethereum-1/0x1c085195437738d73d75dc64bc5a3e098b7f93b1/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x19d9d8...5adf6a`](./contracts/ethereum-1/0x19d9d821f6a2ed80a0a9ae06e5b12edbdd5adf6a/); ethereum `0xce1414...d15d90`; ethereum `0xd346b2...e8b3dc` | ⚠️ Unaudited |
| StakingTRSY | unknown | ethereum | n/a | [`0x6c7441...5c32f7`](./contracts/ethereum-1/0x6c7441c76d85d7ab43eacd076d37b0775f5c32f7/) | ⚠️ Unaudited |
| TrsyFeeDistributor | operational_periphery | ethereum | n/a | [`0x4e48b2...eb9687`](./contracts/ethereum-1/0x4e48b226b49797e50892bfb0feafb9c503eb9687/) | ⚠️ Unaudited |
| VestingDistributor | operational_periphery | ethereum | n/a | [`0x320407...418045`](./contracts/ethereum-1/0x3204074ad7555cf6149bc21441313611b6418045/) | ⚠️ Unaudited |
| VoteEscrow | operational_periphery | ethereum | n/a | [`0x6fa0b2...93c9ed`](./contracts/ethereum-1/0x6fa0b27ba2f951a68fa7a097f6c6ccecad93c9ed/) | ⚠️ Unaudited |
| WithdrawETH | operational_periphery | ethereum | n/a | [`0x14fba2...341fb3`](./contracts/ethereum-1/0x14fba2a6c5a4d9ceb73956ac0a4a18ca8f341fb3/) | ⚠️ Unaudited |
| YieldStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x569871...1cf59c`](./contracts/ethereum-1/0x569871ae260d85c5981374bba2b2353a3e1cf59c/); ethereum `0xb615a7...ccc3ba` | ⚠️ Unaudited |
| YieldStrategy | unknown | ethereum | n/a | [`0xc1bbad...c7f8cc`](./contracts/ethereum-1/0xc1bbad6d9eb5092b896158af62375dabedc7f8cc/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x9fd02f...1d6fa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2bf59...eab295` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/bQllaeunfO4BPaZU1ABc/uploads/DrOUIAG2nAdc0Lf0RxD8/Fyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FDrOUIAG2nAdc0Lf0RxD8%2FFyde_Core_Smart_Contract_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-09 | stale | Direct | contract_name | 16 | high |
| [spaces/bQllaeunfO4BPaZU1ABc/uploads/KXNIVvRuIB6ImuEIo7dt/Fyde-security-review.pdf](https://2610459056-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FbQllaeunfO4BPaZU1ABc%2Fuploads%2FKXNIVvRuIB6ImuEIo7dt%2FFyde-security-review.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 10 | high |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=26

Fork inheritance lineage and inherited audits are included when available.
