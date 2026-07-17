# Agentic Audit Brief: LUSD ChickenBonds

## Project Overview

- Project: LUSD ChickenBonds (`lusd-chickenbonds`)
- Website: [https://www.chickenbonds.org](https://www.chickenbonds.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.235Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: ethereum
- Contract surface: 5 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,499,600.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 9
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinspect | Tier 2 | 3 | 60.0% | 2022-10 |
| Dedaub | Tier 2 | 3 | 60.0% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BLUSDToken | token | ethereum | n/a | [`0xb9d7dddca9a4ac480991865efef82e01273f79c3`](./contracts/ethereum-1/0xb9d7dddca9a4ac480991865efef82e01273f79c3/) | ✅ Audited |
| BondNFT | token | ethereum | n/a | [`0xa8384862219188a8f03c144953cf21fc124029ee`](./contracts/ethereum-1/0xa8384862219188a8f03c144953cf21fc124029ee/) | ✅ Audited |
| ChickenBondManager | governance | ethereum | n/a | [`0x57619fe9c539f890b19c61812226f9703ce37137`](./contracts/ethereum-1/0x57619fe9c539f890b19c61812226f9703ce37137/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | [`0xfeb4acf3df3cdea7399794d0869ef76a6efaff52`](./contracts/ethereum-1/0xfeb4acf3df3cdea7399794d0869ef76a6efaff52/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5fa5b62c8af877cb37031e0a3b2f34a78e3c56a6`](./contracts/ethereum-1/0x5fa5b62c8af877cb37031e0a3b2f34a78e3c56a6/); ethereum `0x74ed5d42203806c8cdcf2f04ca5f60dc777b901c`; ethereum `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7`; ethereum `0xda0dd1798be66e17d5ab1dc476302b56689c2db4`; ethereum `0xed279fdd11ca84beef15af5d39bb4d4bee23f0ca` | ⚠️ Unaudited |

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
| [B.Protocol - Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/B.Protocol%20-%20Chicken%20Bonds%20Audit.pdf) | B.Protocol | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBond.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBond.pdf) | Coinspect | Audit | 2022-05 | stale | Direct | contract_name | 3 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 2nd v220803.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%202nd%20v220803.pdf) | Coinspect | Audit | 2022-07 | stale | Direct | contract_name | 3 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 3rd v220929.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%203rd%20v220929.pdf) | Coinspect | Audit | 2022-09 | stale | Direct | contract_name | 3 | n/a |
| [Coinspect - Smart Contract Audit - Liquity ChickenBonds 4th v221021.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Liquity%20ChickenBonds%204th%20v221021.pdf) | Coinspect | Audit | 2022-10 | stale | Direct | contract_name | 2 | n/a |
| [Dedaub_Chicken Bonds Audit.pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Audit.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | contract_name | 3 | n/a |
| [Dedaub_Chicken Bonds Delta Audit (NFT additions).pdf](https://github.com/liquity/ChickenBond/blob/main/LUSDChickenBonds/audits/Dedaub_Chicken%20Bonds%20Delta%20Audit%20(NFT%20additions).pdf) | Dedaub | Audit | 2022-09 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5fa5b62c8af877cb37031e0a3b2f34a78e3c56a6`](./contracts/ethereum-1/0x5fa5b62c8af877cb37031e0a3b2f34a78e3c56a6/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=17

Zero-match audit list:

- [14520] B.Protocol - Chicken Bonds Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
