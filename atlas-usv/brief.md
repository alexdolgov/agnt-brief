# Agentic Audit Brief: atlas-usv

## Project Overview

- Project: atlas-usv (`atlas-usv`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:04.240Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 20 unique implementations (20 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 20 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 6 common project-authored base contract(s) (accesscontrolmixin, nativemetatransaction, eip712base). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
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

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildERC1155 | unknown | polygon | n/a | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| CoinToken | unknown | polygon | n/a | [`0x9e2d26...35b8af`](./contracts/polygon-137/0x9e2d266d6c90f6c0d80a88159b15958f7135b8af/) | ⚠️ Unaudited |
| Distributor | unknown | polygon | n/a | [`0x32db04...d26477`](./contracts/polygon-137/0x32db040c03a7ae94ed9cc19dcb622c1c6cd26477/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| RedeemHelper | unknown | polygon | n/a | [`0x0609ed...b07278`](./contracts/polygon-137/0x0609edf714200b3502db17f5ad449394b0b07278/) | ⚠️ Unaudited |
| StakingHelper | unknown | polygon | n/a | [`0xb56969...bed5fe`](./contracts/polygon-137/0xb56969ec8c212aa1be233440fb143b4391bed5fe/) | ⚠️ Unaudited |
| StakingWarmup | unknown | polygon | n/a | [`0x9102de...7ef3ec`](./contracts/polygon-137/0x9102ded7542d05085c83f9c29a0d93282b7ef3ec/) | ⚠️ Unaudited |
| sUniversal | unknown | polygon | n/a | [`0x01d119...993556`](./contracts/polygon-137/0x01d119e2f0441ea442e3ab84e0dbbf04bd993556/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xc16e38...542970`](./contracts/polygon-137/0xc16e382aa7353aad0f598856afd9a93513542970/) | ⚠️ Unaudited |
| UniversalBarterDepository | unknown | polygon | n/a | [`0x20a1dc...c75b0e`](./contracts/polygon-137/0x20a1dc647f26ca38ed19a7e66c7eef621cc75b0e/) | ⚠️ Unaudited |
| UniversalBarteringCalculator | unknown | polygon | n/a | [`0xe35eb3...1b06c5`](./contracts/polygon-137/0xe35eb353cc074ecbc1aea3975f64ba084f1b06c5/) | ⚠️ Unaudited |
| UniversalERC20Token | unknown | polygon | n/a | [`0xaba898...9d5807`](./contracts/polygon-137/0xaba8980f9d59f98e009c2626a8cbebe0969d5807/) | ⚠️ Unaudited |
| UniversalStaking | unknown | polygon | n/a | [`0x99bbc8...a5efb2`](./contracts/polygon-137/0x99bbc86e1f5447cf1908b27ced0d2a0b9aa5efb2/) | ⚠️ Unaudited |
| UniversalTreasury | unknown | polygon | n/a | [`0x71ef28...89bc86`](./contracts/polygon-137/0x71ef2894e23d7ea7fd73a3558b3a0ba25689bc86/) | ⚠️ Unaudited |

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
| polygon | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ChildMintableERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ChildMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9e2d26...35b8af`](./contracts/polygon-137/0x9e2d266d6c90f6c0d80a88159b15958f7135b8af/) | CoinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x32db04...d26477`](./contracts/polygon-137/0x32db040c03a7ae94ed9cc19dcb622c1c6cd26477/) | Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | HelloWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0609ed...b07278`](./contracts/polygon-137/0x0609edf714200b3502db17f5ad449394b0b07278/) | RedeemHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb56969...bed5fe`](./contracts/polygon-137/0xb56969ec8c212aa1be233440fb143b4391bed5fe/) | StakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9102de...7ef3ec`](./contracts/polygon-137/0x9102ded7542d05085c83f9c29a0d93282b7ef3ec/) | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01d119...993556`](./contracts/polygon-137/0x01d119e2f0441ea442e3ab84e0dbbf04bd993556/) | sUniversal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | Transfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20a1dc...c75b0e`](./contracts/polygon-137/0x20a1dc647f26ca38ed19a7e66c7eef621cc75b0e/) | UniversalBarterDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe35eb3...1b06c5`](./contracts/polygon-137/0xe35eb353cc074ecbc1aea3975f64ba084f1b06c5/) | UniversalBarteringCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaba898...9d5807`](./contracts/polygon-137/0xaba8980f9d59f98e009c2626a8cbebe0969d5807/) | UniversalERC20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x99bbc8...a5efb2`](./contracts/polygon-137/0x99bbc86e1f5447cf1908b27ced0d2a0b9aa5efb2/) | UniversalStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x71ef28...89bc86`](./contracts/polygon-137/0x71ef2894e23d7ea7fd73a3558b3a0ba25689bc86/) | UniversalTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
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
