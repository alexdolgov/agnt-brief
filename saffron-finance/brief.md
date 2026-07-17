# Agentic Audit Brief: saffron-finance

## Project Overview

- Project: saffron-finance (`saffron-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.865Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 20 unique implementations (20 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 20 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (distributionbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (19 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/18 (0.0%)
- Deployed-live implementations: 19 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
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

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DistributionAInterest | unknown | ethereum | n/a | [`0x3eef976c092271bf557cb3db26420acdd25b8449`](./contracts/ethereum-1/0x3eef976c092271bf557cb3db26420acdd25b8449/) | ⚠️ Unaudited |
| DistributionAPrincipal | unknown | ethereum | n/a | [`0xb6f4d51f72279e353432ff8e47bb3904e506a403`](./contracts/ethereum-1/0xb6f4d51f72279e353432ff8e47bb3904e506a403/) | ⚠️ Unaudited |
| DistributionSInterest | unknown | ethereum | n/a | [`0xfdbd256c0736d79e0082e9a4055a971cb12a296b`](./contracts/ethereum-1/0xfdbd256c0736d79e0082e9a4055a971cb12a296b/) | ⚠️ Unaudited |
| DistributionSPrincipal | unknown | ethereum | n/a | [`0xf65b60d127671acec535c359640ad390c2411577`](./contracts/ethereum-1/0xf65b60d127671acec535c359640ad390c2411577/) | ⚠️ Unaudited |
| DistributionUniPrincipal | unknown | ethereum | n/a | [`0x0aee8040c03add6e3fe7c1642dd6d870bd7e1bd5`](./contracts/ethereum-1/0x0aee8040c03add6e3fe7c1642dd6d870bd7e1bd5/) | ⚠️ Unaudited |
| DistributionUniSFI | unknown | ethereum | n/a | [`0xa80f63d14fbe8b82cd4807d838aada8b50def6e0`](./contracts/ethereum-1/0xa80f63d14fbe8b82cd4807d838aada8b50def6e0/) | ⚠️ Unaudited |
| FundRescue | unknown | ethereum | n/a | [`0x1ddbce49f3adf2ea0c2d4cd3a403cef2f6202667`](./contracts/ethereum-1/0x1ddbce49f3adf2ea0c2d4cd3a403cef2f6202667/) | ⚠️ Unaudited |
| RedeemRSFI | unknown | ethereum | n/a | [`0x710c4147be2f21e4229aaa0dfa8b64689cbbd9c9`](./contracts/ethereum-1/0x710c4147be2f21e4229aaa0dfa8b64689cbbd9c9/) | ⚠️ Unaudited |
| rSFI | unknown | ethereum | n/a | [`0x5db451f9913c57dc103c6b9df46ff9be42c28510`](./contracts/ethereum-1/0x5db451f9913c57dc103c6b9df46ff9be42c28510/) | ⚠️ Unaudited |
| SaffronERC20StakingPool | unknown | ethereum | n/a | [`0x0007a7e27db427e7ba4eda4baa41fc0e9f90719f`](./contracts/ethereum-1/0x0007a7e27db427e7ba4eda4baa41fc0e9f90719f/) | ⚠️ Unaudited |
| SaffronLPBalanceToken | unknown | ethereum | n/a | [`0x0206dc416802c24d0755e402bce39e23fb8a3b1e`](./contracts/ethereum-1/0x0206dc416802c24d0755e402bce39e23fb8a3b1e/) | ⚠️ Unaudited |
| SaffronPool | unknown | ethereum | n/a | [`0x0033d4276440c4d9d44e7551d3cb5f631872f754`](./contracts/ethereum-1/0x0033d4276440c4d9d44e7551d3cb5f631872f754/) | ⚠️ Unaudited |
| SaffronStakingV2 | unknown | ethereum | n/a | [`0x4eb4c5911e931667fe1647428f38401ab1661763`](./contracts/ethereum-1/0x4eb4c5911e931667fe1647428f38401ab1661763/) | ⚠️ Unaudited |
| SaffronStrategy | unknown | ethereum | n/a | [`0x0ecc64675d6a34d46054b4a4ed64923d77d82582`](./contracts/ethereum-1/0x0ecc64675d6a34d46054b4a4ed64923d77d82582/) | ⚠️ Unaudited |
| SaffronTeamHodl | unknown | ethereum | n/a | [`0x90b397f0962c3bc624f8ebc810c1e68655a4d0d3`](./contracts/ethereum-1/0x90b397f0962c3bc624f8ebc810c1e68655a4d0d3/) | ⚠️ Unaudited |
| SFI | unknown | ethereum | n/a | [`0x67ce406da479868a9782823b8979b07435eec641`](./contracts/ethereum-1/0x67ce406da479868a9782823b8979b07435eec641/) | ⚠️ Unaudited |
| SFIRewarder | unknown | ethereum | n/a | [`0x41fd2d494d59c441cee72bdb37acf8cfc8ca1789`](./contracts/ethereum-1/0x41fd2d494d59c441cee72bdb37acf8cfc8ca1789/) | ⚠️ Unaudited |
| SFITeamSplitter | unknown | ethereum | n/a | [`0x7f04f4f4978d60b9d6e8231089daa1bc28f18908`](./contracts/ethereum-1/0x7f04f4f4978d60b9d6e8231089daa1bc28f18908/) | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | [`0xce5e94cded8930aba0eeee9ebc9a3b0928b8bade`](./contracts/ethereum-1/0xce5e94cded8930aba0eeee9ebc9a3b0928b8bade/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x23a9292830fc80db7f563edb28d2fe6fb47f8624`](./contracts/ethereum-1/0x23a9292830fc80db7f563edb28d2fe6fb47f8624/) | ⚠️ Unaudited |

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
| ethereum | [`0x3eef976c092271bf557cb3db26420acdd25b8449`](./contracts/ethereum-1/0x3eef976c092271bf557cb3db26420acdd25b8449/) | DistributionAInterest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6f4d51f72279e353432ff8e47bb3904e506a403`](./contracts/ethereum-1/0xb6f4d51f72279e353432ff8e47bb3904e506a403/) | DistributionAPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdbd256c0736d79e0082e9a4055a971cb12a296b`](./contracts/ethereum-1/0xfdbd256c0736d79e0082e9a4055a971cb12a296b/) | DistributionSInterest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf65b60d127671acec535c359640ad390c2411577`](./contracts/ethereum-1/0xf65b60d127671acec535c359640ad390c2411577/) | DistributionSPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aee8040c03add6e3fe7c1642dd6d870bd7e1bd5`](./contracts/ethereum-1/0x0aee8040c03add6e3fe7c1642dd6d870bd7e1bd5/) | DistributionUniPrincipal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa80f63d14fbe8b82cd4807d838aada8b50def6e0`](./contracts/ethereum-1/0xa80f63d14fbe8b82cd4807d838aada8b50def6e0/) | DistributionUniSFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ddbce49f3adf2ea0c2d4cd3a403cef2f6202667`](./contracts/ethereum-1/0x1ddbce49f3adf2ea0c2d4cd3a403cef2f6202667/) | FundRescue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x710c4147be2f21e4229aaa0dfa8b64689cbbd9c9`](./contracts/ethereum-1/0x710c4147be2f21e4229aaa0dfa8b64689cbbd9c9/) | RedeemRSFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5db451f9913c57dc103c6b9df46ff9be42c28510`](./contracts/ethereum-1/0x5db451f9913c57dc103c6b9df46ff9be42c28510/) | rSFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0007a7e27db427e7ba4eda4baa41fc0e9f90719f`](./contracts/ethereum-1/0x0007a7e27db427e7ba4eda4baa41fc0e9f90719f/) | SaffronERC20StakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0206dc416802c24d0755e402bce39e23fb8a3b1e`](./contracts/ethereum-1/0x0206dc416802c24d0755e402bce39e23fb8a3b1e/) | SaffronLPBalanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0033d4276440c4d9d44e7551d3cb5f631872f754`](./contracts/ethereum-1/0x0033d4276440c4d9d44e7551d3cb5f631872f754/) | SaffronPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eb4c5911e931667fe1647428f38401ab1661763`](./contracts/ethereum-1/0x4eb4c5911e931667fe1647428f38401ab1661763/) | SaffronStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ecc64675d6a34d46054b4a4ed64923d77d82582`](./contracts/ethereum-1/0x0ecc64675d6a34d46054b4a4ed64923d77d82582/) | SaffronStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90b397f0962c3bc624f8ebc810c1e68655a4d0d3`](./contracts/ethereum-1/0x90b397f0962c3bc624f8ebc810c1e68655a4d0d3/) | SaffronTeamHodl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67ce406da479868a9782823b8979b07435eec641`](./contracts/ethereum-1/0x67ce406da479868a9782823b8979b07435eec641/) | SFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41fd2d494d59c441cee72bdb37acf8cfc8ca1789`](./contracts/ethereum-1/0x41fd2d494d59c441cee72bdb37acf8cfc8ca1789/) | SFIRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f04f4f4978d60b9d6e8231089daa1bc28f18908`](./contracts/ethereum-1/0x7f04f4f4978d60b9d6e8231089daa1bc28f18908/) | SFITeamSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce5e94cded8930aba0eeee9ebc9a3b0928b8bade`](./contracts/ethereum-1/0xce5e94cded8930aba0eeee9ebc9a3b0928b8bade/) | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
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
