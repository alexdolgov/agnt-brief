# Agentic Audit Brief: Basis Cash

## Project Overview

- Project: Basis Cash (`basis-cash`)
- Website: [https://basis.cash/](https://basis.cash/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.313Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $245,599.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 37 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 8 common project-authored base contract(s) (operator, contractguard, epoch). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/38 (0.0%)
- Deployed-live implementations: 38 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BACDAIPool | unknown | ethereum | n/a | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACPool | unknown | ethereum | n/a | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | ⚠️ Unaudited |
| BACSUSDPool | unknown | ethereum | n/a | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| BACUSDCPool | unknown | ethereum | n/a | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | unknown | ethereum | n/a | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| BACyCRVPool | unknown | ethereum | n/a | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BASPool | unknown | ethereum | n/a | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | ⚠️ Unaudited |
| BIP11 | unknown | ethereum | n/a | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | ⚠️ Unaudited |
| Boardroom | unknown | ethereum | n/a | [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/) | ⚠️ Unaudited |
| BoardroomV2 | unknown | ethereum | n/a | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | ⚠️ Unaudited |
| Bond | unknown | ethereum | n/a | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | ⚠️ Unaudited |
| Bondroom | unknown | ethereum | n/a | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | ⚠️ Unaudited |
| Cash | unknown | ethereum | n/a | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | ⚠️ Unaudited |
| ControlledAsset | unknown | ethereum | n/a | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ⚠️ Unaudited |
| DAIBACLPTokenSharePool | unknown | ethereum | n/a | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | ⚠️ Unaudited |
| DAIBASLPTokenSharePool | unknown | ethereum | n/a | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | n/a | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | ⚠️ Unaudited |
| Feeder | unknown | ethereum | n/a | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | ⚠️ Unaudited |
| InitialCashDistributor | unknown | ethereum | n/a | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | ⚠️ Unaudited |
| InitialShareDistributor | unknown | ethereum | n/a | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | ⚠️ Unaudited |
| LinearThreshold | unknown | ethereum | n/a | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/) | ⚠️ Unaudited |
| PickleProxy | unknown | ethereum | n/a | [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/) | ⚠️ Unaudited |
| PoolMigrator | unknown | ethereum | n/a | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | ⚠️ Unaudited |
| PoolProxy | unknown | ethereum | n/a | [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/) | ⚠️ Unaudited |
| PoolStore | unknown | ethereum | n/a | [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/) | ⚠️ Unaudited |
| PoolWrapper | unknown | ethereum | n/a | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | ⚠️ Unaudited |
| Share | unknown | ethereum | n/a | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | ⚠️ Unaudited |
| ShareV2 | unknown | ethereum | n/a | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ⚠️ Unaudited |
| SigmoidThreshold | unknown | ethereum | n/a | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | ⚠️ Unaudited |
| SimpleERCFund | unknown | ethereum | n/a | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xd98bc1...5d0e6a`](./contracts/ethereum-1/0xd98bc19ffc98e9009146524c8bd835f1bc5d0e6a/) | ⚠️ Unaudited |
| TokenStore | unknown | ethereum | n/a | [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/) | ⚠️ Unaudited |
| VoteProxy | unknown | ethereum | n/a | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x06364f...d6c763`](./contracts/ethereum-1/0x06364f10b501e868329afbc005b3492902d6c763/) | ⚠️ Unaudited |
| WeightFeeder | unknown | ethereum | n/a | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | ⚠️ Unaudited |

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
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e7ae8...d6ed8c`](./contracts/ethereum-1/0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c/) | BACPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5859ad...8120c0`](./contracts/ethereum-1/0x5859adb05988946b9d08dce2e12ae29af58120c0/) | BASPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6f889...c115a2`](./contracts/ethereum-1/0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2/) | BIP11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27c20f...96fd4f`](./contracts/ethereum-1/0x27c20f0b0ad78805084eeb8407291326e996fd4f/) | Boardroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xecf0dd...33e42a`](./contracts/ethereum-1/0xecf0dde35f6d895c065e7526348af1e79433e42a/) | BoardroomV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc36824...f5abc5`](./contracts/ethereum-1/0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5/) | Bond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9a904...efe109`](./contracts/ethereum-1/0xd9a904a1320b5f0a1f742a9e431ded2a55efe109/) | Bondroom | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3449fc...03a69a`](./contracts/ethereum-1/0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a/) | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c48fd...47d30c`](./contracts/ethereum-1/0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c/) | ControlledAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067d4d...f9db0f`](./contracts/ethereum-1/0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f/) | DAIBACLPTokenSharePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9569d4...fb0d0a`](./contracts/ethereum-1/0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a/) | DAIBASLPTokenSharePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x818f83...402f2e`](./contracts/ethereum-1/0x818f83333244ba4bb72dab0b60b1901158402f2e/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x065894...8eb1b0`](./contracts/ethereum-1/0x06589479a31f826410bbd6d43410e7ff2d8eb1b0/) | Feeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666c2a...54c0cd`](./contracts/ethereum-1/0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd/) | InitialCashDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c5323...e2f4bb`](./contracts/ethereum-1/0x3c53230875877321023f757c33d2faf71de2f4bb/) | InitialShareDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdbae6...120b11`](./contracts/ethereum-1/0xcdbae6de88c7525369d6826ae1cdcab415120b11/) | LinearThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6043...ade677`](./contracts/ethereum-1/0x1b604349100a318e369b59a6d6c1b65a31ade677/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b3868...8ff7ed`](./contracts/ethereum-1/0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf4ac...912828`](./contracts/ethereum-1/0x0cf4acf926a4d973e4a1775e4a82839988912828/) | PickleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d7fa...30b7bb`](./contracts/ethereum-1/0x66d7fa132b5550205d4d6a6645b66283e330b7bb/) | PoolMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe765...b432c5`](./contracts/ethereum-1/0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5/) | PoolProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01592e...a00ae6`](./contracts/ethereum-1/0x01592e349258233a6f13685228060511eca00ae6/) | PoolStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e3d21...41510c`](./contracts/ethereum-1/0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c/) | PoolWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ed29...b63696`](./contracts/ethereum-1/0xa7ed29b253d8b4e3109ce07c80fc570f81b63696/) | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106538...875287`](./contracts/ethereum-1/0x106538cc16f938776c7c180186975bca23875287/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa72872...07f7f3`](./contracts/ethereum-1/0xa728721394084ea78f10cebb192323f50407f7f3/) | SigmoidThreshold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b075b...98fe22`](./contracts/ethereum-1/0x7b075b3aa2f1143775101986b52e32da9d98fe22/) | SimpleERCFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd98bc1...5d0e6a`](./contracts/ethereum-1/0xd98bc19ffc98e9009146524c8bd835f1bc5d0e6a/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0440ae...25c87c`](./contracts/ethereum-1/0x0440ae12f329dbd7306b6d9edbb0e667c225c87c/) | TokenStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02957a...c877f5`](./contracts/ethereum-1/0x02957ae53173f58dc9989c4a09853f9528c877f5/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bddf1...eb729b`](./contracts/ethereum-1/0x6bddf10f9956dcda89998c2e673f74a09deb729b/) | VoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06364f...d6c763`](./contracts/ethereum-1/0x06364f10b501e868329afbc005b3492902d6c763/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5800fc...816546`](./contracts/ethereum-1/0x5800fc35f004c1218b18a22940ee7e8be4816546/) | WeightFeeder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
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
