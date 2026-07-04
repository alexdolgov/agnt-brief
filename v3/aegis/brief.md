# Agentic Audit Brief: Aegis

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.4% below peak)
- Generated: 2026-07-03T21:05:24.399Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc, ethereum
- Contract surface: 17 unique implementations (27 raw deployments)
- DeFi Llama TVL: $35,767,707.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 21 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 6 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 63; live-surface contracts included: 24 (22 live, 2 unknown).
- Excluded by liveness: 39 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 15 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 17
- Raw deployments: 27
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AegisConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x90ccf2...f1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/); bsc `0xb9f1e8...4ca9da` | ⚠️ Unaudited |
| AegisMinting | unknown | bsc | n/a | 3 deployments: ethereum `0xa30644...bd815b`; ethereum `0xc4df68...820fc2`; bsc [`0x02bf8f...ce65cf`](./contracts/bsc-56/0x02bf8f0e046f471709e578b1e633077096ce65cf/) | ⚠️ Unaudited |
| AegisMintingJUSD | unknown | ethereum | n/a | [`0xbb0f32...09b520`](./contracts/ethereum-1/0xbb0f32d176590faedc7bc552b7ead7a86809b520/) | ⚠️ Unaudited |
| AegisOracle | operational_periphery | ethereum | n/a | [`0x2b4ad1...041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/) | ⚠️ Unaudited |
| AegisOracleJUSD | operational_periphery | ethereum | n/a | [`0xfa449d...17e0e7`](./contracts/ethereum-1/0xfa449dc17194fdaca1dd2237c828938f1917e0e7/) | ⚠️ Unaudited |
| AegisRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8adcfa...ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/); bsc `0x93efaa...e5b75e` | ⚠️ Unaudited |
| sJUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4aa894...90bdb3`](./contracts/ethereum-1/0x4aa8949bb47da4b4f27345404ba1e5e7ea90bdb3/); ethereum `0x4ccd1a...947e81` | ⚠️ Unaudited |
| sJUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x616e4d...2ab792`](./contracts/ethereum-1/0x616e4d7d31a978e624f79f1a7e20ee37042ab792/); ethereum `0xa7f1de...152474` | ⚠️ Unaudited |
| sJUSDSilo | unknown | ethereum | n/a | [`0x22dace...688d9a`](./contracts/ethereum-1/0x22daceed48d7ee53f964a5aa3bdb6e4d3d688d9a/) | ⚠️ Unaudited |
| sYUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0c63b...2676fe`](./contracts/ethereum-1/0xb0c63bb1667b6e9215aee562af2957739b2676fe/); ethereum `0xfe0ccc...a4cb64` | ⚠️ Unaudited |
| sYUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x24db05...f93af2`](./contracts/bsc-56/0x24db057b19241eefb9b522e8627c293ed8f93af2/); bsc `0x42940c...65415e` | ⚠️ Unaudited |
| sYUSDOFTAdapter | adapter | ethereum | n/a | [`0x1a7cde...0b41fc`](./contracts/ethereum-1/0x1a7cde558d318052add800ca30dc7464920b41fc/) | ⚠️ Unaudited |
| sYUSDV1OptOut | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d701a...5ea7f6`](./contracts/ethereum-1/0x2d701a7b84b75746404ed27662d897bf6c5ea7f6/); ethereum `0xec8430...32408a` | ⚠️ Unaudited |
| YUSD | unknown | ethereum | n/a | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | adapter | bsc | n/a | 2 deployments: ethereum `0xaf12b0...143565`; bsc [`0x539e46...e602e3`](./contracts/bsc-56/0x539e46827c37a3ef11c7ce521cc56b4d59e602e3/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x399b1c...45cd4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab3dbc...22c61f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [getfailsafe.com/aegis-jusd-smart-contract-audit](https://getfailsafe.com/aegis-jusd-smart-contract-audit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Aegis-FailSafe-Smart-Contract-Audit-Report.pdf](https://getfailsafe.com/pdfs/Aegis-FailSafe-Smart-Contract-Audit-Report.pdf) | FailSafe | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x90ccf2...f1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/) | AegisConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02bf8f...ce65cf`](./contracts/bsc-56/0x02bf8f0e046f471709e578b1e633077096ce65cf/) | AegisMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb0f32...09b520`](./contracts/ethereum-1/0xbb0f32d176590faedc7bc552b7ead7a86809b520/) | AegisMintingJUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b4ad1...041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/) | AegisOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa449d...17e0e7`](./contracts/ethereum-1/0xfa449dc17194fdaca1dd2237c828938f1917e0e7/) | AegisOracleJUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8adcfa...ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/) | AegisRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22dace...688d9a`](./contracts/ethereum-1/0x22daceed48d7ee53f964a5aa3bdb6e4d3d688d9a/) | sJUSDSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a7cde...0b41fc`](./contracts/ethereum-1/0x1a7cde558d318052add800ca30dc7464920b41fc/) | sYUSDOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4274cd...a8da0a`](./contracts/ethereum-1/0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a/) | YUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x539e46...e602e3`](./contracts/bsc-56/0x539e46827c37a3ef11c7ce521cc56b4d59e602e3/) | YUSDMintBurnOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20636] getfailsafe.com/aegis-jusd-smart-contract-audit
- [20637] Aegis-FailSafe-Smart-Contract-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
