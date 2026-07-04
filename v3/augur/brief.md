# Agentic Audit Brief: Augur

## Project Overview

- Project: Augur (`augur`)
- Website: [https://augur.net/](https://augur.net/)
- Lifecycle: active (Tier 0, 90.5% below peak)
- Generated: 2026-07-03T21:05:31.850Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 102 unique implementations (110 raw deployments)
- DeFi Llama TVL: $1,260,713.35
- On-chain TVL (included contracts): $4,454,398.26
- TVL by chain: Ethereum $4,454,398.26

## Project Description

Prediction Market. Structurally: 73 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 5 functional families. Its contracts share 18 common project-authored base contract(s) (iownable, delegationtarget, controlled). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 145; live-surface contracts included: 110 (55 live, 55 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/47 (8.5%)
- Deployed-live implementations: 47 of 102 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/47
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 55
- Unique implementations: 102
- Raw deployments: 110
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $4,454,398.26
- Latest audit: 2018-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 4.3% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zeppelin | Tier 2 | 4 | 8.5% | 2018-03 |
| LeastAuthority | Tier 2 | 3 | 6.4% | 2017-12 |
| ChainSecurity | Tier 1 | 2 | 4.3% | 2017-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CancelOrder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x344820...1e3aaf`](./contracts/ethereum-1/0x3448209268e97652bb67ea12777d4dfba81e3aaf/); ethereum `0x465bf8...cfb0d0` | ✅ Audited |
| ClaimTradingProceeds | unknown | ethereum | n/a | [`0x433447...07872a`](./contracts/ethereum-1/0x4334477348222a986fc88a05410aa6b07507872a/) | ✅ Audited |
| Market | unknown | ethereum | n/a | [`0x380070...d8ce01`](./contracts/ethereum-1/0x380070670fb427ae8070631eef6f2d0824d8ce01/) | ✅ Audited |
| Universe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49244b...46e5aa`](./contracts/ethereum-1/0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa/); ethereum `0xfbcd5e...a400ff` | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ReputationToken | token | ethereum | n/a | 2 deployments: ethereum [`0x221657...f5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/); ethereum `0x6c114b...7e43d1` | ⚠️ Unaudited |
| Augur | unknown | ethereum | n/a | [`0x75228d...551599`](./contracts/ethereum-1/0x75228dce4d82566d93068a8d5d49435216551599/) | ⚠️ Unaudited |
| CaptureTheFlag | unknown | ethereum | n/a | [`0x2faf44...006396`](./contracts/ethereum-1/0x2faf4460ff24799b4e999363f4060879f5006396/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9b4af4...ee960e`](./contracts/ethereum-1/0x9b4af4a3295cf476a2b00736f7332f35bbee960e/); ethereum `0xd55241...76b96b` | ⚠️ Unaudited |
| CompleteSets | unknown | ethereum | n/a | [`0xa6bff4...afe5ab`](./contracts/ethereum-1/0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab/) | ⚠️ Unaudited |
| Controlled | unknown | ethereum | n/a | [`0x6da4e6...66759c`](./contracts/ethereum-1/0x6da4e67755fb48e26af50915991f57665f66759c/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0xb33371...0ff3e7`](./contracts/ethereum-1/0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7/) | ⚠️ Unaudited |
| CreateOrder | unknown | ethereum | n/a | [`0x7f27b0...e97999`](./contracts/ethereum-1/0x7f27b0598949dbf9e539bbd217f15bf3f5e97999/) | ⚠️ Unaudited |
| Delegator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10b558...e15806`](./contracts/ethereum-1/0x10b5589fc6922f5c27061ac79ad9a4af35e15806/); ethereum `0xd7a140...db74d2` | ⚠️ Unaudited |
| DisputeCrowdsourcer | unknown | ethereum | n/a | [`0x183614...c8d360`](./contracts/ethereum-1/0x183614d40cee16bf6fcd9dff51556f398ec8d360/) | ⚠️ Unaudited |
| DisputeCrowdsourcerFactory | unknown | ethereum | n/a | [`0x1be986...733bf7`](./contracts/ethereum-1/0x1be98680ff697390cbc4cdc414a1be8add733bf7/) | ⚠️ Unaudited |
| Exchange | unknown | ethereum | n/a | [`0x61935c...93b7ef`](./contracts/ethereum-1/0x61935cbdd02287b511119ddb11aeb42f1593b7ef/) | ⚠️ Unaudited |
| Exchange | unknown | ethereum | n/a | [`0xb27f1d...1400c0`](./contracts/ethereum-1/0xb27f1db0a7e473304a5a06e54bdf035f671400c0/) | ⚠️ Unaudited |
| FeeToken | unknown | ethereum | n/a | [`0xe0dfed...e6e2de`](./contracts/ethereum-1/0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de/) | ⚠️ Unaudited |
| FeeTokenFactory | unknown | ethereum | n/a | [`0xe86a4b...e808a8`](./contracts/ethereum-1/0xe86a4beb10155a5bd7ebb430ce13438341e808a8/) | ⚠️ Unaudited |
| FeeWindow | unknown | ethereum | n/a | [`0x56cc82...061881`](./contracts/ethereum-1/0x56cc82bbb3049dc3366bf26061d09ed3fd061881/) | ⚠️ Unaudited |
| FeeWindowFactory | unknown | ethereum | n/a | [`0x5b4140...c5b663`](./contracts/ethereum-1/0x5b4140771615b25f22a4bf52f77e35cdccc5b663/) | ⚠️ Unaudited |
| FillOrder | unknown | ethereum | n/a | [`0x39c230...bd0303`](./contracts/ethereum-1/0x39c230f89981274177e79708c921582bd4bd0303/) | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | n/a | 3 deployments: ethereum [`0x132a04...cefa9a`](./contracts/ethereum-1/0x132a04f3f6196b499a7ed512c15e002d5dcefa9a/); ethereum `0x4699d5...f24f53`; ethereum `0x4ef40d...dbc5ce` | ⚠️ Unaudited |
| InitialReporter | unknown | ethereum | n/a | [`0x4fa2b6...fcde6d`](./contracts/ethereum-1/0x4fa2b609c19edf731ec33f54f54602a92dfcde6d/) | ⚠️ Unaudited |
| InitialReporterFactory | unknown | ethereum | n/a | [`0xbca52c...0f4c59`](./contracts/ethereum-1/0xbca52c29b535fd63bdc7ca35efa56116550f4c59/) | ⚠️ Unaudited |
| Mailbox | unknown | ethereum | n/a | [`0x4dcb58...4b3b66`](./contracts/ethereum-1/0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66/) | ⚠️ Unaudited |
| MailboxFactory | unknown | ethereum | n/a | [`0xe33ca1...763540`](./contracts/ethereum-1/0xe33ca1ebb783343035b11a7e755c29c28b763540/) | ⚠️ Unaudited |
| Map | unknown | ethereum | n/a | [`0x94c014...0763d9`](./contracts/ethereum-1/0x94c01429d67a275de013e457eff6e028e10763d9/) | ⚠️ Unaudited |
| MapFactory | unknown | ethereum | n/a | [`0x67f53b...86777e`](./contracts/ethereum-1/0x67f53b749fe432274e3f53752a91da89ef86777e/) | ⚠️ Unaudited |
| MarketFactory | unknown | ethereum | n/a | [`0x518530...7494ee`](./contracts/ethereum-1/0x518530aca60154403012f17c7b8e26f88f7494ee/) | ⚠️ Unaudited |
| Orders | unknown | ethereum | n/a | [`0xd0ba86...83191a`](./contracts/ethereum-1/0xd0ba8692bc945efe0638313cab40ab8e4f83191a/) | ⚠️ Unaudited |
| OrdersFetcher | unknown | ethereum | n/a | [`0xa97a3e...b2e692`](./contracts/ethereum-1/0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692/) | ⚠️ Unaudited |
| Penalizer | unknown | ethereum | n/a | [`0x67c6e8...e768fa`](./contracts/ethereum-1/0x67c6e83f247fa404708a09032475eda551e768fa/) | ⚠️ Unaudited |
| RelayHub | unknown | ethereum | n/a | [`0x5648b6...ee0db5`](./contracts/ethereum-1/0x5648b6306380689af8d2de7bdd23d916b9ee0db5/) | ⚠️ Unaudited |
| ReputationTokenFactory | unknown | ethereum | n/a | [`0x8fee0d...9a3643`](./contracts/ethereum-1/0x8fee0da3a35f612f88fb58d7028d14c7d99a3643/) | ⚠️ Unaudited |
| ShareToken | unknown | ethereum | n/a | [`0x2a21d9...f14663`](./contracts/ethereum-1/0x2a21d90745dfed999aa0b6e08d648855c5f14663/) | ⚠️ Unaudited |
| ShareTokenFactory | unknown | ethereum | n/a | [`0x60a977...50e51d`](./contracts/ethereum-1/0x60a977354a6ba44310b2ee061bcf19632450e51d/) | ⚠️ Unaudited |
| StakeManager | unknown | ethereum | n/a | [`0x5ae81a...3141ea`](./contracts/ethereum-1/0x5ae81a75aa2ea4647a31f099c239bc76433141ea/) | ⚠️ Unaudited |
| TestPaymasterEverythingAccepted | unknown | ethereum | n/a | [`0xf50b17...7476c7`](./contracts/ethereum-1/0xf50b17a7ca64447ae782dc6c4aabe992c37476c7/) | ⚠️ Unaudited |
| Time | unknown | ethereum | n/a | [`0xe9f0e0...2fc527`](./contracts/ethereum-1/0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527/) | ⚠️ Unaudited |
| Trade | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cd32f...915667`](./contracts/ethereum-1/0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667/); ethereum `0x24e2b1...3ca6cd` | ⚠️ Unaudited |
| TradingEscapeHatch | unknown | ethereum | n/a | [`0x9e130e...9e0d13`](./contracts/ethereum-1/0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | ethereum | n/a | [`0x5c69be...c5aa6f`](./contracts/ethereum-1/0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xa478c2...33eb11`](./contracts/ethereum-1/0xa478c2975ab1ea89e8196811f51a7b7ade33eb11/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0x7a250d...f2488d`](./contracts/ethereum-1/0x7a250d5630b4cf539739df2c5dacb4c659f2488d/) | ⚠️ Unaudited |
| UniverseFactory | unknown | ethereum | n/a | [`0xe62e47...01bb95`](./contracts/ethereum-1/0xe62e470c8fba49aea4e87779d536c5923d01bb95/) | ⚠️ Unaudited |
| WarpSync | unknown | ethereum | n/a | [`0xe0c69a...c7fc4d`](./contracts/ethereum-1/0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (55)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x061ba3...29bc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06eb3b...eaacb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08d170...b0b0b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16c0e7...0c14cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c36b0...0c3312` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dd864...a20e18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e8229...c5fcaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x205019...495d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x251803...974091` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d78ac...cc3e05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38a795...12c722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3900f5...a15f72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x393a1f...043088` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a1b0d...3bf32a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ba1f0...e6471b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fc457...1664ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b336...3960c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x533344...f5355f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55dc8f...68e335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5836be...a35d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ff2c4...97b14f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60c880...249a96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60f7f3...117ed7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d136...e4193d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a3b7c...7bf415` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bc8cf...11eb37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cb9a1...2d6751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71995a...39caac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x739615...b18887` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fbb87...73fd36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d69d7...8c6ead` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96ddba...414744` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c0906...cb62dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ea309...87edb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa00703...ecc5aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3ac98...e289e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac8ba6...9dda9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef4d0...1b606e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4fc3a...effb25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae04c...069ee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcc994...208799` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf1e3a...28a9fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfe7b0...deb8be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2930a...f91c4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc76121...7492dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccc243...fc463f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd53c6...a26a2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0c58...43c175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2a04e...75b9cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5ac4d...3b080e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd69769...25976d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe35e72...3aa1db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe97ea9...7717f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeead9c...87b834` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf342f3...64ee62` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/ChainSecurity%20-%20Augur%20Core%20v1.pdf) | ChainSecurity | Audit | 2017-12 | stale | Direct | contract_name | 2 | n/a |
| [LeastAuthority - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/LeastAuthority%20-%20Augur%20Core%20v1.pdf) | LeastAuthority | Audit | 2017-12 | stale | Direct | contract_name | 3 | n/a |
| [Zeppelin - Augur Core v3.1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.1.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 4 | n/a |
| [Zeppelin - Augur Core v3.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 4 | n/a |
| [keythereum-audit.md](https://github.com/AugurProject/augur-audits/blob/master/keythereum/keythereum-audit.md) | unknown | Audit | 2017-04 | stale | Direct | n/a | 0 | n/a |
| [Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/serpent-compiler/Zeppelin%20Solutions%20-%20Serpent%20Compiler%20Audit%20v1.0.0.pdf) | Zeppelin Solutions | Audit | 2017-07 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Solidity Compiler Audit v1.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/solidity-compiler/Coinspect%20-%20Solidity%20Compiler%20Audit%20v1.0.pdf) | Coinspect | Audit | 2017-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x221657...f5c9bb`](./contracts/ethereum-1/0x221657776846890989a759ba2973e427dff5c9bb/) | ReputationToken | token | $4,454,398.26 | Verified native implementation with $4,454,398.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61935c...93b7ef`](./contracts/ethereum-1/0x61935cbdd02287b511119ddb11aeb42f1593b7ef/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cd32f...915667`](./contracts/ethereum-1/0x0cd32f92e3ea33d81d8cf60e20dddfdef4915667/) | Trade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0c69a...c7fc4d`](./contracts/ethereum-1/0xe0c69aefaa7611de493bce9525abf2a2c3c7fc4d/) | WarpSync | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=13

Zero-match audit list:

- [2988] keythereum-audit.md
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
