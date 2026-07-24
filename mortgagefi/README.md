# Agentic Audit Brief: MortgageFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: MortgageFi (`mortgagefi`)
- Website: [https://mortgagefi.app](https://mortgagefi.app)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base
- Contract surface: 108 unique implementations (115 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $730,636.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MortgageFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (2), erc165 (2), erc20permit (2), multicall (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcd89abe6ec3eedef07713e1b89d698c0c421dc8f`, chain 8453)
- mortgagefipoolusdtwbtc (`0x2f5aac46575f68fe600e99096ca38301a4520a91`, chain 42161)
- mortgagefiusdccbbtcupgraded (`0xe93131620945a1273b48f57f453983d270b62dc7`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 105 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 3 of 108 unique; 105 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 101
- Unique implementations: 108
- Raw deployments: 115
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| mortgagecontracts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xa702f61b6e055be8d394754f59814254f7059109`; arbitrum `0xcb83d438943cad3dc11d5c83a97d14872cb2c87b`; arbitrum `0xede6f5f8a9d6b90b1392dcc9e7fd8a5b0192bfe1` | ⚠️ Unaudited |
| mortgageconversionvault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x61d2688121676ed8123ad62e71994c66ee33fbed`; arbitrum `0x76d80459a85e795ccff36f34dc8a4cfa08141b59`; arbitrum `0xa468d9260a96fd7db044a35047010e91869f8988` | ⚠️ Unaudited |
| mortgagefipoolusdcweth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1be87d273d47c3832ab7853812e9a995a4de9eea` | ⚠️ Unaudited |
| mortgagefipoolusdtwbtc | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-389466 | `0x2f5aac46575f68fe600e99096ca38301a4520a91` | ⚠️ Unaudited |
| mortgagefipoolusdtwbtc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9be2cf73e62dd3b5df4334d9a36888394822a33f`; arbitrum `0xc355f70f5f37f773e76e16d0e046c5f868d8ea72` | ⚠️ Unaudited |
| mortgagefiusdccbbtcupgraded | unknown | project_anchor | own_supporting | 1 | base | unit-389468 | `0xe93131620945a1273b48f57f453983d270b62dc7` | ⚠️ Unaudited |
| mortgagetickets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x5c72d7be838415a663dda5f1213c0d72b4b61932`; arbitrum `0x7ce0dcbf0b72bc06fc82361848e74024388dede3`; arbitrum `0x8b712a8afd5163460cc121deef6d233011c63375` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x013318c3b07b853b5fd5cae74dbf4ab89ab83419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01708164f1c5f60af7fbe3bc134b178585f3f625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01ec96e025127f4f60ef005bd1c61638cde87259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0464a4c09f1c587a0b27af015ab4f5c4fff08d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06833f6d3024c9a7771888fd144ba89b60e78a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06975f07ff099fed08a5c1af4507e5a65574b3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0a4505e761db8a4324f669eb3e8f90afed665777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0aea2ddf5e255a9b73f1dd8557be4dc19b2f71b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c96313a4f3b2c8f20f7a8cfe2f3011eca13ca48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10f460c5976225f8e8764b862e36cc98832ff377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e6952d55b6372d775684f494247d57e741185f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26229afd96c59ba0be05e00735d420f88624c125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x273cc9d8c4d374dce7c5c74d5bb7fc33c1242619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2bbb819ad87eb0b0f1c91e9d29b03b8252bf7325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d284063f429f2fd4a6705b6b5f080dc41764794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d9a5ae11cd9913b27b6971304d43165fd726fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e5f6f57152c3f768af8d64b06150aae8021f824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3156f6befd08c733f61b81acd213114d8747fb80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32ea385cc0691703330f7f3f9de3c8d914083bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32ff6cda1fddfbcb01980fb00543b95db42bd0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x392574f6f3dfd576514fba8e53304c3a815d0e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3cd04b7e3e6fb27dd0d6b79bf52b72d1fb8d3ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fdb00ed55a31f3a17e93c364b187007f548e5c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41ced7e81587f319dcb845ff41734cef79ea912c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45306c3927e81a9a3dd9152cb7af064afcbf1f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x477c055e92e774d52bea06077c24603a665e1570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48289d68da0c0c850e6b20b3c5fdbc9d3f59e261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49af0ebd173771397865f96dc72b05c47b076a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4cf68d955d20510221c4d8dd59cd9d34becbf5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f2a90a5f97f70896c31841f3a2c13ecd3ba3740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54b0e554b6af8d7f6ca5343a7b961e01c3769faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59e59a95bff61e768818c12bd6a073dee4898b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60a23375932e4fa3dfc84f8ca7736326088d6ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6373661762896fb085ad6355745eaf6d0d7fb054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x646a9d3148c7443b7b644adc465f2ac1baf58c12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x648fa562109dced2a6b4108e689e1475be45d227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x654cce64571af910a0e8f8fe2f6d7febda1d3c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6628a33ecca6e41e83450a93aa193f0f816e99db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68256ccfe387947241889d003872caf202aaad88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d4aaf9916a898b9a4a7efa966b32cd76913d5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6e5f4e7bc430d9b535731842f458074928ed4afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x714d64675baaf4e3784a082fabfbe2a8fca0c37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71751ce80e6528e6f0c691c328b67cbf0d288e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71bfdbd438f027b7a33596efdcc8e1d87856f862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82a2d0a5b6d45aca6a8b19c52316ba99b2bf4ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83238d5ad138f850488c2b9216cf98cec28cc1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x839e67124431bb115ab037324e9d962eaf73d9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86647a3e0f2edb6cc95f53d99d0ff5c9aa097d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8828e0e927bf76bd4193f7d952dbffdb29363d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b467438ff6e4819442933e5630b537007ecb93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8bf20a08b30b9ade496aea65ccb91716c993b88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d2bc595d933eb9c30bee0720b3b148d73a8d0de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93d06cc1346eb564d57bc1a083c1921a7b3883ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96241040d5337c4ebf1e18bd845531579d5d3c43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98426eea759f4d659da7090faf6088d3a97421ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98a8912a8a4bf11512063350f29551021dfe225a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b954b30624c01e4443897545ce5d24391ba37d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa26a37c87369d59b22f6c35f1b5c876d39ad6e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3c50e654b6c181a889725db7326fbb6696d91f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa46717def22d057ae49301e6d6c6c6176b5d5c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa49204110778ff1e333f71067aef92e34c05ea10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6cff6e2c9e623b788852196419b9aaf3470e765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa923126fac75f129a91da08f804935b749840362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafcf31294fcc627217c8c5334af20258bf533817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb277dd1707b99d3f8678977a2a9f5b39903a7d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5a79b21045c4a36e73bc723804c2ed7859b3152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbae6b6892519428c07750d8ba6df2c56ef99df33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbd3e8fc6ee1e441c841baaaa8cde330d1c0b002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc089f6c5a20782b70e731568403515172a28089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389467 | `0xcd89abe6ec3eedef07713e1b89d698c0c421dc8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdd7e78bb4dc4f144c71d1ae700b284ac362f5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcec9d7c0154d8c7a13b3e393bc09aa5f76a7f81c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf8359eff37d89a2947348db56da19b83bb2aeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfada6c6717f068ed185043be7c80168b1036e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1098eca1957e3a980d7acaf9155a0c405896cc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5859e7e8ef90d57bd5508543dcd637f67e6fb4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5f28ca9b4d5580e79b4561e424fca88fbf8c766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde4928e5a311e29956f99589953f29fb940b1b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe00e8aaf86854a582b0841c9be84a32066f875ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0dc45a7141db52a1452ec99140458870816f2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe239c3dd753620af50dfe98c46d91c83875e8847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe28552526477b61f518720a86ac4125daf920fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3936ee3512e5e6816c5e0af4acc5ec37a8e26a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4a1003319d0ff47df2053d185ddb415bebc537c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe7426e7c25f9bf3c3faca8ffd97183edbd4b32ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb27909993a1fdd9f1855df00d062bff6af75f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebd39bb320dcc3c3233150b4e829f063236ace37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xedcb01ea119900378783893d3703c78d022ac7e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeff3874c90846ac6cd7fe029ce09f8f096610811` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf40f54ebbdffdaf38e7a5dc8fd3f3ecd18af32e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5f053924165276f5810fc68d2db281f52dfd72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6be91f1b5cc893119a853db712a582f00876494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf88c11a41e9f48ab6d88b77eb3cea286801f0275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa2e48166eda1dbdb5a92d6c23c68c85614c55d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd7457e714b4b218fa95dea40d0665f7e47648d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe365bd836065de157bd636d50432398c9bbf08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff5e00f5411b75cd1e7b90eddaca0d6c7088bc6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fe51499d328009ab7b8abed6b27dabd58b37cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bccf0b30e9081c586496c827587e27652c72051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59f8881d28772f8e23a1b282fb9d5fc2e7ca5bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9dd3f2b92fd5708a44e6df95cd57b59e896d6db8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 106
- Live contracts: 0
- Unknown liveness contracts: 106
- Source-verified contracts: 6
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=6, unverified unclassified=100

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | mortgagecontracts<br>`0xcb83d438943cad3dc11d5c83a97d14872cb2c87b` | non_address_book | unknown | unknown | verified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| source verified unclassified | mortgageconversionvault<br>`0x76d80459a85e795ccff36f34dc8a4cfa08141b59` | non_address_book | unknown | unknown | verified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| source verified unclassified | mortgagefipoolusdtwbtc<br>`0xc355f70f5f37f773e76e16d0e046c5f868d8ea72` | non_address_book | unknown | unknown | verified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| source verified unclassified | mortgagetickets<br>`0x5c72d7be838415a663dda5f1213c0d72b4b61932` | non_address_book | unknown | unknown | verified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| source verified unclassified | mortgagetickets<br>`0x7ce0dcbf0b72bc06fc82361848e74024388dede3` | non_address_book | unknown | unknown | verified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| source verified unclassified | mortgagetickets<br>`0x8b712a8afd5163460cc121deef6d233011c63375` | non_address_book | unknown | unknown | verified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x013318c3b07b853b5fd5cae74dbf4ab89ab83419` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x01708164f1c5f60af7fbe3bc134b178585f3f625` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x01ec96e025127f4f60ef005bd1c61638cde87259` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x0464a4c09f1c587a0b27af015ab4f5c4fff08d3b` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x06833f6d3024c9a7771888fd144ba89b60e78a32` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x06975f07ff099fed08a5c1af4507e5a65574b3a9` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x0a4505e761db8a4324f669eb3e8f90afed665777` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x0aea2ddf5e255a9b73f1dd8557be4dc19b2f71b6` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x0c96313a4f3b2c8f20f7a8cfe2f3011eca13ca48` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x10f460c5976225f8e8764b862e36cc98832ff377` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x1e6952d55b6372d775684f494247d57e741185f3` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x26229afd96c59ba0be05e00735d420f88624c125` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x273cc9d8c4d374dce7c5c74d5bb7fc33c1242619` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x2bbb819ad87eb0b0f1c91e9d29b03b8252bf7325` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x2d284063f429f2fd4a6705b6b5f080dc41764794` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x2d9a5ae11cd9913b27b6971304d43165fd726fad` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x2e5f6f57152c3f768af8d64b06150aae8021f824` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x3156f6befd08c733f61b81acd213114d8747fb80` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x32ea385cc0691703330f7f3f9de3c8d914083bb5` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x32ff6cda1fddfbcb01980fb00543b95db42bd0a9` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x392574f6f3dfd576514fba8e53304c3a815d0e5b` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x3cd04b7e3e6fb27dd0d6b79bf52b72d1fb8d3ada` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x3fdb00ed55a31f3a17e93c364b187007f548e5c9` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x41ced7e81587f319dcb845ff41734cef79ea912c` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x45306c3927e81a9a3dd9152cb7af064afcbf1f75` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x477c055e92e774d52bea06077c24603a665e1570` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x48289d68da0c0c850e6b20b3c5fdbc9d3f59e261` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x49af0ebd173771397865f96dc72b05c47b076a23` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x4cf68d955d20510221c4d8dd59cd9d34becbf5bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x4f2a90a5f97f70896c31841f3a2c13ecd3ba3740` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x54b0e554b6af8d7f6ca5343a7b961e01c3769faf` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x59e59a95bff61e768818c12bd6a073dee4898b52` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x60a23375932e4fa3dfc84f8ca7736326088d6ecf` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x6373661762896fb085ad6355745eaf6d0d7fb054` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x646a9d3148c7443b7b644adc465f2ac1baf58c12` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x648fa562109dced2a6b4108e689e1475be45d227` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x654cce64571af910a0e8f8fe2f6d7febda1d3c9b` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x6628a33ecca6e41e83450a93aa193f0f816e99db` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x68256ccfe387947241889d003872caf202aaad88` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x6d4aaf9916a898b9a4a7efa966b32cd76913d5c6` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x6e5f4e7bc430d9b535731842f458074928ed4afa` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x714d64675baaf4e3784a082fabfbe2a8fca0c37d` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x71751ce80e6528e6f0c691c328b67cbf0d288e24` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x71bfdbd438f027b7a33596efdcc8e1d87856f862` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x82a2d0a5b6d45aca6a8b19c52316ba99b2bf4ac3` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x83238d5ad138f850488c2b9216cf98cec28cc1a3` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x839e67124431bb115ab037324e9d962eaf73d9c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x86647a3e0f2edb6cc95f53d99d0ff5c9aa097d26` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x8828e0e927bf76bd4193f7d952dbffdb29363d76` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x8b467438ff6e4819442933e5630b537007ecb93d` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x8bf20a08b30b9ade496aea65ccb91716c993b88c` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x8d2bc595d933eb9c30bee0720b3b148d73a8d0de` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x93d06cc1346eb564d57bc1a083c1921a7b3883ef` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x96241040d5337c4ebf1e18bd845531579d5d3c43` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x98426eea759f4d659da7090faf6088d3a97421ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x98a8912a8a4bf11512063350f29551021dfe225a` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x9b954b30624c01e4443897545ce5d24391ba37d7` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xa26a37c87369d59b22f6c35f1b5c876d39ad6e58` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xa3c50e654b6c181a889725db7326fbb6696d91f1` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xa46717def22d057ae49301e6d6c6c6176b5d5c14` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xa49204110778ff1e333f71067aef92e34c05ea10` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0xa6cff6e2c9e623b788852196419b9aaf3470e765` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xa923126fac75f129a91da08f804935b749840362` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xafcf31294fcc627217c8c5334af20258bf533817` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0xb277dd1707b99d3f8678977a2a9f5b39903a7d4f` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xb5a79b21045c4a36e73bc723804c2ed7859b3152` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0xbae6b6892519428c07750d8ba6df2c56ef99df33` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xbbd3e8fc6ee1e441c841baaaa8cde330d1c0b002` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0xbc089f6c5a20782b70e731568403515172a28089` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xcdd7e78bb4dc4f144c71d1ae700b284ac362f5ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xcec9d7c0154d8c7a13b3e393bc09aa5f76a7f81c` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xcf8359eff37d89a2947348db56da19b83bb2aeb0` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xcfada6c6717f068ed185043be7c80168b1036e5d` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xd1098eca1957e3a980d7acaf9155a0c405896cc8` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xd5859e7e8ef90d57bd5508543dcd637f67e6fb4b` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xd5f28ca9b4d5580e79b4561e424fca88fbf8c766` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0xde4928e5a311e29956f99589953f29fb940b1b27` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xe00e8aaf86854a582b0841c9be84a32066f875ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xe0dc45a7141db52a1452ec99140458870816f2f3` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0xe239c3dd753620af50dfe98c46d91c83875e8847` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xe28552526477b61f518720a86ac4125daf920fd6` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xe3936ee3512e5e6816c5e0af4acc5ec37a8e26a1` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xe4a1003319d0ff47df2053d185ddb415bebc537c` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xe7426e7c25f9bf3c3faca8ffd97183edbd4b32ae` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xeb27909993a1fdd9f1855df00d062bff6af75f3f` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xebd39bb320dcc3c3233150b4e829f063236ace37` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xedcb01ea119900378783893d3703c78d022ac7e6` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xeff3874c90846ac6cd7fe029ce09f8f096610811` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xf40f54ebbdffdaf38e7a5dc8fd3f3ecd18af32e7` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xf5f053924165276f5810fc68d2db281f52dfd72e` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xf6be91f1b5cc893119a853db712a582f00876494` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xf88c11a41e9f48ab6d88b77eb3cea286801f0275` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xfa2e48166eda1dbdb5a92d6c23c68c85614c55d8` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xfd7457e714b4b218fa95dea40d0665f7e47648d8` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0xfe365bd836065de157bd636d50432398c9bbf08f` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0xff5e00f5411b75cd1e7b90eddaca0d6c7088bc6b` | non_address_book | unknown | unknown | unverified | n/a | `0x6215fddca4cf6d5fd9093ef1892c833874ed6a94` |
| unverified unclassified | UnnamedContract<br>`0x2fe51499d328009ab7b8abed6b27dabd58b37cda` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x3bccf0b30e9081c586496c827587e27652c72051` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x59f8881d28772f8e23a1b282fb9d5fc2e7ca5bf9` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |
| unverified unclassified | UnnamedContract<br>`0x9dd3f2b92fd5708a44e6df95cd57b59e896d6db8` | non_address_book | unknown | unknown | unverified | n/a | `0x87d2e27147a640092e06c9329bf8110ca9927446` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [mortgagefi-audit-report-1.1.pdf](https://github.com/Decurity/audits/blob/master/MortgageFi/mortgagefi-audit-report-1.1.pdf) | Decurity | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [hashlock.com/audits/mortgagefi](https://hashlock.com/audits/mortgagefi) | unknown | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2024/10/MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13524] mortgagefi-audit-report-1.1.pdf — no match: No reason recorded
- [13525] hashlock.com/audits/mortgagefi — no match: The provided text is a marketing page for Hashlock's audit services, not the actual audit report. No contract names or scope details are present. The date 'August 2024' is inferred as the last audit date.
- [13526] MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| mortgagefi-audit-report-1.1.pdf | ciabv2erc20 | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgagecontracts | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgageconversionvault | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgagefeetickets | unmatched — not counted | — | — | no |
| mortgagefi-audit-report-1.1.pdf | mortgagefipoolwethusdc | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgagecontracts | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgageconversionvault | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgagefeetickets | unmatched — not counted | — | — | no |
| MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf | mortgagefipoolwethusdc | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x2f5aac46575f68fe600e99096ca38301a4520a91` | mortgagefipoolusdtwbtc | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe93131620945a1273b48f57f453983d270b62dc7` | mortgagefiusdccbbtcupgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 101 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13524] mortgagefi-audit-report-1.1.pdf
- [13525] hashlock.com/audits/mortgagefi
- [13526] MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
