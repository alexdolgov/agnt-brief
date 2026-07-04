# Agentic Audit Brief: Hord

## Project Overview

- Project: Hord (`hord`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.629Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $302,051.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 10 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 10 contract(s).

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x03b93c...c4f03b`](./contracts/ethereum-1/0x03b93c3bcbc5422a3d9deadad764ce55a7c4f03b/) | ⚠️ Unaudited |
| Farm | unknown | ethereum | n/a | [`0x32c2ca...1d3ac8`](./contracts/ethereum-1/0x32c2cae23209e8b75e76d6aeac995a596a1d3ac8/) | ⚠️ Unaudited |
| HordCongress | unknown | ethereum | n/a | [`0x604fab...82517f`](./contracts/ethereum-1/0x604fab7ce497059eb87c86399ed7467d1a82517f/) | ⚠️ Unaudited |
| HordCongressMembersRegistry | unknown | ethereum | n/a | [`0xfb3be9...1312ef`](./contracts/ethereum-1/0xfb3be996a28fc3ba9f7fd21a40f66d225e1312ef/) | ⚠️ Unaudited |
| HordTicketFactory | unknown | ethereum | n/a | [`0x0b063c...487007`](./contracts/ethereum-1/0x0b063cef5906259b0bd494c56e3db8c18a487007/) | ⚠️ Unaudited |
| HordTicketManager | unknown | ethereum | n/a | [`0x3083f8...754f04`](./contracts/ethereum-1/0x3083f888a3b9fd334dbe230c9aee5555da754f04/) | ⚠️ Unaudited |
| HordToken | unknown | ethereum | n/a | [`0x43a969...a43448`](./contracts/ethereum-1/0x43a96962254855f16b925556f9e97be436a43448/) | ⚠️ Unaudited |
| MaintainersRegistry | unknown | ethereum | n/a | [`0x8aedfb...bfc31c`](./contracts/ethereum-1/0x8aedfb4ff4817ba52e77e9682f028a34f6bfc31c/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x8b3558...082125`](./contracts/ethereum-1/0x8b3558b725e941dad8f587a40e86721cb3082125/) | ⚠️ Unaudited |
| TokensFarm | unknown | ethereum | n/a | [`0x53c8e7...883373`](./contracts/ethereum-1/0x53c8e7f26692d374afc63474dd69411a7d883373/) | ⚠️ Unaudited |

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
| [**CyberUnit:** <>](https://www.chainport.io/audits/cyberunit) | CyberUnit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [**Zokyo:** <>](https://www.chainport.io/audits/zokyo-audit) | Zokyo | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x32c2ca...1d3ac8`](./contracts/ethereum-1/0x32c2cae23209e8b75e76d6aeac995a596a1d3ac8/) | Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x604fab...82517f`](./contracts/ethereum-1/0x604fab7ce497059eb87c86399ed7467d1a82517f/) | HordCongress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb3be9...1312ef`](./contracts/ethereum-1/0xfb3be996a28fc3ba9f7fd21a40f66d225e1312ef/) | HordCongressMembersRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b063c...487007`](./contracts/ethereum-1/0x0b063cef5906259b0bd494c56e3db8c18a487007/) | HordTicketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3083f8...754f04`](./contracts/ethereum-1/0x3083f888a3b9fd334dbe230c9aee5555da754f04/) | HordTicketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43a969...a43448`](./contracts/ethereum-1/0x43a96962254855f16b925556f9e97be436a43448/) | HordToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8aedfb...bfc31c`](./contracts/ethereum-1/0x8aedfb4ff4817ba52e77e9682f028a34f6bfc31c/) | MaintainersRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c8e7...883373`](./contracts/ethereum-1/0x53c8e7f26692d374afc63474dd69411a7d883373/) | TokensFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20515] **CyberUnit:** <>
- [20516] **Zokyo:** <>

Fork inheritance lineage and inherited audits are included when available.
