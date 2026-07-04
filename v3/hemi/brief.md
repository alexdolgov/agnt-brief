# Agentic Audit Brief: Hemi

## Project Overview

- Project: Hemi (`hemi`)
- Website: [https://hemi.xyz/](https://hemi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.398Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, ethereum, optimism
- Contract surface: 43 unique implementations (89 raw deployments)
- DeFi Llama TVL: $519,962.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 34 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 89 (79 live, 10 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/33 (3.0%)
- Deployed-live implementations: 33 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/33
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 43
- Raw deployments: 89
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 3.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Hemi | unknown | ethereum | n/a | [`0xeb964a...4f484d`](./contracts/ethereum-1/0xeb964a1a6fab73b8c72a0d15c7337fa4804f484d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0xa5f377...9f5e43`](./contracts/ethereum-1/0xa5f37791378c55941a52b4dcb70be4d8d09f5e43/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | n/a | [`0xf44007...f54677`](./contracts/ethereum-1/0xf44007eaf2fafdd8ba8d3551f23cd2b879f54677/) | ⚠️ Unaudited |
| BinanceHemiOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/); bsc `0xb8dbff...a2c3c3`; bsc `0xd275f9...42506e`; bsc `0xfc5538...e91575` | ⚠️ Unaudited |
| DelayedWETH | unknown | ethereum | n/a | [`0xc56273...a575a3`](./contracts/ethereum-1/0xc5627348dbc9179cfb5a24c8199635770ea575a3/) | ⚠️ Unaudited |
| EAS | unknown | optimism | n/a | [`0x420000...000021`](./contracts/optimism-10/0x4200000000000000000000000000000000000021/) | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | optimism | n/a | [`0x420000...00000f`](./contracts/optimism-10/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/); optimism [`0xa6b71e...896ab2`](./contracts/optimism-10/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| HemiLock | unknown | bsc | n/a | 4 deployments: bsc [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/); bsc `0x7070fa...fb89f9`; bsc `0x86bb2b...94046b`; bsc `0xfbe1ba...6eae8b` | ⚠️ Unaudited |
| L1Block | unknown | optimism | n/a | [`0x420000...000015`](./contracts/optimism-10/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0xf005df...6fb050`](./contracts/ethereum-1/0xf005dfb08377fad44588af68d0884d272a6fb050/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0xa44633...6bede0`](./contracts/ethereum-1/0xa446331bd28cbe0186a983a27c528f566b6bede0/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | optimism | n/a | [`0x420000...000007`](./contracts/optimism-10/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x6daf3a...9c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | optimism | n/a | [`0x420000...000010`](./contracts/optimism-10/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | optimism | n/a | [`0x420000...000016`](./contracts/optimism-10/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x42ff66...ba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | ⚠️ Unaudited |
| MockDstOFT | unknown | bsc | n/a | 35 deployments: bsc [`0x04db2d...cec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/); bsc `0x14c9bc...298fba`; bsc `0x182c58...8463a1`; bsc `0x25c304...77d608`; bsc `0x2dd586...1142a8`; bsc `0x3a82a4...9cd2f4`; bsc `0x3ea24e...fbbcad`; bsc `0x466140...53a8f3`; bsc `0x4f2acd...1bd83e`; bsc `0x4ff907...c0f538`; bsc `0x51bc60...865761`; bsc `0x656f1f...c9e4d0`; bsc `0x6e3ac5...245365`; bsc `0x760c66...4ba3b7`; bsc `0x790e5f...e36acb`; bsc `0x8e4f0e...6110bf`; bsc `0x8f1561...9c0bb3`; bsc `0x951f5d...7d2c1d`; bsc `0x9bfc21...722406`; bsc `0xa3ceec...ac4da2`; bsc `0xb908ca...0c476e`; bsc `0xbd5caa...128a66`; bsc `0xbf504a...fb3735`; bsc `0xbf7d0f...35b2e2`; bsc `0xc340d0...090657`; bsc `0xc9ffa2...a03b46`; bsc `0xd86a00...df086b`; bsc `0xdb2d0b...2c3766`; bsc `0xdbd9cf...3bd39a`; bsc `0xe002c5...9e0ed9`; bsc `0xe2a466...ba8cc8`; bsc `0xe2adb4...77f938`; bsc `0xf22873...9b7e0f`; bsc `0xf3b36c...5893e0`; bsc `0xffd74e...2dfd09` | ⚠️ Unaudited |
| OFT | unknown | bsc | n/a | 6 deployments: bsc [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/); bsc `0x37d8c0...74d931`; bsc `0x64b5bb...609373`; bsc `0x707c24...412075`; bsc `0xa30e1a...076f30`; bsc `0xc141b6...a96515` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x0262fe...09342c`](./contracts/ethereum-1/0x0262fedc4a98f94ddb90cef0e058644d8409342c/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | optimism | n/a | [`0x420000...000012`](./contracts/optimism-10/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x39a000...3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x613f36...24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0x13cb1b...f3ce48`](./contracts/ethereum-1/0x13cb1b6e69ec8ff6a5c8823d1e8dc78cccf3ce48/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x5442d0...2562c3`](./contracts/ethereum-1/0x5442d0ddb33b396879d2d016a9ad09ad122562c3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xbe81a9...fefb30`](./contracts/ethereum-1/0xbe81a9d662422f667f634f3fc301e2e360fefb30/) | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | n/a | [`0x420000...000018`](./contracts/optimism-10/0x4200000000000000000000000000000000000018/) | ⚠️ Unaudited |
| SchemaRegistry | registry | optimism | n/a | [`0x420000...000020`](./contracts/optimism-10/0x4200000000000000000000000000000000000020/) | ⚠️ Unaudited |
| SequencerFeeVault | core_logic | optimism | n/a | [`0x420000...000011`](./contracts/optimism-10/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x15144f...8d2ab8`](./contracts/ethereum-1/0x15144fb8621cb3c4ed3db223c173ffb58c8d2ab8/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x5ae686...5303c3`](./contracts/ethereum-1/0x5ae68684d9179a8053883f1df599ea7fb35303c3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04dcfe...ebb634` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x580e54...5ed9f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7403b8...4443bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9865bb...493754` | ❓ Unverified |
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
| [Audit_Report_HEMI-TOK_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/Audit_Report_HEMI-TOK_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |
| [HemiToken - Final Report.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/HemiToken%20-%20Final%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | n/a |
| [Audit_Report_HEMI-VOT_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/veHEMI/Audit_Report_HEMI-VOT_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [audit-reports (GitHub directory)](https://github.com/hemilabs/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [3137] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [3138] Quantstamp - BTC Tunnel - FinalReport (1).pdf
- [3141] Audit_Report_HEMI-VOT_FINAL_21.pdf
- [14613] audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
