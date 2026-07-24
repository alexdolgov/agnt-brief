# Agentic Audit Brief: Metropolis Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Metropolis Exchange (`metropolis-exchange`)
- Website: [https://metropolis.exchange/](https://metropolis.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: sonic
- Contract surface: 89 unique implementations (93 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $463,030.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Metropolis Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across sonic. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (3), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1), ownable2step (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 8 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

**LBFactory** (`0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43`, chain 146)
Origin: lynx (`0x39d966...d6ee43`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x56eaa884f29620fd6914827aaae9ee6a5c383149`, chain 146)
- UnnamedContract (`0x67803fe6d76409640efdc9b7abcd2c6c2e7cba48`, chain 146)
- UnnamedContract (`0xed06734629e22277d395d8eb8b67cc75c27cb6a2`, chain 146)
- Factory (`0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0`, chain 146)
- Metro (`0x71e99522ead5e21cf57f1f542dc4ad2e841f7321`, chain 146)
- MetroGem (`0x8a3b1cd8d0decf649262e56ece6b339e59f350db`, chain 146)
- Router (`0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 81 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 8 of 89 unique; 81 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 89
- Raw deployments: 93
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArcadeMemecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x577fde1619ae2e1e0a0893e1208ddf2d1864341d` | ⚠️ Unaudited |
| BribeRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x161a72027d83da46329ed64a4edfd0b717b7f8a7` | ⚠️ Unaudited |
| DummyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe0143ca6e6a0fb1a6ecae8faf94191a664f78eb9` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | sonic | unit-247507 | `0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0` | ⚠️ Unaudited |
| FarmLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5657ab61ea91bcc22ccaae7168a621488003809b` | ⚠️ Unaudited |
| FarmZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3db21cd2ee9c27f636bee29670669ef6c3c6cd3` | ⚠️ Unaudited |
| LBFactory | unknown | project_anchor | own_supporting | 0 | sonic | unit-247508 | `0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43` | ⚠️ Unaudited |
| LBHooksExtraRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0a82b2611811d410f1b5e44221d4b1f545d89e26` | ⚠️ Unaudited |
| LBHooksLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x087495d1e9bb380a17783247ac260a124070e1a1` | ⚠️ Unaudited |
| LBHooksManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4962db3230075a3413251e22af3dd0761427f7ac` | ⚠️ Unaudited |
| LBHooksMCRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78ceffce6bd2093830fcfa9fb44a9fe858203388` | ⚠️ Unaudited |
| LBHooksSimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x068812c0633752207e3b39ce5cf623ebea531cb6` | ⚠️ Unaudited |
| LBPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce7f2a4f207ba9932c8935650a30fa5b53d416e4` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5277be3b93da960c7e92c50be58424e008c6cc49` | ⚠️ Unaudited |
| LBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x596eeb70a441d70511a64a2ea114beb5a8ffb881` | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f95b0dac14ddbfa22c7c7f475cf819018774b20` | ⚠️ Unaudited |
| MasterChefRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x501c4779c86add2a21115e4b8844bb31b6fdefd8` | ⚠️ Unaudited |
| Metro | unknown | project_anchor | own_supporting | 0 | sonic | unit-247511 | `0x71e99522ead5e21cf57f1f542dc4ad2e841f7321` | ⚠️ Unaudited |
| MetroFairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f18af7f1287a8a2a23a6ac71da2729e3a9b6609` | ⚠️ Unaudited |
| MetroGem | unknown | project_anchor | own_supporting | 0 | sonic | unit-247512 | `0x8a3b1cd8d0decf649262e56ece6b339e59f350db` | ⚠️ Unaudited |
| MetroGem2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ae89cc21e1cf2d1e95ba5ebd5b3b1cf89e37a5e` | ⚠️ Unaudited |
| MetroStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb7b785b01ed09f2c59a42994c1f8675e428ceb8b` | ⚠️ Unaudited |
| MetroStaking2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x197e72f8b1c9c9e46337bf0a4cce5d6bc0f3b254` | ⚠️ Unaudited |
| OracleRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19d815667267d46254574e62647c2f500449a387` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4541cda311ab72420743d03f8f45b42c858046dc` | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x35de168492b6b22cffe53c12f46fbfaed173cfee` | ⚠️ Unaudited |
| PythAggregatorAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31b803a540b064f13e427138f8b04004ec742ab0` | ⚠️ Unaudited |
| RewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6122dcd13f0cb1157cf9e58d5787c2c46e8bdaf4` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | sonic | unit-247513 | `0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1817134ad98b72a42ab68cc485fb123afac85e80` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x03a9896a464c515d13f2679df337bf95bc891fda`; sonic `0xc702af24a8722f7719b581d57faaa5770ef998bb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0444a986e90521130db7021c91f9f947d3c955ed`; sonic `0x507e725e82cd965f1ffcf942d2e61ea3987e97d3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x11650735f402bbf28e877a750a6e40d5db837d6f`; sonic `0x94bcf2aa5f2a48a82d2df4754e9b5763fa512b95` | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1a5ded6adcfc64acede86151b1f142088c6e03da`; sonic `0x5b792016e9338353ae2b673c2eebdf26916cc906` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15ff43e1eed63383c0289f792b278054420f8479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x189f3faee49f744b76dc0b2549a20146e836aa37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x197d40b36677248e82939f96930bf4e7fe8ad1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x238ca4f23a9d9bf71d14e0dbea9cf9ce2ec1a596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2bed74ec474a866b9375d6701e89a3dcd9d971e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x33d64dcd6f25844c2439fcc7a1a8390a057392f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a5a719e5609e828d8bbf7d5b422f8d416c08971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d93031eff99379aa52a610f91bcf02cee52cc1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x45bd05527c9e49bd88bfe66979f56a95eaddc127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4891428b0c72128f1f05b1a991b487a84fd50e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4ddead7c70b17f2f8e342f9da4f96e9e71d29553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x53aa092b8e3a0aed4a5bca43ae0827947e193429` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-247509 | `0x56eaa884f29620fd6914827aaae9ee6a5c383149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x572b01cd5ae777bd2b6cc1a2c17bacbc1b704b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x579e857eedb2717d87e4c15683d0413cae9c3e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5e6ec529121ed082255dbd0fdc11184964367047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x60a153407c023966677979b576ebdf134de53b52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-247510 | `0x67803fe6d76409640efdc9b7abcd2c6c2e7cba48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6c4374c482348d305dfc7a63f9e18203e047bc38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d648893d48167cfea4adbbcaea72f7f80234b24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x80e71991d2a3c2845b0d4e2f42e2ed74c93b9ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x844f225808a061cfd28b9d199365e3f1453b5b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87c503a6e1461e64e4c1beb9dea97f0300f40942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d3abb8a2678b8966d3182deef6b6d1a2bdb221c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8fc4c6ad2e26671c80f73f027e1d59b49c75d19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x920b7adf83423283c2d1291cbf3d44dd56a80636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9f1a1225f888b3d925f79e1956077f08907aa861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa2cd62473b3d3d08d5d2115371609143a86baea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb10d3d8b8ba736b3ba8150885b21f2b2cc039a12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb2d40bcb0b838e878914a5f1bdc7f5eae0199fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba51f0314e72cf9d21629c52f04440e96b7f1289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5d0ed1a8c26f7589efb485eefd203a65959d115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc9b590082ca54ff8d608a001cce555f9ae1d5d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcb3d35c0cc5266fea026808e727823d9ff084130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xceebe42dc2336f5483e026f68fe599cec3e6f114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd50d91ec36e15c7f096157d4b806040fa2336517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd7182dc736cd322ca03312127d5291a5af2fa610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd9db92613867fe0d290ce64fe737e2f8b80cadc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdbb84cae30c33f5f88fa59634e084517d5e88d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdcbc470ec51480f6ce58e7a2a1787ac8cddf6bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe19b636a6abee9c14eabb3f64e30c3304859bdb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe4cfb3515541c132d8410e9bc511bf45de8485d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe640b1ad57fdadf8aa60d715a455b40eb374d90b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6b63eca962d429cbf2664d4a6de0480f18c5785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe82d1cdda0f685d40265da830734bea5a277ef40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe851a4a19de00d1a8d1e47d9e443f8f23d9b4fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeb62ef3ed9b6fef9b98dd41e994d7d0989f1e7f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-247514 | `0xed06734629e22277d395d8eb8b67cc75c27cb6a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xee17f82128bef80cfa77d0fbc1a14cacb7848f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2111bee96dc193babb169ec86d61e0833fa54db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf3f900c4eccf165a98cf078c5e3f38f17ac3f618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf437b88f7a4fb19be03a79f0a79b7b844126403d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6f7ae5d4804b9dbbee41168e26b8d636b8d535a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf7c84e72b87ba9440e4261156d166f99b56bcab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfbacd67474a6cf3d38a491287d0d2cfb0add330d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 56
- Live contracts: 0
- Unknown liveness contracts: 56
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=56

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x15ff43e1eed63383c0289f792b278054420f8479` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x189f3faee49f744b76dc0b2549a20146e836aa37` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x197d40b36677248e82939f96930bf4e7fe8ad1c2` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x238ca4f23a9d9bf71d14e0dbea9cf9ce2ec1a596` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x2bed74ec474a866b9375d6701e89a3dcd9d971e5` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x33d64dcd6f25844c2439fcc7a1a8390a057392f4` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x3a5a719e5609e828d8bbf7d5b422f8d416c08971` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x3d93031eff99379aa52a610f91bcf02cee52cc1a` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x45bd05527c9e49bd88bfe66979f56a95eaddc127` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x4891428b0c72128f1f05b1a991b487a84fd50e05` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x4ddead7c70b17f2f8e342f9da4f96e9e71d29553` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x507e725e82cd965f1ffcf942d2e61ea3987e97d3` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x53aa092b8e3a0aed4a5bca43ae0827947e193429` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x572b01cd5ae777bd2b6cc1a2c17bacbc1b704b3f` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x579e857eedb2717d87e4c15683d0413cae9c3e5e` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x5b792016e9338353ae2b673c2eebdf26916cc906` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x5e6ec529121ed082255dbd0fdc11184964367047` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x60a153407c023966677979b576ebdf134de53b52` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x6c4374c482348d305dfc7a63f9e18203e047bc38` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x7d648893d48167cfea4adbbcaea72f7f80234b24` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x80e71991d2a3c2845b0d4e2f42e2ed74c93b9ac4` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x844f225808a061cfd28b9d199365e3f1453b5b8a` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x87c503a6e1461e64e4c1beb9dea97f0300f40942` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x8d3abb8a2678b8966d3182deef6b6d1a2bdb221c` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x8fc4c6ad2e26671c80f73f027e1d59b49c75d19f` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x920b7adf83423283c2d1291cbf3d44dd56a80636` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x94bcf2aa5f2a48a82d2df4754e9b5763fa512b95` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0x9f1a1225f888b3d925f79e1956077f08907aa861` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xa2cd62473b3d3d08d5d2115371609143a86baea5` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xb10d3d8b8ba736b3ba8150885b21f2b2cc039a12` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xb2d40bcb0b838e878914a5f1bdc7f5eae0199fda` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xba51f0314e72cf9d21629c52f04440e96b7f1289` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xc5d0ed1a8c26f7589efb485eefd203a65959d115` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xc702af24a8722f7719b581d57faaa5770ef998bb` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xc9b590082ca54ff8d608a001cce555f9ae1d5d29` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xcb3d35c0cc5266fea026808e727823d9ff084130` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xceebe42dc2336f5483e026f68fe599cec3e6f114` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xd50d91ec36e15c7f096157d4b806040fa2336517` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xd7182dc736cd322ca03312127d5291a5af2fa610` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xd9db92613867fe0d290ce64fe737e2f8b80cadc3` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xdbb84cae30c33f5f88fa59634e084517d5e88d02` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xdcbc470ec51480f6ce58e7a2a1787ac8cddf6bc8` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xe19b636a6abee9c14eabb3f64e30c3304859bdb7` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xe4cfb3515541c132d8410e9bc511bf45de8485d1` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xe640b1ad57fdadf8aa60d715a455b40eb374d90b` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xe6b63eca962d429cbf2664d4a6de0480f18c5785` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xe82d1cdda0f685d40265da830734bea5a277ef40` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xe851a4a19de00d1a8d1e47d9e443f8f23d9b4fac` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xeb62ef3ed9b6fef9b98dd41e994d7d0989f1e7f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xee17f82128bef80cfa77d0fbc1a14cacb7848f38` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xf2111bee96dc193babb169ec86d61e0833fa54db` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xf3f900c4eccf165a98cf078c5e3f38f17ac3f618` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xf437b88f7a4fb19be03a79f0a79b7b844126403d` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xf6f7ae5d4804b9dbbee41168e26b8d636b8d535a` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xf7c84e72b87ba9440e4261156d166f99b56bcab2` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |
| unverified unclassified | UnnamedContract<br>`0xfbacd67474a6cf3d38a491287d0d2cfb0add330d` | non_address_book | unknown | unknown | unverified | n/a | `0x4a3723b6e427ecbd90f2848d6df9381a676a02b9` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [\- **Metropolis DLMM Maker Vaults** by [Cantina](https://cantina.xyz/) via [public contest]():](https://cantina.xyz/competitions/076935b1-2706-48c6-bf0a-b3656aa24194/leaderboard) | Spearbit | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29746] \- **Metropolis DLMM Maker Vaults** by [Cantina](https://cantina.xyz/) via [public contest](): — no match: The provided text is a competition leaderboard, not an audit report. No contracts or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43` | LBFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x71e99522ead5e21cf57f1f542dc4ad2e841f7321` | Metro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8a3b1cd8d0decf649262e56ece6b339e59f350db` | MetroGem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 55 |

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

- [29746] \- **Metropolis DLMM Maker Vaults** by [Cantina](https://cantina.xyz/) via [public contest]():

Fork inheritance lineage and inherited audits are included when available.
