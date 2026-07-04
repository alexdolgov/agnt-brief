# Agentic Audit Brief: ChainPort

## Project Overview

- Project: ChainPort (`chainport`)
- Website: [https://app.chainport.io](https://app.chainport.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.225Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc, ethereum, polygon
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $597,159.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 11 project-authored contract(s) across 3 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (contextupgradeable, chainportmiddleware). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/9 (44.4%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/11
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 44.4% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 4 | 36.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChainportCongressMembersRegistry | unknown | bsc | n/a | [`0x1dee7b...50abca`](./contracts/bsc-56/0x1dee7be5415f6fdcc8515ca06ae8d9afb550abca/) | ✅ Audited |
| ChainportMainBridge | unknown | ethereum | n/a | [`0x93307c...c7ddff`](./contracts/ethereum-1/0x93307c7de0f1b54814135f06321639a9f5c7ddff/) | ✅ Audited |
| ChainportSideBridge | unknown | polygon | n/a | [`0xb19881...47de1a`](./contracts/polygon-137/0xb198814fc92a50017701485dc554bd08d047de1a/) | ✅ Audited |
| Validator | unknown | bsc | n/a | [`0x451b0d...f36769`](./contracts/bsc-56/0x451b0d1022edecffce8a4c6b97c0de3a46f36769/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeMintableTokenV2 | unknown | bsc | n/a | [`0x104f31...6566ac`](./contracts/bsc-56/0x104f3152d8ebfc3f679392977356962ff36566ac/) | ⚠️ Unaudited |
| ChainportBridgeBsc | unknown | bsc | n/a | [`0x71b4ea...c48aa0`](./contracts/bsc-56/0x71b4ea7af852bbbdce96348974c7ea1f34c48aa0/) | ⚠️ Unaudited |
| ChainportCongress | unknown | polygon | n/a | [`0x71d57e...949621`](./contracts/polygon-137/0x71d57ee5471b720642a129621ea694da8f949621/) | ⚠️ Unaudited |
| ChainportToken | unknown | ethereum | n/a | [`0x241663...0a5df5`](./contracts/ethereum-1/0x241663b6ae912f2a5dffdcb7a3550bf60c0a5df5/) | ⚠️ Unaudited |
| MaintainersRegistry | unknown | bsc | n/a | [`0x33e6a5...6eeb13`](./contracts/bsc-56/0x33e6a5fb807bb361c4ff3b539b9fbb019a6eeb13/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x2861f4...9fc35c`](./contracts/polygon-137/0x2861f4fcadeb5be5ca47d306d139ec97439fc35c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x104f31...6566ac`](./contracts/ethereum-1/0x104f3152d8ebfc3f679392977356962ff36566ac/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/chainport) | CertiK | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [**CyberUnit:** <>](https://www.chainport.io/audits/cyberunit) | CyberUnit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**Zokyo:** <>](https://www.chainport.io/audits/zokyo-audit) | Zokyo | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**Trail of Bits:** <>](https://github.com/trailofbits/publications/blob/master/reviews/2023-02-chainport-fixreview.pdf) | Trail of Bits | Audit | 2023-02 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x104f31...6566ac`](./contracts/bsc-56/0x104f3152d8ebfc3f679392977356962ff36566ac/) | BridgeMintableTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x71b4ea...c48aa0`](./contracts/bsc-56/0x71b4ea7af852bbbdce96348974c7ea1f34c48aa0/) | ChainportBridgeBsc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x71d57e...949621`](./contracts/polygon-137/0x71d57ee5471b720642a129621ea694da8f949621/) | ChainportCongress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x241663...0a5df5`](./contracts/ethereum-1/0x241663b6ae912f2a5dffdcb7a3550bf60c0a5df5/) | ChainportToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x33e6a5...6eeb13`](./contracts/bsc-56/0x33e6a5fb807bb361c4ff3b539b9fbb019a6eeb13/) | MaintainersRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Zero-match audit list:

- [19639] DL audit link
- [19640] **CyberUnit:** <>
- [19641] **Zokyo:** <>

Fork inheritance lineage and inherited audits are included when available.
