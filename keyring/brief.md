# Agentic Audit Brief: Keyring

## Project Overview

- Project: Keyring (`keyring`)
- Website: [https://app.euler.finance/governor/keyring?network=avalanche](https://app.euler.finance/governor/keyring?network=avalanche)
- Lifecycle: active (Tier 0, 72.2% below peak)
- Generated: 2026-06-10T20:59:06.676Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche, ethereum
- Contract surface: 53 unique implementations (144 raw deployments)
- DeFi Llama TVL: $6,222,268.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Keyring provides enhanced depositor protection for DeFi users with instant zkVerification.

### Architecture

The Governor family controls risk parameters and protocol configurations, which are enforced in the EulerSwap family through fee configs and registries. Multisig wallets serve as the administrative layer, likely holding ownership of governance contracts and executing privileged operations.

## Audit Coverage Summary

- Verified implementations audited: 0/42 (0.0%)
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 53
- Raw deployments: 144
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccountLens | periphery | ethereum | 6 deployments: ethereum [`0x334209...0c230f`](./contracts/ethereum-1/0x3342097299f57ec4773578a94f99d5d2ea0c230f/); ethereum `0x5187ee...8ff257`; ethereum `0x880620...e60e9f`; ethereum `0x94b9d2...425844`; ethereum `0xa60c42...e34bc7`; ethereum `0xb8507b...27cd94` | ⚠️ Unaudited |
| CapRiskSteward | unknown | ethereum | 2 deployments: ethereum [`0x465528...4f8b8c`](./contracts/ethereum-1/0x465528b234fec209db52c9901dd959742a4f8b8c/); ethereum `0xfe56ca...e89b95` | ⚠️ Unaudited |
| CapRiskStewardFactory | registry | ethereum | 3 deployments: ethereum [`0x93c233...6f3208`](./contracts/ethereum-1/0x93c233008971e878d60a7737657869ab746f3208/); ethereum `0xa446a5...3a448b`; ethereum `0xff00fa...cffb84` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | ethereum | [`0x28e36e...583b85`](./contracts/ethereum-1/0x28e36ea7481934a651da81483358c67a51583b85/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | 29 deployments: ethereum [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/); ethereum `0x15226e...aac6bb`; ethereum `0x336d82...fba6e8`; ethereum `0x3fc222...1b4f12`; ethereum `0x4a35fe...b205af`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc6c0...3a554c`; ethereum `0x62b1de...b25f61`; ethereum `0x6a569e...a84dc7`; ethereum `0x8424db...77ed0c`; ethereum `0x8e8cfc...04cd4e`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xadccfc...09c988`; ethereum `0xb0baa4...3254f0`; ethereum `0xca5b70...56b85f`; ethereum `0xcf8f3a...972785`; ethereum `0xd0156a...f62efa`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xf61517...5e6683`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| EdgeFactory | registry | ethereum | [`0xa969b8...1659bd`](./contracts/ethereum-1/0xa969b8a46166b135fd5ac533adc28c816e1659bd/) | ⚠️ Unaudited |
| EdgeFactoryPerspective | registry | ethereum | [`0x8c7543...d4d788`](./contracts/ethereum-1/0x8c7543f83d3d295f68447792581f73d7d5d4d788/) | ⚠️ Unaudited |
| ERC4626EVCCollateralSecuritizeFactory | registry | ethereum | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | ⚠️ Unaudited |
| EulerEarnFactory | registry | ethereum | [`0x59709b...308af4`](./contracts/ethereum-1/0x59709b029b140c853fe28d277f83c3a65e308af4/) | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | ethereum | [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/) | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | ethereum | 8 deployments: ethereum [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/); ethereum `0x189841...a2458e`; ethereum `0x20954c...5013d9`; ethereum `0xa09144...41a8be`; ethereum `0xafad3c...f6285f`; ethereum `0xcfe86b...fa4f9a`; ethereum `0xf8be6d...6a05ef`; ethereum `0xf99770...64084a` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | ethereum | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | ethereum | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | ⚠️ Unaudited |
| EulerSwapFactory | registry | ethereum | 2 deployments: ethereum [`0xb013be...2cf228`](./contracts/ethereum-1/0xb013be1d0d380c13b58e889f412895970a2cf228/); ethereum `0xd05213...04df5f` | ⚠️ Unaudited |
| EulerSwapManagement | unknown | ethereum | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | ⚠️ Unaudited |
| EulerSwapPeriphery | adapter | ethereum | 2 deployments: ethereum [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/); ethereum `0xd3a349...fd513e` | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | ⚠️ Unaudited |
| EulerSwapRegistry | registry | ethereum | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | ethereum | 4 deployments: ethereum [`0x600bbe...21b507`](./contracts/ethereum-1/0x600bbe1d0759f380fea72b2e9b2b6dcb4a21b507/); ethereum `0x6a123b...3d6215`; ethereum `0x7160cb...307bc6`; ethereum `0xb50a07...5e7fbf` | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | ⚠️ Unaudited |
| FeeFlowControllerUtil | governance | ethereum | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | 11 deployments: ethereum [`0x3415b1...8136c5`](./contracts/ethereum-1/0x3415b11d4e4fbb6774df9859e03b1a26c48136c5/); ethereum `0x4cfa6e...c3b7c1`; ethereum `0x4e64e5...73cf45`; ethereum `0x53be6a...8eb56e`; ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xd35657...c3d4b8`; ethereum `0xf58f4d...bdd9f0`; ethereum `0xfef13a...0fe357` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xcad001...fb1dce`](./contracts/ethereum-1/0xcad001c30e96765ac90307669d578219d4fb1dce/) | ⚠️ Unaudited |
| GovernedPerspective | unknown | ethereum | [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/) | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | ethereum | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | ethereum | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | ⚠️ Unaudited |
| HookTarget | unknown | ethereum | [`0x6f5dad...1cad6a`](./contracts/ethereum-1/0x6f5dad1fce5944c241dfb586293d81fc791cad6a/) | ⚠️ Unaudited |
| HookTargetAccessControlKeyring | governance | ethereum | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | 6 deployments: ethereum [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/); ethereum `0x35b2fa...bfeac2`; ethereum `0x57b1bb...6c52c1`; ethereum `0x5c5302...7e460b`; ethereum `0xbbc1ca...2109cf`; ethereum `0xc6e506...843626` | ⚠️ Unaudited |
| OracleLens | operational_periphery | ethereum | 5 deployments: ethereum [`0x02bd64...ec2d83`](./contracts/ethereum-1/0x02bd64ce7fbdbe7eb84d1f9b08e0cc2a7fec2d83/); ethereum `0x0c4773...f3f183`; ethereum `0x30e6df...f7b48a`; ethereum `0x53dcfc...b1858a`; ethereum `0x787449...a9045d` | ⚠️ Unaudited |
| Permit2 | unknown | avalanche | [`0x000000...c78ba3`](./contracts/avalanche-43114/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | ethereum | [`0x8fdcb8...274800`](./contracts/ethereum-1/0x8fdcb80a2894f0dc052c8d52d22544dc90274800/) | ⚠️ Unaudited |
| PythOracle | operational_periphery | ethereum | [`0xfa9880...19de65`](./contracts/ethereum-1/0xfa9880c197bb245d055ee864653eeecf8619de65/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | 6 deployments: ethereum [`0x62962b...02b655`](./contracts/ethereum-1/0x62962b4d506b0065a133f37e19d163e5b002b655/); ethereum `0xb1345e...5fba27`; ethereum `0xb3b84e...b73c53`; ethereum `0xbdaa3f...6a976d`; ethereum `0xd5b7bc...cbd471`; ethereum `0xf8ef49...069b0f` | ⚠️ Unaudited |
| SnapshotRegistry | registry | ethereum | [`0x0a6467...bf459c`](./contracts/ethereum-1/0x0a64670763777e59898ae28d6acb7f2062bf459c/) | ⚠️ Unaudited |
| SwapHandler | unknown | ethereum | [`0xa24689...17afe3`](./contracts/ethereum-1/0xa24689b6ab48eccf7038c70ebc39f9ed4217afe3/) | ⚠️ Unaudited |
| Swapper | adapter | ethereum | [`0x719f8b...f9fb45`](./contracts/ethereum-1/0x719f8b330cca71cb6195d032a43194c7d3f9fb45/) | ⚠️ Unaudited |
| SwapVerifier | periphery | ethereum | [`0x786c90...c582ab`](./contracts/ethereum-1/0x786c900d7d348662703c38b46f24c1cda2c582ab/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 3 deployments: ethereum [`0x1b8c36...f74f5a`](./contracts/ethereum-1/0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a/); ethereum `0xbfee2d...b97e59`; ethereum `0xfb034c...07a968` | ⚠️ Unaudited |
| UtilsLens | periphery | ethereum | 8 deployments: ethereum [`0x1ad6ed...6ee539`](./contracts/ethereum-1/0x1ad6edf948b037a9364607f9e3c1e640166ee539/); ethereum `0x1b6e0b...af2d95`; ethereum `0x3ebfd2...27fb36`; ethereum `0x6104c0...dec34a`; ethereum `0x7b89cc...e6e0fc`; ethereum `0xb8cac3...5afcc1`; ethereum `0xbef9b6...fcc071`; ethereum `0xcf1801...488727` | ⚠️ Unaudited |
| VaultLens | core_logic | ethereum | 11 deployments: ethereum [`0x079fa5...c0e45e`](./contracts/ethereum-1/0x079fa5cde9c9647d26e79f3520fbdf9dbcc0e45e/); ethereum `0x72bbdb...f51f15`; ethereum `0x7427e9...0f3177`; ethereum `0x83801c...fc5b60`; ethereum `0xa18d79...ea66ab`; ethereum `0xa8695d...da8914`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403`; ethereum `0xdb259a...7fc3e2`; ethereum `0xe240c5...55b539`; ethereum `0xf7c8d2...a10ac6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x021f26e8fa57e7b88200da5c57f0c8af54f6557d) | proxy | ethereum | `0x7995dd...c9e866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x021f26...f6557d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0fac4d...75c084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x479c8f...34792c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74a221...24180f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85d88c...107504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb3332...c9c9a1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x334209...0c230f`](./contracts/ethereum-1/0x3342097299f57ec4773578a94f99d5d2ea0c230f/) | AccountLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x465528...4f8b8c`](./contracts/ethereum-1/0x465528b234fec209db52c9901dd959742a4f8b8c/) | CapRiskSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93c233...6f3208`](./contracts/ethereum-1/0x93c233008971e878d60a7737657869ab746f3208/) | CapRiskStewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa969b8...1659bd`](./contracts/ethereum-1/0xa969b8a46166b135fd5ac533adc28c816e1659bd/) | EdgeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c7543...d4d788`](./contracts/ethereum-1/0x8c7543f83d3d295f68447792581f73d7d5d4d788/) | EdgeFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ERC4626EVCCollateralSecuritizeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | EscrowedCollateralPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59709b...308af4`](./contracts/ethereum-1/0x59709b029b140c853fe28d277f83c3a65e308af4/) | EulerEarnFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/) | EulerEarnFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/) | EulerEarnVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | EulerFixedCyclicalBinaryIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | EulerKinkyIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb013be...2cf228`](./contracts/ethereum-1/0xb013be1d0d380c13b58e889f412895970a2cf228/) | EulerSwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | EulerSwapManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/) | EulerSwapPeriphery | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | EulerSwapProtocolFeeConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | EulerSwapRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x600bbe...21b507`](./contracts/ethereum-1/0x600bbe1d0759f380fea72b2e9b2b6dcb4a21b507/) | EulerUngovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | FactoryGovernor | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | FeeFlowControllerUtil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3415b1...8136c5`](./contracts/ethereum-1/0x3415b11d4e4fbb6774df9859e03b1a26c48136c5/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/) | GovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | GovernorAccessControlEmergency | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | GovernorAccessControlEmergencyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f5dad...1cad6a`](./contracts/ethereum-1/0x6f5dad1fce5944c241dfb586293d81fc791cad6a/) | HookTarget | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | HookTargetAccessControlKeyring | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/) | IRMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02bd64...ec2d83`](./contracts/ethereum-1/0x02bd64ce7fbdbe7eb84d1f9b08e0cc2a7fec2d83/) | OracleLens | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fdcb8...274800`](./contracts/ethereum-1/0x8fdcb80a2894f0dc052c8d52d22544dc90274800/) | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6467...bf459c`](./contracts/ethereum-1/0x0a64670763777e59898ae28d6acb7f2062bf459c/) | SnapshotRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa24689...17afe3`](./contracts/ethereum-1/0xa24689b6ab48eccf7038c70ebc39f9ed4217afe3/) | SwapHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x719f8b...f9fb45`](./contracts/ethereum-1/0x719f8b330cca71cb6195d032a43194c7d3f9fb45/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x786c90...c582ab`](./contracts/ethereum-1/0x786c900d7d348662703c38b46f24c1cda2c582ab/) | SwapVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ad6ed...6ee539`](./contracts/ethereum-1/0x1ad6edf948b037a9364607f9e3c1e640166ee539/) | UtilsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x079fa5...c0e45e`](./contracts/ethereum-1/0x079fa5cde9c9647d26e79f3520fbdf9dbcc0e45e/) | VaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
