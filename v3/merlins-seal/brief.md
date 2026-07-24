# Agentic Audit Brief: Merlins Seal

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Merlins Seal (`merlins-seal`)
- Website: [https://merlinchain.io/bridge/staking](https://merlinchain.io/bridge/staking)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, merlin
- Contract surface: 199 unique implementations (199 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $349,025,166.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Merlins Seal in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00fe628d3400292b34bb9ed1527b29a2bbdef4f7`, chain 4200)
- UnnamedContract (`0x0726523eba12edad467c55a962842ef358865559`, chain 4200)
- UnnamedContract (`0x27622b326ff3ffa7dc10ae291800c3073b55aa39`, chain 4200)
- UnnamedContract (`0x4dcb91cc19aadfe5a6672781eb09abad00c19e4c`, chain 4200)
- UnnamedContract (`0x69181a1f082ea83a152621e4fa527c936abfa501`, chain 4200)
- UnnamedContract (`0x6b4ecada640f1b30dbdb68f77821a03a5f282ebe`, chain 4200)
- UnnamedContract (`0x967aec3276b63c5e2262da9641db9dbebb07dc0d`, chain 4200)
- UnnamedContract (`0x977a08da044d35dd08026c5d99861a13f8e7ac5a`, chain 4200)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 170 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 8 of 199 unique; 191 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 158
- Unique implementations: 199
- Raw deployments: 199
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728da61583441bb4326481ae27edeaaaa2d75c19` | ⚠️ Unaudited |
| AssetsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219e157c79f5b188397f6ccdb6d0f97600eadfb6` | ⚠️ Unaudited |
| AssetsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9` | ⚠️ Unaudited |
| AssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc603779dc6b4866769a58067777d2c52628226` | ⚠️ Unaudited |
| AsyncDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed15e5dd75a266110a69764ac6919ef9188656cb` | ⚠️ Unaudited |
| BeraStoneRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664` | ⚠️ Unaudited |
| BevmDepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f` | ⚠️ Unaudited |
| DepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1565db133d0108e911224f174ec12d20f1531a76` | ⚠️ Unaudited |
| DepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x147a198d803d4a02b8bec7cc78be1abe0c3d93e5` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb` | ⚠️ Unaudited |
| MellowDepositWstETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574` | ⚠️ Unaudited |
| MiningPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f5420e76eec29027800d4e3e8e879617bde709b` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec306e46549a7e8f4fce823d3058f2d134133b17` | ⚠️ Unaudited |
| NativeLendingETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d70868f12a05b8c347974415bac5de053daa376` | ⚠️ Unaudited |
| NoDelayTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e72315f630b11034fd081793fca1279b6a3d82` | ⚠️ Unaudited |
| OneDayDelayTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eddcfe6b829621487a00e3b3d211ef80986de9a` | ⚠️ Unaudited |
| OracleConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cd42e64630d25406bfc51cca65cffa7cd495fb1` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196` | ⚠️ Unaudited |
| ParamRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fa8e2673ee9de09c31cad191d8974ac1f125e23` | ⚠️ Unaudited |
| Proposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b` | ⚠️ Unaudited |
| SBTCBeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x437c885357425686b53e0d18c8d9c26a4a6be43f` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf` | ⚠️ Unaudited |
| STO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d` | ⚠️ Unaudited |
| StoneBeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0` | ⚠️ Unaudited |
| StoneBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094c0e36210634c3cfa25dc11b96b562e0b07624` | ⚠️ Unaudited |
| StoneBTCVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dbac0aa440a25d7fb43951f7b178ff7a809108d` | ⚠️ Unaudited |
| StoneCarnival | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0` | ⚠️ Unaudited |
| StoneCarnivalETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42af9986e56c8c9a88368d69879a64de6715754b` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5` | ⚠️ Unaudited |
| StoneVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62f9c5af106feee069f38de51098d9d81b90572` | ⚠️ Unaudited |
| StoryPreDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1381900c742b509cf2b23d6b293649ea875654c` | ⚠️ Unaudited |
| ThreeDaysDelayTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc29f7781a26dd3958d0caf26885c4820d031ae6` | ⚠️ Unaudited |
| TimeLockContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5e8c3f0ea1d4004f32dfae54bca88c78d065d869` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de028af168524f3557615d2f0ef9943e6731ee4` | ⚠️ Unaudited |
| VeSTO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0abc56ed707a55825312e2fe2f5dc11876828c2` | ⚠️ Unaudited |
| WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628` | ⚠️ Unaudited |
| WithdrawController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081d9019b016d7879b3aa4b278728771bfdb0b29` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (158)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009a0d4f1d2b5724c1875782793786a2984136a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f790cd26f932561f1b036546991cbb2490743b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6c5d9078c6b5e3cd58a019183abb70d14b490a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8061e98b20f23f313bd8981f126932161b10d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fac524f8cc56f693ab84fd30b888e38439ce43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fee4de7d1246eef15f53fa5ce955f5c2afb1ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb7191a7489f6be6f5739da1114ccd907e0344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b4fdb671b4102ce1f2bc64f61ba7e16fe781c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129e49c0399e3c932d34c3b76a598214b5b82cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15469528c11e8ace863f3f9e5a8329216e33dd7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17091b36bd06bb7a60d2c36e30b68c7d5508d168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba12d2f3f3a7bed7dc0938ef040d38d3cdea35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23d7c4506142ed23025a9a61d696d63da6b3d57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2744f13466a00b5073a408357936e4fb3e235fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ad26e1c4d164a5561d7fd0ec910900be716440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x280cc0dc62e12938d6af47d67406197973c0457e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b1d947f995cdad9ee38aed2096c75fcbb47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d209b857c6d1361031a2874da59ad9df593b727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d83f5bfc83cf0b09b8884101c015fa9c74c32f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ea78379520380d37b0708a0294664a3ab626b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f453dffecb8fb45248882bf9232b039132cd192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3035ad9b8adba657a20bc6c4aec13c29d6e06fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318cd27ae7d6b81f1be3cfaf6cd62bc75c8e7b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3421981450758e341f2b91397bb7b76a556cb20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363d200e54fe86985790f4e210df9bfb14234202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d98fb5cb6d3d05880db8a9c6c4d668684db5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dc916664dae3ae8eecce340a36af8de2af7986f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9f9cc333db3169a583d93ee64bb5971e260fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502f174ce17c273449d3191000cabe0a040da29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5502fdf6f101ece6e4c7c10ef060a947d8b3c1d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x561f09697bddf86941cbdaeeddac7be39991dc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fb2f90f0962379e3722c55bb1abb70d14e9b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595d2018292b8c89fc3dfb049ae95cf73f2c1546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae986aa3777850dbe42f5afda171691225bab2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60de74f84f020a0f4bf6515775bb5bf48e7e156b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6109b5ff17b244914ee59104a01aaf0e61cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612ab72ec3c3493840156d45cef3d44861638da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e53ee3bc60899987bb2159ecc7c04beb09d3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a2adbb67491eece4302444896ffb74ec9dde52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a6e3a4396993a4ec98a6f4a654cc0819538721e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c344c6191fee58f0de2604721f596efbc9f7822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d23c3c68c6c8668f13892841e3c7d04e97e2b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7061bbc6fe070aa0492dd9fc65e92d17184e51ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7356c596e6e0167b251ee80fb7567c310dd594de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7519af366e629eaa9dbfb898ae72c34ec09e6151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7549383dce0bc1b5fbdb5b8f107df0720ea37f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78787f403e008461c45a7ece12c9ff2762a7eebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78cb7b1af1db06bec1035f2949dbe99adbee3947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ed45e12187f03bebecb94765cdb5af3362828b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf51c1a6f53fe990e47ccb9497b38c78036af9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cf9e2e7fe72455fbbb698c56db81c98c891d75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0dcb8574f6d3680945c250f6674418ce3c3f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f60e63e40e5065e5a48a77010169de269fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bd64913e71b0fa466bcc0a746cbc61bee4fd9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c9c3a4763fc57d7e3763e23b60f40fe9dc779e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856edf1b835ea02bf11b16f041df5a13ef1ec3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8613d529a8c243690aedd69e427216029e4ba3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8636dd05027ec8ba84fa8c982951bbb61dcfef6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88bcc9ae483d1baf65b2a45888e350c487958354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c17d2e1d968c5f71cc81c8b87f4c4e23cc16115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4998661618c5cc5dbcc0ae19923d6537622180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91063e115e49589dc058272bf5683eb881d00d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916f462d66154362b3546fefae6fda7104d8a3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9221fbe66be06f43dcbda3fc17cdd66ef1b236f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cabf2a0460661f70f044b8af2626cfacc44341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958e01198d746588d0fad38d86a41684bcf7dd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97ad75064b20fb2b2447fed4fa953bf7f007a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d45e2d3a24b37eef35ee00dd0bf325bc655ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e505923f2a7ed083bab013f500978dedfd7791b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ffc173a8b4f137f58dff176c3c85bb8de0af371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0a2917cb9fbf3159730cb502e83cc7b32202c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11e34eeea62a157d44a0bf18a6e0c18f35f72bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23cb55e79c08af3d30557c8f29caf640eed334f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa56248248eba8f815621f9f4c686696a6b148cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa66723d951f15423ef2c9c11edcb821e38301836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b4bfa0da2a857e074eb9f108e14012c2c71c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb52b0a8f3131303ec4efbcdfd1b82cb3727d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0d7c9a60500b16f7929d766eda67eae52ec429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff83f1190024e2edbdfd3e0372359f772c52c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb28ecfc8ae218bc2c16c1f2218a9cc799191b1a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb305101fd13b46d4e79bbd293526ca441af8d24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb310890b6ea10e97f903edcc8964aad125257ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb347062b566621604963256be3ef958f8bbad586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3fc739972795e0f2a8da00173ee9cf834b54541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f77e4071dd8aee400d08ca0905425430df233d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ea9f1d8ac2b9da5182b1e298f827e7309947cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d5d68a9d6debdf125073a391b2a12e8321e9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5895f5050c030c4bc4f76ba4d590d8c09d9450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe90e99931b65ff3055aec69b45ef21382b88e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc84ff8a2f781eb76febb8558699bba83acb38ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40329d3ae56af6b0757c3fe53941ddcc3d92671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc620cb64c6c504f417da517048ae2dab7cca75fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc697a694d3f9b25bb1851ecdc0c77c52199872a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f830bb162e6cfb7b4bac242b0e43cf1984c853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b62ef27d0ef314ebcfa46f657e232bc27db057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b644191993ca1e9ce94920f267ed7fb16e90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9f37f06d75274c610fb5e428f38273afc1cd0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd081be7f329e13c4097cfa3668f1e690cde9c08d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a81dacde6b8b9760302a0b91953a1392a6c61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ebd9f75fbd0bc8852b6fa454cec6e52ac07e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4dfb080a8904a7e2b7dfcc524cb828584f97782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5bb230544b77e866d9769a7f1cb7da534c4574f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd682c2b9814fb096c843984da9810916cb2206e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7f311a29b54e13b0a6c97027ece4a41cbe9ea38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd800602fa6d4713d90a261f16100add2105ae48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf1695c41327b61b9b9965ac6a5843a3198cf07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc939bee0e1ccd198a5af5ac1f90ea0b8ee03cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcd0c0703146d8debc55fda559c5fb5d3ed3608a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7e639dc4b1c3b53ca4b07c2a7f59b4064b2cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe578acc6943025150e5985409b314fe4ea81d9fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84a28afb0cece439a3fac11f19141d353e0ad68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe942cdd0af66ab9ab06515701fa3707ec7deb93e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94bf3290877d1ffb5aabbc643e4429655e007c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea96d98d9a947b68899365202a43890a4d38db19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf100443eef300ad8c2fddb1457ee0e8ce9d9980b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1670996a123042fda40c14e13b52318d2f78e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf401cc9f467c7046796d9a8b44b0c1348b4deec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c1c788817a9a9f56dbe81945f7a0d712eb5c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60b394638ecbc2020ac3e296e04fd955a3eb460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d904d2849e562c71ba055a859c70abe876199a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf97c478f34e1dba7e399b973f4b720ba5885290b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaac8b3fba2fcc01e4ddb5d5fc761578d0d05545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb153d3b08871f9e113e3e474eac0d944bf9164f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4cb3f473203fac25d292701e3274c298909a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5ed981bbea652ab0c44bf3006fac48b0d69b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd47eb1084ebdb3f1ae000cbd213420b398bda70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6577ad85a00055907b0c6f7b0c7ecc3fa60465` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246467 | `0x00fe628d3400292b34bb9ed1527b29a2bbdef4f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246468 | `0x0726523eba12edad467c55a962842ef358865559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246469 | `0x1411626970e70f5b5d3351e339b58f61bdc68073` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246470 | `0x20584ec056702620131894c2e16901b70404155a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246471 | `0x24c1bd5c41d0b0813730b5895e9f343fb8477bea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246472 | `0x27622b326ff3ffa7dc10ae291800c3073b55aa39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246473 | `0x32a4b8b10222f85301874837f27f4c416117b811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246474 | `0x46063722c010af39e465d286b84936a12afb81f0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246475 | `0x480e158395cc5b41e5584347c495584ca2caf78d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246476 | `0x48e6aca1b480dc98e2cac560b10c47cb35ee838c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246477 | `0x4a7aa0d04b36cd5cecaac9828de84f70346b840d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246478 | `0x4dbe39d987665d0cb9f921b50b2673346b87cafa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246479 | `0x4dcb91cc19aadfe5a6672781eb09abad00c19e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246480 | `0x580283e82d6571b6816f8742a03bda606148a422` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246481 | `0x5c46bff4b38dc1eae09c5bac65872a1d8bc87378` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246482 | `0x69181a1f082ea83a152621e4fa527c936abfa501` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246483 | `0x6b4ecada640f1b30dbdb68f77821a03a5f282ebe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246484 | `0x6bfbe911d6a68d4fc45fed0ec0f60ac111a3ce15` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246485 | `0x7c09e01c9257a404d5caf5c3dfa79bc00281734e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246486 | `0x7dcb50b2180bc896da1200d2726a88af5d2cbb5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246487 | `0x9458ea21932515dd0e82543891068f065b88a98a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246488 | `0x967aec3276b63c5e2262da9641db9dbebb07dc0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-246489 | `0x977a08da044d35dd08026c5d99861a13f8e7ac5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246490 | `0x9bd60d6fc99843207b8149f9190438c1f81bddcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246491 | `0xa2b1f801f67850a536969be0e620ae87b0da0a2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246492 | `0xb880fd278198bd590252621d4cd071b1842e9bcd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246493 | `0xd32e14cc9aa5413622fd00b28e50adfbf25c7ef8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246494 | `0xf3188371290d36966bc6e88e3494db8a4f60045a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | merlin | unit-246495 | `0xf6d226f9dc15d9bb51182815b320d3fbe324e1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bb6cae3f1cada07dd14ba951e02886ea6bba183` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 129
- Live contracts: 0
- Unknown liveness contracts: 129
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=129

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8bb6cae3f1cada07dd14ba951e02886ea6bba183` | non_address_book | unknown | unknown | unverified | n/a | `0x9e498dd03c5e984c105e83221aa911dec4844db5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x009a0d4f1d2b5724c1875782793786a2984136a9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02f790cd26f932561f1b036546991cbb2490743b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d6c5d9078c6b5e3cd58a019183abb70d14b490a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e8061e98b20f23f313bd8981f126932161b10d9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0fac524f8cc56f693ab84fd30b888e38439ce43a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0fee4de7d1246eef15f53fa5ce955f5c2afb1ec1` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10fb7191a7489f6be6f5739da1114ccd907e0344` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11b4fdb671b4102ce1f2bc64f61ba7e16fe781c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x129e49c0399e3c932d34c3b76a598214b5b82cf9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15469528c11e8ace863f3f9e5a8329216e33dd7d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17091b36bd06bb7a60d2c36e30b68c7d5508d168` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22ba12d2f3f3a7bed7dc0938ef040d38d3cdea35` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23d7c4506142ed23025a9a61d696d63da6b3d57e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2744f13466a00b5073a408357936e4fb3e235fd2` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27ad26e1c4d164a5561d7fd0ec910900be716440` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x280cc0dc62e12938d6af47d67406197973c0457e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b1d947f995cdad9ee38aed2096c75fcbb47ec8d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d209b857c6d1361031a2874da59ad9df593b727` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d83f5bfc83cf0b09b8884101c015fa9c74c32f3` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ea78379520380d37b0708a0294664a3ab626b74` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f453dffecb8fb45248882bf9232b039132cd192` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3035ad9b8adba657a20bc6c4aec13c29d6e06fd1` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x318cd27ae7d6b81f1be3cfaf6cd62bc75c8e7b8d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3421981450758e341f2b91397bb7b76a556cb20b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x363d200e54fe86985790f4e210df9bfb14234202` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x38d98fb5cb6d3d05880db8a9c6c4d668684db5d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dc916664dae3ae8eecce340a36af8de2af7986f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f9f9cc333db3169a583d93ee64bb5971e260fa7` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x502f174ce17c273449d3191000cabe0a040da29e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5502fdf6f101ece6e4c7c10ef060a947d8b3c1d9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x561f09697bddf86941cbdaeeddac7be39991dc0e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58fb2f90f0962379e3722c55bb1abb70d14e9b41` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x595d2018292b8c89fc3dfb049ae95cf73f2c1546` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ae986aa3777850dbe42f5afda171691225bab2f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60de74f84f020a0f4bf6515775bb5bf48e7e156b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6109b5ff17b244914ee59104a01aaf0e61cb52fc` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x612ab72ec3c3493840156d45cef3d44861638da1` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66e53ee3bc60899987bb2159ecc7c04beb09d3c4` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a2adbb67491eece4302444896ffb74ec9dde52b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a6e3a4396993a4ec98a6f4a654cc0819538721e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c344c6191fee58f0de2604721f596efbc9f7822` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d23c3c68c6c8668f13892841e3c7d04e97e2b4a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7061bbc6fe070aa0492dd9fc65e92d17184e51ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7356c596e6e0167b251ee80fb7567c310dd594de` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7519af366e629eaa9dbfb898ae72c34ec09e6151` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7549383dce0bc1b5fbdb5b8f107df0720ea37f84` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78787f403e008461c45a7ece12c9ff2762a7eebe` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78cb7b1af1db06bec1035f2949dbe99adbee3947` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78ed45e12187f03bebecb94765cdb5af3362828b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bf51c1a6f53fe990e47ccb9497b38c78036af9d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7cf9e2e7fe72455fbbb698c56db81c98c891d75f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f0dcb8574f6d3680945c250f6674418ce3c3f0b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f60e63e40e5065e5a48a77010169de269fc8ab7` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82bd64913e71b0fa466bcc0a746cbc61bee4fd9a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83c9c3a4763fc57d7e3763e23b60f40fe9dc779e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x856edf1b835ea02bf11b16f041df5a13ef1ec3d1` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8613d529a8c243690aedd69e427216029e4ba3e4` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8636dd05027ec8ba84fa8c982951bbb61dcfef6c` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x88bcc9ae483d1baf65b2a45888e350c487958354` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b4e28607bdcacbf937f81f29e3dafe7bc1d7c0b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c17d2e1d968c5f71cc81c8b87f4c4e23cc16115` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f4998661618c5cc5dbcc0ae19923d6537622180` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91063e115e49589dc058272bf5683eb881d00d24` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x916f462d66154362b3546fefae6fda7104d8a3ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9221fbe66be06f43dcbda3fc17cdd66ef1b236f9` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x94cabf2a0460661f70f044b8af2626cfacc44341` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x958e01198d746588d0fad38d86a41684bcf7dd8d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97ad75064b20fb2b2447fed4fa953bf7f007a706` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99d45e2d3a24b37eef35ee00dd0bf325bc655ed1` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e505923f2a7ed083bab013f500978dedfd7791b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ffc173a8b4f137f58dff176c3c85bb8de0af371` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0a2917cb9fbf3159730cb502e83cc7b32202c7f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa11e34eeea62a157d44a0bf18a6e0c18f35f72bc` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa23cb55e79c08af3d30557c8f29caf640eed334f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa56248248eba8f815621f9f4c686696a6b148cc7` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa66723d951f15423ef2c9c11edcb821e38301836` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6b4bfa0da2a857e074eb9f108e14012c2c71c7c` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacb52b0a8f3131303ec4efbcdfd1b82cb3727d2f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae0d7c9a60500b16f7929d766eda67eae52ec429` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaff83f1190024e2edbdfd3e0372359f772c52c46` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb28ecfc8ae218bc2c16c1f2218a9cc799191b1a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb305101fd13b46d4e79bbd293526ca441af8d24a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb310890b6ea10e97f903edcc8964aad125257ddb` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb347062b566621604963256be3ef958f8bbad586` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb3fc739972795e0f2a8da00173ee9cf834b54541` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb6f77e4071dd8aee400d08ca0905425430df233d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8ea9f1d8ac2b9da5182b1e298f827e7309947cf` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9d5d68a9d6debdf125073a391b2a12e8321e9fe` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb5895f5050c030c4bc4f76ba4d590d8c09d9450` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbe90e99931b65ff3055aec69b45ef21382b88e2` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc84ff8a2f781eb76febb8558699bba83acb38ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc40329d3ae56af6b0757c3fe53941ddcc3d92671` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc620cb64c6c504f417da517048ae2dab7cca75fa` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc697a694d3f9b25bb1851ecdc0c77c52199872a6` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6f830bb162e6cfb7b4bac242b0e43cf1984c853` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8b62ef27d0ef314ebcfa46f657e232bc27db057` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb8b644191993ca1e9ce94920f267ed7fb16e90c` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf9f37f06d75274c610fb5e428f38273afc1cd0d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd081be7f329e13c4097cfa3668f1e690cde9c08d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0a81dacde6b8b9760302a0b91953a1392a6c61d` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0ebd9f75fbd0bc8852b6fa454cec6e52ac07e10` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4dfb080a8904a7e2b7dfcc524cb828584f97782` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5bb230544b77e866d9769a7f1cb7da534c4574f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd682c2b9814fb096c843984da9810916cb2206e0` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7f311a29b54e13b0a6c97027ece4a41cbe9ea38` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd800602fa6d4713d90a261f16100add2105ae48b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdaf1695c41327b61b9b9965ac6a5843a3198cf07` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc939bee0e1ccd198a5af5ac1f90ea0b8ee03cd0` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdcd0c0703146d8debc55fda559c5fb5d3ed3608a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf7e639dc4b1c3b53ca4b07c2a7f59b4064b2cf7` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe578acc6943025150e5985409b314fe4ea81d9fa` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe84a28afb0cece439a3fac11f19141d353e0ad68` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe942cdd0af66ab9ab06515701fa3707ec7deb93e` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe94bf3290877d1ffb5aabbc643e4429655e007c8` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea96d98d9a947b68899365202a43890a4d38db19` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf100443eef300ad8c2fddb1457ee0e8ce9d9980b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1670996a123042fda40c14e13b52318d2f78e90` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf401cc9f467c7046796d9a8b44b0c1348b4deec7` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4c1c788817a9a9f56dbe81945f7a0d712eb5c48` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf60b394638ecbc2020ac3e296e04fd955a3eb460` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7d904d2849e562c71ba055a859c70abe876199a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf97c478f34e1dba7e399b973f4b720ba5885290b` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfaac8b3fba2fcc01e4ddb5d5fc761578d0d05545` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb153d3b08871f9e113e3e474eac0d944bf9164f` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb4cb3f473203fac25d292701e3274c298909a03` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc5ed981bbea652ab0c44bf3006fac48b0d69b3a` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd47eb1084ebdb3f1ae000cbd213420b398bda70` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe6577ad85a00055907b0c6f7b0c7ecc3fa60465` | non_address_book | unknown | unknown | unverified | n/a | `0xc1364ad857462e1b60609d9e56b5e24c5c21a312` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bitmap-Tech-BTCBridge_report_2024-03-06.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Bitmap-Tech-BTCBridge_report_2024-03-06.pdf) | Bitmap Tech | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf) | ScaleBit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Merlin_BTC_L2_final_Secure3_Audit_Report.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Merlin_BTC_L2_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [SlowMist Audit Report - BTCLayer2BridgeContract.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/SlowMist%20Audit%20Report%20-%20BTCLayer2BridgeContract.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf) | BlockSec | Audit | 2024-04 | stale | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [merlin-audits (GitHub directory)](https://github.com/MerlinLayer2/merlin-audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21160] Bitmap-Tech-BTCBridge_report_2024-03-06.pdf — no match: Extracted 5 contracts from Appendix 1 - Files in Scope. Audit date from 'Date Mar 06 2024' in header.
- [21161] Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf — no match: Extracted 12 contract names from the 'Files in Scope' table. Audit date from header: 'Mon Jan 22 2024'.
- [21162] Merlin_BTC_L2_final_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 5 are extracted. The audit date is from the cover page: Jan 23rd, 2024.
- [21163] SlowMist Audit Report - BTCLayer2BridgeContract.pdf — no match: Contracts extracted from visibility description and vulnerability sections. Audit date from audit result table: 2024.01.24 - 2024.01.26, using end date.
- [21164] blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf — no match: Only one contract in scope: ERC20TokenWrapped. Date found on cover page and in version history.
- [21165] merlin-audits (GitHub directory) — no match: The provided text is a GitHub repository listing with PDF filenames but no actual audit report content. No contract names or scope details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | BTCLayer2Bridge | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | BTCLayer2BridgeERC20 | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | BTCLayer2BridgeERC721 | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | ERC20TokenWrapped | unmatched — not counted | — | listed in scope appendix | no |
| Bitmap-Tech-BTCBridge_report_2024-03-06.pdf | ERC721TokenWrapped | unmatched — not counted | — | listed in scope appendix | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKValidiumDeployer | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | PolygonZkEVMGlobalExitRoot | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | FflonkVerifier | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKValidiumTimelock | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKValidium | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | TokenWrapped | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | DepositContract | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | EmergencyManager | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | GlobalExitRootLib | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | PolygonZkEVMGlobalExitRootL2 | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | CDKDataCommittee | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf | PolygonZkEVMBridge | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKValidium | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | FflonkVerifier | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | PolygonZkEVMBridge | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKDataCommittee | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | TokenWrapped | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | DepositContract | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | PolygonZkEVMGlobalExitRoot | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKValidiumDeployer | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | EmergencyManager | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | CDKValidiumTimelock | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | PolygonZkEVMGlobalExitRootL2 | unmatched — not counted | — | listed in scope table | no |
| Merlin_BTC_L2_final_Secure3_Audit_Report.pdf | GlobalExitRootLib | unmatched — not counted | — | listed in scope table | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | BTCLayer2Bridge | unmatched — not counted | — | listed in scope and vulnerability analysis | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | BTCLayer2BridgeERC721 | unmatched — not counted | — | listed in visibility description | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | BTCLayer2BridgeERC20 | unmatched — not counted | — | listed in visibility description | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | ERC721TokenWrapped | unmatched — not counted | — | listed in visibility description | no |
| SlowMist Audit Report - BTCLayer2BridgeContract.pdf | ERC20TokenWrapped | unmatched — not counted | — | listed in visibility description | no |
| blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf | ERC20TokenWrapped | unmatched — not counted | — | Section 1.1: 'The focus of this audit is on the ERC20TokenWrapped Contract.' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 158 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 35 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: n/a

Zero-match audit list:

- [21160] Bitmap-Tech-BTCBridge_report_2024-03-06.pdf
- [21161] Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf
- [21162] Merlin_BTC_L2_final_Secure3_Audit_Report.pdf
- [21163] SlowMist Audit Report - BTCLayer2BridgeContract.pdf
- [21164] blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf
- [21165] merlin-audits (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
