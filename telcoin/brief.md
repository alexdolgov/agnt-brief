# Agentic Audit Brief: telcoin

## Project Overview

- Project: telcoin (`telcoin`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.826Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 18 unique implementations (18 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 18 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 11 common project-authored base contract(s) (accesscontrolmixin, nativemetatransaction, eip712base). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
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

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmirX | unknown | polygon | n/a | [`0x4eb4a3...6b8d5a`](./contracts/polygon-137/0x4eb4a35257458c1a87a4124ce02b3329ed6b8d5a/) | ⚠️ Unaudited |
| Batcher | unknown | polygon | n/a | [`0x25686c...62f3df`](./contracts/polygon-137/0x25686cd3f579096551f3883e8b5f31063662f3df/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| FeeBuyback | unknown | polygon | n/a | [`0x360ede...4e7d45`](./contracts/polygon-137/0x360ede11c8672ba8ff98c1e8ac5f3ff1d24e7d45/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| MaticTransmitter | unknown | polygon | n/a | [`0xa64373...fef1cf`](./contracts/polygon-137/0xa64373ffb5a6ee637693b124a6ccfe3390fef1cf/) | ⚠️ Unaudited |
| StakingDualRewards | unknown | polygon | n/a | [`0x09315f...67c2df`](./contracts/polygon-137/0x09315f2577c2bccee0119790f706eb70dd67c2df/) | ⚠️ Unaudited |
| StakingRewards | unknown | polygon | n/a | [`0x02b32d...9ea16e`](./contracts/polygon-137/0x02b32dd42b73c76e8a5bd672d550f3ab149ea16e/) | ⚠️ Unaudited |
| TransactionBatcher | unknown | polygon | n/a | [`0x6d51cc...64642b`](./contracts/polygon-137/0x6d51cca8b5afd8b39ed237df0bc74c7b5464642b/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xfc2fc9...18c750`](./contracts/polygon-137/0xfc2fc983a411c4b1e238f7eb949308cf0218c750/) | ⚠️ Unaudited |
| WeightedPool | unknown | polygon | n/a | [`0x39cd55...ab895b`](./contracts/polygon-137/0x39cd55ff7e7d7c66d7d2736f1d5d4791cdab895b/) | ⚠️ Unaudited |
| WeightedPool2Tokens | unknown | polygon | n/a | [`0x5c6ee3...db8f56`](./contracts/polygon-137/0x5c6ee304399dbdb9c8ef030ab642b10820db8f56/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x4eb4a3...6b8d5a`](./contracts/polygon-137/0x4eb4a35257458c1a87a4124ce02b3329ed6b8d5a/) | AmirX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x25686c...62f3df`](./contracts/polygon-137/0x25686cd3f579096551f3883e8b5f31063662f3df/) | Batcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ChildMintableERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ChildMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x360ede...4e7d45`](./contracts/polygon-137/0x360ede11c8672ba8ff98c1e8ac5f3ff1d24e7d45/) | FeeBuyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | HelloWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa64373...fef1cf`](./contracts/polygon-137/0xa64373ffb5a6ee637693b124a6ccfe3390fef1cf/) | MaticTransmitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x09315f...67c2df`](./contracts/polygon-137/0x09315f2577c2bccee0119790f706eb70dd67c2df/) | StakingDualRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02b32d...9ea16e`](./contracts/polygon-137/0x02b32dd42b73c76e8a5bd672d550f3ab149ea16e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6d51cc...64642b`](./contracts/polygon-137/0x6d51cca8b5afd8b39ed237df0bc74c7b5464642b/) | TransactionBatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | Transfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39cd55...ab895b`](./contracts/polygon-137/0x39cd55ff7e7d7c66d7d2736f1d5d4791cdab895b/) | WeightedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5c6ee3...db8f56`](./contracts/polygon-137/0x5c6ee304399dbdb9c8ef030ab642b10820db8f56/) | WeightedPool2Tokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
