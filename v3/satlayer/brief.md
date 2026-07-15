# Agentic Audit Brief: SatLayer

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 12 (3 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SatLayer (`satlayer`)
- Website: [https://satlayer.xyz/](https://satlayer.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, bitlayer, bob, bsc, ethereum, sepolia
- Contract surface: 60 unique implementations (61 raw deployments)
- Coverage basis: 3/35 confirmed own live verified implementations (8.6%); conservative 8.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $176,493.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SatLayer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 36 contract row(s) across base, berachain, bitlayer, bob, bsc, ethereum, sepolia. Structural roles: 32 core, 3 supporting, 1 infra. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 36
- Structural roles: core (32), supporting (3), infra (1)
- Contract kinds: contract (35), abstract (1)
- Detected standards: ownable (23), erc20 (22), erc1967proxy (11), pausable (4), accesscontrol (1), erc165 (1), ownable2step (1)
- Frameworks: openzeppelin (35), openzeppelin-upgradeable (8)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8236a8...634494`, chain 1)
- UnnamedContract (`0xf6718b...28b8a3`, chain 1)
- UnnamedContract (`0xff2858...b5ee5b`, chain 1)
- UnnamedContract (`0xf6718b...28b8a3`, chain 56)
- UnnamedContract (`0x236f8c...803894`, chain 60808)
- UnnamedContract (`0x32fd8e...39fb83`, chain 60808)
- UnnamedContract (`0x4cbe83...98aa09`, chain 60808)
- UnnamedContract (`0x09def5...fbe34b`, chain 80094)
- UnnamedContract (`0x1fcca6...404e1e`, chain 80094)
- UnnamedContract (`0xad9f7d...ca4ec8`, chain 80094)
- UnnamedContract (`0x2e3c78...4a9a1c`, chain 200901)
- UnnamedContract (`0x4fdb05...24b8b6`, chain 200901)
- UnnamedContract (`0x939197...2b593e`, chain 200901)
- UnnamedContract (`0xa1f499...557673`, chain 200901)
- UnnamedContract (`0xf6718b...28b8a3`, chain 200901)
- UnnamedContract (`0xff204e...e4fc5f`, chain 200901)
- UnnamedContract (`0xff6166...6b72a1`, chain 200901)
- BeaconProxy (`0xd9d920...159def`, chain 1)
- BeaconProxy (`0x1346b6...d446a5`, chain 56)
- BeaconProxy (`0x0f6f33...728f3b`, chain 80094)
- BeaconProxy (`0xcc0966...169a8c`, chain 80094)
- BEP20Token (`0x7130d2...3ead9c`, chain 56)
- ERC1967Proxy (`0x51477a...ee5147`, chain 1)
- FBTC (`0xc96de2...d6c364`, chain 1)
- FiatTokenProxy (`0xcbb7c0...ed33bf`, chain 8453)
- PumpToken (`0xf469fb...0a012e`, chain 1)
- ReceiptToken (`0x067e11...67152f`, chain 1)
- ReceiptToken (`0x0c4dd6...3430c7`, chain 1)
- ReceiptToken (`0x17140b...ad24ff`, chain 1)
- ReceiptToken (`0x69223b...82c566`, chain 1)
- ReceiptToken (`0xe2c675...a912dc`, chain 1)
- ReceiptToken (`0xf7de2b...1e076e`, chain 1)
- ReceiptToken (`0x067e11...67152f`, chain 56)
- ReceiptToken (`0x17140b...ad24ff`, chain 56)
- ReceiptToken (`0xe2c675...a912dc`, chain 56)
- ReceiptToken (`0x422d6c...7f9802`, chain 8453)
- ReceiptToken (`0x9ed4b1...165add`, chain 8453)
- ReceiptToken (`0x2a5fc0...f415c9`, chain 80094)
- ReceiptToken (`0x7b4dc4...85705c`, chain 80094)
- ReceiptToken (`0x961395...3ab763`, chain 80094)
- ReceiptToken (`0xd23557...27abc2`, chain 80094)
- ReceiptToken (`0xe70419...48b126`, chain 80094)
- ReceiptToken (`0xff21f4...cfdb9b`, chain 80094)
- SatlayerPool (`0x42a856...102819`, chain 1)
- SatlayerPool (`0x42a856...102819`, chain 56)
- SatlayerPool (`0xb57752...b0b9b3`, chain 8453)
- SatlayerPool (`0x50198b...9bc99d`, chain 80094)
- Token (`0x93f4d0...d21116`, chain 80094)
- TransparentUpgradeableProxy (`0x004e9c...350568`, chain 1)
- TransparentUpgradeableProxy (`0x939197...2b593e`, chain 8453)
- TransparentUpgradeableProxy (`0xc3827a...db6e90`, chain 80094)
- TransparentUpgradeableProxy (`0xecac9c...5c11c1`, chain 80094)
- WBTC (`0x2260fa...c2c599`, chain 1)

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 36 (36 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 52/60 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/35 (8.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 52 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 52 of 60 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/35
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 60
- Raw deployments: 61
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 9 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 1 | 2.9% | 2025-08 |
| unknown | Tier 2 | 1 | 2.9% | 2024-08 |
| Zellic | Tier 2 | 1 | 2.9% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-253867 | `0x42a856...102819` | ✅ Audited |
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | berachain | unit-253903 | `0x50198b...9bc99d` | ✅ Audited |
| SLAYToken | token | project_anchor | own_supporting | 1 | ethereum | unit-253915 | `0x51477a...ee5147` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | token | project_anchor | own_supporting | 0 | bsc | unit-253894 | `0x7130d2...3ead9c` | ⚠️ Unaudited |
| FBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253870 | `0xc96de2...d6c364` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-253922 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| LBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-253919 | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| PumpToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253872 | `0xf469fb...0a012e` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253863 | `0x067e11...67152f` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253864 | `0x0c4dd6...3430c7` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253865 | `0x17140b...ad24ff` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253868 | `0x69223b...82c566` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253871 | `0xe2c675...a912dc` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253874 | `0xf7de2b...1e076e` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | bsc | unit-253891 | `0x067e11...67152f` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | bsc | unit-253892 | `0x17140b...ad24ff` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | bsc | unit-253895 | `0xe2c675...a912dc` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | base | unit-253911 | `0x422d6c...7f9802` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | base | unit-253912 | `0x9ed4b1...165add` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253902 | `0x2a5fc0...f415c9` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253904 | `0x7b4dc4...85705c` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253906 | `0x961395...3ab763` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253908 | `0xd23557...27abc2` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253909 | `0xe70419...48b126` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253910 | `0xff21f4...cfdb9b` | ⚠️ Unaudited |
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-253893 | `0x42a856...102819` | ⚠️ Unaudited |
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | base | unit-253913 | `0xb57752...b0b9b3` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 1 | ethereum | unit-253914 | `0xd9d920...159def` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 1 | bsc | unit-253917 | `0x1346b6...d446a5` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 2 | berachain | unit-253918 (2 proxies) | 2 deployments: berachain `0x0f6f33...728f3b`; berachain `0xcc0966...169a8c` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | berachain | unit-253905 | `0x93f4d0...d21116` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-253916 | `0x004e9c...350568` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | base | unit-253921 | `0x939197...2b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-253920 | `0xc3827a...db6e90` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-253866 | `0x2260fa...c2c599` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253869 | `0x8236a8...634494` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253873 | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253875 | `0xff2858...b5ee5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-253896 | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-253897 | `0x236f8c...803894` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-253898 | `0x32fd8e...39fb83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-253899 | `0x4cbe83...98aa09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-253900 | `0x09def5...fbe34b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-253901 | `0x1fcca6...404e1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-253907 | `0xad9f7d...ca4ec8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253884 | `0x2e3c78...4a9a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253885 | `0x4fdb05...24b8b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253886 | `0x939197...2b593e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253887 | `0xa1f499...557673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253888 | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253889 | `0xff204e...e4fc5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253890 | `0xff6166...6b72a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253876 | `0x06a1dd...07865b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253877 | `0x357c34...5c477c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253878 | `0x8fed78...05169f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253879 | `0xa4da7a...e8ba0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253880 | `0xc2c23c...c8880d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253881 | `0xc44031...36c622` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253882 | `0xcc0ede...573973` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253883 | `0xfcfd84...3a8466` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Satlayer_audit_report_2024-08-15.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/Satlayer_audit_report_2024-08-15.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [SatLayer Pool - Zellic Audit Report.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [satlayer-sui-asymptotic-20250314.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-asymptotic-20250314.pdf) | Asymptotic | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [satlayer-core-phase-1-coinspect-20250404.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-coinspect-20250404.pdf) | Coinspect | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [satlayer-core-phase-1-dedaub-20250325.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-dedaub-20250325.pdf) | Dedaub | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [satlayer-sui-zenith-20250313.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-zenith-20250313.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [satlayer-core-phase-2-dedaub-20250620.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-2-dedaub-20250620.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [satlayer-evm-dedaub-20250809.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-evm-dedaub-20250809.pdf) | Dedaub | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [satlayer-token-dedaub-20250616.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-token-dedaub-20250616.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |
| [SatLayer Pool - Zellic Audit Report (Patch).pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report%20(Patch).pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [cube-by-satlayer-oak-security-20250410.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-oak-security-20250410.pdf) | Oak Security | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [cube-by-satlayer-hashlock-20250408.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-hashlock-20250408.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3186] Satlayer_audit_report_2024-08-15.pdf — matched: Two contracts in scope: ReceiptToken.sol and SatlayerPool.sol. Audit date from 'Dates Aug152024'.
- [3187] SatLayer Pool - Zellic Audit Report.pdf — no match: Two contracts in scope: ReceiptToken.sol and SatlayerPool.sol. Audit date from cover page.
- [3188] satlayer-sui-asymptotic-20250314.pdf — no match: The report mentions 'Move smart contract code' and 'Sui blockchain environment' but does not list specific contract names, file paths, or a scope table. No contract names are identifiable.
- [3189] satlayer-core-phase-1-coinspect-20250404.pdf — no match: Scope section lists four crate directories as files in scope. Audit date inferred from 'April 2025' in header, using last day of month.
- [3190] satlayer-core-phase-1-dedaub-20250325.pdf — no match: Scope defined by file tree listing on page 2; contracts are Rust crates/modules, not Solidity contracts.
- [3191] satlayer-sui-zenith-20250313.pdf — no match: Scope lists 'core/sources/*' files; findings reference satlayer_pool.move and lbtc.move.
- [3192] satlayer-core-phase-2-dedaub-20250620.pdf — no match: Scope explicitly lists three crates: bvs-vault-router, bvs-vault-cw20-tokenized, bvs-vault-bank-tokenized. Additional contracts (bvs-vault-tokenized, bvs-vault-base, bvs-registry) are referenced in findings and are part of the audited codebase.
- [3193] satlayer-evm-dedaub-20250809.pdf — no match: All contracts listed in the scope section of the audit report.
- [3194] satlayer-token-dedaub-20250616.pdf — matched: No reason recorded
- [3195] SatLayer Pool - Zellic Audit Report (Patch).pdf — matched: Scope table lists ReceiptToken.sol and SatlayerPool.sol. SatlayerPoolV2 is the updated version of SatlayerPool and is the target of findings.
- [3196] cube-by-satlayer-oak-security-20250410.pdf — no match: All contracts in scope were listed in the 'Codebase Submitted for the Audit' section. Additional contract names extracted from findings.
- [3197] cube-by-satlayer-hashlock-20250408.pdf — no match: Audit scope section lists 5 components with file paths. Audit date is April 2025, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Satlayer_audit_report_2024-08-15.pdf | ReceiptToken | ambiguous — not counted | ReceiptToken (alternative) `0x422d6c...7f9802` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x7b4dc4...85705c` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x961395...3ab763` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe70419...48b126` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x0c4dd6...3430c7` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x2a5fc0...f415c9` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xd23557...27abc2` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x9ed4b1...165add` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x69223b...82c566` — deployed 2024-08-22 18:49:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xf7de2b...1e076e` — deployed 2024-08-21 03:17:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xff21f4...cfdb9b` — deployed 2025-06-25 15:58:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Satlayer_audit_report_2024-08-15.pdf | SatlayerPool | own contract | SatlayerPool (selected) `0x42a856...102819` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0xb57752...b0b9b3` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x50198b...9bc99d` — deployed 2025-01-26 11:08:14+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-19 was 4d from audit; next candidate 25d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SatLayer Pool - Zellic Audit Report.pdf | ReceiptToken | ambiguous — not counted | ReceiptToken (alternative) `0x422d6c...7f9802` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x7b4dc4...85705c` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x961395...3ab763` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe70419...48b126` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x0c4dd6...3430c7` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x2a5fc0...f415c9` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xd23557...27abc2` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x9ed4b1...165add` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x69223b...82c566` — deployed 2024-08-22 18:49:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xf7de2b...1e076e` — deployed 2024-08-21 03:17:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xff21f4...cfdb9b` — deployed 2025-06-25 15:58:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SatLayer Pool - Zellic Audit Report.pdf | SatlayerPool | ambiguous — not counted | SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0xb57752...b0b9b3` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x50198b...9bc99d` — deployed 2025-01-26 11:08:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-router | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-base | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-bank | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-cw20 | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-library | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-pauser | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-bank | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-base | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-cw20 | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-router | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-sui-zenith-20250313.pdf | satlayer_pool | unmatched — not counted | — | listed in scope and findings | no |
| satlayer-sui-zenith-20250313.pdf | lbtc | unmatched — not counted | — | listed in findings | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-router | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-cw20-tokenized | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-bank-tokenized | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-tokenized | unmatched — not counted | — | referenced in H1 | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-base | unmatched — not counted | — | referenced in H1 | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-registry | unmatched — not counted | — | referenced in H1 and P4 | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRegistryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRewardsV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRouterSlashingV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRouterV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYVaultFactoryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYVaultV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | MerkleProof | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | RelationshipV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYBase | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYRegistryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYRewardsV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYRouterV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYVaultFactoryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYVaultV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-token-dedaub-20250616.pdf | SLAYToken | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x51477a...ee5147` — deployed 2025-03-19 13:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SatLayer Pool - Zellic Audit Report (Patch).pdf | ReceiptToken | ambiguous — not counted | ReceiptToken (alternative) `0x422d6c...7f9802` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x7b4dc4...85705c` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x961395...3ab763` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe70419...48b126` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x0c4dd6...3430c7` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x2a5fc0...f415c9` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xd23557...27abc2` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x9ed4b1...165add` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x69223b...82c566` — deployed 2024-08-22 18:49:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xf7de2b...1e076e` — deployed 2024-08-21 03:17:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xff21f4...cfdb9b` — deployed 2025-06-25 15:58:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SatLayer Pool - Zellic Audit Report (Patch).pdf | SatlayerPool | own contract | SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0xb57752...b0b9b3` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>SatlayerPool (selected) `0x50198b...9bc99d` — deployed 2025-01-26 11:08:14+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-26 was 10d from audit; next candidate 129d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SatLayer Pool - Zellic Audit Report (Patch).pdf | SatlayerPoolV2 | unmatched — not counted | — | mentioned as updated version of SatlayerPool in scope | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_staking_hub | unmatched — not counted | — | listed in scope and detailed findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_token | unmatched — not counted | — | mentioned in findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_validators_registry | unmatched — not counted | — | listed in scope and detailed findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_reward_dispatcher | unmatched — not counted | — | mentioned in findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_common | unmatched — not counted | — | mentioned in findings | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_reward_dispatcher | unmatched — not counted | — | listed in scope as Component 1 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_staking_hub | unmatched — not counted | — | listed in scope as Component 2 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_token | unmatched — not counted | — | listed in scope as Component 3 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_validators_registry | unmatched — not counted | — | listed in scope as Component 4 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_common | unmatched — not counted | — | listed in scope as Component 5 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x7130d2...3ead9c` | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc96de2...d6c364` | FBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcbb7c0...ed33bf` | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xecac9c...5c11c1` | LBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf469fb...0a012e` | PumpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x067e11...67152f` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c4dd6...3430c7` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17140b...ad24ff` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x69223b...82c566` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2c675...a912dc` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf7de2b...1e076e` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x067e11...67152f` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x17140b...ad24ff` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe2c675...a912dc` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x422d6c...7f9802` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9ed4b1...165add` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x2a5fc0...f415c9` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7b4dc4...85705c` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x961395...3ab763` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd23557...27abc2` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xe70419...48b126` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xff21f4...cfdb9b` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x42a856...102819` | SatlayerPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb57752...b0b9b3` | SatlayerPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9d920...159def` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1346b6...d446a5` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x0f6f33...728f3b` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x93f4d0...d21116` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x004e9c...350568` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x939197...2b593e` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xc3827a...db6e90` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 43 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=1
- Match method counts: temporal_name=2, unique_name=1

Zero-match audit list:

- [3187] SatLayer Pool - Zellic Audit Report.pdf
- [3188] satlayer-sui-asymptotic-20250314.pdf
- [3189] satlayer-core-phase-1-coinspect-20250404.pdf
- [3190] satlayer-core-phase-1-dedaub-20250325.pdf
- [3191] satlayer-sui-zenith-20250313.pdf
- [3192] satlayer-core-phase-2-dedaub-20250620.pdf
- [3193] satlayer-evm-dedaub-20250809.pdf
- [3196] cube-by-satlayer-oak-security-20250410.pdf
- [3197] cube-by-satlayer-hashlock-20250408.pdf

Fork inheritance lineage and inherited audits are included when available.
