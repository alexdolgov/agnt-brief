# Agentic Audit Brief: DDEX

## Project Overview

- Project: DDEX (`ddex`)
- Website: [https://ddex.io/](https://ddex.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.804Z
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

- Coverage of deployed-live implementations: 6/16 (37.5%)
- Deployed-live implementations: 17 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/17
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 41.2% | 2019-08 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auctions | unknown | ethereum | n/a | [`0x3eb398...0297b8`](./contracts/ethereum-1/0x3eb39889f4b38691249d5e67d5ecc844ce0297b8/) | ✅ Audited |
| DaiPriceOracle | unknown | ethereum | n/a | [`0x69d740...e447b1`](./contracts/ethereum-1/0x69d740cd595dd84c427fd4f8b1346580ace447b1/) | ✅ Audited |
| EthPriceOracle | unknown | ethereum | n/a | [`0x8984f1...b93bd2`](./contracts/ethereum-1/0x8984f1cff1d614a7404b0cfe97c6fa9110b93bd2/) | ✅ Audited |
| HybridExchange | unknown | ethereum | n/a | [`0x2cb4b4...4d883e`](./contracts/ethereum-1/0x2cb4b49c0d6e9db2164d94ce48853bf77c4d883e/) | ✅ Audited |
| MultiSigWalletWithLock | unknown | ethereum | n/a | [`0xb15367...05f3b7`](./contracts/ethereum-1/0xb15367df8a39ea06f8f81ed35d49e056ee05f3b7/) | ✅ Audited |
| OperationsComponent | unknown | ethereum | n/a | [`0x723091...be420c`](./contracts/ethereum-1/0x723091df82333033f1b646fe1ad7bbbf9cbe420c/) | ✅ Audited |
| Proxy | unknown | ethereum | n/a | [`0x746220...a076e1`](./contracts/ethereum-1/0x74622073a4821dbfd046e9aa2ccf691341a076e1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BootstrapInterestModel | unknown | ethereum | n/a | [`0x6ef74c...6d3410`](./contracts/ethereum-1/0x6ef74ca7e14c98ac6d6a4514ac3c525e336d3410/) | ⚠️ Unaudited |
| CommonInterestModel | unknown | ethereum | n/a | [`0x7f99b2...ad0bd4`](./contracts/ethereum-1/0x7f99b2e2a676d7b56c4283d4291d97c01ead0bd4/) | ⚠️ Unaudited |
| ConstPriceOracle | unknown | ethereum | n/a | [`0x4bb5b5...d9c567`](./contracts/ethereum-1/0x4bb5b5f04865195a0bbb92d440fe8d6b9ad9c567/) | ⚠️ Unaudited |
| EtherBootstrapInterestModel | unknown | ethereum | n/a | [`0x390370...234c74`](./contracts/ethereum-1/0x3903704e832248929c06a10aaac0a12bc1234c74/) | ⚠️ Unaudited |
| FeedPriceOracle | unknown | ethereum | n/a | [`0x0bde1e...5ca44c`](./contracts/ethereum-1/0x0bde1ebe3cc81314ceeb19d41ef774f1185ca44c/) | ⚠️ Unaudited |
| Hydro | unknown | ethereum | n/a | [`0x241e82...b1a3b7`](./contracts/ethereum-1/0x241e82c79452f51fbfc89fac6d912e021db1a3b7/) | ⚠️ Unaudited |
| Migrations | unknown | ethereum | n/a | [`0xa4a8f7...ec7d9d`](./contracts/ethereum-1/0xa4a8f7066806e5a825a6acfe7b33691e6dec7d9d/) | ⚠️ Unaudited |
| MultiSigWalletWithTimelock | unknown | ethereum | n/a | [`0x0a294e...aa72ca`](./contracts/ethereum-1/0x0a294e9b3af4c3579ea6584f3e26914b2daa72ca/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0xb1c0df...6be90b`](./contracts/ethereum-1/0xb1c0dfc51d25b7845ca573fe548b12dc366be90b/) | ⚠️ Unaudited |
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
| [hydro_audit_report_2019_14_en_1_0.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/2.0/hydro_audit_report_2019_14_en_1_0.pdf) | unknown | Audit | 2019-08 | stale | Direct | contract_name | 4 | high |
| [Hydro_MultiSigWallet_Report_EN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_MultiSigWallet_Report_EN.pdf) | unknown | Audit | 2018-12 | stale | Direct | contract_name | 1 | high |
| [Hydro_Protocol_Report_CN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_Protocol_Report_CN.pdf) | unknown | Audit | 2018-12 | stale | Direct | contract_name | 2 | high |
| [Hydro_Protocol_Report_EN.pdf](https://github.com/HydroProtocol/audit-reports/blob/master/1.0/Hydro_Protocol_Report_EN.pdf) | unknown | Audit | 2018-12 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6ef74c...6d3410`](./contracts/ethereum-1/0x6ef74ca7e14c98ac6d6a4514ac3c525e336d3410/) | BootstrapInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f99b2...ad0bd4`](./contracts/ethereum-1/0x7f99b2e2a676d7b56c4283d4291d97c01ead0bd4/) | CommonInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bb5b5...d9c567`](./contracts/ethereum-1/0x4bb5b5f04865195a0bbb92d440fe8d6b9ad9c567/) | ConstPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x390370...234c74`](./contracts/ethereum-1/0x3903704e832248929c06a10aaac0a12bc1234c74/) | EtherBootstrapInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bde1e...5ca44c`](./contracts/ethereum-1/0x0bde1ebe3cc81314ceeb19d41ef774f1185ca44c/) | FeedPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x241e82...b1a3b7`](./contracts/ethereum-1/0x241e82c79452f51fbfc89fac6d912e021db1a3b7/) | Hydro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4a8f7...ec7d9d`](./contracts/ethereum-1/0xa4a8f7066806e5a825a6acfe7b33691e6dec7d9d/) | Migrations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a294e...aa72ca`](./contracts/ethereum-1/0x0a294e9b3af4c3579ea6584f3e26914b2daa72ca/) | MultiSigWalletWithTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1c0df...6be90b`](./contracts/ethereum-1/0xb1c0dfc51d25b7845ca573fe548b12dc366be90b/) | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x906911...270210`](./contracts/ethereum-1/0x90691126ec8dba1a6400ea03beab8ddb1c270210/) | StableCoinInterestModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=9

Fork inheritance lineage and inherited audits are included when available.
