# Agentic Audit Brief: YouSwap

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

- Project: YouSwap (`youswap`)
- Website: [https://www.youswap.com/](https://www.youswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, heco
- Contract surface: 74 unique implementations (74 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $223,526.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for YouSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BlackHole (`0x454fcc79f427f7e64c332baa62bf7a80aded2fd3`, chain 1)
- BlackHole (`0x8234fb9d3efd83d6e761dbb07d0bc7173653f810`, chain 56)
- Repurchase (`0x3ecf27ae548ba264f81d763eff03486133913c84`, chain 1)
- Repurchase (`0xb621ea6fab84a813217439faeb11b6d9c52c3806`, chain 56)
- TokenYou (`0x1d32916cfa6534d261ad53e2498ab95505bd2510`, chain 1)
- TokenYou (`0x181801f00df1bd997d38dd579dbd44bf9b5a6d2d`, chain 56)
- YouSwapFactory (`0xa7028337d3da1f04d638cc3b4dd09411486b49ea`, chain 1)
- YouSwapFactory (`0x137f34df5bcdb30f5e858fc77cb7ab60f8f7a09a`, chain 56)
- YouswapFactoryV1 (`0x8f1c3c2d8f5675b7c521f827e3899bf76f9382f6`, chain 56)
- YouswapInviteV1 (`0x25310873e310b270aec5113a2d3037fa94166969`, chain 1)
- YouswapInviteV1 (`0xe71f923f8032cede47db1d73611370ba24fdf53b`, chain 56)
- YouSwapRouter (`0xf80ddd58e040df41c0761566295a8c1b75b30770`, chain 1)
- YouSwapRouter (`0xa4ce57f063a610290eeef0564b034278438d06cf`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 13 of 74 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 74
- Raw deployments: 74
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlackHole | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397636 | `0x454fcc79f427f7e64c332baa62bf7a80aded2fd3` | ⚠️ Unaudited |
| BlackHole | unknown | project_anchor | own_supporting | 0 | bsc | unit-397648 | `0x8234fb9d3efd83d6e761dbb07d0bc7173653f810` | ⚠️ Unaudited |
| Repurchase | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397635 | `0x3ecf27ae548ba264f81d763eff03486133913c84` | ⚠️ Unaudited |
| Repurchase | unknown | project_anchor | own_supporting | 0 | bsc | unit-397651 | `0xb621ea6fab84a813217439faeb11b6d9c52c3806` | ⚠️ Unaudited |
| TokenYou | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397633 | `0x1d32916cfa6534d261ad53e2498ab95505bd2510` | ⚠️ Unaudited |
| TokenYou | unknown | project_anchor | own_supporting | 0 | bsc | unit-397647 | `0x181801f00df1bd997d38dd579dbd44bf9b5a6d2d` | ⚠️ Unaudited |
| YouSwapFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397637 | `0xa7028337d3da1f04d638cc3b4dd09411486b49ea` | ⚠️ Unaudited |
| YouSwapFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-397646 | `0x137f34df5bcdb30f5e858fc77cb7ab60f8f7a09a` | ⚠️ Unaudited |
| YouswapFactoryV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397649 | `0x8f1c3c2d8f5675b7c521f827e3899bf76f9382f6` | ⚠️ Unaudited |
| YouswapInviteV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397634 | `0x25310873e310b270aec5113a2d3037fa94166969` | ⚠️ Unaudited |
| YouswapInviteV1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-397652 | `0xe71f923f8032cede47db1d73611370ba24fdf53b` | ⚠️ Unaudited |
| YouSwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397638 | `0xf80ddd58e040df41c0761566295a8c1b75b30770` | ⚠️ Unaudited |
| YouSwapRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-397650 | `0xa4ce57f063a610290eeef0564b034278438d06cf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043659e4db135d2b46b41a611ab67eb4d5979ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0604f2781ef5712130af4d941cb79257513d1693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063757286504f93e92a6dc213f332f6ef382b631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b20634531f412fcaf6d290a23609d6cd580f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac0abe38c8e72a58ea530276843d547c8303173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1613c168299e5125e4f11032f013d4528f40550f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17b613255983a0f96fdbea9720c62538b23da3a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f233db04ac7f57b1a207230cc1235317a2ccad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30252908f944a871765f787964e3a581dc340fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ab741b44f16f33b34c1252b3ff6f0d316f633b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5fa514ce5b53d5a17259e06f0340886cae2e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e6639bef44164ba44aa58771b94df30bc023a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f6861dc70857220cd76a041d8ba1ee069e75a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65b9982f258413b908b8c12ffa3f2cab771c65e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695f473ca7d3597d975369d4559e49c27869c084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fc4a6c4c9a1d643ca89144ec4da3f944f4e6075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727e9a3067deeaf031916fa0fc53b02cf44f8731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7be1bc358b677b848bd246bac48ba04170d13a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0c35fb4cc267a5f456e821db8644a503c52cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d087b31f94daaeffbd74770367d4b74e6a06805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9670374e920d0a7e858541c0c01847d2486d103a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a9fb2fe9bbc64b9eae4bbcfd0f37823ae9d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2c06ea5abac37b63b2e3334d9d656c36e240385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf30e94f42e90b8ada1ae3e911993266091b302d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3b8dbc4f5f6935ae68a7c6947fb407524ef5612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd703e8a069089e62748a5ca9beecb8c4bca8cf33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a82c129c3c27cbe32ad3f0eea2e9d6355a8201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b6d0190c38a9c2a4cb596d21f1c557d892b681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac4c9ce8faac98e88070e5ae05de26ed86ca20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6cd85551870618884151f3d41069ce11b1050ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e3e63aaa3a668817741559a74f6f6c51808d0c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ecc563cfee4e904bdb0c041b1316137d716210c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15cbdd7140f90c2911d94bee21f8616ef2454a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ad4fb7ce96f9a743ac977121b5bce15c3765618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d32916cfa6534d261ad53e2498ab95505bd2510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252fde22c7d20aca62a840ca3b66fb0e206ead34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49606a2703febeab49b8c0c66e26c5396b24b373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53c87071059c69d8fc78610c5b280d2d228b64df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68caa2ee8670ade17dd24cff7ce863210d0f99a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x738279176fa2b91807a7f5d21aedaa1ace225d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7593ed13110a9642b0c9afc53ba69ef2490d5639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77c1635c2b13c027e37cf1721c0422ecb166563f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78dc9acb8ec35dd8c7b46eef4d400d7702086da0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b2d944b27d128fa0e5f77b59b8118a9a744b03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c8d25108e588f858c80f3451f32748382851609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83b66f197793d24fc29c3a95062606f72659f54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8609fbdc8065651c64ddc45caafff6770b0e1119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8830ade8b11a336afa61b1be005d36b017900a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaef2997e1cfe65bc54a66b6088f2318da4a2f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd728dbb8743672e3cd62141aac775b4e5278e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0a5bb74593ba7c2931075532b59ddf63602a5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3d5aca38ed74aa10c713c25f09b765774e09909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd594feec05a1ce6743fd722f5fb648820dab19c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdff021008de2b431f24eb60ffa0c77a970275feb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397639 | `0x01a35d6b964e591806a6606443ee4c57d5e5f67f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397640 | `0x0604f2781ef5712130af4d941cb79257513d1693` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397641 | `0x0bc85a018a3dd6aab4a4e384a12d6a2336524188` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397642 | `0x9364e119ad76e0346126afcbdf5c9f0189500cc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397643 | `0x9f1cd0e59e78f5288e2fcf43030c9010d4f2991d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397644 | `0xb9de3478031d283c97aaf8734049ba905d8dab1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | heco | unit-397645 | `0xe58602af2d7538ed18591070a77944fe0cb593a8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 0
- Unknown liveness contracts: 54
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=54

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x043659e4db135d2b46b41a611ab67eb4d5979ae6` | non_address_book | unknown | unknown | unverified | n/a | `0xb08eed9500dd74a6adf59f7fad7a14de0fde4b3d` |
| unverified unclassified | UnnamedContract<br>`0x0604f2781ef5712130af4d941cb79257513d1693` | non_address_book | unknown | unknown | unverified | n/a | `0xb08eed9500dd74a6adf59f7fad7a14de0fde4b3d` |
| unverified unclassified | UnnamedContract<br>`0x063757286504f93e92a6dc213f332f6ef382b631` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x07b20634531f412fcaf6d290a23609d6cd580f30` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x0ac0abe38c8e72a58ea530276843d547c8303173` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x1613c168299e5125e4f11032f013d4528f40550f` | non_address_book | unknown | unknown | unverified | n/a | `0xb08eed9500dd74a6adf59f7fad7a14de0fde4b3d` |
| unverified unclassified | UnnamedContract<br>`0x17b613255983a0f96fdbea9720c62538b23da3a0` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x2f233db04ac7f57b1a207230cc1235317a2ccad9` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x30252908f944a871765f787964e3a581dc340fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x36ab741b44f16f33b34c1252b3ff6f0d316f633b` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x4f5fa514ce5b53d5a17259e06f0340886cae2e5a` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x59e6639bef44164ba44aa58771b94df30bc023a6` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x60f6861dc70857220cd76a041d8ba1ee069e75a5` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x65b9982f258413b908b8c12ffa3f2cab771c65e5` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x695f473ca7d3597d975369d4559e49c27869c084` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x6fc4a6c4c9a1d643ca89144ec4da3f944f4e6075` | non_address_book | unknown | unknown | unverified | n/a | `0xb08eed9500dd74a6adf59f7fad7a14de0fde4b3d` |
| unverified unclassified | UnnamedContract<br>`0x727e9a3067deeaf031916fa0fc53b02cf44f8731` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x7be1bc358b677b848bd246bac48ba04170d13a9b` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x7f0c35fb4cc267a5f456e821db8644a503c52cab` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x8d087b31f94daaeffbd74770367d4b74e6a06805` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x9670374e920d0a7e858541c0c01847d2486d103a` | non_address_book | unknown | unknown | unverified | n/a | `0xb08eed9500dd74a6adf59f7fad7a14de0fde4b3d` |
| unverified unclassified | UnnamedContract<br>`0x9c6a9fb2fe9bbc64b9eae4bbcfd0f37823ae9d66` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xb2c06ea5abac37b63b2e3334d9d656c36e240385` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xbf30e94f42e90b8ada1ae3e911993266091b302d` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xc3b8dbc4f5f6935ae68a7c6947fb407524ef5612` | non_address_book | unknown | unknown | unverified | n/a | `0xb08eed9500dd74a6adf59f7fad7a14de0fde4b3d` |
| unverified unclassified | UnnamedContract<br>`0xd703e8a069089e62748a5ca9beecb8c4bca8cf33` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xd7a82c129c3c27cbe32ad3f0eea2e9d6355a8201` | non_address_book | unknown | unknown | unverified | n/a | `0xb08eed9500dd74a6adf59f7fad7a14de0fde4b3d` |
| unverified unclassified | UnnamedContract<br>`0xd7b6d0190c38a9c2a4cb596d21f1c557d892b681` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xdac4c9ce8faac98e88070e5ae05de26ed86ca20b` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xf6cd85551870618884151f3d41069ce11b1050ea` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x0e3e63aaa3a668817741559a74f6f6c51808d0c5` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x0ecc563cfee4e904bdb0c041b1316137d716210c` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x15cbdd7140f90c2911d94bee21f8616ef2454a82` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x1ad4fb7ce96f9a743ac977121b5bce15c3765618` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x1d32916cfa6534d261ad53e2498ab95505bd2510` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x252fde22c7d20aca62a840ca3b66fb0e206ead34` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x49606a2703febeab49b8c0c66e26c5396b24b373` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x53c87071059c69d8fc78610c5b280d2d228b64df` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x68caa2ee8670ade17dd24cff7ce863210d0f99a5` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x738279176fa2b91807a7f5d21aedaa1ace225d35` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x7593ed13110a9642b0c9afc53ba69ef2490d5639` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x77c1635c2b13c027e37cf1721c0422ecb166563f` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x78dc9acb8ec35dd8c7b46eef4d400d7702086da0` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x7b2d944b27d128fa0e5f77b59b8118a9a744b03e` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x7c8d25108e588f858c80f3451f32748382851609` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x83b66f197793d24fc29c3a95062606f72659f54b` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x8609fbdc8065651c64ddc45caafff6770b0e1119` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0x8830ade8b11a336afa61b1be005d36b017900a63` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xbaef2997e1cfe65bc54a66b6088f2318da4a2f82` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xbd728dbb8743672e3cd62141aac775b4e5278e95` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xc0a5bb74593ba7c2931075532b59ddf63602a5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xc3d5aca38ed74aa10c713c25f09b765774e09909` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xd594feec05a1ce6743fd722f5fb648820dab19c2` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |
| unverified unclassified | UnnamedContract<br>`0xdff021008de2b431f24eb60ffa0c77a970275feb` | non_address_book | unknown | unknown | unverified | n/a | `0x6a02a11035136fb3ca55f163ed80eae2cee0057f` |

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
| needs_review | 74 |

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
