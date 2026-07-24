# Agentic Audit Brief: Breadchain

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

- Project: Breadchain (`breadchain`)
- Website: [https://fund.bread.coop/](https://fund.bread.coop/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: gnosis, sepolia
- Contract surface: 306 unique implementations (306 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $418,668.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Breadchain in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x680b581605dc0a6902735a80de35cb0ef6e90865`, chain 100)
- CurveStableSwapNG (`0xf3d8f3de71657d342db60dd714c8a2ae37eac6b4`, chain 100)
- EIP173ProxyWithReceive (`0xa555d5344f6fb6c65da19e403cb4c1ec4a1a5ee3`, chain 100)
- SavingsXDaiAdapter (`0xd499b51fcfc66bd31248ef4b28d656d67e591a94`, chain 100)
- TransparentUpgradeableProxy (`0xee95a62b749d8a2520e0128d9b3aca241269024b`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 300 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 5 of 306 unique; 301 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 302
- Unique implementations: 306
- Raw deployments: 306
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bread | unknown | project_anchor | own_supporting | 1 | gnosis | unit-381518 | `0xa555d5344f6fb6c65da19e403cb4c1ec4a1a5ee3` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | project_anchor | own_supporting | 0 | gnosis | unit-381515 | `0xf3d8f3de71657d342db60dd714c8a2ae37eac6b4` | ⚠️ Unaudited |
| SavingsXDaiAdapter | unknown | project_anchor | own_supporting | 0 | gnosis | unit-381514 | `0xd499b51fcfc66bd31248ef4b28d656d67e591a94` | ⚠️ Unaudited |
| YieldDistributor | unknown | project_anchor | own_supporting | 1 | gnosis | unit-381517 | `0xee95a62b749d8a2520e0128d9b3aca241269024b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (302)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ButteredBread | unknown | project_anchor | own_supporting | 1 | gnosis | unit-381519 | `0x680b581605dc0a6902735a80de35cb0ef6e90865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x01ac9005f8446af28b065af87216b85faac5f6e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02ae11dc9783467e0830041399a2d48251f63907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02e2e694184955432037856e1785a598f2c6eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x05059bd06df40944507a939898967641346eb824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0514ba56e9efb43583b02aa91e38c295f7d599b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x059c47cdad2c96ca5551921124b75b82119bf73a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x062b9d1d3f5357ef399948067e93b81f4b85db7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x06427f786bdf82d3b6cf90cb72be450327002c89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0658ae365b76f286efb37ef7824ab7dd81bdb7bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x071bf5695afeda65c405794c6574ae63ca8b73c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09bf5d4dff196c000fb735f94e4b22340b25e678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0af20c8403cfcb58863250323e80125b6ae2028f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0be1377b3059f46c406393c3ff2fd7c2736e2da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0cf086e8714571c85b3e88b541fcac763555b66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d23359086cbdda2f49e29de370ab85b451e81dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0e583b7fdb4b9bcb60360e36ab936288464689bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0e8cd924a133893be719a9da9328871bcb46cafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0f0a02d56708e01af559f7d80b916c178ca6efa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x100bd913a8339250bc0f9ab788baabe0fb7ec7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x103a06d091d53fd25e29348484cc7518215ee672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x109f6f453a9aa0f45a2353d517504ee3258d23fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x110e2d3d4c94596f5698c753d5cd43221d3ec78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x13f2b819b7165686f36af81d887e1459d19de3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1437f115bd1d206c1c0955ac70debafd964eadfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x152fe5a19e4a4740699bfd519be89c9f7540927f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x15b7bd2686650eadb6feb1be6e9134c1f9241a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x169eb836bd947670d2d26b64157a8723b61744c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1707a724612ecba66a2cb13d4a0a6b72ce2046be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17780d40287eb6d9605ec8b324605cf98a625122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17b5bd53abe3d89dd0ae7a5e2e8d2f3268e3bdb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17dce52b2f7abe4204011196019276d36cd55c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1881dd4589447aaa1d8fd0515878fbed971a6bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x196463f0d3819b4964fd1b5f23dff9cb381bfeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1964b041ad6ab83275f3cc9bcafa4e92b13ceff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19bfaf6c3c091aa145f7df7d7a687b2c1c1abd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b0348c67d01a46627ce1d8f9e2e218c9eae9966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1c5b8da51e5deef2acc29dffe4c34c781fecf942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1d6f5eae5f631ed8cf424afc9d1e4ffdacbbcd16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f78108fdd0cb4bb0475fc9ce9e9a92688dd2f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x201959d07446095cebbb3c162afd9ff7749437a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x20ae7b336463f4c8f293c45bee436d31d156b276` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x20e5eb701e8d711d419d444814308f8c2243461f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x21d111397004638300fbfe648f33d4ebcf50243a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x223fe000fc6ef0ed36576d912e506b5f572c7ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x22df53dc7efb5d74828f19784db2ad375f3b02c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x23c5515e7464c15d8f56e3a48cb220d9ee265126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2447c8c415a6c4775aeb9ee05ee0240656c21fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x248ce8d11c990190642aa4eb34e8af2c832acc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x25fa1d8b25160789446300ad987a64cb54376471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2869b62af774fe012de271de6dc7bca0cd87145f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x287b082f4d6c72130fed8967ea6e3a7be63ddcc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x294cfacfef69369c09669463f2e071029259c429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2993bd6da994378eadf1a5ba5c9017fdfc92f111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ac1f91872c2a642ea957f6822afa470194f1904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2cd3494bb70a30f042fcfccab4d192f6b7449042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e91cd1bf5ab2104633112ef35a7eb6998ec2695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ffabab31ab17f785b9d03abc9f022fc57775aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x30d796a838f0eb46b05c484e3336054f4d9fe494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3146b62466b76642127b9f4fe34fa7cd9968bf96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x315a8234091150f857d3a6bab3c9d13fe6ba0553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x335101dde72bfcea8be6a93c73bd76e4dad3b3a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x335520a0cc22d8b07bac4a8900fc620566f6f1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x34193726a7bd7a33c1fa7542463c5c51b5702fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x34f1b13169d855525c667b914dc6ffebe0d930e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x35dd0085adea1ae2c1893107b844bfec40b85db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x365d2e94e3c0e84e7f7a678482f6029151f35322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x37673908230360128162aaf9790c90af9540d42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x379fe40502144fbe9b941c3e30a01a2072084150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x37b23a4e2158e65fb990f089f5565c9425dcf938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x391751e341c99db30a85de35415f87734f1ca2ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3949b3cb2659663c30ab91deba19100ec05bf988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x39ce830f258798269080927ba9bf35f32648a050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3df19344e31ba689fe1f56b3ef43ef6cfaa13096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3e2081400517e9ef8436401e0c06dc2cbe9ec2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3eb706053a2f5629edd7f94125b78377b4ddfdf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x40d2e77cf5328aade163fbbaf239152d0dc67b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4125737f1af8343a137da77194ee7faaa4b0b078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x41a7d5844aae7009b0bc5b238d07eb7640ece243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x427252d1a013a7d41fa001dabc4d7a5c436aeb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x44d639ce14b0aad6d874efe5226e9aab66354ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x456844e967f823df3aa565d16d8ed7d4d99179ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x466df21ffb4b1ca195abf59dfc41a0c98da7b1d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x46ad11df6c12e355241dfca7cea5734e0d512e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x46eb3f515c72de82a03d28fec263a56943cd581c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x475506f459c814d6d27c76115a1a95175627ff7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4854fe55540f5248c43352e2ef771ed15ebe0863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4ab77f4883d099992c69d417ff8708220da171d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c8b996c61d72a5dc39dd2bc54512612fabfb961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4da5beb71f98dbadb86a93ccbaf63093a53eaae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e1461882e72232807f7a65081321b543e2e52c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e7dfd59060e2c91495b006617f7e429439304ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x51ac0df916fb4ef50cb3f3457267654e672976f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x538bb83418a7e58fb4f7c72d34d589b329ffbb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53ba4b2ed945e1eba48056ac02e610d10616921f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x55f1d6b75c70890a464b6e7d99881707643d6ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x562e49d53ccbdc7f446f4683e270f6e51e9ec2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5630622525e50e385126a1134b842c2263a35789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5668e5a6b4663dc062db4b437f790909e68fe99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x569358ba6579539c6a2dc868aa57ed7e0ad2075e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x577b5b03c0a1295b34f193ac9760063c0bc2159f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x57cba82270fd0eeb3fc76b7c97480a8720bdb2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x585286155a1248c30851743f1472df178ddc9fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x58a88f0b48a7334e0434f5ab929865f2e1a032c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x59f69b709da396951c5a033f4d19ad4e8966256a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5ad43460308287189cf7207f7750373649137bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5b12a1102b0a6222425fdb31afc541e92218b35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5be5d4bb56451a27c76f3ea87f7c564f05c20dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5c5841032ce623d5ad91b0d37cd008a141bf047b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d1e9fa09ed123660775c395beac281f405befb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d9a99c1e2b0d7b0a446688ffafb5189bac7dc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5e7cf6df018f8680cda55c94f7efa9060b4a27df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5f52cd41c0e0d59743829ad5df5dfdfc1c24442b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5f539a167c85fc428a64ff0a2988ae35a2e0aba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5f8ced7c2ca625d6491d88dcb228c110f22a222f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5fa0d6d4e72b87798829872d8639972acadfd19d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x606a84c7241acc02699c5fe9f8f821a39adbfe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x617c95e6e8ad9b3d45621f8df56d78f5982fff4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x629a80eda7d31781147709a8e9c7b7111fc6ee47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x63261bc05e37b50723d680a3f3b015b7c0bc2ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x64bdf6b823bcb4b33147fda53d443c2a328628c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x64d5be0a5436489d559363e3f4a3db158abc2e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x65efaf6618405652c400e7d78767d795d2474c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x662a928e66a7f874ee06e94eb82d4ede73869728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x670daeaf0f1a5e336090504c68179670b5059088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x678b9300d4db3c1436dd765c2fb4ddb3321cc69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6a0614a055ae3004117face62572398073fc387a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6aa9e7160f4fdb6c64e8320dba7e60886ba5f550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c8ae5a91503cf83996be170284bc609ba7beb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6d9dc1282b9e25a91b266b6b61ef65a38f949f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6f8e743da2dd724f83b6a18f99828654da5828ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7057a9ecb283e205b73a5137e6bcb47ee69c2e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x70bc22ba2b5744e530b9abd4ebd4010b544e518c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x73280cc830a4be3f14ab2439660361dc70d024fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x73295899f9e5d7c3ac8d631c2ff7432c2e6fa0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x741891eebd9a452de27464c5a52574ad72d24a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x76bbec1b0d287169d102ca985aaad8deac787ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x794da82f9fb0c758c917fbb074667df6e2254aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7b81e0bac030a9079e1e2b45d5c089c3e2b93dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7e1956fc335b859f545e042bfbcda2403ebbf1f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7eb44b224a4cf83f0f72612379ec57dacb651fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7ffc86c7a61a8874d3819c32b12618235613d1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8035ada1bc5dbbba4a26060d361561b8a5afc36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x80d5f281a86282bfba063d9bfa6a64c4aa2541a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x832cd194fc518411377e8382bc27b7bcb76c4ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x83ead1197ea684965201611c1286120e5877bb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x85822764fe473028c753bc1124c5df6607fcb2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8677a74ea1b5404b36e9a9eb1aaf42d1d6e27136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8696135119117867767daa0a89fc6dca8a99e1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x86ef22318f2f7f621ea5cdd6c6b7947920bfd096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x88be51f9c26efbf821386ed2c33a95f9a62ecb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b1fcd819828f4df3f3bd7667b502ed6ba15da34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b707ce7ab2d9639ebb63cabe14d8d3960e9af64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b7900817034aa1db42ff71f01b0ec9ba598233f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8c41d54948bebbe4b7f3178ea842b343f6f0c254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8cc3f9670d3e0afc779a553f1e9afc699c1ab097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d43d510880abca3e8e6fc5b0cd7e469410905b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d94c8e6e32d8877c78de8d41b60dcb8953fbca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8e0dbc8b165268943121527639889069c92bc339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8eb7982958d8aa2af98a35b8cda2e6c4e746d250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f0563a7987db44dfaea62d156deb8ec79b9ee40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f40f69ceb986aa66fc64f18bad8d6491a3a27ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f7a4d150e28025e8d7be44cffbdab54a26aca9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9065d67115fcc2d52dc1d0c420f27796186e56a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x907cf52d777fd44007c89ac4d21defc1dc915d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x90f640c9bcb48852ef8da33306ef894b2b18e387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x91282467dc9d8f1f19112e6ec48e576c130e7570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x91ed5609e5b9d6991f024570025c872382890018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x92157163b57da2fac0c1f563bfcf07fd315f89d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9380d8db2cafbb7c9c2c2a47c96db061fc7f368f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x95224c0a67c385f96dbd41f58dbf542f23a3a2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9546320a15179d0f4ac6f5dc0996c43fa87325b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x95d0e869271aa731ebc3f4bf6046636493470b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x96f4bf695ed277aecd44fc176d4f2643ba18f57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x97259aa76332a3919d0a39aadfe9231c257779e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x98216d5f0451b93a3747148b1b6247f6bfe3b385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x985323cd58346d83e0a90ab6b8fec7025fce20a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x986e7c8087b5f3b2d0849c786cf9277a4e6facec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9a4dcbcb82fac32580dc419fab3b8226868631ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9bc06ed9cd3c15eee13b05ce52442d22f060ac2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9bee6c322e4b72a382bb302b9046ad82a04b427a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9ee0cacc43534c3a81e548d3d43c0905317f02ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9f1837a88cd992b693c266aa6a4254a8644ae99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa05fa201215b6fb6b4dda20edf9acde93222e0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa1d0ad01a7ae157d7941fd8a7e67094361a6bdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa32b572f94eae1638b7076565d06ca196ce6558d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa357efdaf20a1b3498400b029314a826b20ae61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa37943d4f8ed65b95ed60fbfe51ad2fe3247b0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa476a54bdd5ff4a900496877ec599f8840034fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa671d7d0c571e5b92510de6c5d0b5c1635ec8791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa7ec6af9770b9dd0453da09b36524c514b12f66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa831bacd7725e3f893a8c2064bd38d48e79e4dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa83a29e98b0177138dddcc3a4b6536442d22c5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa9502766df45f1bbdc4ea55a3fc38053be25cc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa98c2e26a22c17d1199327895a737463abd047c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa9fe1db3e812e81288460ceebf6fdfb5b7e14a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xab90342ae627009ac510e40a2b791350b4a710ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xabc8a7a4cade9e908a2f143b7c4b9ccab9f77ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xac942b1acbbb080d30421c8a3ab20a73fa519bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xade071f8b55707689302991afed817300ab0760f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae27e63307963850c4d30bfba78fc1116d7b48c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae898842ee80ffa9c45a4802fabf471f3d50b423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xaf204776c7245bf4147c2612bf6e5972ee483701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb0b0f7f9a860dbd92fe645bb88e90f8b8b2a08b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb18b2ac3ecf18dae872c85696459c1767c4cdcae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb229353e8d34349e8e2951d06642902c87f644b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb450162dd2278bf2db6bb53d5010b54b390ce5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb459648eb291fcddb723e2c4009221a5fdece8fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb53ba04989b98f7e90f57fcbc9102e1bc0feb51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb624888498c057b5398ef34898efc3d0fbf89489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb69aa1583aeea760fb18e55572cbfefca6188dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb6f20b02c6e7e7d4594dc1acd76bb20aaa679725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb7f600845e4649ee5b8ee16d44d91bc0ee65f4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb88d66e7721a20b58e7d18d81cdb9682307399ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xba51d09224e14caef5ab6f3c9e8f3b9d7f896eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbc07ceae5a1d18ad6035b4c904a3b70b6e152f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbd56909c5261ad1787a561ba031c9fba7d17ef81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbd804a38fdeee47695ced968f6416adfb6054921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe76f35bd6676c233bd8b6493fecd3d8e6f615ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc0fa68a36347e04af221b47d7f3bc4aadbc38591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1299d19ef1a9eff210bdd30c37e26ef0c535d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1529e13a5842d790da01f778bf23a3677830986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1593302979e5e8e16e53c3303bf99ffa319d314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc21a7b1e58356892f606bee801a00c7bad72edf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc66e94d2acaebab0d0314a01666b64b88ababc42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc6c3b429abf2932f5fe43f348eed3f48e544dc8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc777eb53b224ab27dd348d2a678bfd20ce913277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc8270d4a1c6b552b242db93b10056288b5e23725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcadc08c1a411b5f988164c03f356602b585d089f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xce02a2fb42d93438e508a32e80555add2fd8daff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcf6a209df4c745534c97086e7e4d58ee93fbe689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd04d3132502a654fe2c6dc8d9d8e193e62ab46b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd28318b310579fdbc19fa03b9e04aae14e1b5a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd28490e975a49ce009163bb9feb566133ace4ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd51fcad9ae0312f23b253c75c72623caa721f05d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd55dcadd37505d3dce6f4f3d7283f2995ad96eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd7e6500dfb81a5b2553b7604cb55305aa7db949f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd7f17702480de6b832b0905e6b591d99d52d64c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd99d9d46af82d7c82913c2a6a21258e829e2f10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdb8e23f856d25aba008f39c92d161f0748f419ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdbbf7979ae5a36d0607ae62a279e3a196b782e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdc77a058e11c341a54890dea56a3f4faf992f381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdd494510e56347058703c277ef770d3d9099ca42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdda2fa7ecb0faaa243ce5bf6ebcd21b23f812ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe0f0606a02ab1bd2fa8dc4659b6b826b40cfdf4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe145a09f75405e6e5469bf3ad35a2a82161a06a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe183c741966c397a0f904964b074aa36cefd1e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe22b9b998366b42886c76fb69c436ec3e5e0ef13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe253094ea2819e63333387659fedf5703fa430e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe4b01fc056bbcaaa9d4890fb8d27668c106235b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe6729389dea76d47b5bcb0ba5c080821c3b51329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe6acbd57b4475681d4877ccd8eac452939028956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe6c54da0adfb3582da33669d7afe17cf5d79ce8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe7728def71d2175bdc8049510ea53026df3861e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe847c47f271ebdef4ca0c3a3ed3ba42d7395c9ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xea45ce264a5b2a2d2cc12fd5a92d6c8b444d5636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb5767a1f3d9bd6891d5097b68768fae1d658af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xec8baf09eb04a0e820c80967d2eab0980fca9620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed1d03f17bddbfbd3e908d9e40fbf95f45473a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xedc96ca776c0336cf3924dbfd1d0a54fbba05cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeeffd244d41bc101cb900158b6edb45bd6fd3797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf1dc9497d803b906e43ce91d33575b20218cb26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf22f14ed8bf380c6fbd3f826d3c05def0e75dd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf30e2fd5d2240503846c25abd24a9a34f7c85fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf34bb93ea22e4f045c27c54f8c92e8bceff55a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf429c5e2f1fa4c5bcc6a7a376c618121b2a621e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf5f2f42ebbe2255f226c8ed6cf33e8f7e1e06d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf6373624d8ce43e7c5e5904b9f5d7af3ecf3a2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf7da8f7ac394c08b4da3292ccab11e5243e63284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf7f88000be29d179015fb2c5ee466743f6386edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf8ce7462dbdb6e39ac9f2ae65968983b71b3c6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf9105c40ebd80e5e7a4197d94ba27905afa1aa0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfa6f52c76222f222eb985ac258d7a7ab22521833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfae3a9b87d10e37a81f6e660c38c925f4efd7b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfb57ff91bf95db39e04e48b4a7d9199adeef0dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfc4c44bb2fff803b16d0b421bb9f08ed65b0d716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfcdd9111755f9b28c6d6ee41d57f4cf1d5cd3d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfd42833b8bfffb8e4cc8ef860cfe26f4878ac91d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c833ea265237f5096d153d540c0bf68ef4cb7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d9cb64d2760ceb56f7603c7a9125acad64d2cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3df19344e31ba689fe1f56b3ef43ef6cfaa13096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x413fac4595c64a7bf0d082582dda18e4a2a75fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x51ac0df916fb4ef50cb3f3457267654e672976f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x577b5b03c0a1295b34f193ac9760063c0bc2159f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-381516 | `0x689666145b8e80f705b87f4e4190820d9a4c1646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6aa9e7160f4fdb6c64e8320dba7e60886ba5f550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86ef22318f2f7f621ea5cdd6c6b7947920bfd096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x938e6e6e6c318467be4c48c2b9dfe3f3a38c694c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa37943d4f8ed65b95ed60fbfe51ad2fe3247b0dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xacf1965da58e6726393d62dcffd9ba190b1b9363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc22e6296589410ed6448670512832afc6e719055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd04d3132502a654fe2c6dc8d9d8e193e62ab46b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2f8404a39a33c63f43da9e05a1345ee7ac6aa65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbbf7979ae5a36d0607ae62a279e3a196b782e7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xebcd0664c0e4a03abd204312b9f34967769dd5c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf22f14ed8bf380c6fbd3f826d3c05def0e75dd5e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 300
- Live contracts: 0
- Unknown liveness contracts: 300
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=300

Showing first 200 of 300 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x01ac9005f8446af28b065af87216b85faac5f6e2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x02ae11dc9783467e0830041399a2d48251f63907` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x02e2e694184955432037856e1785a598f2c6eef5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x05059bd06df40944507a939898967641346eb824` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x0514ba56e9efb43583b02aa91e38c295f7d599b1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x059c47cdad2c96ca5551921124b75b82119bf73a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x062b9d1d3f5357ef399948067e93b81f4b85db7a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x06427f786bdf82d3b6cf90cb72be450327002c89` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x0658ae365b76f286efb37ef7824ab7dd81bdb7bb` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x071bf5695afeda65c405794c6574ae63ca8b73c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x09bf5d4dff196c000fb735f94e4b22340b25e678` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x0af20c8403cfcb58863250323e80125b6ae2028f` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x0be1377b3059f46c406393c3ff2fd7c2736e2da8` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x0cf086e8714571c85b3e88b541fcac763555b66f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x0d23359086cbdda2f49e29de370ab85b451e81dd` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x0e583b7fdb4b9bcb60360e36ab936288464689bf` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x0e8cd924a133893be719a9da9328871bcb46cafa` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x0f0a02d56708e01af559f7d80b916c178ca6efa0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x100bd913a8339250bc0f9ab788baabe0fb7ec7c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x103a06d091d53fd25e29348484cc7518215ee672` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x109f6f453a9aa0f45a2353d517504ee3258d23fa` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x110e2d3d4c94596f5698c753d5cd43221d3ec78b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x13f2b819b7165686f36af81d887e1459d19de3fb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1437f115bd1d206c1c0955ac70debafd964eadfe` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x152fe5a19e4a4740699bfd519be89c9f7540927f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x15b7bd2686650eadb6feb1be6e9134c1f9241a95` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x169eb836bd947670d2d26b64157a8723b61744c5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1707a724612ecba66a2cb13d4a0a6b72ce2046be` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x17780d40287eb6d9605ec8b324605cf98a625122` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x17b5bd53abe3d89dd0ae7a5e2e8d2f3268e3bdb3` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x17dce52b2f7abe4204011196019276d36cd55c71` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1881dd4589447aaa1d8fd0515878fbed971a6bec` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x196463f0d3819b4964fd1b5f23dff9cb381bfeac` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x1964b041ad6ab83275f3cc9bcafa4e92b13ceff2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x19bfaf6c3c091aa145f7df7d7a687b2c1c1abd10` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1b0348c67d01a46627ce1d8f9e2e218c9eae9966` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1c5b8da51e5deef2acc29dffe4c34c781fecf942` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1d6f5eae5f631ed8cf424afc9d1e4ffdacbbcd16` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x1f78108fdd0cb4bb0475fc9ce9e9a92688dd2f75` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x201959d07446095cebbb3c162afd9ff7749437a6` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x20ae7b336463f4c8f293c45bee436d31d156b276` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x20e5eb701e8d711d419d444814308f8c2243461f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x21d111397004638300fbfe648f33d4ebcf50243a` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x223fe000fc6ef0ed36576d912e506b5f572c7ac2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x22df53dc7efb5d74828f19784db2ad375f3b02c4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x23c5515e7464c15d8f56e3a48cb220d9ee265126` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2447c8c415a6c4775aeb9ee05ee0240656c21fbd` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x248ce8d11c990190642aa4eb34e8af2c832acc13` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x25fa1d8b25160789446300ad987a64cb54376471` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2869b62af774fe012de271de6dc7bca0cd87145f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x287b082f4d6c72130fed8967ea6e3a7be63ddcc3` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x294cfacfef69369c09669463f2e071029259c429` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x2993bd6da994378eadf1a5ba5c9017fdfc92f111` | non_address_book | unknown | unknown | unverified | n/a | `0x1d60c34f508bbbd7f1cb50b375c4cdd25e718d1c` |
| unverified unclassified | UnnamedContract<br>`0x2ac1f91872c2a642ea957f6822afa470194f1904` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2cd3494bb70a30f042fcfccab4d192f6b7449042` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2e91cd1bf5ab2104633112ef35a7eb6998ec2695` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2ffabab31ab17f785b9d03abc9f022fc57775aab` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x30d796a838f0eb46b05c484e3336054f4d9fe494` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x3146b62466b76642127b9f4fe34fa7cd9968bf96` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x315a8234091150f857d3a6bab3c9d13fe6ba0553` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x335101dde72bfcea8be6a93c73bd76e4dad3b3a6` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x335520a0cc22d8b07bac4a8900fc620566f6f1c8` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x34193726a7bd7a33c1fa7542463c5c51b5702fee` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x34f1b13169d855525c667b914dc6ffebe0d930e5` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x35dd0085adea1ae2c1893107b844bfec40b85db6` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x365d2e94e3c0e84e7f7a678482f6029151f35322` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x37673908230360128162aaf9790c90af9540d42c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x379fe40502144fbe9b941c3e30a01a2072084150` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x37b23a4e2158e65fb990f089f5565c9425dcf938` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x391751e341c99db30a85de35415f87734f1ca2ab` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x3949b3cb2659663c30ab91deba19100ec05bf988` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x39ce830f258798269080927ba9bf35f32648a050` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x3df19344e31ba689fe1f56b3ef43ef6cfaa13096` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x3e2081400517e9ef8436401e0c06dc2cbe9ec2d2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x3eb706053a2f5629edd7f94125b78377b4ddfdf4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x40d2e77cf5328aade163fbbaf239152d0dc67b39` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4125737f1af8343a137da77194ee7faaa4b0b078` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x41a7d5844aae7009b0bc5b238d07eb7640ece243` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x427252d1a013a7d41fa001dabc4d7a5c436aeb1a` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x44d639ce14b0aad6d874efe5226e9aab66354ca9` | non_address_book | unknown | unknown | unverified | n/a | `0x1d60c34f508bbbd7f1cb50b375c4cdd25e718d1c` |
| unverified unclassified | UnnamedContract<br>`0x456844e967f823df3aa565d16d8ed7d4d99179ff` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x466df21ffb4b1ca195abf59dfc41a0c98da7b1d7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x46ad11df6c12e355241dfca7cea5734e0d512e8f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x46eb3f515c72de82a03d28fec263a56943cd581c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x475506f459c814d6d27c76115a1a95175627ff7b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4854fe55540f5248c43352e2ef771ed15ebe0863` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4ab77f4883d099992c69d417ff8708220da171d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4c8b996c61d72a5dc39dd2bc54512612fabfb961` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4da5beb71f98dbadb86a93ccbaf63093a53eaae2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4e1461882e72232807f7a65081321b543e2e52c0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4e7dfd59060e2c91495b006617f7e429439304ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x51ac0df916fb4ef50cb3f3457267654e672976f0` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x538bb83418a7e58fb4f7c72d34d589b329ffbb14` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x53ba4b2ed945e1eba48056ac02e610d10616921f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x55f1d6b75c70890a464b6e7d99881707643d6ec5` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x562e49d53ccbdc7f446f4683e270f6e51e9ec2bc` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5630622525e50e385126a1134b842c2263a35789` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5668e5a6b4663dc062db4b437f790909e68fe99a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x569358ba6579539c6a2dc868aa57ed7e0ad2075e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x577b5b03c0a1295b34f193ac9760063c0bc2159f` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x57cba82270fd0eeb3fc76b7c97480a8720bdb2cb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x585286155a1248c30851743f1472df178ddc9fc0` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x58a88f0b48a7334e0434f5ab929865f2e1a032c8` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x59f69b709da396951c5a033f4d19ad4e8966256a` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x5ad43460308287189cf7207f7750373649137bed` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5b12a1102b0a6222425fdb31afc541e92218b35e` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x5be5d4bb56451a27c76f3ea87f7c564f05c20dc3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5c5841032ce623d5ad91b0d37cd008a141bf047b` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x5d1e9fa09ed123660775c395beac281f405befb4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5d9a99c1e2b0d7b0a446688ffafb5189bac7dc09` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5e7cf6df018f8680cda55c94f7efa9060b4a27df` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x5f52cd41c0e0d59743829ad5df5dfdfc1c24442b` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x5f539a167c85fc428a64ff0a2988ae35a2e0aba4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5f8ced7c2ca625d6491d88dcb228c110f22a222f` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x5fa0d6d4e72b87798829872d8639972acadfd19d` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x606a84c7241acc02699c5fe9f8f821a39adbfe88` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x617c95e6e8ad9b3d45621f8df56d78f5982fff4c` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x629a80eda7d31781147709a8e9c7b7111fc6ee47` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x63261bc05e37b50723d680a3f3b015b7c0bc2ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x64bdf6b823bcb4b33147fda53d443c2a328628c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x64d5be0a5436489d559363e3f4a3db158abc2e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x65efaf6618405652c400e7d78767d795d2474c47` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x662a928e66a7f874ee06e94eb82d4ede73869728` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x670daeaf0f1a5e336090504c68179670b5059088` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x678b9300d4db3c1436dd765c2fb4ddb3321cc69c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6a0614a055ae3004117face62572398073fc387a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6aa9e7160f4fdb6c64e8320dba7e60886ba5f550` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6c8ae5a91503cf83996be170284bc609ba7beb75` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6d9dc1282b9e25a91b266b6b61ef65a38f949f22` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6f8e743da2dd724f83b6a18f99828654da5828ca` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x7057a9ecb283e205b73a5137e6bcb47ee69c2e23` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x70bc22ba2b5744e530b9abd4ebd4010b544e518c` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x73280cc830a4be3f14ab2439660361dc70d024fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x73295899f9e5d7c3ac8d631c2ff7432c2e6fa0ee` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x741891eebd9a452de27464c5a52574ad72d24a15` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x76bbec1b0d287169d102ca985aaad8deac787ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x794da82f9fb0c758c917fbb074667df6e2254aa7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7b81e0bac030a9079e1e2b45d5c089c3e2b93dc1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7e1956fc335b859f545e042bfbcda2403ebbf1f4` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x7eb44b224a4cf83f0f72612379ec57dacb651fd4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7ffc86c7a61a8874d3819c32b12618235613d1a0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8035ada1bc5dbbba4a26060d361561b8a5afc36f` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x80d5f281a86282bfba063d9bfa6a64c4aa2541a0` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x832cd194fc518411377e8382bc27b7bcb76c4ca2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x83ead1197ea684965201611c1286120e5877bb6c` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x85822764fe473028c753bc1124c5df6607fcb2f0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8677a74ea1b5404b36e9a9eb1aaf42d1d6e27136` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8696135119117867767daa0a89fc6dca8a99e1ba` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x86ef22318f2f7f621ea5cdd6c6b7947920bfd096` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x88be51f9c26efbf821386ed2c33a95f9a62ecb49` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8b1fcd819828f4df3f3bd7667b502ed6ba15da34` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8b707ce7ab2d9639ebb63cabe14d8d3960e9af64` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8b7900817034aa1db42ff71f01b0ec9ba598233f` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x8c41d54948bebbe4b7f3178ea842b343f6f0c254` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8cc3f9670d3e0afc779a553f1e9afc699c1ab097` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8d43d510880abca3e8e6fc5b0cd7e469410905b9` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8d94c8e6e32d8877c78de8d41b60dcb8953fbca9` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x8e0dbc8b165268943121527639889069c92bc339` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8eb7982958d8aa2af98a35b8cda2e6c4e746d250` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8f0563a7987db44dfaea62d156deb8ec79b9ee40` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8f40f69ceb986aa66fc64f18bad8d6491a3a27ba` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8f7a4d150e28025e8d7be44cffbdab54a26aca9e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d60c34f508bbbd7f1cb50b375c4cdd25e718d1c` |
| unverified unclassified | UnnamedContract<br>`0x9065d67115fcc2d52dc1d0c420f27796186e56a2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x907cf52d777fd44007c89ac4d21defc1dc915d17` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x90f640c9bcb48852ef8da33306ef894b2b18e387` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x91282467dc9d8f1f19112e6ec48e576c130e7570` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x91ed5609e5b9d6991f024570025c872382890018` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x92157163b57da2fac0c1f563bfcf07fd315f89d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9380d8db2cafbb7c9c2c2a47c96db061fc7f368f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x95224c0a67c385f96dbd41f58dbf542f23a3a2a8` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x9546320a15179d0f4ac6f5dc0996c43fa87325b0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x95d0e869271aa731ebc3f4bf6046636493470b3a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x96f4bf695ed277aecd44fc176d4f2643ba18f57c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x97259aa76332a3919d0a39aadfe9231c257779e1` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x98216d5f0451b93a3747148b1b6247f6bfe3b385` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x985323cd58346d83e0a90ab6b8fec7025fce20a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x986e7c8087b5f3b2d0849c786cf9277a4e6facec` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x9a4dcbcb82fac32580dc419fab3b8226868631ea` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9bc06ed9cd3c15eee13b05ce52442d22f060ac2b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9bee6c322e4b72a382bb302b9046ad82a04b427a` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x9ee0cacc43534c3a81e548d3d43c0905317f02ef` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0x9f1837a88cd992b693c266aa6a4254a8644ae99b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa05fa201215b6fb6b4dda20edf9acde93222e0c0` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0xa1d0ad01a7ae157d7941fd8a7e67094361a6bdc5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa32b572f94eae1638b7076565d06ca196ce6558d` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa357efdaf20a1b3498400b029314a826b20ae61e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa37943d4f8ed65b95ed60fbfe51ad2fe3247b0dd` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0xa476a54bdd5ff4a900496877ec599f8840034fd7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa671d7d0c571e5b92510de6c5d0b5c1635ec8791` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa7ec6af9770b9dd0453da09b36524c514b12f66f` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0xa831bacd7725e3f893a8c2064bd38d48e79e4dff` | non_address_book | unknown | unknown | unverified | n/a | `0x86213f1cf0a501857b70df35c1cb3c2ecf112844` |
| unverified unclassified | UnnamedContract<br>`0xa83a29e98b0177138dddcc3a4b6536442d22c5c1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa9502766df45f1bbdc4ea55a3fc38053be25cc68` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa98c2e26a22c17d1199327895a737463abd047c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |

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
| needs_review | 306 |

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
