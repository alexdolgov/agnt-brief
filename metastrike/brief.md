# Agentic Audit Brief: Metastrike

## Project Overview

- Project: Metastrike (`metastrike`)
- Website: [https://metastrike.io](https://metastrike.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.674Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 18 unique implementations (45 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 31 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 5 ERC721 NFTs, 3 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (rewardsdistributionrecipient, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 45 (45 live, 0 unknown).
- Excluded by liveness: 19 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/18 (0.0%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
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
| Address | unknown | bsc | n/a | [`0x87e744370435ec28c41acd3f07139ec2e11651fb`](./contracts/bsc-56/0x87e744370435ec28c41acd3f07139ec2e11651fb/) | ⚠️ Unaudited |
| MetaFixedStaking | unknown | bsc | n/a | [`0x3668b1fbba7ea689901b5ab530401cc0134322c6`](./contracts/bsc-56/0x3668b1fbba7ea689901b5ab530401cc0134322c6/) | ⚠️ Unaudited |
| MetaLuckyNumber | unknown | bsc | n/a | [`0x442d2b6ffa3f68a08655b067ec76a6a7f3565e9d`](./contracts/bsc-56/0x442d2b6ffa3f68a08655b067ec76a6a7f3565e9d/) | ⚠️ Unaudited |
| MetaMarketplace | unknown | bsc | n/a | [`0x5afed82daedc7fb94ff3bc3fc81d46dd2f65d5e9`](./contracts/bsc-56/0x5afed82daedc7fb94ff3bc3fc81d46dd2f65d5e9/) | ⚠️ Unaudited |
| MetaMetal | unknown | bsc | n/a | [`0x4ca3cb37de06fd80e79af8533713b377687b15c5`](./contracts/bsc-56/0x4ca3cb37de06fd80e79af8533713b377687b15c5/) | ⚠️ Unaudited |
| MetaSingleStakingV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x49ae88cc37fbcaca51f412707be81b933cd4ad5e`](./contracts/bsc-56/0x49ae88cc37fbcaca51f412707be81b933cd4ad5e/); bsc `0x59677cb2e5e5fed474d67d1d48e3d3a8bc39b554` | ⚠️ Unaudited |
| MetaStrike | unknown | bsc | n/a | [`0x496cc0b4ee12aa2ac4c42e93067484e7ff50294b`](./contracts/bsc-56/0x496cc0b4ee12aa2ac4c42e93067484e7ff50294b/) | ⚠️ Unaudited |
| MetastrikeAirdrop | unknown | bsc | n/a | [`0xfff470343cb350c8078d5b7c1d7099d1ebe45556`](./contracts/bsc-56/0xfff470343cb350c8078d5b7c1d7099d1ebe45556/) | ⚠️ Unaudited |
| MetastrikeBattlePass | unknown | bsc | n/a | 8 deployments: bsc [`0x04152bb8f79698a621c6194e92bebc0a2e1d0861`](./contracts/bsc-56/0x04152bb8f79698a621c6194e92bebc0a2e1d0861/); bsc `0x472cf7a6c90d4dbf6846ed99f43c91b24091bc2d`; bsc `0x4d84ffdb40c9b4a8fb9912dd80bb9ee2532683bd`; bsc `0x52d9b440b7dad6355e5a12b955bab7fbc6414206`; bsc `0x97293a871705978514f714c3bb74ee0814eeddb3`; bsc `0xa7c703a91854f3fff0b23b515cd2a829f46fb155`; bsc `0xdaf6de4f810e58cc4c15703a3ece736c652ffd39`; bsc `0xdb138ccb305bc2676e11869e7f6ad2aca0cdc970` | ⚠️ Unaudited |
| MetastrikeBeginnerBox | unknown | bsc | n/a | 6 deployments: bsc [`0x0925c89f66769b9fef97c59a2540b03ec4d628cb`](./contracts/bsc-56/0x0925c89f66769b9fef97c59a2540b03ec4d628cb/); bsc `0x0aeb79f412319450319ccf83dadc7ef27c8d10e5`; bsc `0x4680f0be8a9abea518714385eaa5e242dcb54767`; bsc `0x6240fa0e140aa3653dddacc7f6bae8a802679fec`; bsc `0x96ae0cc3141cf923da5ae820eed553e0e382692c`; bsc `0xd1d2ecfc60d729a24a8ee06189b236f6cad60514` | ⚠️ Unaudited |
| MetaStrikeBox | unknown | bsc | n/a | 2 deployments: bsc [`0x3a7d3a7c38e49a7b1fe893b1ca197e57292cd602`](./contracts/bsc-56/0x3a7d3a7c38e49a7b1fe893b1ca197e57292cd602/); bsc `0xecf89a06a7a5fb7202d16c7ddc006ecf10e31953` | ⚠️ Unaudited |
| MetaStrikeCore | unknown | bsc | n/a | [`0x50bf69324a9be94673a2207427c5bebd8f63d76a`](./contracts/bsc-56/0x50bf69324a9be94673a2207427c5bebd8f63d76a/) | ⚠️ Unaudited |
| MetastrikeGenesisBox | unknown | bsc | n/a | 7 deployments: bsc [`0x1d906450c41db40479333c58a6d22c3bc9e76d05`](./contracts/bsc-56/0x1d906450c41db40479333c58a6d22c3bc9e76d05/); bsc `0x2f6bebaba2f0d93bc6d8ced1f39d43bee13bb9d9`; bsc `0x8f0216fdfaca6e81c31fbfeac15ab57511d5f606`; bsc `0xb36191c23b1eefe9de046d773be1a860a36db754`; bsc `0xe54ec77c8b057fcf40de2775f778dbbc99093e16`; bsc `0xee361792c61226646326770d05fb21e805300442`; bsc `0xff598b6ddb7692094c62574cd6ad86c930d66441` | ⚠️ Unaudited |
| MetaVesting | unknown | bsc | n/a | 5 deployments: bsc [`0x28f7181766fc1c8b30504d418ce6fb2ff1940170`](./contracts/bsc-56/0x28f7181766fc1c8b30504d418ce6fb2ff1940170/); bsc `0x5fda0c2389ab7af0d90eae32553a9e80de2976f4`; bsc `0x70dc6a03af0db587d33173f874d28759fdeb803d`; bsc `0x8be5ee50f10a2ff7313b24cacfc21639bef48b60`; bsc `0xb9dc1b0a8b61ee059f0733f1510828601271d4eb` | ⚠️ Unaudited |
| MetaVesting2 | unknown | bsc | n/a | 2 deployments: bsc [`0xbfa53a34c800c7362548cdb93fdc35d9b92311d3`](./contracts/bsc-56/0xbfa53a34c800c7362548cdb93fdc35d9b92311d3/); bsc `0xfd9ea0e249293f9589e18d8ce8973ce985e90e52` | ⚠️ Unaudited |
| MetaVesting3 | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x37976466f68c7b74bea901e49263f8c7e081d42d`](./contracts/bsc-56/0x37976466f68c7b74bea901e49263f8c7e081d42d/); bsc `0x40b5cc7a5307a703e6026f11540871038cd52fa7`; bsc `0xaf7b663f71698f21f65dd8021802eee6ffe37659` | ⚠️ Unaudited |
| MetaVesting4 | operational_periphery | bsc | n/a | [`0x263718b1dfeca8b49406fd4fd1ac5afd05619d69`](./contracts/bsc-56/0x263718b1dfeca8b49406fd4fd1ac5afd05619d69/) | ⚠️ Unaudited |
| MetaVesting5 | operational_periphery | bsc | n/a | [`0x5573a696262362218331c9ba832315205d4289e0`](./contracts/bsc-56/0x5573a696262362218331c9ba832315205d4289e0/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-ERC20-MetaStrike-v1.0.pdf](https://github.com/MetastrikeHQ/smartcontracts/blob/main/audit-reports/PeckShield-Audit-Report-ERC20-MetaStrike-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Verichains-Public-Audit-Report-MetaStrike-tokens-v1.2.pdf](https://github.com/MetastrikeHQ/smartcontracts/blob/main/audit-reports/Verichains-Public-Audit-Report-MetaStrike-tokens-v1.2.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x87e744370435ec28c41acd3f07139ec2e11651fb`](./contracts/bsc-56/0x87e744370435ec28c41acd3f07139ec2e11651fb/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3668b1fbba7ea689901b5ab530401cc0134322c6`](./contracts/bsc-56/0x3668b1fbba7ea689901b5ab530401cc0134322c6/) | MetaFixedStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x442d2b6ffa3f68a08655b067ec76a6a7f3565e9d`](./contracts/bsc-56/0x442d2b6ffa3f68a08655b067ec76a6a7f3565e9d/) | MetaLuckyNumber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5afed82daedc7fb94ff3bc3fc81d46dd2f65d5e9`](./contracts/bsc-56/0x5afed82daedc7fb94ff3bc3fc81d46dd2f65d5e9/) | MetaMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ca3cb37de06fd80e79af8533713b377687b15c5`](./contracts/bsc-56/0x4ca3cb37de06fd80e79af8533713b377687b15c5/) | MetaMetal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x49ae88cc37fbcaca51f412707be81b933cd4ad5e`](./contracts/bsc-56/0x49ae88cc37fbcaca51f412707be81b933cd4ad5e/) | MetaSingleStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x496cc0b4ee12aa2ac4c42e93067484e7ff50294b`](./contracts/bsc-56/0x496cc0b4ee12aa2ac4c42e93067484e7ff50294b/) | MetaStrike | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfff470343cb350c8078d5b7c1d7099d1ebe45556`](./contracts/bsc-56/0xfff470343cb350c8078d5b7c1d7099d1ebe45556/) | MetastrikeAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04152bb8f79698a621c6194e92bebc0a2e1d0861`](./contracts/bsc-56/0x04152bb8f79698a621c6194e92bebc0a2e1d0861/) | MetastrikeBattlePass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0925c89f66769b9fef97c59a2540b03ec4d628cb`](./contracts/bsc-56/0x0925c89f66769b9fef97c59a2540b03ec4d628cb/) | MetastrikeBeginnerBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a7d3a7c38e49a7b1fe893b1ca197e57292cd602`](./contracts/bsc-56/0x3a7d3a7c38e49a7b1fe893b1ca197e57292cd602/) | MetaStrikeBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50bf69324a9be94673a2207427c5bebd8f63d76a`](./contracts/bsc-56/0x50bf69324a9be94673a2207427c5bebd8f63d76a/) | MetaStrikeCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d906450c41db40479333c58a6d22c3bc9e76d05`](./contracts/bsc-56/0x1d906450c41db40479333c58a6d22c3bc9e76d05/) | MetastrikeGenesisBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x28f7181766fc1c8b30504d418ce6fb2ff1940170`](./contracts/bsc-56/0x28f7181766fc1c8b30504d418ce6fb2ff1940170/) | MetaVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbfa53a34c800c7362548cdb93fdc35d9b92311d3`](./contracts/bsc-56/0xbfa53a34c800c7362548cdb93fdc35d9b92311d3/) | MetaVesting2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x37976466f68c7b74bea901e49263f8c7e081d42d`](./contracts/bsc-56/0x37976466f68c7b74bea901e49263f8c7e081d42d/) | MetaVesting3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x263718b1dfeca8b49406fd4fd1ac5afd05619d69`](./contracts/bsc-56/0x263718b1dfeca8b49406fd4fd1ac5afd05619d69/) | MetaVesting4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5573a696262362218331c9ba832315205d4289e0`](./contracts/bsc-56/0x5573a696262362218331c9ba832315205d4289e0/) | MetaVesting5 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13485] PeckShield-Audit-Report-ERC20-MetaStrike-v1.0.pdf
- [13486] Verichains-Public-Audit-Report-MetaStrike-tokens-v1.2.pdf

Fork inheritance lineage and inherited audits are included when available.
