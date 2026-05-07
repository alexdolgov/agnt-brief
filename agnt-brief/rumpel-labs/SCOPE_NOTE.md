# Agentic Brief: Rumpel Labs

## Project Overview

- **Project:** Rumpel Labs (rumpel-labs)
- **Website:** rumpel.xyz
- **Category:** Synthetics
- **Chains (topography):** 1
- **Chains (DeFiLlama):** 1
- **TVL:** $2,170,307 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 2 audits; most recent 2026-05-03 (2 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

Rumpel Labs has 157 deployed contract rows in current topography. This brief renders the 143 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-720c81c2; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 143 contracts across 1 chains. 1 have TP audit coverage (0.7%); 142 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### ethereum (chain_id 1)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| AnchorageTokenUSDtb | token | token | likely in scope | [0x9d6d77...9589](https://etherscan.io/address/0x9d6d77a21702b9afcf924983fbfb84aaaae79589) |
| BeaconProxy | proxy | proxy | unmatched | [0x2dabce...adac](https://etherscan.io/address/0x2dabcea55a12d73191aece59f508b191fb68adac) |
| BeaconProxy | proxy | proxy | unmatched | [0x9f12d2...9899](https://etherscan.io/address/0x9f12d29c7cc72bb3d237e2d042a6d890421f9899) |
| BeaconProxy | proxy | proxy | unmatched | [0xbe3ca3...ff4e](https://etherscan.io/address/0xbe3ca34d0e877a1fc889bd5231d65477779aff4e) |
| BoringVault | vault_pool | vault_pool | likely in scope | [0x917cee...9d88](https://etherscan.io/address/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88) |
| DefaultCollateral | core | core | unmatched | [0x03bf48...a5ac](https://etherscan.io/address/0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac) |
| DefaultCollateral | core | core | unmatched | [0x0c969c...032c](https://etherscan.io/address/0x0c969cec0729487d264716e55f232b404299032c) |
| DefaultCollateral | core | core | unmatched | [0x21dbba...2c7c](https://etherscan.io/address/0x21dbba985eea6ba7f27534a72ccb292eba1d2c7c) |
| DefaultCollateral | core | core | unmatched | [0x38b860...b654](https://etherscan.io/address/0x38b86004842d3fa4596f0b7a0b53de90745ab654) |
| DefaultCollateral | core | core | unmatched | [0x52cb8a...ab2a](https://etherscan.io/address/0x52cb8a621610cc3ccf498a1981a8ae7ad6b8ab2a) |
| DefaultCollateral | core | core | unmatched | [0x9c0823...f448](https://etherscan.io/address/0x9c0823d3a1172f9ddf672d438dec79c39a64f448) |
| DefaultCollateral | core | core | unmatched | [0xb09a50...ad1c](https://etherscan.io/address/0xb09a50acfff7d12b7d18adef3d1027bc149bad1c) |
| DefaultCollateral | core | core | unmatched | [0xe39b5f...cc84](https://etherscan.io/address/0xe39b5f5638a209c1a6b6cdffe5d37f7ac99fcc84) |
| ERC1967Proxy | proxy | proxy | likely in scope | [0xe47f9d...ba61](https://etherscan.io/address/0xe47f9dbbfe98d6930562017ee212c1a1ae45ba61) |
| EthenaLPStaking | staking | staking | unmatched | [0x8707f2...c512](https://etherscan.io/address/0x8707f238936c12c309bfc2b9959c35828acfc512) |
| FluidDexReservesResolver | vault_pool | vault_pool | unmatched | [0xc93876...a27c](https://etherscan.io/address/0xc93876c0eed99645dd53937b25433e311881a27c) |
| FluidDexResolver | registry | registry | unmatched | [0x71783f...9a3d](https://etherscan.io/address/0x71783f64719899319b56bda4f27e1219d9af9a3d) |
| FluidDexT1 | core | core | unmatched | [0x1dd125...fa9b](https://etherscan.io/address/0x1dd125c32e4b5086c63cc13b3ca02c4a2a61fa9b) |
| FluidDexT1 | core | core | unmatched | [0x862fc0...b06d](https://etherscan.io/address/0x862fc0a67623a4e6f0776103340836c91728b06d) |
| FluidDexT1 | core | core | unmatched | [0xb09602...a364](https://etherscan.io/address/0xb0960263e39c70c9b6e9ea2a382b18095264a364) |
| FluidDexT1 | core | core | unmatched | [0xdd5f2a...6be3](https://etherscan.io/address/0xdd5f2afab5ae5484339f9ad40fb4d51fc5c96be3) |
| FluidDexT1 | core | core | unmatched | [0xde632c...ee45](https://etherscan.io/address/0xde632c3a214d5f14c1d8ddf0b92f8bcd188fee45) |
| FluidDexT1 | core | core | unmatched | [0xf063bd...5d4a](https://etherscan.io/address/0xf063bd202e45d6b2843102cb4ece339026645d4a) |
| FluidVaultPositionsResolver | vault_pool | vault_pool | likely in scope | [0x3e3dae...801c](https://etherscan.io/address/0x3e3dae4f30347782089d398d462546eb5276801c) |
| FluidVaultT1 | vault_pool | vault_pool | likely in scope | [0x1c6068...4278](https://etherscan.io/address/0x1c6068ec051f0ac1688ca1fe76810fa9c8644278) |
| FluidVaultT1 | vault_pool | vault_pool | likely in scope | [0x2f3780...dffa](https://etherscan.io/address/0x2f3780e21caba1bedfb24e37c97917def304dffa) |
| FluidVaultT1 | vault_pool | vault_pool | likely in scope | [0x399646...44dd](https://etherscan.io/address/0x3996464c0fcca8183e13ea5e5e74375e2c8744dd) |
| FluidVaultT1 | vault_pool | vault_pool | likely in scope | [0xbc3452...8da5](https://etherscan.io/address/0xbc345229c1b52e4c30530c614bb487323ba38da5) |
| FluidVaultT1 | vault_pool | vault_pool | likely in scope | [0xeaef56...028d](https://etherscan.io/address/0xeaef563015634a9d0ee6cf1357a3b205c35e028d) |
| FluidVaultT2 | vault_pool | vault_pool | likely in scope | [0x4095a3...d856](https://etherscan.io/address/0x4095a3a8efe779d283102377669778900212d856) |
| FluidVaultT2 | vault_pool | vault_pool | likely in scope | [0x43d1ca...428d](https://etherscan.io/address/0x43d1ca906c72f09d96291b4913d7255e241f428d) |
| FluidVaultT2 | vault_pool | vault_pool | likely in scope | [0x5668c5...deea](https://etherscan.io/address/0x5668c53c6188ba0a311e28b54d7822771d9bdeea) |
| FluidVaultT2 | vault_pool | vault_pool | likely in scope | [0x71a3bd...2e44](https://etherscan.io/address/0x71a3bd2b2214e51e33144590948aa88beaff2e44) |
| FluidVaultT2 | vault_pool | vault_pool | likely in scope | [0x7503b5...a6d0](https://etherscan.io/address/0x7503b58bb29937e7e2980f70d3fd021b7ebea6d0) |
| FluidVaultT2 | vault_pool | vault_pool | likely in scope | [0x989a44...f881](https://etherscan.io/address/0x989a44cb4dbb7ebe20e0abf3c1e1d727bf90f881) |
| FluidVaultT3 | vault_pool | vault_pool | likely in scope | [0xe210d8...0034](https://etherscan.io/address/0xe210d8ded13abe836a10e8aa956dd424658d0034) |
| FluidVaultT4 | vault_pool | vault_pool | likely in scope | [0x0a90ed...5543](https://etherscan.io/address/0x0a90ed6964f6ba56902fd35ee11857a810dd5543) |
| FluidVaultT4 | vault_pool | vault_pool | likely in scope | [0x4b5fa1...53cb](https://etherscan.io/address/0x4b5fa15996c2e23b35e64f0ca62d30c4945e53cb) |
| FluidVaultT4 | vault_pool | vault_pool | likely in scope | [0x91d588...a39a](https://etherscan.io/address/0x91d5884a57e4a3718654b462b32cc628b2c6a39a) |
| FluidVaultT4 | vault_pool | vault_pool | likely in scope | [0xaeac94...2ca1](https://etherscan.io/address/0xaeac94d417bf8d8bb3a44507100ab8c0d3b12ca1) |
| FluidVaultT4 | vault_pool | vault_pool | likely in scope | [0xb170b9...3a21](https://etherscan.io/address/0xb170b94befe21098966aa9905da6a2f569463a21) |
| GhoToken | token | token | likely in scope | [0x40d16f...6c2f](https://etherscan.io/address/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f) |
| MantaMintableERC20 | token | token | unmatched | [0x95cef1...44e5](https://etherscan.io/address/0x95cef13441be50d20ca4558cc0a27b601ac544e5) |
| MigratableEntityProxy | proxy | proxy | unmatched | [0x65b560...9d63](https://etherscan.io/address/0x65b560d887c010c4993c8f8b36e595c171d69d63) |
| MigratableEntityProxy | proxy | proxy | unmatched | [0xb8fd82...056c](https://etherscan.io/address/0xb8fd82169a574eb97251bf43e443310d33ff056c) |
| MigratableEntityProxy | proxy | proxy | unmatched | [0xc10a7f...a1da](https://etherscan.io/address/0xc10a7f0ac6e3944f4860ee97a937c51572e3a1da) |
| Morpho | core | core | unmatched | [0xbbbbbb...ffcb](https://etherscan.io/address/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb) |
| OsToken | token | token | excluded (external) | [0xf1c9ac...0e38](https://etherscan.io/address/0xf1c9acdc66974dfb6decb12aa385b9cd01190e38) |
| PendleMarketV3 | vault_pool | vault_pool | unmatched | [0x09fa04...4fb9](https://etherscan.io/address/0x09fa04aac9c6d1c6131352ee950cd67ecc6d4fb9) |
| PendleYieldToken | strategy | strategy | unmatched | [0x029d62...1840](https://etherscan.io/address/0x029d6247adb0a57138c62e3019c92d3dfc9c1840) |
| PendleYieldToken | strategy | strategy | unmatched | [0x0310a8...cbcb](https://etherscan.io/address/0x0310a860cf7efe8f54ab9b4de49cd071c37fcbcb) |
| PendleYieldToken | strategy | strategy | unmatched | [0x03722c...3987](https://etherscan.io/address/0x03722ce19e9f5828969d39474a8efc35c4ea3987) |
| PendleYieldToken | strategy | strategy | unmatched | [0x079f21...2e32](https://etherscan.io/address/0x079f21309eb9cbd2a387972eb2168d57c8542e32) |
| PendleYieldToken | strategy | strategy | unmatched | [0x08aefe...d2b0](https://etherscan.io/address/0x08aefe9dfe7818caaedd94e38e910d2155b7d2b0) |
| PendleYieldToken | strategy | strategy | unmatched | [0x11ccff...4aba](https://etherscan.io/address/0x11ccff2f748a0100dbd457ff7170a54e12064aba) |
| PendleYieldToken | strategy | strategy | unmatched | [0x1de6ff...abbe](https://etherscan.io/address/0x1de6ff19fda7496ddc12f2161f6ad6427c52abbe) |
| PendleYieldToken | strategy | strategy | unmatched | [0x1e24b0...bf6f](https://etherscan.io/address/0x1e24b022329f3ca0083b12faf75d19639faebf6f) |
| PendleYieldToken | strategy | strategy | unmatched | [0x27f6f2...77f7](https://etherscan.io/address/0x27f6f2f5e87a383471c79296c64e4e82269877f7) |
| PendleYieldToken | strategy | strategy | unmatched | [0x3568f1...3978](https://etherscan.io/address/0x3568f1d2e8058f6d99daa17051cb4a2930c83978) |
| PendleYieldToken | strategy | strategy | unmatched | [0x48bbbe...65da](https://etherscan.io/address/0x48bbbedc4d2491cc08915d7a5c7cc8a8edf165da) |
| PendleYieldToken | strategy | strategy | unmatched | [0x4a8036...c9ee](https://etherscan.io/address/0x4a8036efa1307f1ca82d932c0895faa18db0c9ee) |
| PendleYieldToken | strategy | strategy | unmatched | [0x5d8b3c...b3ed](https://etherscan.io/address/0x5d8b3cd632c58d5ce75c2141c1c8b3b0c209b3ed) |
| PendleYieldToken | strategy | strategy | unmatched | [0x5db8a2...f988](https://etherscan.io/address/0x5db8a2391a72f1114bbae30efc9cd89f4a29f988) |
| PendleYieldToken | strategy | strategy | unmatched | [0x708dd9...b868](https://etherscan.io/address/0x708dd9b344ddc7842f44c7b90492cf0e1e3eb868) |
| PendleYieldToken | strategy | strategy | unmatched | [0x719b51...1d7a](https://etherscan.io/address/0x719b51dd92b7809a80a2e8c91d89367bf58f1d7a) |
| PendleYieldToken | strategy | strategy | unmatched | [0x733ee9...2464](https://etherscan.io/address/0x733ee9ba88f16023146ebc965b7a1da18a322464) |
| PendleYieldToken | strategy | strategy | unmatched | [0x77de4b...cc39](https://etherscan.io/address/0x77de4be22ecc633416d79371ef8e861fb1d2cc39) |
| PendleYieldToken | strategy | strategy | unmatched | [0x7b64b9...6ce1](https://etherscan.io/address/0x7b64b99a1fd80b6c012e354a14adb352b5916ce1) |
| PendleYieldToken | strategy | strategy | unmatched | [0x89e7f4...9971](https://etherscan.io/address/0x89e7f4e5210a77ac0f20511389df71ec98ce9971) |
| PendleYieldToken | strategy | strategy | unmatched | [0x946934...6264](https://etherscan.io/address/0x946934554a2bf59039661f971986f0223e906264) |
| PendleYieldToken | strategy | strategy | unmatched | [0x965122...2b9f](https://etherscan.io/address/0x96512230bf0fa4e20cf02c3e8a7d983132cd2b9f) |
| PendleYieldToken | strategy | strategy | unmatched | [0xaac7db...ea02](https://etherscan.io/address/0xaac7db6c2bc926ade954d69a2d705f059043ea02) |
| PendleYieldToken | strategy | strategy | unmatched | [0xb7e51d...272b](https://etherscan.io/address/0xb7e51d15161c49c823f3951d579ded61cd27272b) |
| PendleYieldToken | strategy | strategy | unmatched | [0xbe0553...7427](https://etherscan.io/address/0xbe05538f48d76504953c5d1068898c6642937427) |
| PendleYieldToken | strategy | strategy | unmatched | [0xe8ef80...1712](https://etherscan.io/address/0xe8ef806c8aadc541408dcad36107c7d26a391712) |
| PendleYieldToken | strategy | strategy | unmatched | [0xeb993b...368e](https://etherscan.io/address/0xeb993b610b68f2631f70ca1cf4fe651db81f368e) |
| PointTokenVault | vault_pool | vault_pool | audited (TP) | [0x767e37...87e3](https://etherscan.io/address/0x767e37564c3dcb9c2b84be4003bbcf6f24eb87e3) |
| RumpelWalletFactory | factory | factory | unmatched | [0x5774ab...2937](https://etherscan.io/address/0x5774abcf415f34592514698eb075051e97db2937) |
| TokenProxy | proxy | proxy | unmatched | [0x57b946...d26c](https://etherscan.io/address/0x57b946008913b82e4df85f501cbaed910e58d26c) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x08f39b...2547](https://etherscan.io/address/0x08f39b3d75712148dacdb2669c3eacc7f1152547) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x1202f5...5055](https://etherscan.io/address/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x241835...b696](https://etherscan.io/address/0x24183535a24cf0272841b05047a26e200ffab696) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x375a8e...eba0](https://etherscan.io/address/0x375a8ee22280076610ca2b4348d37cb1beebeba0) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x3a828c...b4c7](https://etherscan.io/address/0x3a828c183b3f382d030136c824844ea30145b4c7) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x49446a...6bc0](https://etherscan.io/address/0x49446a0874197839d15395b908328a74ccc96bc0) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4956b5...8f96](https://etherscan.io/address/0x4956b52ae2ff65d74ca2d61207523288e4528f96) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x49cd58...32a9](https://etherscan.io/address/0x49cd586dd9ba227be9654c735a659a1db08232a9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x4f3cc6...c961](https://etherscan.io/address/0x4f3cc6359364004b245ad5be36e6ad4e805dc961) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x5e362e...430b](https://etherscan.io/address/0x5e362eb2c0706bd1d134689ec75176018385430b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x5fd133...67cd](https://etherscan.io/address/0x5fd13359ba15a84b76f7f87568309040176167cd) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x64047d...877f](https://etherscan.io/address/0x64047dd3288276d70a4f8b5df54668c8403f877f) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x66a1e3...e110](https://etherscan.io/address/0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x6c8984...aab4](https://etherscan.io/address/0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x7a4eff...7e3a](https://etherscan.io/address/0x7a4effd87c2f3c55ca251080b1343b605f327e3a) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x7b31f0...5249](https://etherscan.io/address/0x7b31f008c48efb65da78ea0f255ee424af855249) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x7f43fd...e444](https://etherscan.io/address/0x7f43fde12a40de708d908fb3b9bfb8540d9ce444) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x82dc32...163b](https://etherscan.io/address/0x82dc3260f599f4fc4307209a1122b6eaa007163b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x82f510...0b26](https://etherscan.io/address/0x82f5104b23ff2fa54c2345f821dac9369e9e0b26) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x84631c...f93a](https://etherscan.io/address/0x84631c0d0081fde56deb72f6de77abbbf6a9f93a) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8be346...b3b9](https://etherscan.io/address/0x8be3460a480c80728a8c4d7a5d5303c85ba7b3b9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x8c9532...9811](https://etherscan.io/address/0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xb908c9...c72d](https://etherscan.io/address/0xb908c9fe885369643adb5fba4407d52bd726c72d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xbeef69...6abc](https://etherscan.io/address/0xbeef69ac7870777598a04b2bd4771c71212e6abc) |
| TransparentUpgradeableProxy | proxy | proxy | likely in scope | [0xc13919...ac1c](https://etherscan.io/address/0xc139190f447e929f090edeb554d95abb8b18ac1c) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xc65433...7bd8](https://etherscan.io/address/0xc65433845ecd16688eda196497fa9130d6c47bd8) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xcc36e5...ebad](https://etherscan.io/address/0xcc36e5272c422bee9a8144cd2493ac472082ebad) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xd6e09a...931b](https://etherscan.io/address/0xd6e09a5e6d719d1c881579c9c8670a210437931b) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe1b4d3...6c2e](https://etherscan.io/address/0xe1b4d34e8754600962cd944b535180bd758e6c2e) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xe4357b...125d](https://etherscan.io/address/0xe4357bdae017726ee5e83db3443bcd269bbf125d) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xf951e3...ed78](https://etherscan.io/address/0xf951e335afb289353dc249e82926178eac7ded78) |
| ZtakingPool | vault_pool | vault_pool | likely in scope | [0xf047ab...afa6](https://etherscan.io/address/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6) |
| unnamed | unknown | unknown | unmatched | [0x057136...beaa](https://etherscan.io/address/0x0571362ba5ea9784a97605f57483f865a37dbeaa) |
| unnamed | unknown | unknown | unmatched | [0x19d0d8...939a](https://etherscan.io/address/0x19d0d8e6294b7a04a2733fe433444704b791939a) |
| unnamed | unknown | unknown | unmatched | [0x1e6ce9...2fa4](https://etherscan.io/address/0x1e6ce96d65901e0779c17e83258e07d2f8962fa4) |
| unnamed | unknown | unknown | unmatched | [0x283177...fbeb](https://etherscan.io/address/0x2831775cb5e64b1d892853893858a261e898fbeb) |
| unnamed | unknown | unknown | unmatched | [0x39d110...dd97](https://etherscan.io/address/0x39d11026eae1c6ec02aa4c0910778664089cdd97) |
| unnamed | unknown | unknown | unmatched | [0x422f5a...5f85](https://etherscan.io/address/0x422f5accc812c396600010f224b320a743695f85) |
| unnamed | unknown | unknown | unmatched | [0x441794...9d29](https://etherscan.io/address/0x441794d6a8f9a3739f5d4e98a728937b33489d29) |
| unnamed | unknown | unknown | unmatched | [0x475d3e...304a](https://etherscan.io/address/0x475d3eb031d250070b63fa145f0fcfc5d97c304a) |
| unnamed | unknown | unknown | unmatched | [0x5198cb...69d2](https://etherscan.io/address/0x5198cb44d7b2e993ebdda9cad3b9a0eaa32769d2) |
| unnamed | unknown | unknown | unmatched | [0x53a333...2ffa](https://etherscan.io/address/0x53a333e51e96fe288bc9add7cdc4b1ead2cd2ffa) |
| unnamed | unknown | unknown | unmatched | [0x594380...bd4d](https://etherscan.io/address/0x594380c06552a4136e2601f89e50b3b9ad17bd4d) |
| unnamed | unknown | unknown | unmatched | [0x6eb672...05f8](https://etherscan.io/address/0x6eb6724d8d3d4ff9e24d872e8c38403169dc05f8) |
| unnamed | unknown | unknown | unmatched | [0x77648c...3031](https://etherscan.io/address/0x77648c2feda8d5f9f21a9fe91db0d102e49d3031) |
| unnamed | unknown | unknown | unmatched | [0x7bfee9...c060](https://etherscan.io/address/0x7bfee91193d9df2ac0bfe90191d40f23c773c060) |
| unnamed | unknown | unknown | unmatched | [0x81e064...2a76](https://etherscan.io/address/0x81e064d0eb539de7c3170edf38c1a42cbd752a76) |
| unnamed | unknown | unknown | unmatched | [0x940750...43fa](https://etherscan.io/address/0x940750a267c64f3bbce31b948b67cd168f0843fa) |
| unnamed | unknown | unknown | unmatched | [0x96c6cb...b1fb](https://etherscan.io/address/0x96c6cbb6251ee1c257b2162ca0f39aa5fa44b1fb) |
| unnamed | unknown | unknown | unmatched | [0x971e5b...2618](https://etherscan.io/address/0x971e5b5d4baa5607863f3748febf287c7bf82618) |
| unnamed | unknown | unknown | unmatched | [0x9c59a9...275e](https://etherscan.io/address/0x9c59a9389d8f72de2cdaf1126f36ea4790e2275e) |
| unnamed | unknown | unknown | unmatched | [0x9fdbda...3463](https://etherscan.io/address/0x9fdbda0a5e284c32744d2f17ee5c74b284993463) |
| unnamed | unknown | unknown | unmatched | [0xb26ff5...6984](https://etherscan.io/address/0xb26ff591f44b04e78de18f43b46f8b70c6676984) |
| unnamed | unknown | unknown | unmatched | [0xb50a96...2bd5](https://etherscan.io/address/0xb50a96253abdf803d85efcdce07ad8becbc52bd5) |
| unnamed | unknown | unknown | unmatched | [0xbc89e0...03de](https://etherscan.io/address/0xbc89e0b2716079b46a971ce50c208730f73503de) |
| unnamed | unknown | unknown | unmatched | [0xbe6727...7907](https://etherscan.io/address/0xbe6727b535545c67d5caa73dea54865b92cf7907) |
| unnamed | unknown | unknown | unmatched | [0xc061d3...4f94](https://etherscan.io/address/0xc061d38903b99ac12713b550c2cb44b221674f94) |
| unnamed | unknown | unknown | unmatched | [0xc32940...843a](https://etherscan.io/address/0xc329400492c6ff2438472d4651ad17389fcb843a) |
| unnamed | unknown | unknown | unmatched | [0xd19e3d...b487](https://etherscan.io/address/0xd19e3d00f8547f7d108abfd4bbb015486437b487) |
| unnamed | unknown | unknown | unmatched | [0xe3cac7...5acc](https://etherscan.io/address/0xe3cac7cc6b0eed28e16331f08be7948bbfcb5acc) |
| unnamed | unknown | unknown | unmatched | [0xe5add9...7ca0](https://etherscan.io/address/0xe5add96840f0b908ddeb3bd144c0283ac5ca7ca0) |
| unnamed | unknown | unknown | unmatched | [0xea333e...3587](https://etherscan.io/address/0xea333eb11fc6ea62f6f4c2d73cd9f2d994ff3587) |
| unnamed | unknown | unknown | unmatched | [0xf4d923...7949](https://etherscan.io/address/0xf4d9235269a96aadafc9adae454a0618ebe37949) |
| unnamed | unknown | unknown | unmatched | [0xfc5126...151e](https://etherscan.io/address/0xfc5126377f0efc0041c0969ef9ba903ce67d151e) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 27 proxies on 1. 22 follow EIP-1967 / UUPS patterns; 1 are beacon proxies. 16 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 7 distinct deployer addresses: 0x174ae6...1a08, 0x188858...afa1, 0x32a12e...77de, 0x3b8dfe...e43e, 0x8729da...58bc. Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 143 | 1 | 142 | 0.7% |
| **Total** | 143 | 1 | 142 | 0.7% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | discovery-ingest-placeholder | 2024.07.22%20Darklinear%20Rumpel%20Wallet | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 2 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%20FPS%20Rumpel%20Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%20FPS%20Rumpel%20Wallet.pdf) - audit_report_link
- [https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%2520FPS%2520Rumpel%2520Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%2520FPS%2520Rumpel%2520Wallet.pdf) - audit_report_link
- [https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%20Darklinear%20Rumpel%20Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%20Darklinear%20Rumpel%20Wallet.pdf) - audit_report_link
- [https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%2520Darklinear%2520Rumpel%2520Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%2520Darklinear%2520Rumpel%2520Wallet.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.07.08%20-%20Final%20-%20GFX%20Labs%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2023.07.08%20-%20Final%20-%20GFX%20Labs%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.08.29%20-%20Final%20-%20Rumpel%20Point%20Tokenization%20Protocol%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.28%20-%20Final%20-%20RuneMine%20by%20Mine%20Labs%E2%80%99%20Audit%20Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.11.28%20-%20Final%20-%20RuneMine%20by%20Mine%20Labs%E2%80%99%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.01.23%20-%20Final%20-%20Nuva%20Labs%20Collaborative%20Audit%20Report%201769163881.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.01.23%20-%20Final%20-%20Nuva%20Labs%20Collaborative%20Audit%20Report%201769163881.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.05%20-%20Final%20-%20Aave%20Labs%20Collaborative%20Audit%20Report%201770295450.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2026.02.05%20-%20Final%20-%20Aave%20Labs%20Collaborative%20Audit%20Report%201770295450.pdf) - audit_report_link
- [https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/Final%20Report%20-%20Nuva%20Labs.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/Final%20Report%20-%20Nuva%20Labs.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/chainway/Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/chainway/Sigma_Prime_Chainway_Labs_Clementine_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Eigen_Labs_EigenLayer_Checkpoint_Proofs_Security_Assessment_Report_v2.0.pdf](https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Eigen_Labs_EigenLayer_Checkpoint_Proofs_Security_Assessment_Report_v2.0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Eigen_Labs_EigenLayer_Rewards_Coordinator_Security_Assessment_Report_v1.1.pdf](https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Eigen_Labs_EigenLayer_Rewards_Coordinator_Security_Assessment_Report_v1.1.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_EigenLabs_EigenLayer_EIGEN_Rewards_Security_Assessment_Report_v2.0.pdf](https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_EigenLabs_EigenLayer_EIGEN_Rewards_Security_Assessment_Report_v2.0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Layr_Labs_EigenLayer_Slashing_Security_Assessment_Report_v2_0.pdf](https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Layr_Labs_EigenLayer_Slashing_Security_Assessment_Report_v2_0.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Layr_Labs_Sidecar_Rewards_v2_2_Round_2_Security_Assessment.pdf](https://github.com/sigp/public-audits/blob/master/reports/eigenlayer/Sigma_Prime_Layr_Labs_Sidecar_Rewards_v2_2_Round_2_Security_Assessment.pdf) - audit_report_link
- [https://github.com/sigp/public-audits/blob/master/reports/recall/Sigma_Prime_recall_labs_recall_Security_Assessment_Report_v2_2.pdf](https://github.com/sigp/public-audits/blob/master/reports/recall/Sigma_Prime_recall_labs_recall_Security_Assessment_Report_v2_2.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Buck-Labs-Spearbit-Security-Review-January-2026.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Buck-Labs-Spearbit-Security-Review-January-2026.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Matter-labs-snark-wrapper-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Matter-labs-snark-wrapper-Spearbit-Security-Review.pdf) - audit_report_link
- [https://github.com/spearbit/portfolio/blob/master/pdfs/Matter-Labs-Spearbit-Security-Review-March-2025.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Matter-Labs-Spearbit-Security-Review-March-2025.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-10-balancerlabs-managedpoolsmartcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-balancerlabs-managedpoolsmartcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2022-12-driftlabs-driftprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-04-ajnalabs-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-04-ajnalabs-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-09-offchain-labs-custom-fee-token-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-09-offchain-labs-custom-fee-token-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2023-12-offchain-labs-arbitrum-token-bridge-creator-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-12-offchain-labs-arbitrum-token-bridge-creator-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-02-offchainlabsarbos-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-02-offchainlabsarbos-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-05-ailayerlabs-6079smartcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-05-ailayerlabs-6079smartcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-05-hydrogenlabs-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-05-hydrogenlabs-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-05-parabollabs-protocolcontracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-05-polygonlabs-iden3circuits-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-05-polygonlabs-iden3circuits-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-06-offchain-labs-bold-dac-rewards-updates-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-06-offchain-labs-bold-dac-rewards-updates-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-office-hours-governance-action-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-office-hours-governance-action-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-orbit-actions-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-orbit-actions-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-register-and-set-arb-custom-gateway-action-governance-action-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-register-and-set-arb-custom-gateway-action-governance-action-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-timeboost-auction-contracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-timeboost-auction-contracts-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-usdc-custom-gateway-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-08-offchainlabs-usdc-custom-gateway-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-01-bacon-labs-bunniv2-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-bacon-labs-bunniv2-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-01-parabollabs-protocolcontractsupdates-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-04-offchainlabs-reward-distributor-fixes-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-04-offchainlabs-reward-distributor-fixes-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-caplabs-coveredagentprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-caplabs-coveredagentprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-fabriclabs-zipperprotocol-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-fabriclabs-zipperprotocol-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-05-offchainlabs-arbos40nitro-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-05-offchainlabs-arbos40nitro-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2025-08-ava-labs-avalanchego-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2025-08-ava-labs-avalanchego-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2026-02-dv-labs-charon-pedersen-dkg-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2026-02-dv-labs-charon-pedersen-dkg-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/2026-04-ripple-labs-xrp-ledger-confidential-transfer-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2026-04-ripple-labs-xrp-ledger-confidential-transfer-securityreview.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/CasperLabsHighwayProtocol.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CasperLabsHighwayProtocol.pdf) - audit_report_link
- [https://github.com/trailofbits/publications/blob/master/reviews/MorphoLabs.pdf](https://github.com/trailofbits/publications/blob/master/reviews/MorphoLabs.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Arpeggi_Labs_-_Zellic_Audit_Report.pdf](https://github.com/Zellic/publications/blob/master/Arpeggi_Labs_-_Zellic_Audit_Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Hydrogen%20Labs%20Rover%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Hydrogen%20Labs%20Rover%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link
- [https://github.com/Zellic/publications/blob/master/Thala%20Labs%20Move%20Dollar%20-%20Zellic%20Audit%20Report.pdf](https://github.com/Zellic/publications/blob/master/Thala%20Labs%20Move%20Dollar%20-%20Zellic%20Audit%20Report.pdf) - audit_report_link

### Audit Reports (full list)

- unknown - discovery-ingest-placeholder - 2024.07.22%20Darklinear%20Rumpel%20Wallet

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/rumpel-labs.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** available; latest total on-chain TVL snapshot is $372,518,764.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:45:13.137Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-720c81c2
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL snapshot available with total on-chain TVL $372,518,764.
