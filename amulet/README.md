# Agentic Audit Brief: Amulet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Amulet (`amulet`)
- Website: [https://amulet.org/](https://amulet.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, optimism, polygon-zkevm
- Contract surface: 94 unique implementations (95 raw deployments)
- Coverage basis: 0/15 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $275,442.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Amulet. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across ethereum, optimism, polygon-zkevm. Structural roles: 15 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (15)
- Contract kinds: contract (15)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- a-AA_idle_cpFAS-USDC (`0x4a728224b87c63b53c5fbcacd95b5c3f0c9f5b22`, chain 1)
- a-AA_idle_cpFAS-USDT (`0x5e2da626313cef5f67d21616df6e7a531e41c3f9`, chain 1)
- a-AA_idle_cpFAS-USDT (`0xe92b7a8eb449aba20da0b2f5b2a4f5f25f95f3c4`, chain 10)
- a-AA_idle_cpPOR-USDT (`0x53dac8d715350afb3443d346aa3abd73da4534f0`, chain 1101)
- a-AA_idle_cpPORT-USDT (`0xf06e004cab43f326aa3668c8723a8bdbcf5bd165`, chain 10)
- a-AA_idle_cpWINC1-USDC (`0x53dac8d715350afb3443d346aa3abd73da4534f0`, chain 10)
- a-BB_idle_cpFAS-USDC (`0x695e5c49eaeeb5333e2af0ddb27722d36e9324fa`, chain 1)
- a-BB_idle_cpFAS-USDT (`0xfdad59ef0686c3da702b7d651a3bd35a539c8bc4`, chain 1)
- a-BB_idle_cpFAS-USDT (`0x07e7d45bc488de9eed94aa5f9bb8c845f4b21afa`, chain 10)
- a-BB_idle_cpPOR-USDT (`0x923917304012c7e14d122eb1d6a8f49f608bc06b`, chain 1101)
- a-BB_idle_cpPORT-USDT (`0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868`, chain 10)
- a-BB_idle_cpWINC1-USDC (`0x923917304012c7e14d122eb1d6a8f49f608bc06b`, chain 10)
- a-crvUSDFRAX-f (`0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868`, chain 1)
- a-crvUSDUSDC-f (`0xf06e004cab43f326aa3668c8723a8bdbcf5bd165`, chain 1)
- a-crvUSDUSDT-f (`0x6b0825b3e079fad25086431f7154acb3073f933b`, chain 1)
- a-stETH-ng-f (`0x6030189834b69919bffbc25e01c596ea5858e46c`, chain 1)
- a-wstETH (`0x5ef17ee66a64fd5b394362d98f51ba155aece9ce`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/15 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 77 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 17 of 94 unique; 77 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 94
- Raw deployments: 95
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| a-AA_idle_cpFAS-USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378997 | `0x4a728224b87c63b53c5fbcacd95b5c3f0c9f5b22` | ⚠️ Unaudited |
| a-AA_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378998 | `0x5e2da626313cef5f67d21616df6e7a531e41c3f9` | ⚠️ Unaudited |
| a-AA_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379009 | `0xe92b7a8eb449aba20da0b2f5b2a4f5f25f95f3c4` | ⚠️ Unaudited |
| a-AA_idle_cpPORT-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379010 | `0xf06e004cab43f326aa3668c8723a8bdbcf5bd165` | ⚠️ Unaudited |
| a-AA_idle_cpWINC1-USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-379007 | `0x53dac8d715350afb3443d346aa3abd73da4534f0` | ⚠️ Unaudited |
| a-BB_idle_cpFAS-USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379001 | `0x695e5c49eaeeb5333e2af0ddb27722d36e9324fa` | ⚠️ Unaudited |
| a-BB_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379005 | `0xfdad59ef0686c3da702b7d651a3bd35a539c8bc4` | ⚠️ Unaudited |
| a-BB_idle_cpFAS-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379006 | `0x07e7d45bc488de9eed94aa5f9bb8c845f4b21afa` | ⚠️ Unaudited |
| a-BB_idle_cpPORT-USDT | unknown | project_anchor | own_supporting | 0 | optimism | unit-379011 | `0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868` | ⚠️ Unaudited |
| a-BB_idle_cpWINC1-USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-379008 | `0x923917304012c7e14d122eb1d6a8f49f608bc06b` | ⚠️ Unaudited |
| a-crvUSDFRAX-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379004 | `0xfcb69e5e535e04a809dc8af7eba59c2fed4b2868` | ⚠️ Unaudited |
| a-crvUSDUSDC-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379003 | `0xf06e004cab43f326aa3668c8723a8bdbcf5bd165` | ⚠️ Unaudited |
| a-crvUSDUSDT-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379002 | `0x6b0825b3e079fad25086431f7154acb3073f933b` | ⚠️ Unaudited |
| a-stETH-ng-f | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379000 | `0x6030189834b69919bffbc25e01c596ea5858e46c` | ⚠️ Unaudited |
| a-wstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378999 | `0x5ef17ee66a64fd5b394362d98f51ba155aece9ce` | ⚠️ Unaudited |
| IdleCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc4574c60a455655864ab80fa7638561a756c5e61` | ⚠️ Unaudited |
| IdleCDOOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x8771128e9e386dc8e4663118bb11ea3de910e528` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ca1eb15b86f70dbac2631c1d4bb6aa9bc3e03e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x00233ca2d687d962edc95a9ebc03b2aade85d10f`; ethereum `0x6501d843ed22345d597627d28c60aba4d918ee35` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| a-AA_idle_cpPOR-USDT | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-379012 | `0x53dac8d715350afb3443d346aa3abd73da4534f0` | ❓ Unverified |
| a-BB_idle_cpPOR-USDT | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-379013 | `0x923917304012c7e14d122eb1d6a8f49f608bc06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x015562afac13bc2d5b1dcf5ff8f510c4d06d403d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x022f4e1c11e392a5e95d53545105257c8311ef80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0466850e77e6b0d341d18a2faf24909370c889ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07e7d45bc488de9eed94aa5f9bb8c845f4b21afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c4fc4d23741d3cac1649d40883e4d32dee3475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb2e510191fa83533d1da59e3c32c89cfc03956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x241d79a60be1a71bb94a9345cff57bc179f4613f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ac7f1771be57eb032e48baf922b32abe971c62a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48173952756c35e8db8336413d4890c2c5b8b677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53dac8d715350afb3443d346aa3abd73da4534f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626defbeda742a71fd7fb6c02f5e804fa71ab832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67b84d89c1d8743f55e10ebda2bd1364f9eaabed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b593ee1d18f3485ce8378a2036d72f3f5ffef2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6625637fa74fe6f13d3f17364f1e8f1893096c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bdefb0674951d2d87bef134319efbd3af093199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x828003a7af98c40f239c302f272f53e052a64fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55e9d532e86a98e58d25216a51406659c6958b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f717582c2b3ef1e1f1d0af371d767213e993e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x923917304012c7e14d122eb1d6a8f49f608bc06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e448ed84bc7dac5801a4dab79fe267b875fcf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa160678a80f10b5e479456b448a11e002dfa86ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa69c3e20400c181aafe80bd91c47281f6b294076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae2a01c155e3b3fdc9e8010d27fb40b411f291ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ae75ebc237ae85183ae2f5c0aa0aff9cbf376f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb423efdfcc6096bb1f3c49970ff58262d89f398c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f831ada9fd4bd307e4603110b5276e97819bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b3a0fb1410637589c077ca6f34d54681a7618d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbda13d599eec2dabbef5eeed618f42eafe96502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0186119782e99fdf721cc4373fdd1e4976946d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1580178463c91794a86036c2fb3cd74a2b4e832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd963c420237e553c0e8bbdb7f733df36bdc0b337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2ea862f49f25130d987f9fa1931c8279f978f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe92b7a8eb449aba20da0b2f5b2a4f5f25f95f3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec4e4f1a89011499ca9abccea1240d73ee04a2c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6a82aa68fb64c9e04a73d7cf5abb63a84a529de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7e348cb7e47b4fb4d989839d32175de45ddb7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8c41114e713c2fa0b288a2310b74594bc7a66f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x022f4e1c11e392a5e95d53545105257c8311ef80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0466850e77e6b0d341d18a2faf24909370c889ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x16f3a324fac5634063d508aded221ce69af2c5cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x241d79a60be1a71bb94a9345cff57bc179f4613f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2cd4b4eb84028f70e1090b053859b813ef9ad160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x34ca1eb15b86f70dbac2631c1d4bb6aa9bc3e03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48173952756c35e8db8336413d4890c2c5b8b677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x52415396acd5682d7a98ddef013b4bc4e435d691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x533831e38eae6cf0aa13f19aa3f2f345f0fb2876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ef17ee66a64fd5b394362d98f51ba155aece9ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6030189834b69919bffbc25e01c596ea5858e46c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67b84d89c1d8743f55e10ebda2bd1364f9eaabed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b0825b3e079fad25086431f7154acb3073f933b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x72b4eca667618b9c0faff35610f9b9afe1ffb645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b6625637fa74fe6f13d3f17364f1e8f1893096c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7bdefb0674951d2d87bef134319efbd3af093199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x91cb488b5501828206641d1612459541c47c5c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93dc311bb1f44b7ad4fcc15bcdc043a1e81cd156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e448ed84bc7dac5801a4dab79fe267b875fcf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9f55821b880b9a8091a57b9b478b6cef2469f084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa850550a115062a860a951a3f77bfd4c22a441fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa8bc65628d783f72ed899f37fb27be612ffbeac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad1999728f840082ac3bf9ea09b30d19a7923bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae2a01c155e3b3fdc9e8010d27fb40b411f291ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2ae75ebc237ae85183ae2f5c0aa0aff9cbf376f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb423efdfcc6096bb1f3c49970ff58262d89f398c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb50d79731b6f851e236b34477691e54cc7a619c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb79080f095e9c4c54d504ded32cff5b0eb9636a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcbda13d599eec2dabbef5eeed618f42eafe96502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce05f5d12e7daf74c2239a2264c99d38176ac3b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd963c420237e553c0e8bbdb7f733df36bdc0b337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xddfcc490f28ac43e05b9b459c2f45be854b9e05a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2ea862f49f25130d987f9fa1931c8279f978f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb72f11783c81324c4a71999e4a1f78a9a25176a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf6a82aa68fb64c9e04a73d7cf5abb63a84a529de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb1679eaa305a4fbf30edf6d57cf3d69c24a6594` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 74
- Live contracts: 0
- Unknown liveness contracts: 74
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=74

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x015562afac13bc2d5b1dcf5ff8f510c4d06d403d` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x022f4e1c11e392a5e95d53545105257c8311ef80` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0466850e77e6b0d341d18a2faf24909370c889ac` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07e7d45bc488de9eed94aa5f9bb8c845f4b21afa` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14c4fc4d23741d3cac1649d40883e4d32dee3475` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1bb2e510191fa83533d1da59e3c32c89cfc03956` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x241d79a60be1a71bb94a9345cff57bc179f4613f` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ac7f1771be57eb032e48baf922b32abe971c62a` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48173952756c35e8db8336413d4890c2c5b8b677` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53dac8d715350afb3443d346aa3abd73da4534f0` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x626defbeda742a71fd7fb6c02f5e804fa71ab832` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6501d843ed22345d597627d28c60aba4d918ee35` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67b84d89c1d8743f55e10ebda2bd1364f9eaabed` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b593ee1d18f3485ce8378a2036d72f3f5ffef2d` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b6625637fa74fe6f13d3f17364f1e8f1893096c` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bdefb0674951d2d87bef134319efbd3af093199` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x828003a7af98c40f239c302f272f53e052a64fc4` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f55e9d532e86a98e58d25216a51406659c6958b` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f717582c2b3ef1e1f1d0af371d767213e993e37` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x923917304012c7e14d122eb1d6a8f49f608bc06b` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e448ed84bc7dac5801a4dab79fe267b875fcf6e` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa160678a80f10b5e479456b448a11e002dfa86ed` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa69c3e20400c181aafe80bd91c47281f6b294076` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae2a01c155e3b3fdc9e8010d27fb40b411f291ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb2ae75ebc237ae85183ae2f5c0aa0aff9cbf376f` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb423efdfcc6096bb1f3c49970ff58262d89f398c` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7f831ada9fd4bd307e4603110b5276e97819bd1` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8b3a0fb1410637589c077ca6f34d54681a7618d` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbda13d599eec2dabbef5eeed618f42eafe96502` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf0186119782e99fdf721cc4373fdd1e4976946d` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd1580178463c91794a86036c2fb3cd74a2b4e832` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd963c420237e553c0e8bbdb7f733df36bdc0b337` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2ea862f49f25130d987f9fa1931c8279f978f0d` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe92b7a8eb449aba20da0b2f5b2a4f5f25f95f3c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec4e4f1a89011499ca9abccea1240d73ee04a2c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6a82aa68fb64c9e04a73d7cf5abb63a84a529de` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7e348cb7e47b4fb4d989839d32175de45ddb7f6` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8c41114e713c2fa0b288a2310b74594bc7a66f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x022f4e1c11e392a5e95d53545105257c8311ef80` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0466850e77e6b0d341d18a2faf24909370c889ac` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x16f3a324fac5634063d508aded221ce69af2c5cb` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x241d79a60be1a71bb94a9345cff57bc179f4613f` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x2cd4b4eb84028f70e1090b053859b813ef9ad160` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x34ca1eb15b86f70dbac2631c1d4bb6aa9bc3e03e` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x48173952756c35e8db8336413d4890c2c5b8b677` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x52415396acd5682d7a98ddef013b4bc4e435d691` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x533831e38eae6cf0aa13f19aa3f2f345f0fb2876` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5ef17ee66a64fd5b394362d98f51ba155aece9ce` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6030189834b69919bffbc25e01c596ea5858e46c` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x67b84d89c1d8743f55e10ebda2bd1364f9eaabed` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x6b0825b3e079fad25086431f7154acb3073f933b` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x72b4eca667618b9c0faff35610f9b9afe1ffb645` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7b6625637fa74fe6f13d3f17364f1e8f1893096c` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7bdefb0674951d2d87bef134319efbd3af093199` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x91cb488b5501828206641d1612459541c47c5c2f` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x93dc311bb1f44b7ad4fcc15bcdc043a1e81cd156` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9e448ed84bc7dac5801a4dab79fe267b875fcf6e` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0x9f55821b880b9a8091a57b9b478b6cef2469f084` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa850550a115062a860a951a3f77bfd4c22a441fa` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa8bc65628d783f72ed899f37fb27be612ffbeac9` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xad1999728f840082ac3bf9ea09b30d19a7923bbc` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xae2a01c155e3b3fdc9e8010d27fb40b411f291ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb2ae75ebc237ae85183ae2f5c0aa0aff9cbf376f` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb423efdfcc6096bb1f3c49970ff58262d89f398c` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb50d79731b6f851e236b34477691e54cc7a619c6` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb79080f095e9c4c54d504ded32cff5b0eb9636a6` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xcbda13d599eec2dabbef5eeed618f42eafe96502` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xce05f5d12e7daf74c2239a2264c99d38176ac3b4` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd963c420237e553c0e8bbdb7f733df36bdc0b337` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xddfcc490f28ac43e05b9b459c2f45be854b9e05a` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xe2ea862f49f25130d987f9fa1931c8279f978f0d` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xeb72f11783c81324c4a71999e4a1f78a9a25176a` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf6a82aa68fb64c9e04a73d7cf5abb63a84a529de` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |
| optimism | unverified unclassified | UnnamedContract<br>`0xfb1679eaa305a4fbf30edf6d57cf3d69c24a6594` | non_address_book | unknown | unknown | unverified | n/a | `0x6126da4fc75fb0316ffff090eb6275dbd294b130` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://files.amulet.org/public/AmuletGlobalMTRLabs.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [26411] DL audit link — no match: The scope section states 'All rust files in the repo were the targets in scope' but does not list specific contract names. The findings mention 'stake_wrapper.rs' but it is not explicitly listed as in scope. No specific contract names could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [26411] DL audit link

Fork inheritance lineage and inherited audits are included when available.
