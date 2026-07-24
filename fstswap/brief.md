# Agentic Audit Brief: FstSwap

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

- Project: FstSwap (`fstswap`)
- Website: [https://fstswap.com/](https://fstswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 280 unique implementations (280 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,443,748.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for FstSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across bsc. Structural roles: 4 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc20 (2), accesscontrol (1), erc165 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FIST token (`0xc9882def23bc42d53895b8361d0b1edc7570bc6a`, chain 56)
- FST factory (`0x9a272d734c5a0d7d84e0a892e891a553e8066dce`, chain 56)
- FST router (`0x1b6c9c20693afde803b27f8782156c0f892abc2d`, chain 56)
- Internal router (`0x870788c9f8ff7320b142d4edbe63e6d2ebdf0861`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 276 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 280 unique; 276 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 276
- Unique implementations: 280
- Raw deployments: 280
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
| FIST token | unknown | project_anchor | own_supporting | 0 | bsc | unit-386602 | `0xc9882def23bc42d53895b8361d0b1edc7570bc6a` | ⚠️ Unaudited |
| FST factory | unknown | project_anchor | own_supporting | 0 | bsc | unit-386600 | `0x9a272d734c5a0d7d84e0a892e891a553e8066dce` | ⚠️ Unaudited |
| FST router | unknown | project_anchor | own_supporting | 0 | bsc | unit-386598 | `0x1b6c9c20693afde803b27f8782156c0f892abc2d` | ⚠️ Unaudited |
| Internal router | unknown | project_anchor | own_supporting | 0 | bsc | unit-386599 | `0x870788c9f8ff7320b142d4edbe63e6d2ebdf0861` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (276)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00c7a97fe47971ba628faa1c5b1e614102f3714b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x023c971323b8dedd80e2ea373c90759b6d969f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x025261ae9bb4efbfbb3de2a6a1db6b92c9840ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x030f9324cbd943d415d9a01a0dba308d204f10d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x055f045dc26987c84d9dc70a73466e453fb11bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x069c33007fd4cd101a485f6fbd8bed2b5c6965fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06bf77a51c5ca95c6e297c8e80216cbda5bd38dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0839b92382c50edac086a92e4c7d1a76a0193032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x085600d16b4a178ffbc875eaaf23302933ece666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b0d838efe305d031ecbe2f252ed92263836f76a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c12ae2e0496c2e9a2181d2f057f5317a73dc3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c428c41a36584214b68a23383a5d9a6ad665700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d8444115daddd4f673994cad92906c079d9fbc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dd060033e5b377f55f37ceb6a2e5f3889ab7d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6462fc37951cc83563cbafadcf8a6a5ec3b429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e97d5da884d0301f8383c3113ccb2c839c5be8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0efb5fd2402a0967b92551d6af54de148504a115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ffd7788df35b2e075b5c933d05b2c6d82062d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1030e159e6aa219ea59db0cad0aa94f90e7893e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1051792d524e790be843329acc20031369989bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12125fbaacd7e11fabc8d466b2ce548d30cf9c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12d39ed7230fd3196f70896b8858d05017c6939e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13b3713a3ab4c8e5c5744d3cb93f3fd9be1bbd84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x153f3329690b3bb8eda4021850700962082874f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x157a015a604c51a123b4a25b4f3ec325c5787f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x169dffcc2179a075273f4eeb0fe8c24151a53f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1911de17432502331576b0c5f21cdb516c7a2dc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dd2781f03a62202149f368db5ec13ece282273b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f2a6363383e5236719c12bcc379a8761e24f72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23a11f0b7196a1c0ee1be2fa4e392e2b0336fa76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2463d9ee159a01a31be74f78133ed4c387a473cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25401d2ae569e16b0c5a1aa91d4926974bb78827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25e3f75f3d6ef1278bf6e3300a0ee1824851e71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267aa98d57cc02cbfb59b50bde459b14df7b51a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26c592de897a95b7e01ad87e7b552852b54fc880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27e7eb061780a3e1d2abbbf4ab171151bd55ef81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x283c2e0e8c2f55e2008f53849961c6a6a55e8f0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29dc062ecef2f32012199457ec716544d3f31168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a3ed1f2118c72c9e0bec4a77d4f9ff522e38860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a67c0e5b239309b9b371aa126dcf41a90b01edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c70dd4d996e8d47e728278b999804c72206471f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cd44bca480efb6fb1b3c67e89a0d072cec9d78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d169b9bb4d05cd3fd6757c6622fb5fbd3a70411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ef901addf338ee5a9b6358cbb3e8075802aa869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f59e128243649aad1da68a57cb6e94fd259aa01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f8a41138f05ec199901d449e840a954b3bb48f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x327af1b564628f489ced1e4a3c01149c3bd1b041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35f1c0cce876d87a5cf1901e67f9bf2194d05a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37d663711efd704dce1c42db2d4875518e2cc224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3875d3d4df8c8c08fcd70018e9df7518b51cd7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38bf27d3172f022843dc1ca5340af7aa9b23cf1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38d5ea8a244f01ca6df1c96fbcb3da6a003b17d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39b81c4c53d461f8b5e42bebd173760b16eec1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f4a779ac0a6afdd33d42727d2427134c1342d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f524032ef684c38872fc45fc7413161ffced3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f6b176c63ed810b70689b288ada9b78f7b61be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x404c86938d10e2ad7ecec972082936e8bb78bcb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x420d1f998b2b12466f60d56c47525b524c1b9d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45b204e6f3c79f8062a5df46615a89e15ef7e555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46fd5c44edfdea3c228fe4b80732f91ad0dff4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4749577416c0e151ba82f0dabc3f32f7c5eb5ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47c07b6cc9f82e2279f382522010aa9ec51ac9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x485ccd0ad9f28b40af24e29ab4780c3ca125df27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4878976cad229ab95cdb01b4fb7b77478a421837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a2cab0930419b3a013a00b38da0648bd782b5db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ac3dd908389edd085291a0429cb8c573cca3888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4addbec7af7c3d5967920c9c141fab14517b96e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ae7f0da48574d63731a7aefd3247d53a36d23c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cff711b1f59df9b515d032b255dbba90a79d6d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d6963fb20c8dfbfec90669c473010de5d2847f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ec766062257eb13df07f91d4713940c5579ee69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fd8434cbceb52c24f184754a23339f717ec1f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50502270a667c44f5d28429519168899b4383860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5128d7cb28d867c7cf966bae15b2a5618f8047b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51479b1bac4d8efdb4a75dfa3073119bc6b49b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52345655068b4f4564dd2d725b28477fea79b0cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5272586636e20fd85f04321bcd0b77943726ab39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x528fae109a44a9507ec787234cba06fdd382d911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5297105294f4050097970e638af9243dbf86d4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52ca3e34308af6e71a568cb74eef8691d743aa85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53ad237f88275f608fd92fec32fb2079f3246b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x546f4c5764b3dfcd663c7d2ddf7bd1459975cce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54c6be4f05edb68d13e88365c82b7736cf4807df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x572321aced054f2195e2fa926262cf1ece8dee74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5822304ecebc0c7552ed754ca585efa28e8fdf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x590d4d0060df70e1376851b52a41273155fa7998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59cee147650bb5d3ae06c246358f229b5ddef547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c0a3a8742fd7019d636ff2f85389810e5ae55fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f358644c8a6d1cc37f51cfbe94dbeaf7ef8e74e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fc63b3823a80c289ea9faf04063e64cee1f8723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x600360e7f8d8d6c0416b3029f8898014262a2c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x601dbc1f588178a3d33772ec0e3e08e8663aeb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60c22ff82b9e3e66a3a15551895f64f994e62121` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x617aacc9ef8fa1058a52d7e0b51db98d6ef51177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62cb6022b3eeaad57bce618e92c6ae89a3c3a728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64309790ffd7573082ea256ad089d6be45bfe401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6483cb7f0bfee25d4f6f017fb3061c068e79b782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x655835f52fa8e1cfc71f97cdbb2eedf94af9ff3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66548e2cb0276900b9fe737178683a2bf423d47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6765611da8a32901bc19f4dfb7aa7a8ac139434c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69c251cdb5b9166870b2fd8f31a4524f8c7df7e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a432ce157fac648c0a8c06b02ffc6ff66853c1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aaed9e9c7962f1bc3d9c7b45568f516f1dd4810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ae42ba076cfcc3e9479073a2ddf6fa49ccc4da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b30cbf9cdeec95b258fa8e2b0dc00f80963308f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cf95fe7d58792529b079eb5cdb46c990d617895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e3933624ba3e1339b17af7a5e9b7a69e39c6c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f9b0f6ef15c86b9bcbc9b75e662dcf2e3fecbfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fecb9a8e1fe62806b74715ef56f1953fb9a5957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70955f0e3b99ddc362ebd0a72a04875c897fec8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x715b082ac7c7152c10240296281a8e264537ae32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71b1122db363867d99812f3718cb7fc12a2a8e4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72814a2c0b7d21ec9b3ded3b8c38663f82192663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73911c69f51e7682b868a38a2fb6f19310980c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76ae923263fb45e16f2a4726d0c593f3c97b18aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7747fbe5ca2cf8000cab8e6d9156b2c2bbca3d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x777c0cdadb7a051603009b7b05306aa567a07ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x779fe44346abd708f4af13bf39fb1e556db7e819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78aecd3d4e3eebc62876aca6a7d761f0ee15c53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78bf826ffa3a6765ab0cdf16ed3ef262e80f11d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79f7851dfda304d7db12059ad30a4c1d66f48a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b25d734b9583730df81bd915bdc767d2eab130f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ba9eedd2654563d9156254b28852d4c7f0d349e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c2b7072ab3c70fb1bb3fe20c3e104d1807b2890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c99ddc0e46990ee440aff9ea749833486882961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d3a531c4c290303c7e08d6eab6898881c7a4127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d9f3b9560ebc12992e6cd343fd9e7e35a1441b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f1c3412de712b9b18129ebd37258806f3e7fd1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8167b31fa5666cbe840db1ae66923c8dfc8a42f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81f70e9ae20c9269da88cf27d410fbe502840043` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8219731d436ea14e2df9b7fb3d39cd13257fe2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x821f0783f66ed92b6e384e82c1ea6565d23d9c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82d73fe9bffc2c116d25eed10724eb8ca652b7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x853b6ad177f633bd0c1f3237f5e1be549cedce9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85b6d9f023b419f4149bb48186aed9551f9e5a9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8636141635c612d7d9e101154efe242667c109b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x872616000c25f9917db6e7586e819162fe8abd3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8867891bbde0e25013cc90539b3f1b48c1ee1810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x889ad1d4d3dd1f1af242c2e4bddcc89f13e8f076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8963202930e9ce8c9b05164130f4fb707b59f2fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89c5bc52c4d4ad3c2dcdf81ebf7da41d58169920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a32dadbcd72775cdd2a96770f43f192b6dbd36f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ad1e22e95002ef0f6755f774dd48978087841ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8becb91d305eeb4c308c6b29978665d528ebfc1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cbfa4171c45beacac6b14bb7e64d00606ad68e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e4e1e455050bd23649c15f349c838778ebe27cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e8ee4684d14031bc2cb7be04008c22759bdcaf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x909a2ac46f31a8f12e1a3c6866a70430b55720fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90e077cee71ccf5820c4a30d42d25a2e8a15103b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91b467b41d955b2b021e8020ba79a33ffb677149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92185697ba3cee89c62a8682c592e38a0365c5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9320c8b9bbc2ef0a1ac768f6d01e0dc0a235b14c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x936ba588d60e39093a15fab03fab7ce6fb8a9905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93c1e1d4635ec3c37a16aeea538b237ba05af3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93cbcdd4680ec672dc1faeac1595999c67f5d2a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94410b9a67949e82ef55148821f79bc8b93891cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x969ab8df585965b06d4e2cf7df4099b2dc39807e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x976de75dbbcce918a6e862bdbc8360456001bf13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97af4f913abbf2ae7bc038969273e78636fa196e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98733a6c13e7d3ac10b17a84775d56c543d98bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99b3c490275611275630a2a3bb324d89089c023d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b50f1ff8d2a088feac625ae300ee5b6539655b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b548c1ac641cd6564ecba735c406962229d5728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9beb49ddbc0128b098a5ff1cb3216433659d1802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0281ea42248fddba220919d904decaa4b9573fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa171fe15772a9e5b08f09e852f60995c16b7ca5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa19f8d0df9e3909b93a7183067e91d62d20467c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa23cbe1d7fa1c1723cb64990aa4f973f92ca14a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b8fc672c6b84b83c9b8415e1c0cd7e29edf169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa54ee25ffb475045e34e7973efd5ee993d4735e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8324976c1eab6b0d02d89b4b72bf3068c5a57ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa844485c4c5a1dc9d8f1f6f822994df58f04e2cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa964fa2fb5ecdd761bc085fe3bf70d3d1afad7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa1e74d15be067afbfa4f51732bb7aef21356bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab8500a58dfb217112c674e8c48f62b41e1d170a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad5d9f3c32543ddceeb22a9f60f82cc91996fcb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad983e8c7181f8360eb7a8362a5921f5a906119c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadd2342403e0e406dcead31916e32b6bb2774274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae565db6dc32772d86005ac4cfcf04d41486bbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae88264bd63e48f1f128072bed8309f7f575aba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0361f37d6e3c0f7cea17ba201116cb445f3927b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb094576d63d5a6e5a0618b626af42f86a8c5814f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1d648d6591a71073bbb123354ac79894edbdc0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb20a665116a4f95cebc2d572797d256a63a352e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb335382df48c301dc96e6667777aded6df13b8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3f080e9c320de7967d118f381c4650f06ca2620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb42665b61ca9cce80287b3027a6a7108eb9326d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb853fe39e68ff1111066129ee3000a6781ce0b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb900fcfefe63eea01733d7fa1eda09e1fdd97ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbabc0cd96291ffa160bd0ea6053f3eec39311ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbae41d0fdccf78afd96635df969445ce946a5dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe85f1ea82a708291dbbc4ec612e722b3d03da07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf68f14ed2e86008c4e0c2ba07ab42dc95dc145a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf991a5da4af7ac44dc1d473abba909df7b3d47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0ac4805a2d905900fc3028af67a2a43be5090a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1182bc69d15f64f03362d9c9054ba450cff60d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc26b0f403da45201a45e7fbbe0f938620dd164aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2d3bcd760efd1ce7e599f6d232880e3f23f1bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc33b49d5297117ab77bad8f9de7d0804e51a4cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc361f84e3f6d94d4d69b7372827e9665e1332f90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc37ad368140bfbefaa7184b60c29bbd0fc412cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc37d859a336e1566a358532d06b10aac559c61d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5e38826e296c86986be40518e71839f479041b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc70461c18b26293bcc3e71398e6c88d73a70cfca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc749a6751bfb363dc776136eb76a21ce8907f3a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbbdc2adec57f1d0e1dfc3c984c4815a5150d8ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc54c262857764deaba6c3d5bb47ff110a1d2260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdc06fad395dd39bd11da696d9200cda4359cdf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcddbae91c5ce0bd7abdc930f76a22f23d0869ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce1bc63e98b6dd977aa27123e25941e0737b1de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf76f529d5bf9d3d481b42bae7c47c7ae841263a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf8307200fa48126f20d757ae7da802824bf980e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd00d085ce8375dd99ae78198ff17ca5c6484a30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0e7a96fffee5fe5792a1320f6262cd111907a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd199fb4ddf2691fb7a415a9868848579e8645165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5c79a83b97741b3567f4a089e7969988808dbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd660ea25a25262f95e8b9347e1b6cab4d8d18ae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6632816d17de69d7cca6ad9b9cd2eb5283435e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd697067ae437ad579a234a4cae701ad0986bec65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd698fd282d6ad32d950719916b29d1242f3097a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd869c6864523ae32f57726e4562e40229e4b470f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8990b3086c791c4057ccd7b664be17461617e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd966c29a6cb7c0bbeb41b7c6c3672108567e3d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9feeb335992e92efff217b3f6cb2cec5fe06530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbcd7a6cc6f68b47829feb5542fcdc2c30350bde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc73813753016dbe8df2624aa65ba0c3915b1958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdce386cdb71f1d0af6b5432cbcf506cd3522c3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd00e93db149d332dd084a93915b2a26e6fb0c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd1fabf16794d5147fba5a2052312c233166524d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddbfa08b7abb52c43708da361d287b960415797d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddf22dc27d511133565084628f0e60883c60073c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde2993e71c2b62cdcefdbe16884d30c994cac58a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde38f3c86645389117b673026a67e5a2b35bc643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe09a6ffe857259ea39b975d7cc2d02ee832a60d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe345c312fd8412d3c54f1fef02c864b58c2f24e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3bf78c1304c2562cb9a1923e6088ddb779199b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3d42e481b07004c300613adfd7488b104a8689e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4300c9453fd08b4f473bb392ba871f868d59924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5689aba5aa71e34236d1b0596c726f6b2521197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe69fc52d841659e2112e51539e878c716813e7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6e71290b605d34692963709b7af144a839fe43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe70e0f237994f82c2e936a43e3d8c420a6ce8fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe731c1473f2f564c24c8429c7b1a189d2b2e6092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7aa465f7da3b13fca55c731cc9721f1a030992b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe94b55a9b2b41b9328c4bd2c45f758b0ef857754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea2d0c93d4750ff7f7328b254ebd8ffd65ba4821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecb71e2466e35b8368f91bc9fc902dc5c3f38a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecda0543add2f4c5d1533a9805be21a3cc0ae1c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed3bf773158372f865dee7f03e4f39b01a66bc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed84322762b775da3e31a449be616429b77b0d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedec477d1c4b08cd994fcabd42766e80361abdf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee9c9be0d84b1a1ea4d83e721a5b7a7812cb8b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeef631ee6a386001adc08746d4c1ee90a1182617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0b40b5b85565ff656e928e2d3615e08329038fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf18916c20eb788c8ad0fcc7d6f8c75fbc87d857d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2fcc7b2f4f27ae9674eaaa58d0960779e07846f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf350972357cfd2e53580e1e3a8cf4d043e921900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf48b4c36543d35b2a77a937d4e3c77cf56640226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf49c24d6d014cf5d1da51fede96308c8a6823e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4bea7ca1e3b3e7e28633d736d2e537d903bb686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4ccbdb9876f313fc6584a3526696c3fde3f8598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5444988d1b45fb418080e2b9b367c073a4a4a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf691e7aebde8ffb01d147e7a95d469e0ca698c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf74d888bc20ead2e04ca8749afb305f6ebd8de53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7e8b46a398bb9cac0cbcc341757e989b1601c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf84c6ff2c4c5e85eaea2fed1255ab6d6aaa52010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9d2f3fddf7c294869a334bce9d8681be190d63d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa30324862a0d6ae60e53cf3265cfbc19f2f148a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa4f15c1667d39f3d1a3b5e68abd17622ee49ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc4a9fedad526fe03381b943453ec08a72af8600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc8603f172e83ada7c35e33982180382860d6f07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd974f506998e670383da647c54ea58ecb94ac17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea1068b4f775ffc9823ccf1d1e80858a795c0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfea6d8ad9c5f5c2086f01d389c6c117a61eb58d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff665231f18e5a39aa30c359cc4ed04078f8c06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffefbac7937efca3dd0358b428cfea4796f43189` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 276
- Live contracts: 0
- Unknown liveness contracts: 276
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=276

Showing first 200 of 276 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00c7a97fe47971ba628faa1c5b1e614102f3714b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x023c971323b8dedd80e2ea373c90759b6d969f06` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x025261ae9bb4efbfbb3de2a6a1db6b92c9840ced` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x030f9324cbd943d415d9a01a0dba308d204f10d1` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x055f045dc26987c84d9dc70a73466e453fb11bf6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x069c33007fd4cd101a485f6fbd8bed2b5c6965fd` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x06bf77a51c5ca95c6e297c8e80216cbda5bd38dd` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0839b92382c50edac086a92e4c7d1a76a0193032` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x085600d16b4a178ffbc875eaaf23302933ece666` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0b0d838efe305d031ecbe2f252ed92263836f76a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0c12ae2e0496c2e9a2181d2f057f5317a73dc3c6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0c428c41a36584214b68a23383a5d9a6ad665700` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0d8444115daddd4f673994cad92906c079d9fbc0` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0dd060033e5b377f55f37ceb6a2e5f3889ab7d41` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0e6462fc37951cc83563cbafadcf8a6a5ec3b429` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0e97d5da884d0301f8383c3113ccb2c839c5be8b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x0efb5fd2402a0967b92551d6af54de148504a115` | non_address_book | unknown | unknown | unverified | n/a | `0x668553253eccdfd712f154555b2c76ced28d409a` |
| unverified unclassified | UnnamedContract<br>`0x0ffd7788df35b2e075b5c933d05b2c6d82062d8a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x1030e159e6aa219ea59db0cad0aa94f90e7893e7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x1051792d524e790be843329acc20031369989bcc` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x12125fbaacd7e11fabc8d466b2ce548d30cf9c2a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x12d39ed7230fd3196f70896b8858d05017c6939e` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x13b3713a3ab4c8e5c5744d3cb93f3fd9be1bbd84` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x153f3329690b3bb8eda4021850700962082874f9` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x157a015a604c51a123b4a25b4f3ec325c5787f6d` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x169dffcc2179a075273f4eeb0fe8c24151a53f0c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x1911de17432502331576b0c5f21cdb516c7a2dc0` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x1dd2781f03a62202149f368db5ec13ece282273b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x1f2a6363383e5236719c12bcc379a8761e24f72c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x23a11f0b7196a1c0ee1be2fa4e392e2b0336fa76` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2463d9ee159a01a31be74f78133ed4c387a473cd` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x25401d2ae569e16b0c5a1aa91d4926974bb78827` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x25e3f75f3d6ef1278bf6e3300a0ee1824851e71b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x267aa98d57cc02cbfb59b50bde459b14df7b51a6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x26c592de897a95b7e01ad87e7b552852b54fc880` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x27e7eb061780a3e1d2abbbf4ab171151bd55ef81` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x283c2e0e8c2f55e2008f53849961c6a6a55e8f0d` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x29dc062ecef2f32012199457ec716544d3f31168` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2a3ed1f2118c72c9e0bec4a77d4f9ff522e38860` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2a67c0e5b239309b9b371aa126dcf41a90b01edf` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2c70dd4d996e8d47e728278b999804c72206471f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2cd44bca480efb6fb1b3c67e89a0d072cec9d78b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2d169b9bb4d05cd3fd6757c6622fb5fbd3a70411` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2ef901addf338ee5a9b6358cbb3e8075802aa869` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2f59e128243649aad1da68a57cb6e94fd259aa01` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x2f8a41138f05ec199901d449e840a954b3bb48f1` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x327af1b564628f489ced1e4a3c01149c3bd1b041` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x35f1c0cce876d87a5cf1901e67f9bf2194d05a28` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x37d663711efd704dce1c42db2d4875518e2cc224` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x3875d3d4df8c8c08fcd70018e9df7518b51cd7e4` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x38bf27d3172f022843dc1ca5340af7aa9b23cf1c` | non_address_book | unknown | unknown | unverified | n/a | `0x668553253eccdfd712f154555b2c76ced28d409a` |
| unverified unclassified | UnnamedContract<br>`0x38d5ea8a244f01ca6df1c96fbcb3da6a003b17d3` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x39b81c4c53d461f8b5e42bebd173760b16eec1bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x3f4a779ac0a6afdd33d42727d2427134c1342d40` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x3f524032ef684c38872fc45fc7413161ffced3b7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x3f6b176c63ed810b70689b288ada9b78f7b61be7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x404c86938d10e2ad7ecec972082936e8bb78bcb3` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x420d1f998b2b12466f60d56c47525b524c1b9d47` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x45b204e6f3c79f8062a5df46615a89e15ef7e555` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x46fd5c44edfdea3c228fe4b80732f91ad0dff4fb` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4749577416c0e151ba82f0dabc3f32f7c5eb5ad8` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x47c07b6cc9f82e2279f382522010aa9ec51ac9ea` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x485ccd0ad9f28b40af24e29ab4780c3ca125df27` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4878976cad229ab95cdb01b4fb7b77478a421837` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4a2cab0930419b3a013a00b38da0648bd782b5db` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4ac3dd908389edd085291a0429cb8c573cca3888` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4addbec7af7c3d5967920c9c141fab14517b96e4` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4ae7f0da48574d63731a7aefd3247d53a36d23c9` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4cff711b1f59df9b515d032b255dbba90a79d6d9` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4d6963fb20c8dfbfec90669c473010de5d2847f4` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4ec766062257eb13df07f91d4713940c5579ee69` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x4fd8434cbceb52c24f184754a23339f717ec1f46` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x50502270a667c44f5d28429519168899b4383860` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x5128d7cb28d867c7cf966bae15b2a5618f8047b6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x51479b1bac4d8efdb4a75dfa3073119bc6b49b45` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x52345655068b4f4564dd2d725b28477fea79b0cc` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x5272586636e20fd85f04321bcd0b77943726ab39` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x528fae109a44a9507ec787234cba06fdd382d911` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x5297105294f4050097970e638af9243dbf86d4b6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x52ca3e34308af6e71a568cb74eef8691d743aa85` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x53ad237f88275f608fd92fec32fb2079f3246b44` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x546f4c5764b3dfcd663c7d2ddf7bd1459975cce6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x54c6be4f05edb68d13e88365c82b7736cf4807df` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x572321aced054f2195e2fa926262cf1ece8dee74` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x5822304ecebc0c7552ed754ca585efa28e8fdf5c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x590d4d0060df70e1376851b52a41273155fa7998` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x59cee147650bb5d3ae06c246358f229b5ddef547` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x5c0a3a8742fd7019d636ff2f85389810e5ae55fa` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x5f358644c8a6d1cc37f51cfbe94dbeaf7ef8e74e` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x5fc63b3823a80c289ea9faf04063e64cee1f8723` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x600360e7f8d8d6c0416b3029f8898014262a2c74` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x601dbc1f588178a3d33772ec0e3e08e8663aeb49` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x60c22ff82b9e3e66a3a15551895f64f994e62121` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x617aacc9ef8fa1058a52d7e0b51db98d6ef51177` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x62cb6022b3eeaad57bce618e92c6ae89a3c3a728` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x64309790ffd7573082ea256ad089d6be45bfe401` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6483cb7f0bfee25d4f6f017fb3061c068e79b782` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x655835f52fa8e1cfc71f97cdbb2eedf94af9ff3c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x66548e2cb0276900b9fe737178683a2bf423d47f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6765611da8a32901bc19f4dfb7aa7a8ac139434c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x69c251cdb5b9166870b2fd8f31a4524f8c7df7e3` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6a432ce157fac648c0a8c06b02ffc6ff66853c1c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6aaed9e9c7962f1bc3d9c7b45568f516f1dd4810` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6ae42ba076cfcc3e9479073a2ddf6fa49ccc4da1` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6b30cbf9cdeec95b258fa8e2b0dc00f80963308f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6cf95fe7d58792529b079eb5cdb46c990d617895` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6e3933624ba3e1339b17af7a5e9b7a69e39c6c9a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6f9b0f6ef15c86b9bcbc9b75e662dcf2e3fecbfd` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x6fecb9a8e1fe62806b74715ef56f1953fb9a5957` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x70955f0e3b99ddc362ebd0a72a04875c897fec8f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x715b082ac7c7152c10240296281a8e264537ae32` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x71b1122db363867d99812f3718cb7fc12a2a8e4c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x72814a2c0b7d21ec9b3ded3b8c38663f82192663` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x73911c69f51e7682b868a38a2fb6f19310980c3c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x76ae923263fb45e16f2a4726d0c593f3c97b18aa` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7747fbe5ca2cf8000cab8e6d9156b2c2bbca3d80` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x777c0cdadb7a051603009b7b05306aa567a07ef3` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x779fe44346abd708f4af13bf39fb1e556db7e819` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x78aecd3d4e3eebc62876aca6a7d761f0ee15c53b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x78bf826ffa3a6765ab0cdf16ed3ef262e80f11d9` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x79f7851dfda304d7db12059ad30a4c1d66f48a55` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7b25d734b9583730df81bd915bdc767d2eab130f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7ba9eedd2654563d9156254b28852d4c7f0d349e` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7c2b7072ab3c70fb1bb3fe20c3e104d1807b2890` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7c99ddc0e46990ee440aff9ea749833486882961` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7d3a531c4c290303c7e08d6eab6898881c7a4127` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7d9f3b9560ebc12992e6cd343fd9e7e35a1441b6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x7f1c3412de712b9b18129ebd37258806f3e7fd1f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8167b31fa5666cbe840db1ae66923c8dfc8a42f0` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x81f70e9ae20c9269da88cf27d410fbe502840043` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8219731d436ea14e2df9b7fb3d39cd13257fe2ce` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x821f0783f66ed92b6e384e82c1ea6565d23d9c13` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x82d73fe9bffc2c116d25eed10724eb8ca652b7f7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x853b6ad177f633bd0c1f3237f5e1be549cedce9f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x85b6d9f023b419f4149bb48186aed9551f9e5a9b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8636141635c612d7d9e101154efe242667c109b3` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x872616000c25f9917db6e7586e819162fe8abd3a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8867891bbde0e25013cc90539b3f1b48c1ee1810` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x889ad1d4d3dd1f1af242c2e4bddcc89f13e8f076` | non_address_book | unknown | unknown | unverified | n/a | `0x668553253eccdfd712f154555b2c76ced28d409a` |
| unverified unclassified | UnnamedContract<br>`0x8963202930e9ce8c9b05164130f4fb707b59f2fe` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x89c5bc52c4d4ad3c2dcdf81ebf7da41d58169920` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8a32dadbcd72775cdd2a96770f43f192b6dbd36f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8ad1e22e95002ef0f6755f774dd48978087841ec` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8becb91d305eeb4c308c6b29978665d528ebfc1b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8cbfa4171c45beacac6b14bb7e64d00606ad68e4` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8e4e1e455050bd23649c15f349c838778ebe27cc` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x8e8ee4684d14031bc2cb7be04008c22759bdcaf5` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x909a2ac46f31a8f12e1a3c6866a70430b55720fc` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x90e077cee71ccf5820c4a30d42d25a2e8a15103b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x91b467b41d955b2b021e8020ba79a33ffb677149` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x92185697ba3cee89c62a8682c592e38a0365c5d2` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x9320c8b9bbc2ef0a1ac768f6d01e0dc0a235b14c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x936ba588d60e39093a15fab03fab7ce6fb8a9905` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x93c1e1d4635ec3c37a16aeea538b237ba05af3e3` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x93cbcdd4680ec672dc1faeac1595999c67f5d2a9` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x94410b9a67949e82ef55148821f79bc8b93891cb` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x969ab8df585965b06d4e2cf7df4099b2dc39807e` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x976de75dbbcce918a6e862bdbc8360456001bf13` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x97af4f913abbf2ae7bc038969273e78636fa196e` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x98733a6c13e7d3ac10b17a84775d56c543d98bae` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x99b3c490275611275630a2a3bb324d89089c023d` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x9b50f1ff8d2a088feac625ae300ee5b6539655b0` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x9b548c1ac641cd6564ecba735c406962229d5728` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0x9beb49ddbc0128b098a5ff1cb3216433659d1802` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa0281ea42248fddba220919d904decaa4b9573fb` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa171fe15772a9e5b08f09e852f60995c16b7ca5d` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa19f8d0df9e3909b93a7183067e91d62d20467c8` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa23cbe1d7fa1c1723cb64990aa4f973f92ca14a7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa2b8fc672c6b84b83c9b8415e1c0cd7e29edf169` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa54ee25ffb475045e34e7973efd5ee993d4735e8` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa8324976c1eab6b0d02d89b4b72bf3068c5a57ea` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa844485c4c5a1dc9d8f1f6f822994df58f04e2cc` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xa964fa2fb5ecdd761bc085fe3bf70d3d1afad7a0` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xaa1e74d15be067afbfa4f51732bb7aef21356bb5` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xab8500a58dfb217112c674e8c48f62b41e1d170a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xad5d9f3c32543ddceeb22a9f60f82cc91996fcb7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xad983e8c7181f8360eb7a8362a5921f5a906119c` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xadd2342403e0e406dcead31916e32b6bb2774274` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xae565db6dc32772d86005ac4cfcf04d41486bbec` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xae88264bd63e48f1f128072bed8309f7f575aba6` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb0361f37d6e3c0f7cea17ba201116cb445f3927b` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb094576d63d5a6e5a0618b626af42f86a8c5814f` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb1d648d6591a71073bbb123354ac79894edbdc0d` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb20a665116a4f95cebc2d572797d256a63a352e7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb335382df48c301dc96e6667777aded6df13b8a5` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb3f080e9c320de7967d118f381c4650f06ca2620` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb42665b61ca9cce80287b3027a6a7108eb9326d0` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb853fe39e68ff1111066129ee3000a6781ce0b16` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xb900fcfefe63eea01733d7fa1eda09e1fdd97ea3` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xbabc0cd96291ffa160bd0ea6053f3eec39311ad7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xbae41d0fdccf78afd96635df969445ce946a5dba` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xbe85f1ea82a708291dbbc4ec612e722b3d03da07` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xbf68f14ed2e86008c4e0c2ba07ab42dc95dc145a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xbf991a5da4af7ac44dc1d473abba909df7b3d47a` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xc0ac4805a2d905900fc3028af67a2a43be5090a9` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xc1182bc69d15f64f03362d9c9054ba450cff60d7` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xc26b0f403da45201a45e7fbbe0f938620dd164aa` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xc2d3bcd760efd1ce7e599f6d232880e3f23f1bf9` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xc33b49d5297117ab77bad8f9de7d0804e51a4cef` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |
| unverified unclassified | UnnamedContract<br>`0xc361f84e3f6d94d4d69b7372827e9665e1332f90` | non_address_book | unknown | unknown | unverified | n/a | `0xe18b77ebe50df0469e3deb84e6a950c4aa41bc01` |

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
| needs_review | 280 |

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
