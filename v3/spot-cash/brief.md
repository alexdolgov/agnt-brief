# Agentic Audit Brief: SPOT Cash

## Project Overview

- Project: SPOT Cash (`spot-cash`)
- Website: [https://www.spot.cash](https://www.spot.cash)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.512Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: ethereum
- Contract surface: 48 unique implementations (48 raw deployments)
- DeFi Llama TVL: $204,028.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 46 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (upgradeabilityproxy, proxy, baseupgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 48 (48 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/48 (0.0%)
- Deployed-live implementations: 48 of 48 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 48
- Raw deployments: 48
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AMPLChainBridgeGateway | unknown | ethereum | n/a | [`0x53049b...730a83`](./contracts/ethereum-1/0x53049bcf7ca8190ce2eea81747292133d8730a83/) | ⚠️ Unaudited |
| AmpleBondController | unknown | ethereum | n/a | [`0x6d63d3...e286f6`](./contracts/ethereum-1/0x6d63d307a2b50c3e76eb12cfba002bf9d8e286f6/) | ⚠️ Unaudited |
| App | unknown | ethereum | n/a | [`0x4ab5ff...dcd9ba`](./contracts/ethereum-1/0x4ab5ff14f658f1aa122f56ca86cf5f5682dcd9ba/) | ⚠️ Unaudited |
| BasicFeeStrategy | unknown | ethereum | n/a | [`0xff732c...0898a3`](./contracts/ethereum-1/0xff732ca9efc95e853fbd71a5c61647cd0c0898a3/) | ⚠️ Unaudited |
| BillBroker | unknown | ethereum | n/a | [`0x0ce64c...aca063`](./contracts/ethereum-1/0x0ce64cd7583864f7005898aa133c74dbccaca063/) | ⚠️ Unaudited |
| BondController | unknown | ethereum | n/a | [`0x216362...912a96`](./contracts/ethereum-1/0x216362799cf20a27b246ef0fccf03bc4b8912a96/) | ⚠️ Unaudited |
| BondFactory | unknown | ethereum | n/a | [`0x2b135c...920374`](./contracts/ethereum-1/0x2b135c839d61808e1ec6f84151cd9429b0920374/) | ⚠️ Unaudited |
| BondIssuer | unknown | ethereum | n/a | [`0x2e2e49...1b52f2`](./contracts/ethereum-1/0x2e2e49edcd5ce08677bab6d791c863f1361b52f2/) | ⚠️ Unaudited |
| ButtonswapFactory | unknown | ethereum | n/a | [`0xb8de4a...27ce50`](./contracts/ethereum-1/0xb8de4ab6c65e274630f5279f74eb69b66327ce50/) | ⚠️ Unaudited |
| ButtonswapRouter | unknown | ethereum | n/a | [`0xa6d8c7...7817c5`](./contracts/ethereum-1/0xa6d8c77fff3cdcc43804275ad9997b603a7817c5/) | ⚠️ Unaudited |
| ButtonTokenWamplRouter | unknown | ethereum | n/a | [`0x2c76a2...20a983`](./contracts/ethereum-1/0x2c76a2ce5f285f10c5674bee172b420b4e20a983/) | ⚠️ Unaudited |
| CDRPricingStrategy | unknown | ethereum | n/a | [`0x437ef5...5cbeaa`](./contracts/ethereum-1/0x437ef588307a6e1367e29283edb1740a8b5cbeaa/) | ⚠️ Unaudited |
| ChainBridgeBatchRebaseReport | unknown | ethereum | n/a | [`0x277304...59d201`](./contracts/ethereum-1/0x27730429adca6f1fcefdc05e222d64cffd59d201/) | ⚠️ Unaudited |
| CharmGeyserRouter | unknown | ethereum | n/a | [`0x7bb91d...406ceb`](./contracts/ethereum-1/0x7bb91dafdb5e1aa7d56a1d6c93fa774678406ceb/) | ⚠️ Unaudited |
| DRBalancerVault | unknown | ethereum | n/a | [`0x6f6062...dacdbd`](./contracts/ethereum-1/0x6f60625c5b4bdf89b9f18b9c681310e6b3dacdbd/) | ⚠️ Unaudited |
| DualAuction | unknown | ethereum | n/a | [`0xc8f46c...43cffb`](./contracts/ethereum-1/0xc8f46c1545abac895d3ca18f75eadd452643cffb/) | ⚠️ Unaudited |
| DualAuctionFactory | unknown | ethereum | n/a | [`0x1696d0...5b47a2`](./contracts/ethereum-1/0x1696d00fe4b0f473facbf1958c49090ba55b47a2/) | ⚠️ Unaudited |
| ExclusiveGeyser | unknown | ethereum | n/a | [`0x0b3f31...f29a66`](./contracts/ethereum-1/0x0b3f315e9e7bd3ec8c38bbd31a18a26982f29a66/) | ⚠️ Unaudited |
| FeePolicy | unknown | ethereum | n/a | [`0x03cb72...f1cc6b`](./contracts/ethereum-1/0x03cb728991deb43a55d475885ff07a694bf1cc6b/) | ⚠️ Unaudited |
| Geyser | unknown | ethereum | n/a | [`0x0ec933...51c891`](./contracts/ethereum-1/0x0ec93391752ef1a06aa2b83d15c3a5814651c891/) | ⚠️ Unaudited |
| GeyserRegistry | unknown | ethereum | n/a | [`0xfc4380...21a7e7`](./contracts/ethereum-1/0xfc43803f203e3821213be687120ad44c8a21a7e7/) | ⚠️ Unaudited |
| ImplementationDirectory | unknown | ethereum | n/a | [`0xa52d1c...d74ba3`](./contracts/ethereum-1/0xa52d1cea2d36c1e43b776a3392e21aff2ad74ba3/) | ⚠️ Unaudited |
| MedianOracle | unknown | ethereum | n/a | [`0x2a18bf...ff4f71`](./contracts/ethereum-1/0x2a18bfb505b49aed12f19f271cc1183f98ff4f71/) | ⚠️ Unaudited |
| Package | unknown | ethereum | n/a | [`0x722bcc...cf972e`](./contracts/ethereum-1/0x722bcc1c85037c7c233eff80f3c057b980cf972e/) | ⚠️ Unaudited |
| PerpetualTranche | unknown | ethereum | n/a | [`0x20a155...3bfa83`](./contracts/ethereum-1/0x20a15571db9bfd13d6fba6fd86049e69b73bfa83/) | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | ethereum | n/a | [`0x41ccca...b808d2`](./contracts/ethereum-1/0x41ccca91368815c1d575f54eeb4c260438b808d2/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x21a18c...bc8914`](./contracts/ethereum-1/0x21a18c81ad418c6c96d4484a97b4632acfbc8914/) | ⚠️ Unaudited |
| RewardPoolFactory | unknown | ethereum | n/a | [`0x8e316b...763440`](./contracts/ethereum-1/0x8e316b724b1ce80aef68f3c7bccd44a060763440/) | ⚠️ Unaudited |
| RolloverVault | unknown | ethereum | n/a | [`0x09e8ad...dd536a`](./contracts/ethereum-1/0x09e8adfa8d829dac1c305544a86b53ed0ddd536a/) | ⚠️ Unaudited |
| RouterV1 | unknown | ethereum | n/a | [`0x38f600...29c393`](./contracts/ethereum-1/0x38f600e08540178719bf656e6b43fc15a529c393/) | ⚠️ Unaudited |
| RouterV2 | unknown | ethereum | n/a | [`0xce2878...45d1bc`](./contracts/ethereum-1/0xce2878d1f2901efaf48cd456e586b470c145d1bc/) | ⚠️ Unaudited |
| SpotAppraiser | unknown | ethereum | n/a | [`0x08b8cf...f27300`](./contracts/ethereum-1/0x08b8cf9f99fa69740579114ed4f7559768f27300/) | ⚠️ Unaudited |
| SpotCDRPricer | unknown | ethereum | n/a | [`0x10b033...201739`](./contracts/ethereum-1/0x10b03340d27bc5470aa46da007cd5bde89201739/) | ⚠️ Unaudited |
| SpotPricer | unknown | ethereum | n/a | [`0x0f8f51...5d7881`](./contracts/ethereum-1/0x0f8f519878c10ce36c6aaf89c1aeefaade5d7881/) | ⚠️ Unaudited |
| Tranche | unknown | ethereum | n/a | [`0x1c8e73...774b09`](./contracts/ethereum-1/0x1c8e7396ecd4b8472b58a138578569d1d8774b09/) | ⚠️ Unaudited |
| TrancheClassDiscountStrategy | unknown | ethereum | n/a | [`0x2c85fb...764cef`](./contracts/ethereum-1/0x2c85fb101192e3b969c03533a3be0b3d5f764cef/) | ⚠️ Unaudited |
| TrancheFactory | unknown | ethereum | n/a | [`0xeb90e9...b8f7ad`](./contracts/ethereum-1/0xeb90e982be14a51828d20fd8a78ec08910b8f7ad/) | ⚠️ Unaudited |
| TrancheManager | unknown | ethereum | n/a | [`0xe0028c...5f285f`](./contracts/ethereum-1/0xe0028c40c8a09449852ea4d2e9aa4d25895f285f/) | ⚠️ Unaudited |
| UFragments | unknown | ethereum | n/a | [`0x3222a6...bcde48`](./contracts/ethereum-1/0x3222a6c3fd5927437c9e5f4c9eb5c98b22bcde48/) | ⚠️ Unaudited |
| UFragmentsPolicy | unknown | ethereum | n/a | [`0x1b228a...dca2ea`](./contracts/ethereum-1/0x1b228a749077b8e307c5856ce62ef35d96dca2ea/) | ⚠️ Unaudited |
| UniversalVault | unknown | ethereum | n/a | [`0x9f7230...22223c`](./contracts/ethereum-1/0x9f723008eec3493a31b6faf7d9fdf3a82322223c/) | ⚠️ Unaudited |
| UsdcSpotManager | unknown | ethereum | n/a | [`0x2f6715...c1693c`](./contracts/ethereum-1/0x2f67158859fe0f69f5773570ec60444fe0c1693c/) | ⚠️ Unaudited |
| VaultFactory | unknown | ethereum | n/a | [`0x8a09ff...14cef0`](./contracts/ethereum-1/0x8a09ffa4d4310c7f59dc538a1481d8ba2214cef0/) | ⚠️ Unaudited |
| WAMPL | unknown | ethereum | n/a | [`0xedb171...3b49ef`](./contracts/ethereum-1/0xedb171c18ce90b633db442f2a6f72874093b49ef/) | ⚠️ Unaudited |
| WamplLoanRouter | unknown | ethereum | n/a | [`0x06111c...7faab8`](./contracts/ethereum-1/0x06111c76430d31c640228609f334c207547faab8/) | ⚠️ Unaudited |
| WamplOracle | unknown | ethereum | n/a | [`0x410f6c...3363fb`](./contracts/ethereum-1/0x410f6cd88a590122a693b0e990d0d094a53363fb/) | ⚠️ Unaudited |
| WethLoanRouter | unknown | ethereum | n/a | [`0x2119bd...cbc721`](./contracts/ethereum-1/0x2119bd77031d5a6c69d7b15a3a73e15a91cbc721/) | ⚠️ Unaudited |
| WethWamplManager | unknown | ethereum | n/a | [`0x169ec5...03b857`](./contracts/ethereum-1/0x169ec5446830538e5979121e962621df6003b857/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Spot-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/v1.0.0/PeckShield-Audit-Report-Spot-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Spot-v2.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/v2.0.0/PeckShield-Audit-Report-Spot-v2.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/fragmentsorg/ampleforth-audits/master/spot/vaults/BillBroker/v1.0.0/PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21452] PeckShield-Audit-Report-Spot-v1.0.pdf
- [21453] PeckShield-Audit-Report-Spot-v2.0.pdf
- [21456] PeckShield-Audit-Report-AmpleForth-BillBroker-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
