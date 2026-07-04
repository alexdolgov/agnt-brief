# Agentic Audit Brief: Solarbeam

## Project Overview

- Project: Solarbeam (`solarbeam`)
- Website: [https://app.solarbeam.io/exchange/swap](https://app.solarbeam.io/exchange/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.477Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: moonriver
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $146,420.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 22 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | unknown | moonriver | n/a | [`0x639a64...c62c5c`](./contracts/moonriver-1285/0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c/) | ⚠️ Unaudited |
| CommonEclipse | unknown | moonriver | n/a | [`0x022bcb...db0b08`](./contracts/moonriver-1285/0x022bcb66662bb3854b6f16babd4c13bfa3db0b08/) | ⚠️ Unaudited |
| ComplexRewarderPerSecV2 | unknown | moonriver | n/a | [`0x0d66e6...ee8212`](./contracts/moonriver-1285/0x0d66e60d31c8f2a0dcc4fb2d06d5e8e326ee8212/) | ⚠️ Unaudited |
| ComplexRewarderPerSecV3 | unknown | moonriver | n/a | [`0x0f1322...dc35da`](./contracts/moonriver-1285/0x0f132276b72add2c0ade8ac60e53997086dc35da/) | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | moonriver | n/a | [`0x10449f...a0ef58`](./contracts/moonriver-1285/0x10449fc8bc5659a96c75af43198ec6ca63a0ef58/) | ⚠️ Unaudited |
| Forwarder | unknown | moonriver | n/a | [`0x0d0b48...830460`](./contracts/moonriver-1285/0x0d0b4862f5ffa3a47d04ddf0351356d20c830460/) | ⚠️ Unaudited |
| GasSwap | unknown | moonriver | n/a | [`0x44b288...295700`](./contracts/moonriver-1285/0x44b288a8258d3bda04ccdb5d06c72a4dcd295700/) | ⚠️ Unaudited |
| MoonLock | unknown | moonriver | n/a | [`0x0134eb...e39eb3`](./contracts/moonriver-1285/0x0134eb236b47186021a50d25a51365ac77e39eb3/) | ⚠️ Unaudited |
| Multicall2 | unknown | moonriver | n/a | [`0x43d002...4e68ae`](./contracts/moonriver-1285/0x43d002a2b468f048028ea9c2d3ed4705a94e68ae/) | ⚠️ Unaudited |
| setText | unknown | moonriver | n/a | [`0x9bde9e...2582db`](./contracts/moonriver-1285/0x9bde9edcf175f3b084b1246ab869bc4d3d2582db/) | ⚠️ Unaudited |
| SolarBeamToken | unknown | moonriver | n/a | [`0x6bd193...a4334b`](./contracts/moonriver-1285/0x6bd193ee6d2104f14f94e2ca6efefae561a4334b/) | ⚠️ Unaudited |
| SolarDistributorV2 | unknown | moonriver | n/a | [`0x032986...30904f`](./contracts/moonriver-1285/0x0329867a8c457e9f75e25b0685011291cd30904f/) | ⚠️ Unaudited |
| SolarFactory | unknown | moonriver | n/a | [`0x049581...5a1b68`](./contracts/moonriver-1285/0x049581aeb6fe262727f290165c29bdab065a1b68/) | ⚠️ Unaudited |
| SolarPair | unknown | moonriver | n/a | [`0x2cc54b...7a3ad7`](./contracts/moonriver-1285/0x2cc54b4a3878e36e1c754871438113c1117a3ad7/) | ⚠️ Unaudited |
| SolarRouterAdapter | unknown | moonriver | n/a | [`0x39019d...2a62c7`](./contracts/moonriver-1285/0x39019dd93c539643246c38c1aa0d20439d2a62c7/) | ⚠️ Unaudited |
| SolarVault | unknown | moonriver | n/a | [`0x783d5e...c3a0b1`](./contracts/moonriver-1285/0x783d5eb06ce15b43b0635035bae9a73750c3a0b1/) | ⚠️ Unaudited |
| SwapCalculator | unknown | moonriver | n/a | [`0x124d2b...97a410`](./contracts/moonriver-1285/0x124d2b0b4119dd3c0fa884dd66ce49b44197a410/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | moonriver | n/a | [`0x0a4980...f31f0b`](./contracts/moonriver-1285/0x0a498032174320c79e61c5cd6687b3a50df31f0b/) | ⚠️ Unaudited |
| SwapUtils | unknown | moonriver | n/a | [`0x501602...23938b`](./contracts/moonriver-1285/0x50160284393296cc0d75f7db4c3d1d2fda23938b/) | ⚠️ Unaudited |
| TokenFarm | unknown | moonriver | n/a | [`0x7124c3...b84039`](./contracts/moonriver-1285/0x7124c3e7a1bbdaa61a111944884694a5a5b84039/) | ⚠️ Unaudited |
| VestedSolarBeamToken | unknown | moonriver | n/a | [`0x769064...fb5066`](./contracts/moonriver-1285/0x76906411d07815491a5e577022757ad941fb5066/) | ⚠️ Unaudited |
| WETH | unknown | moonriver | n/a | [`0x98878b...032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/solarbeam](https://skynet.certik.com/projects/solarbeam) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [www.certik.com/projects/solarbeam](https://www.certik.com/projects/solarbeam) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit](https://docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit) | Haechi Audit | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x022bcb...db0b08`](./contracts/moonriver-1285/0x022bcb66662bb3854b6f16babd4c13bfa3db0b08/) | CommonEclipse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0d66e6...ee8212`](./contracts/moonriver-1285/0x0d66e60d31c8f2a0dcc4fb2d06d5e8e326ee8212/) | ComplexRewarderPerSecV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0f1322...dc35da`](./contracts/moonriver-1285/0x0f132276b72add2c0ade8ac60e53997086dc35da/) | ComplexRewarderPerSecV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x10449f...a0ef58`](./contracts/moonriver-1285/0x10449fc8bc5659a96c75af43198ec6ca63a0ef58/) | ComplexRewarderPerSecV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0d0b48...830460`](./contracts/moonriver-1285/0x0d0b4862f5ffa3a47d04ddf0351356d20c830460/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x44b288...295700`](./contracts/moonriver-1285/0x44b288a8258d3bda04ccdb5d06c72a4dcd295700/) | GasSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0134eb...e39eb3`](./contracts/moonriver-1285/0x0134eb236b47186021a50d25a51365ac77e39eb3/) | MoonLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x9bde9e...2582db`](./contracts/moonriver-1285/0x9bde9edcf175f3b084b1246ab869bc4d3d2582db/) | setText | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x6bd193...a4334b`](./contracts/moonriver-1285/0x6bd193ee6d2104f14f94e2ca6efefae561a4334b/) | SolarBeamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x032986...30904f`](./contracts/moonriver-1285/0x0329867a8c457e9f75e25b0685011291cd30904f/) | SolarDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x049581...5a1b68`](./contracts/moonriver-1285/0x049581aeb6fe262727f290165c29bdab065a1b68/) | SolarFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x2cc54b...7a3ad7`](./contracts/moonriver-1285/0x2cc54b4a3878e36e1c754871438113c1117a3ad7/) | SolarPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x39019d...2a62c7`](./contracts/moonriver-1285/0x39019dd93c539643246c38c1aa0d20439d2a62c7/) | SolarRouterAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x783d5e...c3a0b1`](./contracts/moonriver-1285/0x783d5eb06ce15b43b0635035bae9a73750c3a0b1/) | SolarVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x124d2b...97a410`](./contracts/moonriver-1285/0x124d2b0b4119dd3c0fa884dd66ce49b44197a410/) | SwapCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0a4980...f31f0b`](./contracts/moonriver-1285/0x0a498032174320c79e61c5cd6687b3a50df31f0b/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x501602...23938b`](./contracts/moonriver-1285/0x50160284393296cc0d75f7db4c3d1d2fda23938b/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x7124c3...b84039`](./contracts/moonriver-1285/0x7124c3e7a1bbdaa61a111944884694a5a5b84039/) | TokenFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x769064...fb5066`](./contracts/moonriver-1285/0x76906411d07815491a5e577022757ad941fb5066/) | VestedSolarBeamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x98878b...032b8a`](./contracts/moonriver-1285/0x98878b06940ae243284ca214f92bb71a2b032b8a/) | WETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21449] skynet.certik.com/projects/solarbeam
- [21450] www.certik.com/projects/solarbeam
- [21451] docs.google.com/document/d/1PVcP0CYyVHZ7tzNOP8l_tFidLcSX_RZP4c3UcsqxDM8/edit

Fork inheritance lineage and inherited audits are included when available.
