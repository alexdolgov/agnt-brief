# Agentic Audit Brief: Keyring

## Project Overview

- Project: Keyring (`keyring`)
- Website: [https://app.euler.finance/governor/keyring?network=avalanche](https://app.euler.finance/governor/keyring?network=avalanche)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.171Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche, ethereum
- Contract surface: 187 unique implementations (239 raw deployments)
- DeFi Llama TVL: $6,221,577.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 37 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 13 common project-authored base contract(s) (basefactory, utils, baseadapter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 239; live-surface contracts included: 239 (90 live, 149 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 39 of 187 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 148
- Unique implementations: 187
- Raw deployments: 239
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountLens | periphery | ethereum | n/a | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | ⚠️ Unaudited |
| BeaconProxy | registry | avalanche | n/a | 7 deployments: avalanche [`0x2cbb39...fd04bf`](./contracts/avalanche-43114/0x2cbb39cdc3c0ba22f857a5a8ca54dee6d7fd04bf/); avalanche `0x3050b7...654529`; avalanche `0x5fdb07...b764c6`; avalanche `0x67e0ac...6b4438`; avalanche `0x6de07d...651a1e`; avalanche `0xb03277...bb0592`; avalanche `0xea5341...383d44` | ⚠️ Unaudited |
| CapRiskSteward | unknown | ethereum | n/a | [`0xfe56ca...e89b95`](./contracts/ethereum-1/0xfe56caa36da676364e1a0a97e4f7c07651e89b95/) | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | ethereum | n/a | [`0x28e36e...583b85`](./contracts/ethereum-1/0x28e36ea7481934a651da81483358c67a51583b85/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | n/a | 27 deployments: ethereum [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/); ethereum `0x15226e...aac6bb`; ethereum `0x336d82...fba6e8`; ethereum `0x3fc222...1b4f12`; ethereum `0x4a35fe...b205af`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc6c0...3a554c`; ethereum `0x62b1de...b25f61`; ethereum `0x6a569e...a84dc7`; ethereum `0x8424db...77ed0c`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xadccfc...09c988`; ethereum `0xb0baa4...3254f0`; ethereum `0xca5b70...56b85f`; ethereum `0xcf8f3a...972785`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xf61517...5e6683`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| ERC4626EVCCollateralSecuritizeFactory | registry | ethereum | n/a | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | n/a | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | avalanche | n/a | [`0xddcbe3...f36fa1`](./contracts/avalanche-43114/0xddcbe30a761edd2e19bba930a977475265f36fa1/) | ⚠️ Unaudited |
| EulerEarnFactory | registry | ethereum | n/a | [`0x59709b...308af4`](./contracts/ethereum-1/0x59709b029b140c853fe28d277f83c3a65e308af4/) | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | ethereum | n/a | [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/) | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/); ethereum `0x20954c...5013d9`; ethereum `0xa09144...41a8be`; ethereum `0xf99770...64084a` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | ethereum | n/a | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | ethereum | n/a | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | ⚠️ Unaudited |
| EulerSwap | unknown | ethereum | n/a | [`0x8b0e04...74dc97`](./contracts/ethereum-1/0x8b0e044e364f2ce913799d53b300e15a6974dc97/) | ⚠️ Unaudited |
| EulerSwapFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xb013be...2cf228`](./contracts/ethereum-1/0xb013be1d0d380c13b58e889f412895970a2cf228/); ethereum `0xd05213...04df5f` | ⚠️ Unaudited |
| EulerSwapManagement | unknown | ethereum | n/a | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | ⚠️ Unaudited |
| EulerSwapPeriphery | adapter | ethereum | n/a | 2 deployments: ethereum [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/); ethereum `0xd3a349...fd513e` | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | ethereum | n/a | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | ⚠️ Unaudited |
| EulerSwapRegistry | registry | ethereum | n/a | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | n/a | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | ⚠️ Unaudited |
| FeeFlowControllerUtil | governance | ethereum | n/a | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x4cfa6e...c3b7c1`](./contracts/ethereum-1/0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1/); ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xf58f4d...bdd9f0` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xcad001...fb1dce`](./contracts/ethereum-1/0xcad001c30e96765ac90307669d578219d4fb1dce/) | ⚠️ Unaudited |
| GovernedPerspective | unknown | ethereum | n/a | [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/) | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | ethereum | n/a | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | ethereum | n/a | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | ⚠️ Unaudited |
| HookTargetAccessControlKeyring | governance | ethereum | n/a | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | n/a | 2 deployments: ethereum [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/); ethereum `0x57b1bb...6c52c1` | ⚠️ Unaudited |
| KeyringCore | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3a5dd1...635bc6`](./contracts/avalanche-43114/0x3a5dd1fdf3bedc3a601d0e9bb37bb6cc3b635bc6/); avalanche `0xb0b5e2...dfe666` | ⚠️ Unaudited |
| OracleLens | operational_periphery | ethereum | n/a | [`0x30e6df...f7b48a`](./contracts/ethereum-1/0x30e6dfb84782a31d561536f64f47231451f7b48a/) | ⚠️ Unaudited |
| Permit2 | unknown | avalanche | n/a | [`0x000000...c78ba3`](./contracts/avalanche-43114/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | ethereum | n/a | [`0x8fdcb8...274800`](./contracts/ethereum-1/0x8fdcb80a2894f0dc052c8d52d22544dc90274800/) | ⚠️ Unaudited |
| PythOracle | operational_periphery | ethereum | n/a | [`0xfa9880...19de65`](./contracts/ethereum-1/0xfa9880c197bb245d055ee864653eeecf8619de65/) | ⚠️ Unaudited |
| SafeProxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0x69cc42...186364`](./contracts/avalanche-43114/0x69cc425b1e5f302e7db4e5d125ab984ec5186364/); avalanche `0x9506a6...722ee8`; avalanche `0xb80d81...73ee87` | ⚠️ Unaudited |
| Swapper | adapter | ethereum | n/a | [`0x719f8b...f9fb45`](./contracts/ethereum-1/0x719f8b330cca71cb6195d032a43194c7d3f9fb45/) | ⚠️ Unaudited |
| SwapVerifier | periphery | ethereum | n/a | [`0x786c90...c582ab`](./contracts/ethereum-1/0x786c900d7d348662703c38b46f24c1cda2c582ab/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x1b8c36...f74f5a`](./contracts/ethereum-1/0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a/) | ⚠️ Unaudited |
| UtilsLens | periphery | ethereum | n/a | 3 deployments: ethereum [`0x1b6e0b...af2d95`](./contracts/ethereum-1/0x1b6e0b25fef3131f5f461b000cc69d2611af2d95/); ethereum `0x7b89cc...e6e0fc`; ethereum `0xbef9b6...fcc071` | ⚠️ Unaudited |
| VaultLens | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x7427e9...0f3177`](./contracts/ethereum-1/0x7427e9ef64bbe73d40bbcf455d50d215e50f3177/); ethereum `0x83801c...fc5b60`; ethereum `0xa18d79...ea66ab`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (148)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb3332...c9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0004db...8f9109` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00114e...d23bba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0345d8...536928` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x065d7b...e17157` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x068f7c...3fdc37` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07bd12...cdbc2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x088af3...186010` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08bb80...1cb735` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c13cf...a6f595` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d1abc...6145ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d7938...1142de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x104ba4...d19f58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10d86e...0cb1d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x111419...6f7dbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x12ece3...d8ec2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1521c9...a020c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19747f...1bd281` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19fea2...62cba5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b8ada...aa28e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c0e8b...c1ce5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2341a8...865167` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23559e...2860ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x249576...6ef68c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24f2c9...a357cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x252476...536aa5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2584ad...fe01f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x283682...868110` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x299f86...c0a02d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29e9b6...2d4f21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b3cf9...f02c8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e3b32...de5391` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2eea49...ae748a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x316fec...4213a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31960a...baf409` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31f341...444c72` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32e943...671344` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3433cd...e05368` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34e211...15c9ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x367968...101726` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37e873...c43fe6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x39e3eb...fa0272` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bac48...0ae435` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4117a6...98aa70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41a90e...fca77c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x424743...ecfa6f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x484898...c9087c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x48d4b0...d606c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x497ecf...73ceba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f4fde...6be351` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4fef2f...e7ecdb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52f9c9...c3477f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x53a37b...40c64a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56e4db...973ea8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x574b00...52fac2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x582d01...1dc7a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58a674...6eff43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58b173...57aa60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x594691...16f215` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x59b75d...c947ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e70ce...775032` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x607eb6...7b79c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63cf6e...1d7dbc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64df5a...bbd39a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6502f0...0cbb43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66f9e7...4c87a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6999b3...293738` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e1c28...c29a06` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x710b07...9d547e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71e4cd...8e63cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73e475...e6159a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x743144...5d0802` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x754332...dbf949` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7578c2...d017e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x768b74...278174` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77ab5a...ee2226` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x78678f...7b7623` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x789d44...29a4dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a2a57...fa7f57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cbca6...b17410` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80528f...3be696` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8485bb...75807a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x856416...5d2e30` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85779a...021ae9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89d513...63b036` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a1d3a...27e440` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d990f...ef656c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x927aa7...db971c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93fa09...f32b9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94af78...992650` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9507fe...10eaf5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x95f21c...4b278c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a05b9...49a2c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9c38f9...fd16fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9c6dd1...98653c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ceed3...38ac68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa155b7...ab9c61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3ddf1...2b5967` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa60fac...21a519` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab61ae...65ebbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xacefcf...9ef71e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf4b4c...f26181` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf5659...a9913d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb1f641...bbf1af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb67167...ebc3ab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8077b...366cfe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbb438...dfa358` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbd929...d54306` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0692e...bea38b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc26757...bb2868` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc41da3...4c1431` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc4987e...8fba75` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5ffce...b7efd7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc820c2...2c1544` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc96877...a69f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9eec2...b14bee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9f920...e67709` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xca14d3...cbf65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcad498...9e7086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc5f75...19a254` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd80e68...013f62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xddf01e...3c350f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf5d94...af6c33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3b535...2dbbbb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe41338...7f3eea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe58989...5fddb8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5a94a...c63e11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7d5aa...0fe441` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec375f...0f1c6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xece15a...2a77e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee2cac...fbcd9e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee3122...809d9b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeeac87...4f89b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeec95f...5e4339` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef2228...176d34` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef3dcf...d3b054` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf195bf...2ce2ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1a5f9...d64310` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3c3e7...9d3ee2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf4e589...594af7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf9f2df...c19184` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfda61d...c6cbeb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe6129...ba8667` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff37ce...ab1df1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | AccountLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe56ca...e89b95`](./contracts/ethereum-1/0xfe56caa36da676364e1a0a97e4f7c07651e89b95/) | CapRiskSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ERC4626EVCCollateralSecuritizeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | EscrowedCollateralPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xddcbe3...f36fa1`](./contracts/avalanche-43114/0xddcbe30a761edd2e19bba930a977475265f36fa1/) | EthereumVaultConnector | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59709b...308af4`](./contracts/ethereum-1/0x59709b029b140c853fe28d277f83c3a65e308af4/) | EulerEarnFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/) | EulerEarnFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/) | EulerEarnVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | EulerFixedCyclicalBinaryIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | EulerKinkyIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b0e04...74dc97`](./contracts/ethereum-1/0x8b0e044e364f2ce913799d53b300e15a6974dc97/) | EulerSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb013be...2cf228`](./contracts/ethereum-1/0xb013be1d0d380c13b58e889f412895970a2cf228/) | EulerSwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | EulerSwapManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/) | EulerSwapPeriphery | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | EulerSwapProtocolFeeConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | EulerSwapRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | FactoryGovernor | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | FeeFlowControllerUtil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cfa6e...c3b7c1`](./contracts/ethereum-1/0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/) | GovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x354008...e30a1b`](./contracts/ethereum-1/0x35400831044167e9e2de613d26515eee37e30a1b/) | GovernorAccessControlEmergency | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | GovernorAccessControlEmergencyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | HookTargetAccessControlKeyring | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/) | IRMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3a5dd1...635bc6`](./contracts/avalanche-43114/0x3a5dd1fdf3bedc3a601d0e9bb37bb6cc3b635bc6/) | KeyringCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30e6df...f7b48a`](./contracts/ethereum-1/0x30e6dfb84782a31d561536f64f47231451f7b48a/) | OracleLens | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fdcb8...274800`](./contracts/ethereum-1/0x8fdcb80a2894f0dc052c8d52d22544dc90274800/) | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfa9880...19de65`](./contracts/ethereum-1/0xfa9880c197bb245d055ee864653eeecf8619de65/) | PythOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x719f8b...f9fb45`](./contracts/ethereum-1/0x719f8b330cca71cb6195d032a43194c7d3f9fb45/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x786c90...c582ab`](./contracts/ethereum-1/0x786c900d7d348662703c38b46f24c1cda2c582ab/) | SwapVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6e0b...af2d95`](./contracts/ethereum-1/0x1b6e0b25fef3131f5f461b000cc69d2611af2d95/) | UtilsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7427e9...0f3177`](./contracts/ethereum-1/0x7427e9ef64bbe73d40bbcf455d50d215e50f3177/) | VaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 148 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11601] omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e

Fork inheritance lineage and inherited audits are included when available.
