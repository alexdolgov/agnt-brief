# Agentic Audit Brief: Baseline Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 10 (3 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL changed 30.5% over 90 days

## Project Overview

- Project: Baseline Protocol (`baseline-protocol`)
- Website: [https://www.baseline.markets/](https://www.baseline.markets/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, blast, ethereum, hyperliquid
- Contract surface: 139 unique implementations (142 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $102,316,796.84
- On-chain TVL (included contracts): $48,164,252.97
- TVL by chain: Ethereum $47,395,333.95 | Blast $768,896.86 | Base $22.15

## Project Description

This brief describes the observed EVM deployment and audit surface for Baseline Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across base, blast, ethereum, hyperliquid. Structural roles: 4 core, 2 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (2), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20permit (1)
- Frameworks: solmate (2), foundry (1), openzeppelin (1), solady (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7a68e9216c6e238e6388dd67e737e3de92c5c93b`, chain 1)
- UnnamedContract (`0xb2a9f3886134e5f6a19a1a87bd62343fe2685c64`, chain 1)
- UnnamedContract (`0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`, chain 1)
- UnnamedContract (`0xc81fd894c0ace037d133af4886550ac8133568e8`, chain 1)
- UnnamedContract (`0xc81fd894c0ace037d133af4886550ac8133568e8`, chain 999)
- UnnamedContract (`0xc81fd894c0ace037d133af4886550ac8133568e8`, chain 8453)
- BToken (`0x9fdbde76236998dc2836fe67a9954ede456a1d63`, chain 1)
- GnosisSafeProxy (`0x8044f710c58b6ea6a178cc540f9f1cd758f7d1b2`, chain 1)
- SafeProxy (`0xff0034bbf2a92d0e27717387f3f829f37241ee5a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (3 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 17 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 113 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 9 of 139 unique; 130 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/13
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 126
- Unique implementations: 139
- Raw deployments: 142
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian Audits | Tier 2 | 1 | 7.7% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BToken | token | project_anchor | own_supporting | 0 | ethereum | unit-228916 | `0x9fdbde76236998dc2836fe67a9954ede456a1d63` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ThrusterPool | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228925 | `0x1d16788b97edb7d9a6ae66d5c5c16469037faa00` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228953 | `0xdfcfdf5dd0569d591e0bce28b5da3b13de09e3cb` | ⚠️ Unaudited |
| BaselineClankerExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4795ce4ed9292a9ca74e88389b97d50123e98035` | ⚠️ Unaudited |
| DeadManShift | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x61235f75437f8ea76deb530ce97bcf114fa0cb0f` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-228960 | `0x8044f710c58b6ea6a178cc540f9f1cd758f7d1b2` | ⚠️ Unaudited |
| LoopChad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd48b2f8b279d325ecd4db236a465cecaa3aa03ee` | ⚠️ Unaudited |
| PreAsset | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228929 | `0x60bf64ccaa52da304d456892dc0a8f1c5b159f61` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228962 | `0xff0034bbf2a92d0e27717387f3f829f37241ee5a` | ⚠️ Unaudited |
| ThrusterRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x23b997977dbcd402b763aeb31899ed2c665607c9` | ⚠️ Unaudited |
| YesArena | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 3 deployments: blast `0x1c002b0a15e949ce8f2b9f2fabbba37fe3bda856`; blast `0x6bec5ad302989b93bab1827efafd69db1d0fb539`; blast `0xe1f96b78951018cd8c4009e83f52cb01ddc3ad33` | ⚠️ Unaudited |
| Yescension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x3f3df28fc6b71633df5b7318ecbff419949dcaaf`; blast `0xba1578e20578e0ad57e0430f241c9fcd76acd026` | ⚠️ Unaudited |
| Yev | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228931 | `0xc7b96d7f622e0a3a24cf333e84c29e36955f25bb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (126)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10ad8d2cb53db87454d2baf6d66a514f6f838083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1117c9c13d152e2c84504533066676163b3b7470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b28f4c93dc3c91dfd8a898e52fd5ee24606b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c52067485d90e71e89434419362ca621ea3bc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30dba569a6f7bcf5218e244b8545b3065d36b615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312a20416a946ad188ce69659a9f45fb14eed1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dbb28bee3530c256adc18a16be5d2d44faf37be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4488f733ebf9566ea862a0cd5e8efce26301bba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52b8a6d3141538f544cca0aca51dae471f3542bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5375ea1824a18fedf975bbcdadc21d77fb8c838f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6271632aa27121dfd5c73090178d70e2ae4527cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66d6004c06c8b2dfd3e50013a61a73e993eb6f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69b19182e9d68b769e5925a091bb3e55d9bb484c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71addf26e40fe05ca3aa57cdf10430c70ab75f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77225498e13744e3b656156e21d0e4932cf239cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228914 | `0x7a68e9216c6e238e6388dd67e737e3de92c5c93b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e0353b6014d0b04de0c495f7720e2110fd53cd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d947028107300dfbcc16fb4a6ef65e516b6fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f49dfca6668e1d520c8594452c6945eee596f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafaa95adb26fcd9094b46055a485f1fd6127c058` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228917 | `0xb2a9f3886134e5f6a19a1a87bd62343fe2685c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f8e94d0fd1fb4fa917c0d075f4a3f40b266d4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb47a287d35c30cd4c2ee7d66cd32f47d8e1d879d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb54cb9833420114d60a04422c9f524dd10a851ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1449f645926b497b3a402ac9a5d167e7d2d895` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228918 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc44cc65d94aa096feb69f7f3fe2a4e654e189682` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228919 | `0xc81fd894c0ace037d133af4886550ac8133568e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca039bdc583156d6b1b6c9602e98e562b7ec2fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfca0748c2433d2233d7bdfbea932eecfeb41773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf36a13227295a6c051d8276868cd47dd58741bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe3660a423e356b9f352171f0db7ca37d94878cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-228957 | `0xc81fd894c0ace037d133af4886550ac8133568e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x0000000000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c056b34f2afa70ee1351e3659dfbd2097765275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x143eba17f64c773f542e7bf126c9254c5160208e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a7190897282f9163dd49d057e8a821c7b9560cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228935 | `0x1b68244b100a6713ca7f540697b1be12148a8bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a6f1b4e47f64eccdce0b91d237ed74718e11377` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228937 | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5b9a90b04f3f089cef0dd2648426c72e12f92b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60bf64ccaa52da304d456892dc0a8f1c5b159f61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228939 | `0x6b129c94ee04ff4d989b0a0b2784fc8bcfe777ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228941 | `0x7ba0fc5542fad1931a5b765c220db2ecf3e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x831b6859167e5f2ccee37314ccee571529353fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92c567e67c42fc9c2df46d4fa944bd62c166d661` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228945 | `0xa35e4ac9565fb006812755c30c369314be3511d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228949 | `0xc81fd894c0ace037d133af4886550ac8133568e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228952 | `0xc9329cb681d1338219b9e21e5e99754853436c8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-228955 | `0xe9b2fa00e24310f712affd9c00ec8c2c42c0c34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf57fe82572022deb88fb35c63775e29852df219c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0028389a3421263ba269a0850342c129326a330a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x028916068996c336e816518c01635a328ab12b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x058fc2e45f744a8f21e8642eab3c7d8569b6511e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0863109fd9a3162cd4bdbf10dbfbd40af2372c3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228921 | `0x0c056b34f2afa70ee1351e3659dfbd2097765275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0d65a93740c5b0a2e0db3a070b5903789b01a8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0daf256d89b8c8ab257eaa8f0ec95f73022e4958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0fb90e00840a7b7d8404876bae0325f96b8d344d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0fcadaedbebb5e1f318e1e39857712d02a77bed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x143eba17f64c773f542e7bf126c9254c5160208e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x14cf81ecabce096428d7c2d4c08d90b0691c5075` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228922 | `0x14eb8d9b6e19842b5930030b18c50b0391561f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x158d9270f7931d0eb48efd72e62c0e9fffe0e67b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228923 | `0x1a49351bdb4be48c0009b661765d01ed58e8c2d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1d5232b55ce742dd5af1860b609446562fc16966` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228927 | `0x20fe91f17ec9080e3cac2d688b4ecb48c5ac3a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2273ec46ac8653f1c177d2e5feb92268cd9ca74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x23fdf4b305fe715001ed55abaa0688097a96d87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x25380d7baa0c3d77ef1379c0bbe58a1faf90f8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x257a590b45675c0396662c8478a8c3b17dc21dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2782e79979d1ed23456f1ef30bc5e2f5ce1eb9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x278490c6be25e300d4332e188aadb9d220042903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2c5adfe40d3cbf712ac1ec4a27203600a65347b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x304d95be2802eb59a06743857e2f7ceb70e7a42e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x38d287c18f61e69d8f897bbb66faa8353f4f1ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x397f4df857bc30e6e9c2ee2b0650067aa030b59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3c94420fa2524166721cb34e28ba2004654f967f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3d5dab0d597f159f1fc3f8b277fdb73a338999d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3e01c235bd346713a83fe64b62a2223610bc7b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3f29e21fb1d31700079da9583e5f239330167056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x461fb138eb44194f3c26507f16c8f71d1b432443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4d9a5d121e67e8c6a492864cf59144cc8cea343d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x592b8c3b3b23770117fcc82a1e5004fa5d36851f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x61b563659a3a6e5f01147a7a357a11fe266c2ef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6435219b5d67769bd4e9804536c07e3eea825a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x677106b51c025391f7c5c0ccc7c37f15e95f1a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6978db60da0b90696d11420deca24e5d9b78d5c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7208dd341579f2e72142a3fbc13c20ecde64664b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x72c76816c42f07e669bdd6e13ea8c0f972fac683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x76b7a24381044e7e8a726704f0919704aeabec04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7ba0fc5542fad1931a5b765c220db2ecf3e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7c400a29f78aefb74d20b24454c002aa9472c0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7d88d9932a7d40e8de88dbabb170d2dda3e89c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x831b6859167e5f2ccee37314ccee571529353fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x882fcf3a336ba25e4756be0af7e323f5882b6147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8b8728bd6ea273185d5bd8bdae594f1cd8fde38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8c6e309f15c782b269b05a37acc1b81cf864ccd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e85f498982a79e4335b067b5631c2d3c6b2d0a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9092a444a92e38f28f28de49da3ff6c760d9e568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x92c567e67c42fc9c2df46d4fa944bd62c166d661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x96c72dd7ec4e80773bb66c52cc535755af78515b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x99509b99e6f2624b57326b1cf48c052b3e0d3788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9b4fbb3b201b2d38730bf3b968be4f6c0f436d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9c628cf83b5c797b2de3519242277ef31b5d6fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9efbd1ffa09c80df0bc5bd035be1aec73f1cda34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaabde74e61f43c342fc333fbf5dd765e20f088b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xab5ece6582506277cd64f0aa2d72c323806cf65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xac866e4e676f860e18b16ade9e393859b774ff87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb87950b5d490b4315b7a69eca6d75e654f915ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbd7e83767777d92adcfee05f78c06fd2c27622ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbd85fca270418b611afd7ef898931443a5c93852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbe341f437387d312d59fa35dea896fa13466bbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbe660e6f31d5dc102147cd09c4696cc8e6a161fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc3831b4dd70f941757b2c4eb30a5d44e2ee1c8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc3c85d5fceb53e4a6a48e076af7ec857bbe86796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc944a7c1d4f44ca5e1713acbae4fe1bf073ce145` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-228933 | `0xd0f1e1243c9ffb11100efd25f1c9ef7ca956dc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd7e6ad255b3ca48b2e15705cc66fda21eb58745a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xda9909bf00beca3e59164715d80664e2cf3b2f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe931f5dd03d08a4eed53a039f0f4f8a8faa8925c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xeca6a69f8dfc49547cfade8992600ceaad9cc83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf370a17a3dfadc6e768bf51dc41c24cd887ecdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf4c2b8a0f7bd6492a3a4ba66edc8db894620ffd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf9d9a93e4ae01904a612ecc1f5740ee101ac3e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfe49b8f38130d3b3fb0a2ad0697d81df4f18dd84` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 95
- Live contracts: 0
- Unknown liveness contracts: 95
- Source-verified contracts: 10
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=1, exact address book overlap=4, source verified unclassified=8, unverified unclassified=82

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | exact address book overlap | UnnamedContract<br>`0x6b129c94ee04ff4d989b0a0b2784fc8bcfe777ef` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | exact address book overlap | UnnamedContract<br>`0xa35e4ac9565fb006812755c30c369314be3511d9` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | unverified unclassified | UnnamedContract<br>`0x0c056b34f2afa70ee1351e3659dfbd2097765275` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | unverified unclassified | UnnamedContract<br>`0x143eba17f64c773f542e7bf126c9254c5160208e` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | unverified unclassified | UnnamedContract<br>`0x3a6f1b4e47f64eccdce0b91d237ed74718e11377` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | unverified unclassified | UnnamedContract<br>`0x5b9a90b04f3f089cef0dd2648426c72e12f92b22` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | unverified unclassified | UnnamedContract<br>`0x60bf64ccaa52da304d456892dc0a8f1c5b159f61` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | unverified unclassified | UnnamedContract<br>`0x831b6859167e5f2ccee37314ccee571529353fb0` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| base | unverified unclassified | UnnamedContract<br>`0xf57fe82572022deb88fb35c63775e29852df219c` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | candidate review | PreAsset<br>`0x60bf64ccaa52da304d456892dc0a8f1c5b159f61` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | exact address book overlap | UnnamedContract<br>`0x0c056b34f2afa70ee1351e3659dfbd2097765275` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | exact address book overlap | Yev<br>`0xc7b96d7f622e0a3a24cf333e84c29e36955f25bb` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | DeadManShift<br>`0x61235f75437f8ea76deb530ce97bcf114fa0cb0f` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | LoopChad<br>`0xd48b2f8b279d325ecd4db236a465cecaa3aa03ee` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | ThrusterRegistrar<br>`0x23b997977dbcd402b763aeb31899ed2c665607c9` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | YesArena<br>`0x1c002b0a15e949ce8f2b9f2fabbba37fe3bda856` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | YesArena<br>`0x6bec5ad302989b93bab1827efafd69db1d0fb539` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | YesArena<br>`0xe1f96b78951018cd8c4009e83f52cb01ddc3ad33` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | Yescension<br>`0x3f3df28fc6b71633df5b7318ecbff419949dcaaf` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | source verified unclassified | Yescension<br>`0xba1578e20578e0ad57e0430f241c9fcd76acd026` | non_address_book | unknown | unknown | verified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x0028389a3421263ba269a0850342c129326a330a` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x028916068996c336e816518c01635a328ab12b31` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x058fc2e45f744a8f21e8642eab3c7d8569b6511e` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x0863109fd9a3162cd4bdbf10dbfbd40af2372c3d` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x0d65a93740c5b0a2e0db3a070b5903789b01a8c9` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x0daf256d89b8c8ab257eaa8f0ec95f73022e4958` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x0fb90e00840a7b7d8404876bae0325f96b8d344d` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x0fcadaedbebb5e1f318e1e39857712d02a77bed3` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x143eba17f64c773f542e7bf126c9254c5160208e` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x14cf81ecabce096428d7c2d4c08d90b0691c5075` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x158d9270f7931d0eb48efd72e62c0e9fffe0e67b` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x1d5232b55ce742dd5af1860b609446562fc16966` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x2273ec46ac8653f1c177d2e5feb92268cd9ca74a` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x23fdf4b305fe715001ed55abaa0688097a96d87f` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x25380d7baa0c3d77ef1379c0bbe58a1faf90f8ed` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x257a590b45675c0396662c8478a8c3b17dc21dde` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x2782e79979d1ed23456f1ef30bc5e2f5ce1eb9de` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x278490c6be25e300d4332e188aadb9d220042903` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x2c5adfe40d3cbf712ac1ec4a27203600a65347b9` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x304d95be2802eb59a06743857e2f7ceb70e7a42e` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x38d287c18f61e69d8f897bbb66faa8353f4f1ca2` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x397f4df857bc30e6e9c2ee2b0650067aa030b59c` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x3c94420fa2524166721cb34e28ba2004654f967f` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x3d5dab0d597f159f1fc3f8b277fdb73a338999d3` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x3e01c235bd346713a83fe64b62a2223610bc7b67` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x3f29e21fb1d31700079da9583e5f239330167056` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x461fb138eb44194f3c26507f16c8f71d1b432443` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x4d9a5d121e67e8c6a492864cf59144cc8cea343d` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x592b8c3b3b23770117fcc82a1e5004fa5d36851f` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x61b563659a3a6e5f01147a7a357a11fe266c2ef5` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x6435219b5d67769bd4e9804536c07e3eea825a2f` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x677106b51c025391f7c5c0ccc7c37f15e95f1a32` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x6978db60da0b90696d11420deca24e5d9b78d5c0` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x7208dd341579f2e72142a3fbc13c20ecde64664b` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x72c76816c42f07e669bdd6e13ea8c0f972fac683` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x76b7a24381044e7e8a726704f0919704aeabec04` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x7c400a29f78aefb74d20b24454c002aa9472c0c9` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x7d88d9932a7d40e8de88dbabb170d2dda3e89c84` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x831b6859167e5f2ccee37314ccee571529353fb0` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x882fcf3a336ba25e4756be0af7e323f5882b6147` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x8b8728bd6ea273185d5bd8bdae594f1cd8fde38d` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x8c6e309f15c782b269b05a37acc1b81cf864ccd1` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x8e85f498982a79e4335b067b5631c2d3c6b2d0a0` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x9092a444a92e38f28f28de49da3ff6c760d9e568` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x92c567e67c42fc9c2df46d4fa944bd62c166d661` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x96c72dd7ec4e80773bb66c52cc535755af78515b` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x99509b99e6f2624b57326b1cf48c052b3e0d3788` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x9b4fbb3b201b2d38730bf3b968be4f6c0f436d2f` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x9c628cf83b5c797b2de3519242277ef31b5d6fd1` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0x9efbd1ffa09c80df0bc5bd035be1aec73f1cda34` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xaabde74e61f43c342fc333fbf5dd765e20f088b5` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xab5ece6582506277cd64f0aa2d72c323806cf65f` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xac866e4e676f860e18b16ade9e393859b774ff87` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xb87950b5d490b4315b7a69eca6d75e654f915ccb` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xbd7e83767777d92adcfee05f78c06fd2c27622ff` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xbd85fca270418b611afd7ef898931443a5c93852` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xbe341f437387d312d59fa35dea896fa13466bbec` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xbe660e6f31d5dc102147cd09c4696cc8e6a161fc` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xc3831b4dd70f941757b2c4eb30a5d44e2ee1c8ac` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xc3c85d5fceb53e4a6a48e076af7ec857bbe86796` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xc944a7c1d4f44ca5e1713acbae4fe1bf073ce145` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xd7e6ad255b3ca48b2e15705cc66fda21eb58745a` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xda9909bf00beca3e59164715d80664e2cf3b2f93` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xe931f5dd03d08a4eed53a039f0f4f8a8faa8925c` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xeca6a69f8dfc49547cfade8992600ceaad9cc83d` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xf370a17a3dfadc6e768bf51dc41c24cd887ecdc6` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xf4c2b8a0f7bd6492a3a4ba66edc8db894620ffd0` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xf9d9a93e4ae01904a612ecc1f5740ee101ac3e52` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| blast | unverified unclassified | UnnamedContract<br>`0xfe49b8f38130d3b3fb0a2ad0697d81df4f18dd84` | non_address_book | unknown | unknown | unverified | n/a | `0x874fd122d940050e0ac9b98d0eeb43a54d268917` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1117c9c13d152e2c84504533066676163b3b7470` | non_address_book | unknown | unknown | unverified | n/a | `0xb15d049e669c2a8dd261b0c3a1ac1c96c88da53b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3dbb28bee3530c256adc18a16be5d2d44faf37be` | non_address_book | unknown | unknown | unverified | n/a | `0xb15d049e669c2a8dd261b0c3a1ac1c96c88da53b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69b19182e9d68b769e5925a091bb3e55d9bb484c` | non_address_book | unknown | unknown | unverified | n/a | `0xb15d049e669c2a8dd261b0c3a1ac1c96c88da53b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca039bdc583156d6b1b6c9602e98e562b7ec2fe3` | non_address_book | unknown | unknown | unverified | n/a | `0xb15d049e669c2a8dd261b0c3a1ac1c96c88da53b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfca0748c2433d2233d7bdfbea932eecfeb41773` | non_address_book | unknown | unknown | unverified | n/a | `0xb15d049e669c2a8dd261b0c3a1ac1c96c88da53b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe3660a423e356b9f352171f0db7ca37d94878cd` | non_address_book | unknown | unknown | unverified | n/a | `0xb15d049e669c2a8dd261b0c3a1ac1c96c88da53b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-02-27_Baseline_Fixed_Supply.pdf](https://www.baseline.markets/assets/2025-02-27_Baseline_Fixed_Supply.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2025-02-03_Baseline_MM_Looping_2.pdf](https://www.baseline.markets/assets/2025-02-03_Baseline_MM_Looping_2.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-01-22_Baseline_MM_Looping.pdf](https://www.baseline.markets/assets/2025-01-22_Baseline_MM_Looping.pdf) | Guardian Audits | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024-11-28_Baseline_Credit_Migrator.pdf](https://www.baseline.markets/assets/2024-11-28_Baseline_Credit_Migrator.pdf) | Guardian Audits | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2024-10-27_Baseline_BToken.pdf](https://www.baseline.markets/assets/2024-10-27_Baseline_BToken.pdf) | Guardian Audits | Audit | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2024-08-23_Baseline_Loops.pdf](https://www.baseline.markets/assets/2024-08-23_Baseline_Loops.pdf) | Guardian Audits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [guardian_v2.pdf](https://www.baseline.markets/assets/guardian_v2.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [audit_trust_security.pdf](https://www.baseline.markets/assets/audit_trust_security.pdf) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [trustsec.xyz](https://trustsec.xyz/) | Guardian | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf](https://www.baseline.markets/assets/2026-05-27_Baseline_Mercury_AMM_Report.pdf) | Guardian Audits | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4654] 2025-02-27_Baseline_Fixed_Supply.pdf — matched: Extracted contract names from findings locations and scope description. The audit report does not have a dedicated scope table but mentions the codebase and commit hashes. Contract names are inferred from file paths in findings.
- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf — no match: Extracted contract names from findings locations and report text. Audit date from cover page.
- [4656] 2025-01-22_Baseline_MM_Looping.pdf — no match: Extracted from audit report summary and findings sections. Only two contracts explicitly referenced: MarketMaking and BPOOL.
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf — no match: No explicit scope table; contracts extracted from findings locations and mentions. Date from 'Delivery Date' on page 5.
- [4658] 2024-10-27_Baseline_BToken.pdf — matched: Contracts extracted from findings locations and file paths. No explicit scope table, but contracts are clearly in scope.
- [4659] 2024-08-23_Baseline_Loops.pdf — no match: Extracted contract names from findings locations and file paths. Audit date from cover page.
- [4660] guardian_v2.pdf — no match: Extracted contract names from findings location fields. The audit scope section mentions the codebase but does not list individual contracts; however, findings reference specific files. The audit date is from the cover page.
- [4661] audit_trust_security.pdf — no match: All 10 contracts listed in the Scope section of the report.
- [14627] trustsec.xyz — no match: The provided text is only a header with the auditor name, no contract names or scope information.
- [26577] 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf — matched: All contracts listed in the Audit Scope & Methodology section under 'Audit Scope & Methodology' table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-02-27_Baseline_Fixed_Supply.pdf | MarketMaking | unmatched — not counted | — | Listed in findings locations (e.g., MarketMaking.sol:357) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | CreditFacility | unmatched — not counted | — | Listed in findings locations (e.g., CreditFacility.sol:438) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | Brouter | unmatched — not counted | — | Listed in findings locations (e.g., Brouter.sol:299) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | LoopFacility | unmatched — not counted | — | Listed in findings locations (e.g., LoopFacility.sol:175) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | BPOOL | unmatched — not counted | — | Listed in findings locations (e.g., BPOOL.sol:223) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | CREDT | unmatched — not counted | — | Listed in findings locations (e.g., CREDT.v1.sol) | no |
| 2025-02-27_Baseline_Fixed_Supply.pdf | BToken | own contract | BToken (selected) `0x9fdbde76236998dc2836fe67a9954ede456a1d63` — deployed 2026-04-21 20:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-02-03_Baseline_MM_Looping_2.pdf | BPOOLv1 | unmatched — not counted | — | listed in findings locations | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | MarketMaking | unmatched — not counted | — | listed in findings locations | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | CreditFacility | unmatched — not counted | — | mentioned in M-01 | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | LoopFacility | unmatched — not counted | — | mentioned in M-01 and L-13 | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | BaselineInit | unmatched — not counted | — | mentioned in M-01 | no |
| 2025-02-03_Baseline_MM_Looping_2.pdf | Tick | unmatched — not counted | — | listed in L-08 location | no |
| 2025-01-22_Baseline_MM_Looping.pdf | MarketMaking | unmatched — not counted | — | Listed in findings locations (e.g., MarketMaking.sol: 428) | no |
| 2025-01-22_Baseline_MM_Looping.pdf | BPOOL | unmatched — not counted | — | Listed in findings locations (e.g., BPOOL.sol: 442) | no |
| 2024-11-28_Baseline_Credit_Migrator.pdf | MarketMaking | unmatched — not counted | — | listed in findings location | no |
| 2024-11-28_Baseline_Credit_Migrator.pdf | CREDTMigrator | unmatched — not counted | — | listed in findings location | no |
| 2024-11-28_Baseline_Credit_Migrator.pdf | BaselineInit | unmatched — not counted | — | mentioned in finding L-06 | no |
| 2024-10-27_Baseline_BToken.pdf | BPOOL | unmatched — not counted | — | mentioned in findings M-01, M-02, M-03, L-03 | no |
| 2024-10-27_Baseline_BToken.pdf | BToken | own contract | BToken (selected) `0x9fdbde76236998dc2836fe67a9954ede456a1d63` — deployed 2026-04-21 20:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-27_Baseline_BToken.pdf | Afterburner | unmatched — not counted | — | mentioned in findings M-03, M-04, L-04 | no |
| 2024-10-27_Baseline_BToken.pdf | LOOPS | unmatched — not counted | — | mentioned in findings L-02, L-03 | no |
| 2024-10-27_Baseline_BToken.pdf | BaselineInit | unmatched — not counted | — | mentioned in finding L-02 | no |
| 2024-10-27_Baseline_BToken.pdf | LoopFacility | unmatched — not counted | — | mentioned in finding L-02 | no |
| 2024-10-27_Baseline_BToken.pdf | MarketMaking | unmatched — not counted | — | mentioned in findings L-02, L-03 | no |
| 2024-08-23_Baseline_Loops.pdf | Loops | unmatched — not counted | — | H-01, H-02, H-04, M-03 findings reference Loops.v1.sol | no |
| 2024-08-23_Baseline_Loops.pdf | LoopFacility | unmatched — not counted | — | H-02, H-05, L-01, L-05, L-06, L-07 findings reference LoopFacility.sol | no |
| 2024-08-23_Baseline_Loops.pdf | MarketMaking | unmatched — not counted | — | H-03, M-01, M-04, L-02, L-04, L-09, L-10 findings reference MarketMaking.sol | no |
| 2024-08-23_Baseline_Loops.pdf | BaselineInit | unmatched — not counted | — | M-05 finding references BaselineInit.sol | no |
| 2024-08-23_Baseline_Loops.pdf | LOOPSv1 | unmatched — not counted | — | H-06 finding references LOOPS.v1.sol | no |
| guardian_v2.pdf | BPOOL | unmatched — not counted | — | Listed in findings locations (e.g., H-03, H-05, L-01, L-02, L-03, L-05) | no |
| guardian_v2.pdf | MarketMaking | unmatched — not counted | — | Listed in findings locations (e.g., H-02, H-07, H-12, M-02, M-03, L-04, L-07, L-08) | no |
| guardian_v2.pdf | CreditFacility | unmatched — not counted | — | Listed in findings locations (e.g., H-04, H-09, M-05, M-06, L-06, L-09, L-10) | no |
| guardian_v2.pdf | BaselineInit | unmatched — not counted | — | Listed in findings locations (H-06, M-01) | no |
| guardian_v2.pdf | TimeslotLib | unmatched — not counted | — | Listed in findings location (M-04) | no |
| audit_trust_security.pdf | BaselineFactory | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | Baseline | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | bAsset | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | BlastClaimer | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | Core | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | CreditFacility | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | IBlast | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | LiquidityManager | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | MarketMaking | unmatched — not counted | — | listed in scope | no |
| audit_trust_security.pdf | preAsset | unmatched — not counted | — | listed in scope | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BToken | own contract | BToken (selected) `0x9fdbde76236998dc2836fe67a9954ede456a1d63` — deployed 2026-04-21 20:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | Component | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | Relay | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | ConfigScript | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BController | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BCredit | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BFactory | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BHook | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BLens | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BStaking | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BSwap | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | BlockPricingLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | CollateralLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | CurveLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | FeeLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | GuardLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | MakerLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | NativeLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | NormalizeLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | StateLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | SwapContextLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | SweepLib | unmatched — not counted | — | listed in scope table | no |
| 2026-05-27\_Baseline\_Mercury\_AMM\_Report.pdf | VaultLib | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 126 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=1, medium=1
- Match method counts: unique_name=3

Zero-match audit list:

- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf
- [4656] 2025-01-22_Baseline_MM_Looping.pdf
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf
- [4659] 2024-08-23_Baseline_Loops.pdf
- [4660] guardian_v2.pdf
- [4661] audit_trust_security.pdf
- [14627] trustsec.xyz

Fork inheritance lineage and inherited audits are included when available.
