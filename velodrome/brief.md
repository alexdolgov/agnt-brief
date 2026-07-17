# Agentic Audit Brief: Velodrome

## Project Overview

- Project: Velodrome (`velodrome`)
- Website: [https://velodrome.finance](https://velodrome.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.831Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: celo, optimism
- Contract surface: 16 unique implementations (17 raw deployments)
- DeFi Llama TVL: $33,671,001.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 55 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 3 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 14 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/15 (80.0%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/16
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 17
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/velodromefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: 80.0% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 12 | 75.0% | 2024-01 |
| Sherlock | Tier 1 | 1 | 6.3% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLFactory | registry | optimism | n/a | [`0xcc0bddb707055e04e497ab22a59c2af4391cd12f`](./contracts/optimism-10/0xcc0bddb707055e04e497ab22a59c2af4391cd12f/) | ✅ Audited |
| Minter | operational_periphery | optimism | n/a | [`0x6dc9e1c04ee59ed3531d73a72256c0da46d10982`](./contracts/optimism-10/0x6dc9e1c04ee59ed3531d73a72256c0da46d10982/) | ✅ Audited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0x416b433906b1b72fa758e166e239c43d68dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | ✅ Audited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0xbb5dfe1380333cee4c2eebd7202c80de2256adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | ✅ Audited |
| RewardsDistributor | operational_periphery | optimism | n/a | [`0x9d4736ec60715e71afe72973f7885dcbc21ea99b`](./contracts/optimism-10/0x9d4736ec60715e71afe72973f7885dcbc21ea99b/) | ✅ Audited |
| Router | adapter | optimism | n/a | [`0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858`](./contracts/optimism-10/0xa062ae8a9c5e11aaa026fc2670b0d65ccc8b2858/) | ✅ Audited |
| SinkManager | governance | optimism | n/a | [`0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ✅ Audited |
| SwapRouter | adapter | optimism | n/a | [`0x0792a633f0c19c351081cf4b211f68f79bcc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/) | ✅ Audited |
| UniversalRouter | adapter | optimism | n/a | 2 deployments: optimism [`0x4bf3e32de155359d1d75e8b474b66848221142fc`](./contracts/optimism-10/0x4bf3e32de155359d1d75e8b474b66848221142fc/); optimism `0xf132bdb9573867cd72f2585c338b923f973eb817` | ✅ Audited |
| Velo | token | optimism | n/a | [`0x9560e827af36c94d2ac33a39bce1fe78631088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | ✅ Audited |
| Voter | unknown | optimism | n/a | [`0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c`](./contracts/optimism-10/0x41c914ee0c7e1a5edcd0295623e6dc557b5abf3c/) | ✅ Audited |
| VotingEscrow | operational_periphery | optimism | n/a | [`0xfaf8fd17d9840595845582fcb047df13f006787d`](./contracts/optimism-10/0xfaf8fd17d9840595845582fcb047df13f006787d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | optimism | n/a | [`0x838352f4e3992187a33a04826273db3992ee2b3f`](./contracts/optimism-10/0x838352f4e3992187a33a04826273db3992ee2b3f/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | optimism | n/a | [`0xff79ec912ba114fd7989b9a2b90c65f0c1b44722`](./contracts/optimism-10/0xff79ec912ba114fd7989b9a2b90c65f0c1b44722/) | ⚠️ Unaudited |
| QuoterV2 | periphery | optimism | n/a | [`0x89d8218ed5ff1e46d8dcd33fb0bbee3be1621466`](./contracts/optimism-10/0x89d8218ed5ff1e46d8dcd33fb0bbee3be1621466/) | ⚠️ Unaudited |
| SlipstreamSugar | unknown | celo | n/a | [`0xee03e08107755bc34412e78377b971ecc7153590`](./contracts/celo-42220/0xee03e08107755bc34412e78377b971ecc7153590/) | ⚠️ Unaudited |

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
| [code4rena.com/audits/2022-05-velodrome-finance-contest](https://code4rena.com/audits/2022-05-velodrome-finance-contest) | Code4rena | Contest | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Velodrome-Spearbit-Security-Review.pdf](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-07 | stale | Direct | contract_name | 7 | n/a |
| [Velodrome-Spearbit-Security-Review-Nov23.pdf](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review-Nov23.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | contract_name | 7 | n/a |
| [www.chainsecurity.com/security-audit/velodrome-superchain-interoperability](https://www.chainsecurity.com/security-audit/velodrome-superchain-interoperability) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/velodrome-superchain-slipstream](https://www.chainsecurity.com/security-audit/velodrome-superchain-slipstream) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2024.11.13 - Final - Velodrome.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2024.11.13%20-%20Final%20-%20Velodrome.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [immunefi.com/bug-bounty/velodromefinance/information](https://immunefi.com/bug-bounty/velodromefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [www.chainsecurity.com/security-audit/superchain-diff](https://www.chainsecurity.com/security-audit/superchain-diff) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xff79ec912ba114fd7989b9a2b90c65f0c1b44722`](./contracts/optimism-10/0xff79ec912ba114fd7989b9a2b90c65f0c1b44722/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x89d8218ed5ff1e46d8dcd33fb0bbee3be1621466`](./contracts/optimism-10/0x89d8218ed5ff1e46d8dcd33fb0bbee3be1621466/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xee03e08107755bc34412e78377b971ecc7153590`](./contracts/celo-42220/0xee03e08107755bc34412e78377b971ecc7153590/) | SlipstreamSugar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=15

Zero-match audit list:

- [3918] code4rena.com/audits/2022-05-velodrome-finance-contest
- [3921] www.chainsecurity.com/security-audit/velodrome-superchain-interoperability
- [3923] www.chainsecurity.com/security-audit/velodrome-superchain-slipstream
- [15421] www.chainsecurity.com/security-audit/superchain-diff

Fork inheritance lineage and inherited audits are included when available.
