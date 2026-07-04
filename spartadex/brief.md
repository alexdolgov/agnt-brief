# Agentic Audit Brief: SpartaDex

## Project Overview

- Project: SpartaDex (`spartadex`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.428Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, linea
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $144,171.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 11 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (zeroaddressguard, zeroamountguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | unknown | arbitrum | n/a | [`0x0de811...361626`](./contracts/arbitrum-42161/0x0de811cfc8bbd855798a0da8f0fb893a20361626/) | ⚠️ Unaudited |
| PaymentReceiver | unknown | arbitrum | n/a | [`0x933b0e...245cb7`](./contracts/arbitrum-42161/0x933b0ea2048438c11d53dac32d283115d5245cb7/) | ⚠️ Unaudited |
| Polis | unknown | arbitrum | n/a | [`0x314494...471cb9`](./contracts/arbitrum-42161/0x31449423737538cde5f60c5052f122d599471cb9/) | ⚠️ Unaudited |
| PolisManager | unknown | arbitrum | n/a | [`0xebc1dd...6ff3de`](./contracts/arbitrum-42161/0xebc1dd1f6560fc1045d30c0d0ac610c3336ff3de/) | ⚠️ Unaudited |
| PolisMinter | unknown | arbitrum | n/a | [`0x39fdd0...4fe17f`](./contracts/arbitrum-42161/0x39fdd07893b8867be7b8ff02fe9b557ddc4fe17f/) | ⚠️ Unaudited |
| Sparta | unknown | arbitrum | n/a | [`0x11f98c...5ce9a8`](./contracts/arbitrum-42161/0x11f98c7e42a367dab4f200d2fdc460fb445ce9a8/) | ⚠️ Unaudited |
| SpartaAccessControl | unknown | arbitrum | n/a | [`0x01b364...075b22`](./contracts/arbitrum-42161/0x01b3646adb846061411da058757b944049075b22/) | ⚠️ Unaudited |
| SpartaDexFactory | unknown | linea | n/a | [`0x9e4fc4...ea5a9e`](./contracts/linea-59144/0x9e4fc4a5a0769ba74088856c229c4a1db2ea5a9e/) | ⚠️ Unaudited |
| SpartaDexPair | unknown | linea | n/a | [`0xb64b15...cf370b`](./contracts/linea-59144/0xb64b15dfdfb9d3edacf9291b0e8a65fc52cf370b/) | ⚠️ Unaudited |
| SpartaDexRouter | unknown | linea | n/a | [`0xea2f47...8d399a`](./contracts/linea-59144/0xea2f47ac12e00e2fcc8f242561bc53bc288d399a/) | ⚠️ Unaudited |
| StakedSparta | unknown | arbitrum | n/a | [`0xdeab92...ecf01f`](./contracts/arbitrum-42161/0xdeab92d6a3618f6d830c925d7ae8f1c87eecf01f/) | ⚠️ Unaudited |

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
| arbitrum | [`0x0de811...361626`](./contracts/arbitrum-42161/0x0de811cfc8bbd855798a0da8f0fb893a20361626/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x933b0e...245cb7`](./contracts/arbitrum-42161/0x933b0ea2048438c11d53dac32d283115d5245cb7/) | PaymentReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x314494...471cb9`](./contracts/arbitrum-42161/0x31449423737538cde5f60c5052f122d599471cb9/) | Polis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xebc1dd...6ff3de`](./contracts/arbitrum-42161/0xebc1dd1f6560fc1045d30c0d0ac610c3336ff3de/) | PolisManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39fdd0...4fe17f`](./contracts/arbitrum-42161/0x39fdd07893b8867be7b8ff02fe9b557ddc4fe17f/) | PolisMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11f98c...5ce9a8`](./contracts/arbitrum-42161/0x11f98c7e42a367dab4f200d2fdc460fb445ce9a8/) | Sparta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01b364...075b22`](./contracts/arbitrum-42161/0x01b3646adb846061411da058757b944049075b22/) | SpartaAccessControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9e4fc4...ea5a9e`](./contracts/linea-59144/0x9e4fc4a5a0769ba74088856c229c4a1db2ea5a9e/) | SpartaDexFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb64b15...cf370b`](./contracts/linea-59144/0xb64b15dfdfb9d3edacf9291b0e8a65fc52cf370b/) | SpartaDexPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xea2f47...8d399a`](./contracts/linea-59144/0xea2f47ac12e00e2fcc8f242561bc53bc288d399a/) | SpartaDexRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdeab92...ecf01f`](./contracts/arbitrum-42161/0xdeab92d6a3618f6d830c925d7ae8f1c87eecf01f/) | StakedSparta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
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
