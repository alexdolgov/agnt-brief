# Agentic Audit Brief: Taiko Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 6 audit(s)
- Eligible audit results: 8 (6 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Taiko Bridge (`taiko-bridge`)
- Website: [https://bridge.taiko.xyz/](https://bridge.taiko.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 163 unique implementations (302 raw deployments)
- Coverage basis: 6/7 confirmed own live verified implementations (85.7%); conservative 85.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $11,772,373.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Taiko Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum. Structural roles: 12 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: unclassified (12), core (1)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x10dea67478c5f8c5e2d90e5e9b26dbe60c54d800`, chain 1)
- MainnetSharedAddressManager (`0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (11 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/7 (85.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 155 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 8 of 163 unique; 155 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/65
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 98
- Unique implementations: 163
- Raw deployments: 302
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 85.7% (Code4rena, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 6 | 9.2% | 2026-01 |
| Quill Audits | Tier 2 | 5 | 7.7% | 2024-02 |
| Sigma Prime | Tier 2 | 5 | 7.7% | 2024-02 |
| Code4rena | Tier 1 | 3 | 4.6% | 2024-03 |
| Halborn | Tier 2 | 1 | 1.5% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MainnetBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257940 | `0xd60247c6848b7ca29eddf63aa924e53db6ddd8ec` | ✅ Audited |
| MainnetERC1155Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257941 | 2 deployments: ethereum `0x838ed469db456b67eb3b0b74d759be4da999b9c8`; ethereum `0xaf145913ea4a56be22e120ed9c24589659881702` | ✅ Audited |
| MainnetERC20Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257938 | `0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab` | ✅ Audited |
| MainnetERC721Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257942 | 2 deployments: ethereum `0x0b470dd3a0e1c41228856fb319649e7c08f419aa`; ethereum `0xa4c5c20ab33c96b1c281dca37d03e23609274c49` | ✅ Audited |
| QuotaManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257943 | 2 deployments: ethereum `0x91f67118dd47d502b1f0c354d0611997b022f29e`; ethereum `0xdb627bfd79e81fe42138eb875287f94fad5bbc64` | ✅ Audited |
| SignalService | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257939 | `0x9e0a24964e5397b566c1ed39258e21ab5e35c77c` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9ca1ab10c9fac5153f8b78e67f03aaa69c9c6a15`; ethereum `0xd912ab787624c9eb96a37e658e9596e114360440`; ethereum `0xf1ca1f1a068468e1dcf90da6add185467de80943` | ⚠️ Unaudited |
| AssignmentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x25206cbd98edaea26e8eadd285c66c951aada046`; ethereum `0x4f664222c3ff6207558a745648b568d095dda170`; ethereum `0xe226fad08e2f0ae68c32eb5d8210ffedb736fb0d` | ⚠️ Unaudited |
| AssignmentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x537a2f0d3a5879b41bcb5a2afe2ea5c4961796f6`; ethereum `0xf77cbfafe15df84e6638df267d25d1af8e5e53f2` | ⚠️ Unaudited |
| AutomataDcapV3Attestation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5f73f0adc7daa6134fe751c4a78d524f9384e0b5`; ethereum `0x8d7c954960a36a7596d7ea4945ddf891967ca8a3` | ⚠️ Unaudited |
| AutomataDcapV3Attestation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xde1b1fbe7d721af4a56651272ef91a59b7303323`; ethereum `0xee8fc1dbb8d345f5bf35dfb939c6f9edc5fcdafc` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x01e7d369a619ef1b0e92563d8737f42c09789986`; ethereum `0x02f21b4c3d4dbff70ce851741175a727c8d782be`; ethereum `0x271bc33a38b81038499f07a0072228f4e8f0b218`; ethereum `0x40f8be2969d0d5717768f6799c8840e5d5d603f7`; ethereum `0x4a1091c2fb37d9c4a661c2384ff539d94ccf853d`; ethereum `0x4cab75dbe321084fd15c7aa9f7398e073a7eabd0`; ethereum `0x71c2f41aede913aaef2c62596e03702e348d6cd0`; ethereum `0x91d593d34f2e1904cdce3d5290a74563f87bcf6f`; ethereum `0xc71cc3b0a47149878fad337fb2ca54e546a645ba`; ethereum `0xd28f2c26ad8ba88b0691f6bb41ff021878052561`; ethereum `0xe148cceffcd5494301c20e047634995c60611e57` | ⚠️ Unaudited |
| BridgedERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x39e4c1214e733639d059979079a151911e42791d`; ethereum `0x3c90963cfba436400b0f9c46aa9224cb379c2c40`; ethereum `0xe7782ddeb61ed050e2fbd2d497b5aadb640d689d` | ⚠️ Unaudited |
| BridgedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79bc0aada00fcf6e7ab514bfeb093b5fae3653e3`; ethereum `0xcc5d488073fa918cbbd73b9a523f3858c4de7372` | ⚠️ Unaudited |
| BridgedERC20V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x65666141a541423606365123ed280ab16a09a2e1`; ethereum `0x7714f50839a9dcd5e62e230d64650f36ec860f8c` | ⚠️ Unaudited |
| BridgedERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc3310905e2bc9cfb198695b75ef3e5b69c6a1bf7`; ethereum `0xc4096e9ff1526bd1840b65e9f45695135ac12de7` | ⚠️ Unaudited |
| ERC1155Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x01329a1cde2509421cbe99dd3feb3c1b212332fa`; ethereum `0x097bbbef669aad66030ab223195d200ef9a47dc3`; ethereum `0x7748da086a2e6edd8db97ed236840910013c6396`; ethereum `0xca92880829139b310b6b0cb41f66d566db1a59c8`; ethereum `0xd90b5fcf8d00d333d107e4ab7f94c0c0a41cdcfe` | ⚠️ Unaudited |
| ERC20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x15d9f7e12aea18daef5c651fbf97567cad4a4bec`; ethereum `0x4f750d13005444407d44daa30922128db0374ca1`; ethereum `0x540fe6291b14dd3fff86a291374d64ebd50b56ff`; ethereum `0x75b5e276c5c1e9378e899cb3a87977421980eb22`; ethereum `0xa303784b0557bf1f1fb8b8abef2b18a005722689`; ethereum `0xc722d9f3f8d60288589f7f67a9cfad34d3b9bf8e`; ethereum `0xf8bdac4e68ba2595be8381aaa5456917e374e737` | ⚠️ Unaudited |
| ERC721Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2dfef0339009ce10786fc118c883bb97af3163ed`; ethereum `0x41a7bdd153a5affb10ed1ad3d6a4e5ad001495fa`; ethereum `0x55b5df6b53466446221180498bfd1c59e54732c4`; ethereum `0x7dae6496dcea54bc92ad6d031726076887b1ed5c`; ethereum `0xec04849e7722fd69797a155796db75ac8f94f692` | ⚠️ Unaudited |
| GuardianProver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x253e47f2b1e91f2001d3578aeb24c0ccf464b65e`; ethereum `0x468f6a9c0ad2e9c8370687d2844a9e70fe942d5c`; ethereum `0x717dc5e3814591790bcb1fd9259eeda7c14ce9cf`; ethereum `0x750221e951b77a2cb4046de41ec5f6d1aa7942d2`; ethereum `0x7e717ffd6f7dd1008192bdc7193904fab25bc8a4`; ethereum `0x97f5a07aad4a88f05542808a5e0c76cab603b28c`; ethereum `0xce6b4076c427c2b4a659081a796644ff9c877e15` | ⚠️ Unaudited |
| L1RollupAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x29a88d60246c76e4f28806b9c8a42d2183154900`; ethereum `0x8af4669e3068bae96b92cd73603f5d86bed07a9a`; ethereum `0x8eef314878a7e56314e8df285d0b0d649c903af6` | ⚠️ Unaudited |
| L1SharedAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25d8465fd0c8d89bfde910e47c41f4e465672b5c`; ethereum `0x9496502d7d121b3d5ef25ca6c58d4f7593398a17` | ⚠️ Unaudited |
| MainnetBridge | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257936 | `0x2705b12a971da766a3f9321a743d61cead67da2f` | ⚠️ Unaudited |
| MainnetBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3abf0f0509e502ec25130c3fc92746d4fc75abf2`; ethereum `0x68756c318236e5cbc2ff6947523d0994fd12f179`; ethereum `0xac96ff285158bcebb8573d20d853e86bb2915af3` | ⚠️ Unaudited |
| MainnetERC1155Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x89c68bc7028f8b1e69a91382b0a4b1825085617b`; ethereum `0xec0fd48d9a3ed293db3077259ccd3e7bc9e8674d` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x76d73ac0a0c89bdb75068901d51431694ab3ab63`; ethereum `0x7acfbb369a552c45d402448a4d64b9da54c3ff30` | ⚠️ Unaudited |
| MainnetERC20Vault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257937 | `0xb20c8ffc2dd49596508d262b6e8b6817e9790e63` | ⚠️ Unaudited |
| MainnetERC721Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd961e3ef2d7df58cdc67bfd9055255430e5e3fec` | ⚠️ Unaudited |
| MainnetGuardianProver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c40cc51e78b4a622622f9a4df1b40068bc8df98` | ⚠️ Unaudited |
| MainnetGuardianProver | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x579a8d63a2db646284cbfe31fe5082c9989e985c`; ethereum `0xb866e9046caf4d75e2cbcd8b5ea3f07ea74f7b47`; ethereum `0xe3d777143ea25a6e031d1e921f396750885f43ac` | ⚠️ Unaudited |
| MainnetInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x06a9ab27c7e2255df1815e6cc0168d7755feb19a` | ⚠️ Unaudited |
| MainnetProverSet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x280eabfd252f017b78e15b69580f249f45fb55fa`; ethereum `0xa01d464ca3982daa97b19fa7f8a232eb11a9ddb3` | ⚠️ Unaudited |
| MainnetProverSet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3022ed0346cce0c08268c8ad081458afd95e8763`; ethereum `0x74828e5fe803072af9df512b3911b4223572d652`; ethereum `0xce5a119479337a153ca3bd1b2bf9755c78f2b15a`; ethereum `0xd0d3f025d83d7122de7ec43e86331c57c8a4f30b` | ⚠️ Unaudited |
| MainnetRollupAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0079a79e5d8dda67029051d505e5a11de279b36d`; ethereum `0x579f40d0be111b823962043702cabe6aaa290780` | ⚠️ Unaudited |
| MainnetRollupAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x08aab23975ee4c6b7f73e169ab9ea4698ca0a6db`; ethereum `0x190d5d50d98d2202a618f75b2fd9986e60e096be`; ethereum `0x3202fc255ae09f91dbbd5b000b87da4a2e04ee37`; ethereum `0x4f6d5d3109c07e77035b410602996e445b18e8e9`; ethereum `0x52ca3c5566d779b3c6bb5c4f760ea39e294fc788`; ethereum `0x6d8e6e1a061791ad17a55de5e15a111c58f6fb3d`; ethereum `0x85cd63895b227ba12be029492bdfa79e254f7bf6` | ⚠️ Unaudited |
| MainnetSgxVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7ee4cef8a945639e09ddf3032e9d95c8d90f07f3`; ethereum `0xee5f6648307319263ffbae91f68ac700b188ff24` | ⚠️ Unaudited |
| MainnetSgxVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x81dfea931500cdcf0460e9ec45fa283a6b7f0838`; ethereum `0xb0f3186fc1963f774f52ff455dc86aedd0b31f81` | ⚠️ Unaudited |
| MainnetSharedAddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f7126f78365ad54eab26fd7faec60435008e2fd`; ethereum `0xc99d6f47c3580b7d8cbb8755e995e3985500bc5f` | ⚠️ Unaudited |
| MainnetSharedAddressManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257944 | 2 deployments: ethereum `0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449`; ethereum `0xef9eaa1dd30a9aa1df01c36411b5f082aa65fbaa` | ⚠️ Unaudited |
| MainnetSignalService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x45fed11ba70d4217545f18e27ddaf7d76ff499f3`; ethereum `0x6e88046ff7af8ef14eca80e06c734bf59851896a`; ethereum `0xbddf6181b0889a92bcb89fcfcf867315f2f7d37c`; ethereum `0xdf8642a1fbfc2014de27e8e87283d6f3eef315df` | ⚠️ Unaudited |
| MainnetTaikoL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x0205ea1e1162bc50e1030f36412e5dd69daa4040`; ethereum `0x1de54dd97b994d324f1c9f99541036c33264141a`; ethereum `0x2784423f7c61bc7b75db6cda26959946f437588d`; ethereum `0x30923aae679d51b6aed1f440734cf1475a3ee5d9`; ethereum `0x4229d14f520848aa83760cf748abeb8a69cdab2d`; ethereum `0x4b405140e939397c997973b0a789957adf6f1fd4`; ethereum `0x5110634593ccb8072d161a7d260a409a7e74d7ca`; ethereum `0xa3e75eda1be2114816f388a5cf53eba142dcdb17`; ethereum `0xb74a66b6cf50ad63e29669f0bde4354e11758162`; ethereum `0xba1d90bcfa74163bfe09e8ef609b346507d83231`; ethereum `0xd4896d4537c6425ac5d89b9f122d4e4ac4d65e1c`; ethereum `0xe7c4b445d3c7c8e4d68afb85a068f9faa18e9a5b`; ethereum `0xede3c916d246cc0e30ff1e5d63c47ade80e395bc`; ethereum `0xf0e6d34937701622ca887a75c150cc23d4ffdf2f` | ⚠️ Unaudited |
| MainnetTierRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x02d6ab2b54e1465fb854c08d41db1e547533f915`; ethereum `0x082fb5792fee8a3a33e0d86422f06061972fa572`; ethereum `0x1c02d13312b274648639630022c79d9f050f34e3`; ethereum `0x2ae89453c6c79add793db7b9d23c275b90c26065`; ethereum `0x2cd242bfd58e6d1810323d07b065413095c7afd0`; ethereum `0x394e30d83d020469a1f8b16e89d7fd5fdb1935b0`; ethereum `0x44d307a9ec47aa55a7a30849d065686753c86db6`; ethereum `0x46d2302a95734d2126451da7f58b30dca33bfcce`; ethereum `0x6cc40878fef0918b1dcbf4cfbc6f7e46e9db269e`; ethereum `0x7037aefeaa6f472d7a07cf7b15b86543b7a7bb75`; ethereum `0x8a4c692f12d3a9750e744a4ce24a1d351be52e66`; ethereum `0x8f1c1d58c858e9a9eecc587d7d51aecfd16b5542`; ethereum `0xe9358876a72224a64f0c56684c2da42f7ba58814`; ethereum `0xfb6a876d428fab1f0f96a74b4734922d0e019d06` | ⚠️ Unaudited |
| P256Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a9eba17ebf92b40fcf9a640ebbc47db6fbeab0` | ⚠️ Unaudited |
| PEMCertChainLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02772b7b3a5bea0141c993dbb8d0733c19f46169` | ⚠️ Unaudited |
| PreconfRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd5aa0e20e8a6e9b04f080cf8797410fafaa9688a` | ⚠️ Unaudited |
| PreconfWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xfd019460881e6eec632258222393d5821029b2ac` | ⚠️ Unaudited |
| ProverSet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x500735343372dd6c9b84dbc7a75babf4479742b9`; ethereum `0x518845daa8870be2c59e49620fc262ad48953c9a`; ethereum `0x5d528253fa14cd7f637937de847be8d5be0bf5fd`; ethereum `0xd0aee97712a4a88b75c31e3c61dd2ce6e514d85f`; ethereum `0xd547ca5d6b50dc5e900a091978597eb51f18f9d1` | ⚠️ Unaudited |
| ProxylessAssignmentHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa641a2d6c0112e5ec6baf2fa40d519323a085248` | ⚠️ Unaudited |
| QuotaManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49c5e5f131314bb24b17e249960f8b12f925ef22` | ⚠️ Unaudited |
| Risc0Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55902b2d3df2a65370a89c86ae9dd71ecd508edc`; ethereum `0xefe30a0d56a5804f695f971010597262cad9a2c3` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x48e32efbe22e180a3ffe617f4955cd83b983dd98`; ethereum `0x683a787374f5d78e544f78b62aae703fd36192a9`; ethereum `0x7e8ce5fd52c3149178427dfed4da6168168f2da5`; ethereum `0xcf706d99c265fc2349ae43c5f6bfd7931fe5308d`; ethereum `0xf31de43cc0cf75245ade63d3dabf58d4332855e9` | ⚠️ Unaudited |
| SgxVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3f54067ef5d8b414bdb1945cdf482bd158aad175`; ethereum `0xb0b782cf0fcece896e0c041f8e54f86ca4cc8e9f`; ethereum `0xf381868dd6b2ac8cca468d63b42f9040de2257e9` | ⚠️ Unaudited |
| SignalService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d59c18b31a7d950ef9bd15ed285b6c182e0f0bb`; ethereum `0xb11cd7ba46a12f238b4ad831f6f296262c1e652d`; ethereum `0xe1d91bae44b70bd66e8b688b8421fd62dcc33c72` | ⚠️ Unaudited |
| SigVerifyLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47bb416ee947fe4a4b655011af7d6e3a1b80e6e9` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x00c04822ba7aea1113b2a7a29bbcdca70e257c7b`; ethereum `0x1e18454ed45101ba3af5351f3d6d2daffe5a34bf` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0ad6f49969ad86ead94941439b340bfc54588b8c`; ethereum `0x2d33d748644dab8b3fb0e07642d9de96b816d067`; ethereum `0x2d4ce746aa4913ec79c535b291966d92903b22dc`; ethereum `0x5673e375a71930bf6496af98fd3b9cb017942448`; ethereum `0x68593ad19705e9ce919b2e368f5cb7baf04f7371`; ethereum `0x7c3498cbe70800ddc8f7a5b662af1451355bbe50`; ethereum `0x7e0fbf18efa7b1ef9ff361731e91d34d65f24e05`; ethereum `0xd024e0106d97cfe782967a5253192833b00926c0`; ethereum `0xd05aed1042ed06dbf2ce7626afcbc01029e68287` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c44f2239925b0d86d2bfee539f19cd0a08af452`; ethereum `0x5f5b83ca87e2fbc513b800fed6ccd626536d7219` | ⚠️ Unaudited |
| SP1Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6e520fc0b5ca5b9903d88ca1076e8dd63a536fa8`; ethereum `0xd31868d23dcb8f2b61a2265135f99328e007d08f` | ⚠️ Unaudited |
| TaikoL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0468745a07de44a9a3138adac35875ecaf7a20d5`; ethereum `0x3505a0700db72dec7abff1af231bb5d87abf2944`; ethereum `0x4b2743b869b85d5f7d8020566f92664995e4f3c5`; ethereum `0x5fc54737ecc1de49d58ae1195d4a296257f1e31b`; ethereum `0x78bcdaac841b86187fe1f08084ee4d1d317c2f00`; ethereum `0x99ba70e62cab0cb983e66f72330fbddc11d85501`; ethereum `0x9fbbedbbcbb753e7214be08381efe10d89d712fe`; ethereum `0xa200c2268d77737a8fd2ca1698da6eeab2a85ceb`; ethereum `0xb9e1e58bcf33b79ccff99c298963546a6c334388`; ethereum `0xcee590facd976b9bde87bc1b7620b284c5edd2c3`; ethereum `0xe0a5d394878723ceaec8b993e04756df1f4b44ef` | ⚠️ Unaudited |
| TaikoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x55833da2962c2330cccf043ff8037e6d2939bcf6`; ethereum `0x7df8bfbf0f09e94200b6a158b421e2ccacc4830f`; ethereum `0xcfe803378d79d1180ebf030455040ea6513869df`; ethereum `0xea53c0f4b129cf3f3fba896f9f23ca18246e9b3c` | ⚠️ Unaudited |
| TierProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33879cdf01121dc7bce011b461e64d791ae931f2`; ethereum `0xf8254fd073063c35811577877f840548e77fd52e` | ⚠️ Unaudited |
| TierProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a1a900680baadb889202faf12915f7e47b71ddd`; ethereum `0x4cffe56c947e26d07c14020499776db3e9ae3a23` | ⚠️ Unaudited |
| TierRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e997f1f22c40ba37f633b08f3b07e10ed43155a` | ⚠️ Unaudited |
| TokenUnlock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x10edc3b383dd87e675e88623ff1cbb09b3cdefde`; ethereum `0x816628a544aa52b2abee7d482bbec53b80b898a7`; ethereum `0xd6a337d948f44baf9bef85e4f00a5006fe6ff5e7` | ⚠️ Unaudited |
| TokenUnlocking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244108e321fe03b0e33fe63ef62285f05d191a62` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x024253c6fdc27d3161afd43fb0241411a28ddc3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03fad3a616bd8616ddd8f8722120ed3b0dfd638e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05c9620f9cc7154ab1a47029014960e673586138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0676334976d6578229829faf92fb72bd9378995b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0834acfe76c46054d12478511b79bf473a154a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0857cd029937e7a119e492434c71cb9a9bb59ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dc621495ea854e279de4255bcb5ff25a5d05856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101b43a494315f947173140f550412ff7c840b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257935 | `0x10dea67478c5f8c5e2d90e5e9b26dbe60c54d800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1606303c7c1eadbd84e535732b4ae2e073a1b4b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670000000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670000000000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670000000000000000000000000000000000003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670000000000000000000000000000000000004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670000000000000000000000000000000000005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670130000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670130000000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670130000000000000000000000000000000003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670130000000000000000000000000000000004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670130000000000000000000000000000000005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1670130000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a06832992785766a105838c95c1e13a0045ac85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c94d798cfa08f396e5ba9f81697289c53273381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca766d00fda86cefba1f3723b6cffbb19a6ddea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20f9a323843180aa475700ac00e70def1dc805e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257df77ec059ca5cf9b7ed523f85b731a2ecdb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e17ac86cafc1db939c9942e478f92bf0e548ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2fb919e87947f156b374ae5831d756d8ecfbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e7797129ec717d38408b2ce81f75cc48cfd61d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x300b6e93ac9eead5e2f7dbb51b2c98794f707295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34eda8bffb539aec33078819847b36d221c6641c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39dabc2ff5543650c3eb3d48d0ae3f69e4c682b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3def88e306e449c6abf9aad8038c95d11bb0b614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fad586437fc14fff1c85bd67fb6ab8dbba6d65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41e79eb4f03abb5df8716b759528dc5d8f6a84ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ec275996bd69361ef062ed488882a58256cf11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x464cc5cd8f6ec9863e033edd11f4af30aaba3691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4876e7993dd40c22526c8b01f2d52ad8fdbdf768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48b360805d680110cd81ec06e1161d5cae556bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49216ad7d4dbafbe2f14525a863e621e2041ecb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bfab16bd9da86bf6498a640b4d076ef4ef5dfaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c70b7f5e153d497fafa0476575903f9299ed811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fd90ea01991b1ddbd2e4ed6314c17945af91bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5253d4c91e80b880ddb54b78e74082abe066f6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52696eeb290789e9b28c7354366b56969c810d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d6fc6f6db9e370c336f64f61ff3c29568d1859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54fedc114d78dcbdb8c7b2dea433f9749e8fd0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5586238157142af16ca617924a9f526fefc54e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x560bd80fa0c0109954f0a8efacb06779df397072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56c8d6fc8d36d223fa63f9ca8539076a1ff6ba77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64523f2580f4e7038a121d55b220a9c12c1e8f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4cf607dac2c4784b7d934bcb3ad7f2ed18ed80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71808449a6217898d602c1a392d95b931ac5d878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x724012aecfdf963ea962f90a2743e66f870564c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7284aac05555ae6559bdad8b4221ec9584254eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73a0db393ef87ce781ac7957be10d6628432100f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x779b676762d552a81ff221c109875751ccc316c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79895c525179680db4bcd6ba62c30e68db9042d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbacc9ffd29442df3173b7685560fce96e01b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bde2aee7e8a2ae0ae3901af69bc122369de2082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cca385bdc790c25924333f5adb7f4967f5d1599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df2eff4271329511ab32418e16c0a03e71bd15a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80d888ce11738196cfcf27e3b18f65bd4a331cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ff6cce1e5cfd6ebe83922f5a9608d1752c92c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85623f232f2b21538f2b4cedf5f62ead7f3964f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f0aefa26a1447bbe62bd2be1d30ff3353b88fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a503e338a4947647a695e0eaa9cfd88a6529e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92059835fae629a2ffa7c9a27bc735d776ac6416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae1a067f9655dd0511390e3d70bb25933ae61eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d3c595bff6ff7d2b2cbdecf94ad917eb2fcffd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d216dd9c84cb2e738240aac0956be98293be61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8a78d008b5745dd8487a8e912cd3d5a8618b496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac11ff116825efc166c4300e3482a7db46fd3625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad2eb94c65ce35bf3392416320429e85c4bb5e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd4c123a89fa974fbf221aea1a7e1e8b3aaa14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf95c030c7b8994ba9213b6a3964baa64e7df9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c6ff8dcbed16fe412291e7bda0d611405944be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb44e3620ab86ae87a3ac5068f2c4c68cf9f7a475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4530abee1dd239c02266e73ca83fe6617e77f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbacb003f0b13ceaf09eb9baf5915a640bd4bc6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb1f830636e1a017b81c3e38b7f6219344149eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc44577baa22f999a16a9df817a2aba6e5e696913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf25671480afc30b31efc9dc84ab710cadf1e27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4f138ac136592920a046106da7869436998c5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd83a682e8fbcbc5deca6cb7f9a4c33583045e4e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde813dd3b89702e5eb186fee6fbc5dcf02ae6319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf6327caafc5feb8910777ac811e0b1d27dcdf36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdff555328825b0e14e6ffd6dce44bd9335f528ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe19d8fde6175bb753fcb55e985f165a58da25867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe462cc45f06982bdf36a080629228d61324f6a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4cf08e30eff41bb02440ff97e07f11f382bc8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe78129f88ec9dd1a277aee6a244af335dd163af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b83e226202ecf7e7bb2419a4c6e3ec99e963da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf571e2626e2ce68127852123a2cc6aa522c586a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3ca570a5348fd101e65303eecdb5bf43c5548a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff269552756f7a355ebeff4e2822856a8f08f272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5adab685362dc4c33536a65af5873738d1216b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 279
- Live contracts: 11
- Unknown liveness contracts: 268
- Source-verified contracts: 201
- Currently scope-matched contracts retained as-is: 6
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=6, candidate review=125, contamination review=4, source verified unclassified=66, unverified unclassified=78

Showing first 200 of 279 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ae1a067f9655dd0511390e3d70bb25933ae61eb` | non_address_book | unknown | unknown | unverified | n/a | `0x000001043b3b967d62657116fb4ff349cba08974` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0x0b470dd3a0e1c41228856fb319649e7c08f419aa` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0x91f67118dd47d502b1f0c354d0611997b022f29e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0x9e0a24964e5397b566c1ed39258e21ab5e35c77c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0xaf145913ea4a56be22e120ed9c24589659881702` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0xd60247c6848b7ca29eddf63aa924e53db6ddd8ec` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AddressManager<br>`0x9ca1ab10c9fac5153f8b78e67f03aaa69c9c6a15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AddressManager<br>`0xd912ab787624c9eb96a37e658e9596e114360440` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AddressManager<br>`0xf1ca1f1a068468e1dcf90da6add185467de80943` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AssignmentHook<br>`0x25206cbd98edaea26e8eadd285c66c951aada046` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AssignmentHook<br>`0x4f664222c3ff6207558a745648b568d095dda170` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AssignmentHook<br>`0xe226fad08e2f0ae68c32eb5d8210ffedb736fb0d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AssignmentHook<br>`0xf77cbfafe15df84e6638df267d25d1af8e5e53f2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AutomataDcapV3Attestation<br>`0x5f73f0adc7daa6134fe751c4a78d524f9384e0b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AutomataDcapV3Attestation<br>`0xde1b1fbe7d721af4a56651272ef91a59b7303323` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | AutomataDcapV3Attestation<br>`0xee8fc1dbb8d345f5bf35dfb939c6f9edc5fcdafc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x01e7d369a619ef1b0e92563d8737f42c09789986` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x02f21b4c3d4dbff70ce851741175a727c8d782be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x271bc33a38b81038499f07a0072228f4e8f0b218` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x40f8be2969d0d5717768f6799c8840e5d5d603f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x4a1091c2fb37d9c4a661c2384ff539d94ccf853d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x4cab75dbe321084fd15c7aa9f7398e073a7eabd0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x71c2f41aede913aaef2c62596e03702e348d6cd0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0x91d593d34f2e1904cdce3d5290a74563f87bcf6f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0xc71cc3b0a47149878fad337fb2ca54e546a645ba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0xd28f2c26ad8ba88b0691f6bb41ff021878052561` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Bridge<br>`0xe148cceffcd5494301c20e047634995c60611e57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC1155<br>`0x39e4c1214e733639d059979079a151911e42791d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC1155<br>`0x3c90963cfba436400b0f9c46aa9224cb379c2c40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC1155<br>`0xe7782ddeb61ed050e2fbd2d497b5aadb640d689d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC20<br>`0x79bc0aada00fcf6e7ab514bfeb093b5fae3653e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC20<br>`0xcc5d488073fa918cbbd73b9a523f3858c4de7372` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC20V2<br>`0x65666141a541423606365123ed280ab16a09a2e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC20V2<br>`0x7714f50839a9dcd5e62e230d64650f36ec860f8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC721<br>`0xc3310905e2bc9cfb198695b75ef3e5b69c6a1bf7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | BridgedERC721<br>`0xc4096e9ff1526bd1840b65e9f45695135ac12de7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1155Vault<br>`0x01329a1cde2509421cbe99dd3feb3c1b212332fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1155Vault<br>`0x097bbbef669aad66030ab223195d200ef9a47dc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1155Vault<br>`0x7748da086a2e6edd8db97ed236840910013c6396` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1155Vault<br>`0xca92880829139b310b6b0cb41f66d566db1a59c8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1155Vault<br>`0xd90b5fcf8d00d333d107e4ab7f94c0c0a41cdcfe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x1e18454ed45101ba3af5351f3d6d2daffe5a34bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x33879cdf01121dc7bce011b461e64d791ae931f2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x537a2f0d3a5879b41bcb5a2afe2ea5c4961796f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x55902b2d3df2a65370a89c86ae9dd71ecd508edc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x579a8d63a2db646284cbfe31fe5082c9989e985c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x579f40d0be111b823962043702cabe6aaa290780` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x5c44f2239925b0d86d2bfee539f19cd0a08af452` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0x8d7c954960a36a7596d7ea4945ddf891967ca8a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0xa01d464ca3982daa97b19fa7f8a232eb11a9ddb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0xb0f3186fc1963f774f52ff455dc86aedd0b31f81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0xd31868d23dcb8f2b61a2265135f99328e007d08f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0xe3d777143ea25a6e031d1e921f396750885f43ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC1967Proxy<br>`0xef9eaa1dd30a9aa1df01c36411b5f082aa65fbaa` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC20Vault<br>`0x15d9f7e12aea18daef5c651fbf97567cad4a4bec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC20Vault<br>`0x4f750d13005444407d44daa30922128db0374ca1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC20Vault<br>`0x540fe6291b14dd3fff86a291374d64ebd50b56ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC20Vault<br>`0x75b5e276c5c1e9378e899cb3a87977421980eb22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC20Vault<br>`0xa303784b0557bf1f1fb8b8abef2b18a005722689` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC20Vault<br>`0xc722d9f3f8d60288589f7f67a9cfad34d3b9bf8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC20Vault<br>`0xf8bdac4e68ba2595be8381aaa5456917e374e737` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC721Vault<br>`0x2dfef0339009ce10786fc118c883bb97af3163ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC721Vault<br>`0x41a7bdd153a5affb10ed1ad3d6a4e5ad001495fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC721Vault<br>`0x55b5df6b53466446221180498bfd1c59e54732c4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC721Vault<br>`0x7dae6496dcea54bc92ad6d031726076887b1ed5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ERC721Vault<br>`0xec04849e7722fd69797a155796db75ac8f94f692` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | GuardianProver<br>`0x253e47f2b1e91f2001d3578aeb24c0ccf464b65e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | GuardianProver<br>`0x468f6a9c0ad2e9c8370687d2844a9e70fe942d5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | GuardianProver<br>`0x717dc5e3814591790bcb1fd9259eeda7c14ce9cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | GuardianProver<br>`0x750221e951b77a2cb4046de41ec5f6d1aa7942d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | GuardianProver<br>`0x7e717ffd6f7dd1008192bdc7193904fab25bc8a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | GuardianProver<br>`0x97f5a07aad4a88f05542808a5e0c76cab603b28c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | GuardianProver<br>`0xce6b4076c427c2b4a659081a796644ff9c877e15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC1155Vault<br>`0x838ed469db456b67eb3b0b74d759be4da999b9c8` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC1155Vault<br>`0x89c68bc7028f8b1e69a91382b0a4b1825085617b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC1155Vault<br>`0xec0fd48d9a3ed293db3077259ccd3e7bc9e8674d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC20Vault<br>`0x76d73ac0a0c89bdb75068901d51431694ab3ab63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC20Vault<br>`0x7acfbb369a552c45d402448a4d64b9da54c3ff30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC20Vault<br>`0xb20c8ffc2dd49596508d262b6e8b6817e9790e63` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC721Vault<br>`0xa4c5c20ab33c96b1c281dca37d03e23609274c49` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetERC721Vault<br>`0xd961e3ef2d7df58cdc67bfd9055255430e5e3fec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetProverSet<br>`0x280eabfd252f017b78e15b69580f249f45fb55fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetProverSet<br>`0x3022ed0346cce0c08268c8ad081458afd95e8763` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetProverSet<br>`0x74828e5fe803072af9df512b3911b4223572d652` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetProverSet<br>`0xce5a119479337a153ca3bd1b2bf9755c78f2b15a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | MainnetProverSet<br>`0xd0d3f025d83d7122de7ec43e86331c57c8a4f30b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | PEMCertChainLib<br>`0x02772b7b3a5bea0141c993dbb8d0733c19f46169` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ProverSet<br>`0x500735343372dd6c9b84dbc7a75babf4479742b9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ProverSet<br>`0x518845daa8870be2c59e49620fc262ad48953c9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ProverSet<br>`0x5d528253fa14cd7f637937de847be8d5be0bf5fd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ProverSet<br>`0xd0aee97712a4a88b75c31e3c61dd2ce6e514d85f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | ProverSet<br>`0xd547ca5d6b50dc5e900a091978597eb51f18f9d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | QuotaManager<br>`0x49c5e5f131314bb24b17e249960f8b12f925ef22` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | QuotaManager<br>`0xdb627bfd79e81fe42138eb875287f94fad5bbc64` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | Risc0Verifier<br>`0xefe30a0d56a5804f695f971010597262cad9a2c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SgxVerifier<br>`0x3f54067ef5d8b414bdb1945cdf482bd158aad175` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SgxVerifier<br>`0xb0b782cf0fcece896e0c041f8e54f86ca4cc8e9f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SgxVerifier<br>`0xf381868dd6b2ac8cca468d63b42f9040de2257e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SignalService<br>`0x3d59c18b31a7d950ef9bd15ed285b6c182e0f0bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SignalService<br>`0xb11cd7ba46a12f238b4ad831f6f296262c1e652d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SignalService<br>`0xe1d91bae44b70bd66e8b688b8421fd62dcc33c72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x00c04822ba7aea1113b2a7a29bbcdca70e257c7b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x0ad6f49969ad86ead94941439b340bfc54588b8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x2d33d748644dab8b3fb0e07642d9de96b816d067` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x2d4ce746aa4913ec79c535b291966d92903b22dc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x5673e375a71930bf6496af98fd3b9cb017942448` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x5f5b83ca87e2fbc513b800fed6ccd626536d7219` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x68593ad19705e9ce919b2e368f5cb7baf04f7371` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x6e520fc0b5ca5b9903d88ca1076e8dd63a536fa8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x7c3498cbe70800ddc8f7a5b662af1451355bbe50` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0x7e0fbf18efa7b1ef9ff361731e91d34d65f24e05` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0xd024e0106d97cfe782967a5253192833b00926c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | SP1Verifier<br>`0xd05aed1042ed06dbf2ce7626afcbc01029e68287` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0x0468745a07de44a9a3138adac35875ecaf7a20d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0x3505a0700db72dec7abff1af231bb5d87abf2944` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0x4b2743b869b85d5f7d8020566f92664995e4f3c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0x5fc54737ecc1de49d58ae1195d4a296257f1e31b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0x78bcdaac841b86187fe1f08084ee4d1d317c2f00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0x99ba70e62cab0cb983e66f72330fbddc11d85501` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0x9fbbedbbcbb753e7214be08381efe10d89d712fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0xa200c2268d77737a8fd2ca1698da6eeab2a85ceb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0xb9e1e58bcf33b79ccff99c298963546a6c334388` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0xcee590facd976b9bde87bc1b7620b284c5edd2c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoL1<br>`0xe0a5d394878723ceaec8b993e04756df1f4b44ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoToken<br>`0x55833da2962c2330cccf043ff8037e6d2939bcf6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoToken<br>`0x7df8bfbf0f09e94200b6a158b421e2ccacc4830f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoToken<br>`0xcfe803378d79d1180ebf030455040ea6513869df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TaikoToken<br>`0xea53c0f4b129cf3f3fba896f9f23ca18246e9b3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TokenUnlock<br>`0x10edc3b383dd87e675e88623ff1cbb09b3cdefde` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TokenUnlock<br>`0x816628a544aa52b2abee7d482bbec53b80b898a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | candidate review | TokenUnlock<br>`0xd6a337d948f44baf9bef85e4f00a5006fe6ff5e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | contamination review | MainnetTierRouter<br>`0x02d6ab2b54e1465fb854c08d41db1e547533f915` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | contamination review | ProxylessAssignmentHook<br>`0xa641a2d6c0112e5ec6baf2fa40d519323a085248` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | contamination review | SigVerifyLib<br>`0x47bb416ee947fe4a4b655011af7d6e3a1b80e6e9` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | contamination review | TierRouter<br>`0x6e997f1f22c40ba37f633b08f3b07e10ed43155a` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | L1RollupAddressManager<br>`0x29a88d60246c76e4f28806b9c8a42d2183154900` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | L1RollupAddressManager<br>`0x8af4669e3068bae96b92cd73603f5d86bed07a9a` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | L1RollupAddressManager<br>`0x8eef314878a7e56314e8df285d0b0d649c903af6` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | L1SharedAddressManager<br>`0x25d8465fd0c8d89bfde910e47c41f4e465672b5c` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | L1SharedAddressManager<br>`0x9496502d7d121b3d5ef25ca6c58d4f7593398a17` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetBridge<br>`0x2705b12a971da766a3f9321a743d61cead67da2f` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetBridge<br>`0x3abf0f0509e502ec25130c3fc92746d4fc75abf2` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetBridge<br>`0x68756c318236e5cbc2ff6947523d0994fd12f179` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetBridge<br>`0xac96ff285158bcebb8573d20d853e86bb2915af3` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetGuardianProver<br>`0x3c40cc51e78b4a622622f9a4df1b40068bc8df98` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetGuardianProver<br>`0xb866e9046caf4d75e2cbcd8b5ea3f07ea74f7b47` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x0079a79e5d8dda67029051d505e5a11de279b36d` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x08aab23975ee4c6b7f73e169ab9ea4698ca0a6db` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x190d5d50d98d2202a618f75b2fd9986e60e096be` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x3202fc255ae09f91dbbd5b000b87da4a2e04ee37` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x4f6d5d3109c07e77035b410602996e445b18e8e9` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x52ca3c5566d779b3c6bb5c4f760ea39e294fc788` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x6d8e6e1a061791ad17a55de5e15a111c58f6fb3d` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetRollupAddressManager<br>`0x85cd63895b227ba12be029492bdfa79e254f7bf6` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSgxVerifier<br>`0x7ee4cef8a945639e09ddf3032e9d95c8d90f07f3` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSgxVerifier<br>`0x81dfea931500cdcf0460e9ec45fa283a6b7f0838` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSgxVerifier<br>`0xee5f6648307319263ffbae91f68ac700b188ff24` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSharedAddressManager<br>`0x2f7126f78365ad54eab26fd7faec60435008e2fd` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSharedAddressManager<br>`0xc99d6f47c3580b7d8cbb8755e995e3985500bc5f` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSharedAddressManager<br>`0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSignalService<br>`0x45fed11ba70d4217545f18e27ddaf7d76ff499f3` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSignalService<br>`0x6e88046ff7af8ef14eca80e06c734bf59851896a` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSignalService<br>`0xbddf6181b0889a92bcb89fcfcf867315f2f7d37c` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetSignalService<br>`0xdf8642a1fbfc2014de27e8e87283d6f3eef315df` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0x0205ea1e1162bc50e1030f36412e5dd69daa4040` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0x1de54dd97b994d324f1c9f99541036c33264141a` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0x2784423f7c61bc7b75db6cda26959946f437588d` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0x30923aae679d51b6aed1f440734cf1475a3ee5d9` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0x4229d14f520848aa83760cf748abeb8a69cdab2d` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0x4b405140e939397c997973b0a789957adf6f1fd4` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0x5110634593ccb8072d161a7d260a409a7e74d7ca` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0xa3e75eda1be2114816f388a5cf53eba142dcdb17` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0xb74a66b6cf50ad63e29669f0bde4354e11758162` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0xba1d90bcfa74163bfe09e8ef609b346507d83231` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0xd4896d4537c6425ac5d89b9f122d4e4ac4d65e1c` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0xe7c4b445d3c7c8e4d68afb85a068f9faa18e9a5b` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0xede3c916d246cc0e30ff1e5d63c47ade80e395bc` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTaikoL1<br>`0xf0e6d34937701622ca887a75c150cc23d4ffdf2f` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x082fb5792fee8a3a33e0d86422f06061972fa572` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x1c02d13312b274648639630022c79d9f050f34e3` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x2ae89453c6c79add793db7b9d23c275b90c26065` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x2cd242bfd58e6d1810323d07b065413095c7afd0` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x394e30d83d020469a1f8b16e89d7fd5fdb1935b0` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x44d307a9ec47aa55a7a30849d065686753c86db6` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x46d2302a95734d2126451da7f58b30dca33bfcce` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x6cc40878fef0918b1dcbf4cfbc6f7e46e9db269e` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x7037aefeaa6f472d7a07cf7b15b86543b7a7bb75` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x8a4c692f12d3a9750e744a4ce24a1d351be52e66` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0x8f1c1d58c858e9a9eecc587d7d51aecfd16b5542` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0xe9358876a72224a64f0c56684c2da42f7ba58814` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | MainnetTierRouter<br>`0xfb6a876d428fab1f0f96a74b4734922d0e019d06` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | P256Verifier<br>`0x11a9eba17ebf92b40fcf9a640ebbc47db6fbeab0` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | RiscZeroGroth16Verifier<br>`0x48e32efbe22e180a3ffe617f4955cd83b983dd98` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | RiscZeroGroth16Verifier<br>`0x683a787374f5d78e544f78b62aae703fd36192a9` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | RiscZeroGroth16Verifier<br>`0x7e8ce5fd52c3149178427dfed4da6168168f2da5` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | RiscZeroGroth16Verifier<br>`0xcf706d99c265fc2349ae43c5f6bfd7931fe5308d` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | RiscZeroGroth16Verifier<br>`0xf31de43cc0cf75245ade63d3dabf58d4332855e9` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | TierProviderV2<br>`0x3a1a900680baadb889202faf12915f7e47b71ddd` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |
| ethereum | source verified unclassified | TierProviderV2<br>`0x4cffe56c947e26d07c14020499776db3e9ae3a23` | non_address_book | unknown | unknown | verified | n/a | `0x56706f118e42ae069f20c5636141b844d1324ae1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena-2024-03-taiko-final-report.md](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/code4rena-2024-03-taiko-final-report.md) | Code4rena | Contest | 2024-03 | stale | Direct | contract_name | matched | 4 | 3 | 0 | 33 | high |
| [halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [halborn-taiko-dao-contract-audit.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/halborn-taiko-dao-contract-audit.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [open_zeppelin_taiko_protocol_audit_june_2024.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_audit_june_2024.pdf) | OpenZeppelin | Audit | 2024-06 | stale | Direct | contract_name | matched | 7 | 6 | 0 | 60 | high |
| [open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf) | OpenZeppelin | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf) | OpenZeppelin | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 31 | high |
| [quill_audits_taiko_smart_contract_audit_report.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/quill_audits_taiko_smart_contract_audit_report.pdf) | Quill Audits | Audit | 2024-02 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 6 | high |
| [sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf](https://github.com/taikoxyz/taiko-mono/blob/main/packages/protocol/audit/sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | matched | 5 | 5 | 0 | 24 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21026] code4rena-2024-03-taiko-final-report.md — matched: Extracted 37 contract names from the audit report scope and findings. The audit date is the end date of the audit period (March 6-27, 2024).
- [21027] halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf — matched: Scope section explicitly lists four contracts: ERC20Vault.sol, TaikoWrapper.sol, ForcedInclusionStore.sol, TaikoInbox.sol. Audit date from engagement end date March 7, 2025.
- [21028] halborn-taiko-dao-contract-audit.pdf — no match: Extracted 13 contract names from the scope section listing files and repository. Audit date from engagement end date: February 24th, 2025.
- [21029] open_zeppelin_taiko_protocol_audit_june_2024.pdf — matched: Extracted all contracts from the Scope section (Phases 1,2,3) and the file listings. The audit date is from the cover page: 'June 19, 2024'.
- [21030] open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf — no match: All contracts listed in the Scope section of the audit report.
- [21031] open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf — matched: Extracted all contracts from the Scope section file listing. Audit date from cover page.
- [21032] quill_audits_taiko_smart_contract_audit_report.pdf — matched: Extracted contract names from audit report scope and findings. Audit date inferred from 'February, 2024' on cover and last page, using last day of month.
- [21033] sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf — matched: Scope explicitly lists all Solidity files in directories: 4844/, bridge/, common/, L1/, L2/, libs/, signal/, thirdparty/, tokenvaults/. Excludes OpenZeppelin dependencies. Audit date from cover page: 'February, 2024' -> last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena-2024-03-taiko-final-report.md | TaikoL2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibProving | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibVerifying | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | ERC20Airdrop2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AssignmentHook | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibProposing | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TimelockTokenPool | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | LibDepositing | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoL1 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247c6848b7ca29eddf63aa924e53db6ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | USDCAdapter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoToken | own contract | 0x10dea6… (selected) `0x10dea67478c5f8c5e2d90e5e9b26dbe60c54d800` — deployed 2024-04-25 11:29:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | EssentialContract | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AddressResolver | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | GuardianProver | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | MainnetTierProvider | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | TestnetTierProvider | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | PEMCertChainLib | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | SgxVerifier | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | AutomataDcapV3Attestation | unmatched — not counted | — | listed in scope and findings | no |
| code4rena-2024-03-taiko-final-report.md | Lib1559Math | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | LibSignals | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24964e5397b566c1ed39258e21ab5e35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena-2024-03-taiko-final-report.md | IBridgedERC20 | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IMessageInvocable | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ITierProvider | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IAddressManager | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IHook | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ISignalService | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ITaikoL1 | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | LibTiers | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | TaikoData | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | IPEMCertChainLib | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | TCBInfoStruct | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | X509DateUtils | unmatched — not counted | — | referenced in findings | no |
| code4rena-2024-03-taiko-final-report.md | ECDSA | unmatched — not counted | — | referenced in findings | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | TaikoWrapper | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | ForcedInclusionStore | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-alethia-protocol-audit-for-pacaya-upgrade.pdf | TaikoInbox | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | ITaikoL1 | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | StandardProposalCondition | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | TaikoDaoFactory | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | proxy | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EmergencyMultisigPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | MultisigPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | OptimisticTokenVotingPluginSetup | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | DelegationWall | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EmergencyMultisig | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | EncryptionRegistry | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | Multisig | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | OptimisticTokenVotingPlugin | unmatched — not counted | — | listed in scope | no |
| halborn-taiko-dao-contract-audit.pdf | SignerList | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247c6848b7ca29eddf63aa924e53db6ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IBridge | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AddressManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AddressResolver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | EssentialContract | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IAddressManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IAddressResolver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ITaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoErrors | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoEvents | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoToken | own contract | 0x10dea6… (selected) `0x10dea67478c5f8c5e2d90e5e9b26dbe60c54d800` — deployed 2024-04-25 11:29:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoGovernor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoTimelockController | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | AssignmentHook | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibDepositing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibProposing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibProving | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibUtils | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibVerifying | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | GuardianProver | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Guardians | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | DevnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ITierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MainnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TestnetTierProvider | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | CrossChainOwned | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Lib1559Math | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL2 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TaikoL2EIP1559Configurable | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Lib4844 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibAddress | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibTrieProof | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ISignalService | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibSignals | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24964e5397b566c1ed39258e21ab5e35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | TimelockTokenPool | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC20Airdrop | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MerkleClaimable | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ExcessivelySafeCall | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | Bytes | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | RLPReader | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | RLPWriter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | MerkleTrie | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SecureMerkleTrie | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibFixedPointMath | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BaseNFTVault | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC1155 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC20 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC20Base | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedERC721 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf145913ea4a56be22e120ed9c24589659881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470dd3a0e1c41228856fb319649e7c08f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IBridgedERC20 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | LibBridgedToken | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | USDCAdapter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | GuardianVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | IVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | SgxVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | DelegateOwner | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | QuotaManager | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x91f67118dd47d502b1f0c354d0611997b022f29e` — deployed 2024-05-13 08:27:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| open_zeppelin_taiko_protocol_audit_june_2024.pdf | BridgedTaikoToken | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibBonds | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibProposing | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibProving | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibUtils | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | LibVerifying | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoData | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoL1 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ComposeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TeeAnyVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ZkAndTeeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | ZkAnyVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | Lib1559Math | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf | TaikoL2 | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IBondManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ICodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IForcedInclusionStore | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IInbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IProverWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Codec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Inbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ProverWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibBonds | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibBlobs | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibForcedInclusion | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibHashOptimized | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibInboxSetup | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibPackUnpack | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProposeInputCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProposedEventCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibProveInputCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibTransitionCodec | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | MainnetInbox | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | PreconfWhitelist | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IProofVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | LibPublicInput | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Risc0Verifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SP1Verifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SgxVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ComposeVerifier | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | Anchor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | AnchorForkRouter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | BondManager | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | IBondProcessor | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | ForkRouter | unmatched — not counted | — | listed in scope | no |
| open_zeppelin_taiko_protocol_shasta_audit_jan_2026.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24964e5397b566c1ed39258e21ab5e35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247c6848b7ca29eddf63aa924e53db6ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470dd3a0e1c41228856fb319649e7c08f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf145913ea4a56be22e120ed9c24589659881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | BridgedERC721 | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | BridgedERC1155 | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24964e5397b566c1ed39258e21ab5e35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| quill_audits_taiko_smart_contract_audit_report.pdf | OwnerUUPSUpgradable | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | AddressManager | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | EssentialContract | unmatched — not counted | — | mentioned in findings | no |
| quill_audits_taiko_smart_contract_audit_report.pdf | LibAddress | unmatched — not counted | — | mentioned in findings | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Bridge | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xd60247c6848b7ca29eddf63aa924e53db6ddd8ec` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | SignalService | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x9e0a24964e5397b566c1ed39258e21ab5e35c77c` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | SgxVerifier | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC20Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x996282ca11e5deb6b5d122cc3b9a1fcaad4415ab` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibProposing | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AssignmentHook | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibProving | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoL1 | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibVerifying | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoL2 | unmatched — not counted | — | listed in scope directories: L2/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | BridgedERC20Base | unmatched — not counted | — | listed in scope directories: tokenvaults/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibBytesUtils | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Lib4844 | unmatched — not counted | — | listed in scope directories: 4844/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoTimelockController | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | PseZkVerifier | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | Guardians | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoGovernor | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | TaikoA6TierProvider | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AddressManager | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibDepositing | unmatched — not counted | — | listed in scope directories: L1/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibMerkleTrie | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibRLPReader | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | LibUint512Math | unmatched — not counted | — | listed in scope directories: thirdparty/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC1155Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xaf145913ea4a56be22e120ed9c24589659881702` — deployed 2024-05-01 11:03:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | ERC721Vault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x0b470dd3a0e1c41228856fb319649e7c08f419aa` — deployed 2024-05-01 11:03:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AuthorizableContract | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | EssentialContract | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | OwnerUUPSUpgradable | unmatched — not counted | — | listed in scope directories: common/ | no |
| sigma_prime_taiko_smart_contract_security_assessment_report_v2_0.pdf | AddressResolver | unmatched — not counted | — | listed in scope directories: common/ | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xec1a9aa1c648f047752fe4eedb2c21ceab0c6449` | MainnetSharedAddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 98 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 23 own (21 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 184 unmatched
- Matched-own operational status: 23 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=23

Zero-match audit list:

- [21028] halborn-taiko-dao-contract-audit.pdf
- [21030] open_zeppelin_taiko_protocol_ontake_audit_nov_2024.pdf.pdf

Fork inheritance lineage and inherited audits are included when available.
