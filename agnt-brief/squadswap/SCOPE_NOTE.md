# Agentic Brief: SquadSwap WOW

## Project Overview

- **Project:** SquadSwap WOW (squadswap)
- **Website:** squadswap.com
- **Category:** Dexs
- **Chains (topography):** 56, 137, 8453, 42161, 81457
- **Chains (DeFiLlama):** 56
- **TVL:** $1,012,334 (1 DL slug(s), queried 2026-04-29)
- **Lifecycle:** active - latest deployment unknown
- **Audit history:** 4 audits; most recent 2026-05-03 (1 days ago)
- **Tier:** 1 - partial_audit_gap (Partially audited, active gap)
- **Commercial fit:** small_tvl_coverage_filler

SquadSwap WOW has 94 deployed contract rows in current topography. This brief renders the 94 rows present in scope-match run recovery-full-v5-fixed-matcher-2026-05-05-720c81c2; any topography rows absent from that run are outside the visible contract tables until the scope matcher is regenerated over them.

---

## Lifecycle and Recent Activity

Lifecycle status: active. Most recent deployment unknown (unknown days ago). Lifecycle source: default_fallback.

---

## Audit Targeting Recommendation

Audit-evaluable surface in this run: 94 contracts across 5 chains. 19 have TP audit coverage (20.2%); 75 do not.

Small-TVL coverage filler. Review only if the uncovered surface is technically interesting.

Existing coverage by category is summarized below; re-audit of TP-covered rows is lower priority than unmatched and likely-in-scope rows.

---

## Scope - Core Logic

Provenance-based classification not available for this project. The table below shows the flat scope inventory from topography with audit-match verdicts where available; distinguishing core logic from operational periphery requires the provenance pass.

