# Agentic Audit Brief: zkSwap Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 13 audit(s)
- Eligible audit results: 22 (13 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: zkSwap Finance (`zkswap-finance`)
- Website: [https://zkswap.finance](https://zkswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic, zksync-era
- Contract surface: 72 unique implementations (72 raw deployments)
- Coverage basis: 10/17 confirmed own live verified implementations (58.8%); conservative 58.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $843,085.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for zkSwap Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across sonic, zksync-era. Structural roles: 9 core, 8 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (9), supporting (8), unclassified (1)
- Contract kinds: contract (18)
- Detected standards: ownable (3), erc165 (2), pausable (2), erc20 (1), erc721 (1), multicall (1)
- Frameworks: openzeppelin (10), uniswap-v3 (4), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 67 contracts are derived from known codebases. 67 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1e9ebc...fc6e88`, chain 146)
- UnnamedContract (`0x3ec487...0cf971`, chain 146)
- UnnamedContract (`0x056f19...dc0c8e`, chain 324)
- UnnamedContract (`0x0d64c4...2238c0`, chain 324)
- UnnamedContract (`0x1191bf...7a0df6`, chain 324)
- UnnamedContract (`0x12c944...9adf4f`, chain 324)
- UnnamedContract (`0x142096...98c08c`, chain 324)
- UnnamedContract (`0x15309a...5b1dd7`, chain 324)
- UnnamedContract (`0x1a5fb6...a4a0c9`, chain 324)
- UnnamedContract (`0x31c330...f479e4`, chain 324)
- UnnamedContract (`0x386bef...63c54c`, chain 324)
- UnnamedContract (`0x3a76e3...744ce3`, chain 324)
- UnnamedContract (`0x3b3393...da415b`, chain 324)
- UnnamedContract (`0x40ad8e...52ed65`, chain 324)
- UnnamedContract (`0x4305cf...97917a`, chain 324)
- UnnamedContract (`0x484a72...7990a4`, chain 324)
- UnnamedContract (`0x4ca2ac...5f1987`, chain 324)
- UnnamedContract (`0x525990...e4983d`, chain 324)
- UnnamedContract (`0x57d28a...ad4cfb`, chain 324)
- UnnamedContract (`0x58d8dd...3f3c11`, chain 324)
- UnnamedContract (`0x5ca90e...a72c20`, chain 324)
- UnnamedContract (`0x61278a...48ea9b`, chain 324)
- UnnamedContract (`0x63d8e7...8f19fc`, chain 324)
- UnnamedContract (`0x652138...736a75`, chain 324)
- UnnamedContract (`0x65300d...586a0f`, chain 324)
- UnnamedContract (`0x65ea05...63987b`, chain 324)
- UnnamedContract (`0x743944...745228`, chain 324)
- UnnamedContract (`0x79354d...f1eaf4`, chain 324)
- UnnamedContract (`0x7ab617...b6bbc7`, chain 324)
- UnnamedContract (`0x801903...0d8c75`, chain 324)
- UnnamedContract (`0x82e07a...d6bf11`, chain 324)
- UnnamedContract (`0x876cfc...5aabca`, chain 324)
- UnnamedContract (`0x8770ad...3c17be`, chain 324)
- UnnamedContract (`0x88add6...cd7850`, chain 324)
- UnnamedContract (`0x97f03b...f74e59`, chain 324)
- UnnamedContract (`0x9f20a1...64ea28`, chain 324)
- UnnamedContract (`0x9f9d04...979d67`, chain 324)
- UnnamedContract (`0xa478bf...2803ab`, chain 324)
- UnnamedContract (`0xa9e411...a8e100`, chain 324)
- UnnamedContract (`0xaab6e2...be50d3`, chain 324)
- UnnamedContract (`0xabca8c...21762f`, chain 324)
- UnnamedContract (`0xae3af5...a34783`, chain 324)
- UnnamedContract (`0xb76f08...f66b0b`, chain 324)
- UnnamedContract (`0xc824f2...103907`, chain 324)
- UnnamedContract (`0xc93397...1d5a59`, chain 324)
- UnnamedContract (`0xc9e2c1...756900`, chain 324)
- UnnamedContract (`0xcd6121...33946f`, chain 324)
- UnnamedContract (`0xce043a...a38fe5`, chain 324)
- UnnamedContract (`0xcf7c16...e5ff35`, chain 324)
- UnnamedContract (`0xdbe9b7...e5ba52`, chain 324)
- UnnamedContract (`0xf1802d...e6a821`, chain 324)
- UnnamedContract (`0xf560df...01e53e`, chain 324)
- UnnamedContract (`0xff16ea...f5cf22`, chain 324)
- UnnamedContract (`0xffd6f2...2d38f7`, chain 324)
- UnnamedContract (`0xffdef4...3f069f`, chain 324)
- AggregatorSmart (`0x0edd6e...f6f5b3`, chain 146)
- AggregatorSmart (`0xc9c497...c85849`, chain 146)
- GnosisSafeProxy (`0x4780ea...7c2262`, chain 146)
- NonfungiblePositionManager (`0x2e1164...0094f5`, chain 146)
- NonfungiblePositionManager (`0xe8a9c6...683860`, chain 324)
- TransparentUpgradeableProxy (`0xf5fb98...2ae0d5`, chain 146)
- UniversalRouter (`0x957dbe...8f18ec`, chain 146)
- ZFGovernanceStaking (`0xcb3d62...c35087`, chain 146)
- ZFRewardDistributor (`0x78caac...dbc5d5`, chain 146)
- ZFRouter (`0xcd219a...5d1822`, chain 146)
- ZFRouter (`0x18381c...040fa4`, chain 324)
- ZFSwap2EarnRewarder (`0xf5df07...f47113`, chain 146)

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (17 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 72/72 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/17 (58.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 72 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 72 of 72 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/17
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 72
- Raw deployments: 72
- Audits discovered: 22 (22 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 21 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidproof | Tier 2 | 6 | 35.3% | 2024-03 |
| MythX | Tier 2 | 4 | 23.5% | 2023-12 |
| unknown | Tier 2 | 3 | 17.6% | 2024-01 |
| CertiK | Tier 2 | 2 | 11.8% | 2023-12 |
| Bailsec | Tier 2 | 1 | 5.9% | 2024-04 |
| VitalBlock | Tier 2 | 1 | 5.9% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 1 | sonic | unit-263965 | `0xf5fb98...2ae0d5` | ✅ Audited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-263898 | `0x3a59bf...ca1caa` | ✅ Audited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-263902 | `0x783438...7ca5ac` | ✅ Audited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-263904 | `0x957dbe...8f18ec` | ✅ Audited |
| ZFFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-263908 | `0xce98a0...2de529` | ✅ Audited |
| ZFGovernanceStaking | unknown | project_anchor | own_supporting | 0 | sonic | unit-263906 | `0xcb3d62...c35087` | ✅ Audited |
| ZFRouter | adapter | project_anchor | own_supporting | 0 | zksync-era | unit-263916 | `0x18381c...040fa4` | ✅ Audited |
| ZFSwap2EarnRewarder | unknown | project_anchor | own_supporting | 0 | sonic | unit-263909 | `0xf5df07...f47113` | ✅ Audited |
| ZFV3Factory | unknown | project_anchor | own_supporting | 0 | sonic | unit-263901 | `0x6d977f...8032a4` | ✅ Audited |
| ZFV3PoolDeployer | unknown | project_anchor | own_supporting | 0 | sonic | unit-263895 | `0x0ff168...89eea2` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorSmart | unknown | project_anchor | own_supporting | 0 | sonic | unit-263894 | `0x0edd6e...f6f5b3` | ⚠️ Unaudited |
| AggregatorSmart | unknown | project_anchor | own_supporting | 0 | sonic | unit-263905 | `0xc9c497...c85849` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sonic | unit-263900 | `0x4780ea...7c2262` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | sonic | unit-263897 | `0x2e1164...0094f5` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | zksync-era | unit-263959 | `0xe8a9c6...683860` | ⚠️ Unaudited |
| ZFRewardDistributor | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-263903 | `0x78caac...dbc5d5` | ⚠️ Unaudited |
| ZFRouter | adapter | project_anchor | own_supporting | 0 | sonic | unit-263907 | `0xcd219a...5d1822` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-263896 | `0x1e9ebc...fc6e88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-263899 | `0x3ec487...0cf971` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263910 | `0x056f19...dc0c8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263911 | `0x0d64c4...2238c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263912 | `0x1191bf...7a0df6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263913 | `0x12c944...9adf4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263914 | `0x142096...98c08c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263915 | `0x15309a...5b1dd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263917 | `0x1a5fb6...a4a0c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263918 | `0x31c330...f479e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263919 | `0x386bef...63c54c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263920 | `0x3a76e3...744ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263921 | `0x3b3393...da415b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263922 | `0x40ad8e...52ed65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263923 | `0x4305cf...97917a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263924 | `0x484a72...7990a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263925 | `0x4ca2ac...5f1987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263926 | `0x525990...e4983d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263927 | `0x57d28a...ad4cfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263928 | `0x58d8dd...3f3c11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263929 | `0x5ca90e...a72c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263930 | `0x61278a...48ea9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263931 | `0x63d8e7...8f19fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263932 | `0x652138...736a75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263933 | `0x65300d...586a0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263934 | `0x65ea05...63987b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263935 | `0x743944...745228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263936 | `0x79354d...f1eaf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263937 | `0x7ab617...b6bbc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263938 | `0x801903...0d8c75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263939 | `0x82e07a...d6bf11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263940 | `0x876cfc...5aabca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263941 | `0x8770ad...3c17be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263942 | `0x88add6...cd7850` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263943 | `0x97f03b...f74e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263944 | `0x9f20a1...64ea28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263945 | `0x9f9d04...979d67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263946 | `0xa478bf...2803ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263947 | `0xa9e411...a8e100` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263948 | `0xaab6e2...be50d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263949 | `0xabca8c...21762f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263950 | `0xae3af5...a34783` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263951 | `0xb76f08...f66b0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263952 | `0xc824f2...103907` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263953 | `0xc93397...1d5a59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263954 | `0xc9e2c1...756900` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263955 | `0xcd6121...33946f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263956 | `0xce043a...a38fe5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263957 | `0xcf7c16...e5ff35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263958 | `0xdbe9b7...e5ba52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263960 | `0xf1802d...e6a821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263961 | `0xf560df...01e53e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263962 | `0xff16ea...f5cf22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263963 | `0xffd6f2...2d38f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263964 | `0xffdef4...3f069f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/zkswap-finance](https://skynet.certik.com/projects/zkswap-finance) | CertiK | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [ZKSWAP FINANCE AUDIT REPORT.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/main/ZKSWAP%20FINANCE%20AUDIT%20REPORT.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | matched | 2 | 0 | 0 | 5 | n/a |
| [0_[Certik]_zkSwap_Finance_Audit_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/0_%5BCertik%5D_zkSwap_Finance_Audit_Report.pdf) | CertiK | Audit | 2023-12 | stale | Direct | n/a | matched | 2 | 0 | 0 | 4 | n/a |
| [Bailsec - zkSwap Final Report Github (+Resolution).pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20zkSwap%20Final%20Report%20Github%20(%2BResolution).pdf) | Bailsec | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [SmartContract_Audit_Solidproof_ZkSwapFinance.pdf](https://github.com/solidproof/projects/blob/main/2024/Zkswap%20Finance/SmartContract_Audit_Solidproof_ZkSwapFinance.pdf) | Solidproof | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Farm.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/Farm.pdf) | unknown | Audit | 2024-01 | stale | Direct | address | matched | 1 | 0 | 0 | 0 | high |
| [GovernanceStaking.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/GovernanceStaking.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/audit.pdf) | unknown | Audit | 2024-01 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [**SolidProof TrustNet:** [****](https://app.solidproof.io/projects/zkswap-finance)](https://app.solidproof.io/projects/zkswap-finance) | SolidProof | Audit | n/a | unknown | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/1_%5BVitalBlock%5D_Zkswap_Finance_Audit_Report.pdf) | VitalBlock | Audit | 2023-06 | stale | Direct | address | matched | 2 | 0 | 0 | 0 | high |
| [2_MythX_DEX_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/2_MythX_DEX_Full_Report.pdf) | MythX | Audit | 2023-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 0 | high |
| [3_MythX_TGE_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/3_MythX_TGE_Full_Report.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [4_MythX_Token_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/4_MythX_Token_Full_Report.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [5_MythX_Farm_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/5_MythX_Farm_Full_Report.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [6_MythX_Galxe_Campaign_Pool_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/6_MythX_Galxe_Campaign_Pool_Full_Report.pdf) | MythX | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [7_MythX_yZFToken_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/7_MythX_yZFToken_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [8_MythX_ZFGovernanceStaking_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/8_MythX_ZFGovernanceStaking_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [10_MythX_ZFPaymaster_Full_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/10_MythX_ZFPaymaster_Full_Report.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Original_MythX_ZFFarm.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/Original_MythX_ZFFarm.pdf) | MythX | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Original_MythX_ZFGovernanceStaking.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/Original_MythX_ZFGovernanceStaking.pdf) | MythX | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Original_MythX_ZFRouter.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/Original_MythX_ZFRouter.pdf) | MythX | Audit | 2023-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3152] skynet.certik.com/projects/zkswap-finance — matched: No reason recorded
- [3156] ZKSWAP FINANCE AUDIT REPORT.pdf — matched: No reason recorded
- [3157] 0_[Certik]_zkSwap_Finance_Audit_Report.pdf — matched: No reason recorded
- [3158] Bailsec - zkSwap Final Report Github (+Resolution).pdf — matched: No reason recorded
- [3159] SmartContract_Audit_Solidproof_ZkSwapFinance.pdf — no match: All contracts listed in File Overview section are in scope. Audit date is 18 March 2024 from cover page and version log.
- [14821] Farm.pdf — matched: Only ZFFarm contract is in scope; other files are dependencies (OpenZeppelin) or not audited contracts.
- [14822] GovernanceStaking.pdf — matched: No reason recorded
- [14823] audit.pdf — no match: Only ZFToken.sol is the custom contract in scope; OpenZeppelin imports are dependencies.
- [30492] **SolidProof TrustNet:** [****](https://app.solidproof.io/projects/zkswap-finance) — matched: No reason recorded
- [30495] 1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf — matched: Scope explicitly lists ZFFactory.Sol and ZFRouter.Sol as the only files in scope. Audit date is June 30th, 2023 from the final report date.
- [30496] 2_MythX_DEX_Full_Report.pdf — matched: Extracted from MythX report summary table and analysis details.
- [30497] 3_MythX_TGE_Full_Report.pdf — no match: Two contracts explicitly listed in scope: ZFLaunchpadNative.sol and ZFLaunchpad.sol. Audit date from report header.
- [30498] 4_MythX_Token_Full_Report.pdf — no match: Single contract ZFToken.sol audited by MythX on Aug 19, 2023.
- [30499] 5_MythX_Farm_Full_Report.pdf — no match: Only one contract (ZFFarm.sol) is in scope; audit date from header 'Sat Aug 19 th 2023'.
- [30500] 6_MythX_Galxe_Campaign_Pool_Full_Report.pdf — no match: Only one contract file ZFGalxePool.sol is in scope.
- [30501] 7_MythX_yZFToken_Full_Report.pdf — no match: Only one contract yZFToken.sol is in scope.
- [30502] 8_MythX_ZFGovernanceStaking_Full_Report.pdf — matched: Only one contract in scope: ZFGovernanceStaking.sol. Date from report creation timestamp.
- [30503] 9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf — matched: Only one contract in scope: ZFSwap2EarnRewarder.sol
- [30504] 10_MythX_ZFPaymaster_Full_Report.pdf — no match: Only one contract in scope: ZFPaymaster.sol
- [30505] Original_MythX_ZFFarm.pdf — no match: The report explicitly lists the main source file as /farm/zffarm.sol, which corresponds to contract name zffarm. The audit date is taken from the report creation timestamp.
- [30506] Original_MythX_ZFGovernanceStaking.pdf — matched: Single contract Zfgovernancestaking identified from main source file. Date from report creation timestamp.
- [30507] Original_MythX_ZFRouter.pdf — matched: Only one contract file mentioned in the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/zkswap-finance | MetadataHelper | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/zkswap-finance | ZFFactory | own contract | ZFFactory (selected) `0xce98a0...2de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/zkswap-finance | ZFRouter | own contract | ZFRouter (alternative) `0xcd219a...5d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c...040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 192d from audit; next candidate 495d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFFactory | own contract | ZFFactory (selected) `0xce98a0...2de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFPair | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFRouter | own contract | ZFRouter (alternative) `0xcd219a...5d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c...040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 9d from audit; next candidate 678d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZFRouterInternal | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZKSWAPFINANCE | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZkSwapFactory | unmatched — not counted | — | — | no |
| ZKSWAP FINANCE AUDIT REPORT.pdf | ZkSwapRouter | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | MetadataHelper | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFFactory | own contract | ZFFactory (selected) `0xce98a0...2de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFLibrary | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFPair | unmatched — not counted | — | — | no |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFRouter | own contract | ZFRouter (alternative) `0xcd219a...5d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c...040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 192d from audit; next candidate 495d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 0_[Certik]_zkSwap_Finance_Audit_Report.pdf | ZFRouterInternal | unmatched — not counted | — | — | no |
| Bailsec - zkSwap Final Report Github (+Resolution).pdf | ZFGovernanceStaking | own contract | ZFGovernanceStaking (selected) `0xcb3d62...c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapTwoPoolDeployer | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapTwoPoolInfo | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapTwoPool | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapThreePoolInfo | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapThreePoolDeployer | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapThreePool | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapRouter | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapLPFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapLP | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | StableSwapFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | TransferHelper | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapRouter | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapLPFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapLP | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapInfo | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapFactory | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwapDeployer | unmatched — not counted | — | listed in File Overview | no |
| SmartContract_Audit_Solidproof_ZkSwapFinance.pdf | IStableSwap | unmatched — not counted | — | listed in File Overview | no |
| Farm.pdf | ZFFarm | own contract | 0x9f9d04… (selected) `0x9f9d04...979d67` — deployed 2023-08-24 07:07:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GovernanceStaking.pdf | IZFToken | unmatched — not counted | — | — | no |
| GovernanceStaking.pdf | ZFGovernanceStaking | own contract | ZFGovernanceStaking (selected) `0xcb3d62...c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GovernanceStaking.pdf | ZFToken | unmatched — not counted | — | — | no |
| audit.pdf | ZFToken | unmatched — not counted | — | listed in scope source files | no |
| 1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf | ZFFactory | own contract | 0x3a76e3… (selected) `0x3a76e3...744ce3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1_[VitalBlock]_Zkswap_Finance_Audit_Report.pdf | ZFRouter | own contract | ZFRouter (selected) `0x18381c...040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2_MythX_DEX_Full_Report.pdf | ZFFactory | own contract | ZFFactory (selected) `0xce98a0...2de529` — deployed 2025-04-09 06:57:50+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2_MythX_DEX_Full_Report.pdf | ZFRouter | own contract | ZFRouter (alternative) `0xcd219a...5d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c...040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 27d from audit; next candidate 660d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3_MythX_TGE_Full_Report.pdf | ZFLaunchpadNative | unmatched — not counted | — | listed in scope table and analysis | no |
| 3_MythX_TGE_Full_Report.pdf | ZFLaunchpad | unmatched — not counted | — | listed in scope table and analysis | no |
| 4_MythX_Token_Full_Report.pdf | ZFToken | unmatched — not counted | — | listed in scope as main source file | no |
| 5_MythX_Farm_Full_Report.pdf | ZFFarm | unmatched — not counted | — | Main source file and contract name referenced throughout report | no |
| 6_MythX_Galxe_Campaign_Pool_Full_Report.pdf | ZFGalxePool | unmatched — not counted | — | listed in scope as main source file | no |
| 7_MythX_yZFToken_Full_Report.pdf | yZFToken | unmatched — not counted | — | listed as main source file and in scope | no |
| 8_MythX_ZFGovernanceStaking_Full_Report.pdf | ZFGovernanceStaking | own contract | ZFGovernanceStaking (selected) `0xcb3d62...c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 9_MythX_ZFSwap2EarnRewarder_Full_Report.pdf | ZFSwap2EarnRewarder | own contract | ZFSwap2EarnRewarder (selected) `0xf5df07...f47113` — deployed 2025-07-26 07:23:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 10_MythX_ZFPaymaster_Full_Report.pdf | ZFPaymaster | unmatched — not counted | — | listed in scope table and findings | no |
| Original_MythX_ZFFarm.pdf | zffarm | unmatched — not counted | — | Main source file listed in report summary and analysis details | no |
| Original_MythX_ZFGovernanceStaking.pdf | Zfgovernancestaking | own contract | ZFGovernanceStaking (selected) `0xcb3d62...c35087` — deployed 2025-07-21 05:59:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Original_MythX_ZFRouter.pdf | Zfrouter | own contract | ZFRouter (alternative) `0xcd219a...5d1822` — deployed 2025-04-09 07:36:33+03 — liveness: live (current_address_book_code)<br>ZFRouter (selected) `0x18381c...040fa4` — deployed 2023-05-23 14:55:36+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-23 was 27d from audit; next candidate 660d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x0edd6e...f6f5b3` | AggregatorSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc9c497...c85849` | AggregatorSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2e1164...0094f5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| zksync-era | `0xe8a9c6...683860` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x78caac...dbc5d5` | ZFRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xcd219a...5d1822` | ZFRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 39 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=16
- Match method counts: address=3, temporal_name=5, unique_name=15

Zero-match audit list:

- [3159] SmartContract_Audit_Solidproof_ZkSwapFinance.pdf
- [14823] audit.pdf
- [30497] 3_MythX_TGE_Full_Report.pdf
- [30498] 4_MythX_Token_Full_Report.pdf
- [30499] 5_MythX_Farm_Full_Report.pdf
- [30500] 6_MythX_Galxe_Campaign_Pool_Full_Report.pdf
- [30501] 7_MythX_yZFToken_Full_Report.pdf
- [30504] 10_MythX_ZFPaymaster_Full_Report.pdf
- [30505] Original_MythX_ZFFarm.pdf

Fork inheritance lineage and inherited audits are included when available.
