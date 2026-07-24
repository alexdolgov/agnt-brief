# Agentic Audit Brief: Rain

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Rain (`rain`)
- Website: [https://www.rain.one/](https://www.rain.one/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 36 unique implementations (134 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $29,513,996.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Rain. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa8640b62d755e42c9ed6a86d0fc65ce09e31f264`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 33 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 1 of 36 unique; 35 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 36
- Raw deployments: 134
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
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
| AccessControlFacet | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08d5de6df06755d23730b7c79d4a43f78325c9a9` | ⚠️ Unaudited |
| AppStorageFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf33a30106b6448638b6ef09ee8a867bf245b09e8` | ⚠️ Unaudited |
| CancelOrderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x0921fd1248a20b371b3eeaf58c7e51d246ba84d7`; arbitrum `0x28bb2b7ebaa425a6b9cddd510d57c7dc2ad71d15`; arbitrum `0x459da9e9e9763cb460b010f123a70d2521f307d4`; arbitrum `0x58bf2b39d621501d95c2207b3a0154015c35ed9b`; arbitrum `0x7560cbcf519170f560cf8e8f6d9b7aeb61c566ce`; arbitrum `0x89f6c696dd3c5d4c5998b129cadad58f7a0ba0fc`; arbitrum `0x9b92f2c03e785810af2ef36876a02d0737e8f8d2`; arbitrum `0xb453ac3fec3b0ae5700a7dbb7d37b5c94c7a00e0`; arbitrum `0xcd7647005cadf9280f85e797784b0460254b4b56` | ⚠️ Unaudited |
| ClaimFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x38d3d0c3cd1c58d72941e923a983abf6eb2b5a52`; arbitrum `0x3e4ac135fa7c265f994db56d4a4ac172e20193a3`; arbitrum `0x53099b2cb3b9c09a59f51bbe90d2173e5c1546fa`; arbitrum `0x67176ebf110cc1c7c0fe45431b7fe2627741fec2`; arbitrum `0x6ca2ce9c9dde3d7f7df1dca9fe0714a5ebdda3d9`; arbitrum `0x8aa370bdc523b3786d8e6266dd959d885940a840`; arbitrum `0xbe17a4015c063ab11d38d463ad579265ee3aa6f2`; arbitrum `0xdcc4e0af333a4f33b78137bf7155ec587689b0f1`; arbitrum `0xe1ef152f8832901900274c46601a7694b21a4656` | ⚠️ Unaudited |
| Conduit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x106ac39ad87d0294dbbbf25167898b498b143bae` | ⚠️ Unaudited |
| Conduit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x177d2fc09efbce70ec80af45a44a43089405a91f`; arbitrum `0xe4de948d0c78ca1493ce0afd33c0775f116dd731` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x03cfee1e3388c58e988ac84b0129c305828d2818`; arbitrum `0x1cbeba3424d4bef9a18a8276f418a4dbed5f0b20`; arbitrum `0x31c463586fbd3fd37b9053783f830cebcdd90c47`; arbitrum `0x3535deb65860e55e9d6b3056f069c74502659839`; arbitrum `0x487c50cd744ee808a8b74dba3239737e4920c4af`; arbitrum `0x7593f76f82a7164e348045717736e3b14c4d07f7`; arbitrum `0x78d3ffc624ac69ba1821d7118712e37459ab65ff`; arbitrum `0x93edbc9efb5695ef769ae5c27bef0e4adc406c50`; arbitrum `0x9aa7a6ed672eb3883edf2a202c10a193fe0cb90c`; arbitrum `0xb55207f0dbbcb6c237c41726ab88172f021bcb89` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cc83934b0a785e6b9863f7328c2f9fbe1714231` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0x002c695d2872d7ab57d496ad9cc391a3fdab5250`; arbitrum `0x06a437eeaf87d6cc74ceb689e277cf63f7c270ad`; arbitrum `0x8126dc47d8d392879a905f1e488b748e57794c77`; arbitrum `0xc593142e4432cd2dd456a311a786be319518f607`; arbitrum `0xc5f5738cee88f510730d07e9b22cf8de028dbc14`; arbitrum `0xc69016b2e1dfc29b31efcde76a9c0aa37536ee35`; arbitrum `0xce73e0a70ced738fac2a073c5887f4a39e0d164b`; arbitrum `0xd456de8e1ba9c4bada2c25db81a0f7d8a14f0a1f`; arbitrum `0xd621f8c1f014ccce5bc358afda6f79691f573531`; arbitrum `0xeae50b86c7cbdc1af6288a7196794e9286ce020a` | ⚠️ Unaudited |
| DisputeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x058d7dfefe0b13dbe00cfbbd2cbe04d47188bf68`; arbitrum `0x3224e7fb56c2f78d8b0b635a40fdf71393409744`; arbitrum `0x3f57586039387e52a342737044550cd541a858f2`; arbitrum `0x461b4b5c16cb1258f1b49b500276ff3197ba257c`; arbitrum `0x61b80304de865c83156fe1df83344bb2ffd0baa8`; arbitrum `0x95716c1f3f72f91008c678f1eca1cacfc0cfe8de`; arbitrum `0xb0da34c8795105b6df43ed8c1cb6acb6a1298ec5`; arbitrum `0xda29a919af3d84d3b8b8f5f7421b77bf11b55399`; arbitrum `0xff4e162203cebfe462199eda0552dab05e7d65f2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xcccb3c03d9355b01883779ef15c1be09cf3623f1` | ⚠️ Unaudited |
| GetterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x1ea6ecb3463877f3f6abe98f7109097f7a90ec38`; arbitrum `0x204103520804d1bbf1f370a25a555d5b3ec495b7`; arbitrum `0x2d2e23289cde393b00de26a0f4a10d9f03a2f41d`; arbitrum `0x35e25d4156466be5eeb5dcf1359318e33f76345a`; arbitrum `0x3991230a949c7c269300e4586fb6902b43292a9b`; arbitrum `0x3b578bc61b3a06989f7b742a800dc9fdbf893cc2`; arbitrum `0x78d58a719f497ea5b2090b7b0d048ad9a0d8154e`; arbitrum `0x8c608465b7b5c83776e1563e107ac6a1281a7343`; arbitrum `0xfeb0c9c6922388e538a7ee7c88e07e13fe3d78d9` | ⚠️ Unaudited |
| HelperFacet | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32bcb5b172badd45cfbbe4504d0e21ef27426b4c` | ⚠️ Unaudited |
| InfoFacet | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x0ab66d9b24e8f15025e588c7fa8655ec1a9878a2`; arbitrum `0x43a98b17bc565132663d9336b38c5ed6228115d7`; arbitrum `0x5adc4e9c5e9c796df3b0ed4a51f644e320e02f26`; arbitrum `0x9fac123f86825d060186cca052a9298104bfe820`; arbitrum `0xbf97267bdd7cc7ab276f2df0ace7aacdafa044b5`; arbitrum `0xc67b3010eac8208bc13efd125b9d5bb9886c0c01`; arbitrum `0xd656245a28ccadc09f33b013081dff8b402fea98`; arbitrum `0xe155635b4357f977dd5e64bb4cec23e2aa71bef5`; arbitrum `0xf4341d2334c5ca5a6784897d36c5513baf89ed67` | ⚠️ Unaudited |
| MarketTerminationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe669656a3e300260a89be50c83a255bcd9ed052` | ⚠️ Unaudited |
| MarketThresholdFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51a8c582a52d089b6160bce38bb3e62622067d59` | ⚠️ Unaudited |
| MetadataFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1260e79c65d5cec02c4aca63b9fe000a69d251bf` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe45ceeb4f1c2cf4c702bb7183efa75f51e2a46d0` | ⚠️ Unaudited |
| OracleFeeFacet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x267c800b7701e3feae0d7d259ba6481692d9314b`; arbitrum `0x692219b602e8bf0bc32890589aa5657ad5278e33`; arbitrum `0x79927634e6f89fbab125d7d9810ef735b1029a3f`; arbitrum `0x912529d7e92ac51d75466bb7a75ab9f5d74160f7`; arbitrum `0xb9d4bfa252cd082e3d2ee6538207ee19a21cab80`; arbitrum `0xcd819ab46dce5996beddab415a16b15f51fe76e8`; arbitrum `0xcdbceadc8405cddf73665e96f22c03dc5d0d3bd7`; arbitrum `0xd99eed9f5b9610b4381612b45bcb9e890f0f91de`; arbitrum `0xf91094b48ca5254713fedfa8faedf1e2fe64f61d` | ⚠️ Unaudited |
| PausableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x459a994233488a448a4c4e086a56b1e609873649` | ⚠️ Unaudited |
| QueueFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f20d43ddcf14bbe6ddeeda60618808eec81416a` | ⚠️ Unaudited |
| Rain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x25118290e6a5f4139381d072181157035864099d` | ⚠️ Unaudited |
| Rain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b6f8622607fa837b27293258548a9fc3b85ddad` | ⚠️ Unaudited |
| RainDecisionDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e25b638c778dec7cbf42c6494ea99394aa5d96a` | ⚠️ Unaudited |
| RainDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x16d071c5d21d0090b3829b569f9482f52a1aa686`; arbitrum `0x5fbe396eed2dde3da4ba2b17608b250aaa042814`; arbitrum `0x74d2b5e65c1097145a85c33d7b68d6b042ffe61c`; arbitrum `0x9c7fa995a8780e929779f43cfacea11b6eb8e694`; arbitrum `0xa2849e4db96205e75c2ca1736f0d8a879f0191c9`; arbitrum `0xbc38481305e60257b4fd29c7ccc37762f2a9a4e1` | ⚠️ Unaudited |
| RainDiamondFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x153b100927bb9afd796f13955f73120e4da5a1fe`; arbitrum `0x209dd3f33d4aea8c7778d215258ac7139f0b35ee`; arbitrum `0x71b8b42733f20f523edb7681c9218c1775613b1d`; arbitrum `0x7af3a1147c8013f47a701b18d3d17ec92a0da82a`; arbitrum `0x7b4f2ecacdeb8543c0af85945d4ff027c259d9f8`; arbitrum `0xa9ff29273801df0466fbc0cc09ec4d3c6415feea`; arbitrum `0xbe520f3e87d5c71d149e8441b479a1e0f9ee16da`; arbitrum `0xe5a92b7a6ba1b59621689e4d56b1a199457b7776`; arbitrum `0xee4760204e04b4f7814187ecd7b5d3ba17c6e54e` | ⚠️ Unaudited |
| RainPoolDiamond | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a368244019146427f7243f9875f82a99ce03b32` | ⚠️ Unaudited |
| RandomNumberService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x43f7fedcb8de1b82976c3a355598e7d0924a61bd`; arbitrum `0xcb3c3ededf91b7f2befff0c73a4c072f45cb13ec` | ⚠️ Unaudited |
| RandomNumberService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8e4fd92a32036201ad38b4ccf37ebda72e6ad086`; arbitrum `0xdc85fca5915abc1e621ffaac3ab3e812bc50e224` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3783c98c39c48750d92a7086d3eacbd231ef26b5` | ⚠️ Unaudited |
| Reservoir | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d65a08baa7f9109f1307dcc978228de0f44b144` | ⚠️ Unaudited |
| ResolutionFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x16dc011486d897e76bb239896694ff878b5ae889`; arbitrum `0x17182c0b525bc94d45f8d1a8f425ae2cf45a90f9`; arbitrum `0x61b09c9ea08575f91fff6de32bf3579dff05d572`; arbitrum `0x8c8a094672f7c37828d11ebcee8ffe536b67d3e3`; arbitrum `0x8d60ea1c022d081ca557fc2f28300e05feb7a4b6`; arbitrum `0x9103318e67f8ad643fee89a5d18c5cadf1af8682`; arbitrum `0xb8859f721f7140aab5ce617ce94c4320e6308ef4`; arbitrum `0xcf5ba38aa1d2a1e24fa4021aef023c3f7116b874`; arbitrum `0xef9f3cb05efa5a3fadfe5108b8043d5e73a76544` | ⚠️ Unaudited |
| TradingFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x165f692cddd35ca514dbc28aa25a4fec15dd1bf2`; arbitrum `0x231dac1f7943014b4d23885411cffded33821b69`; arbitrum `0x299e09595881e3ea0f6e4e9326f60730543ceffc`; arbitrum `0x39066944292f14c0e9f453a53e11fafc929ca0c0`; arbitrum `0x719926ee80ab781fc78da0bb2b00eb7852992fa6`; arbitrum `0xa0ce8c008a29ac3942cef1e9f0abfe9fdd8113bb`; arbitrum `0xd419fcf882e39233783376fe2a4a5ada3563bf22`; arbitrum `0xd9329b1881bc2667e4cb7ab9ac37dadbff0e42ce`; arbitrum `0xee1682cf706557a936c6ca4a84a4742f79cfbdc7` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-391275 | `0xa8640b62d755e42c9ed6a86d0fc65ce09e31f264` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-391274 | `0x05b1fd504583b81bd14c368d59e8c3e354b6c1dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-391276 | `0xd4900ca167228365806fba4cb21f7eae8b6d96be` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 3
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=2, source verified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | ERC1967Proxy<br>`0x8e4fd92a32036201ad38b4ccf37ebda72e6ad086` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1b506e02cbeb49010b482f95f8144d00d98446e9` |
| arbitrum | source verified unclassified | RandomNumberService<br>`0xdc85fca5915abc1e621ffaac3ab3e812bc50e224` | non_address_book | unknown | unknown | verified | n/a | `0x1b506e02cbeb49010b482f95f8144d00d98446e9` |
| arbitrum | candidate review | ERC1967Proxy<br>`0x25118290e6a5f4139381d072181157035864099d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbd80a63799176d0922ce251072a00b8c75ecc331` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hacken.io/audits/rain/sca-rain-token-aug2025](https://hacken.io/audits/rain/sca-rain-token-aug2025) | Hacken | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2735] hacken.io/audits/rain/sca-rain-token-aug2025 — no match: Only one contract in scope: RainToken.sol

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hacken.io/audits/rain/sca-rain-token-aug2025 | RainToken | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2735] hacken.io/audits/rain/sca-rain-token-aug2025

Fork inheritance lineage and inherited audits are included when available.
