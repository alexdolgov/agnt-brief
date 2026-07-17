# Agentic Audit Brief: Yaka Finance

## Project Overview

- Project: Yaka Finance (`yaka-finance`)
- Website: [https://yaka.finance/](https://yaka.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.704Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: sei
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $8,732.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 16 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 7 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 22 (6 live, 16 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 6 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/10
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 10.0% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| InitialDistributor | operational_periphery | sei | n/a | [`0x18ed6e09719093fa42a521dd5b50fb206204b122`](./contracts/sei-1329/0x18ed6e09719093fa42a521dd5b50fb206204b122/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DistributeFees | unknown | sei | n/a | [`0x578cbecc706344c4737c59165eb2e59ec39004f0`](./contracts/sei-1329/0x578cbecc706344c4737c59165eb2e59ec39004f0/) | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | sei | n/a | [`0x4c72f6258540ee8c2656b511a0b75e9ea9ed0003`](./contracts/sei-1329/0x4c72f6258540ee8c2656b511a0b75e9ea9ed0003/) | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | sei | n/a | [`0x943a6285ea6afcd77c7f35672e378c665a231fbc`](./contracts/sei-1329/0x943a6285ea6afcd77c7f35672e378c665a231fbc/) | ⚠️ Unaudited |
| Minter | unknown | sei | n/a | [`0x5a4849e824923449c652642f30a015dcdae3697e`](./contracts/sei-1329/0x5a4849e824923449c652642f30a015dcdae3697e/) | ⚠️ Unaudited |
| PairFactory | registry | sei | n/a | [`0xd45daff288075952822d5323f1d571e73435e929`](./contracts/sei-1329/0xd45daff288075952822d5323f1d571e73435e929/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | sei | n/a | [`0xac76b04f87ccbfb4ba01f76f34b9f1b770839ebe`](./contracts/sei-1329/0xac76b04f87ccbfb4ba01f76f34b9f1b770839ebe/) | ⚠️ Unaudited |
| RouterV2 | adapter | sei | n/a | [`0x9f3b1c6b0cddfe7adadd7aadf72273b38eff0ebc`](./contracts/sei-1329/0x9f3b1c6b0cddfe7adadd7aadf72273b38eff0ebc/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sei | n/a | [`0x86a247ef0fc244565bcab93936e867407ac81580`](./contracts/sei-1329/0x86a247ef0fc244565bcab93936e867407ac81580/) | ⚠️ Unaudited |
| Yaka | unknown | sei | n/a | [`0x51121bcae92e302f19d06c193c95e1f7b81a444b`](./contracts/sei-1329/0x51121bcae92e302f19d06c193c95e1f7b81a444b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sei | n/a | `0x1c7632e88650fa39bddfe07107dc4297fe5c01c3` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x2407fe013e064490c84531e84a6ae39ad938fe9f` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x2b563d5f03c9b5bd2fff94c376fed849cc1ec27f` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x2ce429846a6df708bf102468f628ea80152d5138` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6144cd4c3ad9b68eb9ae7751f02678510a75c5de` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x631ba3f02d2efb290bf205bf1d9f326ffb5b055f` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x65e01abcd307b8c36adb40ea8fa90c38966458e6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6ef5bcd2a4bf257710cc8240f8c7117bd3c9fdf9` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7ac2beefdd9493c690f342678c9e08ff450a6ce6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xc039db44998ffc0f0e0611de33840d5d13ab18d8` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xd6b0f00cfc9fe8916e2bf826cebfc4ca1f00a194` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf3b49cce29d175effe5c80382502868b29f727ad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [YAKA_202405231200.pdf](https://www.beosin.com/audits/YAKA_202405231200.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x578cbecc706344c4737c59165eb2e59ec39004f0`](./contracts/sei-1329/0x578cbecc706344c4737c59165eb2e59ec39004f0/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x4c72f6258540ee8c2656b511a0b75e9ea9ed0003`](./contracts/sei-1329/0x4c72f6258540ee8c2656b511a0b75e9ea9ed0003/) | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x943a6285ea6afcd77c7f35672e378c665a231fbc`](./contracts/sei-1329/0x943a6285ea6afcd77c7f35672e378c665a231fbc/) | GaugeFactoryV2_CL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5a4849e824923449c652642f30a015dcdae3697e`](./contracts/sei-1329/0x5a4849e824923449c652642f30a015dcdae3697e/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xd45daff288075952822d5323f1d571e73435e929`](./contracts/sei-1329/0xd45daff288075952822d5323f1d571e73435e929/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xac76b04f87ccbfb4ba01f76f34b9f1b770839ebe`](./contracts/sei-1329/0xac76b04f87ccbfb4ba01f76f34b9f1b770839ebe/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x9f3b1c6b0cddfe7adadd7aadf72273b38eff0ebc`](./contracts/sei-1329/0x9f3b1c6b0cddfe7adadd7aadf72273b38eff0ebc/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x86a247ef0fc244565bcab93936e867407ac81580`](./contracts/sei-1329/0x86a247ef0fc244565bcab93936e867407ac81580/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x51121bcae92e302f19d06c193c95e1f7b81a444b`](./contracts/sei-1329/0x51121bcae92e302f19d06c193c95e1f7b81a444b/) | Yaka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
