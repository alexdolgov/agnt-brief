# Agentic Audit Brief: Tornado Cash

## Project Overview

- Project: Tornado Cash (`tornado-cash`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.566Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum, optimism
- Contract surface: 22 unique implementations (23 raw deployments)
- DeFi Llama TVL: $417,379,299.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 23 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (merkletreewithhistory, ctoken, exponential). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/21 (28.6%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/22
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 23
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 27.3% | n/a |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| cTornado | unknown | ethereum | n/a | [`0x03893a...656003`](./contracts/ethereum-1/0x03893a7c7463ae47d46bc7f091665f1893656003/) | ✅ Audited |
| ERC20Tornado | unknown | ethereum | n/a | [`0x07687e...fd2730`](./contracts/ethereum-1/0x07687e702b410fa43f4cb4af7fa097918ffd2730/) | ✅ Audited |
| ETHTornado | unknown | optimism | n/a | [`0x1e34a7...de95dd`](./contracts/optimism-10/0x1e34a77868e19a6647b1f2f47b51ed72dede95dd/) | ✅ Audited |
| TornadoCash_erc20 | unknown | ethereum | n/a | [`0x083622...1a872f`](./contracts/ethereum-1/0x0836222f2b2b24a3f36f98668ed8f0b38d1a872f/) | ✅ Audited |
| TornadoCash_Eth_01 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12d66f...16b8fc`](./contracts/ethereum-1/0x12d66f87a04a9e220743712ce6d9bb1b5616b8fc/); ethereum `0x47ce0c...3c2936` | ✅ Audited |
| Verifier | unknown | ethereum | n/a | [`0x0db297...d3fd6c`](./contracts/ethereum-1/0x0db297c70758f31a63235edfded040a04ad3fd6c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xb541fc...c6ffef`](./contracts/ethereum-1/0xb541fc07bc7619fd4062a54d96268525cbc6ffef/) | ⚠️ Unaudited |
| BatchTreeUpdateVerifier | unknown | ethereum | n/a | [`0xed3b00...b507c6`](./contracts/ethereum-1/0xed3b00b651c4c7af77c2fddce4a388de84b507c6/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | ⚠️ Unaudited |
| Mixer | unknown | ethereum | n/a | [`0x89450e...b3232b`](./contracts/ethereum-1/0x89450e30b806ab95341fade5a9010af146b3232b/) | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | ethereum | n/a | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | ethereum | n/a | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | ⚠️ Unaudited |
| Proposal | unknown | ethereum | n/a | [`0x4b6c07...6eace5`](./contracts/ethereum-1/0x4b6c07b8940a7602fe4332afa915b366e56eace5/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x6d903f...c33925`](./contracts/ethereum-1/0x6d903f6003cca6255d85cca4d3b5e5146dc33925/) | ⚠️ Unaudited |
| TORN | unknown | ethereum | n/a | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | ⚠️ Unaudited |

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
| [tornado.cash](https://tornado.cash) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [README.md](https://github.com/tornadocash/tornado-core/blob/master/README.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 7 | low |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xed3b00...b507c6`](./contracts/ethereum-1/0xed3b00b651c4c7af77c2fddce4a388de84b507c6/) | BatchTreeUpdateVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | CErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | JumpRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf859a1...174088`](./contracts/ethereum-1/0xf859a1ad94bcf445a406b892ef0d3082f4174088/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89450e...b3232b`](./contracts/ethereum-1/0x89450e30b806ab95341fade5a9010af146b3232b/) | Mixer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | NCStableCoinInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | NCStandardInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b6c07...6eace5`](./contracts/ethereum-1/0x4b6c07b8940a7602fe4332afa915b366e56eace5/) | Proposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d903f...c33925`](./contracts/ethereum-1/0x6d903f6003cca6255d85cca4d3b5e5146dc33925/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77777f...6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | TORN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c159c...986069`](./contracts/ethereum-1/0x8c159cfd11677a4f2fe4fd0278dd37a95b986069/) | WhitePaperInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: extraction_exact=7

Zero-match audit list:

- [21191] tornado.cash

Fork inheritance lineage and inherited audits are included when available.
