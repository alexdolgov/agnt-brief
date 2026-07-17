# Agentic Audit Brief: whitehole-finance

## Project Overview

- Project: whitehole-finance (`whitehole-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.230Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum
- Contract surface: 35 unique implementations (35 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 33 project-authored contract(s) across 1 chain(s); 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 23 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (35 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 35 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 35
- Raw deployments: 35
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

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AIP1Point1Target | unknown | arbitrum | n/a | [`0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/) | ⚠️ Unaudited |
| AIP1Point2Action | unknown | arbitrum | n/a | [`0x6274106eedd4848371d2c09e0352d67b795ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | arbitrum | n/a | [`0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/) | ⚠️ Unaudited |
| ArbUXRNFT | unknown | arbitrum | n/a | [`0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x863491cc6c7275bcc15a386093e92390e2a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | ⚠️ Unaudited |
| Core | unknown | arbitrum | n/a | [`0x1d019f2d14bdb81bab7ba4ec7e20868e669c32b1`](./contracts/arbitrum-42161/0x1d019f2d14bdb81bab7ba4ec7e20868e669c32b1/) | ⚠️ Unaudited |
| Dashboard | unknown | arbitrum | n/a | [`0x4cac90e5775d18bc8a2069fa03e6b69486843dea`](./contracts/arbitrum-42161/0x4cac90e5775d18bc8a2069fa03e6b69486843dea/) | ⚠️ Unaudited |
| EcoScore | unknown | arbitrum | n/a | [`0xaa4dd1b93954637b16e9917a9c7431b478345178`](./contracts/arbitrum-42161/0xaa4dd1b93954637b16e9917a9c7431b478345178/) | ⚠️ Unaudited |
| GNft | unknown | arbitrum | n/a | [`0x4d484f6c24b59b21aeef853c3b719168b53a2992`](./contracts/arbitrum-42161/0x4d484f6c24b59b21aeef853c3b719168b53a2992/) | ⚠️ Unaudited |
| GRVDistributor | unknown | arbitrum | n/a | [`0x96054117ab210d38b6b62a43d2abedb793febccb`](./contracts/arbitrum-42161/0x96054117ab210d38b6b62a43d2abedb793febccb/) | ⚠️ Unaudited |
| GrvPresale | unknown | arbitrum | n/a | [`0x5294c3b3ee5d81c1aa0e75439bffba2c14e80004`](./contracts/arbitrum-42161/0x5294c3b3ee5d81c1aa0e75439bffba2c14e80004/) | ⚠️ Unaudited |
| GRVToken | unknown | arbitrum | n/a | [`0x10031e7cff689de64f1a5a8ecf4fbbc7aa068927`](./contracts/arbitrum-42161/0x10031e7cff689de64f1a5a8ecf4fbbc7aa068927/) | ⚠️ Unaudited |
| GToken | unknown | arbitrum | n/a | [`0x0ac8003fd855f8b5bc3738cbedfda5211629ab7d`](./contracts/arbitrum-42161/0x0ac8003fd855f8b5bc3738cbedfda5211629ab7d/) | ⚠️ Unaudited |
| L2AddressRegistry | unknown | arbitrum | n/a | [`0x3e84af3743cc4e7f516570b341ced56530d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/) | ⚠️ Unaudited |
| Locker | unknown | arbitrum | n/a | [`0xa4717568172358cfdbbaa8c0e38a44185c090f52`](./contracts/arbitrum-42161/0xa4717568172358cfdbbaa8c0e38a44185c090f52/) | ⚠️ Unaudited |
| LpVault | unknown | arbitrum | n/a | [`0xeb6c072e326032724722eda63a6ec50c007582ca`](./contracts/arbitrum-42161/0xeb6c072e326032724722eda63a6ec50c007582ca/) | ⚠️ Unaudited |
| NftCore | unknown | arbitrum | n/a | [`0xcaaa8db56b5520bbfdb6d29d4d2fc5d0edc57300`](./contracts/arbitrum-42161/0xcaaa8db56b5520bbfdb6d29d4d2fc5d0edc57300/) | ⚠️ Unaudited |
| NFTOracle | unknown | arbitrum | n/a | [`0x02a2a1396d595f89aed81a06afdc514aecd88097`](./contracts/arbitrum-42161/0x02a2a1396d595f89aed81a06afdc514aecd88097/) | ⚠️ Unaudited |
| NftValidator | unknown | arbitrum | n/a | [`0x59dfebaf68821f496cd7d56c83508d2ca45bfaae`](./contracts/arbitrum-42161/0x59dfebaf68821f496cd7d56c83508d2ca45bfaae/) | ⚠️ Unaudited |
| PriceCalculator | unknown | arbitrum | n/a | [`0xf96d53e57b8d23638bf75f29367806cde0937651`](./contracts/arbitrum-42161/0xf96d53e57b8d23638bf75f29367806cde0937651/) | ⚠️ Unaudited |
| PriceProtectionTaxCalculator | unknown | arbitrum | n/a | [`0xdeba4bba368d138fe4cda96b68540cc145685a2e`](./contracts/arbitrum-42161/0xdeba4bba368d138fe4cda96b68540cc145685a2e/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x15d60ac2747b591203dcb784c53a8b93a3fa84ad`](./contracts/arbitrum-42161/0x15d60ac2747b591203dcb784c53a8b93a3fa84ad/) | ⚠️ Unaudited |
| RateModelSlope | unknown | arbitrum | n/a | [`0x0b8f05b779281482840330979475a3dfc5ae48e7`](./contracts/arbitrum-42161/0x0b8f05b779281482840330979475a3dfc5ae48e7/) | ⚠️ Unaudited |
| ReferralDistributor | unknown | arbitrum | n/a | [`0x503027971eb84ab6cdc5f987c407848346565534`](./contracts/arbitrum-42161/0x503027971eb84ab6cdc5f987c407848346565534/) | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | arbitrum | n/a | [`0x2f8577f68d8306aeb48f9015ac61744bbadfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0d56457186ce06514a306c3ba45bdc9795e2d27b`](./contracts/arbitrum-42161/0x0d56457186ce06514a306c3ba45bdc9795e2d27b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x15533b77981cda0f85c4f9a485237df4285d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xc7ccd8276d18b9ff477b193bbc2521bd0ee19689`](./contracts/arbitrum-42161/0xc7ccd8276d18b9ff477b193bbc2521bd0ee19689/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded8823234e28f18a824abe4f64fa7863b626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| Validator | unknown | arbitrum | n/a | [`0x595f1aa373f2281bba1e9f0a9acc7ed7fc52a7f1`](./contracts/arbitrum-42161/0x595f1aa373f2281bba1e9f0a9acc7ed7fc52a7f1/) | ⚠️ Unaudited |
| VoteController | unknown | arbitrum | n/a | [`0xdf5e4c17ed0f8933f5c1378c2f4b85d2277f3489`](./contracts/arbitrum-42161/0xdf5e4c17ed0f8933f5c1378c2f4b85d2277f3489/) | ⚠️ Unaudited |
| WhiteholePair | unknown | arbitrum | n/a | [`0x7c3bbcba5867b8c6c5e0e636081902a99c44d00a`](./contracts/arbitrum-42161/0x7c3bbcba5867b8c6c5e0e636081902a99c44d00a/) | ⚠️ Unaudited |
| WhiteholeRouter | unknown | arbitrum | n/a | [`0x6e90aca697d7eb6ed3c81fd56ddb7ee17299bb10`](./contracts/arbitrum-42161/0x6e90aca697d7eb6ed3c81fd56ddb7ee17299bb10/) | ⚠️ Unaudited |
| Zap | unknown | arbitrum | n/a | [`0x98d99c9eb294448c2698d08b2b73736ee2cb395f`](./contracts/arbitrum-42161/0x98d99c9eb294448c2698d08b2b73736ee2cb395f/) | ⚠️ Unaudited |

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
| arbitrum | [`0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/) | AIP1Point1Target | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6274106eedd4848371d2c09e0352d67b795ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | AIP1Point2Action | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/) | ArbCommunityNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ArbUXRNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x863491cc6c7275bcc15a386093e92390e2a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | BeaconProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d019f2d14bdb81bab7ba4ec7e20868e669c32b1`](./contracts/arbitrum-42161/0x1d019f2d14bdb81bab7ba4ec7e20868e669c32b1/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4cac90e5775d18bc8a2069fa03e6b69486843dea`](./contracts/arbitrum-42161/0x4cac90e5775d18bc8a2069fa03e6b69486843dea/) | Dashboard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaa4dd1b93954637b16e9917a9c7431b478345178`](./contracts/arbitrum-42161/0xaa4dd1b93954637b16e9917a9c7431b478345178/) | EcoScore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4d484f6c24b59b21aeef853c3b719168b53a2992`](./contracts/arbitrum-42161/0x4d484f6c24b59b21aeef853c3b719168b53a2992/) | GNft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x96054117ab210d38b6b62a43d2abedb793febccb`](./contracts/arbitrum-42161/0x96054117ab210d38b6b62a43d2abedb793febccb/) | GRVDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5294c3b3ee5d81c1aa0e75439bffba2c14e80004`](./contracts/arbitrum-42161/0x5294c3b3ee5d81c1aa0e75439bffba2c14e80004/) | GrvPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10031e7cff689de64f1a5a8ecf4fbbc7aa068927`](./contracts/arbitrum-42161/0x10031e7cff689de64f1a5a8ecf4fbbc7aa068927/) | GRVToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ac8003fd855f8b5bc3738cbedfda5211629ab7d`](./contracts/arbitrum-42161/0x0ac8003fd855f8b5bc3738cbedfda5211629ab7d/) | GToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3e84af3743cc4e7f516570b341ced56530d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/) | L2AddressRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa4717568172358cfdbbaa8c0e38a44185c090f52`](./contracts/arbitrum-42161/0xa4717568172358cfdbbaa8c0e38a44185c090f52/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb6c072e326032724722eda63a6ec50c007582ca`](./contracts/arbitrum-42161/0xeb6c072e326032724722eda63a6ec50c007582ca/) | LpVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcaaa8db56b5520bbfdb6d29d4d2fc5d0edc57300`](./contracts/arbitrum-42161/0xcaaa8db56b5520bbfdb6d29d4d2fc5d0edc57300/) | NftCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02a2a1396d595f89aed81a06afdc514aecd88097`](./contracts/arbitrum-42161/0x02a2a1396d595f89aed81a06afdc514aecd88097/) | NFTOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x59dfebaf68821f496cd7d56c83508d2ca45bfaae`](./contracts/arbitrum-42161/0x59dfebaf68821f496cd7d56c83508d2ca45bfaae/) | NftValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf96d53e57b8d23638bf75f29367806cde0937651`](./contracts/arbitrum-42161/0xf96d53e57b8d23638bf75f29367806cde0937651/) | PriceCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdeba4bba368d138fe4cda96b68540cc145685a2e`](./contracts/arbitrum-42161/0xdeba4bba368d138fe4cda96b68540cc145685a2e/) | PriceProtectionTaxCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b8f05b779281482840330979475a3dfc5ae48e7`](./contracts/arbitrum-42161/0x0b8f05b779281482840330979475a3dfc5ae48e7/) | RateModelSlope | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x503027971eb84ab6cdc5f987c407848346565534`](./contracts/arbitrum-42161/0x503027971eb84ab6cdc5f987c407848346565534/) | ReferralDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f8577f68d8306aeb48f9015ac61744bbadfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/) | SetFiveMillionProposalThresholdAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x595f1aa373f2281bba1e9f0a9acc7ed7fc52a7f1`](./contracts/arbitrum-42161/0x595f1aa373f2281bba1e9f0a9acc7ed7fc52a7f1/) | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdf5e4c17ed0f8933f5c1378c2f4b85d2277f3489`](./contracts/arbitrum-42161/0xdf5e4c17ed0f8933f5c1378c2f4b85d2277f3489/) | VoteController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7c3bbcba5867b8c6c5e0e636081902a99c44d00a`](./contracts/arbitrum-42161/0x7c3bbcba5867b8c6c5e0e636081902a99c44d00a/) | WhiteholePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e90aca697d7eb6ed3c81fd56ddb7ee17299bb10`](./contracts/arbitrum-42161/0x6e90aca697d7eb6ed3c81fd56ddb7ee17299bb10/) | WhiteholeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x98d99c9eb294448c2698d08b2b73736ee2cb395f`](./contracts/arbitrum-42161/0x98d99c9eb294448c2698d08b2b73736ee2cb395f/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
