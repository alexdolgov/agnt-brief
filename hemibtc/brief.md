# Agentic Audit Brief: hemiBTC

## Project Overview

- Project: hemiBTC (`hemibtc`)
- Website: [https://app.hemi.xyz/en/tunnel/](https://app.hemi.xyz/en/tunnel/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.409Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, ethereum, optimism
- Contract surface: 31 unique implementations (78 raw deployments)
- DeFi Llama TVL: $9,939,402.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 37 project-authored contract(s) across 3 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 1 common project-authored base contract(s) (semver). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 78; live-surface contracts included: 78 (71 live, 7 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 24 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 31
- Raw deployments: 78
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BinanceHemiOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/); bsc `0xb8dbff1e8dfa6a8cb2b6702f685e3fb73ba2c3c3`; bsc `0xd275f99dba63259466ef83abf1a9c2effc42506e`; bsc `0xfc553809c82ab0853e5d9e7dd168dd4454e91575` | ⚠️ Unaudited |
| EAS | unknown | optimism | n/a | [`0x4200000000000000000000000000000000000021`](./contracts/optimism-10/0x4200000000000000000000000000000000000021/) | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | optimism | n/a | [`0x420000000000000000000000000000000000000f`](./contracts/optimism-10/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/); optimism [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/optimism-10/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x4200000000000000000000000000000000000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| HemiLock | unknown | bsc | n/a | 4 deployments: bsc [`0x0795a3c4898d823946f953bd1234c0e7b7ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/); bsc `0x7070fa313d1514ada227f38a8afcc8e37cfb89f9`; bsc `0x86bb2b7ec923dc0f30a784de00f0737ec094046b`; bsc `0xfbe1baa283c3cdf96052e56eb979e3b01b6eae8b` | ⚠️ Unaudited |
| L1Block | unknown | optimism | n/a | [`0x4200000000000000000000000000000000000015`](./contracts/optimism-10/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | optimism | n/a | [`0x4200000000000000000000000000000000000007`](./contracts/optimism-10/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2ERC721Bridge | operational_periphery | optimism | n/a | [`0x4200000000000000000000000000000000000014`](./contracts/optimism-10/0x4200000000000000000000000000000000000014/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x6daf3a3497d8abdfe12915add9829f83a79c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | optimism | n/a | [`0x4200000000000000000000000000000000000010`](./contracts/optimism-10/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | optimism | n/a | [`0x4200000000000000000000000000000000000016`](./contracts/optimism-10/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x42ff661af011939f699d67bd021d237ebcba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | ⚠️ Unaudited |
| MockDstOFT | unknown | bsc | n/a | 35 deployments: bsc [`0x04db2da16318e616d28f0da7aa59eeb12acec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/); bsc `0x14c9bc56eff931ae8625899f1b747d4431298fba`; bsc `0x182c58c10fa565d9d9a3b929294b8803f38463a1`; bsc `0x25c304f15513e9c8054c84ed6a9927e8e677d608`; bsc `0x2dd5869c3d7d251e1e9a452bd7aa2e11c61142a8`; bsc `0x3a82a401a5834a32aa5f6268982805bbb69cd2f4`; bsc `0x3ea24e3727a85a479e29e02cc70e792936fbbcad`; bsc `0x4661407fc224e5432d7f528a20ef8906e453a8f3`; bsc `0x4f2acd70a590736bb6185a7aab503971e61bd83e`; bsc `0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538`; bsc `0x51bc603a29bef7181e9866ed27beaae215865761`; bsc `0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0`; bsc `0x6e3ac56a1df60ada3b5563c3a609222045245365`; bsc `0x760c6622e94868f4e6df8e8d25c9c0c8dc4ba3b7`; bsc `0x790e5f103ab69122fc5d9a3d5216fad11fe36acb`; bsc `0x8e4f0e00904d03b2fa805c2b07c436e7a76110bf`; bsc `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3`; bsc `0x951f5d2593e0a678c1192fab4fa3dbbf867d2c1d`; bsc `0x9bfc2143b2729ede4a53b96379b36d6018722406`; bsc `0xa3ceec1740090b303a9682cd43f1f14d7bac4da2`; bsc `0xb908cadb1906b44c3d163486d8ceb9b4370c476e`; bsc `0xbd5caae9f1b73dce4e14790cfdf32de0d0128a66`; bsc `0xbf504a1eb823a0a2964cb043068472f479fb3735`; bsc `0xbf7d0f62b64b23053949b3a88a03da5bfd35b2e2`; bsc `0xc340d0a130663fa901a1bdb7a3ddb911de090657`; bsc `0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46`; bsc `0xd86a00de186222a6720e0838b28ccf46c6df086b`; bsc `0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766`; bsc `0xdbd9cfb0b54c08e75085f8c8844e8054d13bd39a`; bsc `0xe002c5c9ad8f533c17c25df21c453f31849e0ed9`; bsc `0xe2a466df120fb847520763461d99c22ea5ba8cc8`; bsc `0xe2adb496684eb9c43b5025f05b50ee492c77f938`; bsc `0xf228733daa7897dd728b11609b4382b9d69b7e0f`; bsc `0xf3b36c39dd2a5e0407fb3aee0dd444a88d5893e0`; bsc `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | ⚠️ Unaudited |
| MockLock | unknown | bsc | n/a | 2 deployments: bsc [`0x32a21ec8ee93971d4b4093c0895fd841c7169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/); bsc `0xded54ce0e6724ffc3992939771e54a6dbcaad82e` | ⚠️ Unaudited |
| OFT | unknown | bsc | n/a | 6 deployments: bsc [`0x10061d0593441ff74536158592e1be3f4c7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/); bsc `0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931`; bsc `0x64b5bb3b7ef0267019fee5b826c60cb9b7609373`; bsc `0x707c243b59fedf29730cd3d1025fbeeea0412075`; bsc `0xa30e1a67026b9cb4dec0ea2338cc5cd34d076f30`; bsc `0xc141b66ee4262ba46ea29578955c274fd4a96515` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | optimism | n/a | [`0x4200000000000000000000000000000000000012`](./contracts/optimism-10/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismMintableERC721Factory | unknown | optimism | n/a | [`0x4482b6510df4c723bdf80c4441dbdbc855ab29ac`](./contracts/optimism-10/0x4482b6510df4c723bdf80c4441dbdbc855ab29ac/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x39a0005415256b9863afe2d55edcf75ecc3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x613f36be58ba712b37474f4b82484d680d24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | n/a | [`0x4200000000000000000000000000000000000018`](./contracts/optimism-10/0x4200000000000000000000000000000000000018/) | ⚠️ Unaudited |
| SchemaRegistry | registry | optimism | n/a | [`0x4200000000000000000000000000000000000020`](./contracts/optimism-10/0x4200000000000000000000000000000000000020/) | ⚠️ Unaudited |
| SequencerFeeVault | core_logic | optimism | n/a | [`0x4200000000000000000000000000000000000011`](./contracts/optimism-10/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x04dcfe50e43823a1d8f6e3fbb8af10bfb7ebb634` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c3497c91291f6a8db73efa7565a83f89ccb67d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5687ba62088aa4cd6a8df1930798fe510fd1ee0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x963b5bc11950ab4852e9c60992ec21827ebd0a34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd744320abd3bd4445dc3c90c889391bd454d5b30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe38d19b2950a386f44052ddc07fcb4a6d6b3ca10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe55744ebb196d0e4ddea70204142eaf517ef005a` | ❓ Unverified |

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
| bsc | [`0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/) | BinanceHemiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000021`](./contracts/optimism-10/0x4200000000000000000000000000000000000021/) | EAS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000000000000000000000000000000000000f`](./contracts/optimism-10/0x420000000000000000000000000000000000000f/) | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | GnosisSafeProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0795a3c4898d823946f953bd1234c0e7b7ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/) | HemiLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000015`](./contracts/optimism-10/0x4200000000000000000000000000000000000015/) | L1Block | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000007`](./contracts/optimism-10/0x4200000000000000000000000000000000000007/) | L2CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000014`](./contracts/optimism-10/0x4200000000000000000000000000000000000014/) | L2ERC721Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6daf3a3497d8abdfe12915add9829f83a79c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000010`](./contracts/optimism-10/0x4200000000000000000000000000000000000010/) | L2StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000016`](./contracts/optimism-10/0x4200000000000000000000000000000000000016/) | L2ToL1MessagePasser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42ff661af011939f699d67bd021d237ebcba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04db2da16318e616d28f0da7aa59eeb12acec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/) | MockDstOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32a21ec8ee93971d4b4093c0895fd841c7169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | MockLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10061d0593441ff74536158592e1be3f4c7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000012`](./contracts/optimism-10/0x4200000000000000000000000000000000000012/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4482b6510df4c723bdf80c4441dbdbc855ab29ac`](./contracts/optimism-10/0x4482b6510df4c723bdf80c4441dbdbc855ab29ac/) | OptimismMintableERC721Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39a0005415256b9863afe2d55edcf75ecc3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613f36be58ba712b37474f4b82484d680d24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000020`](./contracts/optimism-10/0x4200000000000000000000000000000000000020/) | SchemaRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000011`](./contracts/optimism-10/0x4200000000000000000000000000000000000011/) | SequencerFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 7 |

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
