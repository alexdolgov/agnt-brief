# Agentic Audit Brief: Outcome Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Outcome Finance (`outcome-finance`)
- Website: [https://www.outcome.finance/](https://www.outcome.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: boba, ethereum, polygon
- Contract surface: 82 unique implementations (82 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $986,643.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Outcome Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x04fa0d235c4abf4bcf4787af4cf447de572ef828`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 81 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 82 unique; 81 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 82
- Raw deployments: 82
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
| ExpiringMultiParty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f1424cef6ace40c0ae4fc64d74b734f1eaf153c` | ⚠️ Unaudited |
| OptimisticOracleV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ae6609447e57a42c51b50eae921d701823ffae` | ⚠️ Unaudited |
| SkinnyOptimisticOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee3afe347d5c74317041e2618c49534daf887c24` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04a734a6c3e415fff3149f0cb5f4719554974cc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390501 | `0x04fa0d235c4abf4bcf4787af4cf447de572ef828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d6a3b7a345576a22b63470c1cbdf133179257c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0868781a6eae026d126516ac5ebca41201ed0146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c2fd45d89fb9693b0130f8a66be67827c278ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e808507e1692876ae6bebc35da3e13801e63bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104a2817116aea9a5c5f7f7b3235c68a0ee51e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1139bad757ca06275042db7bdd1528261ed765e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1658d5b3737beea9f0f8b7da3c298579390cd36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a9c80c598dd42ee682a4fd03bc7f725e78a7d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d847fb6e04437151736a53f09b6e49713a52aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25224867055e0e6a73effe61053a0a9fe1fc4dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28a5da04a94f0501a6f77df8f8a9529d27b92744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a739a4accc66c69ff53a5ef99143fc256121558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f64bec95f2cc0174b6b89bc9fb95c509e7d987c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33cabde4527fcb4bbb1ea9909bf93d41c98cfa3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x348fbf55680ab9162c5b09572b8f126402b3d3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39646c110c2806b5aeac72a7eea6e5af70452d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b99859be43d543960803c09a0247106e82e74ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e532e6222afe9bcf02dcb87216802c75d5113ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f941e48a552bf496b154af6bf55725f18d77c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43d0473a0bfb65f39142aef13a640d646e435991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46209e15a14f602897e6d72da858a6ad806403f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4842116701cd2b92f1093ed854c9a74657470581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6ccb1da3c7844887f9a5af4e8450d9fd90317a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53b0892cb32d9377a2bf9d04f51a9a58a5bf6089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53eb14e1e7b75d10fc00fca16a717e398f09c6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f44ea3d2e7aa0ac089c4d8f7c93c27844057bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5644dfbec6a9dbe50ad8613b55028b2a007bb9ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x592349f7dedb2b75f9d4f194d4b7c16d82e507dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dee86b9345a2b4631d087fac91e1609a1c9d9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6051d63b9fef16f018ef1031438815d81d64db72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x628e89bf678e0bf804469e8339f9f1b9fb8061d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633159bf4d33106697de4601a1870c973e74be02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6523baa2d53b24c96cf72867b2e8251b5ddba478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bebb6767ef6833d669b034cfb823a6aac4ed0b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebbe6c144f20bb4e08413c23b70cff00d5e7db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70cc3386d0bec897507177700dad6d674032b1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x730674363e2de4e30489dc37f0cd12abdcfc6e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7492cdbc126ffc05c32249a470982173870e95b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74d367e2207e52f05963479e8395cf44909f075b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bdd67230a942bd890c89417b5716b415874f851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c54bd4277a844d1fc5ce2ce19bf7ebc8a18bc35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f4eef331348b99850f25dd4f2ab8336a7276311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815a168ad337f6e6edaa300e7b2cd3b0a3687bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841416642293f075d3a1708e7afeb258b18e2dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84a3076031fcdf12e95514149408326e303a9f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878cfedb234c226ddefd33657937af74c17628bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7b507f0fc33b25c363813069f976502c7ef76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9b504192c06cffa6e2cf67e1b656a3c870bb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e1a24fad5e8d55855228293950ce8aef12e689a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a437220c99a3634e10b20e4a7407a537265b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92804c77ed447f1439495756cfa17bbfd8b78a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99081ba11dbdb83607952a1242d2a412a15a6198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9921810c710e7c3f7a7c6831e30929f19537a545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df4a8166849c58aaad5b1347385732c938dedf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e39424eab9161cc3399d886b1428cba71586cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f3d032f795ba5c8b4bf4437b0f0cbe52d66f549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb273f8a0a5a445254c2eb905a24dd9bf24526c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8f489e7ed5bd7e3c5cf8e11996849ba273b7e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc23c5c4271821009ca655e804b293c1a0443b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25096b54cd850ee8a849e8bdc964ec412175406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5be39ca419469b14396c56415a682e2b7b39613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca13c064b7a5f3a8c763312a883499a10b2614cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcacbe94ffa7c5dd10799bd5ae1860abe8ff083bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceaefc381e3268ba7f1ec92a7ad637857ee56210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf649d9da4d1362c4daea67573430bd6f945e570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc5f806beaa77242da3a81c40d0f669124aa814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18e2a433664f9459cccbd4bee0057a7bc57e707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5bd3da7228bfa951eccf86af1d1bfd9fe0ff31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf90434df0b98219f87d112f37d74b1d90758c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebb91ab3e473025bb8ce278c02361a3c4f13124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe07533c961032a182fa46f9b8fa9a03dc9b5d7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe81eee5da165fa6863bbc82df66e62d18625d592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1bf1ff551977e273fc2c20f6e187d588d3e4c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd70bef61ae4eaf2a00c9502d4308a226aab53a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe3c4f1ec9f5df918d42ef7ed3fba81cc0086c5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | `0xc064b1fe8ce7138da4c07bfca1f8eed922d41f68` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 77
- Live contracts: 0
- Unknown liveness contracts: 77
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=77

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x04a734a6c3e415fff3149f0cb5f4719554974cc2` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07d6a3b7a345576a22b63470c1cbdf133179257c` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0868781a6eae026d126516ac5ebca41201ed0146` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c2fd45d89fb9693b0130f8a66be67827c278ba7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e808507e1692876ae6bebc35da3e13801e63bfa` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x104a2817116aea9a5c5f7f7b3235c68a0ee51e3a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1139bad757ca06275042db7bdd1528261ed765e7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1658d5b3737beea9f0f8b7da3c298579390cd36e` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18a9c80c598dd42ee682a4fd03bc7f725e78a7d1` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d847fb6e04437151736a53f09b6e49713a52aad` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25224867055e0e6a73effe61053a0a9fe1fc4dde` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28a5da04a94f0501a6f77df8f8a9529d27b92744` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a739a4accc66c69ff53a5ef99143fc256121558` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f64bec95f2cc0174b6b89bc9fb95c509e7d987c` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33cabde4527fcb4bbb1ea9909bf93d41c98cfa3c` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x348fbf55680ab9162c5b09572b8f126402b3d3dd` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39646c110c2806b5aeac72a7eea6e5af70452d8a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b99859be43d543960803c09a0247106e82e74ee` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e532e6222afe9bcf02dcb87216802c75d5113ae` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40f941e48a552bf496b154af6bf55725f18d77c3` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43d0473a0bfb65f39142aef13a640d646e435991` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46209e15a14f602897e6d72da858a6ad806403f1` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4842116701cd2b92f1093ed854c9a74657470581` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ca5348aa2ff1e9e854f3a22dc51aa2c70151408` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e6ccb1da3c7844887f9a5af4e8450d9fd90317a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53b0892cb32d9377a2bf9d04f51a9a58a5bf6089` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53eb14e1e7b75d10fc00fca16a717e398f09c6b3` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54f44ea3d2e7aa0ac089c4d8f7c93c27844057bf` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5644dfbec6a9dbe50ad8613b55028b2a007bb9ba` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x592349f7dedb2b75f9d4f194d4b7c16d82e507dc` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5dee86b9345a2b4631d087fac91e1609a1c9d9d7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6051d63b9fef16f018ef1031438815d81d64db72` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x628e89bf678e0bf804469e8339f9f1b9fb8061d7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x633159bf4d33106697de4601a1870c973e74be02` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6523baa2d53b24c96cf72867b2e8251b5ddba478` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bebb6767ef6833d669b034cfb823a6aac4ed0b7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ebbe6c144f20bb4e08413c23b70cff00d5e7db2` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70cc3386d0bec897507177700dad6d674032b1bd` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x730674363e2de4e30489dc37f0cd12abdcfc6e39` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7492cdbc126ffc05c32249a470982173870e95b0` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x74d367e2207e52f05963479e8395cf44909f075b` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bdd67230a942bd890c89417b5716b415874f851` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c54bd4277a844d1fc5ce2ce19bf7ebc8a18bc35` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f4eef331348b99850f25dd4f2ab8336a7276311` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x815a168ad337f6e6edaa300e7b2cd3b0a3687bee` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x841416642293f075d3a1708e7afeb258b18e2dd4` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84a3076031fcdf12e95514149408326e303a9f4f` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x878cfedb234c226ddefd33657937af74c17628bf` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b7b507f0fc33b25c363813069f976502c7ef76e` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c9b504192c06cffa6e2cf67e1b656a3c870bb2c` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e1a24fad5e8d55855228293950ce8aef12e689a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x91a437220c99a3634e10b20e4a7407a537265b61` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x92804c77ed447f1439495756cfa17bbfd8b78a4a` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99081ba11dbdb83607952a1242d2a412a15a6198` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9921810c710e7c3f7a7c6831e30929f19537a545` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9df4a8166849c58aaad5b1347385732c938dedf8` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e39424eab9161cc3399d886b1428cba71586cb8` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f3d032f795ba5c8b4bf4437b0f0cbe52d66f549` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb273f8a0a5a445254c2eb905a24dd9bf24526c32` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8f489e7ed5bd7e3c5cf8e11996849ba273b7e27` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbfc23c5c4271821009ca655e804b293c1a0443b0` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc25096b54cd850ee8a849e8bdc964ec412175406` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5be39ca419469b14396c56415a682e2b7b39613` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca13c064b7a5f3a8c763312a883499a10b2614cc` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcacbe94ffa7c5dd10799bd5ae1860abe8ff083bf` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xceaefc381e3268ba7f1ec92a7ad637857ee56210` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf649d9da4d1362c4daea67573430bd6f945e570` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfc5f806beaa77242da3a81c40d0f669124aa814` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd18e2a433664f9459cccbd4bee0057a7bc57e707` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5bd3da7228bfa951eccf86af1d1bfd9fe0ff31b` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdbf90434df0b98219f87d112f37d74b1d90758c7` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdebb91ab3e473025bb8ce278c02361a3c4f13124` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe07533c961032a182fa46f9b8fa9a03dc9b5d7ef` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe81eee5da165fa6863bbc82df66e62d18625d592` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1bf1ff551977e273fc2c20f6e187d588d3e4c11` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd70bef61ae4eaf2a00c9502d4308a226aab53a1` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe3c4f1ec9f5df918d42ef7ed3fba81cc0086c5f` | non_address_book | unknown | unknown | unverified | n/a | `0x2baaa41d155ad8a4126184950b31f50a1513ce25` |

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
| needs_review | 79 |

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
