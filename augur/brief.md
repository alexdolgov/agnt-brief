# Agentic Audit Brief: Augur

## Project Overview

- Project: Augur (`augur`)
- Website: [https://augur.net/](https://augur.net/)
- Lifecycle: active (Tier 0, 87.4% below peak)
- Generated: 2026-06-10T20:58:57.824Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 39 unique implementations (42 raw deployments)
- DeFi Llama TVL: $1,669,254.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Augur is a decentralized prediction-market and oracle protocol for creating, trading, and resolving markets on event outcomes. Its legacy core contracts include components such as Universe and Cash for market infrastructure and settlement, while Augur's reporting, dispute, fork, migration, and current prediction-market/oracle system center on REP/REPv2 rather than Cash as a native token.

### Architecture

The Delegator proxy delegates calls to the Cash implementation, enabling upgradeability. The Universe contract likely references Cash for market operations, forming a shared infrastructure for the prediction market.

## Audit Coverage Summary

- Verified implementations audited: 25/39 (64.1%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 42
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-03 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: 15.4% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zeppelin | Tier 2 | 24 | 61.5% | 2018-03 |
| LeastAuthority | Tier 2 | 11 | 28.2% | 2017-12 |
| ChainSecurity | Tier 1 | 6 | 15.4% | 2017-12 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Augur | unknown | ethereum | [`0x75228d...551599`](./contracts/ethereum-1/0x75228dce4d82566d93068a8d5d49435216551599/) | ✅ Audited |
| CancelOrder | unknown | ethereum | [`0x344820...1e3aaf`](./contracts/ethereum-1/0x3448209268e97652bb67ea12777d4dfba81e3aaf/) | ✅ Audited |
| Cash | unknown | ethereum | 2 deployments: ethereum [`0x9b4af4...ee960e`](./contracts/ethereum-1/0x9b4af4a3295cf476a2b00736f7332f35bbee960e/); ethereum `0xd55241...76b96b` | ✅ Audited |
| ClaimTradingProceeds | unknown | ethereum | [`0x433447...07872a`](./contracts/ethereum-1/0x4334477348222a986fc88a05410aa6b07507872a/) | ✅ Audited |
| CompleteSets | unknown | ethereum | [`0xa6bff4...afe5ab`](./contracts/ethereum-1/0xa6bff4f91016c2b4aac140b2d8d7317b36afe5ab/) | ✅ Audited |
| Controlled | unknown | ethereum | [`0x6da4e6...66759c`](./contracts/ethereum-1/0x6da4e67755fb48e26af50915991f57665f66759c/) | ✅ Audited |
| Controller | governance | ethereum | [`0xb33371...0ff3e7`](./contracts/ethereum-1/0xb3337164e91b9f05c87c7662c7ac684e8e0ff3e7/) | ✅ Audited |
| CreateOrder | unknown | ethereum | [`0x7f27b0...e97999`](./contracts/ethereum-1/0x7f27b0598949dbf9e539bbd217f15bf3f5e97999/) | ✅ Audited |
| Delegator | unknown | ethereum | 2 deployments: ethereum [`0x10b558...e15806`](./contracts/ethereum-1/0x10b5589fc6922f5c27061ac79ad9a4af35e15806/); ethereum `0xd7a140...db74d2` | ✅ Audited |
| DisputeCrowdsourcer | unknown | ethereum | [`0x183614...c8d360`](./contracts/ethereum-1/0x183614d40cee16bf6fcd9dff51556f398ec8d360/) | ✅ Audited |
| FeeToken | token | ethereum | [`0xe0dfed...e6e2de`](./contracts/ethereum-1/0xe0dfed99988fcc9bdfa1f4fb0084942e1be6e2de/) | ✅ Audited |
| FeeWindow | unknown | ethereum | [`0x56cc82...061881`](./contracts/ethereum-1/0x56cc82bbb3049dc3366bf26061d09ed3fd061881/) | ✅ Audited |
| FillOrder | unknown | ethereum | [`0x39c230...bd0303`](./contracts/ethereum-1/0x39c230f89981274177e79708c921582bd4bd0303/) | ✅ Audited |
| InitialReporter | unknown | ethereum | [`0x4fa2b6...fcde6d`](./contracts/ethereum-1/0x4fa2b609c19edf731ec33f54f54602a92dfcde6d/) | ✅ Audited |
| Mailbox | unknown | ethereum | [`0x4dcb58...4b3b66`](./contracts/ethereum-1/0x4dcb585b8c8c52c2d25d5a7c2672646bc24b3b66/) | ✅ Audited |
| Map | unknown | ethereum | [`0x94c014...0763d9`](./contracts/ethereum-1/0x94c01429d67a275de013e457eff6e028e10763d9/) | ✅ Audited |
| Market | unknown | ethereum | [`0x380070...d8ce01`](./contracts/ethereum-1/0x380070670fb427ae8070631eef6f2d0824d8ce01/) | ✅ Audited |
| Orders | unknown | ethereum | [`0xd0ba86...83191a`](./contracts/ethereum-1/0xd0ba8692bc945efe0638313cab40ab8e4f83191a/) | ✅ Audited |
| Reporting | unknown | ethereum | [`0x12702a...d6e6ae`](./contracts/ethereum-1/0x12702a2034caf72ff4ad8efbf7ed405737d6e6ae/) | ✅ Audited |
| RepPriceOracle | operational_periphery | ethereum | [`0x023e27...686aa6`](./contracts/ethereum-1/0x023e27edd55dfbeb0925685175afcc2867686aa6/) | ✅ Audited |
| ReputationToken | token | ethereum | [`0x6c114b...7e43d1`](./contracts/ethereum-1/0x6c114b96b7a0e679c2594e3884f11526797e43d1/) | ✅ Audited |
| ShareToken | token | ethereum | [`0x2a21d9...f14663`](./contracts/ethereum-1/0x2a21d90745dfed999aa0b6e08d648855c5f14663/) | ✅ Audited |
| Trade | unknown | ethereum | [`0x24e2b1...3ca6cd`](./contracts/ethereum-1/0x24e2b1d415e6e0d04042eaa45dc2a08fc33ca6cd/) | ✅ Audited |
| TradingEscapeHatch | unknown | ethereum | [`0x9e130e...9e0d13`](./contracts/ethereum-1/0x9e130ec3b6fd96ac7db4076638bd5964ad9e0d13/) | ✅ Audited |
| Universe | unknown | ethereum | 2 deployments: ethereum [`0x49244b...46e5aa`](./contracts/ethereum-1/0x49244bd018ca9fd1f06ecc07b9e9de773246e5aa/); ethereum `0xfbcd5e...a400ff` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DisputeCrowdsourcerFactory | registry | ethereum | [`0x1be986...733bf7`](./contracts/ethereum-1/0x1be98680ff697390cbc4cdc414a1be8add733bf7/) | ⚠️ Unaudited |
| FeeTokenFactory | registry | ethereum | [`0xe86a4b...e808a8`](./contracts/ethereum-1/0xe86a4beb10155a5bd7ebb430ce13438341e808a8/) | ⚠️ Unaudited |
| FeeWindowFactory | registry | ethereum | [`0x5b4140...c5b663`](./contracts/ethereum-1/0x5b4140771615b25f22a4bf52f77e35cdccc5b663/) | ⚠️ Unaudited |
| InitialReporterFactory | registry | ethereum | [`0xbca52c...0f4c59`](./contracts/ethereum-1/0xbca52c29b535fd63bdc7ca35efa56116550f4c59/) | ⚠️ Unaudited |
| MailboxFactory | registry | ethereum | [`0xe33ca1...763540`](./contracts/ethereum-1/0xe33ca1ebb783343035b11a7e755c29c28b763540/) | ⚠️ Unaudited |
| MapFactory | registry | ethereum | [`0x67f53b...86777e`](./contracts/ethereum-1/0x67f53b749fe432274e3f53752a91da89ef86777e/) | ⚠️ Unaudited |
| MarketFactory | registry | ethereum | [`0x518530...7494ee`](./contracts/ethereum-1/0x518530aca60154403012f17c7b8e26f88f7494ee/) | ⚠️ Unaudited |
| Order | unknown | ethereum | [`0x75d789...005f8f`](./contracts/ethereum-1/0x75d789ef6344579fbe75a4d2d9217ec23b005f8f/) | ⚠️ Unaudited |
| OrdersFetcher | unknown | ethereum | [`0xa97a3e...b2e692`](./contracts/ethereum-1/0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692/) | ⚠️ Unaudited |
| OrdersFinder | unknown | ethereum | [`0x01f2ab...6ba3df`](./contracts/ethereum-1/0x01f2aba090b5fa26a64ea9e5afd32f6aab6ba3df/) | ⚠️ Unaudited |
| ReputationTokenFactory | registry | ethereum | [`0x8fee0d...9a3643`](./contracts/ethereum-1/0x8fee0da3a35f612f88fb58d7028d14c7d99a3643/) | ⚠️ Unaudited |
| ShareTokenFactory | registry | ethereum | [`0x60a977...50e51d`](./contracts/ethereum-1/0x60a977354a6ba44310b2ee061bcf19632450e51d/) | ⚠️ Unaudited |
| Time | unknown | ethereum | [`0xe9f0e0...2fc527`](./contracts/ethereum-1/0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527/) | ⚠️ Unaudited |
| UniverseFactory | registry | ethereum | [`0xe62e47...01bb95`](./contracts/ethereum-1/0xe62e470c8fba49aea4e87779d536c5923d01bb95/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/ChainSecurity%20-%20Augur%20Core%20v1.pdf) | ChainSecurity | Audit | 2017-12 | stale | Direct | contract_name | 8 | high |
| [LeastAuthority - Augur Core v1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/LeastAuthority%20-%20Augur%20Core%20v1.pdf) | LeastAuthority | Audit | 2017-12 | stale | Direct | contract_name | 13 | high |
| [Zeppelin - Augur Core v3.1.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.1.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 27 | high |
| [Zeppelin - Augur Core v3.pdf](https://github.com/AugurProject/augur-audits/blob/master/augur-core/Zeppelin%20-%20Augur%20Core%20v3.pdf) | Zeppelin | Audit | 2018-03 | stale | Direct | contract_name | 27 | high |
| [keythereum-audit.md](https://github.com/AugurProject/augur-audits/blob/master/keythereum/keythereum-audit.md) | unknown | Audit | 2017-04 | stale | Direct | n/a | 0 | n/a |
| [Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/serpent-compiler/Zeppelin%20Solutions%20-%20Serpent%20Compiler%20Audit%20v1.0.0.pdf) | Zeppelin Solutions | Audit | 2017-07 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Solidity Compiler Audit v1.0.pdf](https://github.com/AugurProject/augur-audits/blob/master/solidity-compiler/Coinspect%20-%20Solidity%20Compiler%20Audit%20v1.0.pdf) | Coinspect | Audit | 2017-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1be986...733bf7`](./contracts/ethereum-1/0x1be98680ff697390cbc4cdc414a1be8add733bf7/) | DisputeCrowdsourcerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe86a4b...e808a8`](./contracts/ethereum-1/0xe86a4beb10155a5bd7ebb430ce13438341e808a8/) | FeeTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b4140...c5b663`](./contracts/ethereum-1/0x5b4140771615b25f22a4bf52f77e35cdccc5b663/) | FeeWindowFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbca52c...0f4c59`](./contracts/ethereum-1/0xbca52c29b535fd63bdc7ca35efa56116550f4c59/) | InitialReporterFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe33ca1...763540`](./contracts/ethereum-1/0xe33ca1ebb783343035b11a7e755c29c28b763540/) | MailboxFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67f53b...86777e`](./contracts/ethereum-1/0x67f53b749fe432274e3f53752a91da89ef86777e/) | MapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518530...7494ee`](./contracts/ethereum-1/0x518530aca60154403012f17c7b8e26f88f7494ee/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75d789...005f8f`](./contracts/ethereum-1/0x75d789ef6344579fbe75a4d2d9217ec23b005f8f/) | Order | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa97a3e...b2e692`](./contracts/ethereum-1/0xa97a3e2ac932bc7a9c65393ee2c0f9d2f7b2e692/) | OrdersFetcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01f2ab...6ba3df`](./contracts/ethereum-1/0x01f2aba090b5fa26a64ea9e5afd32f6aab6ba3df/) | OrdersFinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fee0d...9a3643`](./contracts/ethereum-1/0x8fee0da3a35f612f88fb58d7028d14c7d99a3643/) | ReputationTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60a977...50e51d`](./contracts/ethereum-1/0x60a977354a6ba44310b2ee061bcf19632450e51d/) | ShareTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9f0e0...2fc527`](./contracts/ethereum-1/0xe9f0e0ce26874aafc1de658b99dbf391ea2fc527/) | Time | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe62e47...01bb95`](./contracts/ethereum-1/0xe62e470c8fba49aea4e87779d536c5923d01bb95/) | UniverseFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=75

Zero-match audit list:

- [2988] keythereum-audit.md
- [2989] Zeppelin Solutions - Serpent Compiler Audit v1.0.0.pdf
- [2990] Coinspect - Solidity Compiler Audit v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
