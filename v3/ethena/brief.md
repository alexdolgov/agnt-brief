# Agentic Audit Brief: Ethena

## Project Overview

- Project: Ethena (`ethena`)
- Website: [https://www.app.ethena.fi/join/3y20d](https://www.app.ethena.fi/join/3y20d)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:23.499Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: berachain, ethereum, mantle
- Contract surface: 26 unique implementations (26 raw deployments)
- DeFi Llama TVL: $4,826,792,406.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 26 project-authored contract(s) across 3 chain(s); 2 ERC4626 vaults, 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 14 common project-authored base contract(s) (proxy, oapp, oappsender). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (25 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/25 (28.0%)
- Deployed-live implementations: 25 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/26
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 16.0% (Code4rena, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 5 | 19.2% | 2024-10 |
| 4naly3er | Tier 2 | 4 | 15.4% | 2023-10 |
| bot | Tier 2 | 4 | 15.4% | 2023-10 |
| Code4rena | Tier 1 | 4 | 15.4% | 2023-10 |
| Quantstamp | Tier 2 | 4 | 15.4% | 2024-10 |
| Spearbit | Tier 1 | 4 | 15.4% | 2023-10 |
| unknown | Tier 2 | 3 | 11.5% | 2024-05 |
| Pashov | Tier 2 | 2 | 7.7% | 2023-12 |
| Zellic | Tier 2 | 2 | 7.7% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ENA | unknown | ethereum | n/a | [`0x57e114...1e6061`](./contracts/ethereum-1/0x57e114b691db790c35207b2e685d4a43181e6061/) | ✅ Audited |
| EthenaLPStaking | unknown | ethereum | n/a | [`0x8707f2...cfc512`](./contracts/ethereum-1/0x8707f238936c12c309bfc2b9959c35828acfc512/) | ✅ Audited |
| EthenaMinting | unknown | ethereum | n/a | [`0x2cc440...f8afc3`](./contracts/ethereum-1/0x2cc440b721d2cafd6d64908d6d8c4acc57f8afc3/) | ✅ Audited |
| StakedENA | unknown | ethereum | n/a | [`0x7fd57b...e1018b`](./contracts/ethereum-1/0x7fd57b46ae1a7b14f6940508381877ee03e1018b/) | ✅ Audited |
| StakedUSDeV2 | unknown | ethereum | n/a | [`0x6bf967...bac41d`](./contracts/ethereum-1/0x6bf967288ffef9420b142fb97ccf236584bac41d/) | ✅ Audited |
| StakingRewardsDistributor | unknown | ethereum | n/a | [`0xf2fa33...c6b439`](./contracts/ethereum-1/0xf2fa332bd83149c66b09b45670bce64746c6b439/) | ✅ Audited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd...1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ENAOFTAdapter | unknown | ethereum | n/a | [`0x58538e...9c0133`](./contracts/ethereum-1/0x58538e6a46e07434d7e7375bc268d3cb839c0133/) | ⚠️ Unaudited |
| EthenaTimelockController | unknown | ethereum | n/a | [`0x7deee3...0175ae`](./contracts/ethereum-1/0x7deee377b91fd419c8ff2257197ae457fe0175ae/) | ⚠️ Unaudited |
| EthenaWallet | unknown | ethereum | n/a | [`0xcd1b8d...33a02e`](./contracts/ethereum-1/0xcd1b8dc7813bb89e179c400e0b1d16cedf33a02e/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x2b5ab5...5dd4d5`](./contracts/ethereum-1/0x2b5ab59163a6e93b4486f6055d33ca4a115dd4d5/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | mantle | n/a | [`0x799a2c...a060bb`](./contracts/mantle-5000/0x799a2cd46cbc7fb53949072257e6331054a060bb/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | berachain | n/a | [`0x093d3f...b09364`](./contracts/berachain-80094/0x093d3f4785149a3d2600cb10d63afa14f9b09364/) | ⚠️ Unaudited |
| Groth16Verifier | unknown | ethereum | n/a | [`0x8a526f...005234`](./contracts/ethereum-1/0x8a526f919c391105ef251ddede15067027005234/) | ⚠️ Unaudited |
| MellowVaultCompat | unknown | ethereum | n/a | [`0xc65433...c47bd8`](./contracts/ethereum-1/0xc65433845ecd16688eda196497fa9130d6c47bd8/) | ⚠️ Unaudited |
| MockToken | unknown | ethereum | n/a | [`0xe90ec1...58d16b`](./contracts/ethereum-1/0xe90ec12369fbbcbcdaaa320da59134281458d16b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x3c405f...9acd68`](./contracts/ethereum-1/0x3c405f68d5c6ece868e5646cac926679839acd68/) | ⚠️ Unaudited |
| StakedUSDeOFTAdapter | unknown | ethereum | n/a | [`0x211cc4...5fe5d2`](./contracts/ethereum-1/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| TestnetERC20 | unknown | ethereum | n/a | [`0xabb158...3cbea7`](./contracts/ethereum-1/0xabb15848b98d3ef7ad20a69127b003c7613cbea7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0795ab...aa28c3`](./contracts/ethereum-1/0x0795ab0dc75497a2c3f6345f2de0feef0eaa28c3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xc13919...18ac1c`](./contracts/ethereum-1/0xc139190f447e929f090edeb554d95abb8b18ac1c/) | ⚠️ Unaudited |
| UniswapV3Pool | unknown | ethereum | n/a | [`0x435664...2f1e47`](./contracts/ethereum-1/0x435664008f38b0650fbc1c9fc971d0a3bc2f1e47/) | ⚠️ Unaudited |
| USDeOFTAdapter | unknown | ethereum | n/a | [`0x5d3a1f...52ef34`](./contracts/ethereum-1/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| USDtb | unknown | ethereum | n/a | [`0xea8a76...39e475`](./contracts/ethereum-1/0xea8a763b5b1f9c9c7aea64f33947448d9e39e475/) | ⚠️ Unaudited |
| USDtbMinting | unknown | ethereum | n/a | [`0xa3ddbf...48416a`](./contracts/ethereum-1/0xa3ddbf92077b850e29c4805df0a2459ae048416a/) | ⚠️ Unaudited |
| VaultRouter | unknown | ethereum | n/a | [`0x231fa7...331c3c`](./contracts/ethereum-1/0x231fa76fd55284082ec5aba51272b9ff68331c3c/) | ⚠️ Unaudited |

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
| [Ethena x Zellic - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FGZbd1DrrG3YmnTlJnTHa%2FEthena%20-%20Zellic%20Audit%20Report%20Draft.pdf) | Zellic | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Ethena x Quantstamp - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2F17Ucep7IYMBZ6mAHGLyw%2FEthena%20Final%20Report%20(1).pdf) | Quantstamp | Audit | 2023-09 | stale | Direct | contract_name | 4 | high |
| [Spearbit x Ethena - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FsX7xO54StGnS6RlZM0Qa%2FSpearbit%20_Ethena_v2_Final_report-ethena__1_.pdf) | Spearbit | Audit | 2023-10 | stale | Direct | contract_name | 4 | high |
| [Ethena x Pashov - Audit Report](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FzUZDAQ77jrhUOIMqFka9%2FEthena-security-review%20(1).pdf) | Pashov Audit Group | Audit | 2023-10 | stale | Direct | contract_name | 4 | high |
| [Ethena-security-review (1).pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FBCV8xxvUneCO2WlUk2KS%2FEthena-security-review%20(1).pdf) | Pashov | Audit | 2023-12 | stale | Direct | contract_name | 2 | high |
| [v2-audit.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FJHbdthPqKCPoZFzrpryW%2Fv2-audit.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [Ethena x Pashov - SENA Audit Report.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FtqsJW7hPQMXv80sibsUK%2FEthena%20x%20Pashov%20-%20SENA%20Audit%20Report.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Ethena x Quantstamp - USTB.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2FuyJ6FDS2CVacoHv303Cw%2FEthena%20x%20Quantstamp%20-%20USTB.pdf) | Quantstamp | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Ethena x Cyfrin - USTB.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2Fd7jvu5NZ9eh8thYYRBmP%2FEthena%20x%20Cyfrin%20-%20USTB.pdf) | Cyfrin | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Ethena x Pashov - USTB.pdf](https://596495599-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FsBsPyff5ft3inFy9jyjt%2Fuploads%2Fvjn1dqCWVE3YWhLFTFFU%2FEthena%20x%20Pashov%20-%20USTB.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [View report](https://code4rena.com/reports/2023-10-ethena) | Code4rena | Contest | 2023-10 | stale | Direct | contract_name | 4 | high |
| [4naly3er-report.md](https://github.com/code-423n4/2023-10-ethena/blob/main/4naly3er-report.md) | 4naly3er | Contest | 2023-10 | stale | Direct | contract_name | 4 | high |
| [bot-report.md](https://github.com/code-423n4/2023-10-ethena/blob/main/bot-report.md) | bot | Contest | 2023-10 | stale | Direct | contract_name | 4 | high |
| [AUDIT_LENDING.md](https://github.com/code-423n4/2023-10-ethena/blob/main/audit/AUDIT_LENDING.md) | unknown | Contest | 2023-10 | stale | Direct | contract_name | 1 | low |
| [AUDIT_MINT.md](https://github.com/code-423n4/2023-10-ethena/blob/main/audit/AUDIT_MINT.md) | unknown | Contest | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [AUDIT_STAKING.md](https://github.com/code-423n4/2023-10-ethena/blob/main/audit/AUDIT_STAKING.md) | unknown | Contest | 2023-10 | stale | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10, low=1
- Match method counts: extraction_exact=32

Zero-match audit list:

- [17196] Ethena x Quantstamp - USTB.pdf
- [17197] Ethena x Cyfrin - USTB.pdf
- [17198] Ethena x Pashov - USTB.pdf
- [17203] AUDIT_MINT.md
- [17204] AUDIT_STAKING.md

Fork inheritance lineage and inherited audits are included when available.
