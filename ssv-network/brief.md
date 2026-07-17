# Agentic Audit Brief: SSV Network

## Project Overview

- Project: SSV Network (`ssv-network`)
- Website: [https://ssv.network/](https://ssv.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.590Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $7,756,442,354.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Staking Pool. Structurally: 21 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (ssvproxy, issvstaking). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/19 (68.4%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/21
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 13 | 61.9% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CSSVToken | unknown | ethereum | n/a | [`0xe018d31f120a637828f46afd6c64ec099d960546`](./contracts/ethereum-1/0xe018d31f120a637828f46afd6c64ec099d960546/) | ✅ Audited |
| SSVClusters | unknown | ethereum | n/a | [`0x3611d36a7c052211d6f3b1a39326ad38a02832b4`](./contracts/ethereum-1/0x3611d36a7c052211d6f3b1a39326ad38a02832b4/) | ✅ Audited |
| SSVDAO | unknown | ethereum | n/a | [`0x6240ee8c276f17b9672eb2efea3472e13dccd511`](./contracts/ethereum-1/0x6240ee8c276f17b9672eb2efea3472e13dccd511/) | ✅ Audited |
| SSVNetwork | unknown | ethereum | n/a | [`0x050e94a68440531f3e89e93c33f349270e9d1750`](./contracts/ethereum-1/0x050e94a68440531f3e89e93c33f349270e9d1750/) | ✅ Audited |
| SSVNetworkSSVStakingUpgrade | unknown | ethereum | n/a | [`0x5220e9b259ef934c23baefe4dc98d0ab6e873e9e`](./contracts/ethereum-1/0x5220e9b259ef934c23baefe4dc98d0ab6e873e9e/) | ✅ Audited |
| SSVNetworkUpgradeValidatorsPerOperator | unknown | ethereum | n/a | [`0x32cd259417da4af4c506accbef7758fb352e988c`](./contracts/ethereum-1/0x32cd259417da4af4c506accbef7758fb352e988c/) | ✅ Audited |
| SSVNetworkViews | unknown | ethereum | n/a | [`0x052e5f6bd9db71c08db38377596875cec5708a94`](./contracts/ethereum-1/0x052e5f6bd9db71c08db38377596875cec5708a94/) | ✅ Audited |
| SSVOperators | unknown | ethereum | n/a | [`0x338554a41b6a2ec9325157c01666ad8b0ace6060`](./contracts/ethereum-1/0x338554a41b6a2ec9325157c01666ad8b0ace6060/) | ✅ Audited |
| SSVOperatorsWhitelist | unknown | ethereum | n/a | [`0xcb7dde81e068cd7f8f5dd8bfa34639eb97f3227d`](./contracts/ethereum-1/0xcb7dde81e068cd7f8f5dd8bfa34639eb97f3227d/) | ✅ Audited |
| SSVStaking | unknown | ethereum | n/a | [`0x1b844e7abb9779f551ddccb5f0f34a54ec1c7034`](./contracts/ethereum-1/0x1b844e7abb9779f551ddccb5f0f34a54ec1c7034/) | ✅ Audited |
| SSVToken | unknown | ethereum | n/a | [`0x584d44d3e36f3690a4170dad0238df5441d41f1c`](./contracts/ethereum-1/0x584d44d3e36f3690a4170dad0238df5441d41f1c/) | ✅ Audited |
| SSVValidators | unknown | ethereum | n/a | [`0x9122fded65ed6b562243efdc9e55ff0bef5e7499`](./contracts/ethereum-1/0x9122fded65ed6b562243efdc9e55ff0bef5e7499/) | ✅ Audited |
| SSVViews | unknown | ethereum | n/a | [`0x055051fa508eeda80c38de34ca936aba59642c45`](./contracts/ethereum-1/0x055051fa508eeda80c38de34ca936aba59642c45/) | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CumulativeMerkleDrop | unknown | ethereum | n/a | [`0x13006e447608bb62383d1d59bb11a93e957be7cf`](./contracts/ethereum-1/0x13006e447608bb62383d1d59bb11a93e957be7cf/) | ⚠️ Unaudited |
| DepositContract | unknown | ethereum | n/a | [`0x00000000219ab540356cbb839cbe05303d7705fa`](./contracts/ethereum-1/0x00000000219ab540356cbb839cbe05303d7705fa/) | ⚠️ Unaudited |
| DEX | unknown | ethereum | n/a | [`0x77511aa462c73c28016084477e5c7dfc315db8b1`](./contracts/ethereum-1/0x77511aa462c73c28016084477e5c7dfc315db8b1/) | ⚠️ Unaudited |
| DEXV2 | unknown | ethereum | n/a | [`0x2bf73a478cc6a7ba4e6758a3a52abdc8cdba735e`](./contracts/ethereum-1/0x2bf73a478cc6a7ba4e6758a3a52abdc8cdba735e/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xb35096b074fdb9bbac63e3adae0bbde512b2e6b6`](./contracts/ethereum-1/0xb35096b074fdb9bbac63e3adae0bbde512b2e6b6/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xe16e6bddf4a1683c029ddc7aecb567a6095e95a6`](./contracts/ethereum-1/0xe16e6bddf4a1683c029ddc7aecb567a6095e95a6/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xaf8a99140871538ac7a6883890c83892af950bed`](./contracts/ethereum-1/0xaf8a99140871538ac7a6883890c83892af950bed/) | ⚠️ Unaudited |
| TokenVestingController | unknown | ethereum | n/a | [`0x051cd7c00d37d54a9eaacbb0ef17ab790d93e4a5`](./contracts/ethereum-1/0x051cd7c00d37d54a9eaacbb0ef17ab790d93e4a5/) | ⚠️ Unaudited |

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
| [2023-03-24_Quantstamp_v1.0.0-rc3.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2023-03-24_Quantstamp_v1.0.0-rc3.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | 11 | high |
| [2023-10-30_Quantstamp_v1.0.2.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2023-10-30_Quantstamp_v1.0.2.pdf) | Quantstamp | Audit | 2023-10 | stale | Direct | contract_name | 12 | high |
| [2024-02-15_Quantstamp_v1.1.0.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2024-02-15_Quantstamp_v1.1.0.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | contract_name | 11 | high |
| [2024-07-04_Quantstamp_v1.2.0.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2024-07-04_Quantstamp_v1.2.0.pdf) | Quantstamp | Audit | 2024-07 | stale | Direct | contract_name | 12 | high |
| [2026-04-10_Quantstamp_v2.0.0.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-network/blob/main/contracts/audits/2026-04-10_Quantstamp_v2.0.0.pdf) | Quantstamp | Audit | 2026-04 | fresh | Direct | contract_name | 13 | high |
| [Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf](https://github.com/ssvlabs/ssv/blob/main/audits/Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf) | Hacken | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Least Authority.pdf](https://github.com/ssvlabs/ssv/blob/main/audits/Least%20Authority.pdf) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [SSV_SIGNER_FINAL_REPORT.pdf](https://github.com/ssvlabs/ssv/blob/main/audits/SSV_SIGNER_FINAL_REPORT.pdf) | Unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf](https://github.com/ssvlabs/ssv-spec/blob/main/docs/audits/Least%20Authority%20-%20Coin%20Dash%20Ltd.%20SSV%20Specification%20Final%20Audit%20Report_Updated.pdf) | Least Authority | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report.pdf (also discovered via alternate URL)](https://github.com/ssvlabs/ssv-dkg/blob/main/audits/SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Least Authority.pdf](https://raw.githubusercontent.com/ssvlabs/ssv/a1bcd468ff667d88c7affa58dedb3345e3467f96/audits/Least%20Authority.pdf) | Hacken | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf](https://raw.githubusercontent.com/ssvlabs/ssv-spec/5d11f26bc776d208cf33ad8a0e4ee4973e991568/docs/audits/Least%20Authority%20-%20Coin%20Dash%20Ltd.%20SSV%20Specification%20Final%20Audit%20Report_Updated.pdf) | Hacken | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity Audit Report.pdf](https://github.com/ssvlabs/ssv-dkg/blob/main/audits/ChainSecurity%20Audit%20Report.pdf) | yAudit | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [quantstamp-ssv-oracle-2026-05-18.pdf](https://github.com/ssvlabs/ssv-oracle/blob/v0.3.0/audits/quantstamp-ssv-oracle-2026-05-18.pdf) | Quantstamp | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x13006e447608bb62383d1d59bb11a93e957be7cf`](./contracts/ethereum-1/0x13006e447608bb62383d1d59bb11a93e957be7cf/) | CumulativeMerkleDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00000000219ab540356cbb839cbe05303d7705fa`](./contracts/ethereum-1/0x00000000219ab540356cbb839cbe05303d7705fa/) | DepositContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77511aa462c73c28016084477e5c7dfc315db8b1`](./contracts/ethereum-1/0x77511aa462c73c28016084477e5c7dfc315db8b1/) | DEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bf73a478cc6a7ba4e6758a3a52abdc8cdba735e`](./contracts/ethereum-1/0x2bf73a478cc6a7ba4e6758a3a52abdc8cdba735e/) | DEXV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe16e6bddf4a1683c029ddc7aecb567a6095e95a6`](./contracts/ethereum-1/0xe16e6bddf4a1683c029ddc7aecb567a6095e95a6/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051cd7c00d37d54a9eaacbb0ef17ab790d93e4a5`](./contracts/ethereum-1/0x051cd7c00d37d54a9eaacbb0ef17ab790d93e4a5/) | TokenVestingController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=114

Zero-match audit list:

- [21105] Hacken_SSV_Labs_L1_SSV_Labs_SSV_Node_Aug2024_P_2024_1212_2_20241016.pdf
- [21106] Least Authority.pdf
- [21107] SSV_SIGNER_FINAL_REPORT.pdf
- [21108] Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf
- [21109] SlowMist Audit Report.pdf
- [21110] Least Authority.pdf
- [21116] Least Authority - Coin Dash Ltd. SSV Specification Final Audit Report_Updated.pdf
- [21117] ChainSecurity Audit Report.pdf
- [21119] quantstamp-ssv-oracle-2026-05-18.pdf

Fork inheritance lineage and inherited audits are included when available.
