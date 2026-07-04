# Agentic Audit Brief: arpa-staking

## Project Overview

- Project: arpa-staking (`arpa-staking`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:04.140Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 11 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (erc1967upgradeupgradeable, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Adapter | unknown | ethereum | n/a | [`0x198b66...5c625b`](./contracts/ethereum-1/0x198b6679d6532f01b4a2d1470fbeb4fcc45c625b/) | ⚠️ Unaudited |
| Arpa | unknown | ethereum | n/a | [`0xa6ca2c...a11e6d`](./contracts/ethereum-1/0xa6ca2cf29616f7b4c0ebc872b3a06a5e72a11e6d/) | ⚠️ Unaudited |
| ARPAToken | unknown | ethereum | n/a | [`0xba5093...b0b71a`](./contracts/ethereum-1/0xba50933c268f567bdc86e1ac131be072c6b0b71a/) | ⚠️ Unaudited |
| BLS | unknown | ethereum | n/a | [`0x25e627...98eb78`](./contracts/ethereum-1/0x25e627ed5c1102c4a130e8b846aa24867898eb78/) | ⚠️ Unaudited |
| ChainHelper | unknown | ethereum | n/a | [`0xb5de49...2a44fd`](./contracts/ethereum-1/0xb5de499681c16bdd8e235cb6dba71bb7fc2a44fd/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x22b0ee...349553`](./contracts/ethereum-1/0x22b0ee212982268e817a576eec2bb67b8e349553/) | ⚠️ Unaudited |
| ControllerRelayer | unknown | ethereum | n/a | [`0x2c73da...425d18`](./contracts/ethereum-1/0x2c73da7786311c8011480fb590b6aef79f425d18/) | ⚠️ Unaudited |
| GroupLib | unknown | ethereum | n/a | [`0x9ec536...ca101b`](./contracts/ethereum-1/0x9ec5368ce564be46827ce06a0af124faf5ca101b/) | ⚠️ Unaudited |
| NodeRegistry | unknown | ethereum | n/a | [`0x58e398...acf25b`](./contracts/ethereum-1/0x58e39879374901e17a790af039dc9ac06bacf25b/) | ⚠️ Unaudited |
| OPStackChainMessenger | unknown | ethereum | n/a | [`0xbad8e3...04190e`](./contracts/ethereum-1/0xbad8e3a03a24c4606cc251cf7ec240260f04190e/) | ⚠️ Unaudited |
| Sender | unknown | ethereum | n/a | [`0x140fe4...94b101`](./contracts/ethereum-1/0x140fe463ef763a1eac54a9c05136bb64da94b101/) | ⚠️ Unaudited |
| ServiceManager | unknown | ethereum | n/a | [`0x1cea80...daaf1e`](./contracts/ethereum-1/0x1cea80c7cbf8e6cb24ca59fcef18a941b8daaf1e/) | ⚠️ Unaudited |
| SharedConsumer | unknown | ethereum | n/a | [`0x127c05...5db089`](./contracts/ethereum-1/0x127c05b03f6a1272f0d86bc3dc44430a145db089/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xee710f...467a01`](./contracts/ethereum-1/0xee710f79aa85099e200be4d40cdf1bfb2b467a01/) | ⚠️ Unaudited |

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
| ethereum | [`0x198b66...5c625b`](./contracts/ethereum-1/0x198b6679d6532f01b4a2d1470fbeb4fcc45c625b/) | Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6ca2c...a11e6d`](./contracts/ethereum-1/0xa6ca2cf29616f7b4c0ebc872b3a06a5e72a11e6d/) | Arpa | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba5093...b0b71a`](./contracts/ethereum-1/0xba50933c268f567bdc86e1ac131be072c6b0b71a/) | ARPAToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25e627...98eb78`](./contracts/ethereum-1/0x25e627ed5c1102c4a130e8b846aa24867898eb78/) | BLS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5de49...2a44fd`](./contracts/ethereum-1/0xb5de499681c16bdd8e235cb6dba71bb7fc2a44fd/) | ChainHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22b0ee...349553`](./contracts/ethereum-1/0x22b0ee212982268e817a576eec2bb67b8e349553/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c73da...425d18`](./contracts/ethereum-1/0x2c73da7786311c8011480fb590b6aef79f425d18/) | ControllerRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ec536...ca101b`](./contracts/ethereum-1/0x9ec5368ce564be46827ce06a0af124faf5ca101b/) | GroupLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58e398...acf25b`](./contracts/ethereum-1/0x58e39879374901e17a790af039dc9ac06bacf25b/) | NodeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbad8e3...04190e`](./contracts/ethereum-1/0xbad8e3a03a24c4606cc251cf7ec240260f04190e/) | OPStackChainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140fe4...94b101`](./contracts/ethereum-1/0x140fe463ef763a1eac54a9c05136bb64da94b101/) | Sender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cea80...daaf1e`](./contracts/ethereum-1/0x1cea80c7cbf8e6cb24ca59fcef18a941b8daaf1e/) | ServiceManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x127c05...5db089`](./contracts/ethereum-1/0x127c05b03f6a1272f0d86bc3dc44430a145db089/) | SharedConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee710f...467a01`](./contracts/ethereum-1/0xee710f79aa85099e200be4d40cdf1bfb2b467a01/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
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
