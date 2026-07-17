# Agentic Audit Brief: Fuji Finance

## Project Overview

- Project: Fuji Finance (`fuji-finance`)
- Website: [https://fuji.finance/](https://fuji.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.563Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: ethereum, fantom
- Contract surface: 10 unique implementations (22 raw deployments)
- DeFi Llama TVL: $139,604.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 25 project-authored contract(s) across 1 chain(s); 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (helperfunct). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 22 (18 live, 4 unknown).
- Excluded by liveness: 27 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/6 (50.0%)
- Deployed-live implementations: 6 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/6
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 10
- Raw deployments: 22
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 16.7% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2022-12 |
| Trail of Bits | Tier 1 | 1 | 16.7% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddrMapper | unknown | ethereum | n/a | [`0x2430ab56fb46bcac05e39aa947d26e8eef4a881a`](./contracts/ethereum-1/0x2430ab56fb46bcac05e39aa947d26e8eef4a881a/) | ✅ Audited |
| FujiERC1155 | token | ethereum | n/a | [`0x1cf24e4ec41da581bee223e1affebb62a5a95484`](./contracts/ethereum-1/0x1cf24e4ec41da581bee223e1affebb62a5a95484/) | ✅ Audited |
| FujiOracle | unknown | ethereum | n/a | [`0xadf849079d415157cbbdb21bb7542b47077734a8`](./contracts/ethereum-1/0xadf849079d415157cbbdb21bb7542b47077734a8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Controller | unknown | ethereum | n/a | 3 deployments: ethereum [`0x30c591b64c39ad8e9f5139521cedb077d27a724a`](./contracts/ethereum-1/0x30c591b64c39ad8e9f5139521cedb077d27a724a/); ethereum `0x3f366802f4e7576fc5daa82890cc6e04c85f3736`; ethereum `0xb24f1011d255a83093776ba8a8c4cd1d4ec3dab7` | ⚠️ Unaudited |
| Flasher | unknown | ethereum | n/a | 9 deployments: ethereum [`0x01267e6b6ec2196c6e21a64a7f3e3211f10cccae`](./contracts/ethereum-1/0x01267e6b6ec2196c6e21a64a7f3e3211f10cccae/); ethereum `0x15d2f1f6e1bc3abfa284698b3337cbf98c9cb64e`; ethereum `0x3067fed80acc37e3f018b9c37181aadc0af9cfb1`; ethereum `0x54f72175c40c3f4857b18fe539a85ddb92f6d985`; ethereum `0x68c3dfecc475e51c8c3e67d676cb41d81b84ed83`; ethereum `0x7b28716a339e33b9d42f927196016458aca55947`; ethereum `0x845f591778d05112d4d9709366d4d26f3cae62f5`; ethereum `0xd13e1da292432d06f65479f62d1ef4280125010a`; ethereum `0xf45f46c2c0521c8921447132edcbadb628d3b9d3` | ⚠️ Unaudited |
| Fliquidator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x53032dc4dd5c85efee772b1fe38de05ed27d9cd2`](./contracts/ethereum-1/0x53032dc4dd5c85efee772b1fe38de05ed27d9cd2/); ethereum `0xd43e4be9125de772237f0bc9701e5ca3afae6268`; ethereum `0xe3a2df184c021b8cbdfe2e89f7d3f495473b2be0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x76e77921341e4414e60bde4a3f56822c70e3adf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e2b7c84ebc915f848ba69ba44cf75044cf10951` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79fcb669b505b5217c477974a1a8f5c86c3de66` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb4e2ec87f8e6e166929a900ed433c4589d721d70` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Fuji_Securing_2021-07.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_Securing_2021-07.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 1 | n/a |
| [Fuji_TrailOfBits_2021-11.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_TrailOfBits_2021-11.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [2022_11_Fujidao_Labs_OU.pdf](https://github.com/ComposableSecurity/.github/blob/main/reports/2022_11_Fujidao_Labs_OU.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x30c591b64c39ad8e9f5139521cedb077d27a724a`](./contracts/ethereum-1/0x30c591b64c39ad8e9f5139521cedb077d27a724a/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01267e6b6ec2196c6e21a64a7f3e3211f10cccae`](./contracts/ethereum-1/0x01267e6b6ec2196c6e21a64a7f3e3211f10cccae/) | Flasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53032dc4dd5c85efee772b1fe38de05ed27d9cd2`](./contracts/ethereum-1/0x53032dc4dd5c85efee772b1fe38de05ed27d9cd2/) | Fliquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=2, extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
