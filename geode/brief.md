# Agentic Audit Brief: Geode

## Project Overview

- Project: Geode (`geode`)
- Website: [https://www.geode.fi/](https://www.geode.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.257Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: avalanche
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $346,887.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 9 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/9 (66.7%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/11
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 66.7% (ConsenSys Diligence)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys Diligence | Tier 1 | 6 | 54.5% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmplificationUtils | unknown | avalanche | n/a | [`0x0220ba3dcecf50fa376cce84d1d9ecc0bee9b72b`](./contracts/avalanche-43114/0x0220ba3dcecf50fa376cce84d1d9ecc0bee9b72b/) | ✅ Audited |
| ERC20InterfaceUpgradable | unknown | avalanche | n/a | [`0x08b201c31201e1b75ad6c18a8d70492259fa4142`](./contracts/avalanche-43114/0x08b201c31201e1b75ad6c18a8d70492259fa4142/) | ✅ Audited |
| LPToken | unknown | avalanche | n/a | [`0x71b0cd5c4db483ae8a09df0f83f69bac400dbe8c`](./contracts/avalanche-43114/0x71b0cd5c4db483ae8a09df0f83f69bac400dbe8c/) | ✅ Audited |
| StakeUtils | unknown | avalanche | n/a | [`0x1ea72390e12cbe0da8304ab19b6e521a31692332`](./contracts/avalanche-43114/0x1ea72390e12cbe0da8304ab19b6e521a31692332/) | ✅ Audited |
| Swap | unknown | avalanche | n/a | [`0x577a73075f35a0a013afc651126f714284355f09`](./contracts/avalanche-43114/0x577a73075f35a0a013afc651126f714284355f09/) | ✅ Audited |
| SwapUtils | unknown | avalanche | n/a | [`0x29be4798db7eb77d20ed35ad642da852ae702c09`](./contracts/avalanche-43114/0x29be4798db7eb77d20ed35ad642da852ae702c09/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DataStoreUtils | unknown | avalanche | n/a | [`0xb25a4298f51d6028b50df845c3cbf49f4cfdc570`](./contracts/avalanche-43114/0xb25a4298f51d6028b50df845c3cbf49f4cfdc570/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x115fe12263515047d2f87f1a04870f33afa07e63`](./contracts/avalanche-43114/0x115fe12263515047d2f87f1a04870f33afa07e63/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x4948d893b6c71fc1736789b8fef90907ef2284fa`](./contracts/avalanche-43114/0x4948d893b6c71fc1736789b8fef90907ef2284fa/) | ⚠️ Unaudited |
| gAVAX | unknown | avalanche | n/a | [`0x1cfbdc5468f7d10d136c3d92317d50294127b24b`](./contracts/avalanche-43114/0x1cfbdc5468f7d10d136c3d92317d50294127b24b/) | ⚠️ Unaudited |
| GeodeUtils | unknown | avalanche | n/a | [`0x76e42b4c138e03f4e1719ca5cd1fec13e459fa5b`](./contracts/avalanche-43114/0x76e42b4c138e03f4e1719ca5cd1fec13e459fa5b/) | ⚠️ Unaudited |

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
| [2022-10-Diligence-Audit-Report-v1.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2FgXfJDYahjqo7b24xjtqY%2F2022-10-geodefi-audit-v1.pdf) | Consensys Diligence | Audit | 2022-10 | stale | Direct | contract_name | 6 | high |
| [2023-03-Diligence-Audit-Response.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2FnzbntAjkNqkgkZNowPAe%2F2023-03-Diligence-Audit-Response-2.pdf) | Consensys Diligence | Audit | 2023-03 | stale | Direct | contract_name | 6 | high |
| [2023-03-Internal-Audit-Report.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2F6wmagkLikYak3zZ8uTki%2F2023-03-Internal-Audit-Report.pdf) | Internal | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-05-Diligence-Audit-Report-v2.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2Fh2dsHDg3kte5W3nIkXCY%2F2023-05-geode-staking-v2-audit.pdf) | Consensys Diligence | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [2023-07-Shieldify-Audit-Report.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2Fhmp5fqU9OPtw3tYVv3Iu%2F2023-07-Shieldify-Audit-Report.pdf) | Shieldify | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf](https://2485428749-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fw9Axw7FT11SMG7vNQwDN%2Fuploads%2F8Cpu7l9588XuD6hPRvO6%2F2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf) | Consensys Diligence | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xb25a4298f51d6028b50df845c3cbf49f4cfdc570`](./contracts/avalanche-43114/0xb25a4298f51d6028b50df845c3cbf49f4cfdc570/) | DataStoreUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1cfbdc5468f7d10d136c3d92317d50294127b24b`](./contracts/avalanche-43114/0x1cfbdc5468f7d10d136c3d92317d50294127b24b/) | gAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x76e42b4c138e03f4e1719ca5cd1fec13e459fa5b`](./contracts/avalanche-43114/0x76e42b4c138e03f4e1719ca5cd1fec13e459fa5b/) | GeodeUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=12

Zero-match audit list:

- [20426] 2023-03-Internal-Audit-Report.pdf
- [20427] 2023-05-Diligence-Audit-Report-v2.pdf
- [20428] 2023-07-Shieldify-Audit-Report.pdf
- [20429] 2023-10-Diligence-Audit-Report-Withdrawal-v1.pdf

Fork inheritance lineage and inherited audits are included when available.
