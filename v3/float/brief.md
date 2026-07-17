# Agentic Audit Brief: Float

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Float (`float`)
- Website: [https://floatprotocol.com/](https://floatprotocol.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, polygon
- Contract surface: 68 unique implementations (68 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $145,106.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Float in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/68
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaTestFLT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140220 | `0x01309a1ec476871760d9ea454628500bccc1e011` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140189 | `0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140183 | `0x217945d4cb3386420252da73743f1730f38266e9` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140181 | `0x1dd4d86180eee39ac4fb35eca67cacf608ab5741` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140212 | `0xaff90532e2937ff290009521e7e120ed062d4f34` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140179 | `0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140218 | `0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140209 | `0xac33e98174a897ecf21bd5c6e67696007aa58527` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140211 | `0xadaf18d79f316005542da4ecb1624b59c4e6e398` | ⚠️ Unaudited |
| DeprecatedSyntheticTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140163 | `0x01829f1fa8512ca54b2709faea59e155ce4c03e4` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140204 | `0x72281a435fe5a9945e04ef4d0a32771430106587` | ⚠️ Unaudited |
| FloatCapital_v0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140168 | `0x443908279dee487e70b46f25401a64343adbe04b` | ⚠️ Unaudited |
| GemCollectorNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140200 | `0x5cdbfcdab16a3b17516cdcbd0df582cbe30edb33` | ⚠️ Unaudited |
| GEMS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140190 | `0x2d56f047805aea38062f248a05d3157c961bf287` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140224 | `0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140215 | `0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140178 | `0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140174 | `0x102011863cc4f506d1387cd6b22c522602ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140198 | `0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33` | ⚠️ Unaudited |
| JoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140207 | `0x9ad6c38be94206ca50bb0d90783181662f0cfa10` | ⚠️ Unaudited |
| JoeHatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140205 | `0x82fe038ea4b50f9c957da326c412ebd73462077c` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140217 | `0xfdf50fea3527fad31fa840b748fd3694ae8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140195 | `0x4247c5dbac51a135939cc904c34e4913b6bcdcfe` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140214 | `0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140210 | `0xacff0fbf56baeb9ef677de19aded8f7a950bcb58` | ⚠️ Unaudited |
| JoeRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140201 | `0x60ae616a2155ee3d9a68541ba4544862310933d4` | ⚠️ Unaudited |
| JoeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140203 | `0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140182 | `0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140192 | `0x363637833d110f86e47311e4c54e520982721f3b` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140186 | `0x267a4576293d55b53c769606e886e1f343149df5` | ⚠️ Unaudited |
| KeeperExperiment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140202 | `0x661c9a1ad0dc7c7f1d8da87239c952479fc56df2` | ⚠️ Unaudited |
| LongShort | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140169 | `0x45bdab6840929937619d44fd2e8def962d8d2882` | ⚠️ Unaudited |
| LongShortAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140187 | `0x284c8f5802157902619289726963985cb0551f84` | ⚠️ Unaudited |
| LongShortPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140166 | `0x16488343e508c2bfb7f180185848f924184c9c9f` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140213 | `0xd6a4f121ca35509af06a0be99093d08462f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140180 | `0x188bed1968b795d5c9022f6a0bb5931ac4c18f00` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140175 | `0x10338ee9417260b486a4d1452ee2496338b05348` | ⚠️ Unaudited |
| OracleManagerFlipp3ning | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140170 | `0x70a760acd5503a8d6746bc7f00571f570ae0ad44` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140216 | `0xe59988d947f80b59ff1de7bd413e5e5517906cb2` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140194 | `0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140177 | `0x107b31d84bf6cec672f3af924471bb6f4fb8555a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140176 | `0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140206 | `0x8729438eb15e2c8b576fcc6aecda6a148776c0f5` | ⚠️ Unaudited |
| QiAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140199 | `0x5c0401e81bc07ca70fad469b451682c0d747ef1c` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140225 | `0x334ad834cd4481bb02d09615e7c11a00579a7909` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140197 | `0x4c9f0140fad0c93009a8ea123eaf6b1a3d0ddd30` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140185 | `0x23de2004592b04d594d23c9a928d0552e29d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140208 | `0xa1f5ae0ce9308750ed0c2da5283ab2ad5d6bb618` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140184 | `0x2274491950b2d6d79b7e69b683b482282ba14885` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140173 | `0x05d06afb994047acee8c205500ab1aa25c5a3388` | ⚠️ Unaudited |
| SlowTradeSyntheticTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140172 | `0x048858971030b416e41c74e641f8432c8921b24d` | ⚠️ Unaudited |
| Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140165 | `0x11bf56dee7f3627985552a8b7aa6845a6636e3b7` | ⚠️ Unaudited |
| StakerAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140196 | `0x45b24d45e8111680232a617e1c44597981216fec` | ⚠️ Unaudited |
| StakerPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140167 | `0x3750b2f732e2c58c348b731deeb50bc651c5d91b` | ⚠️ Unaudited |
| SyntheticTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | unit-140164 | `0x03e76b81bb69bdcb4e34e12a9e77fd4f9e41aa17` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140171 | `0x0147c0212ca4aba29d26dffd3c800893080ef296` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140191 | `0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140228 | `0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140193 | `0x3c5486b85faae29b071f2a616a59ca7bf8f73682` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140219 | `0x595b1408c9c2bf121c7674e270ca7acc0bbf100c` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140222 | `0xce5da4bebba980bec39da5b118750a47a23d4b85` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140230 | `0x01829f1fa8512ca54b2709faea59e155ce4c03e4` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140226 | `0x0db3c59c187ecfa36a9c9f6cfa3664d06c2b5556` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140227 | `0x4e813624e1e0906e23fa22e2d120b4c4e2f89e4e` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140223 | `0xcd62196cc117ea7fd9525ade37e44d01209e8ebb` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | unit-140229 | `0xd2eeaaff35281757f87e4d535763c3d4c35b62c1` | ⚠️ Unaudited |
| YieldManagerAaveBasic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | unit-140221 | `0x1372276638bfc1fce909b05783d91e526b801669` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | unit-140188 | `0x2c7b8e971c704371772edaf16e0db381a8d02027` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code423n4.com/reports/2021-08-floatcapital](https://code4rena.com/reports/2021-08-floatcapital) | Code4rena | Contest | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17486] code423n4.com/reports/2021-08-floatcapital — no match: Extracted contract names from scope description and findings. The report states 43 smart contracts but only lists a subset in findings. Audit date from report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code423n4.com/reports/2021-08-floatcapital | LongShort | unmatched — not counted | — | mentioned in scope and findings | no |
| code423n4.com/reports/2021-08-floatcapital | Staker | unmatched — not counted | — | mentioned in scope and findings | no |
| code423n4.com/reports/2021-08-floatcapital | SyntheticToken | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | TokenFactory | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | YieldManagerAave | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | YieldManager | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | FloatToken | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | ILendingPool | unmatched — not counted | — | mentioned in findings | no |
| code423n4.com/reports/2021-08-floatcapital | Short | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [17486] code423n4.com/reports/2021-08-floatcapital

Fork inheritance lineage and inherited audits are included when available.
