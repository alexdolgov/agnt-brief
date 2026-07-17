# Agentic Audit Brief: DyorSwap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DyorSwap (`dyorswap`)
- Website: [https://dyorswap.finance/?chainId=34443](https://dyorswap.finance/?chainId=34443)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, ink, merlin, mode, plasma, sonic, unichain
- Contract surface: 98 unique implementations (104 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,731,456.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DyorSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across blast, ink, merlin, mode, plasma, sonic, unichain. Structural roles: 4 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: supporting (4), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: none
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DYORRouter (`0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a`, chain 34443)
- DYORRouter (`0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef`, chain 81457)
- DyorRouterV2 (`0x591cf6942c422fa53e8d81c62a9692d7bea72f61`, chain 146)
- DyorRouterV2 (`0xfc9869ef6e04e8dcf09234ad0bc48a6f78a493cc`, chain 9745)
- DYORSwap V2 Router (`0x8270282ec808be95642048ef02b4028e6ea98af8`, chain 130)
- DYORSwap V2 Router (`0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef`, chain 4200)
- DYORSwap V2 Router (`0x9b17690de96fcfa80a3acaefe11d936629cd7a77`, chain 57073)
- DYORSwap V3 Factory / Deployer (`0x0edeea785120b827d922807499408459d7c753f3`, chain 9745)
- DYORSwap V3 NonfungiblePositionManager (`0x16581fcb162ecaae0c8658227d3028f035b4b7fc`, chain 9745)
- DYORSwap V3 Quoter (`0x8704c5e94d7f2d6303f682f781183b53fd05c719`, chain 9745)
- DYORSwap V3 Router (`0xf600703577a276836d9acecba197a55bcc1a3353`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 86 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 98 unique; 87 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 98
- Raw deployments: 104
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x097de1ade6d7b46540637935c88b489860d310a2` | ⚠️ Unaudited |
| DYORFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: mode `0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef`; blast `0xa1da7a7eb5a858da410de8fbc5092c2079b58413` | ⚠️ Unaudited |
| DyorPumpToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 3 deployments: plasma `0x11e0f991cad15a5b3cc69c84d33a91fc977a92e7`; plasma `0x469e66615f8c34e1ba684b386c42d15b344a14c4`; plasma `0xb4376692ae84487f6b15d68bdcb6c879ec294a60` | ⚠️ Unaudited |
| DYORRouter | adapter | project_anchor | own_supporting | 0 | mode | unit-384154 | `0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a` | ⚠️ Unaudited |
| DYORRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-384160 | `0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef` | ⚠️ Unaudited |
| DyorRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x55a75ee40c468984a1ea053e6e4bf2126b6b0ca5`; sonic `0x6c86ab200661512fdbd27da4bb87df15609a2806` | ⚠️ Unaudited |
| DyorRouterV2 | adapter | project_anchor | own_supporting | 0 | sonic | unit-384152 | `0x591cf6942c422fa53e8d81c62a9692d7bea72f61` | ⚠️ Unaudited |
| DyorRouterV2 | adapter | project_anchor | own_supporting | 0 | plasma | unit-384167 | `0xfc9869ef6e04e8dcf09234ad0bc48a6f78a493cc` | ⚠️ Unaudited |
| DYORSwap V3 Quoter | unknown | project_anchor | own_supporting | 0 | plasma | unit-384165 | `0x8704c5e94d7f2d6303f682f781183b53fd05c719` | ⚠️ Unaudited |
| QuoterV3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5dd0416835b27325917677f974a256e67dfa1983` | ⚠️ Unaudited |

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
| DYORSwap V2 Router | unknown | project_anchor | own_supporting | 0 | unichain | unit-384150 | `0x8270282ec808be95642048ef02b4028e6ea98af8` | ❓ Unverified |
| DYORSwap V2 Router | unknown | project_anchor | own_supporting | 0 | merlin | unit-384156 | `0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef` | ❓ Unverified |
| DYORSwap V2 Router | unknown | project_anchor | own_supporting | 0 | ink | unit-384158 | `0x9b17690de96fcfa80a3acaefe11d936629cd7a77` | ❓ Unverified |
| DYORSwap V3 Factory / Deployer | unknown | project_anchor | own_supporting | 0 | plasma | unit-384162 | `0x0edeea785120b827d922807499408459d7c753f3` | ❓ Unverified |
| DYORSwap V3 NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | plasma | unit-384163 | `0x16581fcb162ecaae0c8658227d3028f035b4b7fc` | ❓ Unverified |
| DYORSwap V3 Router | unknown | project_anchor | own_supporting | 0 | plasma | unit-384166 | `0xf600703577a276836d9acecba197a55bcc1a3353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x026614946ad02a270d1d87f04c5c9e93d27cd826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x038e0c21895fcd1cd1de4da152916b64f38ebfa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x0a9fdc64b773fb4ec48332719df9bf7c48a48561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x19b786d3d87ded1e7d90d2ff5e3a0521ae94164d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1c8be229730b738129a65fbbdd4e0f40c5f66374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x22998a18fc95b8767b667018a021cab1cb8b5858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x2ba7020803474d9670345752a0d8f2c38af778b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x2eb64f3dbf835b4a511efa8a7d3abfb714ebebb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x359a535cddd261c32691bf3ad14e76f3206c372d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6b2bc641487b24a4606b29acb37f9b06a4c783de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6b52d9628bd4c6c376ad85c8e9982fa224c54ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6bdb3b0cd9711afcfb3bf5a1cb3fb885543da050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6c86ab200661512fdbd27da4bb87df15609a2806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x803b4eaf09ace3a90c23c32083ff1615be56877b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x83ad0f601faee9d867e5f22ffdcd812885ec2f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x845ee60f6bee4227814476b825589e01e947cbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x98a7b45a9dc5f2369cf0ea3bf769a6c9504e89b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9b17690de96fcfa80a3acaefe11d936629cd7a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xccdba0c077e0f541b5d531f7432cbac1087b3285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe2e9d47d1f1f8d7d2e5eb24739aed0ef72eda9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xfeb89bb9f7ad834c86d52985bc656cd333427ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x038e0c21895fcd1cd1de4da152916b64f38ebfa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0a9fdc64b773fb4ec48332719df9bf7c48a48561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e5d4a1adc014ad46c7d61c31240237d2f40de95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2845fe430b32d673df474c849ba5777bd6fdbf52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2ba7020803474d9670345752a0d8f2c38af778b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2eaca0464c5ff9c8ef83ebc2907d8ecf37fb4d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x39f6b00479fda92cf4f33752f00faeb087d1354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f815e6b73cc14ac23be75e04a2c9b6c94a71e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56ea5ba8f80e82fddcc81a36f9ed552b4a4fb0f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x583fab965311ddf1e8942d9af9ea9cd42f7b2745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ac77b07e50baf6e47d5880564745c048adccf0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ac8ac5c01001ea891141b290d5b942f96d65fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83ad0f601faee9d867e5f22ffdcd812885ec2f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x845ee60f6bee4227814476b825589e01e947cbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9b17690de96fcfa80a3acaefe11d936629cd7a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf85ee02e35b1733a748338801d0a9add888b902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0b2348e7264d38e2f27132eb8d8faf8465345e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb1b805820d9b0d4ab89873f84314ace7971d6667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbf1e74def501bdfe51ed9b923aace896ee1a8da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc174ee70f94dc9597ac08ad24c9e0731951b8cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5386d4a1d1ed1dc0848b779627803113ff5fca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xca583b14d16287b83a84496040b7fa46e5e0d970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd8863d794520285185197f97215c8b8ad04e8815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe1a931937c8696aca22f64212d8a779283b3b3ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe2e9d47d1f1f8d7d2e5eb24739aed0ef72eda9c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef43203ba0cda0406362884e2d3de11bd45752c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf0815091bc5cd183d458ff62e668760b18b296d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa95f836fda89e67052984617067754a4a962471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | merlin | n/a | 3 deployments: merlin `0x2ccadb1e437aa9cdc741574bda154686b1f04c09`; merlin `0xa1da7a7eb5a858da410de8fbc5092c2079b58413`; ink `0x6c86ab200661512fdbd27da4bb87df15609a2806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x103b99fd0fcde737cb7da3323f5463789af5693d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x24691aa68a9f3cff82f5820a9ef638a8f8744130` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plasma | unit-384164 | `0x476810ab9d1fb4442d8c2108b105302fac33a51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x53869f1ef0e4f2a4b831231adfa967f7625cb719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5a96508c1092960da0981cac7fd00217e9cdabec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x61a425ab7e1f6b3fa1eb6af6162cf471fa0e7c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x68a769dc20805d3e4cdb2f1b33b330c9abfb6b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x77888ee289bb2bef7320c9a9ddddba9a16dcbaf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7b7984e421821c47df7a7a01016dc7211712b261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x942bd5bfdc5317c5507e326f8eb4bb6058ab5c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa9f2c3e18e22f19e6c2cef49a88c79bce5b482ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb3e80e8f183202e7fd0acdbf241f1b2a9cc890b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xc474aecca08e858313aaecb23f384ad0f5e553fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcc9c4253a164f44526d2a8d33c3f7a3ffbd491ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd4b362e5bf79c51f3115a8bbc5f62b21abfd808e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xdb26254cba0c915532c7b9e45ea2dce8ab9eb842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xdb3e73989eae0a5132d668099c529f51a97ee8c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe5d4f8ecc246aef7c63b3537b264f871455951a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf05f686c0f6543deb844ea1e89f8a97f89502b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc794e944dfcb8db141a9222a29d8834ccf556cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xffe70dbd2638762305f369426990708d6ba09b86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7e21023bdc3be7bb7abbc3840e2095c4d8c64b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa1da7a7eb5a858da410de8fbc5092c2079b58413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xdb1730104262fa5e93a92aaa68aae3d47173ce45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7e21023bdc3be7bb7abbc3840e2095c4d8c64b57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x898656f7737c71cedc9d0b593bdab34461df44c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaf0505735345c65e524ae1a4366c46856ec9700b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb44db03854c0452f406a24f0a274310f33d75a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb8f2e3303e690c6f06c75918afc61f7c0828808e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xcb4b7bc5a2eaebf4194a4495b994fa4fa8a031ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xeffeb6420db9d6825ad25f3dc36d116fd230a14d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | `0xcf9dc9afb93bd3ef4fb3cc4df7843abc3c9e169a` | DYORRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xe470699f6d0384e3ea68f1144e41d22c6c8fdeef` | DYORRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x591cf6942c422fa53e8d81c62a9692d7bea72f61` | DyorRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xfc9869ef6e04e8dcf09234ad0bc48a6f78a493cc` | DyorRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 89 |

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
