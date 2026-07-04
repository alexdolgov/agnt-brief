# Agentic Audit Brief: Bitmex

## Project Overview

- Project: Bitmex (`bitmex`)
- Website: [https://www.bitmex.com](https://www.bitmex.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.520Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $937,853,380.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX. Structurally: 14 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (agentrole). Dominant framework: openzeppelin.

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
| BankFrickCompliance | unknown | ethereum | n/a | [`0xc07458...de0996`](./contracts/ethereum-1/0xc074583b5c9d07b46d791b1da1c3393a62de0996/) | ⚠️ Unaudited |
| BMEX | unknown | ethereum | n/a | [`0xb113c6...275277`](./contracts/ethereum-1/0xb113c6cf239f60d380359b762e95c13817275277/) | ⚠️ Unaudited |
| ClaimTopicsRegistry | unknown | ethereum | n/a | [`0x003288...698bb8`](./contracts/ethereum-1/0x003288d46471359320c9cc47696a55e6c1698bb8/) | ⚠️ Unaudited |
| CountryRestrictions | unknown | ethereum | n/a | [`0x7db90c...6706d3`](./contracts/ethereum-1/0x7db90c31ac3cec5c60348d4e6baba4c1a16706d3/) | ⚠️ Unaudited |
| DefaultCompliance | unknown | ethereum | n/a | [`0x362618...ed4e04`](./contracts/ethereum-1/0x362618d8f3df95686acb46d2f2da91d53bed4e04/) | ⚠️ Unaudited |
| IdentityRegistry | unknown | ethereum | n/a | [`0x027d98...1d3588`](./contracts/ethereum-1/0x027d98795d95b6d5824f1cc585d9fb0a2a1d3588/) | ⚠️ Unaudited |
| IdentityRegistryStorage | unknown | ethereum | n/a | [`0x0e0476...5e23af`](./contracts/ethereum-1/0x0e0476e20c92819cc8c9d9525982ffe3fe5e23af/) | ⚠️ Unaudited |
| ImplementationAuthority | unknown | ethereum | n/a | [`0x9ef484...8d5659`](./contracts/ethereum-1/0x9ef484a9becb9b2fcd4a540ccd5ba805c58d5659/) | ⚠️ Unaudited |
| LimitsDMAndCountryRestrictions | unknown | ethereum | n/a | [`0x23daf7...f77b7f`](./contracts/ethereum-1/0x23daf74c10b414dc34bd860d88f87f2b1cf77b7f/) | ⚠️ Unaudited |
| POWRAI | unknown | ethereum | n/a | [`0x5ebb51...a00d34`](./contracts/ethereum-1/0x5ebb51f6a5676fbba87fd467fd0f67a0c0a00d34/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x287a4c...49b28d`](./contracts/ethereum-1/0x287a4ce8e2c4f045dea7bc7c0cd7f1cbc749b28d/) | ⚠️ Unaudited |
| TrustedIssuersRegistry | unknown | ethereum | n/a | [`0x1d147f...5959f3`](./contracts/ethereum-1/0x1d147f13f225835136dc99553c9f04626f5959f3/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xf771d9...b7c71d`](./contracts/ethereum-1/0xf771d937c8c1772d1070ae83bca5bc7525b7c71d/) | ⚠️ Unaudited |
| Vesting | unknown | ethereum | n/a | [`0x65a355...d28232`](./contracts/ethereum-1/0x65a35599a063f3ca882b1550a328d8a543d28232/) | ⚠️ Unaudited |

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
| ethereum | [`0xc07458...de0996`](./contracts/ethereum-1/0xc074583b5c9d07b46d791b1da1c3393a62de0996/) | BankFrickCompliance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb113c6...275277`](./contracts/ethereum-1/0xb113c6cf239f60d380359b762e95c13817275277/) | BMEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003288...698bb8`](./contracts/ethereum-1/0x003288d46471359320c9cc47696a55e6c1698bb8/) | ClaimTopicsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7db90c...6706d3`](./contracts/ethereum-1/0x7db90c31ac3cec5c60348d4e6baba4c1a16706d3/) | CountryRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x362618...ed4e04`](./contracts/ethereum-1/0x362618d8f3df95686acb46d2f2da91d53bed4e04/) | DefaultCompliance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x027d98...1d3588`](./contracts/ethereum-1/0x027d98795d95b6d5824f1cc585d9fb0a2a1d3588/) | IdentityRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e0476...5e23af`](./contracts/ethereum-1/0x0e0476e20c92819cc8c9d9525982ffe3fe5e23af/) | IdentityRegistryStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ef484...8d5659`](./contracts/ethereum-1/0x9ef484a9becb9b2fcd4a540ccd5ba805c58d5659/) | ImplementationAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23daf7...f77b7f`](./contracts/ethereum-1/0x23daf74c10b414dc34bd860d88f87f2b1cf77b7f/) | LimitsDMAndCountryRestrictions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ebb51...a00d34`](./contracts/ethereum-1/0x5ebb51f6a5676fbba87fd467fd0f67a0c0a00d34/) | POWRAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287a4c...49b28d`](./contracts/ethereum-1/0x287a4ce8e2c4f045dea7bc7c0cd7f1cbc749b28d/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d147f...5959f3`](./contracts/ethereum-1/0x1d147f13f225835136dc99553c9f04626f5959f3/) | TrustedIssuersRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf771d9...b7c71d`](./contracts/ethereum-1/0xf771d937c8c1772d1070ae83bca5bc7525b7c71d/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65a355...d28232`](./contracts/ethereum-1/0x65a35599a063f3ca882b1550a328d8a543d28232/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
