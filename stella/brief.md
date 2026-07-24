# Agentic Audit Brief: Stella

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

- Project: Stella (`stella`)
- Website: [https://app.stellaxyz.io/](https://app.stellaxyz.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 266 unique implementations (268 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $442,829.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Stella. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 248 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 261
- Unique implementations: 266
- Raw deployments: 268
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Erc20LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x04c3098931bda90cc307ea37b421953b3384ee6a`; arbitrum `0xa1af884b54e72951443407afe0ff8dcfc4d97546` | ⚠️ Unaudited |
| NativeLendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24d3cca628cb946e8b8ec879dc151d1a55a60569` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc9cbf102c73fb77ec14f8b4c8bd88e050a6b2646` | ⚠️ Unaudited |
| TransparentUpgradeableProxyImpl | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-257053 | `0x032ba65c71c82d2e6dcf91cad148adc64a5f02a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxyReceiveETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x092d4bee60b9f8904918ba7b0341c0b45f16fb55`; arbitrum `0x48b5602c6a716c57db1f85957956fb249b59577c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (261)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01ee870b8b080ce679b037affb8116cea0c9f01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0484c6d9b2ab84a71047c65c0354990df2b37037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05bce0f66cf53fab3fbd54db7e6f2eef0daf7e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060e91a44f16dfcc1e2c427a0383596e1d2e886f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x067a3b0c5968e10b2871d6add4fc17fefe257789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0789862bf55b792ee512b3e6947a4aa5599e481b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08ac8fb7e0042a7fc46e6edf13fbed31987f8f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a1672a0bd72017d847a2bb18cb8f6501356ba36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aa15c242b3a0875dd044a57580a557c5f0cc805` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0c63bccf6c4d20ecfcb298ec5bb1ef18fe9e95b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cb539c26051c58016384214d4bae222500fe95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d2ecb3c71dbfb46cd08eb72c2f6c85c34821292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d3496b1b0dfdf7fb76d60e6ff35aec057a87b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d56cb10ebb95c70148b4df9bfde9d433adaf2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ee4f09d0547851b37c3718eb4982932dba51107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f431a00fab97f38e223b556b116caac97d73838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f711295c51d12fee7d768cc63510c4ed264f67a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10762721e4afc68489eaf42e553a1d625542f637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1261330330294208198d946c63f2d5dbbdf30069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17cdd7f68cf2146665f31b224815e53f4f2737c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x183c293a84323fab5299fa66c9c69f205d3fa1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19e122efc8307e4f4216d221f6210556fedc07a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a0a9fb354fd3bbe6be1f34c7a7eb6b5b03db1bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a18ebbf8d3d9be5e891b62bcb2765c821721f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a93af6d51180f0d5081b8659b56adb2349fb6e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1acaaf7beef4ad7c248ef7432b95ef7709b28383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c22bca8516d1d228dc1ca424ce4ed2c8946bcb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c34e533bdeafd4844241b95921d6856328047ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc371c3ac923b2cab7f6f7f8188a1968dec4f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f417b09b76a3f2dd3ae7d6b8a5d8de01ded0df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21168b244a09d895e7303193730420189ad1b85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22212fcf487e894b700c0599417b6551ee038407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2605bcad0c2715444f6d40658203ad5b15e3e8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28589e530eacb4028f5ff0dcad6d2df0ada80e1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29431c82b6b944a60fad88d5634a8057917624ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a1633a2f879b2a41650a48c42c14001e5607055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b0bd4e157a188d41ce4f85984ae43c9a332b76c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c1ef520c93ade1d3c8177204bd530883b781197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c922adb54107fd2554b57abfcb2765b210d5412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x322bb7e977b6603b03be7bf8c917a1a222d7f137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x325083e462f639e96f354df3ab84bf85cc5c0131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3251f402cc06b33e742f08e1adbe0d2e4c1ea2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3298581c388fd579aa015f217ce9c94189985abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32b28c1bcf3a3b491fe7f2c19833b8b91f8bb57f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32ea11681adb1826ff315c4c47c95890b10e86af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35ff1826403f6b154856236da6bdabc668bd9a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3633e0362834607d9f9c5a9eacda8b4aa00789fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36569fbc5a9d4c59d71e81d46db24256a09d1ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x365ab2669d2cd66cf2dd284dd66094031a9e1a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x376d16c7de138b01455a51da79ad65806e9cd694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c387d11c5a8e9d215c35141e2973ae136bc8086` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3d94db0f6eb049a3f594e93f94a61b3030813504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d9dfb7f2fa653ecab365b58d6b8357ea7be46f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3eb243bcd51370f8a27c2ae980d265f8a804966a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f325539d53db40622d58197898c711d94ab10a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f86c98e0de260eecb367c8bfa40ae79baf2ec0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x407c4ba0eab2f985430d245c413374c6354f69d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40b686db4feea08e7d24f3dedfb90d78a51e9409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x422de111e7e49611c66ca02848d78319325d60da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4637bc32cafbe94c4c0ddbf5db3b4ab449c6d29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4727f9cddd4ce6d5287f6b8393622605fcff0598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4730014710bf101f5c1d9ce14f1b1be6cc344daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48eaff9834e7f7a7e14b16ed5ee486fb9982e922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x496aa991cf3952264f284355371cd190ddcc8588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49991481a9ab4a3e2c42c7787f1bf51fc8bb0561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49f24b28d51e28ba5abb65c4392d38b92d4f6f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49f8132b6c45604f4a87d79c74d9495bbfbf66fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b27eb9766e312b1379353134b49a56c77d66cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b3c4c225899ee8b572fa4617522e678ec7c1d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cb035fa8fad5283a99a66bb8fc7fd7bb666230c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5190b55010312eb43dfffa591c049f9d8e2a4df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5196e0a4fb2a459856e1d41ab4975316bbdf19f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51e5af3c65623366a0bdeb4fed1f2c63d6773540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x528f33328099bbad5c58854902eac7d17b172f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x528fb3bd67ccf32e3c177e6e0b1070a6eacca660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52dca3bfb832590957c22440a06f215c7a8e5ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53dd491821a53b9415e356a9118c801fab4585a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x556b00966842b1e9046c85766788d373b2e85749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55c76259c7fd1ab1149496114a18e3faeb3711eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x573a89fbc6b4a5b11a55dc9814a1018a3a9cd0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x576c935b03504aeb1538ceb41f49fd806ce07ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x596d6ac45c44227123422de70034af2c66b1193b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59d35eafc95e5b0f20971dc0b22131ec5c526e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b3949be326c3dfc63ef20d9d8f8db9f4e9cfbee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ce505a3e90c7f83ce4d415955c95dce64fdbcda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ecb93b3ef882bf42fee65541942d50a7dab4b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f066cc9b539076416e284403818e518d64c492d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ff4433417543430e49e4cf2565090e4beb46884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61cfb78cf26ea2268de2d359a8b52ed767a5c169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62217a30bc6644b0330f374ee26d46a34729660a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62563e48c450afc90959c884ff9a56ecc36a7f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x625a8a9a8c930d9b15a4fb11286005596659b038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62f62a91918fef362b88921723d69020e44e250d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63dc549bd230c4c0f01e74ad2ebd287b94e12f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x675fa41ffcb2ea4e0b2ece56976c459b5f5c7087` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67cc2427ef0c17db74a81800505231c660465666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x682eb0670ac59651d0a7bf7ffc1458f1d7dc713c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x688264a625244f382a6e9996c1e2f56c5a02a7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69e213c54c11a9f645399d40322f97c267cdfced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a1cd9530177a04c5f32ea3f76e88250056d5ba3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x6a5fb411e85d74b51862ded8d1cf54f1896d95be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ac7e3e3fe9a5b7f3e385535aa533306fec15286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6dd6c6ad9618033ec50ecf2ccb952c12af4744ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e1857c5a567f2fe69a03b29495bf8cef80da2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e435cf8f4452303e4f6d23cb3e5c83db649edb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f93f4d18b2d7a6080552984acf4eb3fc20a36fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x709b8f536d279362f5c02f1cf23d4729769202fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70a0e7eac8db8aff08c538e24adac829744f10ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70bc43df9079fd048c5b94a49131d5a7827c6006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72172b166cbe677e8b88e70d62209df360beb08b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x735c8108709a8d2da80df6286267f7b03d10c70f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73e3cf0884010ef521e99972b1f37062f3478e04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x74a94113237a229a63d0dc028a5abb02a190ffe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77f1bb89a19f9c7b29d87717a9db20c8b7271eea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79f56baa580994ed2ea3372d46f82b2d8cc7e4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a4aa3005c8f27e9794dc475dc1969884cb98f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d13a6cab97d2530c5e4f3dbd9978e26355eb21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f992b18f17d95845648f7d131232417e3d8dca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x801b1b8a8440b9ae348d0e49315dfa59d340932d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x811a3f2577de04af01663df8dcf543bf6a6187b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81a506de2f85756d95e253141dd8c88233083b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8215102019c38735f8279fd0e9abbd3cc9f60d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82c00407a77db4005f88e71f6025ac2a0df0d73c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83c8972bcd90c3c400a47cc37f56898c7ec63c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84a040577d6c3c05969d053b348bf9d66b9b7300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84ad26e88e3005fc898e76b4c1276406a4b19240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86b561346fb274f985bcf941a94b58d02ab4a21e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86c56f5cabbe6794d53cf8e19084a6fffce074b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88df959c1b31ca6d1c00d63fd2db574d39e9a20d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x895b18f96f8180415fe9d5c3ba032e53624238bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c5f89ffae6e9bbb2b049da186ac8d765602658d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8daa1f7b02f90b305fbaaaa3c18e09087ea79e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e50117f0020e3872cea6fb72801d8810f11caf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e57143d14bae132210cfeec58d0c48875f7d415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ed1e3631c9f9681fdb9abb4170a26392b8a208e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f03517cfc7b0f86ffe94b60683c01326efb16a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f26efb26f394d4ff948ec42c9eac345482f51c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f85f49765c2d4b7dd1ad5ae2f872f0e0bcea6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fd36eb4f263dbeb65916d9d4ad354911c799ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8fd82f6f600528e9faeb0abab8e0c1b98de9b3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93a8ae19a1462fa22a4aff9e5ab54eeb148a681c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9403cac21baa5e2215ba3765047dd0277693998e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x966bbec3ac35452133b5c236b4139c07b1e2c9b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97a57663491ba1f0464d587b4b01ed58e49e4109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9803d4d39edd1d8487cb9e4fc04c83727afa267d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98604b8c8a41fec08b64a31a378b6e0489d25392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a015d1d6ee59325b93fb152dbc442b248ecd023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a70bc89be0689ed15e78c76ff010a659bacacd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9aac6b1534306fcc6c7d875a09a357cb35ee86b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b34b1c626a2183083298081f0822d63d23e78ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b4d082a36973cd5aaa2935430dd45b697910687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ba0d69861a397ddec23a6ed9688759dac7a0d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d1670dba884ccdfc50e3c235b97946221181751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d92cf1ff6860a5dbc56a8f0f58283143497bcb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e3c63b2c25f72204b3201a519ba713a4d8355c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa33d366e53a4645744ef4a0a21e912361c150b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa398b342298882ffd49f46e411ead3d20d0560af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa45e83329f8530bde96acde855bae8e9f96ec52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4745ffbffa98eebf34605f43627d0e9f55e5d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4a8b9a08e71285060c9794b9f57036af7d47738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa575163c0da0bec6887b5bc01be7231fa7cb2c0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa67cf61b0b9bc39c6df04095a118e53bfb9303c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6bae2f3ee27271b55779bc6071fa101431dc8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6bb6faecd9007e68c487e5e2cbac066fbd4753a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7aa8e5204fd6d234d80371237ae81d7d7b63b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8a7c8952fd517dee479b5390887586dcf2d6c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa96c50db52167a6f8eb00eb0c786a9436af04df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa5b33d782fbcc66ad39c6176a28f26a785d48aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab416e57ec74e87295b8a1507745a954b0bb9f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab723ef8472e21774d8b2ae51f461387100481bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabc2f6a134d07fac2a387ab4873ed056f6cbdc60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac2047a0ad32f2ccc60c35178ed42fe48d0a9df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacdd84438d0be9637352b5fbdfd23254f03ed102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad3f88e32fe594faf210a69f25c3ca98470c1880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8c8634203ee56d32fc3e4b41b0b68506947584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xafef384cb99c5fdc38588ad26f7f305cf01cb544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb117a8768b0f4889ab20653044dc20280f5d297e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1d6bc439f5d3bfbd828da3d0848b0f3658c9dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2a7232c7a5284700db4059bf0df9e4cb8e5322e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2df53045cf398715a8b2c94f679b4dcb11a0bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb50b9aff2219aa30c4b475baea045e918d3684cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5b81f3c486496d6b35bb9de90a897a7fcb8c609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5d2dd9b3d26c05dfd6ef07913f0e88fbdd89c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6a7edc38086698139e268ad6d4a46759e566cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb77f05658d6f9b905b41eb350f3f4587463c1522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb992ccf8e3999de494dfd6f8cea167540ee41934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba40eebe7168d964a905e7a0a9961a6c4fd98040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbac70d8169357d3a2ba161225192b451ed157e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbad9881a415bf54085bf5f891e4e61c518d42ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb4a2134872bff0f07bd52470b621232b79395a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xbb5a4dcb173f643ca6687aa837d6357df9d6c936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc25246436497a21a763045bf32d3741bc688dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc81c3c56e095eae34b32cf1d691d47c15a40d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdad0b54a4a4ecefa3cb3c727c3bb4edcd809ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe0deeeef7746b701ff5c985b52f10c4321de856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe35f73ed60441f1995ffc175dd8c9dbedcc09e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc01840611e79ebce7da134ee3c703bfaa55498d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc061e185622a19791912a6ed24efb6fa85c103d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1cf683435f2ad4bbf150809d3482ce34ee46885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1e2c1f9c4fe278d0db0d3d8eff359f8b235f853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2d07b8468441e56ce27a1c9da429bf566fa5140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc453143dca7e6bb6507e05969ba4ab6c70c3d503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4735b354fbd73d3ba49d9ce48b3d4d6a46c7a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4fe42313ff313cd4f858c4e796fe0d4931198c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc66b30974c0cd343d41518eb7ac472ded30c0d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc68668387f75a005ec1d652e49c2e5b3a6532479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc722ef68f079fb5c081aeaa7f1b23e0bc616b630` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc7c7e4e3bfb198564af4f306a1ce430c2e864508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc834c557276e29dbb1575cf95cbc898439d185e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc837b569f7a72409ddaba0a716bd40abb2d0377d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc852b64f1234fc8e682b02bd71c592a2c2c7aa13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc874cd514a8924ed59092bdfbd97600851ea3559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcae5f47707cba25aa67e8c67fd539e0a1b9cd640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb623820256890dc10347577c0f1d1a73a8a0d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbb0eef5b714dda45655a62fc5c5813998e4bbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbbe751240c91e70151801b7f34519491fe22e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc5ef6fd9ae22c358f0564f7132e7227514484d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce3356b967dd87c225b99c8877862b6bf866906b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd13f68b17d3e7182b7ffb79420a810a87f47f686` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xd16889cbf0ed5492eb66ee4ee8f7decd3e5fe44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3843b60e69f958ef93bec299467e6ed301cbeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4137dacefa5e584efcf6f79e33db21873e03160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4dd5f35b1fc62ff0ae58b880524132d538bb6f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd885e488eae40c9f9e4867e1dc7ae26684083150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9bdfcdb906ca8d349b0931bc6163736fcf08c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdab9de68df2fde5db2da81f50265a4a21f8298e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb90fbf60ae7a61d2ac4d3f03131a5aba62081fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xdc6c3dfb237d5202a8ee4d8472a52a94f9282053` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcb818e662da2b3cae661b6f09bda2e204c28748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddab19a6776688f012c8aeda25e8834a6be67b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdee9a5630ddcc5bb58c187844091aba7f3ccd4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf2c91c0d5fe65c39fcb1bf92b3d70f7f7b492d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2ea3d58824993fa4b1e4e31cf32c1d2d5783b32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe3d6f0d0b487b102c4ecfa5c1cc27774ed227b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe47549716d214d43d4abcb1c9f90c9675efd3353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe481d67cf677b9125dfa5d592b929c4ef99f5fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4d0c793c18828f68eabeefdcefcdada975456c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6a1352d0bd0408b2d5ddd68c2f6691a6e6c4721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe76a9bb9ab438ee6dd85cd2a534c6c821672d6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9abcc1d0f359c2dd013cc8aa1da91117f2ffd02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeaa46db79f5ae0815e8dcff1c4eee7c81857e792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb3356f08fd20f0b9553f65c49a58e1d051f7577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec4f2680734dd4aed4723aa5992b2a2126a02dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecb536694c44440b44d79ef37262252133d9ce86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecc9a49e24abc2771c2bde298379e56ba5e780e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee93d40dda093936213f845cddf9bf8aa14d7a51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef13efdc013e19526907877ffa5dd3b2f65c42b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef8f8cee37e3eb79e8d4414eb5593e6d8df4987f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf11d013044f3bd3c3485893e745da237bb54d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf341a324cac2578342885426ec8691e19475aca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3fac71c0556b62bc8f817407a96f0684b8e38a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf5008dd11ef279ba96d06d7049a727ef6cd09414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf82387a7173723a11821670286cb42d97c1bc4d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb2dfe7341fbee8739c3cc2a15fb8ad4c6bea5b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc4a60746693fd6524ad27fc54fe381a0f7319a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd332a482142de82ebd3aa121489a77f82a65de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdbdb93c8b785519bb032b4d28107a139817adaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe35b3be6ec5f165441dfbfd470ada62c76720a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb202d69db5fb05d4dff39969cb31ccd93f05b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffe5030da862ff61aef933303c3d124ca3c65af6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xfff45c0b77d7c0c33a97a879576f0550b6842bff` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 246
- Live contracts: 0
- Unknown liveness contracts: 246
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=246

Showing first 200 of 246 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x01ee870b8b080ce679b037affb8116cea0c9f01e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0484c6d9b2ab84a71047c65c0354990df2b37037` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x05bce0f66cf53fab3fbd54db7e6f2eef0daf7e93` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x060e91a44f16dfcc1e2c427a0383596e1d2e886f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x067a3b0c5968e10b2871d6add4fc17fefe257789` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0789862bf55b792ee512b3e6947a4aa5599e481b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08ac8fb7e0042a7fc46e6edf13fbed31987f8f84` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0a1672a0bd72017d847a2bb18cb8f6501356ba36` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0aa15c242b3a0875dd044a57580a557c5f0cc805` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0cb539c26051c58016384214d4bae222500fe95e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d2ecb3c71dbfb46cd08eb72c2f6c85c34821292` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d3496b1b0dfdf7fb76d60e6ff35aec057a87b44` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0d56cb10ebb95c70148b4df9bfde9d433adaf2c7` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ee4f09d0547851b37c3718eb4982932dba51107` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f431a00fab97f38e223b556b116caac97d73838` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f711295c51d12fee7d768cc63510c4ed264f67a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10762721e4afc68489eaf42e553a1d625542f637` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1261330330294208198d946c63f2d5dbbdf30069` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17cdd7f68cf2146665f31b224815e53f4f2737c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x183c293a84323fab5299fa66c9c69f205d3fa1e9` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x19e122efc8307e4f4216d221f6210556fedc07a2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a0a9fb354fd3bbe6be1f34c7a7eb6b5b03db1bb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a18ebbf8d3d9be5e891b62bcb2765c821721f23` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a93af6d51180f0d5081b8659b56adb2349fb6e0` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1acaaf7beef4ad7c248ef7432b95ef7709b28383` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c22bca8516d1d228dc1ca424ce4ed2c8946bcb3` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c34e533bdeafd4844241b95921d6856328047ad` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f417b09b76a3f2dd3ae7d6b8a5d8de01ded0df1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21168b244a09d895e7303193730420189ad1b85e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x22212fcf487e894b700c0599417b6551ee038407` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2605bcad0c2715444f6d40658203ad5b15e3e8a9` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x28589e530eacb4028f5ff0dcad6d2df0ada80e1f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29431c82b6b944a60fad88d5634a8057917624ae` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a1633a2f879b2a41650a48c42c14001e5607055` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b0bd4e157a188d41ce4f85984ae43c9a332b76c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c1ef520c93ade1d3c8177204bd530883b781197` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c922adb54107fd2554b57abfcb2765b210d5412` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x322bb7e977b6603b03be7bf8c917a1a222d7f137` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x325083e462f639e96f354df3ab84bf85cc5c0131` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3251f402cc06b33e742f08e1adbe0d2e4c1ea2fa` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3298581c388fd579aa015f217ce9c94189985abb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32b28c1bcf3a3b491fe7f2c19833b8b91f8bb57f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32ea11681adb1826ff315c4c47c95890b10e86af` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x35ff1826403f6b154856236da6bdabc668bd9a17` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3633e0362834607d9f9c5a9eacda8b4aa00789fb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x36569fbc5a9d4c59d71e81d46db24256a09d1ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x365ab2669d2cd66cf2dd284dd66094031a9e1a0b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x376d16c7de138b01455a51da79ad65806e9cd694` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c387d11c5a8e9d215c35141e2973ae136bc8086` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d9dfb7f2fa653ecab365b58d6b8357ea7be46f3` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3eb243bcd51370f8a27c2ae980d265f8a804966a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3f325539d53db40622d58197898c711d94ab10a2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3f86c98e0de260eecb367c8bfa40ae79baf2ec0f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x407c4ba0eab2f985430d245c413374c6354f69d2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x40b686db4feea08e7d24f3dedfb90d78a51e9409` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x422de111e7e49611c66ca02848d78319325d60da` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4637bc32cafbe94c4c0ddbf5db3b4ab449c6d29e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4727f9cddd4ce6d5287f6b8393622605fcff0598` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4730014710bf101f5c1d9ce14f1b1be6cc344daa` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48b5602c6a716c57db1f85957956fb249b59577c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48eaff9834e7f7a7e14b16ed5ee486fb9982e922` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x496aa991cf3952264f284355371cd190ddcc8588` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49991481a9ab4a3e2c42c7787f1bf51fc8bb0561` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49f24b28d51e28ba5abb65c4392d38b92d4f6f19` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49f8132b6c45604f4a87d79c74d9495bbfbf66fe` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b27eb9766e312b1379353134b49a56c77d66cbb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b3c4c225899ee8b572fa4617522e678ec7c1d89` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4cb035fa8fad5283a99a66bb8fc7fd7bb666230c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5190b55010312eb43dfffa591c049f9d8e2a4df2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5196e0a4fb2a459856e1d41ab4975316bbdf19f8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x51e5af3c65623366a0bdeb4fed1f2c63d6773540` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x528f33328099bbad5c58854902eac7d17b172f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x528fb3bd67ccf32e3c177e6e0b1070a6eacca660` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x52dca3bfb832590957c22440a06f215c7a8e5ddd` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x53dd491821a53b9415e356a9118c801fab4585a6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x556b00966842b1e9046c85766788d373b2e85749` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x55c76259c7fd1ab1149496114a18e3faeb3711eb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x576c935b03504aeb1538ceb41f49fd806ce07ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x596d6ac45c44227123422de70034af2c66b1193b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x59d35eafc95e5b0f20971dc0b22131ec5c526e39` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b3949be326c3dfc63ef20d9d8f8db9f4e9cfbee` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ce505a3e90c7f83ce4d415955c95dce64fdbcda` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ecb93b3ef882bf42fee65541942d50a7dab4b33` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f066cc9b539076416e284403818e518d64c492d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ff4433417543430e49e4cf2565090e4beb46884` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x61cfb78cf26ea2268de2d359a8b52ed767a5c169` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62217a30bc6644b0330f374ee26d46a34729660a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62563e48c450afc90959c884ff9a56ecc36a7f35` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x625a8a9a8c930d9b15a4fb11286005596659b038` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62f62a91918fef362b88921723d69020e44e250d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63dc549bd230c4c0f01e74ad2ebd287b94e12f6a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x675fa41ffcb2ea4e0b2ece56976c459b5f5c7087` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67cc2427ef0c17db74a81800505231c660465666` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x682eb0670ac59651d0a7bf7ffc1458f1d7dc713c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x688264a625244f382a6e9996c1e2f56c5a02a7c5` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69e213c54c11a9f645399d40322f97c267cdfced` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6a1cd9530177a04c5f32ea3f76e88250056d5ba3` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6ac7e3e3fe9a5b7f3e385535aa533306fec15286` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6dd6c6ad9618033ec50ecf2ccb952c12af4744ed` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e1857c5a567f2fe69a03b29495bf8cef80da2e6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e435cf8f4452303e4f6d23cb3e5c83db649edb4` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f93f4d18b2d7a6080552984acf4eb3fc20a36fa` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x70a0e7eac8db8aff08c538e24adac829744f10ab` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x70bc43df9079fd048c5b94a49131d5a7827c6006` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x72172b166cbe677e8b88e70d62209df360beb08b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x735c8108709a8d2da80df6286267f7b03d10c70f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x73e3cf0884010ef521e99972b1f37062f3478e04` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x77f1bb89a19f9c7b29d87717a9db20c8b7271eea` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79f56baa580994ed2ea3372d46f82b2d8cc7e4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a4aa3005c8f27e9794dc475dc1969884cb98f2b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d13a6cab97d2530c5e4f3dbd9978e26355eb21f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f992b18f17d95845648f7d131232417e3d8dca1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x801b1b8a8440b9ae348d0e49315dfa59d340932d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81a506de2f85756d95e253141dd8c88233083b46` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8215102019c38735f8279fd0e9abbd3cc9f60d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x82c00407a77db4005f88e71f6025ac2a0df0d73c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x83c8972bcd90c3c400a47cc37f56898c7ec63c8f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x84a040577d6c3c05969d053b348bf9d66b9b7300` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x84ad26e88e3005fc898e76b4c1276406a4b19240` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86b561346fb274f985bcf941a94b58d02ab4a21e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86c56f5cabbe6794d53cf8e19084a6fffce074b6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x88df959c1b31ca6d1c00d63fd2db574d39e9a20d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c5f89ffae6e9bbb2b049da186ac8d765602658d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8daa1f7b02f90b305fbaaaa3c18e09087ea79e15` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e50117f0020e3872cea6fb72801d8810f11caf1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e57143d14bae132210cfeec58d0c48875f7d415` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8ed1e3631c9f9681fdb9abb4170a26392b8a208e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f03517cfc7b0f86ffe94b60683c01326efb16a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f26efb26f394d4ff948ec42c9eac345482f51c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f85f49765c2d4b7dd1ad5ae2f872f0e0bcea6cc` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8fd36eb4f263dbeb65916d9d4ad354911c799ed6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8fd82f6f600528e9faeb0abab8e0c1b98de9b3c5` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93a8ae19a1462fa22a4aff9e5ab54eeb148a681c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9403cac21baa5e2215ba3765047dd0277693998e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x966bbec3ac35452133b5c236b4139c07b1e2c9b1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97a57663491ba1f0464d587b4b01ed58e49e4109` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9803d4d39edd1d8487cb9e4fc04c83727afa267d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x98604b8c8a41fec08b64a31a378b6e0489d25392` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a015d1d6ee59325b93fb152dbc442b248ecd023` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a70bc89be0689ed15e78c76ff010a659bacacd6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9aac6b1534306fcc6c7d875a09a357cb35ee86b8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b34b1c626a2183083298081f0822d63d23e78ed` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b4d082a36973cd5aaa2935430dd45b697910687` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ba0d69861a397ddec23a6ed9688759dac7a0d61` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d1670dba884ccdfc50e3c235b97946221181751` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d92cf1ff6860a5dbc56a8f0f58283143497bcb6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e3c63b2c25f72204b3201a519ba713a4d8355c3` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa1af884b54e72951443407afe0ff8dcfc4d97546` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa33d366e53a4645744ef4a0a21e912361c150b06` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa398b342298882ffd49f46e411ead3d20d0560af` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa45e83329f8530bde96acde855bae8e9f96ec52f` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa4745ffbffa98eebf34605f43627d0e9f55e5d96` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa4a8b9a08e71285060c9794b9f57036af7d47738` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa575163c0da0bec6887b5bc01be7231fa7cb2c0b` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa6bae2f3ee27271b55779bc6071fa101431dc8da` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa6bb6faecd9007e68c487e5e2cbac066fbd4753a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7aa8e5204fd6d234d80371237ae81d7d7b63b50` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa8a7c8952fd517dee479b5390887586dcf2d6c3c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa96c50db52167a6f8eb00eb0c786a9436af04df3` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaa5b33d782fbcc66ad39c6176a28f26a785d48aa` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xab416e57ec74e87295b8a1507745a954b0bb9f02` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xab723ef8472e21774d8b2ae51f461387100481bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xabc2f6a134d07fac2a387ab4873ed056f6cbdc60` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xac2047a0ad32f2ccc60c35178ed42fe48d0a9df1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xacdd84438d0be9637352b5fbdfd23254f03ed102` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xad3f88e32fe594faf210a69f25c3ca98470c1880` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf8c8634203ee56d32fc3e4b41b0b68506947584` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xafef384cb99c5fdc38588ad26f7f305cf01cb544` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb117a8768b0f4889ab20653044dc20280f5d297e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb1d6bc439f5d3bfbd828da3d0848b0f3658c9dc6` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb2a7232c7a5284700db4059bf0df9e4cb8e5322e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb2df53045cf398715a8b2c94f679b4dcb11a0bc8` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb50b9aff2219aa30c4b475baea045e918d3684cb` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5b81f3c486496d6b35bb9de90a897a7fcb8c609` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5d2dd9b3d26c05dfd6ef07913f0e88fbdd89c6e` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6a7edc38086698139e268ad6d4a46759e566cf7` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb77f05658d6f9b905b41eb350f3f4587463c1522` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb992ccf8e3999de494dfd6f8cea167540ee41934` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba40eebe7168d964a905e7a0a9961a6c4fd98040` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbac70d8169357d3a2ba161225192b451ed157e51` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbad9881a415bf54085bf5f891e4e61c518d42ad1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb4a2134872bff0f07bd52470b621232b79395a2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbc25246436497a21a763045bf32d3741bc688dcc` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbc81c3c56e095eae34b32cf1d691d47c15a40d6c` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbdad0b54a4a4ecefa3cb3c727c3bb4edcd809ed4` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbe0deeeef7746b701ff5c985b52f10c4321de856` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbe35f73ed60441f1995ffc175dd8c9dbedcc09e2` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc01840611e79ebce7da134ee3c703bfaa55498d9` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc061e185622a19791912a6ed24efb6fa85c103d5` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1cf683435f2ad4bbf150809d3482ce34ee46885` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1e2c1f9c4fe278d0db0d3d8eff359f8b235f853` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc2d07b8468441e56ce27a1c9da429bf566fa5140` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc453143dca7e6bb6507e05969ba4ab6c70c3d503` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc4735b354fbd73d3ba49d9ce48b3d4d6a46c7a3a` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc4fe42313ff313cd4f858c4e796fe0d4931198c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc66b30974c0cd343d41518eb7ac472ded30c0d48` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc68668387f75a005ec1d652e49c2e5b3a6532479` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc722ef68f079fb5c081aeaa7f1b23e0bc616b630` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc834c557276e29dbb1575cf95cbc898439d185e5` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc837b569f7a72409ddaba0a716bd40abb2d0377d` | non_address_book | unknown | unknown | unverified | n/a | `0x6ca6568374966713738028c3aed52855ea5e61d3` |

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
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 261 |

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
