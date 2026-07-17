# Agentic Audit Brief: Buttonwood

## Project Overview

- Project: Buttonwood (`buttonwood`)
- Website: [https://www.button.finance](https://www.button.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.016Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: base, ethereum
- Contract surface: 13 unique implementations (22 raw deployments)
- DeFi Llama TVL: $300,030.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 39 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens, 2 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 6 common project-authored base contract(s) (instanceregistry, iinstanceregistry, igeyser). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 71; live-surface contracts included: 19 (15 live, 4 unknown).
- Excluded by liveness: 52 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/8 (50.0%)
- Deployed-live implementations: 9 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/9
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 13
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 4 | 44.4% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BondController | unknown | ethereum | n/a | [`0x84d7a34f3efbe552b2855d158b10c3970b19cc04`](./contracts/ethereum-1/0x84d7a34f3efbe552b2855d158b10c3970b19cc04/) | ✅ Audited |
| BondFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x019fa32d71bb96922695c6cdea33774fdeb04ac0`](./contracts/ethereum-1/0x019fa32d71bb96922695c6cdea33774fdeb04ac0/); ethereum `0x17550f48c61915a67f216a083ced89e04d91fd54` | ✅ Audited |
| ButtonToken | unknown | base | n/a | 5 deployments: ethereum `0x97040ab746803e7645779d2383da216e8ef4eac5`; ethereum `0x9af5c1fa62d0dedb7be3c68939a4b2d96d010fb3`; ethereum `0xab4691ad011adb810610e9610a74be77c553e9f9`; base [`0x23aafbcd479d14ca802bd39d70a03c7384daca85`](./contracts/base-8453/0x23aafbcd479d14ca802bd39d70a03c7384daca85/); base `0x5f9348a845f0fe74bcc343c2cde11b65f1ed4cc1` | ✅ Audited |
| Tranche | unknown | ethereum | n/a | [`0x36787412f5ddc051c95c313138b8ae4e396af137`](./contracts/ethereum-1/0x36787412f5ddc051c95c313138b8ae4e396af137/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GenericButtonswapRouter | adapter | base | n/a | 2 deployments: ethereum `0xf4a25f7d15fa822e060f64d0eb83bf7200657071`; base [`0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f`](./contracts/base-8453/0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f/) | ⚠️ Unaudited |
| MarzResources | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7532e3e303e721b81f8a2492344e8b15f11be5cb`](./contracts/ethereum-1/0x7532e3e303e721b81f8a2492344e8b15f11be5cb/); ethereum `0xc4a0a55a949012b8b52611f4e78cd9e924ae4d45` | ⚠️ Unaudited |
| MarzResources | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75376c8b1afc6a6d7cd18617cf2ada431d50b3fa`](./contracts/ethereum-1/0x75376c8b1afc6a6d7cd18617cf2ada431d50b3fa/); ethereum `0xf7764821280afc17e010a149346e1fbb7822fd30` | ⚠️ Unaudited |
| Plot | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6795eef1ac76ee5dbb1e9eb219e72171ad18519a`](./contracts/ethereum-1/0x6795eef1ac76ee5dbb1e9eb219e72171ad18519a/); ethereum `0xd0ba8b19b0f5e25c11ed233302e75794c9d3142b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xdb422932496bc97aa626ae9f8efaf1344cd99652`](./contracts/ethereum-1/0xdb422932496bc97aa626ae9f8efaf1344cd99652/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x626e7dfaa0b8cd68c4f6831d7f27601a6f6d5cce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83f6392aab030043420d184a025e0cd63f508798` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa94fd1efdecaac484601a4537efbdb016a571a84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8a48c1a4f0584c4d3013c2707e0f3b61e771cd4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik-2021-07-30.pdf](https://github.com/buttonwood-protocol/tranche/blob/main/audits/Certik-2021-07-30.pdf) | CertiK | Audit | 2021-07 | stale | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f`](./contracts/base-8453/0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f/) | GenericButtonswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7532e3e303e721b81f8a2492344e8b15f11be5cb`](./contracts/ethereum-1/0x7532e3e303e721b81f8a2492344e8b15f11be5cb/) | MarzResources | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75376c8b1afc6a6d7cd18617cf2ada431d50b3fa`](./contracts/ethereum-1/0x75376c8b1afc6a6d7cd18617cf2ada431d50b3fa/) | MarzResources | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6795eef1ac76ee5dbb1e9eb219e72171ad18519a`](./contracts/ethereum-1/0x6795eef1ac76ee5dbb1e9eb219e72171ad18519a/) | Plot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9

Fork inheritance lineage and inherited audits are included when available.
