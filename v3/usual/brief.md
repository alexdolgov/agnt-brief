# Agentic Audit Brief: Usual

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 35 (2 matched; 33 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Usual (`usual`)
- Website: [https://usual.money](https://usual.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $112,251,217.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Usual. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Usual (`0x2b65f9d2e4b84a2df6ff0525741b75d1276a9c2f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (6 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 1 of 17 unique; 16 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/11
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 17
- Raw deployments: 17
- Audits discovered: 35 (35 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 7 fresh, 20 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 100.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 9.1% | 2024-10 |
| Sherlock | Tier 1 | 1 | 9.1% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Usual | unknown | project_anchor | own_supporting | 0 | ethereum | unit-400491 | `0x2b65f9d2e4b84a2df6ff0525741b75d1276a9c2f` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e813661628a277714c76d80c7fcb192a0896ed` | ⚠️ Unaudited |
| DaoCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eec861d49f15f585d6bb4301fc4f89bce22af4e` | ⚠️ Unaudited |
| DistributionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373114587ca96deb35a73ace1995dbed36adb24b` | ⚠️ Unaudited |
| SwapperEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65b0c88f65d620ea325ffb1ad46a5ba8a6e57d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06b964d96f5dcf7eae9d7c559b09edce244d4b8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x094b360ae512a65584d4f5be33d68b2e08677b89` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa6cd248943f3d3415458b264e2c890ff422a4c01` | ⚠️ Unaudited |
| Usd0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae12f6f805842e6dafe71a6d2b41b28ba5fc821e` | ⚠️ Unaudited |
| Usd0PP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7859a49e6fe8422add6aabd26a3231030dc96a8` | ⚠️ Unaudited |
| UsualSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a2461f3e67e82930c2df2ab032e9272a272f65` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-400492 | `0x35d8949372d46b7a3d5a56006ae77b215fc69bc0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-400493 | `0x73a15fed60bf67631dc6cd7bc5b6e8da8190acf5` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-400494 | `0x75cc0c0ddd2ccafe6ec415be686267588011e36a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-400495 | `0x82dca22b48b14de38ccf83b03330120c4b8acfe9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-400496 | `0xc4441c2be5d8fa8126822b9929ca0b81ea0de38e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-400497 | `0x2b65f9d2e4b84a2df6ff0525741b75d1276a9c2f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F663ZJyiBoOzbNZ4SyAbr%2FPegasus%20permissioned%20launch%20-%20Security%20Review%20by%20Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | medium |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FKVqreB0coxbKmJoOxJhc%2FUsual%20Pegasus%20-%20Security%20Review%20by%20Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FKv2d0EXVP8O4pSxlmYyL%2FPegasus%20Competition%20by%20Cantina.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | medium |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2Fd1bkFNZnti2CS90W7kGI%2FL2%20Tokens%20Audit%20by%20Paladin.pdf) | Paladin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FBtEA47JlsWFteDb5GpwE%2FSpearbit%20Cantina%20Report%20for%20Usual%20Pegasus%20Phase%201.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FcXuPxTTIHMM2KNopvVFh%2FSpearbit%20Cantina%20Report%20for%20Usual%20Pegasus%20Phase%202.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FKzNfBOtCOLamJuh8pQWF%2FHalborn%20Usual%20V1%20Audit.pdf) | Halborn | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Rendered PDF capture](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FnJ3MWYlnSYTkLuUFqXz5%2FSherlock%20-%20Usual%20V1%20Audit%20Competition%20Report.pdf) | Sherlock | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [L2 Tokens & Adapter Audit](https://paladinsec.co/projects/usual) | Paladin | Audit | 2024-10 | aging | Direct | address | matched | 1 | 0 | 0 | 1 | high |
| [Blackthorn Audit Report - WrappedM.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FW7YOK5z76EilIY39jmxE%2FBlackthorn%20Audit%20Report%20-%20WrappedM.pdf) | Blackthorn | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Spearbit Cantina Report for UsualM extension.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FH3vfJZvsgb1QSMC9cML0%2FSpearbit%20Cantina%20Report%20for%20UsualM%20extension.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Spearbit Cantina Report for USD0pp adjustments .pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FJd3MEliEfOdTpLn8Lj1c%2FSpearbit%20Cantina%20Report%20for%20USD0pp%20adjustments%20.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Spearbit - Audit Report on Redirect & Fee Sweep.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FHtgp95SukDIpq9RSnnt8%2FSpearbit%20-%20Audit%20Report%20on%20Redirect%20%26%20Fee%20Sweep.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Sherlock - Audit Report on Euler.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FtkQNpfVUW8AybJWRoURx%2FSherlock%20-%20Audit%20Report%20on%20Euler.pdf) | Sherlock | Contest | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Spearbit - Audit Report on USL on Euler.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FM9fwC3lrmoXsV51iAmhX%2FSpearbit%20-%20Audit%20Report%20on%20USL%20on%20Euler.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [OAK Security - Usual USL Economic Risk Assessment.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FJJRRRX0G6wz1CGyDWHI4%2FOAK%20Security%20-%20Usual%20USL%20Economic%20Risk%20Assessment.pdf) | OAK Security | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Sherlock - Audit Report on UsualUSDtB.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FLbD0S1mgQJcVQmpwKPoD%2FSherlock%20-%20Audit%20Report%20on%20UsualUSDtB.pdf) | Sherlock | Contest | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Spearbit - Audit Report on Yield Module.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FW15r2CMqY4ND4OELp9y6%2FSpearbit%20-%20Audit%20Report%20on%20Yield%20Module.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Spearbit - Usual USD0++ Investment Vault.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FPpuD1K1dwd2rI5YbqRWP%2FSpearbit%20-%20Usual%20USD0%2B%2B%20Investment%20Vault.pdf) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Sherlock - Usual Labs Public Audit Contest.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FuIIECu9Z1z2RSIcirRxf%2FSherlock%20-%20Usual%20Labs%20Public%20Audit%20Contest.pdf) | Sherlock | Contest | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 65 | high |
| [Halborn - USD0++ Investment vault.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FLQrZex8aJ7jDq4mYpjqU%2FHalborn%20-%20USD0%2B%2B%20Investment%20vault.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Spearbit - Audit report on ETH0.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FX5OW30LK9N0f5UHww6lN%2FSpearbit%20-%20Audit%20report%20on%20ETH0.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Sherlock - Audit report on on ETH0 Zapper contract.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FIZ2LqzJHKiWarrkwFRji%2FSherlock%20-%20Audit%20report%20on%20on%20ETH0%20Zapper%20contract.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Hexens - Audit report on UsualXLockup.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F34RgOSQLMEzmUOxpSh2N%2FHexens%20-%20Audit%20report%20on%20UsualXLockup.pdf) | Hexens | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Halborn - Audit report on UsualXLockup.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FRRE8HgRDg1V2qCIVA604%2FHalborn%20-%20Audit%20report%20on%20UsualXLockup.pdf) | Halborn | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Sherlock- Audit report on USD0++ upgrade (Burn Redemption Mechanism).pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F8gq6et5OGqJHJGphqav6%2FSherlock-%20Audit%20report%20on%20USD0%2B%2B%20upgrade%20(Burn%20Redemption%20Mechanism).pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Spearbit - Audit report on Sync Vault remediation.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FzSchlFhZb6F4gUpuYu3E%2FSpearbit%20-%20Audit%20report%20on%20Sync%20Vault%20remediation.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Spearbit - Audit report on Usual USDC.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2Fok3wIxqFWGKqBnRQw1Dw%2FSpearbit%20-%20Audit%20report%20on%20Usual%20USDC.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Sherlock - EUR0 Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2Fi8N4N5nDayNTlZsshidU%2FSherlock%20-%20EUR0%20Protocol%20Audit.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Hexens - sUSD0 Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FW8L1sNcxO9fA7jVvCtUZ%2FHexens%20-%20sUSD0%20Protocol%20Audit.pdf) | Hexens | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Halborn - sUSD0-SEUR0-RDM Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2F0ng3wp3joaciGht2vx48%2FHalborn%20-%20sUSD0-SEUR0-RDM%20Audit.pdf) | Halborn | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Hexens - USD0a Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FADNHL3PqW4HMQ3m5Vweo%2FHexens%20-%20USD0a%20Protocol%20Audit.pdf) | Hexens | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Sherlock - USD0a Protocol Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FLcHMqp6aagbzqsfUXR33%2FSherlock%20-%20USD0a%20Protocol%20Audit.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Sherlock - bUSD0 Upgrade Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FroXirXvK4iNSufm3lrik%2FSherlock%20-%20bUSD0%20Upgrade%20Audit.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Hexens - bUSD0 Upgrade Audit.pdf](https://1503334455-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FpUhQzPJGdJzuLTQ5sCym%2Fuploads%2FG7sBFMaZHmGWhkg8WPtt%2FHexens%20-%20bUSD0%20Upgrade%20Audit.pdf) | Hexens | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18474] Rendered PDF capture — no match: No explicit scope section found; contract names extracted from findings context and file references in the report.
- [18475] Rendered PDF capture — no match: No explicit scope section found; contract names extracted from findings context and file references in the report.
- [18476] Rendered PDF capture — no match: No explicit scope section found; contract names extracted from findings context and file references. Audit date from title: 'Pegasus Competition August13,2024'.
- [18477] Rendered PDF capture — no match: Contracts assessed table on page 4 lists four contracts: L2Usd0, L2Usd0PP, L1OFTAdapter, OFTMintAndBurnAdapter. Audit date is 11 October 2024 from the cover page.
- [18478] Rendered PDF capture — no match: Contracts extracted from findings context and file references. No explicit scope table, but contracts are clearly audited targets.
- [18479] Rendered PDF capture — no match: Extracted contract names from findings context and file references. Audit date from cover page.
- [18480] Rendered PDF capture — no match: The report mentions a 'Scope' section but its content is not provided in the text. Only one contract name (TokenMapping) is inferred from findings. No file paths or explicit scope listing available.
- [18481] Rendered PDF capture — no match: Scope section mentions repository and branch, but no explicit contract list. Contracts extracted from findings.
- [18482] L2 Tokens & Adapter Audit — matched: Contracts audited section lists two proxy contracts with addresses. Implementations are mentioned but not separately named as contracts in scope.
- [18484] Blackthorn Audit Report - WrappedM.pdf — no match: Scope section explicitly lists 11 contracts with file paths. Audit date is December 9th-December 11th, so end date is 2024-12-11.
- [18485] Spearbit Cantina Report for UsualM extension.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page.
- [18486] Spearbit Cantina Report for USD0pp adjustments .pdf — no match: No explicit scope section found; contract names extracted from findings context. Audit date from cover page.
- [18487] Spearbit - Audit Report on Redirect & Fee Sweep.pdf — no match: Contracts extracted from finding contexts; no explicit scope section found.
- [18488] Sherlock - Audit Report on Euler.pdf — no match: Scope explicitly lists two files: EulerOracle.sol and Deploy.s.sol. Contract names extracted from filenames. Audit date from 'Date Audited: February 7 - February 12, 2025'.
- [18489] Spearbit - Audit Report on USL on Euler.pdf — no match: No explicit scope section; contracts inferred from findings context. Audit date from cover page.
- [18490] OAK Security - Usual USL Economic Risk Assessment.pdf — no match: This is a qualitative economic risk assessment report, not a smart contract audit. No specific smart contracts, source files, or modules are listed in scope. The report discusses the USUAL Stability Loan (USL) product conceptually but does not name any contracts to be audited.
- [18491] Sherlock - Audit Report on UsualUSDtB.pdf — no match: Scope explicitly lists files; audit date range ends Feb 12, 2025.
- [18492] Spearbit - Audit Report on Yield Module.pdf — no match: No explicit scope section found; contracts inferred from findings and file references. Audit date from cover page: March 11, 2025.
- [18493] Spearbit - Usual USD0++ Investment Vault.pdf — no match: No explicit scope section found; contracts extracted from findings context and file references.
- [18494] Sherlock - Usual Labs Public Audit Contest.pdf — matched: Extracted all contract names from the scope section of the audit report. The audit date is the end date of the audit period (March 11, 2025).
- [18495] Halborn - USD0++ Investment vault.pdf — no match: Two contracts in scope: VaultRouter.sol and WrappedDollarVault.sol. Audit date from engagement end date.
- [18496] Spearbit - Audit report on ETH0.pdf — no match: Extracted contract names from findings context and file references. Audit date from cover page.
- [18497] Sherlock - Audit report on on ETH0 Zapper contract.pdf — no match: Only one contract in scope: Eth0MintZap. The deployment script DeployEth0MintZap.s.sol is a script, not a contract.
- [18498] Hexens - Audit report on UsualXLockup.pdf — no match: Scope explicitly lists UsualXLockup.sol and UsualX.sol. Audit date from final report date (10 June 2025).
- [18499] Halborn - Audit report on UsualXLockup.pdf — no match: Scope section lists two files: UsualXLockup.sol and UsualX.sol (with specific functions). Audit date is the end date of engagement: June 3rd, 2025.
- [18500] Sherlock- Audit report on USD0++ upgrade (Burn Redemption Mechanism).pdf — no match: Scope section lists three files; audit date range ends July 5, 2025.
- [18501] Spearbit - Audit report on Sync Vault remediation.pdf — no match: Audit report for Usual Sync Vault, reviewed by Cantina. Scope includes VaultRouter and related contracts. Audit date from cover page.
- [18502] Spearbit - Audit report on Usual USDC.pdf — no match: Only one contract (UsualUSDC) is explicitly referenced in findings. No explicit scope table, but the report title and context indicate this is the audited contract.
- [18503] Sherlock - EUR0 Protocol Audit.pdf — no match: Extracted 20 contract names from the scope section listing files. Audit date from 'Date Audited: September 12-September 19, 2025'.
- [18504] Hexens - sUSD0 Protocol Audit.pdf — no match: Extracted two contracts from scope and findings. Audit date from final report date.
- [18505] Halborn - sUSD0-SEUR0-RDM Audit.pdf — no match: Scope section explicitly lists 5 files with file paths. Audit date is the end date of engagement (October 23rd, 2025).
- [18506] Hexens - USD0a Protocol Audit.pdf — no match: Two contracts identified: SwapperEngine and USD0X. Audit date from final report date (20 November 2025).
- [18507] Sherlock - USD0a Protocol Audit.pdf — no match: Scope section explicitly lists 11 files. Audit date range October 27 - November 1, 2025, end date used.
- [18508] Sherlock - bUSD0 Upgrade Audit.pdf — no match: Scope section lists 10 files; audit date is November 11-14, 2025, so end date is 2025-11-14.
- [18509] Hexens - bUSD0 Upgrade Audit.pdf — no match: Only Usd0PP contract is explicitly mentioned in scope and findings. Other contracts (bASSET0, rt-ASSET0) are mentioned as tokens but not as separate audited contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | ClassicalOracle | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | DaoCollateral | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | RegistryAccess | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | AbstractOracle | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | Usd0 | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | normalize | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | constants | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | errors | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | Usd0 | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | Usd0PP | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | SwapperEngine | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | DaoCollateral | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ISwapperEngine | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | Constants | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | AbstractOracle | unmatched — not counted | — | mentioned in finding 3.1.1 context | no |
| Rendered PDF capture | RegistryContract | unmatched — not counted | — | mentioned in finding 3.1.1 description | no |
| Rendered PDF capture | DaoCollateral | unmatched — not counted | — | mentioned in findings 3.1.2 and 3.1.3 | no |
| Rendered PDF capture | SwapperEngine | unmatched — not counted | — | mentioned in finding 3.1.3 | no |
| Rendered PDF capture | Usd0 | unmatched — not counted | — | mentioned in finding 3.1.2 recommendation | no |
| Rendered PDF capture | StbcToken | unmatched — not counted | — | mentioned in finding 3.1.2 PoC | no |
| Rendered PDF capture | RwaMock | unmatched — not counted | — | mentioned in finding 3.1.2 PoC | no |
| Rendered PDF capture | IUsd0 | unmatched — not counted | — | mentioned in finding 3.1.2 recommendation | no |
| Rendered PDF capture | IUSDC | unmatched — not counted | — | mentioned in finding 3.1.2 PoC | no |
| Rendered PDF capture | IERC20 | unmatched — not counted | — | mentioned in finding 3.1.3 PoC | no |
| Rendered PDF capture | L2Usd0 | unmatched — not counted | — | listed in Contracts Assessed table and findings sections | no |
| Rendered PDF capture | L2Usd0PP | unmatched — not counted | — | listed in Contracts Assessed table and findings sections | no |
| Rendered PDF capture | L1OFTAdapter | unmatched — not counted | — | listed in Contracts Assessed table and findings sections | no |
| Rendered PDF capture | OFTMintAndBurnAdapter | unmatched — not counted | — | listed in Contracts Assessed table and findings sections | no |
| Rendered PDF capture | Usd0PP | unmatched — not counted | — | Listed in scope context (e.g., Usd0PP.sol#L347-L402) | no |
| Rendered PDF capture | AirdropDistribution | unmatched — not counted | — | Listed in scope context (e.g., AirdropDistribution.sol#L146-L180) | no |
| Rendered PDF capture | AirdropTaxCollector | unmatched — not counted | — | Listed in scope context (e.g., AirdropTaxCollector.sol#L126-L145) | no |
| Rendered PDF capture | IUsd0PP | unmatched — not counted | — | Listed in scope context (e.g., IUsd0PP.sol#L34) | no |
| Rendered PDF capture | Usd0PPHarness | unmatched — not counted | — | Mentioned in finding 3.4.1 as using _createUsd0PPCheck function | no |
| Rendered PDF capture | UsualSP | unmatched — not counted | — | Listed in scope context and findings | no |
| Rendered PDF capture | RewardAccrualBase | unmatched — not counted | — | Listed in scope context and findings | no |
| Rendered PDF capture | UsualX | unmatched — not counted | — | Listed in scope context and findings | no |
| Rendered PDF capture | DistributionModule | unmatched — not counted | — | Listed in scope context and findings | no |
| Rendered PDF capture | YieldBearingVault | unmatched — not counted | — | Listed in scope context and findings | no |
| Rendered PDF capture | TokenMapping | unmatched — not counted | — | mentioned in finding 7.2: 'Implement functions to remove or update RWAs in the TokenMapping contract' | no |
| Rendered PDF capture | UsualSP | unmatched — not counted | — | mentioned in findings H-1 and H-2 | no |
| Rendered PDF capture | RewardAccrualBase | unmatched — not counted | — | mentioned in finding H-1 | no |
| Rendered PDF capture | UsualX | unmatched — not counted | — | mentioned in finding H-2 | no |
| L2 Tokens & Adapter Audit | L2Usd0Proxy | unmatched — not counted | — | listed in scope with address | no |
| L2 Tokens & Adapter Audit | L2Usd0PPProxy | own contract | Usual (selected) `0x2b65f9d2e4b84a2df6ff0525741b75d1276a9c2f` — deployed 2024-11-13 13:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Blackthorn Audit Report - WrappedM.pdf | Core | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | PositionLibrary | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | PositionValue | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | PulseStrategyModule | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | VeloAmmModule | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | VeloDepositWithdrawModule | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | VeloOracle | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | DefaultAccessControl | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | LpWrapper | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | VeloDeployFactory | unmatched — not counted | — | listed in scope | no |
| Blackthorn Audit Report - WrappedM.pdf | VeloFarm | unmatched — not counted | — | listed in scope | no |
| Spearbit Cantina Report for UsualM extension.pdf | UsualM | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for UsualM extension.pdf | AggregatorV3Interface | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for UsualM extension.pdf | NAVProxyMPriceFeed | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for UsualM extension.pdf | IUsualM | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for USD0pp adjustments .pdf | DistributionModule | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for USD0pp adjustments .pdf | UsualX | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for USD0pp adjustments .pdf | IUsualX | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for USD0pp adjustments .pdf | Usd0PP | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit Cantina Report for USD0pp adjustments .pdf | YieldBearingVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit - Audit Report on Redirect & Fee Sweep.pdf | DistributionModule | unmatched — not counted | — | Context in findings | no |
| Spearbit - Audit Report on Redirect & Fee Sweep.pdf | Usd0PP | unmatched — not counted | — | Context in findings | no |
| Spearbit - Audit Report on Redirect & Fee Sweep.pdf | UsualX | unmatched — not counted | — | Context in findings | no |
| Spearbit - Audit Report on Redirect & Fee Sweep.pdf | RegistryContract | unmatched — not counted | — | Context in findings | no |
| Sherlock - Audit Report on Euler.pdf | EulerOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - Audit Report on Euler.pdf | Deploy | unmatched — not counted | — | listed in scope | no |
| Spearbit - Audit Report on USL on Euler.pdf | HookTarget | unmatched — not counted | — | mentioned in finding 3.1.2 context | no |
| Spearbit - Audit Report on USL on Euler.pdf | TokenMapping | unmatched — not counted | — | mentioned in finding 3.3.1 description | no |
| Spearbit - Audit Report on USL on Euler.pdf | DaoCollateral | unmatched — not counted | — | mentioned in finding 3.3.1 description | no |
| Spearbit - Audit Report on USL on Euler.pdf | USD0 | unmatched — not counted | — | core stablecoin of the protocol, referenced throughout | no |
| Spearbit - Audit Report on USL on Euler.pdf | USD0++ | unmatched — not counted | — | bond token, referenced throughout | no |
| Sherlock - Audit Report on UsualUSDtB.pdf | NAVProxyUSDTBPriceFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock - Audit Report on UsualUSDtB.pdf | UsualUsdtb | unmatched — not counted | — | listed in scope | no |
| Sherlock - Audit Report on UsualUSDtB.pdf | IRegistryAccess | unmatched — not counted | — | listed in scope | no |
| Sherlock - Audit Report on UsualUSDtB.pdf | IUsdtb | unmatched — not counted | — | listed in scope | no |
| Sherlock - Audit Report on UsualUSDtB.pdf | IUsualUSDTB | unmatched — not counted | — | listed in scope | no |
| Spearbit - Audit Report on Yield Module.pdf | DistributionModule | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit - Audit Report on Yield Module.pdf | YieldModule | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit - Audit Report on Yield Module.pdf | ClassicalOracle | unmatched — not counted | — | Mentioned in findings as contract used by YieldModule | no |
| Spearbit - Audit Report on Yield Module.pdf | iUsd0ppVault | unmatched — not counted | — | Mentioned in findings as vault contract | no |
| Spearbit - Usual USD0++ Investment Vault.pdf | WrappedDollarVault | unmatched — not counted | — | listed in scope and findings | no |
| Spearbit - Usual USD0++ Investment Vault.pdf | VaultRouter | unmatched — not counted | — | listed in scope and findings | no |
| Spearbit - Usual USD0++ Investment Vault.pdf | Usd0PP | unmatched — not counted | — | mentioned in findings | no |
| Spearbit - Usual USD0++ Investment Vault.pdf | constants | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | NAVProxyMPriceFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | UsualM | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | constants | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IRegistryAccess | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsualM | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IWrappedMLike | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | MarketParamsLib | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | ICurveFactory | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | ICurvePool | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IMorpho | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | L2Usd0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | L2Usd0PP | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | TokenMapping | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | AirdropDistribution | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | AirdropTaxCollector | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | DaoCollateral | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | DistributionModule | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | errors | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IDaoCollateral | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IDistributor | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | ISwapperEngine | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IAirdropDistribution | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IAirdropTaxCollector | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IGauge | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IDistributionAllocator | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IDistributionModule | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IDistributionOperator | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IOffChainDistributionChallenger | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IAggregator | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IDataPublisher | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IRegistryContract | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IERC677 | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IL2Usd0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IL2Usd0PP | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IRwaMock | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsd0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsd0PP | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsual | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsualS | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsualSP | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | ITokenMapping | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsualX | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | RewardAccrualBase | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | AbstractOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | ClassicalOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | UsualOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | RegistryAccess | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | RegistryContract | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | SwapperEngine | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | Usd0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | Usd0PP | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | Usual | own contract | Usual (selected) `0x2b65f9d2e4b84a2df6ff0525741b75d1276a9c2f` — deployed 2024-11-13 13:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Usual Labs Public Audit Contest.pdf | UsualS | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | UsualSP | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | CheckAccessControl | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | NoncesUpgradeable | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | normalize | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | UsualX | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | YieldBearingVault | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | NAVProxyUSDTBPriceFeed | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | UsualUsdtb | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsdtb | unmatched — not counted | — | listed in scope | no |
| Sherlock - Usual Labs Public Audit Contest.pdf | IUsualUSDTB | unmatched — not counted | — | listed in scope | no |
| Halborn - USD0++ Investment vault.pdf | VaultRouter | unmatched — not counted | — | listed in scope section | no |
| Halborn - USD0++ Investment vault.pdf | WrappedDollarVault | unmatched — not counted | — | listed in scope section | no |
| Spearbit - Audit report on ETH0.pdf | DaoCollateral | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit - Audit report on ETH0.pdf | Eth0 | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit - Audit report on ETH0.pdf | LidoWstEthOracle | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit - Audit report on ETH0.pdf | TokenMapping | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit - Audit report on ETH0.pdf | AbstractOracle | unmatched — not counted | — | Mentioned in recommendation | no |
| Spearbit - Audit report on ETH0.pdf | Normalize | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | RegistryContract | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | RegistryAccess | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | Treasury | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | Oracle | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | IEth0 | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | ITokenMapping | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | IOracle | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | IRegistryAccess | unmatched — not counted | — | Mentioned in findings context | no |
| Spearbit - Audit report on ETH0.pdf | IRegistryContract | unmatched — not counted | — | Mentioned in findings context | no |
| Sherlock - Audit report on on ETH0 Zapper contract.pdf | Eth0MintZap | unmatched — not counted | — | listed in scope | no |
| Hexens - Audit report on UsualXLockup.pdf | UsualXLockup | unmatched — not counted | — | listed in scope | no |
| Hexens - Audit report on UsualXLockup.pdf | UsualX | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit report on UsualXLockup.pdf | UsualXLockup | unmatched — not counted | — | listed in scope | no |
| Halborn - Audit report on UsualXLockup.pdf | UsualX | unmatched — not counted | — | listed in scope (depositAndLock and depositAndLockWithPermit functions) | no |
| Sherlock- Audit report on USD0++ upgrade (Burn Redemption Mechanism).pdf | IDaoCollateral | unmatched — not counted | — | listed in scope | no |
| Sherlock- Audit report on USD0++ upgrade (Burn Redemption Mechanism).pdf | Usd0PP | unmatched — not counted | — | listed in scope | no |
| Sherlock- Audit report on USD0++ upgrade (Burn Redemption Mechanism).pdf | CheckAccessControl | unmatched — not counted | — | listed in scope | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | VaultRouter | unmatched — not counted | — | mentioned in findings and context | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | SUSDS | unmatched — not counted | — | mentioned as contract in scope | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | USD0 | unmatched — not counted | — | mentioned as contract in scope | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | USD0PP | unmatched — not counted | — | mentioned as contract in scope | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | USDS | unmatched — not counted | — | mentioned as contract in scope | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | IUSD0ppMinter | unmatched — not counted | — | mentioned in test code | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | IParaSwapAugustus | unmatched — not counted | — | mentioned in test code | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | MockAugustus | unmatched — not counted | — | test contract mentioned in findings | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | VulnerabilityDemoTest | unmatched — not counted | — | test contract mentioned in findings | no |
| Spearbit - Audit report on Sync Vault remediation.pdf | BaseIntegrationTest | unmatched — not counted | — | test contract mentioned in findings | no |
| Spearbit - Audit report on Usual USDC.pdf | UsualUSDC | unmatched — not counted | — | mentioned in findings context and as the main contract reviewed | no |
| Sherlock - EUR0 Protocol Audit.pdf | DaoCollateral | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | IDaoCollateral | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | IAggregator | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | IDataPublisher | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | IOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | IRegistryAccess | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | IRegistryContract | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | ISwapperEngine | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | IEur0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | ITokenMapping | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | CircleEurcOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | ClassicalOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | RegistryAccess | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | RegistryContract | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | SwapperEngine | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | Eur0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | TokenMapping | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | CheckAccessControl | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | NoncesUpgradeable | unmatched — not counted | — | listed in scope | no |
| Sherlock - EUR0 Protocol Audit.pdf | normalize | unmatched — not counted | — | listed in scope | no |
| Hexens - sUSD0 Protocol Audit.pdf | SUsd0 | unmatched — not counted | — | listed in scope and findings | no |
| Hexens - sUSD0 Protocol Audit.pdf | RevenueDistributionModule | unmatched — not counted | — | listed in scope and findings | no |
| Halborn - sUSD0-SEUR0-RDM Audit.pdf | IRevenueDistributionModule | unmatched — not counted | — | listed in scope | no |
| Halborn - sUSD0-SEUR0-RDM Audit.pdf | IsUSD0 | unmatched — not counted | — | listed in scope | no |
| Halborn - sUSD0-SEUR0-RDM Audit.pdf | RevenueDistributionModule | unmatched — not counted | — | listed in scope | no |
| Halborn - sUSD0-SEUR0-RDM Audit.pdf | sUSD0 | unmatched — not counted | — | listed in scope | no |
| Halborn - sUSD0-SEUR0-RDM Audit.pdf | YieldBearingVault | unmatched — not counted | — | listed in scope | no |
| Hexens - USD0a Protocol Audit.pdf | SwapperEngine | unmatched — not counted | — | listed in scope and findings | no |
| Hexens - USD0a Protocol Audit.pdf | USD0X | unmatched — not counted | — | listed in scope and findings | no |
| Sherlock - USD0a Protocol Audit.pdf | DaoCollateral | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | Gateway | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | ClassicalOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | DebtUSDCOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | RegistryAccess | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | RegistryContract | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | SwapperEngine | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | DebtUSDC | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | TokenMapping | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | USD0X | unmatched — not counted | — | listed in scope | no |
| Sherlock - USD0a Protocol Audit.pdf | normalize | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | constants | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | AbstractOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | ClassicalOracle | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | RegistryAccess | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | RegistryContract | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | TokenMapping | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | RTUsd0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | Usd0PP | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | Usd0 | unmatched — not counted | — | listed in scope | no |
| Sherlock - bUSD0 Upgrade Audit.pdf | CheckAccessControl | unmatched — not counted | — | listed in scope | no |
| Hexens - bUSD0 Upgrade Audit.pdf | Usd0PP | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 33
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 239 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=24, low=2, medium=9
- Match method counts: address=1, unique_name=1

Zero-match audit list:

- [18474] Rendered PDF capture
- [18475] Rendered PDF capture
- [18476] Rendered PDF capture
- [18477] Rendered PDF capture
- [18478] Rendered PDF capture
- [18479] Rendered PDF capture
- [18480] Rendered PDF capture
- [18481] Rendered PDF capture
- [18484] Blackthorn Audit Report - WrappedM.pdf
- [18485] Spearbit Cantina Report for UsualM extension.pdf
- [18486] Spearbit Cantina Report for USD0pp adjustments .pdf
- [18487] Spearbit - Audit Report on Redirect & Fee Sweep.pdf
- [18488] Sherlock - Audit Report on Euler.pdf
- [18489] Spearbit - Audit Report on USL on Euler.pdf
- [18490] OAK Security - Usual USL Economic Risk Assessment.pdf
- [18491] Sherlock - Audit Report on UsualUSDtB.pdf
- [18492] Spearbit - Audit Report on Yield Module.pdf
- [18493] Spearbit - Usual USD0++ Investment Vault.pdf
- [18495] Halborn - USD0++ Investment vault.pdf
- [18496] Spearbit - Audit report on ETH0.pdf
- [18497] Sherlock - Audit report on on ETH0 Zapper contract.pdf
- [18498] Hexens - Audit report on UsualXLockup.pdf
- [18499] Halborn - Audit report on UsualXLockup.pdf
- [18500] Sherlock- Audit report on USD0++ upgrade (Burn Redemption Mechanism).pdf
- [18501] Spearbit - Audit report on Sync Vault remediation.pdf
- [18502] Spearbit - Audit report on Usual USDC.pdf
- [18503] Sherlock - EUR0 Protocol Audit.pdf
- [18504] Hexens - sUSD0 Protocol Audit.pdf
- [18505] Halborn - sUSD0-SEUR0-RDM Audit.pdf
- [18506] Hexens - USD0a Protocol Audit.pdf
- [18507] Sherlock - USD0a Protocol Audit.pdf
- [18508] Sherlock - bUSD0 Upgrade Audit.pdf
- [18509] Hexens - bUSD0 Upgrade Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
