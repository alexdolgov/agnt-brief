# Agentic Audit Brief: Guru Network DAO

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Guru Network DAO (`guru-network-dao`)
- Website: [https://ftm.guru/](https://ftm.guru/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, fantom, kava, metis, polygon, sepolia, sonic
- Contract surface: 53 unique implementations (86 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,700,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Guru Network DAO in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 53
- Raw deployments: 86
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

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aera_farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6c39ff982ac0a696978f66ef632d9f86dfb93264` | ⚠️ Unaudited |
| AERA_Layer1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x63d73d848b7f5142f11974188e9fe3f5de28f88c` | ⚠️ Unaudited |
| AerariumMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5c652a94c672f8f6d021417bb5ee75c322ecf1fc` | ⚠️ Unaudited |
| ContractChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x869c20286e6c71178669ef7fe0851bc1dbc56c36` | ⚠️ Unaudited |
| elCHR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd600ec98cf6418c50ee051ace53219d95aeaa134` | ⚠️ Unaudited |
| elCHR_Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1` | ⚠️ Unaudited |
| ElitenessERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x7898a099b61fdecd83a26f4006812ef04e0ceb08`; polygon `0xcc1eff4e5f1b82a96179b9044e93e142285fee93` | ⚠️ Unaudited |
| eLOCKS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xc6b515328f970ec25228a716bf91774e5bd5abc0` | ⚠️ Unaudited |
| elToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b` | ⚠️ Unaudited |
| elToken_Depositor | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x2696f94f11dff0d77875e2652fcdb537274b9ce7`; polygon `0xcc835d13543cec819ac0226dd9ff35b6312b8fca`; polygon `0xd600ec98cf6418c50ee051ace53219d95aeaa134`; polygon `0xdf486980df72446a5eff76263efb2fa9391be136` | ⚠️ Unaudited |
| elTokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c`; polygon `0x4046c4a45b0472fbce61965c7b84e05fe90a40c4`; arbitrum `0x7be024bbd16e3e0ab6839cb94d0dc25b7a101eab`; arbitrum `0x861fe22b721602954d34f2e4a5843e6a295811c7` | ⚠️ Unaudited |
| elTokenRedeemVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39cc812e698a61f1883f7b9dba54159aa7b1d91c` | ⚠️ Unaudited |
| FertilizerGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbb2b0a38470284a730f8e44537192c9d1ffa009` | ⚠️ Unaudited |
| Granary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf060c8c86e17bf64fa3cfc6bbb2cb829c33b8069` | ⚠️ Unaudited |
| GuruMultiRewardFarmland | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: polygon `0xc4c807aee35f75c891cb51ef982c98371b1362b4`; metis `0xa0edd976462104805f939e8771f7e3e7450350e9`; arbitrum `0x2696f94f11dff0d77875e2652fcdb537274b9ce7`; arbitrum `0x64532eb2e28b0d0b56b5cba35c0a88fa06285d08`; arbitrum `0xcc835d13543cec819ac0226dd9ff35b6312b8fca`; arbitrum `0xdf486980df72446a5eff76263efb2fa9391be136`; avalanche `0xdf486980df72446a5eff76263efb2fa9391be136` | ⚠️ Unaudited |
| JoeDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x16162dc702a6c6455ad09b3eedcb773b0660f0e8`; base `0x783f862b1861f75ff3795dcc84a2f8b0fd6c8589` | ⚠️ Unaudited |
| LBFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8597db3ba8de6baadeda8cba4dac653e24a0e57b`; arbitrum `0x8597db3ba8de6baadeda8cba4dac653e24a0e57b` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0a129ce42df82a5de2b4921883a56565bdf8e146`; arbitrum `0x0a129ce42df82a5de2b4921883a56565bdf8e146` | ⚠️ Unaudited |
| LBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb9a64ab6b91f5c7a78c2360cff759de8a8a450d5`; arbitrum `0xb9a64ab6b91f5c7a78c2360cff759de8a8a450d5` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xafbe3b8b0939a5538de32f7752a78e08c8492295` | ⚠️ Unaudited |
| oTokenToElToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3979d8149099b98cde35e08722f05dc477f55b97` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27` | ⚠️ Unaudited |
| pvl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198` | ⚠️ Unaudited |
| ScaleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x068f964c3ff4bf16c2bf3e3c516856f71a582a53` | ⚠️ Unaudited |
| tvlGuru | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x18c7ad880a07d363f2d034a8523ae34b8068845a`; metis `0x50dcc6cb1b2d6965c42d98a2b07629c57a6be895`; base `0x7a18d1b46baabb2d8260d0f8cfbb2292901c2779`; arbitrum `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b`; avalanche `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b` | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x52ce715ca439a031fc3cc103f08a378bad18546b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05bf8a10a24acb9d61b9b6dd90aef99fb86a1c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x123136fe50b5711a3c1f546f9d5608a9cb6d16c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x345551265a8938472991d60a048cae3625e0cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37c140598dab38a924214958849b94d83c220423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3df3e6bbd322eae0ffea3e6c629490a18ec036bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c00ba9c27fa6eb77a98d2c4cccb5f1ce7c9bf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x702e5db7da5e9cee17d78618a1e7dc5b97f033b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb264c9ece4c1f9ebff85e580b068a82fcdb2e198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5687aa2d1b043b56b269657034d4d64b4287761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8207c5c54b4cf54aa3f5538cc8a2c6dfa2716d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd1430673b0ea81a3c027f13bcb1cc13edec6680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd323538a0c40e3052b9db5886e9f3888ce0170a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfae2e027a282579caab632d2ebc5a627e08cb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 13 deployments: fantom `0x0786c3a78f5133f08c1c70953b8b10376bc6dcad`; fantom `0x0a558d43bccbc7586547fc74e3a0e70467215b3c`; fantom `0x2f20a659601d1c161a108e0725fef31256a907ad`; fantom `0x35402cdc3bcffb904116bdc720afc75c2921de08`; fantom `0x426a4a4b73d4cd173c9ab78d18c0d79d1717eaa9`; fantom `0x8597db3ba8de6baadeda8cba4dac653e24a0e57b`; fantom `0xa254bfd74c38b26145b980162fb1a49bc0a4f14b`; fantom `0xb6633c351a3af289ed6bbf4a78c682fa16656b1e`; fantom `0xe345a50c33e5c9d0284d6ff0b891c4fc99a9c117`; fantom `0xf43cc235e686d7bc513f53fbffb61f760c3a1882`; fantom `0xfaa22e721924fa57d042f6e2c793997aa9287b27`; kava `0x86e4d91800c03e803d4c8fa3293d1c7d612a7300`; kava `0x9d9682577ca889c882412056669bd936894663fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63d73d848b7f5142f11974188e9fe3f5de28f88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x650078a42f682837d5f9307f1e7483aaa612885f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb62f6095f2afd00702fb79570c9f1aa730510fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc851f62badf09c30ff7a218dce249bc0ff448d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9751ad0767ecd82c815628b0c3402aa788c11f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18c7ad880a07d363f2d034a8523ae34b8068845a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4c807aee35f75c891cb51ef982c98371b1362b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9751ad0767ecd82c815628b0c3402aa788c11f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc295f619afc2b8543d91c8970ea4c0726f197250` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387178 | `0x449e8d7b54ecd0c1d53a010e5935fea4b806f723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387182 | `0xc28611b48c3987e9778d062b033b3086f9469467` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
