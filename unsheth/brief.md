# Agentic Audit Brief: unshETH

## Project Overview

- Project: unshETH (`unsheth`)
- Website: [https://unsheth.xyz](https://unsheth.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.921Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $125,636.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Indexes. Structurally: 19 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/19 (26.3%)
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/19
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 5 | 26.3% | 2023-06 |
| CertiK | Tier 2 | 1 | 5.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Darknet | unknown | ethereum | n/a | [`0xc3f131...e3cedc`](./contracts/ethereum-1/0xc3f131e624de06c6c5b7897827c9875b67e3cedc/) | ✅ Audited |
| LSDVault | unknown | ethereum | n/a | [`0x51a802...c05c74`](./contracts/ethereum-1/0x51a80238b5738725128d3a3e06ab41c1d4c05c74/) | ✅ Audited |
| RenouncedOwner | unknown | ethereum | n/a | [`0xb25021...ed52c3`](./contracts/ethereum-1/0xb250216b5bce306fa37f7de76a82409663ed52c3/) | ✅ Audited |
| unshETH | unknown | ethereum | n/a | [`0x0ae38f...a909ef`](./contracts/ethereum-1/0x0ae38f7e10a43b5b2fb064b42a2f4514cba909ef/) | ✅ Audited |
| unshETHZap | unknown | ethereum | n/a | [`0x718c26...a91b4b`](./contracts/ethereum-1/0x718c26e5e60829a36fee8df1d791f340aaa91b4b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommunalFarm | unknown | ethereum | n/a | [`0x33890b...953cfc`](./contracts/ethereum-1/0x33890b88f98a9d511678954ad8db0510b6953cfc/) | ⚠️ Unaudited |
| EuclideanFarm | unknown | ethereum | n/a | [`0x954d50...ff3d7e`](./contracts/ethereum-1/0x954d5088d88291146ce58270add820e809ff3d7e/) | ⚠️ Unaudited |
| GovernorsFarm | unknown | ethereum | n/a | [`0xc4bb59...261832`](./contracts/ethereum-1/0xc4bb59e8556e7fca9000f05678abc4ba06261832/) | ⚠️ Unaudited |
| LSDRegistry | unknown | ethereum | n/a | [`0x2feaa5...bf1b7d`](./contracts/ethereum-1/0x2feaa552559fec162b2a767f674f86776fbf1b7d/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | ethereum | n/a | [`0x2955c9...79bd3a`](./contracts/ethereum-1/0x2955c9cba43e769017caf257dd96c0dd9d79bd3a/) | ⚠️ Unaudited |
| unshETHProxyOft | unknown | ethereum | n/a | [`0x35f899...b26457`](./contracts/ethereum-1/0x35f899ce6cc304aedfdb7835f623a30473b26457/) | ⚠️ Unaudited |
| unshETHRateProvider | unknown | ethereum | n/a | [`0x5f0a29...7a55d3`](./contracts/ethereum-1/0x5f0a29e479744dca0d3d912f87f1a6e3237a55d3/) | ⚠️ Unaudited |
| unshETHZapv2 | unknown | ethereum | n/a | [`0x746109...becbc7`](./contracts/ethereum-1/0x7461092aa5234b42a17ee8cc51cfde6ef4becbc7/) | ⚠️ Unaudited |
| USDTSGReceiver | unknown | ethereum | n/a | [`0xd41d27...1c53ec`](./contracts/ethereum-1/0xd41d27ff3205787a4a617708f6675a44821c53ec/) | ⚠️ Unaudited |
| USH | unknown | ethereum | n/a | [`0xe60779...70ec48`](./contracts/ethereum-1/0xe60779cc1b2c1d0580611c526a8df0e3f870ec48/) | ⚠️ Unaudited |
| USHFarm | unknown | ethereum | n/a | [`0x46671b...4a8339`](./contracts/ethereum-1/0x46671bfb2746ba2916cbf9773b94f85dd94a8339/) | ⚠️ Unaudited |
| USHProxyOFT | unknown | ethereum | n/a | [`0x2c8a40...7aad01`](./contracts/ethereum-1/0x2c8a4058db744808fffa97e29c8e1b7cbf7aad01/) | ⚠️ Unaudited |
| VDAMM | unknown | ethereum | n/a | [`0x35636b...9db14a`](./contracts/ethereum-1/0x35636b85b68c1b4a216110fb3a5fb447a99db14a/) | ⚠️ Unaudited |
| VotingEscrow | unknown | ethereum | n/a | [`0x29d0db...1ce014`](./contracts/ethereum-1/0x29d0db2154b0abd117ade13dc73bbf4e0d1ce014/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/unsheth) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [Paladin](https://paladinsec.co/projects/unsheth) | Paladin | Audit | 2023-06 | stale | Direct | contract_name | 5 | high |
| [Certik](https://unsheth.xyz/v2-audit.pdf) | Paladin | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x33890b...953cfc`](./contracts/ethereum-1/0x33890b88f98a9d511678954ad8db0510b6953cfc/) | CommunalFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x954d50...ff3d7e`](./contracts/ethereum-1/0x954d5088d88291146ce58270add820e809ff3d7e/) | EuclideanFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4bb59...261832`](./contracts/ethereum-1/0xc4bb59e8556e7fca9000f05678abc4ba06261832/) | GovernorsFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2feaa5...bf1b7d`](./contracts/ethereum-1/0x2feaa552559fec162b2a767f674f86776fbf1b7d/) | LSDRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2955c9...79bd3a`](./contracts/ethereum-1/0x2955c9cba43e769017caf257dd96c0dd9d79bd3a/) | MerkleDistributorWithDeadline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35f899...b26457`](./contracts/ethereum-1/0x35f899ce6cc304aedfdb7835f623a30473b26457/) | unshETHProxyOft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f0a29...7a55d3`](./contracts/ethereum-1/0x5f0a29e479744dca0d3d912f87f1a6e3237a55d3/) | unshETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x746109...becbc7`](./contracts/ethereum-1/0x7461092aa5234b42a17ee8cc51cfde6ef4becbc7/) | unshETHZapv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd41d27...1c53ec`](./contracts/ethereum-1/0xd41d27ff3205787a4a617708f6675a44821c53ec/) | USDTSGReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe60779...70ec48`](./contracts/ethereum-1/0xe60779cc1b2c1d0580611c526a8df0e3f870ec48/) | USH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46671b...4a8339`](./contracts/ethereum-1/0x46671bfb2746ba2916cbf9773b94f85dd94a8339/) | USHFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c8a40...7aad01`](./contracts/ethereum-1/0x2c8a4058db744808fffa97e29c8e1b7cbf7aad01/) | USHProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35636b...9db14a`](./contracts/ethereum-1/0x35636b85b68c1b4a216110fb3a5fb447a99db14a/) | VDAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29d0db...1ce014`](./contracts/ethereum-1/0x29d0db2154b0abd117ade13dc73bbf4e0d1ce014/) | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
