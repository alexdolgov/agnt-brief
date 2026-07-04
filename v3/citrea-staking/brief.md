# Agentic Audit Brief: citrea-staking

## Project Overview

- Project: citrea-staking (`citrea-staking`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:39.460Z
- Pipeline run: v2-2026-07-03-f86598
- Chains: ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 18 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 14 common project-authored base contract(s) (etherpaymentfallback, singleton, modulemanager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/18 (0.0%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 6 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CompatibilityFallbackHandler | unknown | ethereum | n/a | [`0x017062...573804`](./contracts/ethereum-1/0x017062a1de2fe6b99be3d9d37841fed19f573804/) | ⚠️ Unaudited |
| CreateCall | unknown | ethereum | n/a | [`0x9b35af...0a1a52`](./contracts/ethereum-1/0x9b35af71d77eaf8d7e40252370304687390a1a52/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x69f4d1...6e2938`](./contracts/ethereum-1/0x69f4d1788e39c87893c980c06edf4b7f686e2938/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | ethereum | n/a | [`0xfb1bff...7191ea`](./contracts/ethereum-1/0xfb1bffc9d739b8d520daf37df666da4c687191ea/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | ethereum | n/a | [`0xc22834...f910bc`](./contracts/ethereum-1/0xc22834581ebc8527d974f8a1c97e1bea4ef910bc/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x38869b...43b526`](./contracts/ethereum-1/0x38869bf66a61cf6bdb996a6ae40d5853fd43b526/) | ⚠️ Unaudited |
| MultiSendCallOnly | unknown | ethereum | n/a | [`0x9641d7...8102e2`](./contracts/ethereum-1/0x9641d764fc13c8b624c04430c7356c1c7c8102e2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x41675c...c7461a`](./contracts/ethereum-1/0x41675c099f32341bf84bfc5382af534df5c7461a/) | ⚠️ Unaudited |
| SafeL2 | unknown | ethereum | n/a | [`0x29fcb4...00c762`](./contracts/ethereum-1/0x29fcb43b46531bca003ddc8fcb67ffe91900c762/) | ⚠️ Unaudited |
| SafeMigration | unknown | ethereum | n/a | [`0x526643...ffdac6`](./contracts/ethereum-1/0x526643f69b81b008f46d95cd5ced5ec0edffdac6/) | ⚠️ Unaudited |
| SafeProxyFactory | unknown | ethereum | n/a | [`0x4e1dcf...20ec67`](./contracts/ethereum-1/0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67/) | ⚠️ Unaudited |
| SafeToL2Migration | unknown | ethereum | n/a | [`0xff83f6...8d9f69`](./contracts/ethereum-1/0xff83f6335d8930cbad1c0d439a841f01888d9f69/) | ⚠️ Unaudited |
| SafeToL2Setup | unknown | ethereum | n/a | [`0xbd89a1...ffdc54`](./contracts/ethereum-1/0xbd89a1ce4dde368ffab0ec35506eece0b1ffdc54/) | ⚠️ Unaudited |
| SignMessageLib | unknown | ethereum | n/a | [`0x98ffbb...aff717`](./contracts/ethereum-1/0x98ffbbf51bb33a056b08ddf711f289936aaff717/) | ⚠️ Unaudited |
| SimulateTxAccessor | unknown | ethereum | n/a | [`0x3d4ba2...a46199`](./contracts/ethereum-1/0x3d4ba2e0884aa488718476ca2fb8efc291a46199/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6925cc...6dbba6`](./contracts/ethereum-1/0x6925ccd29e3993c82a574ced4372d8737c6dbba6/) | ⚠️ Unaudited |
| WBTCOFTAdapter | unknown | ethereum | n/a | [`0x2c0139...ba76ed`](./contracts/ethereum-1/0x2c01390e10e44c968b73a7bcff7e4b4f50ba76ed/) | ⚠️ Unaudited |

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
| [view](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Security_Assessment_Report_v2_2.pdf) | SigmaPrime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [view](https://github.com/chainwayxyz/clementine/blob/main/audits/Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [view](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_competition_citrea_jul2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [view](https://github.com/chainwayxyz/clementine/blob/main/audits/cantina-competition-report.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [view](https://github.com/chainwayxyz/token-bridge/blob/main/audits/Guardian_Chainway_Stablecoin_Bridge_Security_Assessment_Report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [view](https://github.com/BitVM/BitVM/blob/1f42f41c00d935988d87529e79e7d950d3bf9503/aduits/BitVM%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [view](https://static.citrea.xyz/audits/ctr-xctr-guardian.pdf) | Guardian | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [view](https://static.citrea.xyz/audits/ctr-xctr-sherlock.pdf) | Sherlock | Contest | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [cantina_eip6780_fix_feb2026.pdf](https://github.com/chainwayxyz/citrea/blob/nightly/audits/cantina_eip6780_fix_feb2026.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [23790] view
- [23791] view
- [23792] view
- [23793] view
- [23794] view
- [23796] view
- [23797] view
- [23798] view
- [23799] Sigma_Prime_Chainway_Citrea_Fee_Update_Security_Assessment_Report_v2_0.pdf
- [23800] cantina_eip6780_fix_feb2026.pdf

Fork inheritance lineage and inherited audits are included when available.
