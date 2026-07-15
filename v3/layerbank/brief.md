# Agentic Audit Brief: LayerBank

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: LayerBank (`layerbank`)
- Website: [https://layerbank.finance](https://layerbank.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: b2, bitlayer, bob, bsc, hemi, linea, manta-pacific, mode, scroll
- Contract surface: 175 unique implementations (175 raw deployments)
- Coverage basis: 0/87 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,032,193.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LayerBank. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 87 contract row(s) across b2, bitlayer, bob, bsc, hemi, linea, manta-pacific, mode, scroll. Structural roles: 51 core, 25 unclassified, 11 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 87
- Structural roles: core (51), unclassified (25), supporting (11)
- Contract kinds: contract (86), abstract (1)
- Detected standards: ownable (36), erc20 (23), pausable (10)
- Frameworks: openzeppelin (36)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 172 contracts are derived from known codebases. 172 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1dfa1a...fb87ff`, chain 223)
- UnnamedContract (`0x438845...ed454d`, chain 223)
- UnnamedContract (`0x53bda0...0d6139`, chain 223)
- UnnamedContract (`0x5478ca...f3ed58`, chain 223)
- UnnamedContract (`0x636f71...739dc3`, chain 223)
- UnnamedContract (`0x670163...b5a3a2`, chain 223)
- UnnamedContract (`0x72f7a8...6c3ea6`, chain 223)
- UnnamedContract (`0x8b03af...becaa9`, chain 223)
- UnnamedContract (`0x98d685...ae4307`, chain 223)
- UnnamedContract (`0xa69255...1a9a03`, chain 223)
- UnnamedContract (`0xa9be59...99ff2a`, chain 223)
- UnnamedContract (`0xaac196...dd5bed`, chain 223)
- UnnamedContract (`0xe2417c...aa4ff2`, chain 223)
- UnnamedContract (`0xeb58c2...cdf698`, chain 223)
- UnnamedContract (`0x7c57db...26cc4d`, chain 34443)
- UnnamedContract (`0xbd9edf...124aa8`, chain 34443)
- UnnamedContract (`0x16b3a0...2a0619`, chain 43111)
- UnnamedContract (`0x1e3428...9ecf9d`, chain 43111)
- UnnamedContract (`0x23155b...a4c10b`, chain 43111)
- UnnamedContract (`0x3a7232...b8ba3b`, chain 43111)
- UnnamedContract (`0x46adc4...236697`, chain 43111)
- UnnamedContract (`0x5a8c91...67c96d`, chain 43111)
- UnnamedContract (`0x6d9199...8d543a`, chain 43111)
- UnnamedContract (`0x799093...554087`, chain 43111)
- UnnamedContract (`0x79b7a6...fe2623`, chain 43111)
- UnnamedContract (`0x79ce45...c80713`, chain 43111)
- UnnamedContract (`0x7aa826...83315b`, chain 43111)
- UnnamedContract (`0x8edd7f...4a9b87`, chain 43111)
- UnnamedContract (`0x92ce82...911bba`, chain 43111)
- UnnamedContract (`0x9a5265...7dcab6`, chain 43111)
- UnnamedContract (`0x9e3603...ac36fc`, chain 43111)
- UnnamedContract (`0xa6bbba...2d4798`, chain 43111)
- UnnamedContract (`0xb30a18...601759`, chain 43111)
- UnnamedContract (`0xeaf3ba...5613cb`, chain 43111)
- UnnamedContract (`0xed0d42...84a581`, chain 43111)
- UnnamedContract (`0xf676ba...475990`, chain 43111)
- UnnamedContract (`0xf93078...66b0fb`, chain 43111)
- UnnamedContract (`0xfa20b0...87b2b0`, chain 43111)
- UnnamedContract (`0x037598...0ea423`, chain 60808)
- UnnamedContract (`0x043962...851475`, chain 60808)
- UnnamedContract (`0x0c1f45...115fa4`, chain 60808)
- UnnamedContract (`0x1097cc...1cb5a7`, chain 60808)
- UnnamedContract (`0x151d54...24c8f9`, chain 60808)
- UnnamedContract (`0x462ebb...cf3db3`, chain 60808)
- UnnamedContract (`0x51aca2...5caa98`, chain 60808)
- UnnamedContract (`0x626fbe...23e27c`, chain 60808)
- UnnamedContract (`0x6bc3ed...b2b5d1`, chain 60808)
- UnnamedContract (`0x77cabf...eda971`, chain 60808)
- UnnamedContract (`0x7851b2...983e0b`, chain 60808)
- UnnamedContract (`0xbd00e7...b60ccb`, chain 60808)
- UnnamedContract (`0xc8485b...7cab37`, chain 60808)
- UnnamedContract (`0xce5848...8f98c3`, chain 60808)
- UnnamedContract (`0xd855ee...d971f2`, chain 60808)
- UnnamedContract (`0xdabeb9...da8e59`, chain 60808)
- UnnamedContract (`0xe71457...e054ea`, chain 60808)
- UnnamedContract (`0xf30e2d...6d87db`, chain 60808)
- UnnamedContract (`0x04a469...61c544`, chain 200901)
- UnnamedContract (`0x1471b4...7e7540`, chain 200901)
- UnnamedContract (`0x674e1d...d690d8`, chain 200901)
- UnnamedContract (`0x72cb37...067a47`, chain 200901)
- UnnamedContract (`0x826939...e632b4`, chain 200901)
- UnnamedContract (`0x870c1a...5e5a07`, chain 200901)
- UnnamedContract (`0x8dbffa...1b0316`, chain 200901)
- UnnamedContract (`0xc876cd...fa2e76`, chain 200901)
- UnnamedContract (`0xd27409...4cadfe`, chain 200901)
- UnnamedContract (`0xe0d50a...d6a1e1`, chain 200901)
- UnnamedContract (`0xf1e257...3c247f`, chain 200901)
- UnnamedContract (`0x0d8f8e...3f0688`, chain 534352)
- UnnamedContract (`0x0eb776...a24148`, chain 534352)
- UnnamedContract (`0x0f67e8...e3aa95`, chain 534352)
- UnnamedContract (`0x18941f...6f8df4`, chain 534352)
- UnnamedContract (`0x20112c...ae4e42`, chain 534352)
- UnnamedContract (`0x274c37...e0a98c`, chain 534352)
- UnnamedContract (`0x2a0064...80e604`, chain 534352)
- UnnamedContract (`0x3335db...429a4c`, chain 534352)
- UnnamedContract (`0x4e3a9d...b6d0ba`, chain 534352)
- UnnamedContract (`0x576d20...065dd2`, chain 534352)
- UnnamedContract (`0x615b3f...545778`, chain 534352)
- UnnamedContract (`0xb69660...0d2ca4`, chain 534352)
- UnnamedContract (`0xbd1d62...3dcc18`, chain 534352)
- UnnamedContract (`0xc40d69...8aa4cf`, chain 534352)
- UnnamedContract (`0xe0cee4...f40fb0`, chain 534352)
- UnnamedContract (`0xe3168c...3ad508`, chain 534352)
- UnnamedContract (`0xe4a759...e8524d`, chain 534352)
- UnnamedContract (`0xe5c40a...ec0a8e`, chain 534352)
- UnnamedContract (`0xec0ad3...a587d6`, chain 534352)
- UnnamedContract (`0xf1f897...ac0321`, chain 534352)
- UnnamedContract (`0xf5aa63...393c23`, chain 534352)
- Core (`0x8efdd7...100ffa`, chain 56)
- Core (`0xb7a23f...748bbf`, chain 169)
- Core (`0x809808...c1ff50`, chain 34443)
- Core (`0x009a0b...943833`, chain 59144)
- Core (`0x43eac5...5de866`, chain 59144)
- Core (`0xec53c8...4289aa`, chain 534352)
- LABDistributor (`0x67c10b...e483b0`, chain 169)
- LABDistributor (`0xe8c3ba...4c1aec`, chain 34443)
- LABDistributor (`0x5d0606...470957`, chain 59144)
- LABToken (`0x20a512...18c997`, chain 169)
- LABToken (`0xfe67e1...3e59ae`, chain 34443)
- LABToken (`0xb97f21...1ff75d`, chain 59144)
- Leverager (`0x4054f4...bda9a6`, chain 169)
- Leverager (`0xf0dcba...9029e5`, chain 34443)
- Leverager (`0xc98b93...eefff3`, chain 59144)
- Locker (`0x14c5a2...b16494`, chain 59144)
- LToken (`0x00bce4...88d33c`, chain 56)
- LToken (`0x10e4a6...e78e41`, chain 56)
- LToken (`0x1c0577...0c325d`, chain 56)
- LToken (`0x308294...6919ff`, chain 56)
- LToken (`0x864ae2...744e88`, chain 56)
- LToken (`0xc0600b...408865`, chain 56)
- LToken (`0xd1a761...b8ad3d`, chain 56)
- LToken (`0xdf62df...3c8edf`, chain 56)
- LToken (`0xe009af...0f8750`, chain 56)
- LToken (`0xe07492...9b0cae`, chain 56)
- LToken (`0xe6a89c...baf543`, chain 56)
- LToken (`0xeb27ea...09fef2`, chain 56)
- LToken (`0xf2794e...52725d`, chain 56)
- LToken (`0xf8a89b...230d60`, chain 56)
- LToken (`0xfb9292...9c86b3`, chain 56)
- LToken (`0x472d43...c5e388`, chain 169)
- LToken (`0x604ddc...6765ed`, chain 169)
- LToken (`0x71384b...dced68`, chain 169)
- LToken (`0x7479c7...07e0b6`, chain 169)
- LToken (`0x7def25...feff45`, chain 169)
- LToken (`0x9d8ecb...7e21a4`, chain 169)
- LToken (`0xdf4b60...5fc1c2`, chain 169)
- LToken (`0x59dd44...06c256`, chain 34443)
- LToken (`0x66a5e1...ed366e`, chain 34443)
- LToken (`0x6a0d95...895ddf`, chain 34443)
- LToken (`0xba6e89...bdbaec`, chain 34443)
- LToken (`0xc5b9cb...df4959`, chain 34443)
- LToken (`0xd97905...a15948`, chain 34443)
- LToken (`0xe855b8...12add5`, chain 34443)
- LToken (`0xfd160b...f16902`, chain 34443)
- LToken (`0x14abc6...eefd14`, chain 59144)
- LToken (`0x2ad69a...46c4b0`, chain 59144)
- LToken (`0x2c88a4...9409e2`, chain 59144)
- LToken (`0x592411...ddde6b`, chain 59144)
- LToken (`0x674927...f23e48`, chain 59144)
- LToken (`0x6fe395...08a855`, chain 59144)
- LToken (`0x8fefab...ab2053`, chain 59144)
- LToken (`0x9e9aec...55d39a`, chain 59144)
- LToken (`0x9f8b5d...b46c19`, chain 59144)
- LToken (`0xa63047...82bc79`, chain 59144)
- LToken (`0xb01f9d...b7ce28`, chain 59144)
- LToken (`0xb81b1e...28d890`, chain 59144)
- LToken (`0xc7d848...c9d231`, chain 59144)
- LToken (`0xccba9a...b84f14`, chain 59144)
- LToken (`0xcdfcfd...1d15f8`, chain 59144)
- LToken (`0xe33520...d564b9`, chain 59144)
- LToken (`0xea0f73...f9de5f`, chain 59144)
- LToken (`0xf46680...4dc751`, chain 59144)
- PriceCalculator (`0xe1a2d3...e12fff`, chain 56)
- PriceCalculator (`0x90286f...3e4cfd`, chain 169)
- PriceCalculator (`0xa6b253...62f7cf`, chain 34443)
- PriceCalculator (`0x42e62f...b6d7fb`, chain 59144)
- RateModelSlope (`0x56294e...c94899`, chain 56)
- RateModelSlope (`0x8a6c88...616178`, chain 56)
- RateModelSlope (`0xd2ef9a...df3cf4`, chain 56)
- RateModelSlope (`0x27f85b...1e660d`, chain 169)
- RateModelSlope (`0x709be0...7477fc`, chain 59144)
- RateModelSlope (`0xc69054...38cad2`, chain 59144)
- RebateDistributor (`0xc85836...ce616d`, chain 169)
- RebateDistributor (`0x67d215...ce006f`, chain 34443)
- RebateDistributor (`0xea0165...9fbfc6`, chain 59144)
- RewardController (`0x68b30d...68eb40`, chain 169)
- Validator (`0x9afa0a...28dfa6`, chain 56)
- Validator (`0x344727...71277e`, chain 169)
- Validator (`0x0ccd70...e12769`, chain 34443)
- Validator (`0x720a99...5ca0e7`, chain 59144)
- Validator (`0xe9e061...8d4ab9`, chain 59144)
- xLAB (`0x69e38d...b74467`, chain 169)

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 87 (87 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 175/175 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/87 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 175 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 175 of 175 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/87
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 175
- Raw deployments: 175
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Core | unknown | project_anchor | own_supporting | 0 | bsc | unit-244958 | `0x8efdd7...100ffa` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244859 | `0xb7a23f...748bbf` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | mode | unit-244894 | `0x809808...c1ff50` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | linea | unit-244972 | `0x009a0b...943833` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | linea | unit-244978 | `0x43eac5...5de866` | ⚠️ Unaudited |
| Core | unknown | project_anchor | own_supporting | 0 | scroll | unit-244948 | `0xec53c8...4289aa` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244851 | `0x67c10b...e483b0` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-244903 | `0xe8c3ba...4c1aec` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-244980 | `0x5d0606...470957` | ⚠️ Unaudited |
| LABToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244845 | `0x20a512...18c997` | ⚠️ Unaudited |
| LABToken | token | project_anchor | own_supporting | 0 | mode | unit-244906 | `0xfe67e1...3e59ae` | ⚠️ Unaudited |
| LABToken | token | project_anchor | own_supporting | 0 | linea | unit-244991 | `0xb97f21...1ff75d` | ⚠️ Unaudited |
| Leverager | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244848 | `0x4054f4...bda9a6` | ⚠️ Unaudited |
| Leverager | unknown | project_anchor | own_supporting | 0 | mode | unit-244904 | `0xf0dcba...9029e5` | ⚠️ Unaudited |
| Leverager | unknown | project_anchor | own_supporting | 0 | linea | unit-244994 | `0xc98b93...eefff3` | ⚠️ Unaudited |
| Locker | unknown | project_anchor | own_supporting | 0 | linea | unit-244974 | `0x14c5a2...b16494` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244951 | `0x00bce4...88d33c` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244952 | `0x10e4a6...e78e41` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244953 | `0x1c0577...0c325d` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244954 | `0x308294...6919ff` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244956 | `0x864ae2...744e88` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244960 | `0xc0600b...408865` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244961 | `0xd1a761...b8ad3d` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244963 | `0xdf62df...3c8edf` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244964 | `0xe009af...0f8750` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244965 | `0xe07492...9b0cae` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244967 | `0xe6a89c...baf543` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244968 | `0xeb27ea...09fef2` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244969 | `0xf2794e...52725d` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244970 | `0xf8a89b...230d60` | ⚠️ Unaudited |
| LToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-244971 | `0xfb9292...9c86b3` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244849 | `0x472d43...c5e388` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244850 | `0x604ddc...6765ed` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244854 | `0x71384b...dced68` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244855 | `0x7479c7...07e0b6` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244856 | `0x7def25...feff45` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244858 | `0x9d8ecb...7e21a4` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | manta-pacific | unit-244861 | `0xdf4b60...5fc1c2` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244889 | `0x59dd44...06c256` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244890 | `0x66a5e1...ed366e` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244892 | `0x6a0d95...895ddf` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244897 | `0xba6e89...bdbaec` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244899 | `0xc5b9cb...df4959` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244901 | `0xd97905...a15948` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244902 | `0xe855b8...12add5` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | mode | unit-244905 | `0xfd160b...f16902` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244973 | `0x14abc6...eefd14` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244975 | `0x2ad69a...46c4b0` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244976 | `0x2c88a4...9409e2` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244979 | `0x592411...ddde6b` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244981 | `0x674927...f23e48` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244982 | `0x6fe395...08a855` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244985 | `0x8fefab...ab2053` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244986 | `0x9e9aec...55d39a` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244987 | `0x9f8b5d...b46c19` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244988 | `0xa63047...82bc79` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244989 | `0xb01f9d...b7ce28` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244990 | `0xb81b1e...28d890` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244993 | `0xc7d848...c9d231` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244995 | `0xccba9a...b84f14` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244996 | `0xcdfcfd...1d15f8` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-244997 | `0xe33520...d564b9` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-245000 | `0xea0f73...f9de5f` | ⚠️ Unaudited |
| LToken | token | project_anchor | own_supporting | 0 | linea | unit-245001 | `0xf46680...4dc751` | ⚠️ Unaudited |
| PriceCalculator | unknown | project_anchor | own_supporting | 0 | bsc | unit-244966 | `0xe1a2d3...e12fff` | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244857 | `0x90286f...3e4cfd` | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-244896 | `0xa6b253...62f7cf` | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-244977 | `0x42e62f...b6d7fb` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | bsc | unit-244955 | `0x56294e...c94899` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | bsc | unit-244957 | `0x8a6c88...616178` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | bsc | unit-244962 | `0xd2ef9a...df3cf4` | ⚠️ Unaudited |
| RateModelSlope | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244846 | `0x27f85b...1e660d` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | mode | unit-244888 | `0x16cd8d...f7b1af` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | linea | unit-244983 | `0x709be0...7477fc` | ⚠️ Unaudited |
| RateModelSlope | unknown | project_anchor | own_supporting | 0 | linea | unit-244992 | `0xc69054...38cad2` | ⚠️ Unaudited |
| RebateDistributor | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-244860 | `0xc85836...ce616d` | ⚠️ Unaudited |
| RebateDistributor | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-244891 | `0x67d215...ce006f` | ⚠️ Unaudited |
| RebateDistributor | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-244999 | `0xea0165...9fbfc6` | ⚠️ Unaudited |
| RewardController | governance | project_anchor | own_supporting | 0 | manta-pacific | unit-244852 | `0x68b30d...68eb40` | ⚠️ Unaudited |
| RewardController | unknown | project_anchor | own_supporting | 0 | mode | unit-244895 | `0xa2c4ff...0ba82a` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | bsc | unit-244959 | `0x9afa0a...28dfa6` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244847 | `0x344727...71277e` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | mode | unit-244887 | `0x0ccd70...e12769` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | linea | unit-244984 | `0x720a99...5ca0e7` | ⚠️ Unaudited |
| Validator | unknown | project_anchor | own_supporting | 0 | linea | unit-244998 | `0xe9e061...8d4ab9` | ⚠️ Unaudited |
| xLAB | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-244853 | `0x69e38d...b74467` | ⚠️ Unaudited |
| xLAB | unknown | project_anchor | own_supporting | 0 | mode | unit-244900 | `0xd4ab47...2a9f8b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244873 | `0x1dfa1a...fb87ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244874 | `0x438845...ed454d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244875 | `0x53bda0...0d6139` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244876 | `0x5478ca...f3ed58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244877 | `0x636f71...739dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244878 | `0x670163...b5a3a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244879 | `0x72f7a8...6c3ea6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244880 | `0x8b03af...becaa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244881 | `0x98d685...ae4307` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244882 | `0xa69255...1a9a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244883 | `0xa9be59...99ff2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244884 | `0xaac196...dd5bed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244885 | `0xe2417c...aa4ff2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | b2 | unit-244886 | `0xeb58c2...cdf698` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-244893 | `0x7c57db...26cc4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-244898 | `0xbd9edf...124aa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244907 | `0x16b3a0...2a0619` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244908 | `0x1e3428...9ecf9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244909 | `0x23155b...a4c10b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244910 | `0x3a7232...b8ba3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244911 | `0x46adc4...236697` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244912 | `0x5a8c91...67c96d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244913 | `0x6d9199...8d543a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244914 | `0x799093...554087` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244915 | `0x79b7a6...fe2623` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244916 | `0x79ce45...c80713` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244917 | `0x7aa826...83315b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244918 | `0x8edd7f...4a9b87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244919 | `0x92ce82...911bba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244920 | `0x9a5265...7dcab6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244921 | `0x9e3603...ac36fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244922 | `0xa6bbba...2d4798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244923 | `0xb30a18...601759` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244924 | `0xeaf3ba...5613cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244925 | `0xed0d42...84a581` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244926 | `0xf676ba...475990` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244927 | `0xf93078...66b0fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hemi | unit-244928 | `0xfa20b0...87b2b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245002 | `0x037598...0ea423` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245003 | `0x043962...851475` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245004 | `0x0c1f45...115fa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245005 | `0x1097cc...1cb5a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245006 | `0x151d54...24c8f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245007 | `0x462ebb...cf3db3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245008 | `0x51aca2...5caa98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245009 | `0x626fbe...23e27c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245010 | `0x6bc3ed...b2b5d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245011 | `0x77cabf...eda971` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245012 | `0x7851b2...983e0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245013 | `0xbd00e7...b60ccb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245014 | `0xc8485b...7cab37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245015 | `0xce5848...8f98c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245016 | `0xd855ee...d971f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245017 | `0xdabeb9...da8e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245018 | `0xe71457...e054ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-245019 | `0xf30e2d...6d87db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244862 | `0x04a469...61c544` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244863 | `0x1471b4...7e7540` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244864 | `0x674e1d...d690d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244865 | `0x72cb37...067a47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244866 | `0x826939...e632b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244867 | `0x870c1a...5e5a07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244868 | `0x8dbffa...1b0316` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244869 | `0xc876cd...fa2e76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244870 | `0xd27409...4cadfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244871 | `0xe0d50a...d6a1e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-244872 | `0xf1e257...3c247f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244929 | `0x0d8f8e...3f0688` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244930 | `0x0eb776...a24148` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244931 | `0x0f67e8...e3aa95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244932 | `0x18941f...6f8df4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244933 | `0x20112c...ae4e42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244934 | `0x274c37...e0a98c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244935 | `0x2a0064...80e604` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244936 | `0x3335db...429a4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244937 | `0x4e3a9d...b6d0ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244938 | `0x576d20...065dd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244939 | `0x615b3f...545778` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244940 | `0xb69660...0d2ca4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244941 | `0xbd1d62...3dcc18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244942 | `0xc40d69...8aa4cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244943 | `0xe0cee4...f40fb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244944 | `0xe3168c...3ad508` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244945 | `0xe4a759...e8524d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244946 | `0xe5c40a...ec0a8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244947 | `0xec0ad3...a587d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244949 | `0xf1f897...ac0321` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-244950 | `0xf5aa63...393c23` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-LineaBank-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LineaBank-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [PeckShield-Audit-Report-LayerBank-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LayerBank-v1.0.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [20250123-LayerBank-Final-Audit-Report.pdf](https://movebit.xyz/reports/20250123-LayerBank-Final-Audit-Report.pdf) | MoveBit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fvi5sScuffF7lLX6pHEo5%2Fuploads%2FgSR9vUclew9CtwxZGIL4%2FAstraSec-AuditReport-Layerbank-V3%20(1).pdf?alt=media) | AstraSec | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1856] PeckShield-Audit-Report-LineaBank-v1.0.pdf — no match: Contracts extracted from findings targets; no explicit scope table but report clearly identifies audited contracts.
- [1857] PeckShield-Audit-Report-LayerBank-v1.0.pdf — no match: Contracts extracted from 'Target' fields in findings. No explicit scope table found, but report clearly identifies audited contracts.
- [1858] 20250123-LayerBank-Final-Audit-Report.pdf — no match: Extracted 41 contract names from the 'Files in Scope' table (section 1.2) and findings code locations. Audit date from cover page: Wed Jan 22 2025.
- [1859] spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf — no match: Extracted contract names from scope directories and findings. Only three specific contracts are named in the report; other directories (leverage-looping, morpho-adapter, nest-adapter) are in scope but no specific contract names are given.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-LineaBank-v1.0.pdf | SaleLabOverflowFarm | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-LineaBank-v1.0.pdf | RebateDistributor | ambiguous — not counted | RebateDistributor (alternative) `0xc85836...ce616d` — deployed 2023-10-27 09:29:39+03 — liveness: live (current_address_book_code)<br>0x1097cc… (alternative) `0x1097cc...1cb5a7` — liveness: live (current_address_book_code)<br>RebateDistributor (alternative) `0x67d215...ce006f` — deployed 2024-02-20 10:13:43+03 — liveness: live (code_present_context)<br>0x615b3f… (alternative) `0x615b3f...545778` — liveness: live (current_address_book_code)<br>RebateDistributor (alternative) `0xea0165...9fbfc6` — deployed 2023-07-19 09:22:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LineaBank-v1.0.pdf | Liquidation | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | xLAB | ambiguous — not counted | xLAB (alternative) `0x69e38d...b74467` — deployed 2023-10-27 09:29:09+03 — liveness: live (code_present_context)<br>0x4e3a9d… (alternative) `0x4e3a9d...b6d0ba` — liveness: live (current_address_book_code)<br>0xce5848… (alternative) `0xce5848...8f98c3` — liveness: live (current_address_book_code)<br>xLAB (alternative) `0xd4ab47...2a9f8b` — deployed 2024-02-20 10:13:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | Leverager | ambiguous — not counted | 0xc876cd… (alternative) `0xc876cd...fa2e76` — liveness: live (current_address_book_code)<br>Leverager (alternative) `0xf0dcba...9029e5` — deployed 2024-02-20 10:15:17+03 — liveness: live (current_address_book_code)<br>Leverager (alternative) `0xc98b93...eefff3` — deployed 2024-03-12 12:10:38+03 — liveness: live (code_present_context)<br>0x51aca2… (alternative) `0x51aca2...5caa98` — liveness: live (current_address_book_code)<br>Leverager (alternative) `0x4054f4...bda9a6` — deployed 2023-10-27 09:31:59+03 — liveness: live (current_address_book_code)<br>0x670163… (alternative) `0x670163...b5a3a2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | RewardController | ambiguous — not counted | RewardController (alternative) `0xa2c4ff...0ba82a` — deployed 2024-02-20 10:14:07+03 — liveness: live (code_present_context)<br>0x20112c… (alternative) `0x20112c...ae4e42` — liveness: live (current_address_book_code)<br>RewardController (alternative) `0x68b30d...68eb40` — deployed 2023-10-27 09:30:19+03 — liveness: live (code_present_context)<br>0xc8485b… (alternative) `0xc8485b...7cab37` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | RateModelSlope | ambiguous — not counted | RateModelSlope (alternative) `0x709be0...7477fc` — deployed 2023-08-10 10:42:56+03 — liveness: live (current_address_book_code)<br>RateModelSlope (alternative) `0xd2ef9a...df3cf4` — deployed 2025-01-15 14:32:54+03 — liveness: live (code_present_context)<br>RateModelSlope (alternative) `0x16cd8d...f7b1af` — deployed 2024-02-20 10:14:29+03 — liveness: live (current_address_book_code)<br>0x5478ca… (alternative) `0x5478ca...f3ed58` — liveness: live (current_address_book_code)<br>0xa6bbba… (alternative) `0xa6bbba...2d4798` — liveness: live (current_address_book_code)<br>0x04a469… (alternative) `0x04a469...61c544` — liveness: live (current_address_book_code)<br>0xf93078… (alternative) `0xf93078...66b0fb` — liveness: live (current_address_book_code)<br>RateModelSlope (alternative) `0x56294e...c94899` — deployed 2025-01-15 14:33:03+03 — liveness: live (code_present_context)<br>RateModelSlope (alternative) `0x8a6c88...616178` — deployed 2025-01-15 14:33:12+03 — liveness: live (code_present_context)<br>RateModelSlope (alternative) `0x27f85b...1e660d` — deployed 2023-10-27 09:30:59+03 — liveness: live (current_address_book_code)<br>0xd27409… (alternative) `0xd27409...4cadfe` — liveness: live (current_address_book_code)<br>0x92ce82… (alternative) `0x92ce82...911bba` — liveness: live (current_address_book_code)<br>RateModelSlope (alternative) `0xc69054...38cad2` — deployed 2023-07-19 09:24:31+03 — liveness: live (current_address_book_code)<br>0x18941f… (alternative) `0x18941f...6f8df4` — liveness: live (current_address_book_code)<br>0x043962… (alternative) `0x043962...851475` — liveness: live (current_address_book_code)<br>LToken (alternative) `0x7def25...feff45` — deployed 2023-10-27 09:31:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | LToken | ambiguous — not counted | LToken (alternative) `0x864ae2...744e88` — deployed 2025-01-15 14:34:45+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x9e9aec...55d39a` — deployed 2024-03-12 12:09:18+03 — liveness: live (code_present_context)<br>LToken (alternative) `0xd97905...a15948` — deployed 2024-04-02 17:24:09+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x71384b...dced68` — deployed 2023-12-15 09:17:59+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x66a5e1...ed366e` — deployed 2024-04-19 09:26:41+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xfd160b...f16902` — deployed 2024-04-02 17:24:21+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x6fe395...08a855` — deployed 2024-06-13 08:35:45+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xdf4b60...5fc1c2` — deployed 2023-11-08 09:42:29+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xba6e89...bdbaec` — deployed 2024-02-20 10:14:53+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xfb9292...9c86b3` — deployed 2025-01-15 14:35:12+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xc7d848...c9d231` — deployed 2023-07-19 09:24:55+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x2ad69a...46c4b0` — deployed 2023-07-19 09:25:19+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x674927...f23e48` — deployed 2024-05-22 08:59:18+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xc5b9cb...df4959` — deployed 2024-02-20 10:15:05+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x10e4a6...e78e41` — deployed 2025-01-15 14:33:39+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xc0600b...408865` — deployed 2025-01-15 14:35:03+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x1c0577...0c325d` — deployed 2025-01-15 14:33:48+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x308294...6919ff` — deployed 2025-01-15 14:33:57+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xea0f73...f9de5f` — deployed 2023-08-10 10:42:32+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xa63047...82bc79` — deployed 2024-06-13 08:35:55+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x59dd44...06c256` — deployed 2024-04-19 09:26:29+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xb81b1e...28d890` — deployed 2024-05-22 08:59:30+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe855b8...12add5` — deployed 2024-02-20 10:14:41+03 — liveness: live (code_present_context)<br>LToken (alternative) `0xdf62df...3c8edf` — deployed 2025-01-15 14:34:15+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe6a89c...baf543` — deployed 2025-01-15 14:33:21+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xccba9a...b84f14` — deployed 2024-03-12 12:09:58+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x9d8ecb...7e21a4` — deployed 2023-11-01 10:41:59+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe009af...0f8750` — deployed 2025-01-15 14:34:33+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x00bce4...88d33c` — deployed 2025-01-15 14:34:27+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x9f8b5d...b46c19` — deployed 2024-05-22 08:59:12+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xb01f9d...b7ce28` — deployed 2024-05-22 08:59:24+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x472d43...c5e388` — deployed 2023-12-15 09:18:19+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x7479c7...07e0b6` — deployed 2023-10-27 09:31:19+03 — liveness: live (code_present_context)<br>LToken (alternative) `0xe33520...d564b9` — deployed 2023-11-09 10:28:59+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x8fefab...ab2053` — deployed 2024-03-12 12:10:18+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xf2794e...52725d` — deployed 2025-01-15 14:35:30+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x6a0d95...895ddf` — deployed 2024-04-02 17:23:57+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xcdfcfd...1d15f8` — deployed 2024-06-13 08:35:33+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xe07492...9b0cae` — deployed 2025-01-15 14:35:21+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x2c88a4...9409e2` — deployed 2024-04-04 08:23:49+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xd1a761...b8ad3d` — deployed 2025-01-15 14:34:06+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xeb27ea...09fef2` — deployed 2025-01-15 14:34:54+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x7def25...feff45` — deployed 2023-10-27 09:31:39+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xf8a89b...230d60` — deployed 2025-01-15 14:33:30+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0xf46680...4dc751` — deployed 2024-05-22 08:59:36+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x14abc6...eefd14` — deployed 2024-05-22 08:59:42+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x592411...ddde6b` — deployed 2024-03-12 12:09:42+03 — liveness: live (current_address_book_code)<br>LToken (alternative) `0x604ddc...6765ed` — deployed 2024-01-19 07:51:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | Market | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield-Audit-Report-LayerBank-v1.0.pdf | CoreAdmin | unmatched — not counted | — | Target in finding PVE-007 | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | helper | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | standard_token | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | coin_wrapper | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | stream | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | oracle | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | reserve_config | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | user_config | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | error_config | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | math_utils | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | wad_ray_math | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | large_packages | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | acl_manage | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | a_token_factory | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | token_base | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | fungible_asset_manager | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | variable_debt_token_factory | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | supply_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | flashloan_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | generic_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | bridge_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | liquidation_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | validation_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | user_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | borrow_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | emode_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | isolation_mode_logic | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | pool_data_provider | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | pool_configurator | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | pool | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | staked_token | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | emission_manager | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | ui_pool_data_provider_v3 | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | eac_aggregator_proxy | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | collector | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | ui_incentive_data_provider_v3 | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | package-manager | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | admin_controlled_ecosystem_reserve | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | rewards_controller | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | ecosystem_reserve_v2 | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | coin_migrator | unmatched — not counted | — | listed in scope | no |
| 20250123-LayerBank-Final-Audit-Report.pdf | transfer_strategy | unmatched — not counted | — | listed in scope | no |
| spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf | MaverickSwapAdapter | unmatched — not counted | — | Listed in scope and mentioned in findings H-1, M-1 | no |
| spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf | MaverickLeverageStrategy | unmatched — not counted | — | Listed in scope and mentioned in findings M-2, L-1 | no |
| spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf | MaverickAdapter | unmatched — not counted | — | Listed in scope and mentioned in finding H-1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x8efdd7...100ffa` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xb7a23f...748bbf` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x809808...c1ff50` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x009a0b...943833` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x43eac5...5de866` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xec53c8...4289aa` | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x67c10b...e483b0` | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xe8c3ba...4c1aec` | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5d0606...470957` | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x20a512...18c997` | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xfe67e1...3e59ae` | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb97f21...1ff75d` | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x4054f4...bda9a6` | Leverager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xf0dcba...9029e5` | Leverager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc98b93...eefff3` | Leverager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x14c5a2...b16494` | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x00bce4...88d33c` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x10e4a6...e78e41` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1c0577...0c325d` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x308294...6919ff` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x864ae2...744e88` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc0600b...408865` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd1a761...b8ad3d` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdf62df...3c8edf` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe009af...0f8750` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe07492...9b0cae` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe6a89c...baf543` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xeb27ea...09fef2` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf2794e...52725d` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf8a89b...230d60` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfb9292...9c86b3` | LToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x472d43...c5e388` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x604ddc...6765ed` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x71384b...dced68` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x7479c7...07e0b6` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x7def25...feff45` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x9d8ecb...7e21a4` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xdf4b60...5fc1c2` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x59dd44...06c256` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x66a5e1...ed366e` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x6a0d95...895ddf` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xba6e89...bdbaec` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xc5b9cb...df4959` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd97905...a15948` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xe855b8...12add5` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xfd160b...f16902` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x14abc6...eefd14` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2ad69a...46c4b0` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2c88a4...9409e2` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x592411...ddde6b` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x674927...f23e48` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6fe395...08a855` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8fefab...ab2053` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9e9aec...55d39a` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9f8b5d...b46c19` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xa63047...82bc79` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb01f9d...b7ce28` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb81b1e...28d890` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc7d848...c9d231` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xccba9a...b84f14` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xcdfcfd...1d15f8` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe33520...d564b9` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xea0f73...f9de5f` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xf46680...4dc751` | LToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe1a2d3...e12fff` | PriceCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x90286f...3e4cfd` | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xa6b253...62f7cf` | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x42e62f...b6d7fb` | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x56294e...c94899` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8a6c88...616178` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd2ef9a...df3cf4` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x27f85b...1e660d` | RateModelSlope | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x16cd8d...f7b1af` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x709be0...7477fc` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xc69054...38cad2` | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0xc85836...ce616d` | RebateDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x67d215...ce006f` | RebateDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xea0165...9fbfc6` | RebateDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x68b30d...68eb40` | RewardController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xa2c4ff...0ba82a` | RewardController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9afa0a...28dfa6` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x344727...71277e` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x0ccd70...e12769` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x720a99...5ca0e7` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe9e061...8d4ab9` | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x69e38d...b74467` | xLAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd4ab47...2a9f8b` | xLAB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 88 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 48 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [1856] PeckShield-Audit-Report-LineaBank-v1.0.pdf
- [1857] PeckShield-Audit-Report-LayerBank-v1.0.pdf
- [1858] 20250123-LayerBank-Final-Audit-Report.pdf
- [1859] spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