### bsc (chain_id 56)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FarmBooster | staking | staking | unmatched | [0x52e2f8...a89e](https://bscscan.com/address/0x52e2f8f52e27918aeb3995b5e49da38ce9cda89e) |
| FarmBooster | staking | staking | unmatched | [0x672d60...c9ca](https://bscscan.com/address/0x672d6081d56be6874577a8c521c47394e508c9ca) |
| FeeManager | controller | controller | unmatched | [0x5af85b...4b00](https://bscscan.com/address/0x5af85b993645af4e530f93721653fb9b6a424b00) |
| LovelySwapInterfaceMulticall | router | router | likely in scope | [0x6d705b...fee7](https://bscscan.com/address/0x6d705b6729afae099a8447475a88c88265c7fee7) |
| MasterChefV2 | core | core | audited (TP) | [0xec6743...76ca](https://bscscan.com/address/0xec6743618f18ba97b1973c476feab0da387a76ca) |
| MasterChefV3 | core | core | audited (TP) | [0x2ca14a...6868](https://bscscan.com/address/0x2ca14af00e6847c0600067f94a8b7cbfaff96868) |
| NonfungiblePositionManager | controller | controller | unmatched | [0x501535...b7b4](https://bscscan.com/address/0x501535ef0b92ee1df5c12f47720f1e479b1db7b4) |
| NonfungibleTokenPositionDescriptorOffChain | token | token | unmatched | [0x5a547c...8d59](https://bscscan.com/address/0x5a547c636c40246b53423e45861ecc28b06d8d59) |
| QuoterV2 | core | core | unmatched | [0xaf78c3...fe7f](https://bscscan.com/address/0xaf78c3c4100070337dba8c79065339cfb77cfe7f) |
| SmartChefFactory | factory | factory | unmatched | [0x642782...ec16](https://bscscan.com/address/0x6427824d446e5be25326ab1b88c8102f0d52ec16) |
| SmartRouter | router | router | likely in scope | [0xfb96f5...8b5b](https://bscscan.com/address/0xfb96f59a63c60dfc8e13547b3e9e366a3c0b8b5b) |
| SmartRouterHelper | router | router | audited (TP) | [0xf1a0c1...a811](https://bscscan.com/address/0xf1a0c1ce6d2f3ef752b97765f28f6c0cda79a811) |
| SquadLimitOrder | core | core | unmatched | [0x62490b...aab9](https://bscscan.com/address/0x62490b11b335f3b27fc3fbadc29ccdaf7b56aab9) |
| SquadswapFactory | factory | factory | audited (TP) | [0x918adf...3dba](https://bscscan.com/address/0x918adf1f2c03b244823cd712e010b6e3cd653dba) |
| SquadswapRouter02 | router | router | audited (TP) | [0xcf870c...e48d](https://bscscan.com/address/0xcf870c78b7985a5b67a6f3f547678387015ee48d) |
| SquadV3Factory | factory | factory | unmatched | [0x10d861...c07b](https://bscscan.com/address/0x10d8612d9d8269e322ab551c18a307cb4d6bc07b) |
| SquadV3PoolDeployer | factory | factory | unmatched | [0x127aa9...44a4](https://bscscan.com/address/0x127aa917ace4a3880fa5e193947f2190829144a4) |
| SwapRouter | router | router | likely in scope | [0x56956a...ef70](https://bscscan.com/address/0x56956af389c6bc07f4c57837b49dd03b4238ef70) |
| TickLens | registry | registry | unmatched | [0x7c9c92...6373](https://bscscan.com/address/0x7c9c9220b563a09167943fd327d50e858c0a6373) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x388a6f...9150](https://bscscan.com/address/0x388a6fa2c1b6551c92adf631f4b6ddbe6b829150) |
| V3Migrator | migration | migration | unmatched | [0x9d19dd...a47f](https://bscscan.com/address/0x9d19dd8d1967306b8bdea5efb38de693629ca47f) |
| unnamed | unknown | unknown | unmatched | [0x48470d...6ddb](https://bscscan.com/address/0x48470d8b60067d004796823fce21ed9df18d6ddb) |
| unnamed | unknown | unknown | unmatched | [0x73b7e7...3cf1](https://bscscan.com/address/0x73b7e7667b4dd0ac13fdff1577a3c44dfa1d3cf1) |
| unnamed | unknown | unknown | unmatched | [0xa9712b...2e4a](https://bscscan.com/address/0xa9712bc605bfedf37742e8ce41a9e57e50fb2e4a) |
| unnamed | unknown | unknown | unmatched | [0xc1fa2a...17b9](https://bscscan.com/address/0xc1fa2a15e19c62b2cf771a7c6c270ef194e217b9) |
| unnamed | unknown | unknown | unmatched | [0xe27875...0acf](https://bscscan.com/address/0xe2787506ca9b5f17b64a4e1bb789c017c3620acf) |
| unnamed | unknown | unknown | unmatched | [0xf6dcd5...9a87](https://bscscan.com/address/0xf6dcd58e71ba7d3fbcb37ca166f4c53ffd8b9a87) |

### polygon (chain_id 137)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FeeManager | controller | controller | unmatched | [0x369967...d279](https://polygonscan.com/address/0x369967bd0bd3b7550b16d251d42def66fc78d279) |
| MasterChefV2 | core | core | audited (TP) | [0x1d9f43...6ac1](https://polygonscan.com/address/0x1d9f43a6195054313ac1ae423b1f810f593b6ac1) |
| MasterChefV3 | core | core | audited (TP) | [0xb4286e...49c2](https://polygonscan.com/address/0xb4286e807a8107cc3344d3094468dc44d73b49c2) |
| NonfungiblePositionManager | controller | controller | unmatched | [0x87b104...9d09](https://polygonscan.com/address/0x87b10463f06767611e26ff33b7b82434a0749d09) |
| QuoterV2 | core | core | unmatched | [0xc566fb...a5cb](https://polygonscan.com/address/0xc566fb4ac9bcd311b5fad9686e9b855aa217a5cb) |
| SmartChefFactory | factory | factory | unmatched | [0xb3228e...7a19](https://polygonscan.com/address/0xb3228e597587f7aafb1549311ada17eca59a7a19) |
| SwapRouter | router | router | likely in scope | [0xb00152...8fa2](https://polygonscan.com/address/0xb00152041c98a5547252f411ebc8b39637288fa2) |
| unnamed | unknown | unknown | unmatched | [0x3a5800...2286](https://polygonscan.com/address/0x3a58002d40f5aabef676291e17be464bb3982286) |
| unnamed | unknown | unknown | unmatched | [0x6785dc...ed4c](https://polygonscan.com/address/0x6785dcce80e1adb0efaa602867d0f3127210ed4c) |
| unnamed | unknown | unknown | unmatched | [0x7f5f5a...d4cf](https://polygonscan.com/address/0x7f5f5a9542a61fd6948f08966b89396fbf6fd4cf) |
| unnamed | unknown | unknown | unmatched | [0xc589b6...061e](https://polygonscan.com/address/0xc589b6e676a7e716da944b73bf4ae4e75bc6061e) |
| unnamed | unknown | unknown | unmatched | [0xecfa6b...d229](https://polygonscan.com/address/0xecfa6bcab627f1b673203ca1f334a1c44199d229) |

### base (chain_id 8453)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FeeManager | controller | controller | unmatched | [0xfa6eb2...2f85](https://basescan.org/address/0xfa6eb2979d4092567ebe93e491a8e0d8291e2f85) |
| MasterChefV2 | core | core | audited (TP) | [0xb61715...bb48](https://basescan.org/address/0xb6171582c75421a740dcc15e4d873a34cb2ebb48) |
| MasterChefV3 | core | core | audited (TP) | [0x89c061...6711](https://basescan.org/address/0x89c0619e7a798309193438b3cff11f1f31266711) |
| NonfungiblePositionManager | controller | controller | unmatched | [0xd70eb1...80f8](https://basescan.org/address/0xd70eb19c7a0c8e5c72b9a044766d865d38d080f8) |
| QuoterV2 | core | core | unmatched | [0x84ff9b...3898](https://basescan.org/address/0x84ff9b09b56c3858c38cc7aa678fabb73b9f3898) |
| SmartChefFactory | factory | factory | unmatched | [0x29626c...af09](https://basescan.org/address/0x29626c367d4f334f92fa21b1c5958bbe1dc2af09) |
| SmartRouter | router | router | likely in scope | [0xf48d22...cacc](https://basescan.org/address/0xf48d22968e87c52743f9052d8e608ecd41facacc) |
| SmartRouterHelper | router | router | audited (TP) | [0x7ea21a...14bb](https://basescan.org/address/0x7ea21af2920e0d1e17ef82ea9531762f504a14bb) |
| SquadInterfaceMulticall | core | core | unmatched | [0xee8f37...99f0](https://basescan.org/address/0xee8f37d490cb7ea1dae7d080c5738894731299f0) |
| SquadV3Factory | factory | factory | unmatched | [0xa1288b...c0ea](https://basescan.org/address/0xa1288b64f2378276d0cc56f08397f70becf7c0ea) |
| SquadV3PoolDeployer | factory | factory | unmatched | [0x53616b...d62a](https://basescan.org/address/0x53616b1baa9e224092bbaf64f2fb5da2b11dd62a) |
| SwapRouter | router | router | likely in scope | [0xd43261...5b6a](https://basescan.org/address/0xd432617a31807c531116c2e39c251759ac905b6a) |
| TickLens | registry | registry | unmatched | [0x5fbd88...34c9](https://basescan.org/address/0x5fbd88f04963c25e51ccae20951f815577a234c9) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0xcf2a34...ae3b](https://basescan.org/address/0xcf2a34727c53be4ae5f6fed10a00a64e6f80ae3b) |
| V3Migrator | migration | migration | unmatched | [0xbee320...3365](https://basescan.org/address/0xbee3209e04f926ce9df2a22c457d44303e543365) |
| unnamed | unknown | unknown | unmatched | [0x16fbb3...8788](https://basescan.org/address/0x16fbb33001d74e4fb6d1423189a74f89da058788) |
| unnamed | unknown | unknown | unmatched | [0x202de6...94a3](https://basescan.org/address/0x202de677e39616691b8493e36e2c739276b794a3) |
| unnamed | unknown | unknown | unmatched | [0xb124a8...212e](https://basescan.org/address/0xb124a847306f695e3ad44bd62a6356e75683212e) |

### arbitrum (chain_id 42161)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FeeManager | controller | controller | unmatched | [0x2e815e...f39a](https://arbiscan.io/address/0x2e815e8c6c02e27b54b571d27e3ba9d94394f39a) |
| MasterChefV2 | core | core | audited (TP) | [0x6daafc...f576](https://arbiscan.io/address/0x6daafc12f65801afb2f0b0212a8229f224acf576) |
| MasterChefV3 | core | core | audited (TP) | [0xa9e236...5dca](https://arbiscan.io/address/0xa9e236aa88d3d9d5d4499d1b6ffa7ec170da5dca) |
| SmartChefFactory | factory | factory | unmatched | [0xea6fd4...8eed](https://arbiscan.io/address/0xea6fd462b72cdd0f535125cacbc33b9b7ba68eed) |
| SmartRouterHelper | router | router | audited (TP) | [0x95e801...e902](https://arbiscan.io/address/0x95e8014d86af94e6abea38822082da728b9fe902) |
| SquadInterfaceMulticall | core | core | unmatched | [0x11b701...7d99](https://arbiscan.io/address/0x11b7018204cb458741b56725422bc64cf7be7d99) |
| SquadswapFactory | factory | factory | audited (TP) | [0xba34aa...eef9](https://arbiscan.io/address/0xba34aa640b8be02a439221bcbea1f48c1035eef9) |
| SquadswapRouter02 | router | router | audited (TP) | [0xe58b1e...44f1](https://arbiscan.io/address/0xe58b1e7e398e8cc97a276c55fb7ab5e46ee144f1) |
| SquadV3Factory | factory | factory | unmatched | [0x055892...c671](https://arbiscan.io/address/0x0558921f7c0f32274bb957d5e8bf873ce1c0c671) |
| SquadV3PoolDeployer | factory | factory | unmatched | [0xea0069...7fb1](https://arbiscan.io/address/0xea006904113a96995e51cd9065ca6b9833da7fb1) |
| TickLens | registry | registry | unmatched | [0xd60507...13aa](https://arbiscan.io/address/0xd605072c79c4e7d85174600f59c335420cb713aa) |
| TransparentUpgradeableProxy | proxy | proxy | unmatched | [0x824300...8d1c](https://arbiscan.io/address/0x8243000e75c462de44cf6dfbb5b3508b1fb78d1c) |
| V3Migrator | migration | migration | unmatched | [0x3767e2...aa9f](https://arbiscan.io/address/0x3767e2bc3e9c5ceb8be25513ae2e6937df66aa9f) |
| unnamed | unknown | unknown | unmatched | [0x110909...1abf](https://arbiscan.io/address/0x110909bc7d16465d1d0fa76c3fcd498830bc1abf) |
| unnamed | unknown | unknown | unmatched | [0x7da1ec...f620](https://arbiscan.io/address/0x7da1ec4d785120eafb290a9882268b6bdef9f620) |
| unnamed | unknown | unknown | unmatched | [0x829ce7...4aee](https://arbiscan.io/address/0x829ce74128ea95c72aa379168df529feaa464aee) |
| unnamed | unknown | unknown | unmatched | [0x9cbb06...1691](https://arbiscan.io/address/0x9cbb069efbd193e239b66540cf43d5b022a41691) |
| unnamed | unknown | unknown | unmatched | [0xbee320...3365](https://arbiscan.io/address/0xbee3209e04f926ce9df2a22c457d44303e543365) |
| unnamed | unknown | unknown | unmatched | [0xc639f1...90e2](https://arbiscan.io/address/0xc639f1a10c10df80500713dd8b7e2ef85f8d90e2) |

### blast (chain_id 81457)

| Contract | Role | Description | Audit Status | Address |
|---|---|---|---|---|
| FeeManager | controller | controller | unmatched | [0x34bc76...f2b9](https://blastscan.io/address/0x34bc76f2b5ae25dbe56270a73fbab17a1361f2b9) |
| MasterChefV3 | core | core | audited (TP) | [0xda3840...ff8b](https://blastscan.io/address/0xda3840837df961a710c889e0d23295df82ccff8b) |
| QuoterV2 | core | core | unmatched | [0x7b8227...5b5c](https://blastscan.io/address/0x7b8227c3dd6e3df8468bf1621fef1f443e085b5c) |
| SmartChefFactory | factory | factory | unmatched | [0x6d3a3a...fd75](https://blastscan.io/address/0x6d3a3ac01e7adad98480b5d4951a83b141c8fd75) |
| SmartRouter | router | router | likely in scope | [0x152176...53dd](https://blastscan.io/address/0x152176a1e3c112d96aa305fa1f5ac6997b2c53dd) |
| SmartRouterHelper | router | router | audited (TP) | [0xdfc40e...090f](https://blastscan.io/address/0xdfc40e4aa84acb09a55e7cb5428c38ee41ef090f) |
| SquadInterfaceMulticall | core | core | unmatched | [0x02ce24...e691](https://blastscan.io/address/0x02ce24a6bdb469645e3615f418676f48c8c4e691) |
| SquadswapFactory | factory | factory | audited (TP) | [0x4b599f...6551](https://blastscan.io/address/0x4b599f3425d54afbf94bfd41ea9931ff92ad6551) |
| SquadswapRouter02 | router | router | audited (TP) | [0xa3f309...395c](https://blastscan.io/address/0xa3f309e9691d44aca3344a0f08c6bf30ee4e395c) |
| SquadV3Factory | factory | factory | unmatched | [0x6ea64b...e8fd](https://blastscan.io/address/0x6ea64bdca26f69fdef36c1137a0eae5bf434e8fd) |
| SquadV3LmPoolDeployer | factory | factory | unmatched | [0x97eed6...bc8a](https://blastscan.io/address/0x97eed6ab0a815f054b8bb5ed98e449aceca4bc8a) |
| SquadV3PoolDeployer | factory | factory | unmatched | [0xf99185...4a35](https://blastscan.io/address/0xf99185c93274e5de2dc8d52d3b9fd917b1dd4a35) |
| SwapRouter | router | router | likely in scope | [0x416a2c...4b0c](https://blastscan.io/address/0x416a2ca1e6929ab47b6562c86685f72cedae4b0c) |
| TickLens | registry | registry | unmatched | [0xad2fea...a24b](https://blastscan.io/address/0xad2feaeb62e09e4b775bd497e481190eb8e6a24b) |
| unnamed | unknown | unknown | unmatched | [0x03439c...f7bb](https://blastscan.io/address/0x03439c1f8161c37e37202ab7fa9f390e01c8f7bb) |
| unnamed | unknown | unknown | unmatched | [0x7b7a8f...8172](https://blastscan.io/address/0x7b7a8f7d1966cd6ebb60fc11bd69b7c903cb8172) |
| unnamed | unknown | unknown | unmatched | [0xa37843...a111](https://blastscan.io/address/0xa3784343254e15adb7fa1bca3a3876ef34b7a111) |
| unnamed | unknown | unknown | unmatched | [0xdee103...3063](https://blastscan.io/address/0xdee10310e729c36a560c72c0e8e3be0e46673063) |

---

## Scope - Operational Periphery

Operational periphery is not classified for this project. Admin, fee-collection, keeper, and timelock contracts may exist within the flat scope inventory in the core logic section.

---

## Scope - Factory Architecture

No factories detected in topography.

---

## Scope - Proxy and Upgrade Architecture

Protocol uses 4 proxies on 56, 8453, 42161. 3 follow EIP-1967 / UUPS patterns; 0 are beacon proxies. 0 proxies share an implementation with other proxies in the project.

Upgrade authority concentrates in 1 distinct deployer addresses: 0x5eb12d...a178, . Multisig membership, timelock duration, and governance-gate parameters are not extracted by the current pipeline.

---

## Scope - Integration Surface

No external integrations detected in topography.

---

## Audit Coverage

### Coverage by Scope Category

| Category | Contracts | Audited | Unaudited | Coverage % |
|---|---:|---:|---:|---:|
| No provenance | 94 | 19 | 75 | 20.2% |
| **Total** | 94 | 19 | 75 | 20.2% |

### Past Audits

| Date | Auditor | Scope Described | Coverage Claim | Relationship | Link |
|---|---|---|---|---|---|
| unknown | PeckShield | PeckShield Audit Report SquadSwap Dynamo Wow v1.0 | unspecified | direct | not available |
| unknown | PeckShield | PeckShield Audit Report SquadSwap v1.0 | unspecified | direct | not available |

### Gap Analysis

Core logic: 0 of 0 contracts covered (0.0%). Operational periphery: 0 of 0 covered (0.0%). Last audit 1 days ago.

---

## Appendix

### Docs Pages Referenced

- [https://docs.squadswap.com/audit-reports.md](https://docs.squadswap.com/audit-reports.md) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-Dynamo-Wow-v1.0.pdf) - audit_report_link
- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SquadSwap-v1.0.pdf) - audit_report_link
- [https://www.cyberscope.io/audits/squadswap](https://www.cyberscope.io/audits/squadswap) - audit_report_link

### Audit Reports (full list)

- unknown - PeckShield - PeckShield Audit Report SquadSwap Dynamo Wow v1.0
- unknown - PeckShield - PeckShield Audit Report SquadSwap v1.0

### Contract Inventory (sibling artifact)

- **Structural data:** exports/agentic_briefs_v2/squadswap.json
- **Source code:** not fetched in v1

### Excluded Contracts (summary counts)

| Exclusion Reason | Count | Notes |
|---|---:|---|
| infrastructure blocklist | 0 | Summary from p2 provenance classifications |
| shared deployer contamination | 0 | Summary from p2 provenance classifications |
| opaque enrichment only | 0 | Summary from p2 provenance classifications |
| deployer expansion untethered | 0 | Summary from p2 provenance classifications |
| factory rpc expansion untethered | 0 | Summary from p2 provenance classifications |
| considered but unpromoted docs only | 0 | Summary from p2 provenance classifications |
| never evaluated docs only | 0 | Summary from p2 provenance classifications |
| external placeholder docs only | 0 | Summary from p2 provenance classifications |

### Data Availability Notes

- **Provenance classification:** not run for this project.
- **Multisig / timelock metadata:** not extracted by current pipeline.
- **Per-contract TVL:** not persisted; protocol-level TVL only.
- **Docs extraction status:** Call 1 unknown, Call 2 unknown, Call 5 unknown.

### Generation Metadata

- **Generated at:** 2026-05-05T20:46:54.639Z
- **Scope-match run_id:** recovery-full-v5-fixed-matcher-2026-05-05-720c81c2
- **Brief exporter:** v2
- **DL snapshot:** defillama_project_enrichment_v1_defillama_20260429T183806Z (2026-04-29)
- **Topography refresh:** 2026-05-04T12:46:24.531Z

---

## Caveats

- **Audit coverage** is derived from scope matching against audit-report extracted scope data, not from operator confirmation. Contracts labeled `unmatched` may still be covered by an audit whose scope data was too sparse to extract structured coverage from.
- Upgrade admin membership, timelock duration, and governance-gate parameters are NOT extracted by the pipeline. Operator must confirm before scoping.
- Provenance classification was not run for this project. Role-category distinctions are not available here.
- Per-contract TVL is not available; TVL figures are protocol-level from DeFiLlama.
