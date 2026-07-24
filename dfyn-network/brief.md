# Agentic Audit Brief: Dfyn Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Dfyn Network (`dfyn-network`)
- Website: [https://www.dfyn.network/](https://www.dfyn.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, fantom, polygon
- Contract surface: 129 unique implementations (131 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $333,049.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Dfyn Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, fantom, polygon. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: ownable (1), pausable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x75455c3de45dd32cbe9a5ad5e518d3d50823c976`, chain 137)
- UnnamedContract (`0xe7fb3e833efe5f9c441105eb65ef8b261266423b`, chain 137)
- UnnamedContract (`0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d`, chain 250)
- UnnamedContract (`0xd9820a17053d6314b20642e465a84bf01a3d64f5`, chain 250)
- UnnamedContract (`0xaede1efe768bd8a1663a7608c63290c60b85e71c`, chain 42161)
- DfynPricePrediction (`0x150b4fd25c7c0c65301e86b599822f2feecc29e7`, chain 137)
- UniswapV2Factory (`0xa102072a4c07f06ec3b4900fdc4c7b80b6c57429`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 122 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 7 of 129 unique; 122 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 107
- Unique implementations: 129
- Raw deployments: 131
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd841b4a74867a4e92c1627c8f99a717d0795e039` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0119fd9592d7acea88c9b0d04b794a82bed06dd5` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda6415502b0ddab9eda1d09f4f16286273fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d3143311b012ad268a74f2aa791713952ea` | ⚠️ Unaudited |
| DfynChest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cf9d1f77c9b044e1d2d0dcc0cfda7423fd45fc0` | ⚠️ Unaudited |
| DFYNFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9820a17053d6314b20642e465a84bf01a3d64f5` | ⚠️ Unaudited |
| DfynPricePrediction | unknown | project_anchor | own_supporting | 0 | polygon | unit-235289 | `0x150b4fd25c7c0c65301e86b599822f2feecc29e7` | ⚠️ Unaudited |
| DFYNRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c28f48448720e9000907bc2611f73022fdce1fa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x01df11ef6822b88e5913625e7e66696c01ee4cf7`; polygon `0x38b4e80435355988d4e019e4f6cb0a601fbb6c5f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x26fbd7d74e969d878033984995336b56449fdc3f`; polygon `0x4c7230c7a7187dab54b15ac5f1f72248e08ed1cf` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98` | ⚠️ Unaudited |
| RewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ac606389982ae6d2f82f817c46eacf54244c4ac` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03428da1a46beb305db74c55d4ec192907431cca` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x038be886326340844c4e9d0098af006876eae967` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8632153b2d083a94590e577298c0ae50698` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97b041e42697def62afab53c99c1dd5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de668684839f97d4845f32a43e913366ec08c` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-235294 | `0xa102072a4c07f06ec3b4900fdc4c7b80b6c57429` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa102072a4c07f06ec3b4900fdc4c7b80b6c57429` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x356fe56801fdb5bb44f63023f4ac3e26588a3723` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c28f48448720e9000907bc2611f73022fdce1fa` | ⚠️ Unaudited |
| XERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48856f48fb4eafab8646de0b0b48bace1f95f723` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (107)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x030402314c4c752e62cf3237e14309cc07e8048d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08350e2d5b33db49fd054ab4c1eb2ac086f44c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x087cdd8ed8aedb97eec8f00b6c12a1bd3f2cdd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09894dcf3d5b68d87093a5a846fa5b1ec723a973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a2378aa9e3a876669fc42296ae993e3b043ac4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a93a22cfb9f129b757d02300111eca098bf3e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b1cc6a22fbb062415172e3e77b94a7cb19be424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0db6d32f88b740299edc90067e4e161591a0ad0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0eccb9f6e244861381e58788ebde618eae0f341d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1137e9dc2726e0347fac8c919a17943ef44a41e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1659e6e8f6dc27772cde3b988ccca0ee7e1b3e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19f81dde249ba92e85287026f0626272c5a9ab33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a0b90600b24c054565482a78b6418a9fb1dbc7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a66344212e3e37293dc8dc093ef4604c2b9b366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b19ad2b93ecbe4e9a813aa0f5f0291689fc6e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b5973e17c54cd4fc589645115003fc9610d9611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2141ec2c09611930bd3d3d20c7fb8788a50556ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26733fad9e70114088193f61a381b17834ce6102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a7821753c88140cfd341bd61baf261e81116825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x342a386d6ca57d4e392e56784930b1412de48789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x360faba86bea5353a3e32acc5dd2af8cc136c5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37e1c0aabd85121d256558942d5b59150f7a7263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x384249f6b345b5feab453558b1ca1713f953bf8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bf9dd99b5210c20dcca051d645237b1caacf66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d0c30304d4284562917b0b528d53cb70474d41b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x400dc7d265338d9d0acaae55945eba4695178dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44f856d2a151ec31e08bb29fdf84a8611abf2625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45ed980d2887652a382bf6f96abf1fa1d7d29244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48b35d53309c8819801d8f66fcd17d13b2744e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c2fbf0cd23fa492c51e2a93e0a3ede4b925dfe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ea810b3c80eecbc93d7773cccbd495d04b9fb68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5124c94b95dead55930c5fe51581fd051473d415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5132a726dff5e5f13e48515985bb23c23a639875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54816c21e3a3b9e4bcc86ec035c4f61e2814f5fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57791b5257a8b95d6c0c0a6ad947ffecc5e77953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5adbcd29207fe19c34a3eb40d174b79954c47af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e6135931663326466affd918781fb939e1cca3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f1fddff3cf8114d007bcfa7e6dec0b40b34817e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f358da1d944003f1da072675d2a094821d158d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64a567a48207df60ef5fddf60a7641d53a69df97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67d3cd45ea37190509487bc1e68976440b594060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d51d6326d2c44d6b24d827a0ef790f825f400d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6eb2b5e5663416a23cdd7ce6ff397771e8e7a297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fd225246088183daac712c17c95b9a9b83f7302` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235290 | `0x75455c3de45dd32cbe9a5ad5e518d3d50823c976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7816f25ec65a51f9c6b165616ef7916685c6e1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c7e91070d4a3cb02386e1601b2cb1834052b773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f8e7b23ba4d118de4f63eebd6ac495089b23aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81c5f028207e3368bec7e93936e6b7f1aa06c0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82be3f6fdab2ecd5a8a58df485cfcb927f7d146c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x837a39ef2a128ac6f5e8048920aea7c42198561c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x838f9ad418e032931ef28ed4a8799b3919a791b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8708d42a2a799756a6899ff1aab10a0938453e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8973792d9e8ea794e546b62c0f2295e32a6d7e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b0913272be1df187b19a15fe399887cc292dae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8cf4d929b3dd4e61a8493e6f7480eec975865b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8dd5f22102ddec3ff2ed5341d936365a813ef1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fb7ef983eafa0dc25f858140bc8cd016cad219b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x972a6613ee7bb339ce81977105dea2e04b3931da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x977cbdac62ba334c8df0e45281e00186c57e4315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x986f5010d52d19b0dc9b2cf21a38fac6064a93e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b6117f84ff76f23cb922e3f5ea33b985e9d1dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f4c8aeebac0a8a2abcd92df0c0cc4bd943fcabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f66410b6f63f0b7d4462c3390440de801b7534f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa09c81e6d96e07343d50be51df66cb0b126740fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5aea69fed78d96627e49cf955e2b0385f4a9d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa74dbe6ba5bed1634f958c8bf560dc39f67f88f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa80311479d164fcca1784c77bd6b2f8bdbbc9d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad60dc5975b15de5a075c62dbe799228d1327bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae1ebca690c943d23e633c20e92d321590b573ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaede1efe768bd8a1663a7608c63290c60b85e71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2b98db66b27a28f4cb0968dc8a9153cfe1c4022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb33f47f40e95ad2c08a902d0118ce298872116a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb488658be9e22d065a70d918d00b353b5c23993b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb85719ba4cac16df97b92d0b3ec4cea799689a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc47c2767cdeb5efa55b95a56d7c907d33315fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf747a0f9abe235e750f37da1857ea7d2aa84041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbffb6285700bfc7aeead0f800d042c8d3061bc9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5f8defc3d63f88012632b35f876b42924980b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc73a452f23b6d427c6bd087247e0bef15fee0286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc143fa98c46798cf5dff50de70c1f492262cc97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc6e6b258d99a74cb331bf2ea5758f08fe1dbb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd13cd0ac51892a302b1bba7005a8a5cc66a8d369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5223792c9176f12d31a6c2e7a91702f95aefbf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd53a50878eebb092fd8e15ebbef75335d1bb12e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd575f4a516eb3ac0c97f0799200cbc3becfa6bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd626a0f5151a1cadcf692563deacebc78969021a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd85867167b7fc9a7d8f73c176f3ff80bdf40f151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9820a17053d6314b20642e465a84bf01a3d64f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdc2cb17ec40832e502a9723541c1db96e85e7e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xddf32193522bdfdd348d995b1f595f624cbd9ab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe28f970c92747acad9b05d97a592a06e9cbed0c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe388aac680662857fb4eab3d45446f2363ddb4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7355f6bb8b0a9ec77662f249de8c862b07424e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235291 | `0xe7fb3e833efe5f9c441105eb65ef8b261266423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea682577abaa50dab5bc971eae43903bf686a249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed1045fc7fb4480b0c92298dfa8bad7446e13735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee04ed6c66f138a685679ba1701c5b76b78401e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6a3cc510088c29637c18ce20d132dd0fec9014f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf88ca0424cc3708ec699efe73a1a22dd52713c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9836ab5bbf2891aca9bb4ad87852c7eb45e37a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa896915851587316bc33ef2c0638a9806a778a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfba39b4cd051ca5bb8adbfece702dd4f16e26872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfcf22a6141f0f0d68e085ee3bcc0227b8dd3c4ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235292 | `0x2724b9497b2cf3325c6be3ea430b3cec34b5ef2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235293 | `0xd9820a17053d6314b20642e465a84bf01a3d64f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-235295 | `0xaede1efe768bd8a1663a7608c63290c60b85e71c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 104
- Live contracts: 0
- Unknown liveness contracts: 104
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=104

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| polygon | unverified unclassified | UnnamedContract<br>`0xd53a50878eebb092fd8e15ebbef75335d1bb12e7` | non_address_book | unknown | unknown | unverified | n/a | `0x3a2d4403cd065127bbfbe6ca2c49f1dfb051dc8f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdc2cb17ec40832e502a9723541c1db96e85e7e5d` | non_address_book | unknown | unknown | unverified | n/a | `0x3a2d4403cd065127bbfbe6ca2c49f1dfb051dc8f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x838f9ad418e032931ef28ed4a8799b3919a791b9` | non_address_book | unknown | unknown | unverified | n/a | `0x74665b21461f8d9b23bab7d599bfd7566a95fd70` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8973792d9e8ea794e546b62c0f2295e32a6d7e48` | non_address_book | unknown | unknown | unverified | n/a | `0x74665b21461f8d9b23bab7d599bfd7566a95fd70` |
| polygon | unverified unclassified | UnnamedContract<br>`0xaede1efe768bd8a1663a7608c63290c60b85e71c` | non_address_book | unknown | unknown | unverified | n/a | `0x74665b21461f8d9b23bab7d599bfd7566a95fd70` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd9820a17053d6314b20642e465a84bf01a3d64f5` | non_address_book | unknown | unknown | unverified | n/a | `0x74665b21461f8d9b23bab7d599bfd7566a95fd70` |
| polygon | unverified unclassified | UnnamedContract<br>`0x030402314c4c752e62cf3237e14309cc07e8048d` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x08350e2d5b33db49fd054ab4c1eb2ac086f44c79` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x087cdd8ed8aedb97eec8f00b6c12a1bd3f2cdd70` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x09894dcf3d5b68d87093a5a846fa5b1ec723a973` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0a2378aa9e3a876669fc42296ae993e3b043ac4e` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0a93a22cfb9f129b757d02300111eca098bf3e40` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0b1cc6a22fbb062415172e3e77b94a7cb19be424` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0db6d32f88b740299edc90067e4e161591a0ad0e` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0eccb9f6e244861381e58788ebde618eae0f341d` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1137e9dc2726e0347fac8c919a17943ef44a41e8` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1659e6e8f6dc27772cde3b988ccca0ee7e1b3e08` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x19f81dde249ba92e85287026f0626272c5a9ab33` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1a0b90600b24c054565482a78b6418a9fb1dbc7b` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1a66344212e3e37293dc8dc093ef4604c2b9b366` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1b19ad2b93ecbe4e9a813aa0f5f0291689fc6e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1b5973e17c54cd4fc589645115003fc9610d9611` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2141ec2c09611930bd3d3d20c7fb8788a50556ef` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x26733fad9e70114088193f61a381b17834ce6102` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2a7821753c88140cfd341bd61baf261e81116825` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x342a386d6ca57d4e392e56784930b1412de48789` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x360faba86bea5353a3e32acc5dd2af8cc136c5d3` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x37e1c0aabd85121d256558942d5b59150f7a7263` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x384249f6b345b5feab453558b1ca1713f953bf8e` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x38b4e80435355988d4e019e4f6cb0a601fbb6c5f` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3bf9dd99b5210c20dcca051d645237b1caacf66d` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3d0c30304d4284562917b0b528d53cb70474d41b` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x400dc7d265338d9d0acaae55945eba4695178dcc` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x44f856d2a151ec31e08bb29fdf84a8611abf2625` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x45ed980d2887652a382bf6f96abf1fa1d7d29244` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x48b35d53309c8819801d8f66fcd17d13b2744e65` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4c2fbf0cd23fa492c51e2a93e0a3ede4b925dfe1` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4c7230c7a7187dab54b15ac5f1f72248e08ed1cf` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4ea810b3c80eecbc93d7773cccbd495d04b9fb68` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5124c94b95dead55930c5fe51581fd051473d415` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5132a726dff5e5f13e48515985bb23c23a639875` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x54816c21e3a3b9e4bcc86ec035c4f61e2814f5fb` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x57791b5257a8b95d6c0c0a6ad947ffecc5e77953` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5adbcd29207fe19c34a3eb40d174b79954c47af1` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5e6135931663326466affd918781fb939e1cca3f` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5f1fddff3cf8114d007bcfa7e6dec0b40b34817e` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5f358da1d944003f1da072675d2a094821d158d4` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x64a567a48207df60ef5fddf60a7641d53a69df97` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x67d3cd45ea37190509487bc1e68976440b594060` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6d51d6326d2c44d6b24d827a0ef790f825f400d5` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6eb2b5e5663416a23cdd7ce6ff397771e8e7a297` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6fd225246088183daac712c17c95b9a9b83f7302` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7816f25ec65a51f9c6b165616ef7916685c6e1df` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7c7e91070d4a3cb02386e1601b2cb1834052b773` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7f8e7b23ba4d118de4f63eebd6ac495089b23aa6` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x81c5f028207e3368bec7e93936e6b7f1aa06c0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x82be3f6fdab2ecd5a8a58df485cfcb927f7d146c` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x837a39ef2a128ac6f5e8048920aea7c42198561c` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8708d42a2a799756a6899ff1aab10a0938453e62` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8b0913272be1df187b19a15fe399887cc292dae2` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8cf4d929b3dd4e61a8493e6f7480eec975865b39` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8dd5f22102ddec3ff2ed5341d936365a813ef1fc` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8fb7ef983eafa0dc25f858140bc8cd016cad219b` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x972a6613ee7bb339ce81977105dea2e04b3931da` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x977cbdac62ba334c8df0e45281e00186c57e4315` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x986f5010d52d19b0dc9b2cf21a38fac6064a93e1` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9b6117f84ff76f23cb922e3f5ea33b985e9d1dfc` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9f4c8aeebac0a8a2abcd92df0c0cc4bd943fcabf` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9f66410b6f63f0b7d4462c3390440de801b7534f` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa09c81e6d96e07343d50be51df66cb0b126740fa` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa5aea69fed78d96627e49cf955e2b0385f4a9d5f` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa74dbe6ba5bed1634f958c8bf560dc39f67f88f8` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa80311479d164fcca1784c77bd6b2f8bdbbc9d55` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xad60dc5975b15de5a075c62dbe799228d1327bcc` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xae1ebca690c943d23e633c20e92d321590b573ca` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb2b98db66b27a28f4cb0968dc8a9153cfe1c4022` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb33f47f40e95ad2c08a902d0118ce298872116a5` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb488658be9e22d065a70d918d00b353b5c23993b` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb85719ba4cac16df97b92d0b3ec4cea799689a14` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbc47c2767cdeb5efa55b95a56d7c907d33315fb5` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbf747a0f9abe235e750f37da1857ea7d2aa84041` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbffb6285700bfc7aeead0f800d042c8d3061bc9c` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc5f8defc3d63f88012632b35f876b42924980b97` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc73a452f23b6d427c6bd087247e0bef15fee0286` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcc143fa98c46798cf5dff50de70c1f492262cc97` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcc6e6b258d99a74cb331bf2ea5758f08fe1dbb30` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd13cd0ac51892a302b1bba7005a8a5cc66a8d369` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd5223792c9176f12d31a6c2e7a91702f95aefbf8` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd575f4a516eb3ac0c97f0799200cbc3becfa6bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd626a0f5151a1cadcf692563deacebc78969021a` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd85867167b7fc9a7d8f73c176f3ff80bdf40f151` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xddf32193522bdfdd348d995b1f595f624cbd9ab0` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe28f970c92747acad9b05d97a592a06e9cbed0c9` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe388aac680662857fb4eab3d45446f2363ddb4a1` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe7355f6bb8b0a9ec77662f249de8c862b07424e5` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xea682577abaa50dab5bc971eae43903bf686a249` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xed1045fc7fb4480b0c92298dfa8bad7446e13735` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xee04ed6c66f138a685679ba1701c5b76b78401e5` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf6a3cc510088c29637c18ce20d132dd0fec9014f` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf88ca0424cc3708ec699efe73a1a22dd52713c8b` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf9836ab5bbf2891aca9bb4ad87852c7eb45e37a6` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfa896915851587316bc33ef2c0638a9806a778a1` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfba39b4cd051ca5bb8adbfece702dd4f16e26872` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfcf22a6141f0f0d68e085ee3bcc0227b8dd3c4ce` | non_address_book | unknown | unknown | unverified | n/a | `0x892a3fb7f210fee1b5da219596c526b68496d94f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report](https://www.dfyn.network/dfyn-v2-audit-report.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Yes, the contracts have been audited by Hacken, and the audit report can be found [here]().](https://www.dropbox.com/scl/fi/qauzvylh5p8midfxaw0bo/BYOF-Hacken-Audit.pdf?rlkey=8cz2o0mhw5l41yyljtd1r6vpe&dl=0) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DFYN RFQ QuillAudits.pdf](https://2846587992-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZNpkqBkemZoRMQq0J6%2Fuploads%2FyxL7wCObcAg4Ef5Rniir%2FDFYN%20RFQ%20QuillAudits.pdf) | QuillAudits | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [DFYN RFQ Zellic Audit.pdf](https://2846587992-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZNpkqBkemZoRMQq0J6%2Fuploads%2Fy2MrGKWRY8qDZpJq9Yhu%2FDFYN%20RFQ%20Zellic%20Audit.pdf) | Zellic | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19710] Audit Report — no match: Contracts extracted from findings sections; all are explicitly named in the report as audited files.
- [19711] Yes, the contracts have been audited by Hacken, and the audit report can be found [here](). — no match: The provided text is a Dropbox URL and a warning message, not the actual audit report content. No contract names or audit date could be extracted.
- [19712] DFYN RFQ QuillAudits.pdf — no match: Only one contract name 'dfyn-RFQ' is explicitly mentioned as the audited contract. No file paths or additional contract names provided.
- [19713] DFYN RFQ Zellic Audit.pdf — no match: Only one contract, DfynRFQ, is in scope. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report | ConcentratedLiquidityPool | unmatched — not counted | — | listed in findings | no |
| Audit Report | Vault | unmatched — not counted | — | listed in findings | no |
| Audit Report | MasterDeployer | unmatched — not counted | — | listed in findings | no |
| Audit Report | Farm | unmatched — not counted | — | listed in findings | no |
| Audit Report | LimitOrderManager | unmatched — not counted | — | listed in findings | no |
| Audit Report | DfynLPToken | unmatched — not counted | — | listed in findings | no |
| Audit Report | MixedRouteQuoterV1 | unmatched — not counted | — | listed in findings | no |
| Audit Report | ConcentratedLiquidityPoolFactory | unmatched — not counted | — | listed in findings | no |
| Audit Report | ConcentratedLiquidityPoolHelper | unmatched — not counted | — | listed in findings | no |
| Audit Report | DfynRouterV2 | unmatched — not counted | — | listed in findings | no |
| Audit Report | TickCounter | unmatched — not counted | — | listed in findings | no |
| Audit Report | SwapExcecuter | unmatched — not counted | — | listed in findings | no |
| Audit Report | DfynRouter | unmatched — not counted | — | listed in findings | no |
| DFYN RFQ QuillAudits.pdf | dfyn-RFQ | unmatched — not counted | — | listed in scope as 'Contract - dfyn-RFQ' and mentioned throughout the report | no |
| DFYN RFQ Zellic Audit.pdf | DfynRFQ | unmatched — not counted | — | listed in scope section 2.3 as the program name | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x150b4fd25c7c0c65301e86b599822f2feecc29e7` | DfynPricePrediction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 107 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [19710] Audit Report
- [19711] Yes, the contracts have been audited by Hacken, and the audit report can be found [here]().
- [19712] DFYN RFQ QuillAudits.pdf
- [19713] DFYN RFQ Zellic Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
