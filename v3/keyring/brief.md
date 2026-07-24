# Agentic Audit Brief: Keyring

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Keyring (`keyring`)
- Website: [https://app.euler.finance/governor/keyring?network=avalanche](https://app.euler.finance/governor/keyring?network=avalanche)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, ethereum, linea, optimism, polygon
- Contract surface: 239 unique implementations (291 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,221,577.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Keyring. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, ethereum, linea, optimism, polygon. Structural roles: 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xb0b5e2176e10b12d70e60e3a68738298a7dfe666`, chain 1)
- UnnamedContract (`0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d`, chain 10)
- UnnamedContract (`0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d`, chain 137)
- UnnamedContract (`0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d`, chain 8453)
- UnnamedContract (`0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d`, chain 42161)
- UnnamedContract (`0xb0b5e2176e10b12d70e60e3a68738298a7dfe666`, chain 43114)
- UnnamedContract (`0x899cbf89b644e79f9042c4c96fc513d31063872b`, chain 59144)
- ERC1967Proxy (`0x3a5dd1fdf3bedc3a601d0e9bb37bb6cc3b635bc6`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 232 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 7 of 239 unique; 232 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 200
- Unique implementations: 239
- Raw deployments: 291
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60c4257c809353039a71527dfe701b577e34bc7` | ⚠️ Unaudited |
| BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: avalanche `0x2cbb39cdc3c0ba22f857a5a8ca54dee6d7fd04bf`; avalanche `0x3050b75382ab718fad92d83c5f99c7fda1654529`; avalanche `0x5fdb07efb2dafac9186c8a7902332ce0f4b764c6`; avalanche `0x67e0ac01425fa296169dbb5157349e668f6b4438`; avalanche `0x6de07d6cbd0c4e8fa93da3d7bdaa1d1505651a1e`; avalanche `0xb032772229b2af29eaa026d1648bb9bc42bb0592`; avalanche `0xea534105c2ccc0582d82b285aa47a6b446383d44` | ⚠️ Unaudited |
| CapRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe56caa36da676364e1a0a97e4f7c07651e89b95` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e36ea7481934a651da81483358c67a51583b85` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x130eabada6f4c663095c8e9e276ab5da670ffaed`; ethereum `0x15226e1796c24a635a9662bff2b8dc6cc3aac6bb`; ethereum `0x336d821459db40ba9bfb8a1a89457d689afba6e8`; ethereum `0x3fc2228e67d131de974a0a42fb2e1a94d71b4f12`; ethereum `0x4a35fe57388d8e637690ed27d744917a6fb205af`; ethereum `0x55757d7db2811dd57b4edd5f3594aa7a9058dcc1`; ethereum `0x56292911ae5993c25948ee24273734e6abec1832`; ethereum `0x566c246475b853b7daff705ad5c5e78753eef5dd`; ethereum `0x5ae8c1300245eae3f64625faa20ec9c35a78c275`; ethereum `0x5b12ce5fdafb14399e0ffe6a5410fbec63f6b066`; ethereum `0x5bc6c01611dc945ea2f05d9e5d670846bd3a554c`; ethereum `0x62b1deb38ead3fe18110f0eed52e04626db25f61`; ethereum `0x6a569efb73aea68a3b93fb9deb659074aaa84dc7`; ethereum `0x8424db29b3f19a6b494d20cb3071669fd277ed0c`; ethereum `0xa5263145d8c9bfc89c7a55ea21fb5b617c7b6cff`; ethereum `0xa625cbaeffe19374ed9df500c9ed87d4d962c564`; ethereum `0xadccfc92aff2ea281b7e458c9c9aa2e06d09c988`; ethereum `0xb0baa4dc6af4f2c1541ee4ea4afe01a4183254f0`; ethereum `0xca5b7044be73671fd6707c2312cec7c07556b85f`; ethereum `0xcf8f3a674063c9cb253911718e4d120884972785`; ethereum `0xd201e8c913716fbcbbe489948a5315236ee98f36`; ethereum `0xd6b5eba2282836bfbd73d65bf5203f91cc1179c5`; ethereum `0xd7440b786f38ab805d94f6a8f3ee398b8340cd22`; ethereum `0xd7ad788fee2a7f7cada6e82860d8daed9ef21895`; ethereum `0xf6151700c3c1d5de33319171bfe5174b705e6683`; ethereum `0xf9de4293f3a11d657ac403a8985fc2f5dd156ce6`; ethereum `0xffe3b09b0647cd496d37815f9c8540dca9fab24e` | ⚠️ Unaudited |
| ERC4626EVCCollateralSecuritizeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f51d980f15fe6075ae30394dc35de57a4f76cbb` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddcbe30a761edd2e19bba930a977475265f36fa1` | ⚠️ Unaudited |
| EulerEarnFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59709b029b140c853fe28d277f83c3a65e308af4` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e` | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07d6b3981cbc1dc34102735b987b175116635091`; ethereum `0x20954c32bc063a125036b2563ca74fa98b5013d9`; ethereum `0xa09144beae23d8e7836aeb0fe17dd2647241a8be`; ethereum `0xf997706566ea9b0df3577c41a468a8337064084a` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0` | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010102daab6133d4f8ceb4c8842a70b9899fc102` | ⚠️ Unaudited |
| EulerSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b0e044e364f2ce913799d53b300e15a6974dc97` | ⚠️ Unaudited |
| EulerSwapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb013be1d0d380c13b58e889f412895970a2cf228`; ethereum `0xd05213331221fab8a3c387f2affbb605bb04df5f` | ⚠️ Unaudited |
| EulerSwapManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a` | ⚠️ Unaudited |
| EulerSwapPeriphery | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x208ff5eb543814789321daa1b5eb551881d16b06`; ethereum `0xd3a349ee0a21ea0a7e9513ac236ae614b5fd513e` | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5171aed04fa9551db484f07c853f252bc6f53b63` | ⚠️ Unaudited |
| EulerSwapRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fccb84363f020c0cade052c9c654aabf932814a` | ⚠️ Unaudited |
| FactoryGovernor | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d` | ⚠️ Unaudited |
| FeeFlowControllerUtil | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1`; ethereum `0x86cb5973d23b198fc21a4f0e6333274841be3f56`; ethereum `0x95df7a30af54cc05d1cfb1e9d7655f12269b8439`; ethereum `0xb5004f2e4bcb95be4ba61a891ca3bb63bb31ffb4`; ethereum `0xbd33656cc2a1096024203485945a60224a2121dc`; ethereum `0xf58f4d2cd0ee43624dc442e726871b115dbdd9f0` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcad001c30e96765ac90307669d578219d4fb1dce` | ⚠️ Unaudited |
| GovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x492e9fe1289d43f8bb6275237bf16c9248c74d44` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35400831044167e9e2de613d26515eee37e30a1b` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025c8831c6e45420df8e71f7b6b99f733d120faf` | ⚠️ Unaudited |
| HookTargetAccessControlKeyring | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a7ced396c7317f9465640a583b7f2564ca83d0a` | ⚠️ Unaudited |
| IRMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x061b6b0ba1b552006556c278fc8798d1e20f807a`; ethereum `0x57b1bb683b109eb0f1e6d9043067c86f0c6c52c1` | ⚠️ Unaudited |
| KeyringCore | unknown | project_anchor | own_supporting | 1 | avalanche | unit-388122 | 2 deployments: avalanche `0x3a5dd1fdf3bedc3a601d0e9bb37bb6cc3b635bc6`; avalanche `0xb0b5e2176e10b12d70e60e3a68738298a7dfe666` | ⚠️ Unaudited |
| OracleLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30e6dfb84782a31d561536f64f47231451f7b48a` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fdcb80a2894f0dc052c8d52d22544dc90274800` | ⚠️ Unaudited |
| PythOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa9880c197bb245d055ee864653eeecf8619de65` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x69cc425b1e5f302e7db4e5d125ab984ec5186364`; avalanche `0x9506a63e5f1c595f58ef1e1d9788eb5a47722ee8`; avalanche `0xb80d8138b3dc2037dea288a6f3bf5ec72b73ee87` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x719f8b330cca71cb6195d032a43194c7d3f9fb45` | ⚠️ Unaudited |
| SwapVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x786c900d7d348662703c38b46f24c1cda2c582ab` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a` | ⚠️ Unaudited |
| UtilsLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b6e0b25fef3131f5f461b000cc69d2611af2d95`; ethereum `0x7b89cc2b2607280113c09510353ea6a521e6e0fc`; ethereum `0xbef9b644b15ba33bc21324365f148b13abfcc071` | ⚠️ Unaudited |
| VaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7427e9ef64bbe73d40bbcf455d50d215e50f3177`; ethereum `0x83801c7bbeefa54b91f8a07e36d81515a0fc5b60`; ethereum `0xa18d79deb85c414989d7297f23e5391703ea66ab`; ethereum `0xb65c7ac387a45d7b4709166784bb431a58bc59eb`; ethereum `0xc3c45633e45041bf3be841f89d2cb51e2f657403` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (200)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fa0bb7e2e25c073714e6845178033c39a24d14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101f9ade673cc3133875f33f14136d0b7ddca1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119491d7b134d72179727a0b970953370a36b684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1273285e8a08018d1e65841aef0ef0a5254e7210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dee0466d1f28b5e00e0ed55103b36f274d13dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e2ed46f75346bc0ad531606cf1e8f758f7d2dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3249cfc9c393e621f3e81bb992ff428bd18e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b3cf9e770cae258768b15c467fbae79bcf02c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f5a7fba729052a8cbb8493f7cd04de0dbc66647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fcc55686a3fb8d0cfb8cf1a148de07915173de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x446b936c0f28c6871ceab38af943e6deb05a93cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48e228196164a91b5473f772cb4d66f478bbc362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49f3d7aa243cd9fdce24b06625871d71eddafb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56ef91e636a724ca0462174b17636d8b20334535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5d76bb3dda35aae2d6c455a07191946bbd485c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x663fa9e1908fa3d0b069f9a0a9a9a4a213c8ef00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6903710e1ffab715181c6c3f7c56b3afd1ba4c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f229d70096f63a1e71fec7a0aa9137160cc22f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ed5a115004136fccedfb3daf658353c266c57b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8667d8c54afab20297e921588e065e788a19f474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899cbf89b644e79f9042c4c96fc513d31063872b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8be2a86b4d7eb73e8167593e5cbdb4e6f07ffe42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x949fe019887fb101ed7ce3eefb14048c2abe6a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950c6bef80bbfd1ea2335d9e6cb5bc3a23361b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960ba5d88be8fff0ba7fd8a0d12a38efe596eeca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c12ab83f056510421d3dc4ad38a075e68a690e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae15d983aa0e74c79261a169742b9ec13ec0e552` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388116 | `0xb0b5e2176e10b12d70e60e3a68738298a7dfe666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1753681b4e671100b82d5b9036fc53a7c3f6b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a0458bbecc705ba4976a852686cc2a0bbb82ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb79742cb4e879de83db6ad07068babafb6aa6a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc70b710b3552d4043838eae101b64aa1f276cbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7e28b5e72ccb1a96b829efdee87397e6f19b123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc24355baa75c9f49185510d9487770d82191646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe737a44b9f5b3b4816cad0e20161ac5432e964c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb333262b68e29a48f769c32da8049765ec9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4f419d01e095284b401ae832978cf2742079e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15dbcffeffc674c74ee043790111fcb28b723283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd0f9fdf90a094071801f801605cb8295b2b499a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-388117 | `0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15dbcffeffc674c74ee043790111fcb28b723283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd0f9fdf90a094071801f801605cb8295b2b499a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-388118 | `0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15dbcffeffc674c74ee043790111fcb28b723283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd0f9fdf90a094071801f801605cb8295b2b499a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-388121 | `0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15dbcffeffc674c74ee043790111fcb28b723283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd0f9fdf90a094071801f801605cb8295b2b499a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388119 | `0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0004dbd59af6ee41fdda31cba1f996ea688f9109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00114e33749aa16a6980307b544cbd96c9d23bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0345d8a0be83834b4611d7d20b661d0bd2536928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x065d7b495d25436e492fe57116665894bfe17157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x068f7c1f56b3963beeb1ef4474bca4dfe83fdc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07bd12bbf17a0e81d8ab7c02ae7b2dc2d0cdbc2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x088af3ce37f42b6925c0c2daa4d58b90fd186010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x08bb803d19e5e2f006c87fee77c232dc481cb735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c13cf54c341a0f91939685dcb1c9b75c2a6f595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d1abccba91f074dea11adcc679c61326b6145ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d7938d9c31cd7dd693752074284af133c1142de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x104ba4d746cf71f23341a7c855271a5e7dd19f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10d86e698f222551b999d584c209cb0a890cb1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1114191ae690d594b1be45ebdbdd9ff49e6f7dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12ece321ee038bb1f744acfe6baa17d55fd8ec2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1521c9dca248cee906943096a5b13fc657a020c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18c142f276cfb1511e4c05d9e0ad5e5a1b131f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19747fb40074f8cc32fd24445face1fce11bd281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19fea28a8331484e83bfe914fffef911cc62cba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b8adac4b2ae29887861fec03437ef731baa28e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c0e8b841da677c685d2a8376773e8a872c1ce5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22fb2217b86aaae55ea1a20c227ea447d76d0113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2341a8fa725e398fd5e7eb9d976bcbe05e865167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23559ef969252b81d8da2b86a76d85fb602860ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x249576541da179f887a8494a49425823376ef68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24f2c9a52e89a91691793b40eb92109641a357cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2524762ddb853ab1e572b81e5e6377a8a1536aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2584ad2b8e10e9ef9921dabf87e0598a9ffe01f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2836825daec3d5d8fd3ad71d61f72345bb868110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x299f86bbb552f74be79a687c565ac52452c0a02d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29e9b639e165d919fecf02521f8a9da0492d4f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b3cf9e770cae258768b15c467fbae79bcf02c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e3b32730b4f6b6502bdaa9122df3b026ede5391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eea49660fe62bede91858d424b1b3d6ffae748a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x316fec65fb57aa38a66802941fe31444654213a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31960a84b67ede65fd12d838d0afc5c9f3baf409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31f34124a37f94efd17201a1b88d5008cd444c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32e94331e03f2531f09427548b7712809e671344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3433cdd28427bf5a640c5adda763feeba9e05368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34e21196d7a303ee06c25aef3b9ccd111c15c9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x367968dd7266a392b487fdccee14ee31d7101726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37e873e98480a4d18711eb326f5a8f1a31c43fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39e3ebbf341304c33f07c631dc777ba3e1fa0272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bac48a94642886fc02d216bbe49a9945b0ae435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4117a65ef95d9e1f26394f7b6ad40ca49998aa70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41a90e6e6d625759158047d9f2ebe39bd9fca77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4247432b4f9c32e99ecc2ff7badd98783eecfa6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x484898e5d3c65362bfbd9de252bf9d56a0c9087c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48d4b0fe40a2b9d1e965388495df9bb6dcd606c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x497ecf679d9b52bfba96824b03289aa3b073ceba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f4fdee3568ac31c46634fb2df3ff44a156be351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fef2f7146c0b4e6c0b1433badc6b7a2e1e7ecdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52f9c95548afdd506421e05da7cc89765ec3477f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53a37b5d8a30a49bcb463ef33d610d5e5040c64a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56e4db8495302c947054d28b1a0cce0f8d973ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x574b00f5a0c56d370f19fa887a5545d74f52fac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x582d01cdac21571ddd9e051cbb44f5394d1dc7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58a67437b99bcc2aa0559b64ffa9078adb6eff43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58b173bd3b829b4581b2b2556f0206cb8b57aa60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5946912dfa8a5212e7a502788e0645834616f215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59b75dd0fa572289315a29f003c23ae462c947ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e70cec5a92103e8eb087dda1f1caafae8775032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x607eb657d66f991044417c447e75f58f8a7b79c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63cf6e21ae5cb92246a3d4625fa2aec9401d7dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64df5a2dd160c2eb534aec756538b48faabbd39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6502f07ce3b6a84acde7605c0a35bf81f70cbb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66f9e7c1a356aed33551a31a7f58d222ac4c87a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6999b31d06594e0d1dd8f033d13314d652293738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e1c286e888ab5911ca37aced81365d57ec29a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e5fff9f48114ad1ab099b57a4d4bb794dcca688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x710b0773e14fe62676bb544800ec1611869d547e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71e4cdfd7a40db8f2af0443a01407521a88e63cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73e475d896cbda07d1eeece23943cf355be6159a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x743144eec2924967b437b6e8f8c203a1785d0802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x754332305fa3d4d9e8f3b20727bc839f54dbf949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7578c257e5e080c0c0bf1fadf187de8665d017e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x768b74a19115316c1a782ffa335fdfbb66278174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77ab5af7ca872412df719cb87c8faa7831ee2226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78678fa9c997f697318c023f1782d5ce297b7623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x789d447cf07a703a1a1326b6b4ca84693d29a4dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a2a57a0ed6807c7dbf846cc74aa04ee9dfa7f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cbca6cb082b1e4afbe60738e26ec8507ab17410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e5893f9ad9865261299e543fd3fac814cc11804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80528f014e84658e85d3c6d4896a29fa933be696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8485bb6c0e15b29bbb5a2e43e88c998c2d75807a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8564160f30926ea1229dccf24118c6de155d2e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85779a0d434ced9e41f289b5a4fae5076c021ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89d513e3997b8993d9edf1466b3b2c02db63b036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a1d3a4850ed7deec9003680cf41b8e75d27e440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d990f217879e3c49894024f5d72431da3ef656c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x927aa71b4bdbea5472ee1bb8fd5227d5ebdb971c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93fa091399146473b562d4e4e3c7df9ccbf32b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94af7809067e0bd06670dd15f90a4199be992650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9507fe5c4243f5ebd8a7537fe9272ca48310eaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95f21cd90057bbdc6fac3f9b94d06b53c24b278c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a05b935c2abed87b4d89c3e74da253ffc49a2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c38f923bac407c818312eadef69adc116fd16fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c6dd19153ec90752a968b894e60729bc098653c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ceed3a7f753608372eeab300486cc7c2f38ac68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa155b74e5a2b40b1a6df7fdb45541942dfab9c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3ddf18ea819691a032eb6045528f2d5422b5967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa60fac3972dfca441ee30514145826a6f421a519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaec2beb8133a85f98139a85bd190a063563eb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab61aefc3ef93490317310f2274125134765ebbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacefcf4dce38b98d486c0141046e3e40c99ef71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf4b4c18b17f6a2b32f6c398a3910bdcd7f26181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf5659428fef1f6a701fab46d8f3af8371a9913d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1f64129ba3115dacaf294b07bcbf13cffbbf1af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb671675aaa5d87639072d6a2682480d445ebc3ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8077b9908acb86460d7a704ecfd259d76366cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbb438bf81ba7d5470561e7b701e87e6d1dfa358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbd929f6c61b59248ed660213c0129a119d54306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0692e741236ad79f66cc09bf68527e151bea38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2675790c775d385425d72652ded5f299fbb2868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc41da37f17403e02b19010396943dc7de54c1431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4987e5eab0eaa0a795bc86a06f1fd16278fba75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5ffce5f0e6646d93f7e79bd71d268dfc1b7efd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc820c24905c210aefe21dae40723ec28d62c1544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc968779bbfd25dc6a39d55b68b80d71cd7a69f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9eec20f149345f1bf07ce61ea16308c28b14bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc9f9209291fc1f0d6e859966b7ffb984a5e67709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca14d397219808f39724607e6401bd8c46cbf65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcad498936e09f38f18ed8375aecd1d46689e7086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc5f7593a4d5974f84a30b28bd3fdb374319a254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd80e68b39e4408cb7d6c8e3343bde46587013f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddf01eefd6d0fe2d2b9b8eb0ba4b596e4e3c350f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf5d946c79131a229f8940713ffaf5789baf6c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3b5352663438345102b97781ae5181c442dbbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe41338ccac8121fb472817c58c485776e77f3eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe58989e0e3f20f2e56fd407c6e28fe63675fddb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5a94ae6178cfd65856b19a4eb8dd61d85c63e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7d5aa4215fc4d0b3ad8794ad526d6cf240fe441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec375fc7498d0a882ab7d3f6ebbcfd24da0f1c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xece15af37c8c5abd931d63f31cf696f8942a77e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee2cac5df4984f56395b48e71b1d1e84acfbcd9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee3122aec14ec69bdd1170ed91af705082809d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeeac8790bc6fea0e2a753dc92574a1e3824f89b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeec95f1dae3f52eb82294fbc9aabc7fad95e4339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef222875ac867ab46bf1906e461058a76b176d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef3dcfecb05c17188db3d21869a4586af5d3b054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf195bfc5d6016b8a3b04cddd4971759cd42ce2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1a5f97ab84158cf6d8ba8def68780fc2fd64310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3c3e71be0cafd4518d5594f355281e2109d3ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4e5897f8fc9fac2ffb876fe7ca8050b7e594af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf9f2df8a5cc71a0424dfa9ebdfdff8a082c19184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfda61dbbd2d17140cb492a4fc9cb9a0052c6cbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe61292fe3ce6e75a3cf6deb505c38b634ba8667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff37ce83731b6af68898758573ac43f27cab1df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x15dbcffeffc674c74ee043790111fcb28b723283` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-388120 | `0x899cbf89b644e79f9042c4c96fc513d31063872b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 183
- Live contracts: 1
- Unknown liveness contracts: 182
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=183

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0fa0bb7e2e25c073714e6845178033c39a24d14f` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x119491d7b134d72179727a0b970953370a36b684` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x1273285e8a08018d1e65841aef0ef0a5254e7210` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x1dee0466d1f28b5e00e0ed55103b36f274d13dd3` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x1e2ed46f75346bc0ad531606cf1e8f758f7d2dbe` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x2b3cf9e770cae258768b15c467fbae79bcf02c8c` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x2f5a7fba729052a8cbb8493f7cd04de0dbc66647` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x2fcc55686a3fb8d0cfb8cf1a148de07915173de2` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x446b936c0f28c6871ceab38af943e6deb05a93cd` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x48e228196164a91b5473f772cb4d66f478bbc362` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x49f3d7aa243cd9fdce24b06625871d71eddafb3b` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x56ef91e636a724ca0462174b17636d8b20334535` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x5f5d76bb3dda35aae2d6c455a07191946bbd485c` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x663fa9e1908fa3d0b069f9a0a9a9a4a213c8ef00` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x6903710e1ffab715181c6c3f7c56b3afd1ba4c78` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x6f229d70096f63a1e71fec7a0aa9137160cc22f3` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x84ed5a115004136fccedfb3daf658353c266c57b` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x8667d8c54afab20297e921588e065e788a19f474` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x899cbf89b644e79f9042c4c96fc513d31063872b` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x8be2a86b4d7eb73e8167593e5cbdb4e6f07ffe42` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x949fe019887fb101ed7ce3eefb14048c2abe6a48` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x960ba5d88be8fff0ba7fd8a0d12a38efe596eeca` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xae15d983aa0e74c79261a169742b9ec13ec0e552` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xb1753681b4e671100b82d5b9036fc53a7c3f6b9e` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xb4a0458bbecc705ba4976a852686cc2a0bbb82ac` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xbb79742cb4e879de83db6ad07068babafb6aa6a6` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xc70b710b3552d4043838eae101b64aa1f276cbf3` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xc7e28b5e72ccb1a96b829efdee87397e6f19b123` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xcc24355baa75c9f49185510d9487770d82191646` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xe737a44b9f5b3b4816cad0e20161ac5432e964c0` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xfe4f419d01e095284b401ae832978cf2742079e7` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x15dbcffeffc674c74ee043790111fcb28b723283` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xbd0f9fdf90a094071801f801605cb8295b2b499a` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x15dbcffeffc674c74ee043790111fcb28b723283` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xbd0f9fdf90a094071801f801605cb8295b2b499a` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x15dbcffeffc674c74ee043790111fcb28b723283` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xbd0f9fdf90a094071801f801605cb8295b2b499a` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x15dbcffeffc674c74ee043790111fcb28b723283` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xbd0f9fdf90a094071801f801605cb8295b2b499a` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x0004dbd59af6ee41fdda31cba1f996ea688f9109` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x00114e33749aa16a6980307b544cbd96c9d23bba` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x0345d8a0be83834b4611d7d20b661d0bd2536928` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x068f7c1f56b3963beeb1ef4474bca4dfe83fdc37` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x07bd12bbf17a0e81d8ab7c02ae7b2dc2d0cdbc2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x088af3ce37f42b6925c0c2daa4d58b90fd186010` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x08bb803d19e5e2f006c87fee77c232dc481cb735` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x0c13cf54c341a0f91939685dcb1c9b75c2a6f595` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x0d1abccba91f074dea11adcc679c61326b6145ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x0d7938d9c31cd7dd693752074284af133c1142de` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x104ba4d746cf71f23341a7c855271a5e7dd19f58` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x10d86e698f222551b999d584c209cb0a890cb1d4` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x1114191ae690d594b1be45ebdbdd9ff49e6f7dbd` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x12ece321ee038bb1f744acfe6baa17d55fd8ec2d` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x1521c9dca248cee906943096a5b13fc657a020c3` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x18c142f276cfb1511e4c05d9e0ad5e5a1b131f31` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x19747fb40074f8cc32fd24445face1fce11bd281` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x19fea28a8331484e83bfe914fffef911cc62cba5` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x1b8adac4b2ae29887861fec03437ef731baa28e5` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x1c0e8b841da677c685d2a8376773e8a872c1ce5c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x22fb2217b86aaae55ea1a20c227ea447d76d0113` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x2341a8fa725e398fd5e7eb9d976bcbe05e865167` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x23559ef969252b81d8da2b86a76d85fb602860ad` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x249576541da179f887a8494a49425823376ef68c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x24f2c9a52e89a91691793b40eb92109641a357cc` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x2524762ddb853ab1e572b81e5e6377a8a1536aa5` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x2584ad2b8e10e9ef9921dabf87e0598a9ffe01f2` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x2836825daec3d5d8fd3ad71d61f72345bb868110` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x299f86bbb552f74be79a687c565ac52452c0a02d` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x29e9b639e165d919fecf02521f8a9da0492d4f21` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x2b3cf9e770cae258768b15c467fbae79bcf02c8c` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x2e3b32730b4f6b6502bdaa9122df3b026ede5391` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x2eea49660fe62bede91858d424b1b3d6ffae748a` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x316fec65fb57aa38a66802941fe31444654213a3` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x31960a84b67ede65fd12d838d0afc5c9f3baf409` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x31f34124a37f94efd17201a1b88d5008cd444c72` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x32e94331e03f2531f09427548b7712809e671344` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x3433cdd28427bf5a640c5adda763feeba9e05368` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x34e21196d7a303ee06c25aef3b9ccd111c15c9ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x367968dd7266a392b487fdccee14ee31d7101726` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x37e873e98480a4d18711eb326f5a8f1a31c43fe6` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x39e3ebbf341304c33f07c631dc777ba3e1fa0272` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x3bac48a94642886fc02d216bbe49a9945b0ae435` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x4117a65ef95d9e1f26394f7b6ad40ca49998aa70` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x41a90e6e6d625759158047d9f2ebe39bd9fca77c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x4247432b4f9c32e99ecc2ff7badd98783eecfa6f` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x484898e5d3c65362bfbd9de252bf9d56a0c9087c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x48d4b0fe40a2b9d1e965388495df9bb6dcd606c5` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x497ecf679d9b52bfba96824b03289aa3b073ceba` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x4f4fdee3568ac31c46634fb2df3ff44a156be351` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x4fef2f7146c0b4e6c0b1433badc6b7a2e1e7ecdb` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x52f9c95548afdd506421e05da7cc89765ec3477f` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x53a37b5d8a30a49bcb463ef33d610d5e5040c64a` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x56e4db8495302c947054d28b1a0cce0f8d973ea8` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x574b00f5a0c56d370f19fa887a5545d74f52fac2` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x582d01cdac21571ddd9e051cbb44f5394d1dc7a7` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x58a67437b99bcc2aa0559b64ffa9078adb6eff43` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x58b173bd3b829b4581b2b2556f0206cb8b57aa60` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x5946912dfa8a5212e7a502788e0645834616f215` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x59b75dd0fa572289315a29f003c23ae462c947ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x5e70cec5a92103e8eb087dda1f1caafae8775032` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x607eb657d66f991044417c447e75f58f8a7b79c7` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x63cf6e21ae5cb92246a3d4625fa2aec9401d7dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x64df5a2dd160c2eb534aec756538b48faabbd39a` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x6502f07ce3b6a84acde7605c0a35bf81f70cbb43` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x66f9e7c1a356aed33551a31a7f58d222ac4c87a9` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x6999b31d06594e0d1dd8f033d13314d652293738` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x6e1c286e888ab5911ca37aced81365d57ec29a06` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x6e5fff9f48114ad1ab099b57a4d4bb794dcca688` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x710b0773e14fe62676bb544800ec1611869d547e` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x71e4cdfd7a40db8f2af0443a01407521a88e63cd` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x73e475d896cbda07d1eeece23943cf355be6159a` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x754332305fa3d4d9e8f3b20727bc839f54dbf949` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x7578c257e5e080c0c0bf1fadf187de8665d017e1` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x77ab5af7ca872412df719cb87c8faa7831ee2226` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x78678fa9c997f697318c023f1782d5ce297b7623` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x789d447cf07a703a1a1326b6b4ca84693d29a4dd` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x7a2a57a0ed6807c7dbf846cc74aa04ee9dfa7f57` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x7cbca6cb082b1e4afbe60738e26ec8507ab17410` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x7e5893f9ad9865261299e543fd3fac814cc11804` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x8485bb6c0e15b29bbb5a2e43e88c998c2d75807a` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x8564160f30926ea1229dccf24118c6de155d2e30` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x85779a0d434ced9e41f289b5a4fae5076c021ae9` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0x89d513e3997b8993d9edf1466b3b2c02db63b036` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x8a1d3a4850ed7deec9003680cf41b8e75d27e440` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x8d990f217879e3c49894024f5d72431da3ef656c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x927aa71b4bdbea5472ee1bb8fd5227d5ebdb971c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x93fa091399146473b562d4e4e3c7df9ccbf32b9c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x94af7809067e0bd06670dd15f90a4199be992650` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x9507fe5c4243f5ebd8a7537fe9272ca48310eaf5` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x95f21cd90057bbdc6fac3f9b94d06b53c24b278c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x9a05b935c2abed87b4d89c3e74da253ffc49a2c1` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x9c38f923bac407c818312eadef69adc116fd16fd` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x9c6dd19153ec90752a968b894e60729bc098653c` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x9ceed3a7f753608372eeab300486cc7c2f38ac68` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xa155b74e5a2b40b1a6df7fdb45541942dfab9c61` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xa3ddf18ea819691a032eb6045528f2d5422b5967` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xa60fac3972dfca441ee30514145826a6f421a519` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xaaec2beb8133a85f98139a85bd190a063563eb9d` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xab61aefc3ef93490317310f2274125134765ebbf` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xacefcf4dce38b98d486c0141046e3e40c99ef71e` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xaf5659428fef1f6a701fab46d8f3af8371a9913d` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xb0b5e2176e10b12d70e60e3a68738298a7dfe666` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xb1f64129ba3115dacaf294b07bcbf13cffbbf1af` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xb671675aaa5d87639072d6a2682480d445ebc3ab` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xb8077b9908acb86460d7a704ecfd259d76366cfe` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xbbb438bf81ba7d5470561e7b701e87e6d1dfa358` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xbbd929f6c61b59248ed660213c0129a119d54306` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc0692e741236ad79f66cc09bf68527e151bea38b` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc2675790c775d385425d72652ded5f299fbb2868` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc41da37f17403e02b19010396943dc7de54c1431` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc4987e5eab0eaa0a795bc86a06f1fd16278fba75` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc5ffce5f0e6646d93f7e79bd71d268dfc1b7efd7` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc820c24905c210aefe21dae40723ec28d62c1544` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc9eec20f149345f1bf07ce61ea16308c28b14bee` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xc9f9209291fc1f0d6e859966b7ffb984a5e67709` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xca14d397219808f39724607e6401bd8c46cbf65f` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xcad498936e09f38f18ed8375aecd1d46689e7086` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xcc5f7593a4d5974f84a30b28bd3fdb374319a254` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xd80e68b39e4408cb7d6c8e3343bde46587013f62` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xddf01eefd6d0fe2d2b9b8eb0ba4b596e4e3c350f` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xdf5d946c79131a229f8940713ffaf5789baf6c33` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xe3b5352663438345102b97781ae5181c442dbbbb` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xe41338ccac8121fb472817c58c485776e77f3eea` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xe58989e0e3f20f2e56fd407c6e28fe63675fddb8` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xe5a94ae6178cfd65856b19a4eb8dd61d85c63e11` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xe7d5aa4215fc4d0b3ad8794ad526d6cf240fe441` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xec375fc7498d0a882ab7d3f6ebbcfd24da0f1c6a` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xece15af37c8c5abd931d63f31cf696f8942a77e4` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xee2cac5df4984f56395b48e71b1d1e84acfbcd9e` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xee3122aec14ec69bdd1170ed91af705082809d9b` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xeeac8790bc6fea0e2a753dc92574a1e3824f89b5` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xeec95f1dae3f52eb82294fbc9aabc7fad95e4339` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xef3dcfecb05c17188db3d21869a4586af5d3b054` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xf195bfc5d6016b8a3b04cddd4971759cd42ce2ea` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xf1a5f97ab84158cf6d8ba8def68780fc2fd64310` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xf3c3e71be0cafd4518d5594f355281e2109d3ee2` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xf4e5897f8fc9fac2ffb876fe7ca8050b7e594af7` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xf9f2df8a5cc71a0424dfa9ebdfdff8a082c19184` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xfda61dbbd2d17140cb492a4fc9cb9a0052c6cbeb` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xfe61292fe3ce6e75a3cf6deb505c38b634ba8667` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0xff37ce83731b6af68898758573ac43f27cab1df1` | non_address_book | unknown | unknown | unverified | n/a | `0xf733e25ddca08630723fce8b2bb81bbe732d2f79` |
| unverified unclassified | UnnamedContract<br>`0x15dbcffeffc674c74ee043790111fcb28b723283` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |
| unverified unclassified | UnnamedContract<br>`0xf26b0f10691ed160734a3a5caf8ca1fcb57efc9d` | non_address_book | unknown | unknown | unverified | n/a | `0x0b50beae6aac0425e31d5a29080f2a7dec22754a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x3a5dd1fdf3bedc3a601d0e9bb37bb6cc3b635bc6` | KeyringCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 200 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
