# Agentic Audit Brief: hemiBTC

## Project Overview

- Project: hemiBTC (`hemibtc`)
- Website: [https://app.hemi.xyz/en/tunnel/](https://app.hemi.xyz/en/tunnel/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:41.724Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, optimism
- Contract surface: 30 unique implementations (77 raw deployments)
- DeFi Llama TVL: $10,779,156.30
- On-chain TVL (included contracts): $13,259.09
- TVL by chain: Optimism $13,259.09

## Project Description

hemiBTC is Hemi's native BTC representation and Bitcoin tunnel bridge, focused on representing and moving BTC in connection with Hemi. It should not be described as the broader Hemi protocol, the HEMI token, veHEMI governance, BSC/OFT deployments, oracle infrastructure, or generic OP Stack infrastructure unless those components are independently verified as part of the hemiBTC bridge product.

### Architecture

The L1 and L2 families are tightly coupled through the OP Stack bridge: L1 contracts lock assets and relay messages to L2 contracts, which mint or release assets accordingly. The $HEMI token family provides a cross-chain token used for governance and fees, interacting with both L1 and L2 via standard ERC20 and OFT interfaces.

## Contract Surface Quality

- Indexed contracts: 100; live-surface contracts included: 77 (73 live, 4 unknown).
- Excluded by liveness: 19 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 13/28 live.
- Detected codebases: none
- Unverified dependencies: 10/15.

## Audit Coverage Summary

- Verified implementations audited: 0/23 (0.0%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 30
- Raw deployments: 77
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $13,259.09
- Latest audit: 2025-10 (fresh)
- Staleness: 3 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SequencerFeeVault | core_logic | optimism | unit-25348 | [`0x420000...000011`](./contracts/optimism-10/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| BinanceHemiOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/); bsc `0xb8dbff...a2c3c3`; bsc `0xd275f9...42506e`; bsc `0xfc5538...e91575` | ⚠️ Unaudited |
| EAS | unknown | optimism | unit-25358 | [`0x420000...000021`](./contracts/optimism-10/0x4200000000000000000000000000000000000021/) | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | optimism | unit-25346 | [`0x420000...00000f`](./contracts/optimism-10/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/); optimism [`0xa6b71e...896ab2`](./contracts/optimism-10/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| HemiLock | unknown | bsc | n/a | 4 deployments: bsc [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/); bsc `0x7070fa...fb89f9`; bsc `0x86bb2b...94046b`; bsc `0xfbe1ba...6eae8b` | ⚠️ Unaudited |
| L1Block | unknown | optimism | unit-25351 | [`0x420000...000015`](./contracts/optimism-10/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-25338 | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | optimism | unit-25345 | [`0x420000...000007`](./contracts/optimism-10/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2ERC721Bridge | operational_periphery | optimism | unit-25350 | [`0x420000...000014`](./contracts/optimism-10/0x4200000000000000000000000000000000000014/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | unit-25339 | [`0x6daf3a...9c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | optimism | unit-25347 | [`0x420000...000010`](./contracts/optimism-10/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | optimism | unit-25352 | [`0x420000...000016`](./contracts/optimism-10/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x42ff66...ba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | ⚠️ Unaudited |
| MockDstOFT | unknown | bsc | n/a | 35 deployments: bsc [`0x04db2d...cec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/); bsc `0x14c9bc...298fba`; bsc `0x182c58...8463a1`; bsc `0x25c304...77d608`; bsc `0x2dd586...1142a8`; bsc `0x3a82a4...9cd2f4`; bsc `0x3ea24e...fbbcad`; bsc `0x466140...53a8f3`; bsc `0x4f2acd...1bd83e`; bsc `0x4ff907...c0f538`; bsc `0x51bc60...865761`; bsc `0x656f1f...c9e4d0`; bsc `0x6e3ac5...245365`; bsc `0x760c66...4ba3b7`; bsc `0x790e5f...e36acb`; bsc `0x8e4f0e...6110bf`; bsc `0x8f1561...9c0bb3`; bsc `0x951f5d...7d2c1d`; bsc `0x9bfc21...722406`; bsc `0xa3ceec...ac4da2`; bsc `0xb908ca...0c476e`; bsc `0xbd5caa...128a66`; bsc `0xbf504a...fb3735`; bsc `0xbf7d0f...35b2e2`; bsc `0xc340d0...090657`; bsc `0xc9ffa2...a03b46`; bsc `0xd86a00...df086b`; bsc `0xdb2d0b...2c3766`; bsc `0xdbd9cf...3bd39a`; bsc `0xe002c5...9e0ed9`; bsc `0xe2a466...ba8cc8`; bsc `0xe2adb4...77f938`; bsc `0xf22873...9b7e0f`; bsc `0xf3b36c...5893e0`; bsc `0xffd74e...2dfd09` | ⚠️ Unaudited |
| MockLock | unknown | bsc | n/a | 2 deployments: bsc [`0x32a21e...169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/); bsc `0xded54c...aad82e` | ⚠️ Unaudited |
| OFT | unknown | bsc | n/a | 6 deployments: bsc [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/); bsc `0x37d8c0...74d931`; bsc `0x64b5bb...609373`; bsc `0x707c24...412075`; bsc `0xa30e1a...076f30`; bsc `0xc141b6...a96515` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | optimism | unit-25349 | [`0x420000...000012`](./contracts/optimism-10/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | unit-25335 | [`0x39a000...3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x613f36...24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | unit-25354 | [`0x420000...000018`](./contracts/optimism-10/0x4200000000000000000000000000000000000018/) | ⚠️ Unaudited |
| SchemaRegistry | registry | optimism | unit-25357 | [`0x420000...000020`](./contracts/optimism-10/0x4200000000000000000000000000000000000020/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04dcfe...ebb634` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c3497...cb67d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5687ba...d1ee0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x963b5b...bd0a34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd74432...4d5b30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe38d19...b3ca10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe55744...ef005a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_HEMI-PRO_FINAL_22.pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Audit_Report_HEMI-PRO_FINAL_22.pdf) | HEMI-PRO | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Quantstamp - BTC Tunnel - FinalReport (1).pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Quantstamp%20-%20BTC%20Tunnel%20-%20FinalReport%20(1).pdf) | Quantstamp | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Audit_Report_HEMI-TOK_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/Audit_Report_HEMI-TOK_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [HemiToken - Final Report.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/HemiToken%20-%20Final%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Audit_Report_HEMI-VOT_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/veHEMI/Audit_Report_HEMI-VOT_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | $290.99 | Verified native implementation with $290.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/) | BinanceHemiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/) | HemiLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6daf3a...9c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04db2d...cec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/) | MockDstOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32a21e...169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | MockLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39a000...3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1971] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [1972] Quantstamp - BTC Tunnel - FinalReport (1).pdf
- [11927] Audit_Report_HEMI-TOK_FINAL_21.pdf
- [11928] HemiToken - Final Report.pdf
- [11929] Audit_Report_HEMI-VOT_FINAL_21.pdf

Fork inheritance lineage and inherited audits are included when available.
