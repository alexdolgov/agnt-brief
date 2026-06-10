# Agentic Audit Brief: DeepLock

## Project Overview

- Project: DeepLock (`deeplock`)
- Lifecycle: active (Tier 0, 86.8% below peak)
- Generated: 2026-06-10T22:43:37.585Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: bsc
- Contract surface: 70 unique implementations (137 raw deployments)
- DeFi Llama TVL: $2,143,342.40
- On-chain TVL (included contracts): $56,173,110.00
- TVL by chain: Bsc $56,173,110.00

## Project Description

DeepLock is a BSC launchpad and liquidity-locking platform that provides tools for token launches, liquidity locking, token distribution, staking, and mining. Launched-token contracts, AMM pools, or other third-party ecosystem contracts should not be treated as DeepLock-owned protocol infrastructure unless independently verified.

### Architecture

The DeepLock family shares a common deployer cluster and infrastructure, with core contracts like DeepLockLocker and DeepLockLPMining interacting with various token and liquidity pool contracts. These supporting contracts represent launched tokens and their associated AMM pools, all integrated into the launchpad ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/38 (0.0%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 70
- Raw deployments: 137
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $56,173,110.00
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenMintERC20Token | token | bsc | [`0xd43b22...eb5d47`](./contracts/bsc-56/0xd43b226d365d8b22ba472afc2fa769b356eb5d47/) | ⚠️ Unaudited |
| ALPHAGOAT | unknown | bsc | [`0x317205...56b44c`](./contracts/bsc-56/0x3172057a27b0dbc48a99b8fe2222c4535d56b44c/) | ⚠️ Unaudited |
| ANON_INU_COIN | unknown | bsc | [`0x64f367...b54147`](./contracts/bsc-56/0x64f36701138f0e85cc10c34ea535fdbadcb54147/) | ⚠️ Unaudited |
| BabyDogeShiba | unknown | bsc | [`0x4caaaf...df58c8`](./contracts/bsc-56/0x4caaaf84ec2b7106b1679aeb1d677e298adf58c8/) | ⚠️ Unaudited |
| BatCoin | unknown | bsc | 2 deployments: bsc [`0xa6467d...aab088`](./contracts/bsc-56/0xa6467d83a32452ab9091ca4e8edc3831f8aab088/); bsc `0xe2ed1a...62b7d9` | ⚠️ Unaudited |
| BEP20Token | token | bsc | 2 deployments: bsc [`0x89313f...c1b20a`](./contracts/bsc-56/0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a/); bsc `0xa3f0a9...cfa514` | ⚠️ Unaudited |
| BluePill | unknown | bsc | 3 deployments: bsc [`0x710895...e7feec`](./contracts/bsc-56/0x7108955947e352b351c4bb20b0a31a3598e7feec/); bsc `0x711b1d...e632c0`; bsc `0xbd2312...e19c2b` | ⚠️ Unaudited |
| BluePooCake | unknown | bsc | 2 deployments: bsc [`0x19024b...a79be3`](./contracts/bsc-56/0x19024b0ed8d4e4d5cbf7dfa94a82804bc9a79be3/); bsc `0x2e09c4...7bea86` | ⚠️ Unaudited |
| CoinToken | token | bsc | 3 deployments: bsc [`0x6396f9...075896`](./contracts/bsc-56/0x6396f960d14d285e70f9e8dc44452ccff7075896/); bsc `0xa27cf3...100e15`; bsc `0xf919ea...245a4b` | ⚠️ Unaudited |
| Crowdsale | unknown | bsc | [`0x97c232...531696`](./contracts/bsc-56/0x97c232aab414a5aa766e9aa56ffe692ed5531696/) | ⚠️ Unaudited |
| DeepAirdropStaking | operational_periphery | bsc | [`0x7f42b4...27bd2a`](./contracts/bsc-56/0x7f42b448665c736fe827911c65a759d4bc27bd2a/) | ⚠️ Unaudited |
| DeepLock | unknown | bsc | 2 deployments: bsc [`0x60de5f...aaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/); bsc `0x649024...b2c382` | ⚠️ Unaudited |
| DeepLockLocker | unknown | bsc | 2 deployments: bsc [`0x10dd7f...94b257`](./contracts/bsc-56/0x10dd7fd1bf3753235068ea757f2018dfef94b257/); bsc `0x3f4d6b...a4551e` | ⚠️ Unaudited |
| DeepLockLPMining | unknown | bsc | 4 deployments: bsc [`0x03dab6...941250`](./contracts/bsc-56/0x03dab688d32507b53cc91265fa47760b13941250/); bsc `0x27f33d...28758e`; bsc `0x311542...f6bfd1`; bsc `0xf72b52...d2f2a8` | ⚠️ Unaudited |
| DeepLockPrivatePresale | unknown | bsc | [`0x4095dc...19b276`](./contracts/bsc-56/0x4095dc2c9c1a2d2677b29dc3f5d69b436a19b276/) | ⚠️ Unaudited |
| DMMPool | core_logic | bsc | [`0xc0600c...3bbbac`](./contracts/bsc-56/0xc0600c41273e71dc8736c5e2128c7979ce3bbbac/) | ⚠️ Unaudited |
| DVM | unknown | bsc | 2 deployments: bsc [`0xa61242...ec1a69`](./contracts/bsc-56/0xa6124221ed6d2e2f18da78c3cce6f52a8eec1a69/); bsc `0xf2abb9...539c89` | ⚠️ Unaudited |
| Elonmoon | unknown | bsc | [`0x03a3cd...451081`](./contracts/bsc-56/0x03a3cda7f684db91536e5b36dc8e9077dc451081/) | ⚠️ Unaudited |
| GRV | unknown | bsc | [`0x1337ac...6148b5`](./contracts/bsc-56/0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5/) | ⚠️ Unaudited |
| HelloBEP20 | unknown | bsc | 47 deployments: bsc [`0x001257...7f815e`](./contracts/bsc-56/0x0012578b1d491213ac46757a9df83c080d7f815e/); bsc `0x187374...962ff6`; bsc `0x1dc118...a8cbe5`; bsc `0x20c5ad...661dcf`; bsc `0x25ca25...c7999e`; bsc `0x25f4a0...aea194`; bsc `0x29cb3c...b9538a`; bsc `0x2a8b0e...d82902`; bsc `0x2e145e...cb908e`; bsc `0x338a71...b3b159`; bsc `0x35b95e...512b21`; bsc `0x417827...ba6b73`; bsc `0x4471da...9aef28`; bsc `0x52d0ae...ba572d`; bsc `0x55c346...c451cd`; bsc `0x59ee79...048184`; bsc `0x618ecb...928a0a`; bsc `0x72bc54...44465e`; bsc `0x7889aa...9d1be2`; bsc `0x7a73f7...8c5f0f`; bsc `0x85188c...9d9408`; bsc `0x8a1532...6a64b9`; bsc `0x8a422a...9af95a`; bsc `0x8df5ad...37e851`; bsc `0x90a36b...54bb5a`; bsc `0xa0debf...3f18ff`; bsc `0xa33753...0f5102`; bsc `0xa51572...2898ca`; bsc `0xb55ed2...5b3982`; bsc `0xb9744b...5cd44c`; bsc `0xc4df32...7940b3`; bsc `0xc5ba36...901fa0`; bsc `0xca87e0...2c8660`; bsc `0xccd131...49edb7`; bsc `0xd1bf81...a53e81`; bsc `0xd6a600...17bbd0`; bsc `0xd9caa9...57328c`; bsc `0xdb0b17...53d8a3`; bsc `0xdb2b8d...bbe03a`; bsc `0xdefb2e...6f8f34`; bsc `0xe0f763...b5cf1d`; bsc `0xe53df7...a40d22`; bsc `0xe89ac3...f060cf`; bsc `0xe99667...e55975`; bsc `0xeceb4b...49d0a1`; bsc `0xeed6e6...3ba0fd`; bsc `0xf0e380...22c062` | ⚠️ Unaudited |
| LiteCoinPro | unknown | bsc | [`0x7963de...1ad8fa`](./contracts/bsc-56/0x7963deca5ec22ffc4629f4767de372e1c81ad8fa/) | ⚠️ Unaudited |
| LuckyPower | unknown | bsc | [`0x9f0eec...c62e77`](./contracts/bsc-56/0x9f0eec882f958cbeef99cab17ea3cf5909c62e77/) | ⚠️ Unaudited |
| MagnetRise | unknown | bsc | [`0xa8ee9d...2b61e6`](./contracts/bsc-56/0xa8ee9d3883f3e3502c9f047b86b383f7562b61e6/) | ⚠️ Unaudited |
| MarketOracle | operational_periphery | bsc | 5 deployments: bsc [`0x00b2d4...a1f89c`](./contracts/bsc-56/0x00b2d45ad41578617914ac6115b0e2d3b4a1f89c/); bsc `0x54f9df...4b23f1`; bsc `0x87d22f...70ef86`; bsc `0xb4478c...bd9c17`; bsc `0xf435a7...e49e39` | ⚠️ Unaudited |
| Master | unknown | bsc | [`0xc853c4...3ee250`](./contracts/bsc-56/0xc853c499c62a251be921e93eb5029926323ee250/) | ⚠️ Unaudited |
| MONSTERLPAD | unknown | bsc | [`0x5880a0...fd7b0f`](./contracts/bsc-56/0x5880a0aebd1af8c68497088293ca548c63fd7b0f/) | ⚠️ Unaudited |
| Mooniswap | unknown | bsc | [`0x168926...e1f2a4`](./contracts/bsc-56/0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4/) | ⚠️ Unaudited |
| Moonpro | unknown | bsc | [`0xd4c6aa...86dba4`](./contracts/bsc-56/0xd4c6aa84199dfe7becd0697da5a223ca0586dba4/) | ⚠️ Unaudited |
| NewCommunitySLP | unknown | bsc | [`0x17a273...972d0a`](./contracts/bsc-56/0x17a273794516390043814059dc7f29f789972d0a/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | 2 deployments: bsc [`0x596e48...e2a9e3`](./contracts/bsc-56/0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3/); bsc `0xc1fccf...704094` | ⚠️ Unaudited |
| PinkMoon | unknown | bsc | [`0x76323c...ddbc03`](./contracts/bsc-56/0x76323cb86a984c9c2a514817fe08c126b8ddbc03/) | ⚠️ Unaudited |
| RedPill | unknown | bsc | 3 deployments: bsc [`0x187d76...9ed916`](./contracts/bsc-56/0x187d765829b5570c964f4b551d26d5745f9ed916/); bsc `0x385e6f...344bd6`; bsc `0xf841df...f64dfb` | ⚠️ Unaudited |
| Rocketshark | unknown | bsc | [`0xe18af4...1d1cea`](./contracts/bsc-56/0xe18af4897e0fa706ca65ffefef24e5f8ee1d1cea/) | ⚠️ Unaudited |
| RPS | unknown | bsc | 2 deployments: bsc [`0x486dcc...8f6bec`](./contracts/bsc-56/0x486dccaf152b271630216d62c00188f2558f6bec/); bsc `0x7d5de1...752045` | ⚠️ Unaudited |
| SamuraiShiba | unknown | bsc | [`0x347c5b...bcef07`](./contracts/bsc-56/0x347c5b51449074c5487cc193459c5babeebcef07/) | ⚠️ Unaudited |
| SimpleBEP20 | unknown | bsc | [`0xffc85d...0fd511`](./contracts/bsc-56/0xffc85da016e5f307bbcf2e370a11ab5e460fd511/) | ⚠️ Unaudited |
| StandardBEP20 | unknown | bsc | [`0x8d98a4...95ddff`](./contracts/bsc-56/0x8d98a4e36ca048b8e4616564e5a8ebb78895ddff/) | ⚠️ Unaudited |
| TokenTimelock | governance | bsc | [`0x698cfd...da4f30`](./contracts/bsc-56/0x698cfd0f4536e73a78b4db4478c4a166a7da4f30/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x0013ef...e05629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x00dc64...5651c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x03592a...951274` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x111078...835cc9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x231656...4ba646` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x290183...cad9ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x32be48...5be99f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3ac944...deb965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3d229b...83edc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3e98d3...beb7be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3f37d9...dbba5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47f6c1...518d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x484a43...5a4ff3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5fa440...8a3c79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x67cd84...1037b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a963c...631ac8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x77c0f9...ba5460` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x850195...86ee7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x85a587...f5cbf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x865b95...fa4b6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x96556d...fa102a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9ad498...21c480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xad59fa...05ca97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc2e4be...0814ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc8c6dd...3616a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce80ab...50c909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd364cc...a73ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9aec5...32c140` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdde9e8...1735f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe6301c...2f24ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed7749...97b51c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xedf0a4...401548` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x97c232...531696`](./contracts/bsc-56/0x97c232aab414a5aa766e9aa56ffe692ed5531696/) | Crowdsale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f42b4...27bd2a`](./contracts/bsc-56/0x7f42b448665c736fe827911c65a759d4bc27bd2a/) | DeepAirdropStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x60de5f...aaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/) | DeepLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10dd7f...94b257`](./contracts/bsc-56/0x10dd7fd1bf3753235068ea757f2018dfef94b257/) | DeepLockLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03dab6...941250`](./contracts/bsc-56/0x03dab688d32507b53cc91265fa47760b13941250/) | DeepLockLPMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4095dc...19b276`](./contracts/bsc-56/0x4095dc2c9c1a2d2677b29dc3f5d69b436a19b276/) | DeepLockPrivatePresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc853c4...3ee250`](./contracts/bsc-56/0xc853c499c62a251be921e93eb5029926323ee250/) | Master | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4c6aa...86dba4`](./contracts/bsc-56/0xd4c6aa84199dfe7becd0697da5a223ca0586dba4/) | Moonpro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x187d76...9ed916`](./contracts/bsc-56/0x187d765829b5570c964f4b551d26d5745f9ed916/) | RedPill | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xffc85d...0fd511`](./contracts/bsc-56/0xffc85da016e5f307bbcf2e370a11ab5e460fd511/) | SimpleBEP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x698cfd...da4f30`](./contracts/bsc-56/0x698cfd0f4536e73a78b4db4478c4a166a7da4f30/) | TokenTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 21 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
