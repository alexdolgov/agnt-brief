# Agentic Audit Brief: Rosen Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Rosen Bridge (`rosen-bridge`)
- Website: [https://rosen.tech](https://rosen.tech)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 129 unique implementations (129 raw deployments)
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

- rsADA (`0x00ea2a...fd78d7`, chain 1)
- rsADA (`0xc8c652...be5599`, chain 56)
- rsAHT (`0x88cc9d...8d7046`, chain 1)
- rsAHT (`0x092c1a...8c1e7a`, chain 56)
- rsBANA (`0x1ac593...b2dc1b`, chain 1)
- rsBANA (`0x73abfd...aeff39`, chain 56)
- rsBDC (`0x87fc57...2cd5d8`, chain 1)
- rsBDC (`0x182fe4...94818f`, chain 56)
- rsBNB (`0xd8cb11...33253e`, chain 1)
- rsBober (`0xf10e6c...3dad96`, chain 1)
- rsBober (`0x7067bc...462686`, chain 56)
- rsBTC (`0xd753cd...607fbc`, chain 1)
- rsBTC (`0xd6416c...5a65d2`, chain 56)
- rsBTN (`0xbe2fe1...de6083`, chain 1)
- rsBTN (`0x7ffe47...4e6b63`, chain 56)
- rsCOMET (`0x725dcf...4a9d67`, chain 1)
- rsCOMET (`0x0b77ae...c9b3f2`, chain 56)
- rsCOS (`0x119284...3f24f8`, chain 1)
- rsCOS (`0xc72f26...33a07b`, chain 56)
- rsCYPX (`0x3c8050...335611`, chain 1)
- rsCYPX (`0x4cd2f2...15e29b`, chain 56)
- rsDIS (`0x1336d2...143a63`, chain 1)
- rsDIS (`0x8e66f6...2336ea`, chain 56)
- rsDOG (`0x99ebf2...918d06`, chain 1)
- rsDOG (`0x976925...5c613a`, chain 56)
- rsDOGE (`0xcd7d30...d420b1`, chain 1)
- rsDOGE (`0xd101eb...40b45d`, chain 56)
- rsEPOS (`0xb8dc34...bb482c`, chain 1)
- rsEPOS (`0xfc5913...4fb883`, chain 56)
- rsERG (`0x6c060b...b885f6`, chain 1)
- rsERG (`0xe0e8a0...3a78e4`, chain 56)
- rsErgOne (`0x56c33f...df7503`, chain 1)
- rsErgOne (`0xf64df3...370d0b`, chain 56)
- rsETH (`0x35811e...1d5a96`, chain 56)
- rsGAU (`0x785c17...3f020d`, chain 1)
- rsGAU (`0x26c2eb...778401`, chain 56)
- rsGAUC (`0x6f26b2...aae63b`, chain 1)
- rsGAUC (`0x4a448c...fdef18`, chain 56)
- rsGIF (`0xa43d9f...4caaa5`, chain 1)
- rsGIF (`0xd2e5d5...d5c06f`, chain 56)
- rsGIZMO (`0x95bfdd...a489fc`, chain 1)
- rsGIZMO (`0x9739b1...125bd0`, chain 56)
- rsHOSKY (`0x0f0684...f95d43`, chain 1)
- rsHOSKY (`0xaadf6a...786af2`, chain 56)
- rsHUNT (`0xe1db90...a12530`, chain 1)
- rsHUNT (`0x79b5d8...2d465b`, chain 56)
- rsIAG (`0x295b6b...fce83c`, chain 1)
- rsIAG (`0xaef21c...0badc3`, chain 56)
- rsINDY (`0x09a7dc...44ee27`, chain 1)
- rsINDY (`0x8e8958...ea98c0`, chain 56)
- rsLIQ (`0xf13e34...f3b4a9`, chain 1)
- rsLIQ (`0xe32b84...8bf976`, chain 56)
- rsLQ (`0xc33af5...9f5dc4`, chain 1)
- rsLQ (`0x64935b...8d42b7`, chain 56)
- rsMEW (`0x02e406...b6be88`, chain 1)
- rsMEW (`0xd169fa...1fffbc`, chain 56)
- rsMIM (`0x0ef565...396175`, chain 1)
- rsMIM (`0xf9bbf7...a1315b`, chain 56)
- rsMIN (`0xd57327...0d20c3`, chain 1)
- rsMIN (`0x0ad817...ab5b8c`, chain 56)
- rsMNT (`0xf10cf9...da4cba`, chain 1)
- rsMNT (`0xb402f6...8c1ed1`, chain 56)
- rsNIGHT (`0xfd6859...dce2df`, chain 1)
- rsNIGHT (`0x71bfff...07ee7c`, chain 56)
- rsNIKEPIG (`0x6281a1...495f5e`, chain 1)
- rsNIKEPIG (`0x94654a...bc1111`, chain 56)
- rsO (`0xb951b6...7202ed`, chain 1)
- rsO (`0x56e241...4ec4a0`, chain 56)
- rsOADA (`0xd3f08c...e60d7d`, chain 1)
- rsOADA (`0x35aea1...d1994b`, chain 56)
- rsPaideia (`0xd53d6c...8d6bb8`, chain 1)
- rsPaideia (`0x68d847...3c9a30`, chain 56)
- rsPALM (`0x502a64...46e64b`, chain 56)
- rsPUPS (`0x0d7500...2040fa`, chain 1)
- rsPUPS (`0x98ca5b...8aeaad`, chain 56)
- rsQUACKS (`0xd2443e...dbc7da`, chain 1)
- rsQUACKS (`0x635ccc...fc365e`, chain 56)
- rsRSN (`0xd207d3...a82884`, chain 1)
- rsRSN (`0x1b1c90...2df77e`, chain 56)
- rsSigRSV (`0xe90f17...65e2dc`, chain 1)
- rsSigRSV (`0xa3e1ba...729264`, chain 56)
- rsSigUSD (`0xe4d001...517019`, chain 1)
- rsSigUSD (`0xe5e7a5...1f4372`, chain 56)
- rsSNEK (`0x7fb555...c76603`, chain 1)
- rsSNEK (`0xe84434...4b4bee`, chain 56)
- rsSOADA (`0x223568...3a539c`, chain 1)
- rsSOADA (`0xeee6ed...986e33`, chain 56)
- rsSOCKZ (`0xa54ab6...0d6fe2`, chain 1)
- rsSOCKZ (`0x7b9f72...080f86`, chain 56)
- rsSPF (`0x5d4d4e...aee487`, chain 1)
- rsSPF (`0x66eeeb...287ae1`, chain 56)
- rsSPLASH (`0xecf8da...19a200`, chain 1)
- rsSPLASH (`0xe2bb0b...5648aa`, chain 56)
- rsSUGAR (`0x97334b...c27474`, chain 1)
- rsSUGAR (`0xbeb980...df0178`, chain 56)
- rsSUNDAE (`0xc60df4...3a1aa1`, chain 1)
- rsSUNDAE (`0x95b4e1...05d0f0`, chain 56)
- rsTroll (`0xbbbd56...e8ba50`, chain 1)
- rsTroll (`0x2cf7d2...6e4380`, chain 56)
- rsUCGOODS (`0xc86012...727675`, chain 1)
- rsUCGOODS (`0x9e1f31...b3d06f`, chain 56)
- rsVYFI (`0x916eae...d31dd6`, chain 1)
- rsVYFI (`0x400b9a...b6b1bf`, chain 56)
- rsWALRUS (`0xea8449...01dfcd`, chain 1)
- rsWALRUS (`0xa92459...dcd0ff`, chain 56)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 105/129 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 105 own, 24 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 105 of 129 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 99
- Unique implementations: 129
- Raw deployments: 129
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
| rsADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391921 | `0xc8c652...be5599` | ⚠️ Unaudited |
| rsBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391837 | `0xd753cd...607fbc` | ⚠️ Unaudited |
| rsERG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391804 | `0x6c060b...b885f6` | ⚠️ Unaudited |
| rsERG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391933 | `0xe0e8a0...3a78e4` | ⚠️ Unaudited |
| rsPALM | unknown | project_anchor | own_supporting | 0 | bsc | unit-391865 | `0x502a64...46e64b` | ⚠️ Unaudited |
| rsSUGAR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391816 | `0x97334b...c27474` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (123)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| rsADA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391787 | `0x00ea2a...fd78d7` | ❓ Unverified |
| rsAHT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391811 | `0x88cc9d...8d7046` | ❓ Unverified |
| rsAHT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391852 | `0x092c1a...8c1e7a` | ❓ Unverified |
| rsBANA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391795 | `0x1ac593...b2dc1b` | ❓ Unverified |
| rsBANA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391875 | `0x73abfd...aeff39` | ❓ Unverified |
| rsBDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391810 | `0x87fc57...2cd5d8` | ❓ Unverified |
| rsBDC | unknown | project_anchor | own_supporting | 0 | bsc | unit-391855 | `0x182fe4...94818f` | ❓ Unverified |
| rsBNB | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391838 | `0xd8cb11...33253e` | ❓ Unverified |
| rsBober | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391848 | `0xf10e6c...3dad96` | ❓ Unverified |
| rsBober | unknown | project_anchor | own_supporting | 0 | bsc | unit-391872 | `0x7067bc...462686` | ❓ Unverified |
| rsBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-391932 | `0xd6416c...5a65d2` | ❓ Unverified |
| rsBTN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391824 | `0xbe2fe1...de6083` | ❓ Unverified |
| rsBTN | unknown | project_anchor | own_supporting | 0 | bsc | unit-391880 | `0x7ffe47...4e6b63` | ❓ Unverified |
| rsCOMET | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391806 | `0x725dcf...4a9d67` | ❓ Unverified |
| rsCOMET | unknown | project_anchor | own_supporting | 0 | bsc | unit-391854 | `0x0b77ae...c9b3f2` | ❓ Unverified |
| rsCOS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391793 | `0x119284...3f24f8` | ❓ Unverified |
| rsCOS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391919 | `0xc72f26...33a07b` | ❓ Unverified |
| rsCYPX | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391800 | `0x3c8050...335611` | ❓ Unverified |
| rsCYPX | unknown | project_anchor | own_supporting | 0 | bsc | unit-391864 | `0x4cd2f2...15e29b` | ❓ Unverified |
| rsDIS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391794 | `0x1336d2...143a63` | ❓ Unverified |
| rsDIS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391882 | `0x8e66f6...2336ea` | ❓ Unverified |
| rsDOG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391817 | `0x99ebf2...918d06` | ❓ Unverified |
| rsDOG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391894 | `0x976925...5c613a` | ❓ Unverified |
| rsDOGE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391829 | `0xcd7d30...d420b1` | ❓ Unverified |
| rsDOGE | unknown | project_anchor | own_supporting | 0 | bsc | unit-391926 | `0xd101eb...40b45d` | ❓ Unverified |
| rsEPOS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391821 | `0xb8dc34...bb482c` | ❓ Unverified |
| rsEPOS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391942 | `0xfc5913...4fb883` | ❓ Unverified |
| rsErgOne | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391801 | `0x56c33f...df7503` | ❓ Unverified |
| rsErgOne | unknown | project_anchor | own_supporting | 0 | bsc | unit-391939 | `0xf64df3...370d0b` | ❓ Unverified |
| rsETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-391860 | `0x35811e...1d5a96` | ❓ Unverified |
| rsGAU | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391807 | `0x785c17...3f020d` | ❓ Unverified |
| rsGAU | unknown | project_anchor | own_supporting | 0 | bsc | unit-391857 | `0x26c2eb...778401` | ❓ Unverified |
| rsGAUC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391805 | `0x6f26b2...aae63b` | ❓ Unverified |
| rsGAUC | unknown | project_anchor | own_supporting | 0 | bsc | unit-391863 | `0x4a448c...fdef18` | ❓ Unverified |
| rsGIF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391818 | `0xa43d9f...4caaa5` | ❓ Unverified |
| rsGIF | unknown | project_anchor | own_supporting | 0 | bsc | unit-391930 | `0xd2e5d5...d5c06f` | ❓ Unverified |
| rsGIZMO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391814 | `0x95bfdd...a489fc` | ❓ Unverified |
| rsGIZMO | unknown | project_anchor | own_supporting | 0 | bsc | unit-391892 | `0x9739b1...125bd0` | ❓ Unverified |
| rsHOSKY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391792 | `0x0f0684...f95d43` | ❓ Unverified |
| rsHOSKY | unknown | project_anchor | own_supporting | 0 | bsc | unit-391906 | `0xaadf6a...786af2` | ❓ Unverified |
| rsHUNT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391841 | `0xe1db90...a12530` | ❓ Unverified |
| rsHUNT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391877 | `0x79b5d8...2d465b` | ❓ Unverified |
| rsIAG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391798 | `0x295b6b...fce83c` | ❓ Unverified |
| rsIAG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391909 | `0xaef21c...0badc3` | ❓ Unverified |
| rsINDY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391789 | `0x09a7dc...44ee27` | ❓ Unverified |
| rsINDY | unknown | project_anchor | own_supporting | 0 | bsc | unit-391884 | `0x8e8958...ea98c0` | ❓ Unverified |
| rsLIQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391849 | `0xf13e34...f3b4a9` | ❓ Unverified |
| rsLIQ | unknown | project_anchor | own_supporting | 0 | bsc | unit-391935 | `0xe32b84...8bf976` | ❓ Unverified |
| rsLQ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391825 | `0xc33af5...9f5dc4` | ❓ Unverified |
| rsLQ | unknown | project_anchor | own_supporting | 0 | bsc | unit-391868 | `0x64935b...8d42b7` | ❓ Unverified |
| rsMEW | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391788 | `0x02e406...b6be88` | ❓ Unverified |
| rsMEW | unknown | project_anchor | own_supporting | 0 | bsc | unit-391928 | `0xd169fa...1fffbc` | ❓ Unverified |
| rsMIM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391791 | `0x0ef565...396175` | ❓ Unverified |
| rsMIM | unknown | project_anchor | own_supporting | 0 | bsc | unit-391940 | `0xf9bbf7...a1315b` | ❓ Unverified |
| rsMIN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391836 | `0xd57327...0d20c3` | ❓ Unverified |
| rsMIN | unknown | project_anchor | own_supporting | 0 | bsc | unit-391853 | `0x0ad817...ab5b8c` | ❓ Unverified |
| rsMNT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391847 | `0xf10cf9...da4cba` | ❓ Unverified |
| rsMNT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391911 | `0xb402f6...8c1ed1` | ❓ Unverified |
| rsNIGHT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391850 | `0xfd6859...dce2df` | ❓ Unverified |
| rsNIGHT | unknown | project_anchor | own_supporting | 0 | bsc | unit-391874 | `0x71bfff...07ee7c` | ❓ Unverified |
| rsNIKEPIG | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391803 | `0x6281a1...495f5e` | ❓ Unverified |
| rsNIKEPIG | unknown | project_anchor | own_supporting | 0 | bsc | unit-391886 | `0x94654a...bc1111` | ❓ Unverified |
| rsO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391822 | `0xb951b6...7202ed` | ❓ Unverified |
| rsO | unknown | project_anchor | own_supporting | 0 | bsc | unit-391866 | `0x56e241...4ec4a0` | ❓ Unverified |
| rsOADA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391833 | `0xd3f08c...e60d7d` | ❓ Unverified |
| rsOADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391861 | `0x35aea1...d1994b` | ❓ Unverified |
| rsPaideia | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391834 | `0xd53d6c...8d6bb8` | ❓ Unverified |
| rsPaideia | unknown | project_anchor | own_supporting | 0 | bsc | unit-391870 | `0x68d847...3c9a30` | ❓ Unverified |
| rsPUPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391790 | `0x0d7500...2040fa` | ❓ Unverified |
| rsPUPS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391896 | `0x98ca5b...8aeaad` | ❓ Unverified |
| rsQUACKS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391832 | `0xd2443e...dbc7da` | ❓ Unverified |
| rsQUACKS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391867 | `0x635ccc...fc365e` | ❓ Unverified |
| rsRSN | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391831 | `0xd207d3...a82884` | ❓ Unverified |
| rsRSN | unknown | project_anchor | own_supporting | 0 | bsc | unit-391856 | `0x1b1c90...2df77e` | ❓ Unverified |
| rsSigRSV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391844 | `0xe90f17...65e2dc` | ❓ Unverified |
| rsSigRSV | unknown | project_anchor | own_supporting | 0 | bsc | unit-391900 | `0xa3e1ba...729264` | ❓ Unverified |
| rsSigUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391843 | `0xe4d001...517019` | ❓ Unverified |
| rsSigUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-391936 | `0xe5e7a5...1f4372` | ❓ Unverified |
| rsSNEK | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391808 | `0x7fb555...c76603` | ❓ Unverified |
| rsSNEK | unknown | project_anchor | own_supporting | 0 | bsc | unit-391937 | `0xe84434...4b4bee` | ❓ Unverified |
| rsSOADA | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391797 | `0x223568...3a539c` | ❓ Unverified |
| rsSOADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-391938 | `0xeee6ed...986e33` | ❓ Unverified |
| rsSOCKZ | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391819 | `0xa54ab6...0d6fe2` | ❓ Unverified |
| rsSOCKZ | unknown | project_anchor | own_supporting | 0 | bsc | unit-391878 | `0x7b9f72...080f86` | ❓ Unverified |
| rsSPF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391802 | `0x5d4d4e...aee487` | ❓ Unverified |
| rsSPF | unknown | project_anchor | own_supporting | 0 | bsc | unit-391869 | `0x66eeeb...287ae1` | ❓ Unverified |
| rsSPLASH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391846 | `0xecf8da...19a200` | ❓ Unverified |
| rsSPLASH | unknown | project_anchor | own_supporting | 0 | bsc | unit-391934 | `0xe2bb0b...5648aa` | ❓ Unverified |
| rsSUGAR | unknown | project_anchor | own_supporting | 0 | bsc | unit-391918 | `0xbeb980...df0178` | ❓ Unverified |
| rsSUNDAE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391826 | `0xc60df4...3a1aa1` | ❓ Unverified |
| rsSUNDAE | unknown | project_anchor | own_supporting | 0 | bsc | unit-391888 | `0x95b4e1...05d0f0` | ❓ Unverified |
| rsTroll | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391823 | `0xbbbd56...e8ba50` | ❓ Unverified |
| rsTroll | unknown | project_anchor | own_supporting | 0 | bsc | unit-391859 | `0x2cf7d2...6e4380` | ❓ Unverified |
| rsUCGOODS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391827 | `0xc86012...727675` | ❓ Unverified |
| rsUCGOODS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391898 | `0x9e1f31...b3d06f` | ❓ Unverified |
| rsVYFI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391813 | `0x916eae...d31dd6` | ❓ Unverified |
| rsVYFI | unknown | project_anchor | own_supporting | 0 | bsc | unit-391862 | `0x400b9a...b6b1bf` | ❓ Unverified |
| rsWALRUS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391845 | `0xea8449...01dfcd` | ❓ Unverified |
| rsWALRUS | unknown | project_anchor | own_supporting | 0 | bsc | unit-391904 | `0xa92459...dcd0ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391796 | `0x1b3397...3df40a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391799 | `0x3189b3...12f200` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391809 | `0x8427bb...aa06ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391812 | `0x90f5aa...5e70c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391815 | `0x96544b...76f7d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391820 | `0xb7d308...2832e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391828 | `0xc864dd...8aa769` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391830 | `0xd1a5ee...9d9176` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391835 | `0xd56a63...ca82ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391839 | `0xdc775c...8ef366` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-391840 | `0xdd13f2...2254ce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391858 | `0x2ad247...f406ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391871 | `0x6c0694...198578` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391873 | `0x70735a...8d1c50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391876 | `0x788b22...ecfec4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391890 | `0x96cb99...444e91` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391902 | `0xa5e390...3f67cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391908 | `0xae7d4d...51ecea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391914 | `0xbc152e...61c51f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391916 | `0xbda815...1bb2d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391924 | `0xce5307...a5712e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-391941 | `0xfa0f85...2f1a6d` | ❓ Unverified |
| USE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-391842 | `0xe275e4...0d00c8` | ❓ Unverified |
| USE | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-391851 | `0x04458b...286151` | ❓ Unverified |

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
| needs_review | 129 |

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
