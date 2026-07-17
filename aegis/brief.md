# Agentic Audit Brief: Aegis

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.4% below peak)
- Generated: 2026-07-04T14:52:58.030Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc, ethereum
- Contract surface: 22 unique implementations (58 raw deployments)
- DeFi Llama TVL: $35,767,707.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 21 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 6 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 63; live-surface contracts included: 57 (55 live, 2 unknown).
- Excluded by liveness: 6 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/20 (95.0%)
- Deployed-live implementations: 20 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/20
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 22
- Raw deployments: 58
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 19 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FailSafe | Tier 2 | 19 | 95.0% | 2025-12 |
| unknown | Tier 2 | 3 | 15.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AegisConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00`](./contracts/ethereum-1/0x90ccf2c4b3dee7aeac9af5950a7c60f89af1db00/); bsc `0xb9f1e8417abaedf6fd838212267ca8260c4ca9da` | ✅ Audited |
| AegisMinting | unknown | bsc | n/a | 11 deployments: ethereum `0x03a346a9ae09e0e8bf38de1c49be45575393dea7`; ethereum `0x90ad8ff7b91bc705d50e5d92bee603b5620b6f77`; ethereum `0x9e27075fbbfd7276e4fc105447049f761316b87f`; ethereum `0xa30644ca67e0a93805c443df4a6e1856d8bd815b`; ethereum `0xad8fe6475776e7dc312c731ed93210cb66b5cda5`; ethereum `0xb341d7a48eea1cef41a1ed2a9d2caa9d15153c94`; ethereum `0xc4df68e592245ca5202fe8b7c438d2b799820fc2`; ethereum `0xe91710246678f1fe8119c6de67a71e2012f875c2`; bsc [`0x02bf8f0e046f471709e578b1e633077096ce65cf`](./contracts/bsc-56/0x02bf8f0e046f471709e578b1e633077096ce65cf/); bsc `0x39df2d423df0bddba28f23c15c65a86554a2e141`; bsc `0x7c3f89bfd3f293f603e429ed127d30e7f4579134` | ✅ Audited |
| AegisMintingJUSD | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7438a699e597794392376889bc7dd3dd1ad7273e`](./contracts/ethereum-1/0x7438a699e597794392376889bc7dd3dd1ad7273e/); ethereum `0xbb0f32d176590faedc7bc552b7ead7a86809b520`; ethereum `0xf21a16af7add0f958a1e15aadd64dd7c4c888a5d` | ✅ Audited |
| AegisOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2b4ad1d479561064cd1c311004aca93d15041aec`](./contracts/ethereum-1/0x2b4ad1d479561064cd1c311004aca93d15041aec/); bsc `0x588fd039cadc77ec85d25a072582624ca8d8cf15` | ✅ Audited |
| AegisOracleJUSD | operational_periphery | ethereum | n/a | [`0xfa449dc17194fdaca1dd2237c828938f1917e0e7`](./contracts/ethereum-1/0xfa449dc17194fdaca1dd2237c828938f1917e0e7/) | ✅ Audited |
| AegisRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8adcfaf1b64cc514524b80565bcc732273ddeafd`](./contracts/ethereum-1/0x8adcfaf1b64cc514524b80565bcc732273ddeafd/); bsc `0x93efaa2d2f6c3600d794233ed7e751d086e5b75e` | ✅ Audited |
| JUSD | unknown | ethereum | n/a | [`0xc86168d2424d28942ee0866f043c1206bc9e4900`](./contracts/ethereum-1/0xc86168d2424d28942ee0866f043c1206bc9e4900/) | ✅ Audited |
| JUSDMintBurnOFTAdapter | unknown | ethereum | n/a | [`0x70d4c4f48f230037a9e154470ece79db85a11f52`](./contracts/ethereum-1/0x70d4c4f48f230037a9e154470ece79db85a11f52/) | ✅ Audited |
| sJUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4aa8949bb47da4b4f27345404ba1e5e7ea90bdb3`](./contracts/ethereum-1/0x4aa8949bb47da4b4f27345404ba1e5e7ea90bdb3/); ethereum `0x4ccd1aa42259bfebc314f8454a1090538d947e81` | ✅ Audited |
| sJUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x616e4d7d31a978e624f79f1a7e20ee37042ab792`](./contracts/ethereum-1/0x616e4d7d31a978e624f79f1a7e20ee37042ab792/); ethereum `0xa7f1de59ab1bf5fdc95229dd43d5ea45ad152474` | ✅ Audited |
| sJUSDOFTAdapter | unknown | ethereum | n/a | [`0x8edd6a7c9b635490f4a94e0cb85d63d6a084ce0f`](./contracts/ethereum-1/0x8edd6a7c9b635490f4a94e0cb85d63d6a084ce0f/) | ✅ Audited |
| sJUSDSilo | unknown | ethereum | n/a | [`0x22daceed48d7ee53f964a5aa3bdb6e4d3d688d9a`](./contracts/ethereum-1/0x22daceed48d7ee53f964a5aa3bdb6e4d3d688d9a/) | ✅ Audited |
| sYUSD | unknown | ethereum | n/a | 12 deployments: ethereum [`0x180da28d5e9e9827a3d43a0c94e7a3ee684e1997`](./contracts/ethereum-1/0x180da28d5e9e9827a3d43a0c94e7a3ee684e1997/); ethereum `0x29dd50b6637b1b117d678c20f01239e7091a9b63`; ethereum `0x4aa42b17bada0b24f0a6ff13c4e53605cced735e`; ethereum `0x7c94288e79f6de6e9baf2e5029cb94cff032fd69`; ethereum `0xd2188c292f294e5de506594a82a2fc683f27d08e`; ethereum `0xf07781182b47e728b040f9e35321260e359ff9f7`; bsc `0x29dd50b6637b1b117d678c20f01239e7091a9b63`; bsc `0x73833881e17d31df0ef7f17da0fd0a055a976bb7`; bsc `0x7de45013e374bb6dcb1364a233bbe9d2ba89bbb5`; bsc `0xc48ea88272e723366e124d9fd2607216969382ec`; bsc `0xe13d566be15893cf9e8e7ec9f660aebd15faa55d`; bsc `0xf07781182b47e728b040f9e35321260e359ff9f7` | ✅ Audited |
| sYUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0c63bb1667b6e9215aee562af2957739b2676fe`](./contracts/ethereum-1/0xb0c63bb1667b6e9215aee562af2957739b2676fe/); ethereum `0xfe0ccc9942e98c963fe6b4e5194eb6e3baa4cb64` | ✅ Audited |
| sYUSD | unknown | bsc | n/a | 2 deployments: bsc [`0x24db057b19241eefb9b522e8627c293ed8f93af2`](./contracts/bsc-56/0x24db057b19241eefb9b522e8627c293ed8f93af2/); bsc `0x42940c329e2a4d0bd0e828b7815c90111065415e` | ✅ Audited |
| sYUSDOFT | unknown | bsc | n/a | [`0x85636bf94ea95c32e945b0db30a7cdc614f2691e`](./contracts/bsc-56/0x85636bf94ea95c32e945b0db30a7cdc614f2691e/) | ✅ Audited |
| sYUSDOFTAdapter | adapter | ethereum | n/a | [`0x1a7cde558d318052add800ca30dc7464920b41fc`](./contracts/ethereum-1/0x1a7cde558d318052add800ca30dc7464920b41fc/) | ✅ Audited |
| YUSD | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2332e3fdecb44695bad61428cacbd717c8646cf9`](./contracts/ethereum-1/0x2332e3fdecb44695bad61428cacbd717c8646cf9/); ethereum `0x4274cd7277c7bb0806bd5fe84b9adae466a8da0a`; bsc `0xab3dbcd9b096c3ff76275038bf58eac10d22c61f` | ✅ Audited |
| YUSDMintBurnOFTAdapter | adapter | bsc | n/a | 4 deployments: ethereum `0x7552d1b6463f76ddf6dfd919970753bd689b82a4`; ethereum `0xaf12b0ae5a72d7b8a8ec675f3e76e2db56143565`; bsc [`0x539e46827c37a3ef11c7ce521cc56b4d59e602e3`](./contracts/bsc-56/0x539e46827c37a3ef11c7ce521cc56b4d59e602e3/); bsc `0xd2188c292f294e5de506594a82a2fc683f27d08e` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| sYUSDV1OptOut | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d701a7b84b75746404ed27662d897bf6c5ea7f6`](./contracts/ethereum-1/0x2d701a7b84b75746404ed27662d897bf6c5ea7f6/); ethereum `0xec843093ce8e3d04b44263d18595a416c632408a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x399b1c20896a8e40d430479e844d1d9b4445cd4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab3dbcd9b096c3ff76275038bf58eac10d22c61f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [getfailsafe.com/aegis-jusd-smart-contract-audit](https://getfailsafe.com/aegis-jusd-smart-contract-audit) | unknown | Audit | n/a | unknown | Direct | contract_name | 5 | low |
| [Aegis-FailSafe-Smart-Contract-Audit-Report.pdf](https://getfailsafe.com/pdfs/Aegis-FailSafe-Smart-Contract-Audit-Report.pdf) | FailSafe | Audit | 2025-12 | fresh | Direct | contract_name | 54 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2d701a7b84b75746404ed27662d897bf6c5ea7f6`](./contracts/ethereum-1/0x2d701a7b84b75746404ed27662d897bf6c5ea7f6/) | sYUSDV1OptOut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, low=1
- Match method counts: extraction_exact=59

Fork inheritance lineage and inherited audits are included when available.
