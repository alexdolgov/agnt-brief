# Agentic Audit Brief: Sport.fun

## Project Overview

- Project: Sport.fun (`sport.fun`)
- Website: [https://pro.sport.fun](https://pro.sport.fun)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.544Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: base
- Contract surface: 24 unique implementations (48 raw deployments)
- DeFi Llama TVL: $2,942,863.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 26 project-authored contract(s) across 1 chain(s); 3 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (accesscontrolupgradeable, contextupgradeable, erc165upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 68; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 39 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/24 (0.0%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 48
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
| DevelopmentPlayersV2 | unknown | base | n/a | 2 deployments: base [`0x216491d59b200873829084b7b16419445e8464f1`](./contracts/base-8453/0x216491d59b200873829084b7b16419445e8464f1/); base `0xc98bf3fc49a8a7ad162098ad0bb62268d46dacf9` | ⚠️ Unaudited |
| DevelopmentPlayersV2 | unknown | base | n/a | 2 deployments: base [`0x48d29efe75e7e1403184e07005170bf72e1185a5`](./contracts/base-8453/0x48d29efe75e7e1403184e07005170bf72e1185a5/); base `0xc21c2d586f1db92eedb67a2fc348f21ed7541965` | ⚠️ Unaudited |
| FDFFactory | unknown | base | n/a | 2 deployments: base [`0x1637f08e395db4085f6f9b6d246606201c8de115`](./contracts/base-8453/0x1637f08e395db4085f6f9b6d246606201c8de115/); base `0xc5e617c261edc1a8cf6cb0b7dedabd4da3e5bc79` | ⚠️ Unaudited |
| FDFFactory | unknown | base | n/a | 2 deployments: base [`0x1757990c3e8ddb549487368bb29d1abf45e4bfce`](./contracts/base-8453/0x1757990c3e8ddb549487368bb29d1abf45e4bfce/); base `0xfa664e168fe1cf5b740bee8d973fb04f7a1633c4` | ⚠️ Unaudited |
| FDFPair | unknown | base | n/a | 2 deployments: base [`0x4f91bc61dee825de72023b63c1c09cefd6d5e388`](./contracts/base-8453/0x4f91bc61dee825de72023b63c1c09cefd6d5e388/); base `0x920cb915ed9f082f959f2c1106263c69f5981bd0` | ⚠️ Unaudited |
| FeeManager | unknown | base | n/a | 2 deployments: base [`0xcbf41efd1fa2a2879b837b0bbeccae04a85f8497`](./contracts/base-8453/0xcbf41efd1fa2a2879b837b0bbeccae04a85f8497/); base `0xf69ef8d02e277a32f48afb4a08d4ef35c864ea87` | ⚠️ Unaudited |
| FeeManagerV3 | unknown | base | n/a | 2 deployments: base [`0x5a0e0bb48c7f1fcb2d6dcebb565764eef1459830`](./contracts/base-8453/0x5a0e0bb48c7f1fcb2d6dcebb565764eef1459830/); base `0xbac4a9428ea707c51f171ed9890c3c2fa436305d` | ⚠️ Unaudited |
| Fun | unknown | base | n/a | 2 deployments: base [`0x2ce3452e57edd79829d484a80ad3f533ee25bb9a`](./contracts/base-8453/0x2ce3452e57edd79829d484a80ad3f533ee25bb9a/); base `0x8a25305628243d76a6a01308b355a67b387cedcb` | ⚠️ Unaudited |
| PackSale | unknown | base | n/a | 2 deployments: base [`0x0a7e010db9214d202b1da595fad1f673b37f9640`](./contracts/base-8453/0x0a7e010db9214d202b1da595fad1f673b37f9640/); base `0x3efddebc17f79cf88544c022fdc7fffc6595a961` | ⚠️ Unaudited |
| PackSale | unknown | base | n/a | 2 deployments: base [`0x104bf5c62bf8cd1b6c4e13c7d0a32dc3fd872ae2`](./contracts/base-8453/0x104bf5c62bf8cd1b6c4e13c7d0a32dc3fd872ae2/); base `0x68042f89433c68001d15114ff0df41864830a466` | ⚠️ Unaudited |
| PackSale | unknown | base | n/a | 2 deployments: base [`0x1f77620224ba13f6ebfd1fdedbabcc9c334a4dad`](./contracts/base-8453/0x1f77620224ba13f6ebfd1fdedbabcc9c334a4dad/); base `0x5422eceb88148e8efa318f400d0eb6c890921e45` | ⚠️ Unaudited |
| PackSale | unknown | base | n/a | 2 deployments: base [`0x3dac7d3a05ad0d05ee23ca625a76999d49d7e15f`](./contracts/base-8453/0x3dac7d3a05ad0d05ee23ca625a76999d49d7e15f/); base `0xfa15ead53af7aaead27681847f96558b2881d255` | ⚠️ Unaudited |
| PackSale | unknown | base | n/a | 2 deployments: base [`0x7a3a8a59f2f0a74aa0cddbc6fc7939b3f4786e6a`](./contracts/base-8453/0x7a3a8a59f2f0a74aa0cddbc6fc7939b3f4786e6a/); base `0xe807e3299691f0d8286dc44927f3251b6778f591` | ⚠️ Unaudited |
| PackSaleReveal | unknown | base | n/a | 2 deployments: base [`0x17345c2e8e9a81c66e1fb76a0951b18aa95b6354`](./contracts/base-8453/0x17345c2e8e9a81c66e1fb76a0951b18aa95b6354/); base `0x4fb35d907efcd6c0233ed0abeb978889abbe09e4` | ⚠️ Unaudited |
| PackSaleReveal | unknown | base | n/a | 2 deployments: base [`0x2bf90936e3803bb824ec335e139496a6e32c1b66`](./contracts/base-8453/0x2bf90936e3803bb824ec335e139496a6e32c1b66/); base `0xa15910873144d42c5c5e80ff3e37ef5216d49d5c` | ⚠️ Unaudited |
| PackSaleReveal | unknown | base | n/a | 2 deployments: base [`0x3b14ac32e10594e7ff22d2688bcc873e4bb9ea11`](./contracts/base-8453/0x3b14ac32e10594e7ff22d2688bcc873e4bb9ea11/); base `0x8e015e51178121b5a73e9c99d4c2cb198436d122` | ⚠️ Unaudited |
| PackSaleReveal | unknown | base | n/a | 2 deployments: base [`0x77c7ff5e22d03e937b8efb2bc32aaa055cb728d0`](./contracts/base-8453/0x77c7ff5e22d03e937b8efb2bc32aaa055cb728d0/); base `0x7f7b8a982e408527a0ba318f15f33cdc134d47f2` | ⚠️ Unaudited |
| PlayerContractsV2 | unknown | base | n/a | 2 deployments: base [`0x28232491479039d39c5d92ad405db71d3e5230f2`](./contracts/base-8453/0x28232491479039d39c5d92ad405db71d3e5230f2/); base `0xe7a8dd20154f18fe895c50cc62c81937cf20b1f7` | ⚠️ Unaudited |
| PlayerContractsV2 | unknown | base | n/a | 2 deployments: base [`0x6f0bdfb013443c3ff40e6ba11ecc543f302dd470`](./contracts/base-8453/0x6f0bdfb013443c3ff40e6ba11ecc543f302dd470/); base `0xa983c20822671025abd3e04dd0844845cf062778` | ⚠️ Unaudited |
| PlayerPackV3 | unknown | base | n/a | 2 deployments: base [`0x1f69192818c019de8c52c6cca99f263e950cf405`](./contracts/base-8453/0x1f69192818c019de8c52c6cca99f263e950cf405/); base `0xe7cfd9c833f7943e7aef9a1b4a5ca1390c12a58c` | ⚠️ Unaudited |
| PlayerPackV3 | unknown | base | n/a | 2 deployments: base [`0xb0a1004b9a14176783c31b4c56e4254f3d072b32`](./contracts/base-8453/0xb0a1004b9a14176783c31b4c56e4254f3d072b32/); base `0xc2df9440afd674293a6f7a55a53e14a6302d3e8d` | ⚠️ Unaudited |
| PlayerV3 | unknown | base | n/a | 2 deployments: base [`0x2eef466e802ab2835ab81be63eebc55167d35b56`](./contracts/base-8453/0x2eef466e802ab2835ab81be63eebc55167d35b56/); base `0xf0da459f306a1a23ccbf2737c04116563849d746` | ⚠️ Unaudited |
| PlayerV3 | unknown | base | n/a | 2 deployments: base [`0x71c8b0c5148edb0399d1edf9bf0c8c81dea16918`](./contracts/base-8453/0x71c8b0c5148edb0399d1edf9bf0c8c81dea16918/); base `0xcc647f306482f13ff0a20c99aec29baddd043208` | ⚠️ Unaudited |
| RewardsManager | unknown | base | n/a | 2 deployments: base [`0x2e8e74fe875b6813f8260ff6e95265d10e1b8ed7`](./contracts/base-8453/0x2e8e74fe875b6813f8260ff6e95265d10e1b8ed7/); base `0xfd4c2707d796e60151591deb4a8c9fe4e3dae866` | ⚠️ Unaudited |

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
| base | [`0x216491d59b200873829084b7b16419445e8464f1`](./contracts/base-8453/0x216491d59b200873829084b7b16419445e8464f1/) | DevelopmentPlayersV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x48d29efe75e7e1403184e07005170bf72e1185a5`](./contracts/base-8453/0x48d29efe75e7e1403184e07005170bf72e1185a5/) | DevelopmentPlayersV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1637f08e395db4085f6f9b6d246606201c8de115`](./contracts/base-8453/0x1637f08e395db4085f6f9b6d246606201c8de115/) | FDFFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1757990c3e8ddb549487368bb29d1abf45e4bfce`](./contracts/base-8453/0x1757990c3e8ddb549487368bb29d1abf45e4bfce/) | FDFFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4f91bc61dee825de72023b63c1c09cefd6d5e388`](./contracts/base-8453/0x4f91bc61dee825de72023b63c1c09cefd6d5e388/) | FDFPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcbf41efd1fa2a2879b837b0bbeccae04a85f8497`](./contracts/base-8453/0xcbf41efd1fa2a2879b837b0bbeccae04a85f8497/) | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5a0e0bb48c7f1fcb2d6dcebb565764eef1459830`](./contracts/base-8453/0x5a0e0bb48c7f1fcb2d6dcebb565764eef1459830/) | FeeManagerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ce3452e57edd79829d484a80ad3f533ee25bb9a`](./contracts/base-8453/0x2ce3452e57edd79829d484a80ad3f533ee25bb9a/) | Fun | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a7e010db9214d202b1da595fad1f673b37f9640`](./contracts/base-8453/0x0a7e010db9214d202b1da595fad1f673b37f9640/) | PackSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x104bf5c62bf8cd1b6c4e13c7d0a32dc3fd872ae2`](./contracts/base-8453/0x104bf5c62bf8cd1b6c4e13c7d0a32dc3fd872ae2/) | PackSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f77620224ba13f6ebfd1fdedbabcc9c334a4dad`](./contracts/base-8453/0x1f77620224ba13f6ebfd1fdedbabcc9c334a4dad/) | PackSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3dac7d3a05ad0d05ee23ca625a76999d49d7e15f`](./contracts/base-8453/0x3dac7d3a05ad0d05ee23ca625a76999d49d7e15f/) | PackSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7a3a8a59f2f0a74aa0cddbc6fc7939b3f4786e6a`](./contracts/base-8453/0x7a3a8a59f2f0a74aa0cddbc6fc7939b3f4786e6a/) | PackSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17345c2e8e9a81c66e1fb76a0951b18aa95b6354`](./contracts/base-8453/0x17345c2e8e9a81c66e1fb76a0951b18aa95b6354/) | PackSaleReveal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2bf90936e3803bb824ec335e139496a6e32c1b66`](./contracts/base-8453/0x2bf90936e3803bb824ec335e139496a6e32c1b66/) | PackSaleReveal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3b14ac32e10594e7ff22d2688bcc873e4bb9ea11`](./contracts/base-8453/0x3b14ac32e10594e7ff22d2688bcc873e4bb9ea11/) | PackSaleReveal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77c7ff5e22d03e937b8efb2bc32aaa055cb728d0`](./contracts/base-8453/0x77c7ff5e22d03e937b8efb2bc32aaa055cb728d0/) | PackSaleReveal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x28232491479039d39c5d92ad405db71d3e5230f2`](./contracts/base-8453/0x28232491479039d39c5d92ad405db71d3e5230f2/) | PlayerContractsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6f0bdfb013443c3ff40e6ba11ecc543f302dd470`](./contracts/base-8453/0x6f0bdfb013443c3ff40e6ba11ecc543f302dd470/) | PlayerContractsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f69192818c019de8c52c6cca99f263e950cf405`](./contracts/base-8453/0x1f69192818c019de8c52c6cca99f263e950cf405/) | PlayerPackV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb0a1004b9a14176783c31b4c56e4254f3d072b32`](./contracts/base-8453/0xb0a1004b9a14176783c31b4c56e4254f3d072b32/) | PlayerPackV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2eef466e802ab2835ab81be63eebc55167d35b56`](./contracts/base-8453/0x2eef466e802ab2835ab81be63eebc55167d35b56/) | PlayerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x71c8b0c5148edb0399d1edf9bf0c8c81dea16918`](./contracts/base-8453/0x71c8b0c5148edb0399d1edf9bf0c8c81dea16918/) | PlayerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2e8e74fe875b6813f8260ff6e95265d10e1b8ed7`](./contracts/base-8453/0x2e8e74fe875b6813f8260ff6e95265d10e1b8ed7/) | RewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
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
