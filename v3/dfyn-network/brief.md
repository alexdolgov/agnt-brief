# Agentic Audit Brief: Dfyn Network

## Project Overview

- Project: Dfyn Network (`dfyn-network`)
- Website: [https://www.dfyn.network/](https://www.dfyn.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:43.436Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, polygon
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $333,049.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 22 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (accesscontrolmixin, nativemetatransaction, eip712base). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildERC1155 | unknown | polygon | n/a | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| DfynChest | unknown | polygon | n/a | [`0x5cf9d1...d45fc0`](./contracts/polygon-137/0x5cf9d1f77c9b044e1d2d0dcc0cfda7423fd45fc0/) | ⚠️ Unaudited |
| DFYNFactory | unknown | arbitrum | n/a | [`0xd9820a...3d64f5`](./contracts/arbitrum-42161/0xd9820a17053d6314b20642e465a84bf01a3d64f5/) | ⚠️ Unaudited |
| DfynPricePrediction | unknown | polygon | n/a | [`0x150b4f...cc29e7`](./contracts/polygon-137/0x150b4fd25c7c0c65301e86b599822f2feecc29e7/) | ⚠️ Unaudited |
| DFYNRouter02 | unknown | arbitrum | n/a | [`0x4c28f4...dce1fa`](./contracts/arbitrum-42161/0x4c28f48448720e9000907bc2611f73022fdce1fa/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x01df11...ee4cf7`](./contracts/polygon-137/0x01df11ef6822b88e5913625e7e66696c01ee4cf7/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x26fbd7...9fdc3f`](./contracts/polygon-137/0x26fbd7d74e969d878033984995336b56449fdc3f/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| RewardVault | unknown | polygon | n/a | [`0x6ac606...44c4ac`](./contracts/polygon-137/0x6ac606389982ae6d2f82f817c46eacf54244c4ac/) | ⚠️ Unaudited |
| StakingRewards | unknown | polygon | n/a | [`0x03428d...431cca`](./contracts/polygon-137/0x03428da1a46beb305db74c55d4ec192907431cca/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | polygon | n/a | [`0x038be8...eae967`](./contracts/polygon-137/0x038be886326340844c4e9d0098af006876eae967/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | arbitrum | n/a | [`0xa10207...c57429`](./contracts/arbitrum-42161/0xa102072a4c07f06ec3b4900fdc4c7b80b6c57429/) | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | polygon | n/a | [`0xa10207...c57429`](./contracts/polygon-137/0xa102072a4c07f06ec3b4900fdc4c7b80b6c57429/) | ⚠️ Unaudited |
| Vault | unknown | polygon | n/a | [`0x356fe5...8a3723`](./contracts/polygon-137/0x356fe56801fdb5bb44f63023f4ac3e26588a3723/) | ⚠️ Unaudited |
| WETH9 | unknown | polygon | n/a | [`0x4c28f4...dce1fa`](./contracts/polygon-137/0x4c28f48448720e9000907bc2611f73022fdce1fa/) | ⚠️ Unaudited |
| XERC20 | unknown | polygon | n/a | [`0x48856f...95f723`](./contracts/polygon-137/0x48856f48fb4eafab8646de0b0b48bace1f95f723/) | ⚠️ Unaudited |

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
| [Audit Report](https://www.dfyn.network/dfyn-v2-audit-report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Yes, the contracts have been audited by Hacken, and the audit report can be found [here]().](https://www.dropbox.com/scl/fi/qauzvylh5p8midfxaw0bo/BYOF-Hacken-Audit.pdf?rlkey=8cz2o0mhw5l41yyljtd1r6vpe&dl=0) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DFYN RFQ QuillAudits.pdf](https://2846587992-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZNpkqBkemZoRMQq0J6%2Fuploads%2FyxL7wCObcAg4Ef5Rniir%2FDFYN%20RFQ%20QuillAudits.pdf) | QuillAudits | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DFYN RFQ Zellic Audit.pdf](https://2846587992-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZNpkqBkemZoRMQq0J6%2Fuploads%2Fy2MrGKWRY8qDZpJq9Yhu%2FDFYN%20RFQ%20Zellic%20Audit.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19710] Audit Report
- [19711] Yes, the contracts have been audited by Hacken, and the audit report can be found [here]().
- [19712] DFYN RFQ QuillAudits.pdf
- [19713] DFYN RFQ Zellic Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
