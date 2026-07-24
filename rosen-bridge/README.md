# Agentic Audit Brief: Rosen Bridge

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

- Project: Rosen Bridge (`rosen-bridge`)
- Website: [https://rosen.tech](https://rosen.tech)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 161 unique implementations (161 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,237,288.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rosen Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across bsc, ethereum. Structural roles: 6 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: unclassified (6)
- Contract kinds: contract (6)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 105 contracts are derived from known codebases. 105 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- rsADA (`0x00ea2a20351793c754f1d3f33ef6459642fd78d7`, chain 1)
- rsADA (`0xc8c652bcc20048f27c0fa8d96324e8bab8be5599`, chain 56)
- rsAHT (`0x88cc9dcb40665bd815b54ceb680856b2418d7046`, chain 1)
- rsAHT (`0x092c1a96e92b15ad31407ec41fcc48bf4f8c1e7a`, chain 56)
- rsBANA (`0x1ac593d366ee64eb4b63b509f357eaf042b2dc1b`, chain 1)
- rsBANA (`0x73abfd06c67375f388eec927a41ec40fbcaeff39`, chain 56)
- rsBDC (`0x87fc57a2be29960fe6362a9710f468be232cd5d8`, chain 1)
- rsBDC (`0x182fe4102f94645e0df0f2a3ca2386b21c94818f`, chain 56)
- rsBNB (`0xd8cb11d1f33afe61bf090c2c08ed0966a833253e`, chain 1)
- rsBober (`0xf10e6cde5cb065cefa3261cbf80f38b6d53dad96`, chain 1)
- rsBober (`0x7067bcefd0dc5af87449ad0fc1380f45c8462686`, chain 56)
- rsBTC (`0xd753cd1f5cb336aec4836dc7269bc45ea8607fbc`, chain 1)
- rsBTC (`0xd6416c1b66484ea7d1b3fb20a4d49b73d25a65d2`, chain 56)
- rsBTN (`0xbe2fe1ed9d20172e1ec058eb358cee3d8fde6083`, chain 1)
- rsBTN (`0x7ffe4755701fb8be6cf2a0ebced4c9d63d4e6b63`, chain 56)
- rsCOMET (`0x725dcf18e942e7d5b4696f7a2490cc48334a9d67`, chain 1)
- rsCOMET (`0x0b77aeaa694f42cfe6a8075e21e4e8e0b4c9b3f2`, chain 56)
- rsCOS (`0x1192848d2c33333885d3067ed146d8e79b3f24f8`, chain 1)
- rsCOS (`0xc72f2645229e8a3c9e45f367a630cf63ea33a07b`, chain 56)
- rsCYPX (`0x3c80506f5d5ce63d1ce2ab080c6d400b10335611`, chain 1)
- rsCYPX (`0x4cd2f21407f8cc854919a451ea9edba79615e29b`, chain 56)
- rsDIS (`0x1336d2829dc39557e3efd6442faf8b8589143a63`, chain 1)
- rsDIS (`0x8e66f6521fbbe06af88356ccc98f20f5122336ea`, chain 56)
- rsDOG (`0x99ebf260e939d00dfcaf9cfaab01564487918d06`, chain 1)
- rsDOG (`0x976925ae77922f0c5db1db835d4b83ce115c613a`, chain 56)
- rsDOGE (`0xcd7d30d224c940ca93c9943661c25533d9d420b1`, chain 1)
- rsDOGE (`0xd101ebe047b99e227474de6d4d0753dc0c40b45d`, chain 56)
- rsEPOS (`0xb8dc34b4199d60780503b51926a3679272bb482c`, chain 1)
- rsEPOS (`0xfc59134953b67197951b9b04e2c88397c74fb883`, chain 56)
- rsERG (`0x6c060ba738af39a09f3b45ac6487dfc9ebb885f6`, chain 1)
- rsERG (`0xe0e8a04242f35b95dc64b07e0eae23a8e43a78e4`, chain 56)
- rsErgOne (`0x56c33fbad9211c3c3ded5580eea568454ddf7503`, chain 1)
- rsErgOne (`0xf64df3cc2b8a599ce207c578005e6c32cc370d0b`, chain 56)
- rsETH (`0x35811ea62e8e738ebe34bf084f062d79b31d5a96`, chain 56)
- rsGAU (`0x785c1771d7ba16397ca104a8bb6dd128383f020d`, chain 1)
- rsGAU (`0x26c2eb9227aeb2cb29054fb62376c3360f778401`, chain 56)
- rsGAUC (`0x6f26b2260341e57fc56be3dff14f660dfaaae63b`, chain 1)
- rsGAUC (`0x4a448c9f62ca5f6ce2b7004e71bcb2fae4fdef18`, chain 56)
- rsGIF (`0xa43d9f9982ba219e8cbc442aec1304ad014caaa5`, chain 1)
- rsGIF (`0xd2e5d5b38f022f4e8b858fc4401b41c504d5c06f`, chain 56)
- rsGIZMO (`0x95bfdd5b284ae10f27943d67b5b363421fa489fc`, chain 1)
- rsGIZMO (`0x9739b141883c7290000cca393fed2d9db8125bd0`, chain 56)
- rsHOSKY (`0x0f068432e1a1c6574fad1bc8ff751b76d5f95d43`, chain 1)
- rsHOSKY (`0xaadf6aaabf0b2cca2b91c3a32803fa426b786af2`, chain 56)
- rsHUNT (`0xe1db903a09b70688da692414f014f63ff1a12530`, chain 1)
- rsHUNT (`0x79b5d81fe74315e87a1f2eab5fd0a37da52d465b`, chain 56)
- rsIAG (`0x295b6b8aca24810d1f3e3d3fc5798a6f0dfce83c`, chain 1)
- rsIAG (`0xaef21c7c147bcb0e3f97ad5409c49ed4630badc3`, chain 56)
- rsINDY (`0x09a7dc4e994afe7d1ed9f1a76843a1692944ee27`, chain 1)
- rsINDY (`0x8e8958ed1d14fe81aa49f989853805c912ea98c0`, chain 56)
- rsLIQ (`0xf13e34c9290eb62406d469213d669a42ccf3b4a9`, chain 1)
- rsLIQ (`0xe32b8404bd40fd19a4a781716a04ff38a18bf976`, chain 56)
- rsLQ (`0xc33af5c6672afa348111003e98ddbecc099f5dc4`, chain 1)
- rsLQ (`0x64935bb405da9a761a9c0c13d81c6c91e78d42b7`, chain 56)
- rsMEW (`0x02e4069db36a74bd62d145d88d83967f5db6be88`, chain 1)
- rsMEW (`0xd169fa8c9c33bd5bb2cc9bdd7cc3eeabcd1fffbc`, chain 56)
- rsMIM (`0x0ef565052882cbb6772a1539c369336def396175`, chain 1)
- rsMIM (`0xf9bbf70010f1cbccd82b979829bf08cde6a1315b`, chain 56)
- rsMIN (`0xd5732714353845880d42cc8454d8f360bb0d20c3`, chain 1)
- rsMIN (`0x0ad817ff926fafc90f7ae6684ba5d81ac6ab5b8c`, chain 56)
- rsMNT (`0xf10cf9cb8ded35cbf43babfc9aecf50a05da4cba`, chain 1)
- rsMNT (`0xb402f6e4e6df7db4085a520aeb25914af88c1ed1`, chain 56)
- rsNIGHT (`0xfd6859deb1d76db10ed462a7eac099ca5adce2df`, chain 1)
- rsNIGHT (`0x71bfff96e44534bd1d2a64c922796d3fda07ee7c`, chain 56)
- rsNIKEPIG (`0x6281a14b1e599e4aeeb72ce01c388dc7fa495f5e`, chain 1)
- rsNIKEPIG (`0x94654ab49c8bcec591aed536eb6e78e693bc1111`, chain 56)
- rsO (`0xb951b650daee775d3cd446567d5248c54a7202ed`, chain 1)
- rsO (`0x56e241e5da1e06f09a722040ba144b82e24ec4a0`, chain 56)
- rsOADA (`0xd3f08c6b01d3aefcf9e457396a9c6727d2e60d7d`, chain 1)
- rsOADA (`0x35aea122df1c3772b08f8695da3a13eedbd1994b`, chain 56)
- rsPaideia (`0xd53d6c940fbf7c2ba0d92630b29534f2798d6bb8`, chain 1)
- rsPaideia (`0x68d847e0aa10a9046d8c88617fc44802323c9a30`, chain 56)
- rsPALM (`0x502a641decfe32b1e3d030e05effb8ae5146e64b`, chain 56)
- rsPUPS (`0x0d7500ba42a548ec6c58c05938851596712040fa`, chain 1)
- rsPUPS (`0x98ca5b1e641bcaf06e18f6ff5715c644cd8aeaad`, chain 56)
- rsQUACKS (`0xd2443e724e30fc67b1034b3100ec3836f1dbc7da`, chain 1)
- rsQUACKS (`0x635ccce00385b88ef177c4ba8f13e803abfc365e`, chain 56)
- rsRSN (`0xd207d3228ad136d56523ffbf04ee27062da82884`, chain 1)
- rsRSN (`0x1b1c907edf8a563d0a1f702973db6d8c812df77e`, chain 56)
- rsSigRSV (`0xe90f17b6d888bc986609eb9607556894a165e2dc`, chain 1)
- rsSigRSV (`0xa3e1ba3397fa7388ad11206935b08514dd729264`, chain 56)
- rsSigUSD (`0xe4d00106b3b9c27b59b7f752417d00f6a8517019`, chain 1)
- rsSigUSD (`0xe5e7a549339644c8df4a69ab493a47fbe41f4372`, chain 56)
- rsSNEK (`0x7fb555a93e8654c3ce113e6ac3c0d7d603c76603`, chain 1)
- rsSNEK (`0xe84434a3e8423ff9cdcbc706f89389f2a74b4bee`, chain 56)
- rsSOADA (`0x2235683f908e4e5fbd66166fcfcbacfbf03a539c`, chain 1)
- rsSOADA (`0xeee6ed895475a217135d512e69d26ab939986e33`, chain 56)
- rsSOCKZ (`0xa54ab6f54209e135e6a20379674fa0cea10d6fe2`, chain 1)
- rsSOCKZ (`0x7b9f7269d1b6c2381f881476c260670baf080f86`, chain 56)
- rsSPF (`0x5d4d4e1ab6f66dd2239f3a83412a7e3fcaaee487`, chain 1)
- rsSPF (`0x66eeeb4434e28de75b0495c5b48eec581f287ae1`, chain 56)
- rsSPLASH (`0xecf8da84942e8084af6c8d0035fb8b004919a200`, chain 1)
- rsSPLASH (`0xe2bb0b82b3f6647ca08497b83f3accfdf15648aa`, chain 56)
- rsSUGAR (`0x97334b49dad0b1df7fb2fe9f75c5cd8672c27474`, chain 1)
- rsSUGAR (`0xbeb98005288df49f977449303bc549b983df0178`, chain 56)
- rsSUNDAE (`0xc60df4e02152670073b6b41eb3a7267e7f3a1aa1`, chain 1)
- rsSUNDAE (`0x95b4e19e1038d07a43aa22f1b06b8c0e6705d0f0`, chain 56)
- rsTroll (`0xbbbd56d33cce26cf47cccce9489d0c2fafe8ba50`, chain 1)
- rsTroll (`0x2cf7d28159464d64eaaec73fa1164fc9ce6e4380`, chain 56)
- rsUCGOODS (`0xc86012da3cb785e629e4cf743398acfc3a727675`, chain 1)
- rsUCGOODS (`0x9e1f3176cedf35c620eba545bacee29fcfb3d06f`, chain 56)
- rsVYFI (`0x916eae0b2514c3057974c74b86626d21e4d31dd6`, chain 1)
- rsVYFI (`0x400b9a9628e258e2b3fe2403e10c1f461db6b1bf`, chain 56)
- rsWALRUS (`0xea8449729c7f5ff7adff31a43d816183cd01dfcd`, chain 1)
- rsWALRUS (`0xa924593a286eb2d46d565e241e47bc8fb8dcd0ff`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 105/129 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 105 own, 24 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 105 of 161 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 155
- Unique implementations: 161
- Raw deployments: 161
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| rsADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391921 | `0xc8c652bcc20048f27c0fa8d96324e8bab8be5599` | ⚠️ Unaudited |
| rsBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391837 | `0xd753cd1f5cb336aec4836dc7269bc45ea8607fbc` | ⚠️ Unaudited |
| rsERG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391804 | `0x6c060ba738af39a09f3b45ac6487dfc9ebb885f6` | ⚠️ Unaudited |
| rsERG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391933 | `0xe0e8a04242f35b95dc64b07e0eae23a8e43a78e4` | ⚠️ Unaudited |
| rsPALM | unknown | project_anchor | own_supporting | 0 | bsc | unit-391865 | `0x502a641decfe32b1e3d030e05effb8ae5146e64b` | ⚠️ Unaudited |
| rsSUGAR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391816 | `0x97334b49dad0b1df7fb2fe9f75c5cd8672c27474` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (155)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| rsADA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391787 | `0x00ea2a20351793c754f1d3f33ef6459642fd78d7` | ❓ Unverified |
| rsAHT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391811 | `0x88cc9dcb40665bd815b54ceb680856b2418d7046` | ❓ Unverified |
| rsAHT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391852 | `0x092c1a96e92b15ad31407ec41fcc48bf4f8c1e7a` | ❓ Unverified |
| rsBANA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391795 | `0x1ac593d366ee64eb4b63b509f357eaf042b2dc1b` | ❓ Unverified |
| rsBANA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391875 | `0x73abfd06c67375f388eec927a41ec40fbcaeff39` | ❓ Unverified |
| rsBDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391810 | `0x87fc57a2be29960fe6362a9710f468be232cd5d8` | ❓ Unverified |
| rsBDC | unknown | project_anchor | own_supporting | 0 | bsc | unit-391855 | `0x182fe4102f94645e0df0f2a3ca2386b21c94818f` | ❓ Unverified |
| rsBNB | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391838 | `0xd8cb11d1f33afe61bf090c2c08ed0966a833253e` | ❓ Unverified |
| rsBober | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391848 | `0xf10e6cde5cb065cefa3261cbf80f38b6d53dad96` | ❓ Unverified |
| rsBober | unknown | project_anchor | own_supporting | 0 | bsc | unit-391872 | `0x7067bcefd0dc5af87449ad0fc1380f45c8462686` | ❓ Unverified |
| rsBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-391932 | `0xd6416c1b66484ea7d1b3fb20a4d49b73d25a65d2` | ❓ Unverified |
| rsBTN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391824 | `0xbe2fe1ed9d20172e1ec058eb358cee3d8fde6083` | ❓ Unverified |
| rsBTN | unknown | project_anchor | own_supporting | 0 | bsc | unit-391880 | `0x7ffe4755701fb8be6cf2a0ebced4c9d63d4e6b63` | ❓ Unverified |
| rsCOMET | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391806 | `0x725dcf18e942e7d5b4696f7a2490cc48334a9d67` | ❓ Unverified |
| rsCOMET | unknown | project_anchor | own_supporting | 0 | bsc | unit-391854 | `0x0b77aeaa694f42cfe6a8075e21e4e8e0b4c9b3f2` | ❓ Unverified |
| rsCOS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391793 | `0x1192848d2c33333885d3067ed146d8e79b3f24f8` | ❓ Unverified |
| rsCOS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391919 | `0xc72f2645229e8a3c9e45f367a630cf63ea33a07b` | ❓ Unverified |
| rsCYPX | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391800 | `0x3c80506f5d5ce63d1ce2ab080c6d400b10335611` | ❓ Unverified |
| rsCYPX | unknown | project_anchor | own_supporting | 0 | bsc | unit-391864 | `0x4cd2f21407f8cc854919a451ea9edba79615e29b` | ❓ Unverified |
| rsDIS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391794 | `0x1336d2829dc39557e3efd6442faf8b8589143a63` | ❓ Unverified |
| rsDIS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391882 | `0x8e66f6521fbbe06af88356ccc98f20f5122336ea` | ❓ Unverified |
| rsDOG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391817 | `0x99ebf260e939d00dfcaf9cfaab01564487918d06` | ❓ Unverified |
| rsDOG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391894 | `0x976925ae77922f0c5db1db835d4b83ce115c613a` | ❓ Unverified |
| rsDOGE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391829 | `0xcd7d30d224c940ca93c9943661c25533d9d420b1` | ❓ Unverified |
| rsDOGE | unknown | project_anchor | own_supporting | 0 | bsc | unit-391926 | `0xd101ebe047b99e227474de6d4d0753dc0c40b45d` | ❓ Unverified |
| rsEPOS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391821 | `0xb8dc34b4199d60780503b51926a3679272bb482c` | ❓ Unverified |
| rsEPOS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391942 | `0xfc59134953b67197951b9b04e2c88397c74fb883` | ❓ Unverified |
| rsErgOne | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391801 | `0x56c33fbad9211c3c3ded5580eea568454ddf7503` | ❓ Unverified |
| rsErgOne | unknown | project_anchor | own_supporting | 0 | bsc | unit-391939 | `0xf64df3cc2b8a599ce207c578005e6c32cc370d0b` | ❓ Unverified |
| rsETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-391860 | `0x35811ea62e8e738ebe34bf084f062d79b31d5a96` | ❓ Unverified |
| rsGAU | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391807 | `0x785c1771d7ba16397ca104a8bb6dd128383f020d` | ❓ Unverified |
| rsGAU | unknown | project_anchor | own_supporting | 0 | bsc | unit-391857 | `0x26c2eb9227aeb2cb29054fb62376c3360f778401` | ❓ Unverified |
| rsGAUC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391805 | `0x6f26b2260341e57fc56be3dff14f660dfaaae63b` | ❓ Unverified |
| rsGAUC | unknown | project_anchor | own_supporting | 0 | bsc | unit-391863 | `0x4a448c9f62ca5f6ce2b7004e71bcb2fae4fdef18` | ❓ Unverified |
| rsGIF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391818 | `0xa43d9f9982ba219e8cbc442aec1304ad014caaa5` | ❓ Unverified |
| rsGIF | unknown | project_anchor | own_supporting | 0 | bsc | unit-391930 | `0xd2e5d5b38f022f4e8b858fc4401b41c504d5c06f` | ❓ Unverified |
| rsGIZMO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391814 | `0x95bfdd5b284ae10f27943d67b5b363421fa489fc` | ❓ Unverified |
| rsGIZMO | unknown | project_anchor | own_supporting | 0 | bsc | unit-391892 | `0x9739b141883c7290000cca393fed2d9db8125bd0` | ❓ Unverified |
| rsHOSKY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391792 | `0x0f068432e1a1c6574fad1bc8ff751b76d5f95d43` | ❓ Unverified |
| rsHOSKY | unknown | project_anchor | own_supporting | 0 | bsc | unit-391906 | `0xaadf6aaabf0b2cca2b91c3a32803fa426b786af2` | ❓ Unverified |
| rsHUNT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391841 | `0xe1db903a09b70688da692414f014f63ff1a12530` | ❓ Unverified |
| rsHUNT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391877 | `0x79b5d81fe74315e87a1f2eab5fd0a37da52d465b` | ❓ Unverified |
| rsIAG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391798 | `0x295b6b8aca24810d1f3e3d3fc5798a6f0dfce83c` | ❓ Unverified |
| rsIAG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391909 | `0xaef21c7c147bcb0e3f97ad5409c49ed4630badc3` | ❓ Unverified |
| rsINDY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391789 | `0x09a7dc4e994afe7d1ed9f1a76843a1692944ee27` | ❓ Unverified |
| rsINDY | unknown | project_anchor | own_supporting | 0 | bsc | unit-391884 | `0x8e8958ed1d14fe81aa49f989853805c912ea98c0` | ❓ Unverified |
| rsLIQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391849 | `0xf13e34c9290eb62406d469213d669a42ccf3b4a9` | ❓ Unverified |
| rsLIQ | unknown | project_anchor | own_supporting | 0 | bsc | unit-391935 | `0xe32b8404bd40fd19a4a781716a04ff38a18bf976` | ❓ Unverified |
| rsLQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391825 | `0xc33af5c6672afa348111003e98ddbecc099f5dc4` | ❓ Unverified |
| rsLQ | unknown | project_anchor | own_supporting | 0 | bsc | unit-391868 | `0x64935bb405da9a761a9c0c13d81c6c91e78d42b7` | ❓ Unverified |
| rsMEW | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391788 | `0x02e4069db36a74bd62d145d88d83967f5db6be88` | ❓ Unverified |
| rsMEW | unknown | project_anchor | own_supporting | 0 | bsc | unit-391928 | `0xd169fa8c9c33bd5bb2cc9bdd7cc3eeabcd1fffbc` | ❓ Unverified |
| rsMIM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391791 | `0x0ef565052882cbb6772a1539c369336def396175` | ❓ Unverified |
| rsMIM | unknown | project_anchor | own_supporting | 0 | bsc | unit-391940 | `0xf9bbf70010f1cbccd82b979829bf08cde6a1315b` | ❓ Unverified |
| rsMIN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391836 | `0xd5732714353845880d42cc8454d8f360bb0d20c3` | ❓ Unverified |
| rsMIN | unknown | project_anchor | own_supporting | 0 | bsc | unit-391853 | `0x0ad817ff926fafc90f7ae6684ba5d81ac6ab5b8c` | ❓ Unverified |
| rsMNT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391847 | `0xf10cf9cb8ded35cbf43babfc9aecf50a05da4cba` | ❓ Unverified |
| rsMNT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391911 | `0xb402f6e4e6df7db4085a520aeb25914af88c1ed1` | ❓ Unverified |
| rsNIGHT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391850 | `0xfd6859deb1d76db10ed462a7eac099ca5adce2df` | ❓ Unverified |
| rsNIGHT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391874 | `0x71bfff96e44534bd1d2a64c922796d3fda07ee7c` | ❓ Unverified |
| rsNIKEPIG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391803 | `0x6281a14b1e599e4aeeb72ce01c388dc7fa495f5e` | ❓ Unverified |
| rsNIKEPIG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391886 | `0x94654ab49c8bcec591aed536eb6e78e693bc1111` | ❓ Unverified |
| rsO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391822 | `0xb951b650daee775d3cd446567d5248c54a7202ed` | ❓ Unverified |
| rsO | unknown | project_anchor | own_supporting | 0 | bsc | unit-391866 | `0x56e241e5da1e06f09a722040ba144b82e24ec4a0` | ❓ Unverified |
| rsOADA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391833 | `0xd3f08c6b01d3aefcf9e457396a9c6727d2e60d7d` | ❓ Unverified |
| rsOADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391861 | `0x35aea122df1c3772b08f8695da3a13eedbd1994b` | ❓ Unverified |
| rsPaideia | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391834 | `0xd53d6c940fbf7c2ba0d92630b29534f2798d6bb8` | ❓ Unverified |
| rsPaideia | unknown | project_anchor | own_supporting | 0 | bsc | unit-391870 | `0x68d847e0aa10a9046d8c88617fc44802323c9a30` | ❓ Unverified |
| rsPUPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391790 | `0x0d7500ba42a548ec6c58c05938851596712040fa` | ❓ Unverified |
| rsPUPS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391896 | `0x98ca5b1e641bcaf06e18f6ff5715c644cd8aeaad` | ❓ Unverified |
| rsQUACKS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391832 | `0xd2443e724e30fc67b1034b3100ec3836f1dbc7da` | ❓ Unverified |
| rsQUACKS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391867 | `0x635ccce00385b88ef177c4ba8f13e803abfc365e` | ❓ Unverified |
| rsRSN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391831 | `0xd207d3228ad136d56523ffbf04ee27062da82884` | ❓ Unverified |
| rsRSN | unknown | project_anchor | own_supporting | 0 | bsc | unit-391856 | `0x1b1c907edf8a563d0a1f702973db6d8c812df77e` | ❓ Unverified |
| rsSigRSV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391844 | `0xe90f17b6d888bc986609eb9607556894a165e2dc` | ❓ Unverified |
| rsSigRSV | unknown | project_anchor | own_supporting | 0 | bsc | unit-391900 | `0xa3e1ba3397fa7388ad11206935b08514dd729264` | ❓ Unverified |
| rsSigUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391843 | `0xe4d00106b3b9c27b59b7f752417d00f6a8517019` | ❓ Unverified |
| rsSigUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-391936 | `0xe5e7a549339644c8df4a69ab493a47fbe41f4372` | ❓ Unverified |
| rsSNEK | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391808 | `0x7fb555a93e8654c3ce113e6ac3c0d7d603c76603` | ❓ Unverified |
| rsSNEK | unknown | project_anchor | own_supporting | 0 | bsc | unit-391937 | `0xe84434a3e8423ff9cdcbc706f89389f2a74b4bee` | ❓ Unverified |
| rsSOADA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391797 | `0x2235683f908e4e5fbd66166fcfcbacfbf03a539c` | ❓ Unverified |
| rsSOADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391938 | `0xeee6ed895475a217135d512e69d26ab939986e33` | ❓ Unverified |
| rsSOCKZ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391819 | `0xa54ab6f54209e135e6a20379674fa0cea10d6fe2` | ❓ Unverified |
| rsSOCKZ | unknown | project_anchor | own_supporting | 0 | bsc | unit-391878 | `0x7b9f7269d1b6c2381f881476c260670baf080f86` | ❓ Unverified |
| rsSPF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391802 | `0x5d4d4e1ab6f66dd2239f3a83412a7e3fcaaee487` | ❓ Unverified |
| rsSPF | unknown | project_anchor | own_supporting | 0 | bsc | unit-391869 | `0x66eeeb4434e28de75b0495c5b48eec581f287ae1` | ❓ Unverified |
| rsSPLASH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391846 | `0xecf8da84942e8084af6c8d0035fb8b004919a200` | ❓ Unverified |
| rsSPLASH | unknown | project_anchor | own_supporting | 0 | bsc | unit-391934 | `0xe2bb0b82b3f6647ca08497b83f3accfdf15648aa` | ❓ Unverified |
| rsSUGAR | unknown | project_anchor | own_supporting | 0 | bsc | unit-391918 | `0xbeb98005288df49f977449303bc549b983df0178` | ❓ Unverified |
| rsSUNDAE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391826 | `0xc60df4e02152670073b6b41eb3a7267e7f3a1aa1` | ❓ Unverified |
| rsSUNDAE | unknown | project_anchor | own_supporting | 0 | bsc | unit-391888 | `0x95b4e19e1038d07a43aa22f1b06b8c0e6705d0f0` | ❓ Unverified |
| rsTroll | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391823 | `0xbbbd56d33cce26cf47cccce9489d0c2fafe8ba50` | ❓ Unverified |
| rsTroll | unknown | project_anchor | own_supporting | 0 | bsc | unit-391859 | `0x2cf7d28159464d64eaaec73fa1164fc9ce6e4380` | ❓ Unverified |
| rsUCGOODS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391827 | `0xc86012da3cb785e629e4cf743398acfc3a727675` | ❓ Unverified |
| rsUCGOODS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391898 | `0x9e1f3176cedf35c620eba545bacee29fcfb3d06f` | ❓ Unverified |
| rsVYFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391813 | `0x916eae0b2514c3057974c74b86626d21e4d31dd6` | ❓ Unverified |
| rsVYFI | unknown | project_anchor | own_supporting | 0 | bsc | unit-391862 | `0x400b9a9628e258e2b3fe2403e10c1f461db6b1bf` | ❓ Unverified |
| rsWALRUS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391845 | `0xea8449729c7f5ff7adff31a43d816183cd01dfcd` | ❓ Unverified |
| rsWALRUS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391904 | `0xa924593a286eb2d46d565e241e47bc8fb8dcd0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d665da1c3d89f0ee5cbcc84cddbdd3360f51b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391796 | `0x1b339754f1ff09ef98deaf6ea1b1c2a86e3df40a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f1809b88f7a60f0d11548609cd8c3c530631a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2744ea5ac9b11cb5e3cd63d3a88e858336aeddc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1757911edefc5cdd2eb1a1aa3e91181935af2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391799 | `0x3189b3d05ddff3c5e9755579830be2cbe512f200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31e8132ef09a0cd2b9059a5fed94174c8fa2e818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x349cdb29dff7cf76c3d55d1cb05f9a4281c703d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x360a0aa3beb7282eb49daae52f3c38dfc268313f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6c5ffced26bfc1a03a74c01f3b0378707e6973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b8b587dcc32df7aa3a07b3c1677b84d22647bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404036cae2c3d5bdd81559ff4936890f2121098e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4544ccc1f0fa15875e04dfc6a01e99cd7fbf23c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb78232e1dec3980fd104f68fbf9e0254ab8cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576a2fb9b99a16f281fffe4f4c170559f187d6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736fe438dcf98e3653151f1349c866baed9a5e4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391809 | `0x8427bb8e57b4d5b517a6d642f4d398a170aa06ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8f44dacda2c009fc0156ad9ed2403e3eb98296` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391812 | `0x90f5aac524f21c669e863c9dccdd90be3f5e70c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391815 | `0x96544b7c03c00da7bfddc560351429ee1376f7d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ea8c7d432b2c4a5095f32a3092a7f513e7c19b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391820 | `0xb7d308f2d4f20e90244e21daf7acc5ef3a2832e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8f29bc61717712373f2864a13a94cd35682bf20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0b10b24e93cc787088f06d34c47a606e60a953` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391828 | `0xc864ddd4ae02d8fea194016e76ff5ab77c8aa769` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391830 | `0xd1a5ee9783b3fc38fff164cce3cc6c419c9d9176` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391835 | `0xd56a632afd90e68a4b3147720b1b4e974bca82ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a0f1e4ff67cbb57dde87b29aa814893aa45902` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391839 | `0xdc775c392479a4a6a69db564bb495d2f0d8ef366` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391840 | `0xdd13f2d5661723041be3353d90170244462254ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb260df29d95fe9b52b644a1ea48a3f7fe77de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8814d2ca53b3548903bd3e1e752c8f979c7e348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13cdb5f7f398f6af2cc3b34eb04476af3488853f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391858 | `0x2ad2474f38572a1b408d42d66f63244a02f406ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42ea1dc6fc04708efd99a862cde215a3fd7f866f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51df5d7d33791573dd3b42c6909cd02423e7712e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391871 | `0x6c0694e681f97f2a3c86202ee9221bdfd6198578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e9b1a7b97e8b9e7ca44ef20573350e83de1d146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391873 | `0x70735aa53b8efff4aa655995df2e6c91fe8d1c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x746498194cd22dec8b508476e87e3b246499413d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77deec937053edc05c54a730f6596acc227b1ae9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391876 | `0x788b22ca96bd6a6f8094e1ec11a82c77b7ecfec4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391890 | `0x96cb997a115b7f57bd144ef4d1e8a68194444e91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391902 | `0xa5e39005da08a7fc872ccdb62f40bff67c3f67cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391908 | `0xae7d4d48939d3edcae1b8103a2e01acd3f51ecea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf8ffafea618aadecd0941a2dfe087a07e4e65bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5b69891a2194a47f5e3fec5c7eb1b17bc7ba9e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391914 | `0xbc152e294a24d777e640e6a491edbd3ca461c51f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391916 | `0xbda81585b76a4b52955e68da77aad4398c1bb2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdab1bcdf6579f6d64268f4fb4dc65364b73777c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc464929d60b8ee4a4512557d37ab61424c94e661` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391924 | `0xce5307d968c5d298239ffb7a6b0abd31aba5712e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce6c3a4d4b0426671bcbfcb2ca9be7fddfb2a027` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391941 | `0xfa0f85673a4a83ea19d09448e02f3f98e82f1a6d` | ❓ Unverified |
| USE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-391842 | `0xe275e4739b5eaafea596b983ab344d34fb0d00c8` | ❓ Unverified |
| USE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-391851 | `0x04458bd623824e7e7df04be619b553fc5f286151` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 32
- Live contracts: 0
- Unknown liveness contracts: 32
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=32

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x08d665da1c3d89f0ee5cbcc84cddbdd3360f51b1` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x1f1809b88f7a60f0d11548609cd8c3c530631a28` | non_address_book | unknown | unknown | unverified | n/a | `0x7b2eb867f96d2ee4b882c2cb9df542a8ceae509c` |
| unverified unclassified | UnnamedContract<br>`0x2744ea5ac9b11cb5e3cd63d3a88e858336aeddc2` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x2c1757911edefc5cdd2eb1a1aa3e91181935af2a` | non_address_book | unknown | unknown | unverified | n/a | `0x7b2eb867f96d2ee4b882c2cb9df542a8ceae509c` |
| unverified unclassified | UnnamedContract<br>`0x31e8132ef09a0cd2b9059a5fed94174c8fa2e818` | non_address_book | unknown | unknown | unverified | n/a | `0x7b2eb867f96d2ee4b882c2cb9df542a8ceae509c` |
| unverified unclassified | UnnamedContract<br>`0x349cdb29dff7cf76c3d55d1cb05f9a4281c703d5` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x360a0aa3beb7282eb49daae52f3c38dfc268313f` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x3a6c5ffced26bfc1a03a74c01f3b0378707e6973` | non_address_book | unknown | unknown | unverified | n/a | `0x7b2eb867f96d2ee4b882c2cb9df542a8ceae509c` |
| unverified unclassified | UnnamedContract<br>`0x3b8b587dcc32df7aa3a07b3c1677b84d22647bb7` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x404036cae2c3d5bdd81559ff4936890f2121098e` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x4544ccc1f0fa15875e04dfc6a01e99cd7fbf23c6` | non_address_book | unknown | unknown | unverified | n/a | `0x7b2eb867f96d2ee4b882c2cb9df542a8ceae509c` |
| unverified unclassified | UnnamedContract<br>`0x4fb78232e1dec3980fd104f68fbf9e0254ab8cc8` | non_address_book | unknown | unknown | unverified | n/a | `0x7b2eb867f96d2ee4b882c2cb9df542a8ceae509c` |
| unverified unclassified | UnnamedContract<br>`0x576a2fb9b99a16f281fffe4f4c170559f187d6e7` | non_address_book | unknown | unknown | unverified | n/a | `0x7b2eb867f96d2ee4b882c2cb9df542a8ceae509c` |
| unverified unclassified | UnnamedContract<br>`0x736fe438dcf98e3653151f1349c866baed9a5e4f` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x8f8f44dacda2c009fc0156ad9ed2403e3eb98296` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x9ea8c7d432b2c4a5095f32a3092a7f513e7c19b1` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0xb8f29bc61717712373f2864a13a94cd35682bf20` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0xbe0b10b24e93cc787088f06d34c47a606e60a953` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0xd5a0f1e4ff67cbb57dde87b29aa814893aa45902` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0xdfb260df29d95fe9b52b644a1ea48a3f7fe77de3` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0xf8814d2ca53b3548903bd3e1e752c8f979c7e348` | non_address_book | unknown | unknown | unverified | n/a | `0x36bd6e4af27055bbc323b328b3261c0c07db4f86` |
| unverified unclassified | UnnamedContract<br>`0x13cdb5f7f398f6af2cc3b34eb04476af3488853f` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0x42ea1dc6fc04708efd99a862cde215a3fd7f866f` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0x51df5d7d33791573dd3b42c6909cd02423e7712e` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0x6e9b1a7b97e8b9e7ca44ef20573350e83de1d146` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0x746498194cd22dec8b508476e87e3b246499413d` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0x77deec937053edc05c54a730f6596acc227b1ae9` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0xaf8ffafea618aadecd0941a2dfe087a07e4e65bb` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0xb5b69891a2194a47f5e3fec5c7eb1b17bc7ba9e1` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0xbdab1bcdf6579f6d64268f4fb4dc65364b73777c` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0xc464929d60b8ee4a4512557d37ab61424c94e661` | non_address_book | unknown | unknown | unverified | n/a | `0x4f68032ebe64b353a22fe1d9b7a6af43dd38bacb` |
| unverified unclassified | UnnamedContract<br>`0xce6c3a4d4b0426671bcbfcb2ca9be7fddfb2a027` | non_address_book | unknown | unknown | unverified | n/a | `0x67f07b63ef7a9165ba5b78544aed9495a541a7f4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 161 |

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
