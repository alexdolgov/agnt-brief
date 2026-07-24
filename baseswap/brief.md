# Agentic Audit Brief: BaseSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: BaseSwap (`baseswap`)
- Website: [https://baseswap.fi/](https://baseswap.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 127 unique implementations (127 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $492,331.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BaseSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x647fc2d8b7587b036a93a98d6612a9ecefd3cb88`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 126 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 127 unique; 126 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 96
- Unique implementations: 127
- Raw deployments: 127
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BPLPManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5e73f436a676c649f186dfe6fcbf1bacff958aa` | ⚠️ Unaudited |
| BswapToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78a087d713be963bf307b18f2ff8122ef9a63ae9` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xffba6f02ae140d8ec2fc7798b5ab60e85bc62c78` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1691559e2cdd440fc40997978eedd63bf76c0641` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b0a43dccbd7d42c18f6a83f86d1a19fa58d541a` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb7971adc396d7ed3953e9542a8d4baec914b772` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20c51b3da2e7821ef62d63a447ac9e5f8a503065` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4df850b99cf6dae86c2ceca7782ac81a5d5b688` | ⚠️ Unaudited |
| OrderBookReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1a8d93eebf7a32ad6bc1f8674082ab2f0e89493` | ⚠️ Unaudited |
| OrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa64db2c205fdc3fd930dcb6e3e1f9510ca51f146` | ⚠️ Unaudited |
| PancakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f1a2f63ea06b475edbf2e6393406058c12a7910` | ⚠️ Unaudited |
| PancakeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x327df1e6de05895d2ab08513aadd9313fe505d86` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3a180411a88525d872793342ba8b09ab635568a7` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2918e366d059733fe12a2a9c18e7f6fea01fb13c` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d7cbf8104aea85d8c76d5eeb397441a59b24187` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa88ad234a374989d46a854337e315bcf70020fc` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab2b07da4710bcd8f2d610ca4420e632b994ac55` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67965f5126103abbd49ba912d46bf3afb37730df` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6699ca490855082a67429b712f96a9a68a1cd15e` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54ee88d2094ecd5b1472c11a604478feda42e2cc` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9ee54147445f1c1c23f52183c95456e69a92989` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14963869592e41a2ecd7524bd213cfc3044adf75` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49a3a5cf91de1b78c43dc1add03e8a71f1ea2e30` | ⚠️ Unaudited |
| UniswapV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f6533d37d7623bf7a396730637ce0f52bf27781` | ⚠️ Unaudited |
| USBS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda55eb290d30203a0a30e0411153c4667021cd57` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4710b12426270d17936ea61d8314e099062a2c6a` | ⚠️ Unaudited |
| V3PrepToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07de0511cb0d7af0b63a1a63b2a575b8ec35f089` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd29ceab5e7c902806f5de29305e45b772ef544ae` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88f1a478d86239f0929c984431281b8a1ca4ca3c` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c09876676bc0225d94757f78bde48708f0014ec` | ⚠️ Unaudited |
| VaultUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3371da2b01ca2e31bb230582aede3e7cf5ecbcc3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (96)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01da36ba1e155735a727bb6ff75753b88a28a9d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09303496dbc2381049c38df9fb92f1ea909050cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x112d1f33f7c52d7fb92e5a3d1086fb10398ba8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x121dd647ccbf9f811f3bfab74613e63221bc2f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14db9cfcae4e7f6971034f0e8e4d9fc3e54cdafe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x154184eae9de0dcac56c804ffee021e7f2b0b2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1861f812b1bc3638d3b2e3f96ce60dd62edb6f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b8eea9315be495187d873da7773a874545d9d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21a7b0d26e7a4c3ce2e6c7beb1e11cc193ed89b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x220ec69378cee35c3862a38d2b01f0ec26a0e24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26fa7a8fb5556b25d46e4386b049383adf2fd10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x291f11cc3a44c6b2d93ad1304555d1aba3122eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c73d2d528ebc6d19e4e0177080851e709e18bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2cd4dc5b0ab91c1378b2b5ff9471cdd711ef765b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2e92345bc5efa55c4bef3533d91268b1754ab60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30d273e96038cc14d1eedf0aa44e77be9caaa9b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32ca843bcb697a10aba2235238f955d9b7ca0ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33446f09e2a70c1c35718903c7c27f97989b33d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x36d1ab9ddd6b59e8f2c01f8e3e9d0adeca0e864d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38d7fdfbdb6aa83d78e200beaf5b587123ae2a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39133dbfddd8561cd5fec6738b3d5258e0b529bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ea0db2c840d07e5ed48d20415fd816280977733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44e5446017b063793e9d3e5ecb1b7a1d4ad44526` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45ede445bf511f14cc4809d81355d4dbf8d97847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c656a290161ce89538e305075098fe92bdcb5e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c9828c104810c40540b8074f95e99fc18d4cc69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4fdbd73ad4b1ddde594bf05497c15f76308effb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x580168cd2112b46e1cced55701be0c194af078e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58098c938902e2608fd5eec078a9e0e45a645fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58caa6c919e9a043c42a56e5f87946053b9f181d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x596c5c71a079bdde96f940649c21a39201d4c47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x60a610de5cb6aa716ba79cea926cbcc7bffc43e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-380132 | `0x647fc2d8b7587b036a93a98d6612a9ecefd3cb88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x697813e9efdf48e9c299ec635f86f98665252eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6d0829dabd4b41e9a999283a11dda1516f591e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x706136af1953291dcbd2311b7f8e4c778da9d51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73efdc8039b47207cc718b7adcb3d0dc8e76c082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73f4792e10076c1c26152dcf138d0be252ab3338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x757475e1317621451e7ce44b7642a503e2aa3a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x786e0686e842bf148840e7f3d8a6e36fa2fa3ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79af2ad64cd42f6252fb35589c08bd18b4d1161d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82995f682dc38b17b99079cf63df8d263c6d5ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x898e49e2cb08c644ce02565f3533eb370f2772ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a701bc6828fa9620996108c571e87265d6407f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8dfaf055e21b16302dbf00815e5b4d9b6042a4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8f55683e20aad0c115170b11b9e891be428edd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fda3405fbca054a5a36fcf9b0991c5ef2d6d67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91b982439132987b6b656ec4b3d0ee4f3b5cb26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93c224bd9aa2dbce55c2b41e93501da937188fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9635cd1c26f1194d6b4c64c4ffcffcbfd8d9d603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96e73b10d0f4b7180c7c89456e984dff6c73eb3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98c2aae592d96085592e2021bd88c95282037f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99b33410b96dcbc3e534eae36a81045fc4800629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c2a85ec1bb79c61e5b3a38545051d71c3294ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0b7dc7601008fd08211d1eb87fe74bbab76abcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3e674cc6c847802a20eb32daba40219a941f408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4df3a23a35ada4ad6b4945fc9349ab21ad1736c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa80f87b1872e9242ea94c36da88eabab6b1d2a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacb8ac8d5597a97267e16dae214ee3f5dbd551bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafc31e5b4e6ea3c51471b0b3e9767e5046ba8b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb0bbb78d7ddd1e8c7c6d0f9b49ed3478b4bde455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb33ff6e66c735acd2422a7c038d52dd8002757ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5d1ab6dfc161b1323a4126c03255b893175bf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb616aa094542cfa43655fa8059075789ab0a4be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9fbbf664ff83b931e3329fcc09b52ad539624d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbb05f2a0a20f687f5c4e8b8c78c6d057841e649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbcf71fb48d30231c4a360754db0244809637bd7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe373e10f0c5c9fd2b3207fa5ebe3d1378b33a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbfe9c96d648d23995cf8600014c6daac20b19d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc102505248c36f933934d4b2d7579d962a342ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1b69598bbd5a921e32ca15a03c7acb51029bc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3c7418e738e8b116a89df0941b13c306bbb0200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7be9801e0767bf6146e04a4ec0dc94d6a776ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc81f114f8d7b12363211f64f649d2376d654499d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc94e9ab330353ff6eef4ab415f4605616cb998ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9f21d5986de5f02feeb08ee5ce899ccf5ead3c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc3726bcc27f232bc1caab40853aea91ae43c216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcde0de3de1ecdf228590d4a87f0ae5f6b283a67c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd345e88b6492749def6a31e3446a7d7669506d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5288ad9331b216a3143bb851e080013dee089aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e345624af9ec195f5400e186b52243a993edf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd844fa139bd2498599c2859541811cb54573b226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd96f90993d842d20f5cee207726620b7c44be6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdb2bec90ddb489303939082359dea415b324f06c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde151d5c92bfaa288db4b67c21cd55d5826bcc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe81ae24d624bed824e270c787870069530dda1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb334a372393c5c5fb0c2c46bb83e4fc69dda9b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xecfcb1a4e3e1d656537e6ccd71ae0508413b534e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed5eaba5e0b0d420bae2e2d52e503a8395035643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef5793edcce5aa0bbd416a22a6589e534934ea1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2ea52d3bd7409bcda9e5158ef924f5f24f99ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5b63b76f638e1798549039c503aa3a47d3d1f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf625015fbc5bbc6253ef7aea5b0e85bf8fec6b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf7b07ed10b49e7e87d240afde40ae50614831df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf923c26c3d7499e182b2d85d57ac851b99e7e89e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfda619b6d20975be80a10332cd39b9a4b0faa8bb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 95
- Live contracts: 0
- Unknown liveness contracts: 95
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=95

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0x14db9cfcae4e7f6971034f0e8e4d9fc3e54cdafe` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x154184eae9de0dcac56c804ffee021e7f2b0b2bf` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x1b8eea9315be495187d873da7773a874545d9d48` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x21a7b0d26e7a4c3ce2e6c7beb1e11cc193ed89b7` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x220ec69378cee35c3862a38d2b01f0ec26a0e24c` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x291f11cc3a44c6b2d93ad1304555d1aba3122eef` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x2c73d2d528ebc6d19e4e0177080851e709e18bf5` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x2cd4dc5b0ab91c1378b2b5ff9471cdd711ef765b` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x2e92345bc5efa55c4bef3533d91268b1754ab60f` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x30d273e96038cc14d1eedf0aa44e77be9caaa9b2` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x33446f09e2a70c1c35718903c7c27f97989b33d9` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x36d1ab9ddd6b59e8f2c01f8e3e9d0adeca0e864d` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x38d7fdfbdb6aa83d78e200beaf5b587123ae2a13` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x44e5446017b063793e9d3e5ecb1b7a1d4ad44526` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x45ede445bf511f14cc4809d81355d4dbf8d97847` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x4c656a290161ce89538e305075098fe92bdcb5e6` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x4c9828c104810c40540b8074f95e99fc18d4cc69` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x4fdbd73ad4b1ddde594bf05497c15f76308effb9` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x596c5c71a079bdde96f940649c21a39201d4c47b` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x60a610de5cb6aa716ba79cea926cbcc7bffc43e7` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x6d0829dabd4b41e9a999283a11dda1516f591e86` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x706136af1953291dcbd2311b7f8e4c778da9d51b` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x73efdc8039b47207cc718b7adcb3d0dc8e76c082` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x73f4792e10076c1c26152dcf138d0be252ab3338` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x82995f682dc38b17b99079cf63df8d263c6d5ee0` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x898e49e2cb08c644ce02565f3533eb370f2772ac` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x8dfaf055e21b16302dbf00815e5b4d9b6042a4df` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x8fda3405fbca054a5a36fcf9b0991c5ef2d6d67b` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x91b982439132987b6b656ec4b3d0ee4f3b5cb26b` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x93c224bd9aa2dbce55c2b41e93501da937188fd2` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x9635cd1c26f1194d6b4c64c4ffcffcbfd8d9d603` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x96e73b10d0f4b7180c7c89456e984dff6c73eb3f` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x98c2aae592d96085592e2021bd88c95282037f42` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x99b33410b96dcbc3e534eae36a81045fc4800629` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xa0b7dc7601008fd08211d1eb87fe74bbab76abcc` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xa3e674cc6c847802a20eb32daba40219a941f408` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xa4df3a23a35ada4ad6b4945fc9349ab21ad1736c` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xa80f87b1872e9242ea94c36da88eabab6b1d2a6c` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xacb8ac8d5597a97267e16dae214ee3f5dbd551bb` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xafc31e5b4e6ea3c51471b0b3e9767e5046ba8b02` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xb0bbb78d7ddd1e8c7c6d0f9b49ed3478b4bde455` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xb33ff6e66c735acd2422a7c038d52dd8002757ec` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xb5d1ab6dfc161b1323a4126c03255b893175bf84` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xb616aa094542cfa43655fa8059075789ab0a4be7` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xb9fbbf664ff83b931e3329fcc09b52ad539624d8` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xbe373e10f0c5c9fd2b3207fa5ebe3d1378b33a20` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xbfe9c96d648d23995cf8600014c6daac20b19d35` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xc102505248c36f933934d4b2d7579d962a342ebc` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xc3c7418e738e8b116a89df0941b13c306bbb0200` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xc81f114f8d7b12363211f64f649d2376d654499d` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xc94e9ab330353ff6eef4ab415f4605616cb998ae` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xc9f21d5986de5f02feeb08ee5ce899ccf5ead3c5` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xcc3726bcc27f232bc1caab40853aea91ae43c216` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xcde0de3de1ecdf228590d4a87f0ae5f6b283a67c` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xd5288ad9331b216a3143bb851e080013dee089aa` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xd96f90993d842d20f5cee207726620b7c44be6fe` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xdb2bec90ddb489303939082359dea415b324f06c` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xde151d5c92bfaa288db4b67c21cd55d5826bcc93` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xe81ae24d624bed824e270c787870069530dda1fa` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xef5793edcce5aa0bbd416a22a6589e534934ea1f` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xf2ea52d3bd7409bcda9e5158ef924f5f24f99ebf` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xf5b63b76f638e1798549039c503aa3a47d3d1f9e` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xf625015fbc5bbc6253ef7aea5b0e85bf8fec6b2f` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xf923c26c3d7499e182b2d85d57ac851b99e7e89e` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0xfda619b6d20975be80a10332cd39b9a4b0faa8bb` | non_address_book | unknown | unknown | unverified | n/a | `0x03d4c4b1b115c068ef864de2e21e724a758892a2` |
| base | unverified unclassified | UnnamedContract<br>`0x01da36ba1e155735a727bb6ff75753b88a28a9d3` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x09303496dbc2381049c38df9fb92f1ea909050cd` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x112d1f33f7c52d7fb92e5a3d1086fb10398ba8f3` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x121dd647ccbf9f811f3bfab74613e63221bc2f88` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x1861f812b1bc3638d3b2e3f96ce60dd62edb6f06` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x26fa7a8fb5556b25d46e4386b049383adf2fd10b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x32ca843bcb697a10aba2235238f955d9b7ca0ff0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x39133dbfddd8561cd5fec6738b3d5258e0b529bf` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x3ea0db2c840d07e5ed48d20415fd816280977733` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x580168cd2112b46e1cced55701be0c194af078e6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x58098c938902e2608fd5eec078a9e0e45a645fe3` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x58caa6c919e9a043c42a56e5f87946053b9f181d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x697813e9efdf48e9c299ec635f86f98665252eba` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x757475e1317621451e7ce44b7642a503e2aa3a39` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x786e0686e842bf148840e7f3d8a6e36fa2fa3ae3` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x79af2ad64cd42f6252fb35589c08bd18b4d1161d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x8a701bc6828fa9620996108c571e87265d6407f0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x8f55683e20aad0c115170b11b9e891be428edd9d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0x9c2a85ec1bb79c61e5b3a38545051d71c3294ca9` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xbbb05f2a0a20f687f5c4e8b8c78c6d057841e649` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xbcf71fb48d30231c4a360754db0244809637bd7a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xc1b69598bbd5a921e32ca15a03c7acb51029bc92` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xc7be9801e0767bf6146e04a4ec0dc94d6a776ea6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xd345e88b6492749def6a31e3446a7d7669506d0c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xd6e345624af9ec195f5400e186b52243a993edf5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xd844fa139bd2498599c2859541811cb54573b226` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xeb334a372393c5c5fb0c2c46bb83e4fc69dda9b6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xecfcb1a4e3e1d656537e6ccd71ae0508413b534e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xed5eaba5e0b0d420bae2e2d52e503a8395035643` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |
| base | unverified unclassified | UnnamedContract<br>`0xf7b07ed10b49e7e87d240afde40ae50614831df6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe0e16e59015133bf8afde827a0f7a7b3183d6e8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88***](https://console.gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88) | GoPlus Labs | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [AUDIT]()](https://baseswap.gitbook.io/baseswap/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19518] ***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88*** — no match: The provided text only contains 'GoPlus Dashboard' which is not a contract name and no audit report content was provided.
- [19519] - [AUDIT]() — no match: The provided text is a single line with a link to a token security check on GoPlusLabs, not an audit report. No contract names, scope sections, or dates are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 96 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [19518] ***https://gopluslabs.io/token-security/8453/0x647FC2d8B7587B036A93A98D6612a9EcEFd3cb88***
- [19519] - [AUDIT]()

Fork inheritance lineage and inherited audits are included when available.
