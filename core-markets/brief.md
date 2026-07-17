# Agentic Audit Brief: Core Markets

## Project Overview

- Project: Core Markets (`core-markets`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.531Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: blast
- Contract surface: 24 unique implementations (24 raw deployments)
- DeFi Llama TVL: $266,485.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 22 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (accessibility). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 24
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

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountFacet | unknown | blast | n/a | [`0x464873026877c9d947e2778a1b4cb4a3cbc688f0`](./contracts/blast-81457/0x464873026877c9d947e2778a1b4cb4a3cbc688f0/) | ⚠️ Unaudited |
| AdvisorVestingCoreUpgradeable | unknown | blast | n/a | [`0x0ada381229ffa9e12cd5ccea0e1d07c10d612716`](./contracts/blast-81457/0x0ada381229ffa9e12cd5ccea0e1d07c10d612716/) | ⚠️ Unaudited |
| BatchSetForceCloseGapRatio | unknown | blast | n/a | [`0x71ac772b2d89985a7b0dac0fc42b1230ca844220`](./contracts/blast-81457/0x71ac772b2d89985a7b0dac0fc42b1230ca844220/) | ⚠️ Unaudited |
| BridgeFacet | unknown | blast | n/a | [`0x0e35fa030fd3bbed41993bc288b7378cc43f39ac`](./contracts/blast-81457/0x0e35fa030fd3bbed41993bc288b7378cc43f39ac/) | ⚠️ Unaudited |
| ControlFacet | unknown | blast | n/a | [`0x2ecc7da3cc98d341f987c85c3d9fc198570838b5`](./contracts/blast-81457/0x2ecc7da3cc98d341f987c85c3d9fc198570838b5/) | ⚠️ Unaudited |
| CoreEmissionsKeeper | unknown | blast | n/a | [`0x1722762ee861288cb0cf0705a69b03dd4e9a09a7`](./contracts/blast-81457/0x1722762ee861288cb0cf0705a69b03dd4e9a09a7/) | ⚠️ Unaudited |
| CoreEmissionsKeeperV2 | unknown | blast | n/a | [`0x2ed2e32970c2ae27f51d6ad1809d2917fe084199`](./contracts/blast-81457/0x2ed2e32970c2ae27f51d6ad1809d2917fe084199/) | ⚠️ Unaudited |
| CoreFeeCollector | unknown | blast | n/a | [`0x1a5d813aff409a0245f86165552709d70a3ca610`](./contracts/blast-81457/0x1a5d813aff409a0245f86165552709d70a3ca610/) | ⚠️ Unaudited |
| CoreMultiRewarder | unknown | blast | n/a | [`0x3026643eca499c196bd9aba91b6f9f02cd8ea6d6`](./contracts/blast-81457/0x3026643eca499c196bd9aba91b6f9f02cd8ea6d6/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | blast | n/a | [`0xb74629900981f2977cd7a8e37052fee0d7a4c395`](./contracts/blast-81457/0xb74629900981f2977cd7a8e37052fee0d7a4c395/) | ⚠️ Unaudited |
| FundingRateFacet | unknown | blast | n/a | [`0x9d4c169703bb0116751a6965952a5e4adfdffb05`](./contracts/blast-81457/0x9d4c169703bb0116751a6965952a5e4adfdffb05/) | ⚠️ Unaudited |
| LiquidationFacet | unknown | blast | n/a | [`0x0b60140dcc98a6a9e9985ab165dc54903861d50a`](./contracts/blast-81457/0x0b60140dcc98a6a9e9985ab165dc54903861d50a/) | ⚠️ Unaudited |
| PartyAFacet | unknown | blast | n/a | [`0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403`](./contracts/blast-81457/0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403/) | ⚠️ Unaudited |
| PartyBFacet | unknown | blast | n/a | [`0x50154e11edf5d7d528cbc7ec0d507ddb70b8b1c6`](./contracts/blast-81457/0x50154e11edf5d7d528cbc7ec0d507ddb70b8b1c6/) | ⚠️ Unaudited |
| RasaOffChainSymmioDepositor | unknown | blast | n/a | [`0x0cbf07176e67671c99222bebdb166efc58dacd95`](./contracts/blast-81457/0x0cbf07176e67671c99222bebdb166efc58dacd95/) | ⚠️ Unaudited |
| RasaOnChainSymmioDepositor | unknown | blast | n/a | [`0xc818f52e267609a4c377ed1a0691425cde8f853e`](./contracts/blast-81457/0xc818f52e267609a4c377ed1a0691425cde8f853e/) | ⚠️ Unaudited |
| SeedVestingCoreUpgradeable | unknown | blast | n/a | [`0x0b145a57443c3cc2e8e359caf80085019811829c`](./contracts/blast-81457/0x0b145a57443c3cc2e8e359caf80085019811829c/) | ⚠️ Unaudited |
| SignatureStore | unknown | blast | n/a | [`0xc2a1fcd1e6d6c3c806fac707b28126b072f045b6`](./contracts/blast-81457/0xc2a1fcd1e6d6c3c806fac707b28126b072f045b6/) | ⚠️ Unaudited |
| SymmioDepositorLpToken | unknown | blast | n/a | [`0x30e54c1ae25e7c948668afd091c5b0bae0765915`](./contracts/blast-81457/0x30e54c1ae25e7c948668afd091c5b0bae0765915/) | ⚠️ Unaudited |
| SymmioPartyB | unknown | blast | n/a | [`0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde`](./contracts/blast-81457/0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde/) | ⚠️ Unaudited |
| TeamVestingCoreUpgradeable | unknown | blast | n/a | [`0x8fb840c274fc6ce9320cbcf1074184693a5ddbb6`](./contracts/blast-81457/0x8fb840c274fc6ce9320cbcf1074184693a5ddbb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | [`0x083267d20dbe6c2b0a83bd0e601dc2299ed99015`](./contracts/blast-81457/0x083267d20dbe6c2b0a83bd0e601dc2299ed99015/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | blast | n/a | [`0x27ba1168a6df3681dd2f74c8f6dae165aab23229`](./contracts/blast-81457/0x27ba1168a6df3681dd2f74c8f6dae165aab23229/) | ⚠️ Unaudited |
| ViewFacet | unknown | blast | n/a | [`0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934`](./contracts/blast-81457/0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934/) | ⚠️ Unaudited |

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
| blast | [`0x464873026877c9d947e2778a1b4cb4a3cbc688f0`](./contracts/blast-81457/0x464873026877c9d947e2778a1b4cb4a3cbc688f0/) | AccountFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0ada381229ffa9e12cd5ccea0e1d07c10d612716`](./contracts/blast-81457/0x0ada381229ffa9e12cd5ccea0e1d07c10d612716/) | AdvisorVestingCoreUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x71ac772b2d89985a7b0dac0fc42b1230ca844220`](./contracts/blast-81457/0x71ac772b2d89985a7b0dac0fc42b1230ca844220/) | BatchSetForceCloseGapRatio | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0e35fa030fd3bbed41993bc288b7378cc43f39ac`](./contracts/blast-81457/0x0e35fa030fd3bbed41993bc288b7378cc43f39ac/) | BridgeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2ecc7da3cc98d341f987c85c3d9fc198570838b5`](./contracts/blast-81457/0x2ecc7da3cc98d341f987c85c3d9fc198570838b5/) | ControlFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1722762ee861288cb0cf0705a69b03dd4e9a09a7`](./contracts/blast-81457/0x1722762ee861288cb0cf0705a69b03dd4e9a09a7/) | CoreEmissionsKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x2ed2e32970c2ae27f51d6ad1809d2917fe084199`](./contracts/blast-81457/0x2ed2e32970c2ae27f51d6ad1809d2917fe084199/) | CoreEmissionsKeeperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1a5d813aff409a0245f86165552709d70a3ca610`](./contracts/blast-81457/0x1a5d813aff409a0245f86165552709d70a3ca610/) | CoreFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3026643eca499c196bd9aba91b6f9f02cd8ea6d6`](./contracts/blast-81457/0x3026643eca499c196bd9aba91b6f9f02cd8ea6d6/) | CoreMultiRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb74629900981f2977cd7a8e37052fee0d7a4c395`](./contracts/blast-81457/0xb74629900981f2977cd7a8e37052fee0d7a4c395/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x9d4c169703bb0116751a6965952a5e4adfdffb05`](./contracts/blast-81457/0x9d4c169703bb0116751a6965952a5e4adfdffb05/) | FundingRateFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0b60140dcc98a6a9e9985ab165dc54903861d50a`](./contracts/blast-81457/0x0b60140dcc98a6a9e9985ab165dc54903861d50a/) | LiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403`](./contracts/blast-81457/0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403/) | PartyAFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x50154e11edf5d7d528cbc7ec0d507ddb70b8b1c6`](./contracts/blast-81457/0x50154e11edf5d7d528cbc7ec0d507ddb70b8b1c6/) | PartyBFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0cbf07176e67671c99222bebdb166efc58dacd95`](./contracts/blast-81457/0x0cbf07176e67671c99222bebdb166efc58dacd95/) | RasaOffChainSymmioDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xc818f52e267609a4c377ed1a0691425cde8f853e`](./contracts/blast-81457/0xc818f52e267609a4c377ed1a0691425cde8f853e/) | RasaOnChainSymmioDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0b145a57443c3cc2e8e359caf80085019811829c`](./contracts/blast-81457/0x0b145a57443c3cc2e8e359caf80085019811829c/) | SeedVestingCoreUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xc2a1fcd1e6d6c3c806fac707b28126b072f045b6`](./contracts/blast-81457/0xc2a1fcd1e6d6c3c806fac707b28126b072f045b6/) | SignatureStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x30e54c1ae25e7c948668afd091c5b0bae0765915`](./contracts/blast-81457/0x30e54c1ae25e7c948668afd091c5b0bae0765915/) | SymmioDepositorLpToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde`](./contracts/blast-81457/0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde/) | SymmioPartyB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x8fb840c274fc6ce9320cbcf1074184693a5ddbb6`](./contracts/blast-81457/0x8fb840c274fc6ce9320cbcf1074184693a5ddbb6/) | TeamVestingCoreUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934`](./contracts/blast-81457/0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934/) | ViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
