# Agentic Audit Brief: Giza

⚠️ Lifecycle status: DECLINING - TVL dropped 77.4% over 90 days

## Project Overview

- Project: Giza (`giza`)
- Website: [https://www.gizatech.xyz/](https://www.gizatech.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:04.325Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, plasma
- Contract surface: 16 unique implementations (28 raw deployments)
- DeFi Llama TVL: $4,630,526.82
- On-chain TVL (included contracts): $119,206,727.09
- TVL by chain: Plasma $78,174,057.37 | Base $41,032,669.72

## Project Description

Giza is autonomous financial intelligence / AI-agent infrastructure for non-custodial DeFi strategy execution. Its agents can route and manage capital across DeFi venues and strategies, including lending markets such as Morpho or Compound where applicable, but Giza itself should not be described as a standalone decentralized lending and borrowing protocol.

### Architecture

The Giza family combines Compound-based lending markets (MErc20 tokens) with Morpho vaults (MetaMorpho) to optimize yield. Shared infrastructure includes data providers and a registry beacon proxy, while fTokens represent user positions across these markets.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 28
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $119,206,727.09
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $119,206,727.09 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| fToken | token | plasma | 2 deployments: base `0xf42f57...fd9169`; plasma [`0x1dd4b1...2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | ⚠️ Unaudited |
| MErc20Delegate | token | base | 5 deployments: base [`0x1fadff...da45b7`](./contracts/base-8453/0x1fadff493529c3fcc7ee04f1f15d19816dda45b7/); base `0x3bf937...09a5e5`; base `0x703843...065cc8`; base `0x73b06d...462417`; base `0xedc817...176c22` | ⚠️ Unaudited |
| MWethDelegate | token | base | [`0x628ff6...09d457`](./contracts/base-8453/0x628ff693426583d9a7fb391e54366292f509d457/) | ⚠️ Unaudited |
| EVault | core_logic | base | [`0x0a1a3b...80ee16`](./contracts/base-8453/0x0a1a3b5f2041f33522c4efc754a7d096f880ee16/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | base | 2 deployments: base [`0xd82a47...2153ad`](./contracts/base-8453/0xd82a47fdebb5bf5329b09441c3dab4b5df2153ad/); plasma `0xf2d6e3...c7419f` | ⚠️ Unaudited |
| BeaconProxy | registry | plasma | [`0xb0004a...930112`](./contracts/plasma-9745/0xb0004ad99f0e383cc413ba69acff7c229d930112/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | [`0xb125e6...15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| Comptroller | unknown | base | [`0xfbb21d...3ef26c`](./contracts/base-8453/0xfbb21d0380bee3312b33c4353c8936a0f13ef26c/) | ⚠️ Unaudited |
| GizaSideChain | unknown | base | [`0x590830...267774`](./contracts/base-8453/0x590830dfdf9a3f68afcdde2694773debdf267774/) | ⚠️ Unaudited |
| MErc20Delegator | token | base | [`0x2f903d...10bc6c`](./contracts/base-8453/0x2f903de0e30852f413a7cceae9ca45a66010bc6c/) | ⚠️ Unaudited |
| MetaMorpho | unknown | base | 3 deployments: base [`0xbeef01...228183`](./contracts/base-8453/0xbeef010f9cb27031ad51e3333f9af9c6b1228183/); base `0xc1256a...00a2ca`; base `0xee8f4e...e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | 2 deployments: base [`0x616a4e...273738`](./contracts/base-8453/0x616a4e1db48e22028f6bbf20444cd3b8e3273738/); base `0xbeefe9...cb83b2` | ⚠️ Unaudited |
| MultiRewardDistributor | operational_periphery | base | 2 deployments: base [`0xdc649f...cfef0f`](./contracts/base-8453/0xdc649f4fa047a3c98e8705e85b8b1bafcbcfef0f/); base `0xe9005b...0ad9d2` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | [`0x8d7d22...69770f`](./contracts/base-8453/0x8d7d2230a2d195f023588edd13dbad56dd69770f/) | ⚠️ Unaudited |
| TemporalGovernor | governance | base | [`0x8b6218...df7d51`](./contracts/base-8453/0x8b621804a7637b781e2bbd58e256a591f2df7d51/) | ⚠️ Unaudited |
| WETHRouter | adapter | base | 3 deployments: base [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/); base `0x70778c...75d0c9`; base `0xdafecc...7ad0d4` | ⚠️ Unaudited |

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
| plasma | [`0x1dd4b1...2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | fToken | token | $90,893,238.29 | Verified native implementation with $90,893,238.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x590830...267774`](./contracts/base-8453/0x590830dfdf9a3f68afcdde2694773debdf267774/) | GizaSideChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b6218...df7d51`](./contracts/base-8453/0x8b621804a7637b781e2bbd58e256a591f2df7d51/) | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x31ccfb...2124c4`](./contracts/base-8453/0x31ccfb038771d9bf486ef7c7f3a9f91be72124c4/) | WETHRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 8 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
