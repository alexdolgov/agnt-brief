# Agentic Audit Brief: Pods Finance

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

- Project: Pods Finance (`pods-finance`)
- Website: [https://yield.pods.finance](https://yield.pods.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, polygon
- Contract surface: 170 unique implementations (170 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $387,920.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Pods Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xe4da64757b2b29db43429a52caf7ad884c76f8b0`, chain 1)
- UnnamedContract (`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`, chain 137)
- UnnamedContract (`0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`, chain 137)
- UnnamedContract (`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`, chain 137)
- UnnamedContract (`0x3294027e4849b1b3155f8b0477bfa37994bb322f`, chain 137)
- UnnamedContract (`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`, chain 137)
- UnnamedContract (`0x6e20f296e79cc7a62737fedcf9a87fa32f373864`, chain 137)
- UnnamedContract (`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`, chain 137)
- UnnamedContract (`0x8f3cf7ad23cd3cadbd9735aff958023239c6a063`, chain 137)
- UnnamedContract (`0x9719d867a500ef117cc201206b8ab51e794d3f82`, chain 137)
- UnnamedContract (`0xabd65b1b125e12abb2f7bdeae57e62a6272e8797`, chain 137)
- UnnamedContract (`0xe0b22e0037b130a9f56bbb537684e6fa18192341`, chain 137)
- UnnamedContract (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- UnnamedContract (`0x84601612702c7699c09bbf3c033747709f529008`, chain 42161)
- UnnamedContract (`0xff970a61a04b1ca14834a43f5de4533ebddb5cc8`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 153 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 17 of 170 unique; 153 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 167
- Unique implementations: 170
- Raw deployments: 170
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ETHoriaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fe4b38520e856921978715c8579d2d7a4d2274f` | ⚠️ Unaudited |
| FUDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287f941ab4b5aadad2f13f9363fcec8ee312a969` | ⚠️ Unaudited |
| STETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x463f9ed5e11764eb9029762011a03643603ad879` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (167)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e53949729f67cd0fecc8a673671d9a362238b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6e8242fcb9445f7cf27ec9a2998a7c14638d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ff98eb7ec681a7dbf7e2b2c3589e79d5ce11e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5098243a89d446ca4e30f45065744ac108b1f62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699f2144f6fb54e6e9db37306f2e304d662e15a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391048 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b494573808f2a1fecab1f40569756ca4593981e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83256a064d8ac5327f6248d8ce13404681387285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x893c2b7658dd525af3f78a02e1ec1fb52d861a3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bf2ae0c5fd85ac69b25a22f4a58d528414f03ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91e56246f21286c5395800c8681f080c5a63528e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391049 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa597ef1ea59a90bee07eb4b2f0e72b6ce55d07e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc286679eb0b6b3346a9da61ca48e682fa53a721d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc574a70638ff5428122aa6e709ca2b30e212d9b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb674df88ec8103fef28d1995efd400905c6adf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda9843ec78b91f5874c75eb2afe94a756f3abcf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391052 | `0xe4da64757b2b29db43429a52caf7ad884c76f8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c0954c5f6f011b0907d55d97b2d3a32ca5904c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7c94d68c5f7656a6f7373f588aaf6483cc9e497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x014cfefff908a4fd37a295de0702460d420246e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0483409d7b03778bc73f41e37338c4c17e2060f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06b49dac36ddfcd92fd6c226f88be6b2e14e4b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x089e19907756325c336156d29e3a47f4098e1290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08ffffb55d21101187ef610f8d6a0c855b6bf804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ceb01d30dd8852c086947fd507b8dfc4a0d033c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391055 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1129ff6adb5b5db2f8dc27c009abd416478a92c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x138b9dc09f8d77c3a6413d97fa6b6e9554a5ae9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14f692138ede54b727fc4b2307caf0f1c191fc9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1738ab7505f7bfcfd169ff05797c9d73913cd75e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18ac88249fa185d19e40f7b95267acdd8c76e916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19cd96c3412e42ee1cabd023e443aede7d209826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19dcf7aafba778200a69c342654aa8bce656a57f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391056 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ce7d58c68fec355d5e00cc50b6dfb6fbddfe30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f4cfeea4d651828b4f0408ed1ddab663a9eabf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21ee0e463984ac0f8bd9a5a13e718f06422c6232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25d89ec45827c6350db63bcbda79102584c0250f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391057 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2971c946d793f3b846a5aec2ac9ec945763a82a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ad69e956cd1ee431baaa1383aa2d5b69965f5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b6015ba95a620ab99eaa8e9f7c75d7ce9349650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2dd4e10460519e16a852f739dabc29412eb94432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30ff9e805dfb63a14ea75b216112a0f568664359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3177d77699358e8015efe1ffcb68a3c4aca35547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31dd25fb388ce5b82c702d361162083c9ff87c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3285f62675da0d7d97465be2c266f5c72956f887` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391058 | `0x3294027e4849b1b3155f8b0477bfa37994bb322f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x343e548a47c386c73fa8738bc3488f32b0bbbeec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x345cf1aa289cd4c3279aba5962861f17dfa917e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34ebac9a913e7dac3f7628fd95343961fa0ad4f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x351c32fcbde58276e399f1275ccc8768cf8f89b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35601f9c2458172d8d9f4b3fa2cc33620af632f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b189519ebd791d743f1ad08a7941eb6a959ecaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b2f5264ef121f7e269be54b2a75d3e1c04b5430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b8217306b8072d5f8846822ea6ecafe79e7868c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3dea6c013b24ac91c52f0ed29d2482d4009689f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43210484d496ff361282f5bfffd45b6b48759191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43b8be4d18d045bb8ee7e6bbbca383850573ec35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44af24961f2078d7f226a2aaf11a78cf2fe14019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x472772329260222ec884fa21c152e0351f4612dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4add3c66196945ad9c9b35bf8391d145a65e3337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bcd6f7e0a049de43d8973357bf11ac3ee69f557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f232fa542da4ea037c81a1410ee0ca76ae671fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x518eb9e3061892f3a0c2acf7c252684238e1421b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51b302927fa2580057915f4cee7069f0b4b370d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391059 | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x566d1cf5f4ea51a0f0b6ff375ebaa97d9fed8ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6038c646006a079c14d147ebbfd467a7d2b3a923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6547be664c4428dfff9c0da4f69bee8fd87534dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67e7f398bbfc30a90ad30ac902b0e21f6baef6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x686690871fafcced192c668624f1053d5c0b6b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bee1560143e6b021d8bd48ebdf9e2e9f8c48131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d7074f3c7dd4bc5355dd3930d5c82784761397a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391060 | `0x6e20f296e79cc7a62737fedcf9a87fa32f373864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70a21cbb30de94e21a84a62f5f060c2cd4daf824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x712a6e19dc4e709e025ddb22c030f51cdefdbc43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73ccc2ca3ca703f626c1062dac8acc32cac27536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77de009b4a34e46e54a632d71619db368b3e8900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b4401fd0070ca78c7c93aa335d6000ee0d629f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391061 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f105cc52d66d8664cddc935f8a8ae7941032d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8096bfe4e20eac0e81d44daa6ac6a54b30483eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87ecc7c182f9f0e25049accec06441ae31949e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c9ac1a57891c9c2ee9ae39ca7c1dc5d70e0d59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e4912b9e87e4f38c8bee54e6fd44eb790a2364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391062 | `0x8f3cf7ad23cd3cadbd9735aff958023239c6a063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91e7be588f5bc03e48f59c8318c43082e4a4601a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94499d4b067ac4f7b784f52e63a7d9e1b4ec77d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94ea57a96e02f2f1b3dcb18105cd6cfa36fb8ab2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391063 | `0x9719d867a500ef117cc201206b8ab51e794d3f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9772cf6a5035d052ee0af3b9542ec3b48ef28d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a6e00d8ae12e186445583428e8e3eaba27b4a61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b8af301c8dc9de46744085ae2e2277d6e3718e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fe61046fbdab22cf595830616663c6260bce0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3d4c0d5a843b3f805d8d6e2eb3f407bcfb9d95a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6198a4eea3fa098968623c8ec31cf78dd293b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7b1df479a2134d75925472979fa9464ef601dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa93075e581f6d4045c2c4f6ed7356b4cb9b14e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab5627f4ecb905ce535ecf704ebb1dc9405d66ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab92406a84af6e25649912008c502776cd6c664b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391064 | `0xabd65b1b125e12abb2f7bdeae57e62a6272e8797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac1a827a0a265a4d263241175acd47bc86aee1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xacee72f1648ffb0a5a83eb11af85aa1671c6edcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad14606fa3b90fa7ce835983630bd12f615f4eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae3aa05186f9ed917383ef1671260ee40ae7bee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb01c49e0297701f448a004b6564f53c3472c8adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1d65dc83cf24310448736bab22658c8d20874f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2bc64a33de0e478a3305af9bd1a99f4194a6335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7c0572852586a285c5b41f399279a500158c527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7def03006ec72ef409c41faee2619e4bfdb547f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb649410bf2f43f7e45352f86d527dd2b3fa137f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf2255fdd3d5df049a8abc33c1550c5c1f14cb7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbffdd9e3981e3cd03f8769e10f31bc5fadcb5f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc239993c7e65c1365b191c1b37e248291c872fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc33531a174b64e9dd4ae7d7e38201625a540a31c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4bdb93609bc284d614cbc572e8ff20ca14db980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4db4e9fc5e872d3a1737e51d459f0e10840c13e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc51e13fdcefc232bfc4741b2c0c24483110b5028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc660d749cc7738466a5e6c932e2b2010022fd052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6ab9cdf5aafda905d9e2be0692e5f575fcdc849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc872bc8370d598865745666caa0cfea17aaf1388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8a4b0d57c202ca8d34bf8c9255dcfa34090f2b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf1f2cabaf6f6b2dcb4ff5d8f1188d6eb4fc01ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd24854a814948c54bc73463896f63f66e827ca60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5b171e6bfc34b7ddb0855b040421c2139f0a27c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc018f92ac2ee0dafc7635e6aae49f19a09d173e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc0da94a8bb331131fac5539e392503b46cc387e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc7a3d9b296f8fe9e29e729452eda374af4adb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddad0500f8e49d3cc1c3a34dbf0cff2ffd7f52ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-391065 | `0xe0b22e0037b130a9f56bbb537684e6fa18192341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe12e40438f1beb3b43aa685b2799740d7d150d10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe14fe7e317c93a06bbb9e1f2c8c177c95d33a925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3798ad8a3818c29124a41759b9474a81609a5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe38485d2ece760a67df17774d9f6e241a3134a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3cb2851693559cf0ba2b61626f2cfa4d1e67ee6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe488f2573e0cdef742bb918ddd3528013cb80750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeeed297f3ad81d51ce06ca7044bd6ad533c5851b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0979c4e37e7547ac2e1a5c84f97f614fe03e4c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf271d5564c9645898e2e25a60c4cd7518555715a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4c7fca4dddec4b5b0ae86713d87f98f09550d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5196b2dcd6c801905f67cdb5d54f1f536ca11b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5354400c15674357becd9b03d0b755b1112e633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfefebbf766ae0cb060c5a572cc73aa58e9c6da88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0eee349a18defaeeb5397527f67dc0a7da11bf94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b12a31edab24a2b4b7ed354c287e2be258ddd77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55b8f427057437bf4a09a4e0ce17ec7a46d82c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x624e47cc9a1e39b3dd7d3f33f00323b7263a2fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62fafd02d0957fdcbf91d1342b3ece8821297bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6575e244850d82f9c263838ecd64e2356c9d4ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ec1bbad3c6ed2a29441072f8bf6902e47a75f32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391066 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391067 | `0x84601612702c7699c09bbf3c033747709f529008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90b064cea091e8862b50fa94d87867d7e03710b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa79a9049358d9861b6dc4dff68c79db4a9a39e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabfce3177d13a6653c6777323ae20bab86a858c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5ddfa66f4181c5d00287e3180b7a56db4cc1846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc952383edbc880bec12f16e09bd18eba5724284b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd31e51c3a1b8f3844fe1cdeeb40d6780cf5e6279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcb56c5b7e831811dfb3d2ac2cbbabb7414552a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6b6f6d20e40511b792704311fa6ffb53181f89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9fba4f30a142900add81ef26df309b6c0dc75e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb624b9ecf11c02c29f2a86a79763854de598120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefafa749dc0ef157ff8931a4ad73ef8a607cb80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf378794d7e6062ee64e53c8be33e9b16d5a034dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391068 | `0xff970a61a04b1ca14834a43f5de4533ebddb5cc8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 150
- Live contracts: 0
- Unknown liveness contracts: 150
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=150

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0e53949729f67cd0fecc8a673671d9a362238b5a` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x0f6e8242fcb9445f7cf27ec9a2998a7c14638d95` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x43ff98eb7ec681a7dbf7e2b2c3589e79d5ce11e3` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x5098243a89d446ca4e30f45065744ac108b1f62b` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x699f2144f6fb54e6e9db37306f2e304d662e15a9` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x6b494573808f2a1fecab1f40569756ca4593981e` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x83256a064d8ac5327f6248d8ce13404681387285` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x893c2b7658dd525af3f78a02e1ec1fb52d861a3f` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x8bf2ae0c5fd85ac69b25a22f4a58d528414f03ad` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x91e56246f21286c5395800c8681f080c5a63528e` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0xa597ef1ea59a90bee07eb4b2f0e72b6ce55d07e1` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0xc286679eb0b6b3346a9da61ca48e682fa53a721d` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0xc574a70638ff5428122aa6e709ca2b30e212d9b4` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0xcb674df88ec8103fef28d1995efd400905c6adf6` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0xda9843ec78b91f5874c75eb2afe94a756f3abcf3` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0xe5c0954c5f6f011b0907d55d97b2d3a32ca5904c` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0xe7c94d68c5f7656a6f7373f588aaf6483cc9e497` | non_address_book | unknown | unknown | unverified | n/a | `0x922fd63db4075e60a548633bc142b7214867573e` |
| unverified unclassified | UnnamedContract<br>`0x014cfefff908a4fd37a295de0702460d420246e6` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x0483409d7b03778bc73f41e37338c4c17e2060f1` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x06b49dac36ddfcd92fd6c226f88be6b2e14e4b96` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x089e19907756325c336156d29e3a47f4098e1290` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x08ffffb55d21101187ef610f8d6a0c855b6bf804` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x0ceb01d30dd8852c086947fd507b8dfc4a0d033c` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x1129ff6adb5b5db2f8dc27c009abd416478a92c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x138b9dc09f8d77c3a6413d97fa6b6e9554a5ae9c` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x14f692138ede54b727fc4b2307caf0f1c191fc9f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x1738ab7505f7bfcfd169ff05797c9d73913cd75e` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x18ac88249fa185d19e40f7b95267acdd8c76e916` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x19cd96c3412e42ee1cabd023e443aede7d209826` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x19dcf7aafba778200a69c342654aa8bce656a57f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x1ce7d58c68fec355d5e00cc50b6dfb6fbddfe30e` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x1f4cfeea4d651828b4f0408ed1ddab663a9eabf1` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x21ee0e463984ac0f8bd9a5a13e718f06422c6232` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x25d89ec45827c6350db63bcbda79102584c0250f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x2971c946d793f3b846a5aec2ac9ec945763a82a9` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x2ad69e956cd1ee431baaa1383aa2d5b69965f5bc` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x2b6015ba95a620ab99eaa8e9f7c75d7ce9349650` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x2dd4e10460519e16a852f739dabc29412eb94432` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x30ff9e805dfb63a14ea75b216112a0f568664359` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x3177d77699358e8015efe1ffcb68a3c4aca35547` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x31dd25fb388ce5b82c702d361162083c9ff87c5e` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x3285f62675da0d7d97465be2c266f5c72956f887` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x343e548a47c386c73fa8738bc3488f32b0bbbeec` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x345cf1aa289cd4c3279aba5962861f17dfa917e7` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x34ebac9a913e7dac3f7628fd95343961fa0ad4f3` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x351c32fcbde58276e399f1275ccc8768cf8f89b8` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x35601f9c2458172d8d9f4b3fa2cc33620af632f3` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x3b189519ebd791d743f1ad08a7941eb6a959ecaf` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x3b2f5264ef121f7e269be54b2a75d3e1c04b5430` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x3b8217306b8072d5f8846822ea6ecafe79e7868c` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x3dea6c013b24ac91c52f0ed29d2482d4009689f4` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x43210484d496ff361282f5bfffd45b6b48759191` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x43b8be4d18d045bb8ee7e6bbbca383850573ec35` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x44af24961f2078d7f226a2aaf11a78cf2fe14019` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x472772329260222ec884fa21c152e0351f4612dd` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x4add3c66196945ad9c9b35bf8391d145a65e3337` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x4bcd6f7e0a049de43d8973357bf11ac3ee69f557` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x4f232fa542da4ea037c81a1410ee0ca76ae671fd` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x518eb9e3061892f3a0c2acf7c252684238e1421b` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x51b302927fa2580057915f4cee7069f0b4b370d6` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x566d1cf5f4ea51a0f0b6ff375ebaa97d9fed8ed9` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x6038c646006a079c14d147ebbfd467a7d2b3a923` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x6547be664c4428dfff9c0da4f69bee8fd87534dc` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x67e7f398bbfc30a90ad30ac902b0e21f6baef6da` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x686690871fafcced192c668624f1053d5c0b6b6f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x6bee1560143e6b021d8bd48ebdf9e2e9f8c48131` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x6d7074f3c7dd4bc5355dd3930d5c82784761397a` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x70a21cbb30de94e21a84a62f5f060c2cd4daf824` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x712a6e19dc4e709e025ddb22c030f51cdefdbc43` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x73ccc2ca3ca703f626c1062dac8acc32cac27536` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x77de009b4a34e46e54a632d71619db368b3e8900` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x7b4401fd0070ca78c7c93aa335d6000ee0d629f7` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x7f105cc52d66d8664cddc935f8a8ae7941032d18` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x8096bfe4e20eac0e81d44daa6ac6a54b30483eed` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x87ecc7c182f9f0e25049accec06441ae31949e0e` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x8c9ac1a57891c9c2ee9ae39ca7c1dc5d70e0d59c` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x8e4912b9e87e4f38c8bee54e6fd44eb790a2364f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x91e7be588f5bc03e48f59c8318c43082e4a4601a` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x94499d4b067ac4f7b784f52e63a7d9e1b4ec77d0` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x94ea57a96e02f2f1b3dcb18105cd6cfa36fb8ab2` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x9772cf6a5035d052ee0af3b9542ec3b48ef28d49` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x9a6e00d8ae12e186445583428e8e3eaba27b4a61` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x9b8af301c8dc9de46744085ae2e2277d6e3718e0` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x9fe61046fbdab22cf595830616663c6260bce0ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xa3d4c0d5a843b3f805d8d6e2eb3f407bcfb9d95a` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xa6198a4eea3fa098968623c8ec31cf78dd293b11` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xa7b1df479a2134d75925472979fa9464ef601dfb` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xaa93075e581f6d4045c2c4f6ed7356b4cb9b14e1` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xab5627f4ecb905ce535ecf704ebb1dc9405d66ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xab92406a84af6e25649912008c502776cd6c664b` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xac1a827a0a265a4d263241175acd47bc86aee1b4` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xacee72f1648ffb0a5a83eb11af85aa1671c6edcb` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xad14606fa3b90fa7ce835983630bd12f615f4eec` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xae3aa05186f9ed917383ef1671260ee40ae7bee1` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xb01c49e0297701f448a004b6564f53c3472c8adc` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xb1d65dc83cf24310448736bab22658c8d20874f3` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xb2bc64a33de0e478a3305af9bd1a99f4194a6335` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xb7c0572852586a285c5b41f399279a500158c527` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xb7def03006ec72ef409c41faee2619e4bfdb547f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xbb649410bf2f43f7e45352f86d527dd2b3fa137f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xbf2255fdd3d5df049a8abc33c1550c5c1f14cb7c` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xbffdd9e3981e3cd03f8769e10f31bc5fadcb5f09` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc239993c7e65c1365b191c1b37e248291c872fbe` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc33531a174b64e9dd4ae7d7e38201625a540a31c` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc4bdb93609bc284d614cbc572e8ff20ca14db980` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc4db4e9fc5e872d3a1737e51d459f0e10840c13e` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc51e13fdcefc232bfc4741b2c0c24483110b5028` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc660d749cc7738466a5e6c932e2b2010022fd052` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc6ab9cdf5aafda905d9e2be0692e5f575fcdc849` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc872bc8370d598865745666caa0cfea17aaf1388` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xc8a4b0d57c202ca8d34bf8c9255dcfa34090f2b9` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xcf1f2cabaf6f6b2dcb4ff5d8f1188d6eb4fc01ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xd24854a814948c54bc73463896f63f66e827ca60` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xd5b171e6bfc34b7ddb0855b040421c2139f0a27c` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xdc018f92ac2ee0dafc7635e6aae49f19a09d173e` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xdc0da94a8bb331131fac5539e392503b46cc387e` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xdc7a3d9b296f8fe9e29e729452eda374af4adb5f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xddad0500f8e49d3cc1c3a34dbf0cff2ffd7f52ac` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xe12e40438f1beb3b43aa685b2799740d7d150d10` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xe14fe7e317c93a06bbb9e1f2c8c177c95d33a925` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xe3798ad8a3818c29124a41759b9474a81609a5f2` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xe38485d2ece760a67df17774d9f6e241a3134a03` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xe3cb2851693559cf0ba2b61626f2cfa4d1e67ee6` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xe488f2573e0cdef742bb918ddd3528013cb80750` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xeeed297f3ad81d51ce06ca7044bd6ad533c5851b` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xf0979c4e37e7547ac2e1a5c84f97f614fe03e4c2` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xf271d5564c9645898e2e25a60c4cd7518555715a` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xf4c7fca4dddec4b5b0ae86713d87f98f09550d3f` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xf5196b2dcd6c801905f67cdb5d54f1f536ca11b3` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xf5354400c15674357becd9b03d0b755b1112e633` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0xfefebbf766ae0cb060c5a572cc73aa58e9c6da88` | non_address_book | unknown | unknown | unverified | n/a | `0x7d9c5bf3e44751cd4b249f3036b5206aaaf67688` |
| unverified unclassified | UnnamedContract<br>`0x0eee349a18defaeeb5397527f67dc0a7da11bf94` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0x1b12a31edab24a2b4b7ed354c287e2be258ddd77` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0x55b8f427057437bf4a09a4e0ce17ec7a46d82c60` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0x624e47cc9a1e39b3dd7d3f33f00323b7263a2fe4` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0x62fafd02d0957fdcbf91d1342b3ece8821297bf8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0x6575e244850d82f9c263838ecd64e2356c9d4ae3` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0x7ec1bbad3c6ed2a29441072f8bf6902e47a75f32` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0x90b064cea091e8862b50fa94d87867d7e03710b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xa79a9049358d9861b6dc4dff68c79db4a9a39e38` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xabfce3177d13a6653c6777323ae20bab86a858c0` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xb5ddfa66f4181c5d00287e3180b7a56db4cc1846` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xc952383edbc880bec12f16e09bd18eba5724284b` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xd31e51c3a1b8f3844fe1cdeeb40d6780cf5e6279` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xdcb56c5b7e831811dfb3d2ac2cbbabb7414552a7` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xe6b6f6d20e40511b792704311fa6ffb53181f89a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xe9fba4f30a142900add81ef26df309b6c0dc75e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xeb624b9ecf11c02c29f2a86a79763854de598120` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xefafa749dc0ef157ff8931a4ad73ef8a607cb80a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |
| unverified unclassified | UnnamedContract<br>`0xf378794d7e6062ee64e53c8be33e9b16d5a034dc` | non_address_book | unknown | unknown | unverified | n/a | `0xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b` |

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
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 167 |

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
