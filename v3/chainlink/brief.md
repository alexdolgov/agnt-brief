# Agentic Audit Brief: Chainlink

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

- Project: Chainlink (`chainlink`)
- Website: [https://chain.link](https://chain.link)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, gnosis, hashkey, hyperliquid, linea, mantle, moonbeam, optimism, plasma, polygon, sonic, unichain, zksync-era
- Contract surface: 72 unique implementations (72 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,973,496,824.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Chainlink. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, berachain, bsc, ethereum, gnosis, hyperliquid, mantle, moonbeam, optimism, plasma, polygon, sonic, unichain. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- OperatorFactory (`0x3e64cd889482443324f91bfa9c84fe72a511f48a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 1 of 72 unique; 71 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/72
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 72
- Raw deployments: 72
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/chainlink/information))
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

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0086e1e119ecc95be344c3efca7b39f15a01b423` | ⚠️ Unaudited |
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc` | ⚠️ Unaudited |
| ARM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38660c8cc222c0192b635c2ac09687b4f25cce5f` | ⚠️ Unaudited |
| ARMProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x14a7e6a1b2564b10dbdcc9084c4fbc3e72b694a5` | ⚠️ Unaudited |
| BlockhashStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x683be5e11c1cdce9e63522f45223f47250d71778` | ⚠️ Unaudited |
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98` | ⚠️ Unaudited |
| BurnFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03df929510a52c97bb1b3e5f33ea5d9735a50280` | ⚠️ Unaudited |
| BurnMintERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x04dad2d628e9dc53f7a72c5a7836fd23a4ef3bc7` | ⚠️ Unaudited |
| BurnMintERC20Transparent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb9af873c7089cf3a0b6d67538065dd94b5e3208f` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00ce37b1c949bf938de4281d8c4261ee421e4ce7` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04505e4182a2ab7989b03eb2321e3141c1c79187` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00c8af57a18eb97df446fa12e051c63274025010` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x476eefef46e0d65e1e371fe093696259b1240b93` | ⚠️ Unaudited |
| CallProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bb0f55b00c2607d2561e6042faea4690d7266b1` | ⚠️ Unaudited |
| CCTPMessageTransmitterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe94e3b78be62e7fb7a388884c1f9000f6818037a` | ⚠️ Unaudited |
| ChannelConfigStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1affdb984bbd8c3382f1ddc8bd605383830160f3` | ⚠️ Unaudited |
| CommitStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x002b164b1dcf4e92f352dc625a01be0e890edeea` | ⚠️ Unaudited |
| CommitteeVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x18bb4ad0f8cc5241334a85fb5d0d48c6a05de84f` | ⚠️ Unaudited |
| Configurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d05b6b04a4f456e0ea6a0379b6173eae52e71b1` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b2218a03f4b034a2e83e9e8d1e7ea0da8748ba` | ⚠️ Unaudited |
| DOODLEF | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9fbe92624b48ba00545c2573801c8e38e8285830` | ⚠️ Unaudited |
| Doodles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a90cab2b38dba80c64b7734e58ee1db38b8992e` | ⚠️ Unaudited |
| Dooplicator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x466cfcd0525189b573e794f554b8a751279213ac` | ⚠️ Unaudited |
| DualAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eeb875dd64f6313ff315679791ae1a27c19a5df` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0147f2ad7f1e2bc51f998cc128a8355d5ae8c32d` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x006fc7533e472ee3ac7277bd600e086a0a8bbca7` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x004405d927cad243358a270c2dd3d51c8303a390` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xe65870ed081025ed64fa4039d3363e73ff809564` | ⚠️ Unaudited |
| FactoryBurnMintERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0b147965f21e8c56ff6d41c530b4ad30791cc85e` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48a42f6aed34fd936355b5358fee4de847dcf649` | ⚠️ Unaudited |
| FeeQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x006bc1f599a10b73c88cc3cd19a92829c4ac1e83` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x26e0e12b1682884a557e67743c6a575fd00bf332` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b1b16e7c016f881783674aa6b24fc21d70d29f` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adfbf10e9833ee6dd57b3569c5755f8139a993d` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1fb8fa5a86b3b91da07a973f9848ae9d1271ebae` | ⚠️ Unaudited |
| HeartbeatRequester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4822d77a2d328115c4edebe1c82f313b28f8c315` | ⚠️ Unaudited |
| LinkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x012414a392f9fa442a3109f1320c439c45518ac3` | ⚠️ Unaudited |
| LinkTokenOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x350a791bfc2c21f9ed5d10980dad2e2638ffa7f6` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x022d74c2d24e7625368720dcba5674bd8a951892` | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d736853812a12f085de867adf4ea4aba9521fc0` | ⚠️ Unaudited |
| ManyChainMultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x057f63e458a835e5c83d2194cab1c30a76dd9b74` | ⚠️ Unaudited |
| MockReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9c117a3e7fcd4e91eea06c6d6f7f21a0da61c920` | ⚠️ Unaudited |
| NonceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x06fc836cf9839b1cd891c440a0a45242da6ae1c9` | ⚠️ Unaudited |
| OffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x02a4d69cffec00fbf7f3b60c93e3529dfc58894d` | ⚠️ Unaudited |
| OnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1e11bab3f07fa72312182ffdc460ae45400e6e7b` | ⚠️ Unaudited |
| OperatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231772 | `0x3e64cd889482443324f91bfa9c84fe72a511f48a` | ⚠️ Unaudited |
| PermittableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0xe2e73a1c69ecf83f464efce6a5be353a37ca09b2` | ⚠️ Unaudited |
| PriceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020082a7a9c2510e1921116001152dee4da81985` | ⚠️ Unaudited |
| RBACTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x13ac97663d19ff20fe467bfa580748505e664beb` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x010771998a1f4736bd844939d0bf01ac5ca0f8fa` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2a2dc0aab0defc092ed8636330eaebd975e7ec` | ⚠️ Unaudited |
| RMN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c51b6d5bfcfb7ee82c80949dfd146db157a7e49` | ⚠️ Unaudited |
| RMNProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6525923279256b8a86c1c01cf5955eb00c39b048` | ⚠️ Unaudited |
| RMNRemote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1912c3cfafe8a76a32a92861d815ac2837f237ca` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0e6137e72cc322b0f3b7ed172f7bd7b5ac798d05` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e7d9a2fe6225d926b7c0bb728529eb64a02ab9` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0f4930c3c04c8cb57874907f38be77a6d526f134` | ⚠️ Unaudited |
| SpaceDoodles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d663edd9c884b2398634d68ec1cca083957b91c` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf97f4df75117a78c1a5a0dbb814af92458539fb4` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb4182810ee17d6726439a4eb108abe29bdf8e5e2` | ⚠️ Unaudited |
| TokenAdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00f027ea6d0fb03256a15e9182b2b9227a4931d8` | ⚠️ Unaudited |
| TokenPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3d276e2c2debc581f194591750a4d04aa15d3c01` | ⚠️ Unaudited |
| UniswapAnchoredView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046728da7cb8272284238bd3e47909823d63a58d` | ⚠️ Unaudited |
| USDCTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04336603557feb138b36075156e92f9e551dfc5d` | ⚠️ Unaudited |
| USDCTokenPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5466730bba7ffedc695dd55939b36402e207c045` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0238247e71ad0ab272203af13baea72e99ee7c3c` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa618f119504455762c9bbbce4ac9ee7fde457d05` | ⚠️ Unaudited |
| VerifierProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae5ec245bb779883786b44ab3aaad5313ff6582` | ⚠️ Unaudited |
| VRFCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d2341adb2d31f1c5530cdc622016af293177ae0` | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02aae1a04f9828517b3007f83f6181900cad910c` | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/chainlink/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19638] Active Bug Bounty Program — no match: The document is a bug bounty program overview, not an audit report. No specific contracts are listed in scope; only general categories like 'Smart Contract' are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3e64cd889482443324f91bfa9c84fe72a511f48a` | OperatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
