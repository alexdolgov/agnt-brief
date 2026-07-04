# Agentic Audit Brief: DDEX

## Project Overview

- Project: DDEX (`ddex`)
- Website: [https://ddex.io/](https://ddex.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:22.697Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $507,392.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 16 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (libownable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auctions | unknown | ethereum | n/a | [`0x3eb398...0297b8`](./contracts/ethereum-1/0x3eb39889f4b38691249d5e67d5ecc844ce0297b8/) | ⚠️ Unaudited |
| BootstrapInterestModel | unknown | ethereum | n/a | [`0x6ef74c...6d3410`](./contracts/ethereum-1/0x6ef74ca7e14c98ac6d6a4514ac3c525e336d3410/) | ⚠️ Unaudited |
| CommonInterestModel | unknown | ethereum | n/a | [`0x7f99b2...ad0bd4`](./contracts/ethereum-1/0x7f99b2e2a676d7b56c4283d4291d97c01ead0bd4/) | ⚠️ Unaudited |
| ConstPriceOracle | unknown | ethereum | n/a | [`0x4bb5b5...d9c567`](./contracts/ethereum-1/0x4bb5b5f04865195a0bbb92d440fe8d6b9ad9c567/) | ⚠️ Unaudited |
| DaiPriceOracle | unknown | ethereum | n/a | [`0x69d740...e447b1`](./contracts/ethereum-1/0x69d740cd595dd84c427fd4f8b1346580ace447b1/) | ⚠️ Unaudited |
| EtherBootstrapInterestModel | unknown | ethereum | n/a | [`0x390370...234c74`](./contracts/ethereum-1/0x3903704e832248929c06a10aaac0a12bc1234c74/) | ⚠️ Unaudited |
| EthPriceOracle | unknown | ethereum | n/a | [`0x8984f1...b93bd2`](./contracts/ethereum-1/0x8984f1cff1d614a7404b0cfe97c6fa9110b93bd2/) | ⚠️ Unaudited |
| FeedPriceOracle | unknown | ethereum | n/a | [`0x0bde1e...5ca44c`](./contracts/ethereum-1/0x0bde1ebe3cc81314ceeb19d41ef774f1185ca44c/) | ⚠️ Unaudited |
| HybridExchange | unknown | ethereum | n/a | [`0x2cb4b4...4d883e`](./contracts/ethereum-1/0x2cb4b49c0d6e9db2164d94ce48853bf77c4d883e/) | ⚠️ Unaudited |
| Hydro | unknown | ethereum | n/a | [`0x241e82...b1a3b7`](./contracts/ethereum-1/0x241e82c79452f51fbfc89fac6d912e021db1a3b7/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0xa4a8f7...ec7d9d`](./contracts/ethereum-1/0xa4a8f7066806e5a825a6acfe7b33691e6dec7d9d/) | ⚠️ Unaudited |
| MultiSigWalletWithLock | unknown | ethereum | n/a | [`0xb15367...05f3b7`](./contracts/ethereum-1/0xb15367df8a39ea06f8f81ed35d49e056ee05f3b7/) | ⚠️ Unaudited |
| MultiSigWalletWithTimelock | unknown | ethereum | n/a | [`0x0a294e...aa72ca`](./contracts/ethereum-1/0x0a294e9b3af4c3579ea6584f3e26914b2daa72ca/) | ⚠️ Unaudited |
| OperationsComponent | unknown | ethereum | n/a | [`0x723091...be420c`](./contracts/ethereum-1/0x723091df82333033f1b646fe1ad7bbbf9cbe420c/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0xb1c0df...6be90b`](./contracts/ethereum-1/0xb1c0dfc51d25b7845ca573fe548b12dc366be90b/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x746220...a076e1`](./contracts/ethereum-1/0x74622073a4821dbfd046e9aa2ccf691341a076e1/) | ⚠️ Unaudited |
| StableCoinInterestModel | unknown | ethereum | n/a | [`0x906911...270210`](./contracts/ethereum-1/0x90691126ec8dba1a6400ea03beab8ddb1c270210/) | ⚠️ Unaudited |

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
| [hydro_audit_report_2019_14_en_1_0.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/2.0/hydro_audit_report_2019_14_en_1_0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Hydro_MultiSigWallet_Report_EN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_MultiSigWallet_Report_EN.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Hydro_Protocol_Report_CN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_Protocol_Report_CN.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Hydro_Protocol_Report_EN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_Protocol_Report_EN.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19674] hydro_audit_report_2019_14_en_1_0.pdf
- [19676] Hydro_MultiSigWallet_Report_EN.pdf
- [19677] Hydro_Protocol_Report_CN.pdf
- [19678] Hydro_Protocol_Report_EN.pdf

Fork inheritance lineage and inherited audits are included when available.
